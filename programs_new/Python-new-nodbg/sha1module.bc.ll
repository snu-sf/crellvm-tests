; ModuleID = './sha1module.bc'
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
%struct.SHA1object = type { %struct._object, %struct.sha1_state }
%struct.sha1_state = type { i64, [5 x i32], i32, [64 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@PyType_Type = external global %struct._typeobject, align 8
@SHA1type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* @SHA1_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @SHA1_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @SHA1_getseters, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_sha1module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @SHA1_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"SHA1Type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_sha1.sha1\00", align 1
@SHA1_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHA1object*, %struct._object*)* @SHA1_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @SHA1_copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHA1object*, %struct._object*)* @SHA1_digest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @SHA1_digest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHA1object*, %struct._object*)* @SHA1_hexdigest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @SHA1_hexdigest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHA1object*, %struct._object*)* @SHA1_update to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @SHA1_update__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@SHA1_getseters = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @SHA1_get_block_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @SHA1_get_name, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @sha1_get_digest_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@SHA1_copy__doc__ = internal global [34 x i8] c"Return a copy of the hash object.\00", align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@SHA1_digest__doc__ = internal global [52 x i8] c"Return the digest value as a string of binary data.\00", align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"hexdigest\00", align 1
@SHA1_hexdigest__doc__ = internal global [59 x i8] c"Return the digest value as a string of hexadecimal digits.\00", align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@SHA1_update__doc__ = internal global [58 x i8] c"Update this hash object's state with the provided string.\00", align 16
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
@.str.13 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"_sha1\00", align 1
@SHA1_functions = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @SHA1_new to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @SHA1_new__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@SHA1_new__doc__ = internal global [69 x i8] c"Return a new SHA1 hash object; optionally initialized with a string.\00", align 16
@SHA1_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"|O:new\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__sha1() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA1type, i32 0, i32 0, i32 0, i32 1), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @SHA1type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_sha1module, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA1type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA1type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA1type, i32 0, i32 0, i32 0))
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
define internal void @SHA1_dealloc(%struct._object* %ptr) #0 {
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
define internal %struct._object* @SHA1_copy(%struct.SHA1object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHA1object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct.SHA1object*, align 8
  store %struct.SHA1object* %self, %struct.SHA1object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %call = call %struct.SHA1object* @newSHA1object()
  store %struct.SHA1object* %call, %struct.SHA1object** %newobj, align 8
  %cmp = icmp eq %struct.SHA1object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.SHA1object*, %struct.SHA1object** %newobj, align 8
  %hash_state = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %0, i32 0, i32 1
  %1 = load %struct.SHA1object*, %struct.SHA1object** %self.addr, align 8
  %hash_state1 = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %1, i32 0, i32 1
  %2 = bitcast %struct.sha1_state* %hash_state to i8*
  %3 = bitcast %struct.sha1_state* %hash_state1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 96, i32 8, i1 false)
  %4 = load %struct.SHA1object*, %struct.SHA1object** %newobj, align 8
  %5 = bitcast %struct.SHA1object* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA1_digest(%struct.SHA1object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.SHA1object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [20 x i8], align 16
  %temp = alloca %struct.sha1_state, align 8
  store %struct.SHA1object* %self, %struct.SHA1object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.SHA1object*, %struct.SHA1object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %0, i32 0, i32 1
  %1 = bitcast %struct.sha1_state* %temp to i8*
  %2 = bitcast %struct.sha1_state* %hash_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 96, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %digest, i32 0, i32 0
  call void @sha1_done(%struct.sha1_state* %temp, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %digest, i32 0, i32 0
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay1, i64 20)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA1_hexdigest(%struct.SHA1object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHA1object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [20 x i8], align 16
  %temp = alloca %struct.sha1_state, align 8
  %retval1 = alloca %struct._object*, align 8
  %hex_digest = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.SHA1object* %self, %struct.SHA1object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.SHA1object*, %struct.SHA1object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %0, i32 0, i32 1
  %1 = bitcast %struct.sha1_state* %temp to i8*
  %2 = bitcast %struct.sha1_state* %hash_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 96, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %digest, i32 0, i32 0
  call void @sha1_done(%struct.sha1_state* %temp, i8* %arraydecay)
  %call = call %struct._object* @PyUnicode_New(i64 40, i32 127)
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
  %cmp = icmp slt i32 %19, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %digest, i32 0, i64 %idxprom
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
  %arrayidx19 = getelementptr [20 x i8], [20 x i8]* %digest, i32 0, i64 %idxprom18
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
define internal %struct._object* @SHA1_update(%struct.SHA1object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHA1object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  store %struct.SHA1object* %self, %struct.SHA1object** %self.addr, align 8
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
  %16 = load %struct.SHA1object*, %struct.SHA1object** %self.addr, align 8
  %hash_state = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %16, i32 0, i32 1
  %buf17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %17 = load i8*, i8** %buf17, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %18 = load i64, i64* %len, align 8
  call void @sha1_process(%struct.sha1_state* %hash_state, i8* %17, i64 %18)
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
define internal %struct.SHA1object* @newSHA1object() #0 {
entry:
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @SHA1type)
  %0 = bitcast %struct._object* %call to %struct.SHA1object*
  ret %struct.SHA1object* %0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal void @sha1_done(%struct.sha1_state* %sha1, i8* %out) #0 {
entry:
  %sha1.addr = alloca %struct.sha1_state*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.sha1_state* %sha1, %struct.sha1_state** %sha1.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  %0 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %0, i32 0, i32 2
  %1 = load i32, i32* %curlen, align 4
  %mul = mul i32 %1, 8
  %conv = zext i32 %mul to i64
  %2 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %2, i32 0, i32 0
  %3 = load i64, i64* %length, align 8
  %add = add i64 %3, %conv
  store i64 %add, i64* %length, align 8
  %4 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen1 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %4, i32 0, i32 2
  %5 = load i32, i32* %curlen1, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %curlen1, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %6, i32 0, i32 3
  %arrayidx = getelementptr [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  %7 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen2 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %7, i32 0, i32 2
  %8 = load i32, i32* %curlen2, align 4
  %cmp = icmp ugt i32 %8, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen4 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %9, i32 0, i32 2
  %10 = load i32, i32* %curlen4, align 4
  %cmp5 = icmp ult i32 %10, 64
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen7 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %11, i32 0, i32 2
  %12 = load i32, i32* %curlen7, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, i32* %curlen7, align 4
  %idxprom9 = zext i32 %12 to i64
  %13 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf10 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %13, i32 0, i32 3
  %arrayidx11 = getelementptr [64 x i8], [64 x i8]* %buf10, i32 0, i64 %idxprom9
  store i8 0, i8* %arrayidx11, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %15 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf12 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %15, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf12, i32 0, i32 0
  call void @sha1_compress(%struct.sha1_state* %14, i8* %arraydecay)
  %16 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen13 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %16, i32 0, i32 2
  store i32 0, i32* %curlen13, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.18, %if.end
  %17 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen15 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %17, i32 0, i32 2
  %18 = load i32, i32* %curlen15, align 4
  %cmp16 = icmp ult i32 %18, 56
  br i1 %cmp16, label %while.body.18, label %while.end.24

while.body.18:                                    ; preds = %while.cond.14
  %19 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen19 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %19, i32 0, i32 2
  %20 = load i32, i32* %curlen19, align 4
  %inc20 = add i32 %20, 1
  store i32 %inc20, i32* %curlen19, align 4
  %idxprom21 = zext i32 %20 to i64
  %21 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf22 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %21, i32 0, i32 3
  %arrayidx23 = getelementptr [64 x i8], [64 x i8]* %buf22, i32 0, i64 %idxprom21
  store i8 0, i8* %arrayidx23, align 1
  br label %while.cond.14

while.end.24:                                     ; preds = %while.cond.14
  %22 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length25 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %22, i32 0, i32 0
  %23 = load i64, i64* %length25, align 8
  %shr = ashr i64 %23, 56
  %and = and i64 %shr, 255
  %conv26 = trunc i64 %and to i8
  %24 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf27 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %24, i32 0, i32 3
  %arraydecay28 = getelementptr inbounds [64 x i8], [64 x i8]* %buf27, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay28, i64 56
  %arrayidx29 = getelementptr i8, i8* %add.ptr, i64 0
  store i8 %conv26, i8* %arrayidx29, align 1
  %25 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length30 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %25, i32 0, i32 0
  %26 = load i64, i64* %length30, align 8
  %shr31 = ashr i64 %26, 48
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %27 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf34 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %27, i32 0, i32 3
  %arraydecay35 = getelementptr inbounds [64 x i8], [64 x i8]* %buf34, i32 0, i32 0
  %add.ptr36 = getelementptr i8, i8* %arraydecay35, i64 56
  %arrayidx37 = getelementptr i8, i8* %add.ptr36, i64 1
  store i8 %conv33, i8* %arrayidx37, align 1
  %28 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length38 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %28, i32 0, i32 0
  %29 = load i64, i64* %length38, align 8
  %shr39 = ashr i64 %29, 40
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %30 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf42 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %30, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %buf42, i32 0, i32 0
  %add.ptr44 = getelementptr i8, i8* %arraydecay43, i64 56
  %arrayidx45 = getelementptr i8, i8* %add.ptr44, i64 2
  store i8 %conv41, i8* %arrayidx45, align 1
  %31 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length46 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %31, i32 0, i32 0
  %32 = load i64, i64* %length46, align 8
  %shr47 = ashr i64 %32, 32
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %33 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf50 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %33, i32 0, i32 3
  %arraydecay51 = getelementptr inbounds [64 x i8], [64 x i8]* %buf50, i32 0, i32 0
  %add.ptr52 = getelementptr i8, i8* %arraydecay51, i64 56
  %arrayidx53 = getelementptr i8, i8* %add.ptr52, i64 3
  store i8 %conv49, i8* %arrayidx53, align 1
  %34 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length54 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %34, i32 0, i32 0
  %35 = load i64, i64* %length54, align 8
  %shr55 = ashr i64 %35, 24
  %and56 = and i64 %shr55, 255
  %conv57 = trunc i64 %and56 to i8
  %36 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf58 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %36, i32 0, i32 3
  %arraydecay59 = getelementptr inbounds [64 x i8], [64 x i8]* %buf58, i32 0, i32 0
  %add.ptr60 = getelementptr i8, i8* %arraydecay59, i64 56
  %arrayidx61 = getelementptr i8, i8* %add.ptr60, i64 4
  store i8 %conv57, i8* %arrayidx61, align 1
  %37 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length62 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %37, i32 0, i32 0
  %38 = load i64, i64* %length62, align 8
  %shr63 = ashr i64 %38, 16
  %and64 = and i64 %shr63, 255
  %conv65 = trunc i64 %and64 to i8
  %39 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf66 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %39, i32 0, i32 3
  %arraydecay67 = getelementptr inbounds [64 x i8], [64 x i8]* %buf66, i32 0, i32 0
  %add.ptr68 = getelementptr i8, i8* %arraydecay67, i64 56
  %arrayidx69 = getelementptr i8, i8* %add.ptr68, i64 5
  store i8 %conv65, i8* %arrayidx69, align 1
  %40 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length70 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %40, i32 0, i32 0
  %41 = load i64, i64* %length70, align 8
  %shr71 = ashr i64 %41, 8
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %42 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf74 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %42, i32 0, i32 3
  %arraydecay75 = getelementptr inbounds [64 x i8], [64 x i8]* %buf74, i32 0, i32 0
  %add.ptr76 = getelementptr i8, i8* %arraydecay75, i64 56
  %arrayidx77 = getelementptr i8, i8* %add.ptr76, i64 6
  store i8 %conv73, i8* %arrayidx77, align 1
  %43 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length78 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %43, i32 0, i32 0
  %44 = load i64, i64* %length78, align 8
  %and79 = and i64 %44, 255
  %conv80 = trunc i64 %and79 to i8
  %45 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf81 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %45, i32 0, i32 3
  %arraydecay82 = getelementptr inbounds [64 x i8], [64 x i8]* %buf81, i32 0, i32 0
  %add.ptr83 = getelementptr i8, i8* %arraydecay82, i64 56
  %arrayidx84 = getelementptr i8, i8* %add.ptr83, i64 7
  store i8 %conv80, i8* %arrayidx84, align 1
  %46 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %47 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf85 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %47, i32 0, i32 3
  %arraydecay86 = getelementptr inbounds [64 x i8], [64 x i8]* %buf85, i32 0, i32 0
  call void @sha1_compress(%struct.sha1_state* %46, i8* %arraydecay86)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.24
  %48 = load i32, i32* %i, align 4
  %cmp87 = icmp slt i32 %48, 5
  br i1 %cmp87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %49 to i64
  %50 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %50, i32 0, i32 1
  %arrayidx90 = getelementptr [5 x i32], [5 x i32]* %state, i32 0, i64 %idxprom89
  %51 = load i32, i32* %arrayidx90, align 4
  %shr91 = lshr i32 %51, 24
  %and92 = and i32 %shr91, 255
  %conv93 = trunc i32 %and92 to i8
  %52 = load i8*, i8** %out.addr, align 8
  %53 = load i32, i32* %i, align 4
  %mul94 = mul i32 4, %53
  %idx.ext = sext i32 %mul94 to i64
  %add.ptr95 = getelementptr i8, i8* %52, i64 %idx.ext
  %arrayidx96 = getelementptr i8, i8* %add.ptr95, i64 0
  store i8 %conv93, i8* %arrayidx96, align 1
  %54 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %54 to i64
  %55 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state98 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %55, i32 0, i32 1
  %arrayidx99 = getelementptr [5 x i32], [5 x i32]* %state98, i32 0, i64 %idxprom97
  %56 = load i32, i32* %arrayidx99, align 4
  %shr100 = lshr i32 %56, 16
  %and101 = and i32 %shr100, 255
  %conv102 = trunc i32 %and101 to i8
  %57 = load i8*, i8** %out.addr, align 8
  %58 = load i32, i32* %i, align 4
  %mul103 = mul i32 4, %58
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr i8, i8* %57, i64 %idx.ext104
  %arrayidx106 = getelementptr i8, i8* %add.ptr105, i64 1
  store i8 %conv102, i8* %arrayidx106, align 1
  %59 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %59 to i64
  %60 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state108 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %60, i32 0, i32 1
  %arrayidx109 = getelementptr [5 x i32], [5 x i32]* %state108, i32 0, i64 %idxprom107
  %61 = load i32, i32* %arrayidx109, align 4
  %shr110 = lshr i32 %61, 8
  %and111 = and i32 %shr110, 255
  %conv112 = trunc i32 %and111 to i8
  %62 = load i8*, i8** %out.addr, align 8
  %63 = load i32, i32* %i, align 4
  %mul113 = mul i32 4, %63
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr i8, i8* %62, i64 %idx.ext114
  %arrayidx116 = getelementptr i8, i8* %add.ptr115, i64 2
  store i8 %conv112, i8* %arrayidx116, align 1
  %64 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %64 to i64
  %65 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state118 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %65, i32 0, i32 1
  %arrayidx119 = getelementptr [5 x i32], [5 x i32]* %state118, i32 0, i64 %idxprom117
  %66 = load i32, i32* %arrayidx119, align 4
  %and120 = and i32 %66, 255
  %conv121 = trunc i32 %and120 to i8
  %67 = load i8*, i8** %out.addr, align 8
  %68 = load i32, i32* %i, align 4
  %mul122 = mul i32 4, %68
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr i8, i8* %67, i64 %idx.ext123
  %arrayidx125 = getelementptr i8, i8* %add.ptr124, i64 3
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
define internal void @sha1_compress(%struct.sha1_state* %sha1, i8* %buf) #0 {
entry:
  %sha1.addr = alloca %struct.sha1_state*, align 8
  %buf.addr = alloca i8*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %W = alloca [80 x i32], align 16
  %i = alloca i32, align 4
  store %struct.sha1_state* %sha1, %struct.sha1_state** %sha1.addr, align 8
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
  %arrayidx = getelementptr i8, i8* %add.ptr, i64 0
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
  %arrayidx5 = getelementptr i8, i8* %add.ptr4, i64 1
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
  %arrayidx13 = getelementptr i8, i8* %add.ptr12, i64 2
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
  %arrayidx22 = getelementptr i8, i8* %add.ptr21, i64 3
  %12 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %12 to i32
  %and24 = and i32 %conv23, 255
  %conv25 = sext i32 %and24 to i64
  %or26 = or i64 %or18, %conv25
  %conv27 = trunc i64 %or26 to i32
  %13 = load i32, i32* %i, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx28 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom
  store i32 %conv27, i32* %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %15, i32 0, i32 1
  %arrayidx29 = getelementptr [5 x i32], [5 x i32]* %state, i32 0, i64 0
  %16 = load i32, i32* %arrayidx29, align 4
  store i32 %16, i32* %a, align 4
  %17 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state30 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %17, i32 0, i32 1
  %arrayidx31 = getelementptr [5 x i32], [5 x i32]* %state30, i32 0, i64 1
  %18 = load i32, i32* %arrayidx31, align 4
  store i32 %18, i32* %b, align 4
  %19 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state32 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %19, i32 0, i32 1
  %arrayidx33 = getelementptr [5 x i32], [5 x i32]* %state32, i32 0, i64 2
  %20 = load i32, i32* %arrayidx33, align 4
  store i32 %20, i32* %c, align 4
  %21 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state34 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %21, i32 0, i32 1
  %arrayidx35 = getelementptr [5 x i32], [5 x i32]* %state34, i32 0, i64 3
  %22 = load i32, i32* %arrayidx35, align 4
  store i32 %22, i32* %d, align 4
  %23 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state36 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %23, i32 0, i32 1
  %arrayidx37 = getelementptr [5 x i32], [5 x i32]* %state36, i32 0, i64 4
  %24 = load i32, i32* %arrayidx37, align 4
  store i32 %24, i32* %e, align 4
  store i32 16, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.79, %for.end
  %25 = load i32, i32* %i, align 4
  %cmp39 = icmp ult i32 %25, 80
  br i1 %cmp39, label %for.body.41, label %for.end.81

for.body.41:                                      ; preds = %for.cond.38
  %26 = load i32, i32* %i, align 4
  %sub = sub i32 %26, 3
  %idxprom42 = zext i32 %sub to i64
  %arrayidx43 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom42
  %27 = load i32, i32* %arrayidx43, align 4
  %28 = load i32, i32* %i, align 4
  %sub44 = sub i32 %28, 8
  %idxprom45 = zext i32 %sub44 to i64
  %arrayidx46 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom45
  %29 = load i32, i32* %arrayidx46, align 4
  %xor = xor i32 %27, %29
  %30 = load i32, i32* %i, align 4
  %sub47 = sub i32 %30, 14
  %idxprom48 = zext i32 %sub47 to i64
  %arrayidx49 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom48
  %31 = load i32, i32* %arrayidx49, align 4
  %xor50 = xor i32 %xor, %31
  %32 = load i32, i32* %i, align 4
  %sub51 = sub i32 %32, 16
  %idxprom52 = zext i32 %sub51 to i64
  %arrayidx53 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom52
  %33 = load i32, i32* %arrayidx53, align 4
  %xor54 = xor i32 %xor50, %33
  %conv55 = zext i32 %xor54 to i64
  %shl56 = shl i64 %conv55, 1
  %34 = load i32, i32* %i, align 4
  %sub57 = sub i32 %34, 3
  %idxprom58 = zext i32 %sub57 to i64
  %arrayidx59 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom58
  %35 = load i32, i32* %arrayidx59, align 4
  %36 = load i32, i32* %i, align 4
  %sub60 = sub i32 %36, 8
  %idxprom61 = zext i32 %sub60 to i64
  %arrayidx62 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom61
  %37 = load i32, i32* %arrayidx62, align 4
  %xor63 = xor i32 %35, %37
  %38 = load i32, i32* %i, align 4
  %sub64 = sub i32 %38, 14
  %idxprom65 = zext i32 %sub64 to i64
  %arrayidx66 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom65
  %39 = load i32, i32* %arrayidx66, align 4
  %xor67 = xor i32 %xor63, %39
  %40 = load i32, i32* %i, align 4
  %sub68 = sub i32 %40, 16
  %idxprom69 = zext i32 %sub68 to i64
  %arrayidx70 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom69
  %41 = load i32, i32* %arrayidx70, align 4
  %xor71 = xor i32 %xor67, %41
  %conv72 = zext i32 %xor71 to i64
  %and73 = and i64 %conv72, 4294967295
  %shr = lshr i64 %and73, 31
  %or74 = or i64 %shl56, %shr
  %and75 = and i64 %or74, 4294967295
  %conv76 = trunc i64 %and75 to i32
  %42 = load i32, i32* %i, align 4
  %idxprom77 = zext i32 %42 to i64
  %arrayidx78 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom77
  store i32 %conv76, i32* %arrayidx78, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.41
  %43 = load i32, i32* %i, align 4
  %inc80 = add i32 %43, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.38

for.end.81:                                       ; preds = %for.cond.38
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.body.85, %for.end.81
  %44 = load i32, i32* %i, align 4
  %cmp83 = icmp ult i32 %44, 20
  br i1 %cmp83, label %for.body.85, label %for.end.230

for.body.85:                                      ; preds = %for.cond.82
  %45 = load i32, i32* %a, align 4
  %conv86 = zext i32 %45 to i64
  %shl87 = shl i64 %conv86, 5
  %46 = load i32, i32* %a, align 4
  %conv88 = zext i32 %46 to i64
  %and89 = and i64 %conv88, 4294967295
  %shr90 = lshr i64 %and89, 27
  %or91 = or i64 %shl87, %shr90
  %and92 = and i64 %or91, 4294967295
  %47 = load i32, i32* %d, align 4
  %48 = load i32, i32* %b, align 4
  %49 = load i32, i32* %c, align 4
  %50 = load i32, i32* %d, align 4
  %xor93 = xor i32 %49, %50
  %and94 = and i32 %48, %xor93
  %xor95 = xor i32 %47, %and94
  %conv96 = zext i32 %xor95 to i64
  %add = add i64 %and92, %conv96
  %51 = load i32, i32* %e, align 4
  %conv97 = zext i32 %51 to i64
  %add98 = add i64 %add, %conv97
  %52 = load i32, i32* %i, align 4
  %inc99 = add i32 %52, 1
  store i32 %inc99, i32* %i, align 4
  %idxprom100 = zext i32 %52 to i64
  %arrayidx101 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom100
  %53 = load i32, i32* %arrayidx101, align 4
  %conv102 = zext i32 %53 to i64
  %add103 = add i64 %add98, %conv102
  %add104 = add i64 %add103, 1518500249
  %conv105 = trunc i64 %add104 to i32
  store i32 %conv105, i32* %e, align 4
  %54 = load i32, i32* %b, align 4
  %conv106 = zext i32 %54 to i64
  %shl107 = shl i64 %conv106, 30
  %55 = load i32, i32* %b, align 4
  %conv108 = zext i32 %55 to i64
  %and109 = and i64 %conv108, 4294967295
  %shr110 = lshr i64 %and109, 2
  %or111 = or i64 %shl107, %shr110
  %and112 = and i64 %or111, 4294967295
  %conv113 = trunc i64 %and112 to i32
  store i32 %conv113, i32* %b, align 4
  %56 = load i32, i32* %e, align 4
  %conv114 = zext i32 %56 to i64
  %shl115 = shl i64 %conv114, 5
  %57 = load i32, i32* %e, align 4
  %conv116 = zext i32 %57 to i64
  %and117 = and i64 %conv116, 4294967295
  %shr118 = lshr i64 %and117, 27
  %or119 = or i64 %shl115, %shr118
  %and120 = and i64 %or119, 4294967295
  %58 = load i32, i32* %c, align 4
  %59 = load i32, i32* %a, align 4
  %60 = load i32, i32* %b, align 4
  %61 = load i32, i32* %c, align 4
  %xor121 = xor i32 %60, %61
  %and122 = and i32 %59, %xor121
  %xor123 = xor i32 %58, %and122
  %conv124 = zext i32 %xor123 to i64
  %add125 = add i64 %and120, %conv124
  %62 = load i32, i32* %d, align 4
  %conv126 = zext i32 %62 to i64
  %add127 = add i64 %add125, %conv126
  %63 = load i32, i32* %i, align 4
  %inc128 = add i32 %63, 1
  store i32 %inc128, i32* %i, align 4
  %idxprom129 = zext i32 %63 to i64
  %arrayidx130 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom129
  %64 = load i32, i32* %arrayidx130, align 4
  %conv131 = zext i32 %64 to i64
  %add132 = add i64 %add127, %conv131
  %add133 = add i64 %add132, 1518500249
  %conv134 = trunc i64 %add133 to i32
  store i32 %conv134, i32* %d, align 4
  %65 = load i32, i32* %a, align 4
  %conv135 = zext i32 %65 to i64
  %shl136 = shl i64 %conv135, 30
  %66 = load i32, i32* %a, align 4
  %conv137 = zext i32 %66 to i64
  %and138 = and i64 %conv137, 4294967295
  %shr139 = lshr i64 %and138, 2
  %or140 = or i64 %shl136, %shr139
  %and141 = and i64 %or140, 4294967295
  %conv142 = trunc i64 %and141 to i32
  store i32 %conv142, i32* %a, align 4
  %67 = load i32, i32* %d, align 4
  %conv143 = zext i32 %67 to i64
  %shl144 = shl i64 %conv143, 5
  %68 = load i32, i32* %d, align 4
  %conv145 = zext i32 %68 to i64
  %and146 = and i64 %conv145, 4294967295
  %shr147 = lshr i64 %and146, 27
  %or148 = or i64 %shl144, %shr147
  %and149 = and i64 %or148, 4294967295
  %69 = load i32, i32* %b, align 4
  %70 = load i32, i32* %e, align 4
  %71 = load i32, i32* %a, align 4
  %72 = load i32, i32* %b, align 4
  %xor150 = xor i32 %71, %72
  %and151 = and i32 %70, %xor150
  %xor152 = xor i32 %69, %and151
  %conv153 = zext i32 %xor152 to i64
  %add154 = add i64 %and149, %conv153
  %73 = load i32, i32* %c, align 4
  %conv155 = zext i32 %73 to i64
  %add156 = add i64 %add154, %conv155
  %74 = load i32, i32* %i, align 4
  %inc157 = add i32 %74, 1
  store i32 %inc157, i32* %i, align 4
  %idxprom158 = zext i32 %74 to i64
  %arrayidx159 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom158
  %75 = load i32, i32* %arrayidx159, align 4
  %conv160 = zext i32 %75 to i64
  %add161 = add i64 %add156, %conv160
  %add162 = add i64 %add161, 1518500249
  %conv163 = trunc i64 %add162 to i32
  store i32 %conv163, i32* %c, align 4
  %76 = load i32, i32* %e, align 4
  %conv164 = zext i32 %76 to i64
  %shl165 = shl i64 %conv164, 30
  %77 = load i32, i32* %e, align 4
  %conv166 = zext i32 %77 to i64
  %and167 = and i64 %conv166, 4294967295
  %shr168 = lshr i64 %and167, 2
  %or169 = or i64 %shl165, %shr168
  %and170 = and i64 %or169, 4294967295
  %conv171 = trunc i64 %and170 to i32
  store i32 %conv171, i32* %e, align 4
  %78 = load i32, i32* %c, align 4
  %conv172 = zext i32 %78 to i64
  %shl173 = shl i64 %conv172, 5
  %79 = load i32, i32* %c, align 4
  %conv174 = zext i32 %79 to i64
  %and175 = and i64 %conv174, 4294967295
  %shr176 = lshr i64 %and175, 27
  %or177 = or i64 %shl173, %shr176
  %and178 = and i64 %or177, 4294967295
  %80 = load i32, i32* %a, align 4
  %81 = load i32, i32* %d, align 4
  %82 = load i32, i32* %e, align 4
  %83 = load i32, i32* %a, align 4
  %xor179 = xor i32 %82, %83
  %and180 = and i32 %81, %xor179
  %xor181 = xor i32 %80, %and180
  %conv182 = zext i32 %xor181 to i64
  %add183 = add i64 %and178, %conv182
  %84 = load i32, i32* %b, align 4
  %conv184 = zext i32 %84 to i64
  %add185 = add i64 %add183, %conv184
  %85 = load i32, i32* %i, align 4
  %inc186 = add i32 %85, 1
  store i32 %inc186, i32* %i, align 4
  %idxprom187 = zext i32 %85 to i64
  %arrayidx188 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom187
  %86 = load i32, i32* %arrayidx188, align 4
  %conv189 = zext i32 %86 to i64
  %add190 = add i64 %add185, %conv189
  %add191 = add i64 %add190, 1518500249
  %conv192 = trunc i64 %add191 to i32
  store i32 %conv192, i32* %b, align 4
  %87 = load i32, i32* %d, align 4
  %conv193 = zext i32 %87 to i64
  %shl194 = shl i64 %conv193, 30
  %88 = load i32, i32* %d, align 4
  %conv195 = zext i32 %88 to i64
  %and196 = and i64 %conv195, 4294967295
  %shr197 = lshr i64 %and196, 2
  %or198 = or i64 %shl194, %shr197
  %and199 = and i64 %or198, 4294967295
  %conv200 = trunc i64 %and199 to i32
  store i32 %conv200, i32* %d, align 4
  %89 = load i32, i32* %b, align 4
  %conv201 = zext i32 %89 to i64
  %shl202 = shl i64 %conv201, 5
  %90 = load i32, i32* %b, align 4
  %conv203 = zext i32 %90 to i64
  %and204 = and i64 %conv203, 4294967295
  %shr205 = lshr i64 %and204, 27
  %or206 = or i64 %shl202, %shr205
  %and207 = and i64 %or206, 4294967295
  %91 = load i32, i32* %e, align 4
  %92 = load i32, i32* %c, align 4
  %93 = load i32, i32* %d, align 4
  %94 = load i32, i32* %e, align 4
  %xor208 = xor i32 %93, %94
  %and209 = and i32 %92, %xor208
  %xor210 = xor i32 %91, %and209
  %conv211 = zext i32 %xor210 to i64
  %add212 = add i64 %and207, %conv211
  %95 = load i32, i32* %a, align 4
  %conv213 = zext i32 %95 to i64
  %add214 = add i64 %add212, %conv213
  %96 = load i32, i32* %i, align 4
  %inc215 = add i32 %96, 1
  store i32 %inc215, i32* %i, align 4
  %idxprom216 = zext i32 %96 to i64
  %arrayidx217 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom216
  %97 = load i32, i32* %arrayidx217, align 4
  %conv218 = zext i32 %97 to i64
  %add219 = add i64 %add214, %conv218
  %add220 = add i64 %add219, 1518500249
  %conv221 = trunc i64 %add220 to i32
  store i32 %conv221, i32* %a, align 4
  %98 = load i32, i32* %c, align 4
  %conv222 = zext i32 %98 to i64
  %shl223 = shl i64 %conv222, 30
  %99 = load i32, i32* %c, align 4
  %conv224 = zext i32 %99 to i64
  %and225 = and i64 %conv224, 4294967295
  %shr226 = lshr i64 %and225, 2
  %or227 = or i64 %shl223, %shr226
  %and228 = and i64 %or227, 4294967295
  %conv229 = trunc i64 %and228 to i32
  store i32 %conv229, i32* %c, align 4
  br label %for.cond.82

for.end.230:                                      ; preds = %for.cond.82
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.body.234, %for.end.230
  %100 = load i32, i32* %i, align 4
  %cmp232 = icmp ult i32 %100, 40
  br i1 %cmp232, label %for.body.234, label %for.end.375

for.body.234:                                     ; preds = %for.cond.231
  %101 = load i32, i32* %a, align 4
  %conv235 = zext i32 %101 to i64
  %shl236 = shl i64 %conv235, 5
  %102 = load i32, i32* %a, align 4
  %conv237 = zext i32 %102 to i64
  %and238 = and i64 %conv237, 4294967295
  %shr239 = lshr i64 %and238, 27
  %or240 = or i64 %shl236, %shr239
  %and241 = and i64 %or240, 4294967295
  %103 = load i32, i32* %b, align 4
  %104 = load i32, i32* %c, align 4
  %xor242 = xor i32 %103, %104
  %105 = load i32, i32* %d, align 4
  %xor243 = xor i32 %xor242, %105
  %conv244 = zext i32 %xor243 to i64
  %add245 = add i64 %and241, %conv244
  %106 = load i32, i32* %e, align 4
  %conv246 = zext i32 %106 to i64
  %add247 = add i64 %add245, %conv246
  %107 = load i32, i32* %i, align 4
  %inc248 = add i32 %107, 1
  store i32 %inc248, i32* %i, align 4
  %idxprom249 = zext i32 %107 to i64
  %arrayidx250 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom249
  %108 = load i32, i32* %arrayidx250, align 4
  %conv251 = zext i32 %108 to i64
  %add252 = add i64 %add247, %conv251
  %add253 = add i64 %add252, 1859775393
  %conv254 = trunc i64 %add253 to i32
  store i32 %conv254, i32* %e, align 4
  %109 = load i32, i32* %b, align 4
  %conv255 = zext i32 %109 to i64
  %shl256 = shl i64 %conv255, 30
  %110 = load i32, i32* %b, align 4
  %conv257 = zext i32 %110 to i64
  %and258 = and i64 %conv257, 4294967295
  %shr259 = lshr i64 %and258, 2
  %or260 = or i64 %shl256, %shr259
  %and261 = and i64 %or260, 4294967295
  %conv262 = trunc i64 %and261 to i32
  store i32 %conv262, i32* %b, align 4
  %111 = load i32, i32* %e, align 4
  %conv263 = zext i32 %111 to i64
  %shl264 = shl i64 %conv263, 5
  %112 = load i32, i32* %e, align 4
  %conv265 = zext i32 %112 to i64
  %and266 = and i64 %conv265, 4294967295
  %shr267 = lshr i64 %and266, 27
  %or268 = or i64 %shl264, %shr267
  %and269 = and i64 %or268, 4294967295
  %113 = load i32, i32* %a, align 4
  %114 = load i32, i32* %b, align 4
  %xor270 = xor i32 %113, %114
  %115 = load i32, i32* %c, align 4
  %xor271 = xor i32 %xor270, %115
  %conv272 = zext i32 %xor271 to i64
  %add273 = add i64 %and269, %conv272
  %116 = load i32, i32* %d, align 4
  %conv274 = zext i32 %116 to i64
  %add275 = add i64 %add273, %conv274
  %117 = load i32, i32* %i, align 4
  %inc276 = add i32 %117, 1
  store i32 %inc276, i32* %i, align 4
  %idxprom277 = zext i32 %117 to i64
  %arrayidx278 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom277
  %118 = load i32, i32* %arrayidx278, align 4
  %conv279 = zext i32 %118 to i64
  %add280 = add i64 %add275, %conv279
  %add281 = add i64 %add280, 1859775393
  %conv282 = trunc i64 %add281 to i32
  store i32 %conv282, i32* %d, align 4
  %119 = load i32, i32* %a, align 4
  %conv283 = zext i32 %119 to i64
  %shl284 = shl i64 %conv283, 30
  %120 = load i32, i32* %a, align 4
  %conv285 = zext i32 %120 to i64
  %and286 = and i64 %conv285, 4294967295
  %shr287 = lshr i64 %and286, 2
  %or288 = or i64 %shl284, %shr287
  %and289 = and i64 %or288, 4294967295
  %conv290 = trunc i64 %and289 to i32
  store i32 %conv290, i32* %a, align 4
  %121 = load i32, i32* %d, align 4
  %conv291 = zext i32 %121 to i64
  %shl292 = shl i64 %conv291, 5
  %122 = load i32, i32* %d, align 4
  %conv293 = zext i32 %122 to i64
  %and294 = and i64 %conv293, 4294967295
  %shr295 = lshr i64 %and294, 27
  %or296 = or i64 %shl292, %shr295
  %and297 = and i64 %or296, 4294967295
  %123 = load i32, i32* %e, align 4
  %124 = load i32, i32* %a, align 4
  %xor298 = xor i32 %123, %124
  %125 = load i32, i32* %b, align 4
  %xor299 = xor i32 %xor298, %125
  %conv300 = zext i32 %xor299 to i64
  %add301 = add i64 %and297, %conv300
  %126 = load i32, i32* %c, align 4
  %conv302 = zext i32 %126 to i64
  %add303 = add i64 %add301, %conv302
  %127 = load i32, i32* %i, align 4
  %inc304 = add i32 %127, 1
  store i32 %inc304, i32* %i, align 4
  %idxprom305 = zext i32 %127 to i64
  %arrayidx306 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom305
  %128 = load i32, i32* %arrayidx306, align 4
  %conv307 = zext i32 %128 to i64
  %add308 = add i64 %add303, %conv307
  %add309 = add i64 %add308, 1859775393
  %conv310 = trunc i64 %add309 to i32
  store i32 %conv310, i32* %c, align 4
  %129 = load i32, i32* %e, align 4
  %conv311 = zext i32 %129 to i64
  %shl312 = shl i64 %conv311, 30
  %130 = load i32, i32* %e, align 4
  %conv313 = zext i32 %130 to i64
  %and314 = and i64 %conv313, 4294967295
  %shr315 = lshr i64 %and314, 2
  %or316 = or i64 %shl312, %shr315
  %and317 = and i64 %or316, 4294967295
  %conv318 = trunc i64 %and317 to i32
  store i32 %conv318, i32* %e, align 4
  %131 = load i32, i32* %c, align 4
  %conv319 = zext i32 %131 to i64
  %shl320 = shl i64 %conv319, 5
  %132 = load i32, i32* %c, align 4
  %conv321 = zext i32 %132 to i64
  %and322 = and i64 %conv321, 4294967295
  %shr323 = lshr i64 %and322, 27
  %or324 = or i64 %shl320, %shr323
  %and325 = and i64 %or324, 4294967295
  %133 = load i32, i32* %d, align 4
  %134 = load i32, i32* %e, align 4
  %xor326 = xor i32 %133, %134
  %135 = load i32, i32* %a, align 4
  %xor327 = xor i32 %xor326, %135
  %conv328 = zext i32 %xor327 to i64
  %add329 = add i64 %and325, %conv328
  %136 = load i32, i32* %b, align 4
  %conv330 = zext i32 %136 to i64
  %add331 = add i64 %add329, %conv330
  %137 = load i32, i32* %i, align 4
  %inc332 = add i32 %137, 1
  store i32 %inc332, i32* %i, align 4
  %idxprom333 = zext i32 %137 to i64
  %arrayidx334 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom333
  %138 = load i32, i32* %arrayidx334, align 4
  %conv335 = zext i32 %138 to i64
  %add336 = add i64 %add331, %conv335
  %add337 = add i64 %add336, 1859775393
  %conv338 = trunc i64 %add337 to i32
  store i32 %conv338, i32* %b, align 4
  %139 = load i32, i32* %d, align 4
  %conv339 = zext i32 %139 to i64
  %shl340 = shl i64 %conv339, 30
  %140 = load i32, i32* %d, align 4
  %conv341 = zext i32 %140 to i64
  %and342 = and i64 %conv341, 4294967295
  %shr343 = lshr i64 %and342, 2
  %or344 = or i64 %shl340, %shr343
  %and345 = and i64 %or344, 4294967295
  %conv346 = trunc i64 %and345 to i32
  store i32 %conv346, i32* %d, align 4
  %141 = load i32, i32* %b, align 4
  %conv347 = zext i32 %141 to i64
  %shl348 = shl i64 %conv347, 5
  %142 = load i32, i32* %b, align 4
  %conv349 = zext i32 %142 to i64
  %and350 = and i64 %conv349, 4294967295
  %shr351 = lshr i64 %and350, 27
  %or352 = or i64 %shl348, %shr351
  %and353 = and i64 %or352, 4294967295
  %143 = load i32, i32* %c, align 4
  %144 = load i32, i32* %d, align 4
  %xor354 = xor i32 %143, %144
  %145 = load i32, i32* %e, align 4
  %xor355 = xor i32 %xor354, %145
  %conv356 = zext i32 %xor355 to i64
  %add357 = add i64 %and353, %conv356
  %146 = load i32, i32* %a, align 4
  %conv358 = zext i32 %146 to i64
  %add359 = add i64 %add357, %conv358
  %147 = load i32, i32* %i, align 4
  %inc360 = add i32 %147, 1
  store i32 %inc360, i32* %i, align 4
  %idxprom361 = zext i32 %147 to i64
  %arrayidx362 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom361
  %148 = load i32, i32* %arrayidx362, align 4
  %conv363 = zext i32 %148 to i64
  %add364 = add i64 %add359, %conv363
  %add365 = add i64 %add364, 1859775393
  %conv366 = trunc i64 %add365 to i32
  store i32 %conv366, i32* %a, align 4
  %149 = load i32, i32* %c, align 4
  %conv367 = zext i32 %149 to i64
  %shl368 = shl i64 %conv367, 30
  %150 = load i32, i32* %c, align 4
  %conv369 = zext i32 %150 to i64
  %and370 = and i64 %conv369, 4294967295
  %shr371 = lshr i64 %and370, 2
  %or372 = or i64 %shl368, %shr371
  %and373 = and i64 %or372, 4294967295
  %conv374 = trunc i64 %and373 to i32
  store i32 %conv374, i32* %c, align 4
  br label %for.cond.231

for.end.375:                                      ; preds = %for.cond.231
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.body.379, %for.end.375
  %151 = load i32, i32* %i, align 4
  %cmp377 = icmp ult i32 %151, 60
  br i1 %cmp377, label %for.body.379, label %for.end.530

for.body.379:                                     ; preds = %for.cond.376
  %152 = load i32, i32* %a, align 4
  %conv380 = zext i32 %152 to i64
  %shl381 = shl i64 %conv380, 5
  %153 = load i32, i32* %a, align 4
  %conv382 = zext i32 %153 to i64
  %and383 = and i64 %conv382, 4294967295
  %shr384 = lshr i64 %and383, 27
  %or385 = or i64 %shl381, %shr384
  %and386 = and i64 %or385, 4294967295
  %154 = load i32, i32* %b, align 4
  %155 = load i32, i32* %c, align 4
  %and387 = and i32 %154, %155
  %156 = load i32, i32* %d, align 4
  %157 = load i32, i32* %b, align 4
  %158 = load i32, i32* %c, align 4
  %or388 = or i32 %157, %158
  %and389 = and i32 %156, %or388
  %or390 = or i32 %and387, %and389
  %conv391 = zext i32 %or390 to i64
  %add392 = add i64 %and386, %conv391
  %159 = load i32, i32* %e, align 4
  %conv393 = zext i32 %159 to i64
  %add394 = add i64 %add392, %conv393
  %160 = load i32, i32* %i, align 4
  %inc395 = add i32 %160, 1
  store i32 %inc395, i32* %i, align 4
  %idxprom396 = zext i32 %160 to i64
  %arrayidx397 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom396
  %161 = load i32, i32* %arrayidx397, align 4
  %conv398 = zext i32 %161 to i64
  %add399 = add i64 %add394, %conv398
  %add400 = add i64 %add399, 2400959708
  %conv401 = trunc i64 %add400 to i32
  store i32 %conv401, i32* %e, align 4
  %162 = load i32, i32* %b, align 4
  %conv402 = zext i32 %162 to i64
  %shl403 = shl i64 %conv402, 30
  %163 = load i32, i32* %b, align 4
  %conv404 = zext i32 %163 to i64
  %and405 = and i64 %conv404, 4294967295
  %shr406 = lshr i64 %and405, 2
  %or407 = or i64 %shl403, %shr406
  %and408 = and i64 %or407, 4294967295
  %conv409 = trunc i64 %and408 to i32
  store i32 %conv409, i32* %b, align 4
  %164 = load i32, i32* %e, align 4
  %conv410 = zext i32 %164 to i64
  %shl411 = shl i64 %conv410, 5
  %165 = load i32, i32* %e, align 4
  %conv412 = zext i32 %165 to i64
  %and413 = and i64 %conv412, 4294967295
  %shr414 = lshr i64 %and413, 27
  %or415 = or i64 %shl411, %shr414
  %and416 = and i64 %or415, 4294967295
  %166 = load i32, i32* %a, align 4
  %167 = load i32, i32* %b, align 4
  %and417 = and i32 %166, %167
  %168 = load i32, i32* %c, align 4
  %169 = load i32, i32* %a, align 4
  %170 = load i32, i32* %b, align 4
  %or418 = or i32 %169, %170
  %and419 = and i32 %168, %or418
  %or420 = or i32 %and417, %and419
  %conv421 = zext i32 %or420 to i64
  %add422 = add i64 %and416, %conv421
  %171 = load i32, i32* %d, align 4
  %conv423 = zext i32 %171 to i64
  %add424 = add i64 %add422, %conv423
  %172 = load i32, i32* %i, align 4
  %inc425 = add i32 %172, 1
  store i32 %inc425, i32* %i, align 4
  %idxprom426 = zext i32 %172 to i64
  %arrayidx427 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom426
  %173 = load i32, i32* %arrayidx427, align 4
  %conv428 = zext i32 %173 to i64
  %add429 = add i64 %add424, %conv428
  %add430 = add i64 %add429, 2400959708
  %conv431 = trunc i64 %add430 to i32
  store i32 %conv431, i32* %d, align 4
  %174 = load i32, i32* %a, align 4
  %conv432 = zext i32 %174 to i64
  %shl433 = shl i64 %conv432, 30
  %175 = load i32, i32* %a, align 4
  %conv434 = zext i32 %175 to i64
  %and435 = and i64 %conv434, 4294967295
  %shr436 = lshr i64 %and435, 2
  %or437 = or i64 %shl433, %shr436
  %and438 = and i64 %or437, 4294967295
  %conv439 = trunc i64 %and438 to i32
  store i32 %conv439, i32* %a, align 4
  %176 = load i32, i32* %d, align 4
  %conv440 = zext i32 %176 to i64
  %shl441 = shl i64 %conv440, 5
  %177 = load i32, i32* %d, align 4
  %conv442 = zext i32 %177 to i64
  %and443 = and i64 %conv442, 4294967295
  %shr444 = lshr i64 %and443, 27
  %or445 = or i64 %shl441, %shr444
  %and446 = and i64 %or445, 4294967295
  %178 = load i32, i32* %e, align 4
  %179 = load i32, i32* %a, align 4
  %and447 = and i32 %178, %179
  %180 = load i32, i32* %b, align 4
  %181 = load i32, i32* %e, align 4
  %182 = load i32, i32* %a, align 4
  %or448 = or i32 %181, %182
  %and449 = and i32 %180, %or448
  %or450 = or i32 %and447, %and449
  %conv451 = zext i32 %or450 to i64
  %add452 = add i64 %and446, %conv451
  %183 = load i32, i32* %c, align 4
  %conv453 = zext i32 %183 to i64
  %add454 = add i64 %add452, %conv453
  %184 = load i32, i32* %i, align 4
  %inc455 = add i32 %184, 1
  store i32 %inc455, i32* %i, align 4
  %idxprom456 = zext i32 %184 to i64
  %arrayidx457 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom456
  %185 = load i32, i32* %arrayidx457, align 4
  %conv458 = zext i32 %185 to i64
  %add459 = add i64 %add454, %conv458
  %add460 = add i64 %add459, 2400959708
  %conv461 = trunc i64 %add460 to i32
  store i32 %conv461, i32* %c, align 4
  %186 = load i32, i32* %e, align 4
  %conv462 = zext i32 %186 to i64
  %shl463 = shl i64 %conv462, 30
  %187 = load i32, i32* %e, align 4
  %conv464 = zext i32 %187 to i64
  %and465 = and i64 %conv464, 4294967295
  %shr466 = lshr i64 %and465, 2
  %or467 = or i64 %shl463, %shr466
  %and468 = and i64 %or467, 4294967295
  %conv469 = trunc i64 %and468 to i32
  store i32 %conv469, i32* %e, align 4
  %188 = load i32, i32* %c, align 4
  %conv470 = zext i32 %188 to i64
  %shl471 = shl i64 %conv470, 5
  %189 = load i32, i32* %c, align 4
  %conv472 = zext i32 %189 to i64
  %and473 = and i64 %conv472, 4294967295
  %shr474 = lshr i64 %and473, 27
  %or475 = or i64 %shl471, %shr474
  %and476 = and i64 %or475, 4294967295
  %190 = load i32, i32* %d, align 4
  %191 = load i32, i32* %e, align 4
  %and477 = and i32 %190, %191
  %192 = load i32, i32* %a, align 4
  %193 = load i32, i32* %d, align 4
  %194 = load i32, i32* %e, align 4
  %or478 = or i32 %193, %194
  %and479 = and i32 %192, %or478
  %or480 = or i32 %and477, %and479
  %conv481 = zext i32 %or480 to i64
  %add482 = add i64 %and476, %conv481
  %195 = load i32, i32* %b, align 4
  %conv483 = zext i32 %195 to i64
  %add484 = add i64 %add482, %conv483
  %196 = load i32, i32* %i, align 4
  %inc485 = add i32 %196, 1
  store i32 %inc485, i32* %i, align 4
  %idxprom486 = zext i32 %196 to i64
  %arrayidx487 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom486
  %197 = load i32, i32* %arrayidx487, align 4
  %conv488 = zext i32 %197 to i64
  %add489 = add i64 %add484, %conv488
  %add490 = add i64 %add489, 2400959708
  %conv491 = trunc i64 %add490 to i32
  store i32 %conv491, i32* %b, align 4
  %198 = load i32, i32* %d, align 4
  %conv492 = zext i32 %198 to i64
  %shl493 = shl i64 %conv492, 30
  %199 = load i32, i32* %d, align 4
  %conv494 = zext i32 %199 to i64
  %and495 = and i64 %conv494, 4294967295
  %shr496 = lshr i64 %and495, 2
  %or497 = or i64 %shl493, %shr496
  %and498 = and i64 %or497, 4294967295
  %conv499 = trunc i64 %and498 to i32
  store i32 %conv499, i32* %d, align 4
  %200 = load i32, i32* %b, align 4
  %conv500 = zext i32 %200 to i64
  %shl501 = shl i64 %conv500, 5
  %201 = load i32, i32* %b, align 4
  %conv502 = zext i32 %201 to i64
  %and503 = and i64 %conv502, 4294967295
  %shr504 = lshr i64 %and503, 27
  %or505 = or i64 %shl501, %shr504
  %and506 = and i64 %or505, 4294967295
  %202 = load i32, i32* %c, align 4
  %203 = load i32, i32* %d, align 4
  %and507 = and i32 %202, %203
  %204 = load i32, i32* %e, align 4
  %205 = load i32, i32* %c, align 4
  %206 = load i32, i32* %d, align 4
  %or508 = or i32 %205, %206
  %and509 = and i32 %204, %or508
  %or510 = or i32 %and507, %and509
  %conv511 = zext i32 %or510 to i64
  %add512 = add i64 %and506, %conv511
  %207 = load i32, i32* %a, align 4
  %conv513 = zext i32 %207 to i64
  %add514 = add i64 %add512, %conv513
  %208 = load i32, i32* %i, align 4
  %inc515 = add i32 %208, 1
  store i32 %inc515, i32* %i, align 4
  %idxprom516 = zext i32 %208 to i64
  %arrayidx517 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom516
  %209 = load i32, i32* %arrayidx517, align 4
  %conv518 = zext i32 %209 to i64
  %add519 = add i64 %add514, %conv518
  %add520 = add i64 %add519, 2400959708
  %conv521 = trunc i64 %add520 to i32
  store i32 %conv521, i32* %a, align 4
  %210 = load i32, i32* %c, align 4
  %conv522 = zext i32 %210 to i64
  %shl523 = shl i64 %conv522, 30
  %211 = load i32, i32* %c, align 4
  %conv524 = zext i32 %211 to i64
  %and525 = and i64 %conv524, 4294967295
  %shr526 = lshr i64 %and525, 2
  %or527 = or i64 %shl523, %shr526
  %and528 = and i64 %or527, 4294967295
  %conv529 = trunc i64 %and528 to i32
  store i32 %conv529, i32* %c, align 4
  br label %for.cond.376

for.end.530:                                      ; preds = %for.cond.376
  br label %for.cond.531

for.cond.531:                                     ; preds = %for.body.534, %for.end.530
  %212 = load i32, i32* %i, align 4
  %cmp532 = icmp ult i32 %212, 80
  br i1 %cmp532, label %for.body.534, label %for.end.675

for.body.534:                                     ; preds = %for.cond.531
  %213 = load i32, i32* %a, align 4
  %conv535 = zext i32 %213 to i64
  %shl536 = shl i64 %conv535, 5
  %214 = load i32, i32* %a, align 4
  %conv537 = zext i32 %214 to i64
  %and538 = and i64 %conv537, 4294967295
  %shr539 = lshr i64 %and538, 27
  %or540 = or i64 %shl536, %shr539
  %and541 = and i64 %or540, 4294967295
  %215 = load i32, i32* %b, align 4
  %216 = load i32, i32* %c, align 4
  %xor542 = xor i32 %215, %216
  %217 = load i32, i32* %d, align 4
  %xor543 = xor i32 %xor542, %217
  %conv544 = zext i32 %xor543 to i64
  %add545 = add i64 %and541, %conv544
  %218 = load i32, i32* %e, align 4
  %conv546 = zext i32 %218 to i64
  %add547 = add i64 %add545, %conv546
  %219 = load i32, i32* %i, align 4
  %inc548 = add i32 %219, 1
  store i32 %inc548, i32* %i, align 4
  %idxprom549 = zext i32 %219 to i64
  %arrayidx550 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom549
  %220 = load i32, i32* %arrayidx550, align 4
  %conv551 = zext i32 %220 to i64
  %add552 = add i64 %add547, %conv551
  %add553 = add i64 %add552, 3395469782
  %conv554 = trunc i64 %add553 to i32
  store i32 %conv554, i32* %e, align 4
  %221 = load i32, i32* %b, align 4
  %conv555 = zext i32 %221 to i64
  %shl556 = shl i64 %conv555, 30
  %222 = load i32, i32* %b, align 4
  %conv557 = zext i32 %222 to i64
  %and558 = and i64 %conv557, 4294967295
  %shr559 = lshr i64 %and558, 2
  %or560 = or i64 %shl556, %shr559
  %and561 = and i64 %or560, 4294967295
  %conv562 = trunc i64 %and561 to i32
  store i32 %conv562, i32* %b, align 4
  %223 = load i32, i32* %e, align 4
  %conv563 = zext i32 %223 to i64
  %shl564 = shl i64 %conv563, 5
  %224 = load i32, i32* %e, align 4
  %conv565 = zext i32 %224 to i64
  %and566 = and i64 %conv565, 4294967295
  %shr567 = lshr i64 %and566, 27
  %or568 = or i64 %shl564, %shr567
  %and569 = and i64 %or568, 4294967295
  %225 = load i32, i32* %a, align 4
  %226 = load i32, i32* %b, align 4
  %xor570 = xor i32 %225, %226
  %227 = load i32, i32* %c, align 4
  %xor571 = xor i32 %xor570, %227
  %conv572 = zext i32 %xor571 to i64
  %add573 = add i64 %and569, %conv572
  %228 = load i32, i32* %d, align 4
  %conv574 = zext i32 %228 to i64
  %add575 = add i64 %add573, %conv574
  %229 = load i32, i32* %i, align 4
  %inc576 = add i32 %229, 1
  store i32 %inc576, i32* %i, align 4
  %idxprom577 = zext i32 %229 to i64
  %arrayidx578 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom577
  %230 = load i32, i32* %arrayidx578, align 4
  %conv579 = zext i32 %230 to i64
  %add580 = add i64 %add575, %conv579
  %add581 = add i64 %add580, 3395469782
  %conv582 = trunc i64 %add581 to i32
  store i32 %conv582, i32* %d, align 4
  %231 = load i32, i32* %a, align 4
  %conv583 = zext i32 %231 to i64
  %shl584 = shl i64 %conv583, 30
  %232 = load i32, i32* %a, align 4
  %conv585 = zext i32 %232 to i64
  %and586 = and i64 %conv585, 4294967295
  %shr587 = lshr i64 %and586, 2
  %or588 = or i64 %shl584, %shr587
  %and589 = and i64 %or588, 4294967295
  %conv590 = trunc i64 %and589 to i32
  store i32 %conv590, i32* %a, align 4
  %233 = load i32, i32* %d, align 4
  %conv591 = zext i32 %233 to i64
  %shl592 = shl i64 %conv591, 5
  %234 = load i32, i32* %d, align 4
  %conv593 = zext i32 %234 to i64
  %and594 = and i64 %conv593, 4294967295
  %shr595 = lshr i64 %and594, 27
  %or596 = or i64 %shl592, %shr595
  %and597 = and i64 %or596, 4294967295
  %235 = load i32, i32* %e, align 4
  %236 = load i32, i32* %a, align 4
  %xor598 = xor i32 %235, %236
  %237 = load i32, i32* %b, align 4
  %xor599 = xor i32 %xor598, %237
  %conv600 = zext i32 %xor599 to i64
  %add601 = add i64 %and597, %conv600
  %238 = load i32, i32* %c, align 4
  %conv602 = zext i32 %238 to i64
  %add603 = add i64 %add601, %conv602
  %239 = load i32, i32* %i, align 4
  %inc604 = add i32 %239, 1
  store i32 %inc604, i32* %i, align 4
  %idxprom605 = zext i32 %239 to i64
  %arrayidx606 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom605
  %240 = load i32, i32* %arrayidx606, align 4
  %conv607 = zext i32 %240 to i64
  %add608 = add i64 %add603, %conv607
  %add609 = add i64 %add608, 3395469782
  %conv610 = trunc i64 %add609 to i32
  store i32 %conv610, i32* %c, align 4
  %241 = load i32, i32* %e, align 4
  %conv611 = zext i32 %241 to i64
  %shl612 = shl i64 %conv611, 30
  %242 = load i32, i32* %e, align 4
  %conv613 = zext i32 %242 to i64
  %and614 = and i64 %conv613, 4294967295
  %shr615 = lshr i64 %and614, 2
  %or616 = or i64 %shl612, %shr615
  %and617 = and i64 %or616, 4294967295
  %conv618 = trunc i64 %and617 to i32
  store i32 %conv618, i32* %e, align 4
  %243 = load i32, i32* %c, align 4
  %conv619 = zext i32 %243 to i64
  %shl620 = shl i64 %conv619, 5
  %244 = load i32, i32* %c, align 4
  %conv621 = zext i32 %244 to i64
  %and622 = and i64 %conv621, 4294967295
  %shr623 = lshr i64 %and622, 27
  %or624 = or i64 %shl620, %shr623
  %and625 = and i64 %or624, 4294967295
  %245 = load i32, i32* %d, align 4
  %246 = load i32, i32* %e, align 4
  %xor626 = xor i32 %245, %246
  %247 = load i32, i32* %a, align 4
  %xor627 = xor i32 %xor626, %247
  %conv628 = zext i32 %xor627 to i64
  %add629 = add i64 %and625, %conv628
  %248 = load i32, i32* %b, align 4
  %conv630 = zext i32 %248 to i64
  %add631 = add i64 %add629, %conv630
  %249 = load i32, i32* %i, align 4
  %inc632 = add i32 %249, 1
  store i32 %inc632, i32* %i, align 4
  %idxprom633 = zext i32 %249 to i64
  %arrayidx634 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom633
  %250 = load i32, i32* %arrayidx634, align 4
  %conv635 = zext i32 %250 to i64
  %add636 = add i64 %add631, %conv635
  %add637 = add i64 %add636, 3395469782
  %conv638 = trunc i64 %add637 to i32
  store i32 %conv638, i32* %b, align 4
  %251 = load i32, i32* %d, align 4
  %conv639 = zext i32 %251 to i64
  %shl640 = shl i64 %conv639, 30
  %252 = load i32, i32* %d, align 4
  %conv641 = zext i32 %252 to i64
  %and642 = and i64 %conv641, 4294967295
  %shr643 = lshr i64 %and642, 2
  %or644 = or i64 %shl640, %shr643
  %and645 = and i64 %or644, 4294967295
  %conv646 = trunc i64 %and645 to i32
  store i32 %conv646, i32* %d, align 4
  %253 = load i32, i32* %b, align 4
  %conv647 = zext i32 %253 to i64
  %shl648 = shl i64 %conv647, 5
  %254 = load i32, i32* %b, align 4
  %conv649 = zext i32 %254 to i64
  %and650 = and i64 %conv649, 4294967295
  %shr651 = lshr i64 %and650, 27
  %or652 = or i64 %shl648, %shr651
  %and653 = and i64 %or652, 4294967295
  %255 = load i32, i32* %c, align 4
  %256 = load i32, i32* %d, align 4
  %xor654 = xor i32 %255, %256
  %257 = load i32, i32* %e, align 4
  %xor655 = xor i32 %xor654, %257
  %conv656 = zext i32 %xor655 to i64
  %add657 = add i64 %and653, %conv656
  %258 = load i32, i32* %a, align 4
  %conv658 = zext i32 %258 to i64
  %add659 = add i64 %add657, %conv658
  %259 = load i32, i32* %i, align 4
  %inc660 = add i32 %259, 1
  store i32 %inc660, i32* %i, align 4
  %idxprom661 = zext i32 %259 to i64
  %arrayidx662 = getelementptr [80 x i32], [80 x i32]* %W, i32 0, i64 %idxprom661
  %260 = load i32, i32* %arrayidx662, align 4
  %conv663 = zext i32 %260 to i64
  %add664 = add i64 %add659, %conv663
  %add665 = add i64 %add664, 3395469782
  %conv666 = trunc i64 %add665 to i32
  store i32 %conv666, i32* %a, align 4
  %261 = load i32, i32* %c, align 4
  %conv667 = zext i32 %261 to i64
  %shl668 = shl i64 %conv667, 30
  %262 = load i32, i32* %c, align 4
  %conv669 = zext i32 %262 to i64
  %and670 = and i64 %conv669, 4294967295
  %shr671 = lshr i64 %and670, 2
  %or672 = or i64 %shl668, %shr671
  %and673 = and i64 %or672, 4294967295
  %conv674 = trunc i64 %and673 to i32
  store i32 %conv674, i32* %c, align 4
  br label %for.cond.531

for.end.675:                                      ; preds = %for.cond.531
  %263 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state676 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %263, i32 0, i32 1
  %arrayidx677 = getelementptr [5 x i32], [5 x i32]* %state676, i32 0, i64 0
  %264 = load i32, i32* %arrayidx677, align 4
  %265 = load i32, i32* %a, align 4
  %add678 = add i32 %264, %265
  %266 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state679 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %266, i32 0, i32 1
  %arrayidx680 = getelementptr [5 x i32], [5 x i32]* %state679, i32 0, i64 0
  store i32 %add678, i32* %arrayidx680, align 4
  %267 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state681 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %267, i32 0, i32 1
  %arrayidx682 = getelementptr [5 x i32], [5 x i32]* %state681, i32 0, i64 1
  %268 = load i32, i32* %arrayidx682, align 4
  %269 = load i32, i32* %b, align 4
  %add683 = add i32 %268, %269
  %270 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state684 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %270, i32 0, i32 1
  %arrayidx685 = getelementptr [5 x i32], [5 x i32]* %state684, i32 0, i64 1
  store i32 %add683, i32* %arrayidx685, align 4
  %271 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state686 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %271, i32 0, i32 1
  %arrayidx687 = getelementptr [5 x i32], [5 x i32]* %state686, i32 0, i64 2
  %272 = load i32, i32* %arrayidx687, align 4
  %273 = load i32, i32* %c, align 4
  %add688 = add i32 %272, %273
  %274 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state689 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %274, i32 0, i32 1
  %arrayidx690 = getelementptr [5 x i32], [5 x i32]* %state689, i32 0, i64 2
  store i32 %add688, i32* %arrayidx690, align 4
  %275 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state691 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %275, i32 0, i32 1
  %arrayidx692 = getelementptr [5 x i32], [5 x i32]* %state691, i32 0, i64 3
  %276 = load i32, i32* %arrayidx692, align 4
  %277 = load i32, i32* %d, align 4
  %add693 = add i32 %276, %277
  %278 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state694 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %278, i32 0, i32 1
  %arrayidx695 = getelementptr [5 x i32], [5 x i32]* %state694, i32 0, i64 3
  store i32 %add693, i32* %arrayidx695, align 4
  %279 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state696 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %279, i32 0, i32 1
  %arrayidx697 = getelementptr [5 x i32], [5 x i32]* %state696, i32 0, i64 4
  %280 = load i32, i32* %arrayidx697, align 4
  %281 = load i32, i32* %e, align 4
  %add698 = add i32 %280, %281
  %282 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state699 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %282, i32 0, i32 1
  %arrayidx700 = getelementptr [5 x i32], [5 x i32]* %state699, i32 0, i64 4
  store i32 %add698, i32* %arrayidx700, align 4
  ret void
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal void @sha1_process(%struct.sha1_state* %sha1, i8* %in, i64 %inlen) #0 {
entry:
  %sha1.addr = alloca %struct.sha1_state*, align 8
  %in.addr = alloca i8*, align 8
  %inlen.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store %struct.sha1_state* %sha1, %struct.sha1_state** %sha1.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i64 %inlen, i64* %inlen.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %0 = load i64, i64* %inlen.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %1, i32 0, i32 2
  %2 = load i32, i32* %curlen, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %3 = load i64, i64* %inlen.addr, align 8
  %cmp2 = icmp sge i64 %3, 64
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %5 = load i8*, i8** %in.addr, align 8
  call void @sha1_compress(%struct.sha1_state* %4, i8* %5)
  %6 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %6, i32 0, i32 0
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
  %11 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen3 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %11, i32 0, i32 2
  %12 = load i32, i32* %curlen3, align 4
  %sub4 = sub i32 64, %12
  %conv = zext i32 %sub4 to i64
  %cmp5 = icmp sgt i64 %10, %conv
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %13 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen7 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %13, i32 0, i32 2
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
  %16 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %16, i32 0, i32 3
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %17 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen10 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %17, i32 0, i32 2
  %18 = load i32, i32* %curlen10, align 4
  %idx.ext = zext i32 %18 to i64
  %add.ptr11 = getelementptr i8, i8* %arraydecay, i64 %idx.ext
  %19 = load i8*, i8** %in.addr, align 8
  %20 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr11, i8* %19, i64 %20, i32 1, i1 false)
  %21 = load i64, i64* %n, align 8
  %conv12 = trunc i64 %21 to i32
  %22 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen13 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %22, i32 0, i32 2
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
  %28 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen17 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %28, i32 0, i32 2
  %29 = load i32, i32* %curlen17, align 4
  %cmp18 = icmp eq i32 %29, 64
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %cond.end
  %30 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %31 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %buf21 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %31, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [64 x i8], [64 x i8]* %buf21, i32 0, i32 0
  call void @sha1_compress(%struct.sha1_state* %30, i8* %arraydecay22)
  %32 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length23 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %32, i32 0, i32 0
  %33 = load i64, i64* %length23, align 8
  %add24 = add i64 %33, 512
  store i64 %add24, i64* %length23, align 8
  %34 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen25 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %34, i32 0, i32 2
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
define internal %struct._object* @SHA1_get_block_size(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 64)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA1_get_name(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @sha1_get_digest_size(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 20)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA1_new(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %new = alloca %struct.SHA1object*, align 8
  %data_obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store %struct._object* null, %struct._object** %data_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @SHA1_new.kwlist, i32 0, i32 0), %struct._object** %data_obj)
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
  %call20 = call %struct.SHA1object* @newSHA1object()
  store %struct.SHA1object* %call20, %struct.SHA1object** %new, align 8
  %cmp21 = icmp eq %struct.SHA1object* %call20, null
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
  %19 = load %struct.SHA1object*, %struct.SHA1object** %new, align 8
  %hash_state = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %19, i32 0, i32 1
  call void @sha1_init(%struct.sha1_state* %hash_state)
  %call27 = call %struct._object* @PyErr_Occurred()
  %tobool28 = icmp ne %struct._object* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %20 = load %struct.SHA1object*, %struct.SHA1object** %new, align 8
  %21 = bitcast %struct.SHA1object* %20 to %struct._object*
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
  %30 = load %struct.SHA1object*, %struct.SHA1object** %new, align 8
  %hash_state42 = getelementptr inbounds %struct.SHA1object, %struct.SHA1object* %30, i32 0, i32 1
  %buf43 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %31 = load i8*, i8** %buf43, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %32 = load i64, i64* %len, align 8
  call void @sha1_process(%struct.sha1_state* %hash_state42, i8* %31, i64 %32)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.39
  %33 = load %struct.SHA1object*, %struct.SHA1object** %new, align 8
  %34 = bitcast %struct.SHA1object* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.end.38, %if.end.25, %if.then.17, %if.then.14, %if.then.10, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal void @sha1_init(%struct.sha1_state* %sha1) #0 {
entry:
  %sha1.addr = alloca %struct.sha1_state*, align 8
  store %struct.sha1_state* %sha1, %struct.sha1_state** %sha1.addr, align 8
  %0 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %0, i32 0, i32 1
  %arrayidx = getelementptr [5 x i32], [5 x i32]* %state, i32 0, i64 0
  store i32 1732584193, i32* %arrayidx, align 4
  %1 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state1 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %1, i32 0, i32 1
  %arrayidx2 = getelementptr [5 x i32], [5 x i32]* %state1, i32 0, i64 1
  store i32 -271733879, i32* %arrayidx2, align 4
  %2 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state3 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %2, i32 0, i32 1
  %arrayidx4 = getelementptr [5 x i32], [5 x i32]* %state3, i32 0, i64 2
  store i32 -1732584194, i32* %arrayidx4, align 4
  %3 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state5 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %3, i32 0, i32 1
  %arrayidx6 = getelementptr [5 x i32], [5 x i32]* %state5, i32 0, i64 3
  store i32 271733878, i32* %arrayidx6, align 4
  %4 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %state7 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %4, i32 0, i32 1
  %arrayidx8 = getelementptr [5 x i32], [5 x i32]* %state7, i32 0, i64 4
  store i32 -1009589776, i32* %arrayidx8, align 4
  %5 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %curlen = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %5, i32 0, i32 2
  store i32 0, i32* %curlen, align 4
  %6 = load %struct.sha1_state*, %struct.sha1_state** %sha1.addr, align 8
  %length = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %6, i32 0, i32 0
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
