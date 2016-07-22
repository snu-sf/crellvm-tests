; ModuleID = './sha512module.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.SHAobject = type { %struct._object, [8 x i64], i32, i32, [128 x i8], i32, i32 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@PyType_Type = external global %struct._typeobject, align 8
@SHA384type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i64 224, i64 0, void (%struct._object*)* @SHA512_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @SHA_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @SHA_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @SHA_getseters, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@SHA512type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i64 224, i64 0, void (%struct._object*)* @SHA512_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @SHA_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @SHA_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @SHA_getseters, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_sha512module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @SHA_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"SHA384Type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SHA512Type\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"_sha512.sha384\00", align 1
@SHA_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHAobject*, %struct._object*)* @SHA512_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @SHA512_copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHAobject*, %struct._object*)* @SHA512_digest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @SHA512_digest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHAobject*, %struct._object*)* @SHA512_hexdigest to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @SHA512_hexdigest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SHAobject*, %struct._object*)* @SHA512_update to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @SHA512_update__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@SHA_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 1, i64 220, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@SHA_getseters = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @SHA512_get_block_size, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @SHA512_get_name, i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@SHA512_copy__doc__ = internal global [34 x i8] c"Return a copy of the hash object.\00", align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@SHA512_digest__doc__ = internal global [52 x i8] c"Return the digest value as a string of binary data.\00", align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"hexdigest\00", align 1
@SHA512_hexdigest__doc__ = internal global [59 x i8] c"Return the digest value as a string of hexadecimal digits.\00", align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@SHA512_update__doc__ = internal global [58 x i8] c"Update this hash object's state with the provided string.\00", align 16
@Py_hexdigits = external global i8*, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"O:update\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"Unicode-objects must be encoded before hashing\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"object supporting the buffer API required\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"Buffer must be single dimension\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"digest_size\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"_sha512.sha512\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"_sha512\00", align 1
@SHA_functions = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @SHA512_new to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @SHA512_new__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @SHA384_new to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @SHA384_new__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@SHA512_new__doc__ = internal global [72 x i8] c"Return a new SHA-512 hash object; optionally initialized with a string.\00", align 16
@SHA384_new__doc__ = internal global [72 x i8] c"Return a new SHA-384 hash object; optionally initialized with a string.\00", align 16
@SHA512_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"|O:new\00", align 1
@SHA384_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__sha512() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA384type, i32 0, i32 0, i32 0, i32 1), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @SHA384type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA512type, i32 0, i32 0, i32 0, i32 1), align 8
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @SHA512type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_sha512module, i32 1013)
  store %struct._object* %call5, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %0, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA384type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA384type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA384type, i32 0, i32 0, i32 0))
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA512type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc10 = add i64 %3, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA512type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @SHA512type, i32 0, i32 0, i32 0))
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @SHA512_dealloc(%struct._object* %ptr) #0 {
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
define internal %struct._object* @SHA512_copy(%struct.SHAobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHAobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %newobj = alloca %struct.SHAobject*, align 8
  store %struct.SHAobject* %self, %struct.SHAobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %1 = bitcast %struct.SHAobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @SHA512type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.SHAobject* @newSHA512object()
  store %struct.SHAobject* %call, %struct.SHAobject** %newobj, align 8
  %cmp1 = icmp eq %struct.SHAobject* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.else:                                          ; preds = %entry
  %call3 = call %struct.SHAobject* @newSHA384object()
  store %struct.SHAobject* %call3, %struct.SHAobject** %newobj, align 8
  %cmp4 = icmp eq %struct.SHAobject* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %4 = load %struct.SHAobject*, %struct.SHAobject** %newobj, align 8
  call void @SHAcopy(%struct.SHAobject* %3, %struct.SHAobject* %4)
  %5 = load %struct.SHAobject*, %struct.SHAobject** %newobj, align 8
  %6 = bitcast %struct.SHAobject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_digest(%struct.SHAobject* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.SHAobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [64 x i8], align 16
  %temp = alloca %struct.SHAobject, align 8
  store %struct.SHAobject* %self, %struct.SHAobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  call void @SHAcopy(%struct.SHAobject* %0, %struct.SHAobject* %temp)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  call void @sha512_final(i8* %arraydecay, %struct.SHAobject* %temp)
  %arraydecay1 = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  %1 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 6
  %2 = load i32, i32* %digestsize, align 4
  %conv = sext i32 %2 to i64
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* %arraydecay1, i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_hexdigest(%struct.SHAobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHAobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %digest = alloca [64 x i8], align 16
  %temp = alloca %struct.SHAobject, align 8
  %retval1 = alloca %struct._object*, align 8
  %hex_digest = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.SHAobject* %self, %struct.SHAobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  call void @SHAcopy(%struct.SHAobject* %0, %struct.SHAobject* %temp)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %digest, i32 0, i32 0
  call void @sha512_final(i8* %arraydecay, %struct.SHAobject* %temp)
  %1 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 6
  %2 = load i32, i32* %digestsize, align 4
  %mul = mul i32 %2, 2
  %conv = sext i32 %mul to i64
  %call = call %struct._object* @PyUnicode_New(i64 %conv, i32 127)
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
  %20 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %digestsize13 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %20, i32 0, i32 6
  %21 = load i32, i32* %digestsize13, align 4
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr [64 x i8], [64 x i8]* %digest, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %23 to i32
  %shr = ashr i32 %conv15, 4
  %and = and i32 %shr, 15
  %conv16 = trunc i32 %and to i8
  store i8 %conv16, i8* %c, align 1
  %24 = load i8, i8* %c, align 1
  %idxprom17 = zext i8 %24 to i64
  %25 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx18 = getelementptr i8, i8* %25, i64 %idxprom17
  %26 = load i8, i8* %arrayidx18, align 1
  %27 = load i32, i32* %j, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %j, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load i8*, i8** %hex_digest, align 8
  %arrayidx20 = getelementptr i8, i8* %28, i64 %idxprom19
  store i8 %26, i8* %arrayidx20, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr [64 x i8], [64 x i8]* %digest, i32 0, i64 %idxprom21
  %30 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %30 to i32
  %and24 = and i32 %conv23, 15
  %conv25 = trunc i32 %and24 to i8
  store i8 %conv25, i8* %c, align 1
  %31 = load i8, i8* %c, align 1
  %idxprom26 = zext i8 %31 to i64
  %32 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx27 = getelementptr i8, i8* %32, i64 %idxprom26
  %33 = load i8, i8* %arrayidx27, align 1
  %34 = load i32, i32* %j, align 4
  %inc28 = add i32 %34, 1
  store i32 %inc28, i32* %j, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load i8*, i8** %hex_digest, align 8
  %arrayidx30 = getelementptr i8, i8* %35, i64 %idxprom29
  store i8 %33, i8* %arrayidx30, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc31 = add i32 %36, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_update(%struct.SHAobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SHAobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  store %struct.SHAobject* %self, %struct.SHAobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object** %obj)
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
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %16 = load %struct.SHAobject*, %struct.SHAobject** %self.addr, align 8
  %buf17 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %17 = load i8*, i8** %buf17, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %18 = load i64, i64* %len, align 8
  call void @sha512_update(%struct.SHAobject* %16, i8* %17, i64 %18)
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
define internal %struct.SHAobject* @newSHA512object() #0 {
entry:
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @SHA512type)
  %0 = bitcast %struct._object* %call to %struct.SHAobject*
  ret %struct.SHAobject* %0
}

; Function Attrs: nounwind uwtable
define internal %struct.SHAobject* @newSHA384object() #0 {
entry:
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @SHA384type)
  %0 = bitcast %struct._object* %call to %struct.SHAobject*
  ret %struct.SHAobject* %0
}

; Function Attrs: nounwind uwtable
define internal void @SHAcopy(%struct.SHAobject* %src, %struct.SHAobject* %dest) #0 {
entry:
  %src.addr = alloca %struct.SHAobject*, align 8
  %dest.addr = alloca %struct.SHAobject*, align 8
  store %struct.SHAobject* %src, %struct.SHAobject** %src.addr, align 8
  store %struct.SHAobject* %dest, %struct.SHAobject** %dest.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %local = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %0, i32 0, i32 5
  %1 = load i32, i32* %local, align 4
  %2 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %local1 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2, i32 0, i32 5
  store i32 %1, i32* %local1, align 4
  %3 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %3, i32 0, i32 6
  %4 = load i32, i32* %digestsize, align 4
  %5 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %digestsize2 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %5, i32 0, i32 6
  store i32 %4, i32* %digestsize2, align 4
  %6 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %6, i32 0, i32 2
  %7 = load i32, i32* %count_lo, align 4
  %8 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %count_lo3 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %8, i32 0, i32 2
  store i32 %7, i32* %count_lo3, align 4
  %9 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %9, i32 0, i32 3
  %10 = load i32, i32* %count_hi, align 4
  %11 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %count_hi4 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %11, i32 0, i32 3
  store i32 %10, i32* %count_hi4, align 4
  %12 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %digest = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %12, i32 0, i32 1
  %13 = bitcast [8 x i64]* %digest to i8*
  %14 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %14, i32 0, i32 1
  %15 = bitcast [8 x i64]* %digest5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %15, i64 64, i32 8, i1 false)
  %16 = load %struct.SHAobject*, %struct.SHAobject** %dest.addr, align 8
  %data = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %16, i32 0, i32 4
  %17 = bitcast [128 x i8]* %data to i8*
  %18 = load %struct.SHAobject*, %struct.SHAobject** %src.addr, align 8
  %data6 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %18, i32 0, i32 4
  %19 = bitcast [128 x i8]* %data6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 128, i32 8, i1 false)
  ret void
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @sha512_final(i8* %digest, %struct.SHAobject* %sha_info) #0 {
entry:
  %digest.addr = alloca i8*, align 8
  %sha_info.addr = alloca %struct.SHAobject*, align 8
  %count = alloca i32, align 4
  %lo_bit_count = alloca i32, align 4
  %hi_bit_count = alloca i32, align 4
  store i8* %digest, i8** %digest.addr, align 8
  store %struct.SHAobject* %sha_info, %struct.SHAobject** %sha_info.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %0, i32 0, i32 2
  %1 = load i32, i32* %count_lo, align 4
  store i32 %1, i32* %lo_bit_count, align 4
  %2 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2, i32 0, i32 3
  %3 = load i32, i32* %count_hi, align 4
  store i32 %3, i32* %hi_bit_count, align 4
  %4 = load i32, i32* %lo_bit_count, align 4
  %shr = lshr i32 %4, 3
  %and = and i32 %shr, 127
  store i32 %and, i32* %count, align 4
  %5 = load i32, i32* %count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %count, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %data, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1
  %7 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %7, 112
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data1 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %8, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [128 x i8], [128 x i8]* %data1, i32 0, i32 0
  %9 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay2, i64 %idx.ext
  %10 = load i32, i32* %count, align 4
  %sub = sub i32 128, %10
  %conv = sext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %conv, i32 1, i1 false)
  %11 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  call void @sha512_transform(%struct.SHAobject* %11)
  %12 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data3 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %12, i32 0, i32 4
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %data3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay4, i8 0, i64 112, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data5 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %13, i32 0, i32 4
  %arraydecay6 = getelementptr inbounds [128 x i8], [128 x i8]* %data5, i32 0, i32 0
  %14 = load i32, i32* %count, align 4
  %idx.ext7 = sext i32 %14 to i64
  %add.ptr8 = getelementptr i8, i8* %arraydecay6, i64 %idx.ext7
  %15 = load i32, i32* %count, align 4
  %sub9 = sub i32 112, %15
  %conv10 = sext i32 %sub9 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr8, i8 0, i64 %conv10, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data11 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %16, i32 0, i32 4
  %arrayidx12 = getelementptr [128 x i8], [128 x i8]* %data11, i32 0, i64 112
  store i8 0, i8* %arrayidx12, align 1
  %17 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data13 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %17, i32 0, i32 4
  %arrayidx14 = getelementptr [128 x i8], [128 x i8]* %data13, i32 0, i64 113
  store i8 0, i8* %arrayidx14, align 1
  %18 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data15 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %18, i32 0, i32 4
  %arrayidx16 = getelementptr [128 x i8], [128 x i8]* %data15, i32 0, i64 114
  store i8 0, i8* %arrayidx16, align 1
  %19 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data17 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %19, i32 0, i32 4
  %arrayidx18 = getelementptr [128 x i8], [128 x i8]* %data17, i32 0, i64 115
  store i8 0, i8* %arrayidx18, align 1
  %20 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data19 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %20, i32 0, i32 4
  %arrayidx20 = getelementptr [128 x i8], [128 x i8]* %data19, i32 0, i64 116
  store i8 0, i8* %arrayidx20, align 1
  %21 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data21 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %21, i32 0, i32 4
  %arrayidx22 = getelementptr [128 x i8], [128 x i8]* %data21, i32 0, i64 117
  store i8 0, i8* %arrayidx22, align 1
  %22 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data23 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %22, i32 0, i32 4
  %arrayidx24 = getelementptr [128 x i8], [128 x i8]* %data23, i32 0, i64 118
  store i8 0, i8* %arrayidx24, align 1
  %23 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data25 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %23, i32 0, i32 4
  %arrayidx26 = getelementptr [128 x i8], [128 x i8]* %data25, i32 0, i64 119
  store i8 0, i8* %arrayidx26, align 1
  %24 = load i32, i32* %hi_bit_count, align 4
  %shr27 = lshr i32 %24, 24
  %and28 = and i32 %shr27, 255
  %conv29 = trunc i32 %and28 to i8
  %25 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data30 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %25, i32 0, i32 4
  %arrayidx31 = getelementptr [128 x i8], [128 x i8]* %data30, i32 0, i64 120
  store i8 %conv29, i8* %arrayidx31, align 1
  %26 = load i32, i32* %hi_bit_count, align 4
  %shr32 = lshr i32 %26, 16
  %and33 = and i32 %shr32, 255
  %conv34 = trunc i32 %and33 to i8
  %27 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data35 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %27, i32 0, i32 4
  %arrayidx36 = getelementptr [128 x i8], [128 x i8]* %data35, i32 0, i64 121
  store i8 %conv34, i8* %arrayidx36, align 1
  %28 = load i32, i32* %hi_bit_count, align 4
  %shr37 = lshr i32 %28, 8
  %and38 = and i32 %shr37, 255
  %conv39 = trunc i32 %and38 to i8
  %29 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data40 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %29, i32 0, i32 4
  %arrayidx41 = getelementptr [128 x i8], [128 x i8]* %data40, i32 0, i64 122
  store i8 %conv39, i8* %arrayidx41, align 1
  %30 = load i32, i32* %hi_bit_count, align 4
  %shr42 = lshr i32 %30, 0
  %and43 = and i32 %shr42, 255
  %conv44 = trunc i32 %and43 to i8
  %31 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data45 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %31, i32 0, i32 4
  %arrayidx46 = getelementptr [128 x i8], [128 x i8]* %data45, i32 0, i64 123
  store i8 %conv44, i8* %arrayidx46, align 1
  %32 = load i32, i32* %lo_bit_count, align 4
  %shr47 = lshr i32 %32, 24
  %and48 = and i32 %shr47, 255
  %conv49 = trunc i32 %and48 to i8
  %33 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data50 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %33, i32 0, i32 4
  %arrayidx51 = getelementptr [128 x i8], [128 x i8]* %data50, i32 0, i64 124
  store i8 %conv49, i8* %arrayidx51, align 1
  %34 = load i32, i32* %lo_bit_count, align 4
  %shr52 = lshr i32 %34, 16
  %and53 = and i32 %shr52, 255
  %conv54 = trunc i32 %and53 to i8
  %35 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data55 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %35, i32 0, i32 4
  %arrayidx56 = getelementptr [128 x i8], [128 x i8]* %data55, i32 0, i64 125
  store i8 %conv54, i8* %arrayidx56, align 1
  %36 = load i32, i32* %lo_bit_count, align 4
  %shr57 = lshr i32 %36, 8
  %and58 = and i32 %shr57, 255
  %conv59 = trunc i32 %and58 to i8
  %37 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data60 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %37, i32 0, i32 4
  %arrayidx61 = getelementptr [128 x i8], [128 x i8]* %data60, i32 0, i64 126
  store i8 %conv59, i8* %arrayidx61, align 1
  %38 = load i32, i32* %lo_bit_count, align 4
  %shr62 = lshr i32 %38, 0
  %and63 = and i32 %shr62, 255
  %conv64 = trunc i32 %and63 to i8
  %39 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data65 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %39, i32 0, i32 4
  %arrayidx66 = getelementptr [128 x i8], [128 x i8]* %data65, i32 0, i64 127
  store i8 %conv64, i8* %arrayidx66, align 1
  %40 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  call void @sha512_transform(%struct.SHAobject* %40)
  %41 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest67 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %41, i32 0, i32 1
  %arrayidx68 = getelementptr [8 x i64], [8 x i64]* %digest67, i32 0, i64 0
  %42 = load i64, i64* %arrayidx68, align 8
  %shr69 = lshr i64 %42, 56
  %and70 = and i64 %shr69, 255
  %conv71 = trunc i64 %and70 to i8
  %43 = load i8*, i8** %digest.addr, align 8
  %arrayidx72 = getelementptr i8, i8* %43, i64 0
  store i8 %conv71, i8* %arrayidx72, align 1
  %44 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest73 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %44, i32 0, i32 1
  %arrayidx74 = getelementptr [8 x i64], [8 x i64]* %digest73, i32 0, i64 0
  %45 = load i64, i64* %arrayidx74, align 8
  %shr75 = lshr i64 %45, 48
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %46 = load i8*, i8** %digest.addr, align 8
  %arrayidx78 = getelementptr i8, i8* %46, i64 1
  store i8 %conv77, i8* %arrayidx78, align 1
  %47 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest79 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %47, i32 0, i32 1
  %arrayidx80 = getelementptr [8 x i64], [8 x i64]* %digest79, i32 0, i64 0
  %48 = load i64, i64* %arrayidx80, align 8
  %shr81 = lshr i64 %48, 40
  %and82 = and i64 %shr81, 255
  %conv83 = trunc i64 %and82 to i8
  %49 = load i8*, i8** %digest.addr, align 8
  %arrayidx84 = getelementptr i8, i8* %49, i64 2
  store i8 %conv83, i8* %arrayidx84, align 1
  %50 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest85 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %50, i32 0, i32 1
  %arrayidx86 = getelementptr [8 x i64], [8 x i64]* %digest85, i32 0, i64 0
  %51 = load i64, i64* %arrayidx86, align 8
  %shr87 = lshr i64 %51, 32
  %and88 = and i64 %shr87, 255
  %conv89 = trunc i64 %and88 to i8
  %52 = load i8*, i8** %digest.addr, align 8
  %arrayidx90 = getelementptr i8, i8* %52, i64 3
  store i8 %conv89, i8* %arrayidx90, align 1
  %53 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest91 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %53, i32 0, i32 1
  %arrayidx92 = getelementptr [8 x i64], [8 x i64]* %digest91, i32 0, i64 0
  %54 = load i64, i64* %arrayidx92, align 8
  %shr93 = lshr i64 %54, 24
  %and94 = and i64 %shr93, 255
  %conv95 = trunc i64 %and94 to i8
  %55 = load i8*, i8** %digest.addr, align 8
  %arrayidx96 = getelementptr i8, i8* %55, i64 4
  store i8 %conv95, i8* %arrayidx96, align 1
  %56 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest97 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %56, i32 0, i32 1
  %arrayidx98 = getelementptr [8 x i64], [8 x i64]* %digest97, i32 0, i64 0
  %57 = load i64, i64* %arrayidx98, align 8
  %shr99 = lshr i64 %57, 16
  %and100 = and i64 %shr99, 255
  %conv101 = trunc i64 %and100 to i8
  %58 = load i8*, i8** %digest.addr, align 8
  %arrayidx102 = getelementptr i8, i8* %58, i64 5
  store i8 %conv101, i8* %arrayidx102, align 1
  %59 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest103 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %59, i32 0, i32 1
  %arrayidx104 = getelementptr [8 x i64], [8 x i64]* %digest103, i32 0, i64 0
  %60 = load i64, i64* %arrayidx104, align 8
  %shr105 = lshr i64 %60, 8
  %and106 = and i64 %shr105, 255
  %conv107 = trunc i64 %and106 to i8
  %61 = load i8*, i8** %digest.addr, align 8
  %arrayidx108 = getelementptr i8, i8* %61, i64 6
  store i8 %conv107, i8* %arrayidx108, align 1
  %62 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest109 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %62, i32 0, i32 1
  %arrayidx110 = getelementptr [8 x i64], [8 x i64]* %digest109, i32 0, i64 0
  %63 = load i64, i64* %arrayidx110, align 8
  %and111 = and i64 %63, 255
  %conv112 = trunc i64 %and111 to i8
  %64 = load i8*, i8** %digest.addr, align 8
  %arrayidx113 = getelementptr i8, i8* %64, i64 7
  store i8 %conv112, i8* %arrayidx113, align 1
  %65 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest114 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %65, i32 0, i32 1
  %arrayidx115 = getelementptr [8 x i64], [8 x i64]* %digest114, i32 0, i64 1
  %66 = load i64, i64* %arrayidx115, align 8
  %shr116 = lshr i64 %66, 56
  %and117 = and i64 %shr116, 255
  %conv118 = trunc i64 %and117 to i8
  %67 = load i8*, i8** %digest.addr, align 8
  %arrayidx119 = getelementptr i8, i8* %67, i64 8
  store i8 %conv118, i8* %arrayidx119, align 1
  %68 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest120 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %68, i32 0, i32 1
  %arrayidx121 = getelementptr [8 x i64], [8 x i64]* %digest120, i32 0, i64 1
  %69 = load i64, i64* %arrayidx121, align 8
  %shr122 = lshr i64 %69, 48
  %and123 = and i64 %shr122, 255
  %conv124 = trunc i64 %and123 to i8
  %70 = load i8*, i8** %digest.addr, align 8
  %arrayidx125 = getelementptr i8, i8* %70, i64 9
  store i8 %conv124, i8* %arrayidx125, align 1
  %71 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest126 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %71, i32 0, i32 1
  %arrayidx127 = getelementptr [8 x i64], [8 x i64]* %digest126, i32 0, i64 1
  %72 = load i64, i64* %arrayidx127, align 8
  %shr128 = lshr i64 %72, 40
  %and129 = and i64 %shr128, 255
  %conv130 = trunc i64 %and129 to i8
  %73 = load i8*, i8** %digest.addr, align 8
  %arrayidx131 = getelementptr i8, i8* %73, i64 10
  store i8 %conv130, i8* %arrayidx131, align 1
  %74 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest132 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %74, i32 0, i32 1
  %arrayidx133 = getelementptr [8 x i64], [8 x i64]* %digest132, i32 0, i64 1
  %75 = load i64, i64* %arrayidx133, align 8
  %shr134 = lshr i64 %75, 32
  %and135 = and i64 %shr134, 255
  %conv136 = trunc i64 %and135 to i8
  %76 = load i8*, i8** %digest.addr, align 8
  %arrayidx137 = getelementptr i8, i8* %76, i64 11
  store i8 %conv136, i8* %arrayidx137, align 1
  %77 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest138 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %77, i32 0, i32 1
  %arrayidx139 = getelementptr [8 x i64], [8 x i64]* %digest138, i32 0, i64 1
  %78 = load i64, i64* %arrayidx139, align 8
  %shr140 = lshr i64 %78, 24
  %and141 = and i64 %shr140, 255
  %conv142 = trunc i64 %and141 to i8
  %79 = load i8*, i8** %digest.addr, align 8
  %arrayidx143 = getelementptr i8, i8* %79, i64 12
  store i8 %conv142, i8* %arrayidx143, align 1
  %80 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest144 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %80, i32 0, i32 1
  %arrayidx145 = getelementptr [8 x i64], [8 x i64]* %digest144, i32 0, i64 1
  %81 = load i64, i64* %arrayidx145, align 8
  %shr146 = lshr i64 %81, 16
  %and147 = and i64 %shr146, 255
  %conv148 = trunc i64 %and147 to i8
  %82 = load i8*, i8** %digest.addr, align 8
  %arrayidx149 = getelementptr i8, i8* %82, i64 13
  store i8 %conv148, i8* %arrayidx149, align 1
  %83 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest150 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %83, i32 0, i32 1
  %arrayidx151 = getelementptr [8 x i64], [8 x i64]* %digest150, i32 0, i64 1
  %84 = load i64, i64* %arrayidx151, align 8
  %shr152 = lshr i64 %84, 8
  %and153 = and i64 %shr152, 255
  %conv154 = trunc i64 %and153 to i8
  %85 = load i8*, i8** %digest.addr, align 8
  %arrayidx155 = getelementptr i8, i8* %85, i64 14
  store i8 %conv154, i8* %arrayidx155, align 1
  %86 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest156 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %86, i32 0, i32 1
  %arrayidx157 = getelementptr [8 x i64], [8 x i64]* %digest156, i32 0, i64 1
  %87 = load i64, i64* %arrayidx157, align 8
  %and158 = and i64 %87, 255
  %conv159 = trunc i64 %and158 to i8
  %88 = load i8*, i8** %digest.addr, align 8
  %arrayidx160 = getelementptr i8, i8* %88, i64 15
  store i8 %conv159, i8* %arrayidx160, align 1
  %89 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest161 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %89, i32 0, i32 1
  %arrayidx162 = getelementptr [8 x i64], [8 x i64]* %digest161, i32 0, i64 2
  %90 = load i64, i64* %arrayidx162, align 8
  %shr163 = lshr i64 %90, 56
  %and164 = and i64 %shr163, 255
  %conv165 = trunc i64 %and164 to i8
  %91 = load i8*, i8** %digest.addr, align 8
  %arrayidx166 = getelementptr i8, i8* %91, i64 16
  store i8 %conv165, i8* %arrayidx166, align 1
  %92 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest167 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %92, i32 0, i32 1
  %arrayidx168 = getelementptr [8 x i64], [8 x i64]* %digest167, i32 0, i64 2
  %93 = load i64, i64* %arrayidx168, align 8
  %shr169 = lshr i64 %93, 48
  %and170 = and i64 %shr169, 255
  %conv171 = trunc i64 %and170 to i8
  %94 = load i8*, i8** %digest.addr, align 8
  %arrayidx172 = getelementptr i8, i8* %94, i64 17
  store i8 %conv171, i8* %arrayidx172, align 1
  %95 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest173 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %95, i32 0, i32 1
  %arrayidx174 = getelementptr [8 x i64], [8 x i64]* %digest173, i32 0, i64 2
  %96 = load i64, i64* %arrayidx174, align 8
  %shr175 = lshr i64 %96, 40
  %and176 = and i64 %shr175, 255
  %conv177 = trunc i64 %and176 to i8
  %97 = load i8*, i8** %digest.addr, align 8
  %arrayidx178 = getelementptr i8, i8* %97, i64 18
  store i8 %conv177, i8* %arrayidx178, align 1
  %98 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest179 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %98, i32 0, i32 1
  %arrayidx180 = getelementptr [8 x i64], [8 x i64]* %digest179, i32 0, i64 2
  %99 = load i64, i64* %arrayidx180, align 8
  %shr181 = lshr i64 %99, 32
  %and182 = and i64 %shr181, 255
  %conv183 = trunc i64 %and182 to i8
  %100 = load i8*, i8** %digest.addr, align 8
  %arrayidx184 = getelementptr i8, i8* %100, i64 19
  store i8 %conv183, i8* %arrayidx184, align 1
  %101 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest185 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %101, i32 0, i32 1
  %arrayidx186 = getelementptr [8 x i64], [8 x i64]* %digest185, i32 0, i64 2
  %102 = load i64, i64* %arrayidx186, align 8
  %shr187 = lshr i64 %102, 24
  %and188 = and i64 %shr187, 255
  %conv189 = trunc i64 %and188 to i8
  %103 = load i8*, i8** %digest.addr, align 8
  %arrayidx190 = getelementptr i8, i8* %103, i64 20
  store i8 %conv189, i8* %arrayidx190, align 1
  %104 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest191 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %104, i32 0, i32 1
  %arrayidx192 = getelementptr [8 x i64], [8 x i64]* %digest191, i32 0, i64 2
  %105 = load i64, i64* %arrayidx192, align 8
  %shr193 = lshr i64 %105, 16
  %and194 = and i64 %shr193, 255
  %conv195 = trunc i64 %and194 to i8
  %106 = load i8*, i8** %digest.addr, align 8
  %arrayidx196 = getelementptr i8, i8* %106, i64 21
  store i8 %conv195, i8* %arrayidx196, align 1
  %107 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest197 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %107, i32 0, i32 1
  %arrayidx198 = getelementptr [8 x i64], [8 x i64]* %digest197, i32 0, i64 2
  %108 = load i64, i64* %arrayidx198, align 8
  %shr199 = lshr i64 %108, 8
  %and200 = and i64 %shr199, 255
  %conv201 = trunc i64 %and200 to i8
  %109 = load i8*, i8** %digest.addr, align 8
  %arrayidx202 = getelementptr i8, i8* %109, i64 22
  store i8 %conv201, i8* %arrayidx202, align 1
  %110 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest203 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %110, i32 0, i32 1
  %arrayidx204 = getelementptr [8 x i64], [8 x i64]* %digest203, i32 0, i64 2
  %111 = load i64, i64* %arrayidx204, align 8
  %and205 = and i64 %111, 255
  %conv206 = trunc i64 %and205 to i8
  %112 = load i8*, i8** %digest.addr, align 8
  %arrayidx207 = getelementptr i8, i8* %112, i64 23
  store i8 %conv206, i8* %arrayidx207, align 1
  %113 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest208 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %113, i32 0, i32 1
  %arrayidx209 = getelementptr [8 x i64], [8 x i64]* %digest208, i32 0, i64 3
  %114 = load i64, i64* %arrayidx209, align 8
  %shr210 = lshr i64 %114, 56
  %and211 = and i64 %shr210, 255
  %conv212 = trunc i64 %and211 to i8
  %115 = load i8*, i8** %digest.addr, align 8
  %arrayidx213 = getelementptr i8, i8* %115, i64 24
  store i8 %conv212, i8* %arrayidx213, align 1
  %116 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest214 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %116, i32 0, i32 1
  %arrayidx215 = getelementptr [8 x i64], [8 x i64]* %digest214, i32 0, i64 3
  %117 = load i64, i64* %arrayidx215, align 8
  %shr216 = lshr i64 %117, 48
  %and217 = and i64 %shr216, 255
  %conv218 = trunc i64 %and217 to i8
  %118 = load i8*, i8** %digest.addr, align 8
  %arrayidx219 = getelementptr i8, i8* %118, i64 25
  store i8 %conv218, i8* %arrayidx219, align 1
  %119 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest220 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %119, i32 0, i32 1
  %arrayidx221 = getelementptr [8 x i64], [8 x i64]* %digest220, i32 0, i64 3
  %120 = load i64, i64* %arrayidx221, align 8
  %shr222 = lshr i64 %120, 40
  %and223 = and i64 %shr222, 255
  %conv224 = trunc i64 %and223 to i8
  %121 = load i8*, i8** %digest.addr, align 8
  %arrayidx225 = getelementptr i8, i8* %121, i64 26
  store i8 %conv224, i8* %arrayidx225, align 1
  %122 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest226 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %122, i32 0, i32 1
  %arrayidx227 = getelementptr [8 x i64], [8 x i64]* %digest226, i32 0, i64 3
  %123 = load i64, i64* %arrayidx227, align 8
  %shr228 = lshr i64 %123, 32
  %and229 = and i64 %shr228, 255
  %conv230 = trunc i64 %and229 to i8
  %124 = load i8*, i8** %digest.addr, align 8
  %arrayidx231 = getelementptr i8, i8* %124, i64 27
  store i8 %conv230, i8* %arrayidx231, align 1
  %125 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest232 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %125, i32 0, i32 1
  %arrayidx233 = getelementptr [8 x i64], [8 x i64]* %digest232, i32 0, i64 3
  %126 = load i64, i64* %arrayidx233, align 8
  %shr234 = lshr i64 %126, 24
  %and235 = and i64 %shr234, 255
  %conv236 = trunc i64 %and235 to i8
  %127 = load i8*, i8** %digest.addr, align 8
  %arrayidx237 = getelementptr i8, i8* %127, i64 28
  store i8 %conv236, i8* %arrayidx237, align 1
  %128 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest238 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %128, i32 0, i32 1
  %arrayidx239 = getelementptr [8 x i64], [8 x i64]* %digest238, i32 0, i64 3
  %129 = load i64, i64* %arrayidx239, align 8
  %shr240 = lshr i64 %129, 16
  %and241 = and i64 %shr240, 255
  %conv242 = trunc i64 %and241 to i8
  %130 = load i8*, i8** %digest.addr, align 8
  %arrayidx243 = getelementptr i8, i8* %130, i64 29
  store i8 %conv242, i8* %arrayidx243, align 1
  %131 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest244 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %131, i32 0, i32 1
  %arrayidx245 = getelementptr [8 x i64], [8 x i64]* %digest244, i32 0, i64 3
  %132 = load i64, i64* %arrayidx245, align 8
  %shr246 = lshr i64 %132, 8
  %and247 = and i64 %shr246, 255
  %conv248 = trunc i64 %and247 to i8
  %133 = load i8*, i8** %digest.addr, align 8
  %arrayidx249 = getelementptr i8, i8* %133, i64 30
  store i8 %conv248, i8* %arrayidx249, align 1
  %134 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest250 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %134, i32 0, i32 1
  %arrayidx251 = getelementptr [8 x i64], [8 x i64]* %digest250, i32 0, i64 3
  %135 = load i64, i64* %arrayidx251, align 8
  %and252 = and i64 %135, 255
  %conv253 = trunc i64 %and252 to i8
  %136 = load i8*, i8** %digest.addr, align 8
  %arrayidx254 = getelementptr i8, i8* %136, i64 31
  store i8 %conv253, i8* %arrayidx254, align 1
  %137 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest255 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %137, i32 0, i32 1
  %arrayidx256 = getelementptr [8 x i64], [8 x i64]* %digest255, i32 0, i64 4
  %138 = load i64, i64* %arrayidx256, align 8
  %shr257 = lshr i64 %138, 56
  %and258 = and i64 %shr257, 255
  %conv259 = trunc i64 %and258 to i8
  %139 = load i8*, i8** %digest.addr, align 8
  %arrayidx260 = getelementptr i8, i8* %139, i64 32
  store i8 %conv259, i8* %arrayidx260, align 1
  %140 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest261 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %140, i32 0, i32 1
  %arrayidx262 = getelementptr [8 x i64], [8 x i64]* %digest261, i32 0, i64 4
  %141 = load i64, i64* %arrayidx262, align 8
  %shr263 = lshr i64 %141, 48
  %and264 = and i64 %shr263, 255
  %conv265 = trunc i64 %and264 to i8
  %142 = load i8*, i8** %digest.addr, align 8
  %arrayidx266 = getelementptr i8, i8* %142, i64 33
  store i8 %conv265, i8* %arrayidx266, align 1
  %143 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest267 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %143, i32 0, i32 1
  %arrayidx268 = getelementptr [8 x i64], [8 x i64]* %digest267, i32 0, i64 4
  %144 = load i64, i64* %arrayidx268, align 8
  %shr269 = lshr i64 %144, 40
  %and270 = and i64 %shr269, 255
  %conv271 = trunc i64 %and270 to i8
  %145 = load i8*, i8** %digest.addr, align 8
  %arrayidx272 = getelementptr i8, i8* %145, i64 34
  store i8 %conv271, i8* %arrayidx272, align 1
  %146 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest273 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %146, i32 0, i32 1
  %arrayidx274 = getelementptr [8 x i64], [8 x i64]* %digest273, i32 0, i64 4
  %147 = load i64, i64* %arrayidx274, align 8
  %shr275 = lshr i64 %147, 32
  %and276 = and i64 %shr275, 255
  %conv277 = trunc i64 %and276 to i8
  %148 = load i8*, i8** %digest.addr, align 8
  %arrayidx278 = getelementptr i8, i8* %148, i64 35
  store i8 %conv277, i8* %arrayidx278, align 1
  %149 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest279 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %149, i32 0, i32 1
  %arrayidx280 = getelementptr [8 x i64], [8 x i64]* %digest279, i32 0, i64 4
  %150 = load i64, i64* %arrayidx280, align 8
  %shr281 = lshr i64 %150, 24
  %and282 = and i64 %shr281, 255
  %conv283 = trunc i64 %and282 to i8
  %151 = load i8*, i8** %digest.addr, align 8
  %arrayidx284 = getelementptr i8, i8* %151, i64 36
  store i8 %conv283, i8* %arrayidx284, align 1
  %152 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest285 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %152, i32 0, i32 1
  %arrayidx286 = getelementptr [8 x i64], [8 x i64]* %digest285, i32 0, i64 4
  %153 = load i64, i64* %arrayidx286, align 8
  %shr287 = lshr i64 %153, 16
  %and288 = and i64 %shr287, 255
  %conv289 = trunc i64 %and288 to i8
  %154 = load i8*, i8** %digest.addr, align 8
  %arrayidx290 = getelementptr i8, i8* %154, i64 37
  store i8 %conv289, i8* %arrayidx290, align 1
  %155 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest291 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %155, i32 0, i32 1
  %arrayidx292 = getelementptr [8 x i64], [8 x i64]* %digest291, i32 0, i64 4
  %156 = load i64, i64* %arrayidx292, align 8
  %shr293 = lshr i64 %156, 8
  %and294 = and i64 %shr293, 255
  %conv295 = trunc i64 %and294 to i8
  %157 = load i8*, i8** %digest.addr, align 8
  %arrayidx296 = getelementptr i8, i8* %157, i64 38
  store i8 %conv295, i8* %arrayidx296, align 1
  %158 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest297 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %158, i32 0, i32 1
  %arrayidx298 = getelementptr [8 x i64], [8 x i64]* %digest297, i32 0, i64 4
  %159 = load i64, i64* %arrayidx298, align 8
  %and299 = and i64 %159, 255
  %conv300 = trunc i64 %and299 to i8
  %160 = load i8*, i8** %digest.addr, align 8
  %arrayidx301 = getelementptr i8, i8* %160, i64 39
  store i8 %conv300, i8* %arrayidx301, align 1
  %161 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest302 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %161, i32 0, i32 1
  %arrayidx303 = getelementptr [8 x i64], [8 x i64]* %digest302, i32 0, i64 5
  %162 = load i64, i64* %arrayidx303, align 8
  %shr304 = lshr i64 %162, 56
  %and305 = and i64 %shr304, 255
  %conv306 = trunc i64 %and305 to i8
  %163 = load i8*, i8** %digest.addr, align 8
  %arrayidx307 = getelementptr i8, i8* %163, i64 40
  store i8 %conv306, i8* %arrayidx307, align 1
  %164 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest308 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %164, i32 0, i32 1
  %arrayidx309 = getelementptr [8 x i64], [8 x i64]* %digest308, i32 0, i64 5
  %165 = load i64, i64* %arrayidx309, align 8
  %shr310 = lshr i64 %165, 48
  %and311 = and i64 %shr310, 255
  %conv312 = trunc i64 %and311 to i8
  %166 = load i8*, i8** %digest.addr, align 8
  %arrayidx313 = getelementptr i8, i8* %166, i64 41
  store i8 %conv312, i8* %arrayidx313, align 1
  %167 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest314 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %167, i32 0, i32 1
  %arrayidx315 = getelementptr [8 x i64], [8 x i64]* %digest314, i32 0, i64 5
  %168 = load i64, i64* %arrayidx315, align 8
  %shr316 = lshr i64 %168, 40
  %and317 = and i64 %shr316, 255
  %conv318 = trunc i64 %and317 to i8
  %169 = load i8*, i8** %digest.addr, align 8
  %arrayidx319 = getelementptr i8, i8* %169, i64 42
  store i8 %conv318, i8* %arrayidx319, align 1
  %170 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest320 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %170, i32 0, i32 1
  %arrayidx321 = getelementptr [8 x i64], [8 x i64]* %digest320, i32 0, i64 5
  %171 = load i64, i64* %arrayidx321, align 8
  %shr322 = lshr i64 %171, 32
  %and323 = and i64 %shr322, 255
  %conv324 = trunc i64 %and323 to i8
  %172 = load i8*, i8** %digest.addr, align 8
  %arrayidx325 = getelementptr i8, i8* %172, i64 43
  store i8 %conv324, i8* %arrayidx325, align 1
  %173 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest326 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %173, i32 0, i32 1
  %arrayidx327 = getelementptr [8 x i64], [8 x i64]* %digest326, i32 0, i64 5
  %174 = load i64, i64* %arrayidx327, align 8
  %shr328 = lshr i64 %174, 24
  %and329 = and i64 %shr328, 255
  %conv330 = trunc i64 %and329 to i8
  %175 = load i8*, i8** %digest.addr, align 8
  %arrayidx331 = getelementptr i8, i8* %175, i64 44
  store i8 %conv330, i8* %arrayidx331, align 1
  %176 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest332 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %176, i32 0, i32 1
  %arrayidx333 = getelementptr [8 x i64], [8 x i64]* %digest332, i32 0, i64 5
  %177 = load i64, i64* %arrayidx333, align 8
  %shr334 = lshr i64 %177, 16
  %and335 = and i64 %shr334, 255
  %conv336 = trunc i64 %and335 to i8
  %178 = load i8*, i8** %digest.addr, align 8
  %arrayidx337 = getelementptr i8, i8* %178, i64 45
  store i8 %conv336, i8* %arrayidx337, align 1
  %179 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest338 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %179, i32 0, i32 1
  %arrayidx339 = getelementptr [8 x i64], [8 x i64]* %digest338, i32 0, i64 5
  %180 = load i64, i64* %arrayidx339, align 8
  %shr340 = lshr i64 %180, 8
  %and341 = and i64 %shr340, 255
  %conv342 = trunc i64 %and341 to i8
  %181 = load i8*, i8** %digest.addr, align 8
  %arrayidx343 = getelementptr i8, i8* %181, i64 46
  store i8 %conv342, i8* %arrayidx343, align 1
  %182 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest344 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %182, i32 0, i32 1
  %arrayidx345 = getelementptr [8 x i64], [8 x i64]* %digest344, i32 0, i64 5
  %183 = load i64, i64* %arrayidx345, align 8
  %and346 = and i64 %183, 255
  %conv347 = trunc i64 %and346 to i8
  %184 = load i8*, i8** %digest.addr, align 8
  %arrayidx348 = getelementptr i8, i8* %184, i64 47
  store i8 %conv347, i8* %arrayidx348, align 1
  %185 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest349 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %185, i32 0, i32 1
  %arrayidx350 = getelementptr [8 x i64], [8 x i64]* %digest349, i32 0, i64 6
  %186 = load i64, i64* %arrayidx350, align 8
  %shr351 = lshr i64 %186, 56
  %and352 = and i64 %shr351, 255
  %conv353 = trunc i64 %and352 to i8
  %187 = load i8*, i8** %digest.addr, align 8
  %arrayidx354 = getelementptr i8, i8* %187, i64 48
  store i8 %conv353, i8* %arrayidx354, align 1
  %188 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest355 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %188, i32 0, i32 1
  %arrayidx356 = getelementptr [8 x i64], [8 x i64]* %digest355, i32 0, i64 6
  %189 = load i64, i64* %arrayidx356, align 8
  %shr357 = lshr i64 %189, 48
  %and358 = and i64 %shr357, 255
  %conv359 = trunc i64 %and358 to i8
  %190 = load i8*, i8** %digest.addr, align 8
  %arrayidx360 = getelementptr i8, i8* %190, i64 49
  store i8 %conv359, i8* %arrayidx360, align 1
  %191 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest361 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %191, i32 0, i32 1
  %arrayidx362 = getelementptr [8 x i64], [8 x i64]* %digest361, i32 0, i64 6
  %192 = load i64, i64* %arrayidx362, align 8
  %shr363 = lshr i64 %192, 40
  %and364 = and i64 %shr363, 255
  %conv365 = trunc i64 %and364 to i8
  %193 = load i8*, i8** %digest.addr, align 8
  %arrayidx366 = getelementptr i8, i8* %193, i64 50
  store i8 %conv365, i8* %arrayidx366, align 1
  %194 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest367 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %194, i32 0, i32 1
  %arrayidx368 = getelementptr [8 x i64], [8 x i64]* %digest367, i32 0, i64 6
  %195 = load i64, i64* %arrayidx368, align 8
  %shr369 = lshr i64 %195, 32
  %and370 = and i64 %shr369, 255
  %conv371 = trunc i64 %and370 to i8
  %196 = load i8*, i8** %digest.addr, align 8
  %arrayidx372 = getelementptr i8, i8* %196, i64 51
  store i8 %conv371, i8* %arrayidx372, align 1
  %197 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest373 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %197, i32 0, i32 1
  %arrayidx374 = getelementptr [8 x i64], [8 x i64]* %digest373, i32 0, i64 6
  %198 = load i64, i64* %arrayidx374, align 8
  %shr375 = lshr i64 %198, 24
  %and376 = and i64 %shr375, 255
  %conv377 = trunc i64 %and376 to i8
  %199 = load i8*, i8** %digest.addr, align 8
  %arrayidx378 = getelementptr i8, i8* %199, i64 52
  store i8 %conv377, i8* %arrayidx378, align 1
  %200 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest379 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %200, i32 0, i32 1
  %arrayidx380 = getelementptr [8 x i64], [8 x i64]* %digest379, i32 0, i64 6
  %201 = load i64, i64* %arrayidx380, align 8
  %shr381 = lshr i64 %201, 16
  %and382 = and i64 %shr381, 255
  %conv383 = trunc i64 %and382 to i8
  %202 = load i8*, i8** %digest.addr, align 8
  %arrayidx384 = getelementptr i8, i8* %202, i64 53
  store i8 %conv383, i8* %arrayidx384, align 1
  %203 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest385 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %203, i32 0, i32 1
  %arrayidx386 = getelementptr [8 x i64], [8 x i64]* %digest385, i32 0, i64 6
  %204 = load i64, i64* %arrayidx386, align 8
  %shr387 = lshr i64 %204, 8
  %and388 = and i64 %shr387, 255
  %conv389 = trunc i64 %and388 to i8
  %205 = load i8*, i8** %digest.addr, align 8
  %arrayidx390 = getelementptr i8, i8* %205, i64 54
  store i8 %conv389, i8* %arrayidx390, align 1
  %206 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest391 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %206, i32 0, i32 1
  %arrayidx392 = getelementptr [8 x i64], [8 x i64]* %digest391, i32 0, i64 6
  %207 = load i64, i64* %arrayidx392, align 8
  %and393 = and i64 %207, 255
  %conv394 = trunc i64 %and393 to i8
  %208 = load i8*, i8** %digest.addr, align 8
  %arrayidx395 = getelementptr i8, i8* %208, i64 55
  store i8 %conv394, i8* %arrayidx395, align 1
  %209 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest396 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %209, i32 0, i32 1
  %arrayidx397 = getelementptr [8 x i64], [8 x i64]* %digest396, i32 0, i64 7
  %210 = load i64, i64* %arrayidx397, align 8
  %shr398 = lshr i64 %210, 56
  %and399 = and i64 %shr398, 255
  %conv400 = trunc i64 %and399 to i8
  %211 = load i8*, i8** %digest.addr, align 8
  %arrayidx401 = getelementptr i8, i8* %211, i64 56
  store i8 %conv400, i8* %arrayidx401, align 1
  %212 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest402 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %212, i32 0, i32 1
  %arrayidx403 = getelementptr [8 x i64], [8 x i64]* %digest402, i32 0, i64 7
  %213 = load i64, i64* %arrayidx403, align 8
  %shr404 = lshr i64 %213, 48
  %and405 = and i64 %shr404, 255
  %conv406 = trunc i64 %and405 to i8
  %214 = load i8*, i8** %digest.addr, align 8
  %arrayidx407 = getelementptr i8, i8* %214, i64 57
  store i8 %conv406, i8* %arrayidx407, align 1
  %215 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest408 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %215, i32 0, i32 1
  %arrayidx409 = getelementptr [8 x i64], [8 x i64]* %digest408, i32 0, i64 7
  %216 = load i64, i64* %arrayidx409, align 8
  %shr410 = lshr i64 %216, 40
  %and411 = and i64 %shr410, 255
  %conv412 = trunc i64 %and411 to i8
  %217 = load i8*, i8** %digest.addr, align 8
  %arrayidx413 = getelementptr i8, i8* %217, i64 58
  store i8 %conv412, i8* %arrayidx413, align 1
  %218 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest414 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %218, i32 0, i32 1
  %arrayidx415 = getelementptr [8 x i64], [8 x i64]* %digest414, i32 0, i64 7
  %219 = load i64, i64* %arrayidx415, align 8
  %shr416 = lshr i64 %219, 32
  %and417 = and i64 %shr416, 255
  %conv418 = trunc i64 %and417 to i8
  %220 = load i8*, i8** %digest.addr, align 8
  %arrayidx419 = getelementptr i8, i8* %220, i64 59
  store i8 %conv418, i8* %arrayidx419, align 1
  %221 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest420 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %221, i32 0, i32 1
  %arrayidx421 = getelementptr [8 x i64], [8 x i64]* %digest420, i32 0, i64 7
  %222 = load i64, i64* %arrayidx421, align 8
  %shr422 = lshr i64 %222, 24
  %and423 = and i64 %shr422, 255
  %conv424 = trunc i64 %and423 to i8
  %223 = load i8*, i8** %digest.addr, align 8
  %arrayidx425 = getelementptr i8, i8* %223, i64 60
  store i8 %conv424, i8* %arrayidx425, align 1
  %224 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest426 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %224, i32 0, i32 1
  %arrayidx427 = getelementptr [8 x i64], [8 x i64]* %digest426, i32 0, i64 7
  %225 = load i64, i64* %arrayidx427, align 8
  %shr428 = lshr i64 %225, 16
  %and429 = and i64 %shr428, 255
  %conv430 = trunc i64 %and429 to i8
  %226 = load i8*, i8** %digest.addr, align 8
  %arrayidx431 = getelementptr i8, i8* %226, i64 61
  store i8 %conv430, i8* %arrayidx431, align 1
  %227 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest432 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %227, i32 0, i32 1
  %arrayidx433 = getelementptr [8 x i64], [8 x i64]* %digest432, i32 0, i64 7
  %228 = load i64, i64* %arrayidx433, align 8
  %shr434 = lshr i64 %228, 8
  %and435 = and i64 %shr434, 255
  %conv436 = trunc i64 %and435 to i8
  %229 = load i8*, i8** %digest.addr, align 8
  %arrayidx437 = getelementptr i8, i8* %229, i64 62
  store i8 %conv436, i8* %arrayidx437, align 1
  %230 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest438 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %230, i32 0, i32 1
  %arrayidx439 = getelementptr [8 x i64], [8 x i64]* %digest438, i32 0, i64 7
  %231 = load i64, i64* %arrayidx439, align 8
  %and440 = and i64 %231, 255
  %conv441 = trunc i64 %and440 to i8
  %232 = load i8*, i8** %digest.addr, align 8
  %arrayidx442 = getelementptr i8, i8* %232, i64 63
  store i8 %conv441, i8* %arrayidx442, align 1
  ret void
}

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @sha512_transform(%struct.SHAobject* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHAobject*, align 8
  %i = alloca i32, align 4
  %S = alloca [8 x i64], align 16
  %W = alloca [80 x i64], align 16
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  store %struct.SHAobject* %sha_info, %struct.SHAobject** %sha_info.addr, align 8
  %0 = bitcast [80 x i64]* %W to i8*
  %1 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 4
  %2 = bitcast [128 x i8]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 128, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [80 x i64], [80 x i64]* %W, i32 0, i32 0
  call void @longReverse(i64* %arraydecay, i32 128)
  store i32 16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 80
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %sub = sub i32 %4, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %shr = lshr i64 %5, 19
  %6 = load i32, i32* %i, align 4
  %sub1 = sub i32 %6, 2
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom2
  %7 = load i64, i64* %arrayidx3, align 8
  %shl = shl i64 %7, 45
  %or = or i64 %shr, %shl
  %8 = load i32, i32* %i, align 4
  %sub4 = sub i32 %8, 2
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom5
  %9 = load i64, i64* %arrayidx6, align 8
  %shr7 = lshr i64 %9, 61
  %10 = load i32, i32* %i, align 4
  %sub8 = sub i32 %10, 2
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom9
  %11 = load i64, i64* %arrayidx10, align 8
  %shl11 = shl i64 %11, 3
  %or12 = or i64 %shr7, %shl11
  %xor = xor i64 %or, %or12
  %12 = load i32, i32* %i, align 4
  %sub13 = sub i32 %12, 2
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom14
  %13 = load i64, i64* %arrayidx15, align 8
  %shr16 = lshr i64 %13, 6
  %xor17 = xor i64 %xor, %shr16
  %14 = load i32, i32* %i, align 4
  %sub18 = sub i32 %14, 7
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom19
  %15 = load i64, i64* %arrayidx20, align 8
  %add = add i64 %xor17, %15
  %16 = load i32, i32* %i, align 4
  %sub21 = sub i32 %16, 15
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom22
  %17 = load i64, i64* %arrayidx23, align 8
  %shr24 = lshr i64 %17, 1
  %18 = load i32, i32* %i, align 4
  %sub25 = sub i32 %18, 15
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom26
  %19 = load i64, i64* %arrayidx27, align 8
  %shl28 = shl i64 %19, 63
  %or29 = or i64 %shr24, %shl28
  %20 = load i32, i32* %i, align 4
  %sub30 = sub i32 %20, 15
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom31
  %21 = load i64, i64* %arrayidx32, align 8
  %shr33 = lshr i64 %21, 8
  %22 = load i32, i32* %i, align 4
  %sub34 = sub i32 %22, 15
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom35
  %23 = load i64, i64* %arrayidx36, align 8
  %shl37 = shl i64 %23, 56
  %or38 = or i64 %shr33, %shl37
  %xor39 = xor i64 %or29, %or38
  %24 = load i32, i32* %i, align 4
  %sub40 = sub i32 %24, 15
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom41
  %25 = load i64, i64* %arrayidx42, align 8
  %shr43 = lshr i64 %25, 7
  %xor44 = xor i64 %xor39, %shr43
  %add45 = add i64 %add, %xor44
  %26 = load i32, i32* %i, align 4
  %sub46 = sub i32 %26, 16
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom47
  %27 = load i64, i64* %arrayidx48, align 8
  %add49 = add i64 %add45, %27
  %28 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 %idxprom50
  store i64 %add49, i64* %arrayidx51, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %for.end
  %30 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %30, 8
  br i1 %cmp53, label %for.body.54, label %for.end.61

for.body.54:                                      ; preds = %for.cond.52
  %31 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %31 to i64
  %32 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %32, i32 0, i32 1
  %arrayidx56 = getelementptr [8 x i64], [8 x i64]* %digest, i32 0, i64 %idxprom55
  %33 = load i64, i64* %arrayidx56, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %34 to i64
  %arrayidx58 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 %idxprom57
  store i64 %33, i64* %arrayidx58, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.54
  %35 = load i32, i32* %i, align 4
  %inc60 = add i32 %35, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  %arrayidx62 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %36 = load i64, i64* %arrayidx62, align 8
  %arrayidx63 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %37 = load i64, i64* %arrayidx63, align 8
  %shr64 = lshr i64 %37, 14
  %arrayidx65 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %38 = load i64, i64* %arrayidx65, align 8
  %shl66 = shl i64 %38, 50
  %or67 = or i64 %shr64, %shl66
  %arrayidx68 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %39 = load i64, i64* %arrayidx68, align 8
  %shr69 = lshr i64 %39, 18
  %arrayidx70 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %40 = load i64, i64* %arrayidx70, align 8
  %shl71 = shl i64 %40, 46
  %or72 = or i64 %shr69, %shl71
  %xor73 = xor i64 %or67, %or72
  %arrayidx74 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %41 = load i64, i64* %arrayidx74, align 8
  %shr75 = lshr i64 %41, 41
  %arrayidx76 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %42 = load i64, i64* %arrayidx76, align 8
  %shl77 = shl i64 %42, 23
  %or78 = or i64 %shr75, %shl77
  %xor79 = xor i64 %xor73, %or78
  %add80 = add i64 %36, %xor79
  %arrayidx81 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %43 = load i64, i64* %arrayidx81, align 8
  %arrayidx82 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %44 = load i64, i64* %arrayidx82, align 8
  %arrayidx83 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %45 = load i64, i64* %arrayidx83, align 8
  %arrayidx84 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %46 = load i64, i64* %arrayidx84, align 8
  %xor85 = xor i64 %45, %46
  %and = and i64 %44, %xor85
  %xor86 = xor i64 %43, %and
  %add87 = add i64 %add80, %xor86
  %add88 = add i64 %add87, 4794697086780616226
  %arrayidx89 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 0
  %47 = load i64, i64* %arrayidx89, align 8
  %add90 = add i64 %add88, %47
  store i64 %add90, i64* %t0, align 8
  %arrayidx91 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %48 = load i64, i64* %arrayidx91, align 8
  %shr92 = lshr i64 %48, 28
  %arrayidx93 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %49 = load i64, i64* %arrayidx93, align 8
  %shl94 = shl i64 %49, 36
  %or95 = or i64 %shr92, %shl94
  %arrayidx96 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %50 = load i64, i64* %arrayidx96, align 8
  %shr97 = lshr i64 %50, 34
  %arrayidx98 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %51 = load i64, i64* %arrayidx98, align 8
  %shl99 = shl i64 %51, 30
  %or100 = or i64 %shr97, %shl99
  %xor101 = xor i64 %or95, %or100
  %arrayidx102 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %52 = load i64, i64* %arrayidx102, align 8
  %shr103 = lshr i64 %52, 39
  %arrayidx104 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %53 = load i64, i64* %arrayidx104, align 8
  %shl105 = shl i64 %53, 25
  %or106 = or i64 %shr103, %shl105
  %xor107 = xor i64 %xor101, %or106
  %arrayidx108 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %54 = load i64, i64* %arrayidx108, align 8
  %arrayidx109 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %55 = load i64, i64* %arrayidx109, align 8
  %or110 = or i64 %54, %55
  %arrayidx111 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %56 = load i64, i64* %arrayidx111, align 8
  %and112 = and i64 %or110, %56
  %arrayidx113 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %57 = load i64, i64* %arrayidx113, align 8
  %arrayidx114 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %58 = load i64, i64* %arrayidx114, align 8
  %and115 = and i64 %57, %58
  %or116 = or i64 %and112, %and115
  %add117 = add i64 %xor107, %or116
  store i64 %add117, i64* %t1, align 8
  %59 = load i64, i64* %t0, align 8
  %arrayidx118 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %60 = load i64, i64* %arrayidx118, align 8
  %add119 = add i64 %60, %59
  store i64 %add119, i64* %arrayidx118, align 8
  %61 = load i64, i64* %t0, align 8
  %62 = load i64, i64* %t1, align 8
  %add120 = add i64 %61, %62
  %arrayidx121 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add120, i64* %arrayidx121, align 8
  %arrayidx122 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %63 = load i64, i64* %arrayidx122, align 8
  %arrayidx123 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %64 = load i64, i64* %arrayidx123, align 8
  %shr124 = lshr i64 %64, 14
  %arrayidx125 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %65 = load i64, i64* %arrayidx125, align 8
  %shl126 = shl i64 %65, 50
  %or127 = or i64 %shr124, %shl126
  %arrayidx128 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %66 = load i64, i64* %arrayidx128, align 8
  %shr129 = lshr i64 %66, 18
  %arrayidx130 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %67 = load i64, i64* %arrayidx130, align 8
  %shl131 = shl i64 %67, 46
  %or132 = or i64 %shr129, %shl131
  %xor133 = xor i64 %or127, %or132
  %arrayidx134 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %68 = load i64, i64* %arrayidx134, align 8
  %shr135 = lshr i64 %68, 41
  %arrayidx136 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %69 = load i64, i64* %arrayidx136, align 8
  %shl137 = shl i64 %69, 23
  %or138 = or i64 %shr135, %shl137
  %xor139 = xor i64 %xor133, %or138
  %add140 = add i64 %63, %xor139
  %arrayidx141 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %70 = load i64, i64* %arrayidx141, align 8
  %arrayidx142 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %71 = load i64, i64* %arrayidx142, align 8
  %arrayidx143 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %72 = load i64, i64* %arrayidx143, align 8
  %arrayidx144 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %73 = load i64, i64* %arrayidx144, align 8
  %xor145 = xor i64 %72, %73
  %and146 = and i64 %71, %xor145
  %xor147 = xor i64 %70, %and146
  %add148 = add i64 %add140, %xor147
  %add149 = add i64 %add148, 8158064640168781261
  %arrayidx150 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 1
  %74 = load i64, i64* %arrayidx150, align 8
  %add151 = add i64 %add149, %74
  store i64 %add151, i64* %t0, align 8
  %arrayidx152 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %75 = load i64, i64* %arrayidx152, align 8
  %shr153 = lshr i64 %75, 28
  %arrayidx154 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %76 = load i64, i64* %arrayidx154, align 8
  %shl155 = shl i64 %76, 36
  %or156 = or i64 %shr153, %shl155
  %arrayidx157 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %77 = load i64, i64* %arrayidx157, align 8
  %shr158 = lshr i64 %77, 34
  %arrayidx159 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %78 = load i64, i64* %arrayidx159, align 8
  %shl160 = shl i64 %78, 30
  %or161 = or i64 %shr158, %shl160
  %xor162 = xor i64 %or156, %or161
  %arrayidx163 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %79 = load i64, i64* %arrayidx163, align 8
  %shr164 = lshr i64 %79, 39
  %arrayidx165 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %80 = load i64, i64* %arrayidx165, align 8
  %shl166 = shl i64 %80, 25
  %or167 = or i64 %shr164, %shl166
  %xor168 = xor i64 %xor162, %or167
  %arrayidx169 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %81 = load i64, i64* %arrayidx169, align 8
  %arrayidx170 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %82 = load i64, i64* %arrayidx170, align 8
  %or171 = or i64 %81, %82
  %arrayidx172 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %83 = load i64, i64* %arrayidx172, align 8
  %and173 = and i64 %or171, %83
  %arrayidx174 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %84 = load i64, i64* %arrayidx174, align 8
  %arrayidx175 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %85 = load i64, i64* %arrayidx175, align 8
  %and176 = and i64 %84, %85
  %or177 = or i64 %and173, %and176
  %add178 = add i64 %xor168, %or177
  store i64 %add178, i64* %t1, align 8
  %86 = load i64, i64* %t0, align 8
  %arrayidx179 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %87 = load i64, i64* %arrayidx179, align 8
  %add180 = add i64 %87, %86
  store i64 %add180, i64* %arrayidx179, align 8
  %88 = load i64, i64* %t0, align 8
  %89 = load i64, i64* %t1, align 8
  %add181 = add i64 %88, %89
  %arrayidx182 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add181, i64* %arrayidx182, align 8
  %arrayidx183 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %90 = load i64, i64* %arrayidx183, align 8
  %arrayidx184 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %91 = load i64, i64* %arrayidx184, align 8
  %shr185 = lshr i64 %91, 14
  %arrayidx186 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %92 = load i64, i64* %arrayidx186, align 8
  %shl187 = shl i64 %92, 50
  %or188 = or i64 %shr185, %shl187
  %arrayidx189 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %93 = load i64, i64* %arrayidx189, align 8
  %shr190 = lshr i64 %93, 18
  %arrayidx191 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %94 = load i64, i64* %arrayidx191, align 8
  %shl192 = shl i64 %94, 46
  %or193 = or i64 %shr190, %shl192
  %xor194 = xor i64 %or188, %or193
  %arrayidx195 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %95 = load i64, i64* %arrayidx195, align 8
  %shr196 = lshr i64 %95, 41
  %arrayidx197 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %96 = load i64, i64* %arrayidx197, align 8
  %shl198 = shl i64 %96, 23
  %or199 = or i64 %shr196, %shl198
  %xor200 = xor i64 %xor194, %or199
  %add201 = add i64 %90, %xor200
  %arrayidx202 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %97 = load i64, i64* %arrayidx202, align 8
  %arrayidx203 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %98 = load i64, i64* %arrayidx203, align 8
  %arrayidx204 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %99 = load i64, i64* %arrayidx204, align 8
  %arrayidx205 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %100 = load i64, i64* %arrayidx205, align 8
  %xor206 = xor i64 %99, %100
  %and207 = and i64 %98, %xor206
  %xor208 = xor i64 %97, %and207
  %add209 = add i64 %add201, %xor208
  %add210 = add i64 %add209, -5349999486874862801
  %arrayidx211 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 2
  %101 = load i64, i64* %arrayidx211, align 8
  %add212 = add i64 %add210, %101
  store i64 %add212, i64* %t0, align 8
  %arrayidx213 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %102 = load i64, i64* %arrayidx213, align 8
  %shr214 = lshr i64 %102, 28
  %arrayidx215 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %103 = load i64, i64* %arrayidx215, align 8
  %shl216 = shl i64 %103, 36
  %or217 = or i64 %shr214, %shl216
  %arrayidx218 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %104 = load i64, i64* %arrayidx218, align 8
  %shr219 = lshr i64 %104, 34
  %arrayidx220 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %105 = load i64, i64* %arrayidx220, align 8
  %shl221 = shl i64 %105, 30
  %or222 = or i64 %shr219, %shl221
  %xor223 = xor i64 %or217, %or222
  %arrayidx224 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %106 = load i64, i64* %arrayidx224, align 8
  %shr225 = lshr i64 %106, 39
  %arrayidx226 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %107 = load i64, i64* %arrayidx226, align 8
  %shl227 = shl i64 %107, 25
  %or228 = or i64 %shr225, %shl227
  %xor229 = xor i64 %xor223, %or228
  %arrayidx230 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %108 = load i64, i64* %arrayidx230, align 8
  %arrayidx231 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %109 = load i64, i64* %arrayidx231, align 8
  %or232 = or i64 %108, %109
  %arrayidx233 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %110 = load i64, i64* %arrayidx233, align 8
  %and234 = and i64 %or232, %110
  %arrayidx235 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %111 = load i64, i64* %arrayidx235, align 8
  %arrayidx236 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %112 = load i64, i64* %arrayidx236, align 8
  %and237 = and i64 %111, %112
  %or238 = or i64 %and234, %and237
  %add239 = add i64 %xor229, %or238
  store i64 %add239, i64* %t1, align 8
  %113 = load i64, i64* %t0, align 8
  %arrayidx240 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %114 = load i64, i64* %arrayidx240, align 8
  %add241 = add i64 %114, %113
  store i64 %add241, i64* %arrayidx240, align 8
  %115 = load i64, i64* %t0, align 8
  %116 = load i64, i64* %t1, align 8
  %add242 = add i64 %115, %116
  %arrayidx243 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add242, i64* %arrayidx243, align 8
  %arrayidx244 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %117 = load i64, i64* %arrayidx244, align 8
  %arrayidx245 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %118 = load i64, i64* %arrayidx245, align 8
  %shr246 = lshr i64 %118, 14
  %arrayidx247 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %119 = load i64, i64* %arrayidx247, align 8
  %shl248 = shl i64 %119, 50
  %or249 = or i64 %shr246, %shl248
  %arrayidx250 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %120 = load i64, i64* %arrayidx250, align 8
  %shr251 = lshr i64 %120, 18
  %arrayidx252 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %121 = load i64, i64* %arrayidx252, align 8
  %shl253 = shl i64 %121, 46
  %or254 = or i64 %shr251, %shl253
  %xor255 = xor i64 %or249, %or254
  %arrayidx256 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %122 = load i64, i64* %arrayidx256, align 8
  %shr257 = lshr i64 %122, 41
  %arrayidx258 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %123 = load i64, i64* %arrayidx258, align 8
  %shl259 = shl i64 %123, 23
  %or260 = or i64 %shr257, %shl259
  %xor261 = xor i64 %xor255, %or260
  %add262 = add i64 %117, %xor261
  %arrayidx263 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %124 = load i64, i64* %arrayidx263, align 8
  %arrayidx264 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %125 = load i64, i64* %arrayidx264, align 8
  %arrayidx265 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %126 = load i64, i64* %arrayidx265, align 8
  %arrayidx266 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %127 = load i64, i64* %arrayidx266, align 8
  %xor267 = xor i64 %126, %127
  %and268 = and i64 %125, %xor267
  %xor269 = xor i64 %124, %and268
  %add270 = add i64 %add262, %xor269
  %add271 = add i64 %add270, -1606136188198331460
  %arrayidx272 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 3
  %128 = load i64, i64* %arrayidx272, align 8
  %add273 = add i64 %add271, %128
  store i64 %add273, i64* %t0, align 8
  %arrayidx274 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %129 = load i64, i64* %arrayidx274, align 8
  %shr275 = lshr i64 %129, 28
  %arrayidx276 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %130 = load i64, i64* %arrayidx276, align 8
  %shl277 = shl i64 %130, 36
  %or278 = or i64 %shr275, %shl277
  %arrayidx279 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %131 = load i64, i64* %arrayidx279, align 8
  %shr280 = lshr i64 %131, 34
  %arrayidx281 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %132 = load i64, i64* %arrayidx281, align 8
  %shl282 = shl i64 %132, 30
  %or283 = or i64 %shr280, %shl282
  %xor284 = xor i64 %or278, %or283
  %arrayidx285 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %133 = load i64, i64* %arrayidx285, align 8
  %shr286 = lshr i64 %133, 39
  %arrayidx287 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %134 = load i64, i64* %arrayidx287, align 8
  %shl288 = shl i64 %134, 25
  %or289 = or i64 %shr286, %shl288
  %xor290 = xor i64 %xor284, %or289
  %arrayidx291 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %135 = load i64, i64* %arrayidx291, align 8
  %arrayidx292 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %136 = load i64, i64* %arrayidx292, align 8
  %or293 = or i64 %135, %136
  %arrayidx294 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %137 = load i64, i64* %arrayidx294, align 8
  %and295 = and i64 %or293, %137
  %arrayidx296 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %138 = load i64, i64* %arrayidx296, align 8
  %arrayidx297 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %139 = load i64, i64* %arrayidx297, align 8
  %and298 = and i64 %138, %139
  %or299 = or i64 %and295, %and298
  %add300 = add i64 %xor290, %or299
  store i64 %add300, i64* %t1, align 8
  %140 = load i64, i64* %t0, align 8
  %arrayidx301 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %141 = load i64, i64* %arrayidx301, align 8
  %add302 = add i64 %141, %140
  store i64 %add302, i64* %arrayidx301, align 8
  %142 = load i64, i64* %t0, align 8
  %143 = load i64, i64* %t1, align 8
  %add303 = add i64 %142, %143
  %arrayidx304 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add303, i64* %arrayidx304, align 8
  %arrayidx305 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %144 = load i64, i64* %arrayidx305, align 8
  %arrayidx306 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %145 = load i64, i64* %arrayidx306, align 8
  %shr307 = lshr i64 %145, 14
  %arrayidx308 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %146 = load i64, i64* %arrayidx308, align 8
  %shl309 = shl i64 %146, 50
  %or310 = or i64 %shr307, %shl309
  %arrayidx311 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %147 = load i64, i64* %arrayidx311, align 8
  %shr312 = lshr i64 %147, 18
  %arrayidx313 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %148 = load i64, i64* %arrayidx313, align 8
  %shl314 = shl i64 %148, 46
  %or315 = or i64 %shr312, %shl314
  %xor316 = xor i64 %or310, %or315
  %arrayidx317 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %149 = load i64, i64* %arrayidx317, align 8
  %shr318 = lshr i64 %149, 41
  %arrayidx319 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %150 = load i64, i64* %arrayidx319, align 8
  %shl320 = shl i64 %150, 23
  %or321 = or i64 %shr318, %shl320
  %xor322 = xor i64 %xor316, %or321
  %add323 = add i64 %144, %xor322
  %arrayidx324 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %151 = load i64, i64* %arrayidx324, align 8
  %arrayidx325 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %152 = load i64, i64* %arrayidx325, align 8
  %arrayidx326 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %153 = load i64, i64* %arrayidx326, align 8
  %arrayidx327 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %154 = load i64, i64* %arrayidx327, align 8
  %xor328 = xor i64 %153, %154
  %and329 = and i64 %152, %xor328
  %xor330 = xor i64 %151, %and329
  %add331 = add i64 %add323, %xor330
  %add332 = add i64 %add331, 4131703408338449720
  %arrayidx333 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 4
  %155 = load i64, i64* %arrayidx333, align 8
  %add334 = add i64 %add332, %155
  store i64 %add334, i64* %t0, align 8
  %arrayidx335 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %156 = load i64, i64* %arrayidx335, align 8
  %shr336 = lshr i64 %156, 28
  %arrayidx337 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %157 = load i64, i64* %arrayidx337, align 8
  %shl338 = shl i64 %157, 36
  %or339 = or i64 %shr336, %shl338
  %arrayidx340 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %158 = load i64, i64* %arrayidx340, align 8
  %shr341 = lshr i64 %158, 34
  %arrayidx342 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %159 = load i64, i64* %arrayidx342, align 8
  %shl343 = shl i64 %159, 30
  %or344 = or i64 %shr341, %shl343
  %xor345 = xor i64 %or339, %or344
  %arrayidx346 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %160 = load i64, i64* %arrayidx346, align 8
  %shr347 = lshr i64 %160, 39
  %arrayidx348 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %161 = load i64, i64* %arrayidx348, align 8
  %shl349 = shl i64 %161, 25
  %or350 = or i64 %shr347, %shl349
  %xor351 = xor i64 %xor345, %or350
  %arrayidx352 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %162 = load i64, i64* %arrayidx352, align 8
  %arrayidx353 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %163 = load i64, i64* %arrayidx353, align 8
  %or354 = or i64 %162, %163
  %arrayidx355 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %164 = load i64, i64* %arrayidx355, align 8
  %and356 = and i64 %or354, %164
  %arrayidx357 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %165 = load i64, i64* %arrayidx357, align 8
  %arrayidx358 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %166 = load i64, i64* %arrayidx358, align 8
  %and359 = and i64 %165, %166
  %or360 = or i64 %and356, %and359
  %add361 = add i64 %xor351, %or360
  store i64 %add361, i64* %t1, align 8
  %167 = load i64, i64* %t0, align 8
  %arrayidx362 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %168 = load i64, i64* %arrayidx362, align 8
  %add363 = add i64 %168, %167
  store i64 %add363, i64* %arrayidx362, align 8
  %169 = load i64, i64* %t0, align 8
  %170 = load i64, i64* %t1, align 8
  %add364 = add i64 %169, %170
  %arrayidx365 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add364, i64* %arrayidx365, align 8
  %arrayidx366 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %171 = load i64, i64* %arrayidx366, align 8
  %arrayidx367 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %172 = load i64, i64* %arrayidx367, align 8
  %shr368 = lshr i64 %172, 14
  %arrayidx369 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %173 = load i64, i64* %arrayidx369, align 8
  %shl370 = shl i64 %173, 50
  %or371 = or i64 %shr368, %shl370
  %arrayidx372 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %174 = load i64, i64* %arrayidx372, align 8
  %shr373 = lshr i64 %174, 18
  %arrayidx374 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %175 = load i64, i64* %arrayidx374, align 8
  %shl375 = shl i64 %175, 46
  %or376 = or i64 %shr373, %shl375
  %xor377 = xor i64 %or371, %or376
  %arrayidx378 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %176 = load i64, i64* %arrayidx378, align 8
  %shr379 = lshr i64 %176, 41
  %arrayidx380 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %177 = load i64, i64* %arrayidx380, align 8
  %shl381 = shl i64 %177, 23
  %or382 = or i64 %shr379, %shl381
  %xor383 = xor i64 %xor377, %or382
  %add384 = add i64 %171, %xor383
  %arrayidx385 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %178 = load i64, i64* %arrayidx385, align 8
  %arrayidx386 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %179 = load i64, i64* %arrayidx386, align 8
  %arrayidx387 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %180 = load i64, i64* %arrayidx387, align 8
  %arrayidx388 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %181 = load i64, i64* %arrayidx388, align 8
  %xor389 = xor i64 %180, %181
  %and390 = and i64 %179, %xor389
  %xor391 = xor i64 %178, %and390
  %add392 = add i64 %add384, %xor391
  %add393 = add i64 %add392, 6480981068601479193
  %arrayidx394 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 5
  %182 = load i64, i64* %arrayidx394, align 8
  %add395 = add i64 %add393, %182
  store i64 %add395, i64* %t0, align 8
  %arrayidx396 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %183 = load i64, i64* %arrayidx396, align 8
  %shr397 = lshr i64 %183, 28
  %arrayidx398 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %184 = load i64, i64* %arrayidx398, align 8
  %shl399 = shl i64 %184, 36
  %or400 = or i64 %shr397, %shl399
  %arrayidx401 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %185 = load i64, i64* %arrayidx401, align 8
  %shr402 = lshr i64 %185, 34
  %arrayidx403 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %186 = load i64, i64* %arrayidx403, align 8
  %shl404 = shl i64 %186, 30
  %or405 = or i64 %shr402, %shl404
  %xor406 = xor i64 %or400, %or405
  %arrayidx407 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %187 = load i64, i64* %arrayidx407, align 8
  %shr408 = lshr i64 %187, 39
  %arrayidx409 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %188 = load i64, i64* %arrayidx409, align 8
  %shl410 = shl i64 %188, 25
  %or411 = or i64 %shr408, %shl410
  %xor412 = xor i64 %xor406, %or411
  %arrayidx413 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %189 = load i64, i64* %arrayidx413, align 8
  %arrayidx414 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %190 = load i64, i64* %arrayidx414, align 8
  %or415 = or i64 %189, %190
  %arrayidx416 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %191 = load i64, i64* %arrayidx416, align 8
  %and417 = and i64 %or415, %191
  %arrayidx418 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %192 = load i64, i64* %arrayidx418, align 8
  %arrayidx419 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %193 = load i64, i64* %arrayidx419, align 8
  %and420 = and i64 %192, %193
  %or421 = or i64 %and417, %and420
  %add422 = add i64 %xor412, %or421
  store i64 %add422, i64* %t1, align 8
  %194 = load i64, i64* %t0, align 8
  %arrayidx423 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %195 = load i64, i64* %arrayidx423, align 8
  %add424 = add i64 %195, %194
  store i64 %add424, i64* %arrayidx423, align 8
  %196 = load i64, i64* %t0, align 8
  %197 = load i64, i64* %t1, align 8
  %add425 = add i64 %196, %197
  %arrayidx426 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add425, i64* %arrayidx426, align 8
  %arrayidx427 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %198 = load i64, i64* %arrayidx427, align 8
  %arrayidx428 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %199 = load i64, i64* %arrayidx428, align 8
  %shr429 = lshr i64 %199, 14
  %arrayidx430 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %200 = load i64, i64* %arrayidx430, align 8
  %shl431 = shl i64 %200, 50
  %or432 = or i64 %shr429, %shl431
  %arrayidx433 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %201 = load i64, i64* %arrayidx433, align 8
  %shr434 = lshr i64 %201, 18
  %arrayidx435 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %202 = load i64, i64* %arrayidx435, align 8
  %shl436 = shl i64 %202, 46
  %or437 = or i64 %shr434, %shl436
  %xor438 = xor i64 %or432, %or437
  %arrayidx439 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %203 = load i64, i64* %arrayidx439, align 8
  %shr440 = lshr i64 %203, 41
  %arrayidx441 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %204 = load i64, i64* %arrayidx441, align 8
  %shl442 = shl i64 %204, 23
  %or443 = or i64 %shr440, %shl442
  %xor444 = xor i64 %xor438, %or443
  %add445 = add i64 %198, %xor444
  %arrayidx446 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %205 = load i64, i64* %arrayidx446, align 8
  %arrayidx447 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %206 = load i64, i64* %arrayidx447, align 8
  %arrayidx448 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %207 = load i64, i64* %arrayidx448, align 8
  %arrayidx449 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %208 = load i64, i64* %arrayidx449, align 8
  %xor450 = xor i64 %207, %208
  %and451 = and i64 %206, %xor450
  %xor452 = xor i64 %205, %and451
  %add453 = add i64 %add445, %xor452
  %add454 = add i64 %add453, -7908458776815382629
  %arrayidx455 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 6
  %209 = load i64, i64* %arrayidx455, align 8
  %add456 = add i64 %add454, %209
  store i64 %add456, i64* %t0, align 8
  %arrayidx457 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %210 = load i64, i64* %arrayidx457, align 8
  %shr458 = lshr i64 %210, 28
  %arrayidx459 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %211 = load i64, i64* %arrayidx459, align 8
  %shl460 = shl i64 %211, 36
  %or461 = or i64 %shr458, %shl460
  %arrayidx462 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %212 = load i64, i64* %arrayidx462, align 8
  %shr463 = lshr i64 %212, 34
  %arrayidx464 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %213 = load i64, i64* %arrayidx464, align 8
  %shl465 = shl i64 %213, 30
  %or466 = or i64 %shr463, %shl465
  %xor467 = xor i64 %or461, %or466
  %arrayidx468 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %214 = load i64, i64* %arrayidx468, align 8
  %shr469 = lshr i64 %214, 39
  %arrayidx470 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %215 = load i64, i64* %arrayidx470, align 8
  %shl471 = shl i64 %215, 25
  %or472 = or i64 %shr469, %shl471
  %xor473 = xor i64 %xor467, %or472
  %arrayidx474 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %216 = load i64, i64* %arrayidx474, align 8
  %arrayidx475 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %217 = load i64, i64* %arrayidx475, align 8
  %or476 = or i64 %216, %217
  %arrayidx477 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %218 = load i64, i64* %arrayidx477, align 8
  %and478 = and i64 %or476, %218
  %arrayidx479 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %219 = load i64, i64* %arrayidx479, align 8
  %arrayidx480 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %220 = load i64, i64* %arrayidx480, align 8
  %and481 = and i64 %219, %220
  %or482 = or i64 %and478, %and481
  %add483 = add i64 %xor473, %or482
  store i64 %add483, i64* %t1, align 8
  %221 = load i64, i64* %t0, align 8
  %arrayidx484 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %222 = load i64, i64* %arrayidx484, align 8
  %add485 = add i64 %222, %221
  store i64 %add485, i64* %arrayidx484, align 8
  %223 = load i64, i64* %t0, align 8
  %224 = load i64, i64* %t1, align 8
  %add486 = add i64 %223, %224
  %arrayidx487 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add486, i64* %arrayidx487, align 8
  %arrayidx488 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %225 = load i64, i64* %arrayidx488, align 8
  %arrayidx489 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %226 = load i64, i64* %arrayidx489, align 8
  %shr490 = lshr i64 %226, 14
  %arrayidx491 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %227 = load i64, i64* %arrayidx491, align 8
  %shl492 = shl i64 %227, 50
  %or493 = or i64 %shr490, %shl492
  %arrayidx494 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %228 = load i64, i64* %arrayidx494, align 8
  %shr495 = lshr i64 %228, 18
  %arrayidx496 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %229 = load i64, i64* %arrayidx496, align 8
  %shl497 = shl i64 %229, 46
  %or498 = or i64 %shr495, %shl497
  %xor499 = xor i64 %or493, %or498
  %arrayidx500 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %230 = load i64, i64* %arrayidx500, align 8
  %shr501 = lshr i64 %230, 41
  %arrayidx502 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %231 = load i64, i64* %arrayidx502, align 8
  %shl503 = shl i64 %231, 23
  %or504 = or i64 %shr501, %shl503
  %xor505 = xor i64 %xor499, %or504
  %add506 = add i64 %225, %xor505
  %arrayidx507 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %232 = load i64, i64* %arrayidx507, align 8
  %arrayidx508 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %233 = load i64, i64* %arrayidx508, align 8
  %arrayidx509 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %234 = load i64, i64* %arrayidx509, align 8
  %arrayidx510 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %235 = load i64, i64* %arrayidx510, align 8
  %xor511 = xor i64 %234, %235
  %and512 = and i64 %233, %xor511
  %xor513 = xor i64 %232, %and512
  %add514 = add i64 %add506, %xor513
  %add515 = add i64 %add514, -6116909921290321640
  %arrayidx516 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 7
  %236 = load i64, i64* %arrayidx516, align 8
  %add517 = add i64 %add515, %236
  store i64 %add517, i64* %t0, align 8
  %arrayidx518 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %237 = load i64, i64* %arrayidx518, align 8
  %shr519 = lshr i64 %237, 28
  %arrayidx520 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %238 = load i64, i64* %arrayidx520, align 8
  %shl521 = shl i64 %238, 36
  %or522 = or i64 %shr519, %shl521
  %arrayidx523 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %239 = load i64, i64* %arrayidx523, align 8
  %shr524 = lshr i64 %239, 34
  %arrayidx525 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %240 = load i64, i64* %arrayidx525, align 8
  %shl526 = shl i64 %240, 30
  %or527 = or i64 %shr524, %shl526
  %xor528 = xor i64 %or522, %or527
  %arrayidx529 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %241 = load i64, i64* %arrayidx529, align 8
  %shr530 = lshr i64 %241, 39
  %arrayidx531 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %242 = load i64, i64* %arrayidx531, align 8
  %shl532 = shl i64 %242, 25
  %or533 = or i64 %shr530, %shl532
  %xor534 = xor i64 %xor528, %or533
  %arrayidx535 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %243 = load i64, i64* %arrayidx535, align 8
  %arrayidx536 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %244 = load i64, i64* %arrayidx536, align 8
  %or537 = or i64 %243, %244
  %arrayidx538 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %245 = load i64, i64* %arrayidx538, align 8
  %and539 = and i64 %or537, %245
  %arrayidx540 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %246 = load i64, i64* %arrayidx540, align 8
  %arrayidx541 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %247 = load i64, i64* %arrayidx541, align 8
  %and542 = and i64 %246, %247
  %or543 = or i64 %and539, %and542
  %add544 = add i64 %xor534, %or543
  store i64 %add544, i64* %t1, align 8
  %248 = load i64, i64* %t0, align 8
  %arrayidx545 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %249 = load i64, i64* %arrayidx545, align 8
  %add546 = add i64 %249, %248
  store i64 %add546, i64* %arrayidx545, align 8
  %250 = load i64, i64* %t0, align 8
  %251 = load i64, i64* %t1, align 8
  %add547 = add i64 %250, %251
  %arrayidx548 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add547, i64* %arrayidx548, align 8
  %arrayidx549 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %252 = load i64, i64* %arrayidx549, align 8
  %arrayidx550 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %253 = load i64, i64* %arrayidx550, align 8
  %shr551 = lshr i64 %253, 14
  %arrayidx552 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %254 = load i64, i64* %arrayidx552, align 8
  %shl553 = shl i64 %254, 50
  %or554 = or i64 %shr551, %shl553
  %arrayidx555 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %255 = load i64, i64* %arrayidx555, align 8
  %shr556 = lshr i64 %255, 18
  %arrayidx557 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %256 = load i64, i64* %arrayidx557, align 8
  %shl558 = shl i64 %256, 46
  %or559 = or i64 %shr556, %shl558
  %xor560 = xor i64 %or554, %or559
  %arrayidx561 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %257 = load i64, i64* %arrayidx561, align 8
  %shr562 = lshr i64 %257, 41
  %arrayidx563 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %258 = load i64, i64* %arrayidx563, align 8
  %shl564 = shl i64 %258, 23
  %or565 = or i64 %shr562, %shl564
  %xor566 = xor i64 %xor560, %or565
  %add567 = add i64 %252, %xor566
  %arrayidx568 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %259 = load i64, i64* %arrayidx568, align 8
  %arrayidx569 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %260 = load i64, i64* %arrayidx569, align 8
  %arrayidx570 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %261 = load i64, i64* %arrayidx570, align 8
  %arrayidx571 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %262 = load i64, i64* %arrayidx571, align 8
  %xor572 = xor i64 %261, %262
  %and573 = and i64 %260, %xor572
  %xor574 = xor i64 %259, %and573
  %add575 = add i64 %add567, %xor574
  %add576 = add i64 %add575, -2880145864133508542
  %arrayidx577 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 8
  %263 = load i64, i64* %arrayidx577, align 8
  %add578 = add i64 %add576, %263
  store i64 %add578, i64* %t0, align 8
  %arrayidx579 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %264 = load i64, i64* %arrayidx579, align 8
  %shr580 = lshr i64 %264, 28
  %arrayidx581 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %265 = load i64, i64* %arrayidx581, align 8
  %shl582 = shl i64 %265, 36
  %or583 = or i64 %shr580, %shl582
  %arrayidx584 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %266 = load i64, i64* %arrayidx584, align 8
  %shr585 = lshr i64 %266, 34
  %arrayidx586 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %267 = load i64, i64* %arrayidx586, align 8
  %shl587 = shl i64 %267, 30
  %or588 = or i64 %shr585, %shl587
  %xor589 = xor i64 %or583, %or588
  %arrayidx590 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %268 = load i64, i64* %arrayidx590, align 8
  %shr591 = lshr i64 %268, 39
  %arrayidx592 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %269 = load i64, i64* %arrayidx592, align 8
  %shl593 = shl i64 %269, 25
  %or594 = or i64 %shr591, %shl593
  %xor595 = xor i64 %xor589, %or594
  %arrayidx596 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %270 = load i64, i64* %arrayidx596, align 8
  %arrayidx597 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %271 = load i64, i64* %arrayidx597, align 8
  %or598 = or i64 %270, %271
  %arrayidx599 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %272 = load i64, i64* %arrayidx599, align 8
  %and600 = and i64 %or598, %272
  %arrayidx601 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %273 = load i64, i64* %arrayidx601, align 8
  %arrayidx602 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %274 = load i64, i64* %arrayidx602, align 8
  %and603 = and i64 %273, %274
  %or604 = or i64 %and600, %and603
  %add605 = add i64 %xor595, %or604
  store i64 %add605, i64* %t1, align 8
  %275 = load i64, i64* %t0, align 8
  %arrayidx606 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %276 = load i64, i64* %arrayidx606, align 8
  %add607 = add i64 %276, %275
  store i64 %add607, i64* %arrayidx606, align 8
  %277 = load i64, i64* %t0, align 8
  %278 = load i64, i64* %t1, align 8
  %add608 = add i64 %277, %278
  %arrayidx609 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add608, i64* %arrayidx609, align 8
  %arrayidx610 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %279 = load i64, i64* %arrayidx610, align 8
  %arrayidx611 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %280 = load i64, i64* %arrayidx611, align 8
  %shr612 = lshr i64 %280, 14
  %arrayidx613 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %281 = load i64, i64* %arrayidx613, align 8
  %shl614 = shl i64 %281, 50
  %or615 = or i64 %shr612, %shl614
  %arrayidx616 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %282 = load i64, i64* %arrayidx616, align 8
  %shr617 = lshr i64 %282, 18
  %arrayidx618 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %283 = load i64, i64* %arrayidx618, align 8
  %shl619 = shl i64 %283, 46
  %or620 = or i64 %shr617, %shl619
  %xor621 = xor i64 %or615, %or620
  %arrayidx622 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %284 = load i64, i64* %arrayidx622, align 8
  %shr623 = lshr i64 %284, 41
  %arrayidx624 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %285 = load i64, i64* %arrayidx624, align 8
  %shl625 = shl i64 %285, 23
  %or626 = or i64 %shr623, %shl625
  %xor627 = xor i64 %xor621, %or626
  %add628 = add i64 %279, %xor627
  %arrayidx629 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %286 = load i64, i64* %arrayidx629, align 8
  %arrayidx630 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %287 = load i64, i64* %arrayidx630, align 8
  %arrayidx631 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %288 = load i64, i64* %arrayidx631, align 8
  %arrayidx632 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %289 = load i64, i64* %arrayidx632, align 8
  %xor633 = xor i64 %288, %289
  %and634 = and i64 %287, %xor633
  %xor635 = xor i64 %286, %and634
  %add636 = add i64 %add628, %xor635
  %add637 = add i64 %add636, 1334009975649890238
  %arrayidx638 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 9
  %290 = load i64, i64* %arrayidx638, align 8
  %add639 = add i64 %add637, %290
  store i64 %add639, i64* %t0, align 8
  %arrayidx640 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %291 = load i64, i64* %arrayidx640, align 8
  %shr641 = lshr i64 %291, 28
  %arrayidx642 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %292 = load i64, i64* %arrayidx642, align 8
  %shl643 = shl i64 %292, 36
  %or644 = or i64 %shr641, %shl643
  %arrayidx645 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %293 = load i64, i64* %arrayidx645, align 8
  %shr646 = lshr i64 %293, 34
  %arrayidx647 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %294 = load i64, i64* %arrayidx647, align 8
  %shl648 = shl i64 %294, 30
  %or649 = or i64 %shr646, %shl648
  %xor650 = xor i64 %or644, %or649
  %arrayidx651 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %295 = load i64, i64* %arrayidx651, align 8
  %shr652 = lshr i64 %295, 39
  %arrayidx653 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %296 = load i64, i64* %arrayidx653, align 8
  %shl654 = shl i64 %296, 25
  %or655 = or i64 %shr652, %shl654
  %xor656 = xor i64 %xor650, %or655
  %arrayidx657 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %297 = load i64, i64* %arrayidx657, align 8
  %arrayidx658 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %298 = load i64, i64* %arrayidx658, align 8
  %or659 = or i64 %297, %298
  %arrayidx660 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %299 = load i64, i64* %arrayidx660, align 8
  %and661 = and i64 %or659, %299
  %arrayidx662 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %300 = load i64, i64* %arrayidx662, align 8
  %arrayidx663 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %301 = load i64, i64* %arrayidx663, align 8
  %and664 = and i64 %300, %301
  %or665 = or i64 %and661, %and664
  %add666 = add i64 %xor656, %or665
  store i64 %add666, i64* %t1, align 8
  %302 = load i64, i64* %t0, align 8
  %arrayidx667 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %303 = load i64, i64* %arrayidx667, align 8
  %add668 = add i64 %303, %302
  store i64 %add668, i64* %arrayidx667, align 8
  %304 = load i64, i64* %t0, align 8
  %305 = load i64, i64* %t1, align 8
  %add669 = add i64 %304, %305
  %arrayidx670 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add669, i64* %arrayidx670, align 8
  %arrayidx671 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %306 = load i64, i64* %arrayidx671, align 8
  %arrayidx672 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %307 = load i64, i64* %arrayidx672, align 8
  %shr673 = lshr i64 %307, 14
  %arrayidx674 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %308 = load i64, i64* %arrayidx674, align 8
  %shl675 = shl i64 %308, 50
  %or676 = or i64 %shr673, %shl675
  %arrayidx677 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %309 = load i64, i64* %arrayidx677, align 8
  %shr678 = lshr i64 %309, 18
  %arrayidx679 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %310 = load i64, i64* %arrayidx679, align 8
  %shl680 = shl i64 %310, 46
  %or681 = or i64 %shr678, %shl680
  %xor682 = xor i64 %or676, %or681
  %arrayidx683 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %311 = load i64, i64* %arrayidx683, align 8
  %shr684 = lshr i64 %311, 41
  %arrayidx685 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %312 = load i64, i64* %arrayidx685, align 8
  %shl686 = shl i64 %312, 23
  %or687 = or i64 %shr684, %shl686
  %xor688 = xor i64 %xor682, %or687
  %add689 = add i64 %306, %xor688
  %arrayidx690 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %313 = load i64, i64* %arrayidx690, align 8
  %arrayidx691 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %314 = load i64, i64* %arrayidx691, align 8
  %arrayidx692 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %315 = load i64, i64* %arrayidx692, align 8
  %arrayidx693 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %316 = load i64, i64* %arrayidx693, align 8
  %xor694 = xor i64 %315, %316
  %and695 = and i64 %314, %xor694
  %xor696 = xor i64 %313, %and695
  %add697 = add i64 %add689, %xor696
  %add698 = add i64 %add697, 2608012711638119052
  %arrayidx699 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 10
  %317 = load i64, i64* %arrayidx699, align 8
  %add700 = add i64 %add698, %317
  store i64 %add700, i64* %t0, align 8
  %arrayidx701 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %318 = load i64, i64* %arrayidx701, align 8
  %shr702 = lshr i64 %318, 28
  %arrayidx703 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %319 = load i64, i64* %arrayidx703, align 8
  %shl704 = shl i64 %319, 36
  %or705 = or i64 %shr702, %shl704
  %arrayidx706 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %320 = load i64, i64* %arrayidx706, align 8
  %shr707 = lshr i64 %320, 34
  %arrayidx708 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %321 = load i64, i64* %arrayidx708, align 8
  %shl709 = shl i64 %321, 30
  %or710 = or i64 %shr707, %shl709
  %xor711 = xor i64 %or705, %or710
  %arrayidx712 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %322 = load i64, i64* %arrayidx712, align 8
  %shr713 = lshr i64 %322, 39
  %arrayidx714 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %323 = load i64, i64* %arrayidx714, align 8
  %shl715 = shl i64 %323, 25
  %or716 = or i64 %shr713, %shl715
  %xor717 = xor i64 %xor711, %or716
  %arrayidx718 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %324 = load i64, i64* %arrayidx718, align 8
  %arrayidx719 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %325 = load i64, i64* %arrayidx719, align 8
  %or720 = or i64 %324, %325
  %arrayidx721 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %326 = load i64, i64* %arrayidx721, align 8
  %and722 = and i64 %or720, %326
  %arrayidx723 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %327 = load i64, i64* %arrayidx723, align 8
  %arrayidx724 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %328 = load i64, i64* %arrayidx724, align 8
  %and725 = and i64 %327, %328
  %or726 = or i64 %and722, %and725
  %add727 = add i64 %xor717, %or726
  store i64 %add727, i64* %t1, align 8
  %329 = load i64, i64* %t0, align 8
  %arrayidx728 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %330 = load i64, i64* %arrayidx728, align 8
  %add729 = add i64 %330, %329
  store i64 %add729, i64* %arrayidx728, align 8
  %331 = load i64, i64* %t0, align 8
  %332 = load i64, i64* %t1, align 8
  %add730 = add i64 %331, %332
  %arrayidx731 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add730, i64* %arrayidx731, align 8
  %arrayidx732 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %333 = load i64, i64* %arrayidx732, align 8
  %arrayidx733 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %334 = load i64, i64* %arrayidx733, align 8
  %shr734 = lshr i64 %334, 14
  %arrayidx735 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %335 = load i64, i64* %arrayidx735, align 8
  %shl736 = shl i64 %335, 50
  %or737 = or i64 %shr734, %shl736
  %arrayidx738 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %336 = load i64, i64* %arrayidx738, align 8
  %shr739 = lshr i64 %336, 18
  %arrayidx740 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %337 = load i64, i64* %arrayidx740, align 8
  %shl741 = shl i64 %337, 46
  %or742 = or i64 %shr739, %shl741
  %xor743 = xor i64 %or737, %or742
  %arrayidx744 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %338 = load i64, i64* %arrayidx744, align 8
  %shr745 = lshr i64 %338, 41
  %arrayidx746 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %339 = load i64, i64* %arrayidx746, align 8
  %shl747 = shl i64 %339, 23
  %or748 = or i64 %shr745, %shl747
  %xor749 = xor i64 %xor743, %or748
  %add750 = add i64 %333, %xor749
  %arrayidx751 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %340 = load i64, i64* %arrayidx751, align 8
  %arrayidx752 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %341 = load i64, i64* %arrayidx752, align 8
  %arrayidx753 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %342 = load i64, i64* %arrayidx753, align 8
  %arrayidx754 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %343 = load i64, i64* %arrayidx754, align 8
  %xor755 = xor i64 %342, %343
  %and756 = and i64 %341, %xor755
  %xor757 = xor i64 %340, %and756
  %add758 = add i64 %add750, %xor757
  %add759 = add i64 %add758, 6128411473006802146
  %arrayidx760 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 11
  %344 = load i64, i64* %arrayidx760, align 8
  %add761 = add i64 %add759, %344
  store i64 %add761, i64* %t0, align 8
  %arrayidx762 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %345 = load i64, i64* %arrayidx762, align 8
  %shr763 = lshr i64 %345, 28
  %arrayidx764 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %346 = load i64, i64* %arrayidx764, align 8
  %shl765 = shl i64 %346, 36
  %or766 = or i64 %shr763, %shl765
  %arrayidx767 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %347 = load i64, i64* %arrayidx767, align 8
  %shr768 = lshr i64 %347, 34
  %arrayidx769 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %348 = load i64, i64* %arrayidx769, align 8
  %shl770 = shl i64 %348, 30
  %or771 = or i64 %shr768, %shl770
  %xor772 = xor i64 %or766, %or771
  %arrayidx773 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %349 = load i64, i64* %arrayidx773, align 8
  %shr774 = lshr i64 %349, 39
  %arrayidx775 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %350 = load i64, i64* %arrayidx775, align 8
  %shl776 = shl i64 %350, 25
  %or777 = or i64 %shr774, %shl776
  %xor778 = xor i64 %xor772, %or777
  %arrayidx779 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %351 = load i64, i64* %arrayidx779, align 8
  %arrayidx780 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %352 = load i64, i64* %arrayidx780, align 8
  %or781 = or i64 %351, %352
  %arrayidx782 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %353 = load i64, i64* %arrayidx782, align 8
  %and783 = and i64 %or781, %353
  %arrayidx784 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %354 = load i64, i64* %arrayidx784, align 8
  %arrayidx785 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %355 = load i64, i64* %arrayidx785, align 8
  %and786 = and i64 %354, %355
  %or787 = or i64 %and783, %and786
  %add788 = add i64 %xor778, %or787
  store i64 %add788, i64* %t1, align 8
  %356 = load i64, i64* %t0, align 8
  %arrayidx789 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %357 = load i64, i64* %arrayidx789, align 8
  %add790 = add i64 %357, %356
  store i64 %add790, i64* %arrayidx789, align 8
  %358 = load i64, i64* %t0, align 8
  %359 = load i64, i64* %t1, align 8
  %add791 = add i64 %358, %359
  %arrayidx792 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add791, i64* %arrayidx792, align 8
  %arrayidx793 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %360 = load i64, i64* %arrayidx793, align 8
  %arrayidx794 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %361 = load i64, i64* %arrayidx794, align 8
  %shr795 = lshr i64 %361, 14
  %arrayidx796 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %362 = load i64, i64* %arrayidx796, align 8
  %shl797 = shl i64 %362, 50
  %or798 = or i64 %shr795, %shl797
  %arrayidx799 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %363 = load i64, i64* %arrayidx799, align 8
  %shr800 = lshr i64 %363, 18
  %arrayidx801 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %364 = load i64, i64* %arrayidx801, align 8
  %shl802 = shl i64 %364, 46
  %or803 = or i64 %shr800, %shl802
  %xor804 = xor i64 %or798, %or803
  %arrayidx805 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %365 = load i64, i64* %arrayidx805, align 8
  %shr806 = lshr i64 %365, 41
  %arrayidx807 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %366 = load i64, i64* %arrayidx807, align 8
  %shl808 = shl i64 %366, 23
  %or809 = or i64 %shr806, %shl808
  %xor810 = xor i64 %xor804, %or809
  %add811 = add i64 %360, %xor810
  %arrayidx812 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %367 = load i64, i64* %arrayidx812, align 8
  %arrayidx813 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %368 = load i64, i64* %arrayidx813, align 8
  %arrayidx814 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %369 = load i64, i64* %arrayidx814, align 8
  %arrayidx815 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %370 = load i64, i64* %arrayidx815, align 8
  %xor816 = xor i64 %369, %370
  %and817 = and i64 %368, %xor816
  %xor818 = xor i64 %367, %and817
  %add819 = add i64 %add811, %xor818
  %add820 = add i64 %add819, 8268148722764581231
  %arrayidx821 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 12
  %371 = load i64, i64* %arrayidx821, align 8
  %add822 = add i64 %add820, %371
  store i64 %add822, i64* %t0, align 8
  %arrayidx823 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %372 = load i64, i64* %arrayidx823, align 8
  %shr824 = lshr i64 %372, 28
  %arrayidx825 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %373 = load i64, i64* %arrayidx825, align 8
  %shl826 = shl i64 %373, 36
  %or827 = or i64 %shr824, %shl826
  %arrayidx828 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %374 = load i64, i64* %arrayidx828, align 8
  %shr829 = lshr i64 %374, 34
  %arrayidx830 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %375 = load i64, i64* %arrayidx830, align 8
  %shl831 = shl i64 %375, 30
  %or832 = or i64 %shr829, %shl831
  %xor833 = xor i64 %or827, %or832
  %arrayidx834 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %376 = load i64, i64* %arrayidx834, align 8
  %shr835 = lshr i64 %376, 39
  %arrayidx836 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %377 = load i64, i64* %arrayidx836, align 8
  %shl837 = shl i64 %377, 25
  %or838 = or i64 %shr835, %shl837
  %xor839 = xor i64 %xor833, %or838
  %arrayidx840 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %378 = load i64, i64* %arrayidx840, align 8
  %arrayidx841 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %379 = load i64, i64* %arrayidx841, align 8
  %or842 = or i64 %378, %379
  %arrayidx843 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %380 = load i64, i64* %arrayidx843, align 8
  %and844 = and i64 %or842, %380
  %arrayidx845 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %381 = load i64, i64* %arrayidx845, align 8
  %arrayidx846 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %382 = load i64, i64* %arrayidx846, align 8
  %and847 = and i64 %381, %382
  %or848 = or i64 %and844, %and847
  %add849 = add i64 %xor839, %or848
  store i64 %add849, i64* %t1, align 8
  %383 = load i64, i64* %t0, align 8
  %arrayidx850 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %384 = load i64, i64* %arrayidx850, align 8
  %add851 = add i64 %384, %383
  store i64 %add851, i64* %arrayidx850, align 8
  %385 = load i64, i64* %t0, align 8
  %386 = load i64, i64* %t1, align 8
  %add852 = add i64 %385, %386
  %arrayidx853 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add852, i64* %arrayidx853, align 8
  %arrayidx854 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %387 = load i64, i64* %arrayidx854, align 8
  %arrayidx855 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %388 = load i64, i64* %arrayidx855, align 8
  %shr856 = lshr i64 %388, 14
  %arrayidx857 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %389 = load i64, i64* %arrayidx857, align 8
  %shl858 = shl i64 %389, 50
  %or859 = or i64 %shr856, %shl858
  %arrayidx860 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %390 = load i64, i64* %arrayidx860, align 8
  %shr861 = lshr i64 %390, 18
  %arrayidx862 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %391 = load i64, i64* %arrayidx862, align 8
  %shl863 = shl i64 %391, 46
  %or864 = or i64 %shr861, %shl863
  %xor865 = xor i64 %or859, %or864
  %arrayidx866 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %392 = load i64, i64* %arrayidx866, align 8
  %shr867 = lshr i64 %392, 41
  %arrayidx868 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %393 = load i64, i64* %arrayidx868, align 8
  %shl869 = shl i64 %393, 23
  %or870 = or i64 %shr867, %shl869
  %xor871 = xor i64 %xor865, %or870
  %add872 = add i64 %387, %xor871
  %arrayidx873 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %394 = load i64, i64* %arrayidx873, align 8
  %arrayidx874 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %395 = load i64, i64* %arrayidx874, align 8
  %arrayidx875 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %396 = load i64, i64* %arrayidx875, align 8
  %arrayidx876 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %397 = load i64, i64* %arrayidx876, align 8
  %xor877 = xor i64 %396, %397
  %and878 = and i64 %395, %xor877
  %xor879 = xor i64 %394, %and878
  %add880 = add i64 %add872, %xor879
  %add881 = add i64 %add880, -9160688886553864527
  %arrayidx882 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 13
  %398 = load i64, i64* %arrayidx882, align 8
  %add883 = add i64 %add881, %398
  store i64 %add883, i64* %t0, align 8
  %arrayidx884 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %399 = load i64, i64* %arrayidx884, align 8
  %shr885 = lshr i64 %399, 28
  %arrayidx886 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %400 = load i64, i64* %arrayidx886, align 8
  %shl887 = shl i64 %400, 36
  %or888 = or i64 %shr885, %shl887
  %arrayidx889 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %401 = load i64, i64* %arrayidx889, align 8
  %shr890 = lshr i64 %401, 34
  %arrayidx891 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %402 = load i64, i64* %arrayidx891, align 8
  %shl892 = shl i64 %402, 30
  %or893 = or i64 %shr890, %shl892
  %xor894 = xor i64 %or888, %or893
  %arrayidx895 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %403 = load i64, i64* %arrayidx895, align 8
  %shr896 = lshr i64 %403, 39
  %arrayidx897 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %404 = load i64, i64* %arrayidx897, align 8
  %shl898 = shl i64 %404, 25
  %or899 = or i64 %shr896, %shl898
  %xor900 = xor i64 %xor894, %or899
  %arrayidx901 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %405 = load i64, i64* %arrayidx901, align 8
  %arrayidx902 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %406 = load i64, i64* %arrayidx902, align 8
  %or903 = or i64 %405, %406
  %arrayidx904 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %407 = load i64, i64* %arrayidx904, align 8
  %and905 = and i64 %or903, %407
  %arrayidx906 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %408 = load i64, i64* %arrayidx906, align 8
  %arrayidx907 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %409 = load i64, i64* %arrayidx907, align 8
  %and908 = and i64 %408, %409
  %or909 = or i64 %and905, %and908
  %add910 = add i64 %xor900, %or909
  store i64 %add910, i64* %t1, align 8
  %410 = load i64, i64* %t0, align 8
  %arrayidx911 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %411 = load i64, i64* %arrayidx911, align 8
  %add912 = add i64 %411, %410
  store i64 %add912, i64* %arrayidx911, align 8
  %412 = load i64, i64* %t0, align 8
  %413 = load i64, i64* %t1, align 8
  %add913 = add i64 %412, %413
  %arrayidx914 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add913, i64* %arrayidx914, align 8
  %arrayidx915 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %414 = load i64, i64* %arrayidx915, align 8
  %arrayidx916 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %415 = load i64, i64* %arrayidx916, align 8
  %shr917 = lshr i64 %415, 14
  %arrayidx918 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %416 = load i64, i64* %arrayidx918, align 8
  %shl919 = shl i64 %416, 50
  %or920 = or i64 %shr917, %shl919
  %arrayidx921 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %417 = load i64, i64* %arrayidx921, align 8
  %shr922 = lshr i64 %417, 18
  %arrayidx923 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %418 = load i64, i64* %arrayidx923, align 8
  %shl924 = shl i64 %418, 46
  %or925 = or i64 %shr922, %shl924
  %xor926 = xor i64 %or920, %or925
  %arrayidx927 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %419 = load i64, i64* %arrayidx927, align 8
  %shr928 = lshr i64 %419, 41
  %arrayidx929 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %420 = load i64, i64* %arrayidx929, align 8
  %shl930 = shl i64 %420, 23
  %or931 = or i64 %shr928, %shl930
  %xor932 = xor i64 %xor926, %or931
  %add933 = add i64 %414, %xor932
  %arrayidx934 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %421 = load i64, i64* %arrayidx934, align 8
  %arrayidx935 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %422 = load i64, i64* %arrayidx935, align 8
  %arrayidx936 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %423 = load i64, i64* %arrayidx936, align 8
  %arrayidx937 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %424 = load i64, i64* %arrayidx937, align 8
  %xor938 = xor i64 %423, %424
  %and939 = and i64 %422, %xor938
  %xor940 = xor i64 %421, %and939
  %add941 = add i64 %add933, %xor940
  %add942 = add i64 %add941, -7215885187991268811
  %arrayidx943 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 14
  %425 = load i64, i64* %arrayidx943, align 8
  %add944 = add i64 %add942, %425
  store i64 %add944, i64* %t0, align 8
  %arrayidx945 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %426 = load i64, i64* %arrayidx945, align 8
  %shr946 = lshr i64 %426, 28
  %arrayidx947 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %427 = load i64, i64* %arrayidx947, align 8
  %shl948 = shl i64 %427, 36
  %or949 = or i64 %shr946, %shl948
  %arrayidx950 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %428 = load i64, i64* %arrayidx950, align 8
  %shr951 = lshr i64 %428, 34
  %arrayidx952 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %429 = load i64, i64* %arrayidx952, align 8
  %shl953 = shl i64 %429, 30
  %or954 = or i64 %shr951, %shl953
  %xor955 = xor i64 %or949, %or954
  %arrayidx956 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %430 = load i64, i64* %arrayidx956, align 8
  %shr957 = lshr i64 %430, 39
  %arrayidx958 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %431 = load i64, i64* %arrayidx958, align 8
  %shl959 = shl i64 %431, 25
  %or960 = or i64 %shr957, %shl959
  %xor961 = xor i64 %xor955, %or960
  %arrayidx962 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %432 = load i64, i64* %arrayidx962, align 8
  %arrayidx963 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %433 = load i64, i64* %arrayidx963, align 8
  %or964 = or i64 %432, %433
  %arrayidx965 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %434 = load i64, i64* %arrayidx965, align 8
  %and966 = and i64 %or964, %434
  %arrayidx967 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %435 = load i64, i64* %arrayidx967, align 8
  %arrayidx968 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %436 = load i64, i64* %arrayidx968, align 8
  %and969 = and i64 %435, %436
  %or970 = or i64 %and966, %and969
  %add971 = add i64 %xor961, %or970
  store i64 %add971, i64* %t1, align 8
  %437 = load i64, i64* %t0, align 8
  %arrayidx972 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %438 = load i64, i64* %arrayidx972, align 8
  %add973 = add i64 %438, %437
  store i64 %add973, i64* %arrayidx972, align 8
  %439 = load i64, i64* %t0, align 8
  %440 = load i64, i64* %t1, align 8
  %add974 = add i64 %439, %440
  %arrayidx975 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add974, i64* %arrayidx975, align 8
  %arrayidx976 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %441 = load i64, i64* %arrayidx976, align 8
  %arrayidx977 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %442 = load i64, i64* %arrayidx977, align 8
  %shr978 = lshr i64 %442, 14
  %arrayidx979 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %443 = load i64, i64* %arrayidx979, align 8
  %shl980 = shl i64 %443, 50
  %or981 = or i64 %shr978, %shl980
  %arrayidx982 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %444 = load i64, i64* %arrayidx982, align 8
  %shr983 = lshr i64 %444, 18
  %arrayidx984 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %445 = load i64, i64* %arrayidx984, align 8
  %shl985 = shl i64 %445, 46
  %or986 = or i64 %shr983, %shl985
  %xor987 = xor i64 %or981, %or986
  %arrayidx988 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %446 = load i64, i64* %arrayidx988, align 8
  %shr989 = lshr i64 %446, 41
  %arrayidx990 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %447 = load i64, i64* %arrayidx990, align 8
  %shl991 = shl i64 %447, 23
  %or992 = or i64 %shr989, %shl991
  %xor993 = xor i64 %xor987, %or992
  %add994 = add i64 %441, %xor993
  %arrayidx995 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %448 = load i64, i64* %arrayidx995, align 8
  %arrayidx996 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %449 = load i64, i64* %arrayidx996, align 8
  %arrayidx997 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %450 = load i64, i64* %arrayidx997, align 8
  %arrayidx998 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %451 = load i64, i64* %arrayidx998, align 8
  %xor999 = xor i64 %450, %451
  %and1000 = and i64 %449, %xor999
  %xor1001 = xor i64 %448, %and1000
  %add1002 = add i64 %add994, %xor1001
  %add1003 = add i64 %add1002, -4495734319001033068
  %arrayidx1004 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 15
  %452 = load i64, i64* %arrayidx1004, align 8
  %add1005 = add i64 %add1003, %452
  store i64 %add1005, i64* %t0, align 8
  %arrayidx1006 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %453 = load i64, i64* %arrayidx1006, align 8
  %shr1007 = lshr i64 %453, 28
  %arrayidx1008 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %454 = load i64, i64* %arrayidx1008, align 8
  %shl1009 = shl i64 %454, 36
  %or1010 = or i64 %shr1007, %shl1009
  %arrayidx1011 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %455 = load i64, i64* %arrayidx1011, align 8
  %shr1012 = lshr i64 %455, 34
  %arrayidx1013 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %456 = load i64, i64* %arrayidx1013, align 8
  %shl1014 = shl i64 %456, 30
  %or1015 = or i64 %shr1012, %shl1014
  %xor1016 = xor i64 %or1010, %or1015
  %arrayidx1017 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %457 = load i64, i64* %arrayidx1017, align 8
  %shr1018 = lshr i64 %457, 39
  %arrayidx1019 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %458 = load i64, i64* %arrayidx1019, align 8
  %shl1020 = shl i64 %458, 25
  %or1021 = or i64 %shr1018, %shl1020
  %xor1022 = xor i64 %xor1016, %or1021
  %arrayidx1023 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %459 = load i64, i64* %arrayidx1023, align 8
  %arrayidx1024 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %460 = load i64, i64* %arrayidx1024, align 8
  %or1025 = or i64 %459, %460
  %arrayidx1026 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %461 = load i64, i64* %arrayidx1026, align 8
  %and1027 = and i64 %or1025, %461
  %arrayidx1028 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %462 = load i64, i64* %arrayidx1028, align 8
  %arrayidx1029 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %463 = load i64, i64* %arrayidx1029, align 8
  %and1030 = and i64 %462, %463
  %or1031 = or i64 %and1027, %and1030
  %add1032 = add i64 %xor1022, %or1031
  store i64 %add1032, i64* %t1, align 8
  %464 = load i64, i64* %t0, align 8
  %arrayidx1033 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %465 = load i64, i64* %arrayidx1033, align 8
  %add1034 = add i64 %465, %464
  store i64 %add1034, i64* %arrayidx1033, align 8
  %466 = load i64, i64* %t0, align 8
  %467 = load i64, i64* %t1, align 8
  %add1035 = add i64 %466, %467
  %arrayidx1036 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add1035, i64* %arrayidx1036, align 8
  %arrayidx1037 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %468 = load i64, i64* %arrayidx1037, align 8
  %arrayidx1038 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %469 = load i64, i64* %arrayidx1038, align 8
  %shr1039 = lshr i64 %469, 14
  %arrayidx1040 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %470 = load i64, i64* %arrayidx1040, align 8
  %shl1041 = shl i64 %470, 50
  %or1042 = or i64 %shr1039, %shl1041
  %arrayidx1043 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %471 = load i64, i64* %arrayidx1043, align 8
  %shr1044 = lshr i64 %471, 18
  %arrayidx1045 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %472 = load i64, i64* %arrayidx1045, align 8
  %shl1046 = shl i64 %472, 46
  %or1047 = or i64 %shr1044, %shl1046
  %xor1048 = xor i64 %or1042, %or1047
  %arrayidx1049 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %473 = load i64, i64* %arrayidx1049, align 8
  %shr1050 = lshr i64 %473, 41
  %arrayidx1051 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %474 = load i64, i64* %arrayidx1051, align 8
  %shl1052 = shl i64 %474, 23
  %or1053 = or i64 %shr1050, %shl1052
  %xor1054 = xor i64 %xor1048, %or1053
  %add1055 = add i64 %468, %xor1054
  %arrayidx1056 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %475 = load i64, i64* %arrayidx1056, align 8
  %arrayidx1057 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %476 = load i64, i64* %arrayidx1057, align 8
  %arrayidx1058 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %477 = load i64, i64* %arrayidx1058, align 8
  %arrayidx1059 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %478 = load i64, i64* %arrayidx1059, align 8
  %xor1060 = xor i64 %477, %478
  %and1061 = and i64 %476, %xor1060
  %xor1062 = xor i64 %475, %and1061
  %add1063 = add i64 %add1055, %xor1062
  %add1064 = add i64 %add1063, -1973867731355612462
  %arrayidx1065 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 16
  %479 = load i64, i64* %arrayidx1065, align 8
  %add1066 = add i64 %add1064, %479
  store i64 %add1066, i64* %t0, align 8
  %arrayidx1067 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %480 = load i64, i64* %arrayidx1067, align 8
  %shr1068 = lshr i64 %480, 28
  %arrayidx1069 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %481 = load i64, i64* %arrayidx1069, align 8
  %shl1070 = shl i64 %481, 36
  %or1071 = or i64 %shr1068, %shl1070
  %arrayidx1072 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %482 = load i64, i64* %arrayidx1072, align 8
  %shr1073 = lshr i64 %482, 34
  %arrayidx1074 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %483 = load i64, i64* %arrayidx1074, align 8
  %shl1075 = shl i64 %483, 30
  %or1076 = or i64 %shr1073, %shl1075
  %xor1077 = xor i64 %or1071, %or1076
  %arrayidx1078 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %484 = load i64, i64* %arrayidx1078, align 8
  %shr1079 = lshr i64 %484, 39
  %arrayidx1080 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %485 = load i64, i64* %arrayidx1080, align 8
  %shl1081 = shl i64 %485, 25
  %or1082 = or i64 %shr1079, %shl1081
  %xor1083 = xor i64 %xor1077, %or1082
  %arrayidx1084 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %486 = load i64, i64* %arrayidx1084, align 8
  %arrayidx1085 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %487 = load i64, i64* %arrayidx1085, align 8
  %or1086 = or i64 %486, %487
  %arrayidx1087 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %488 = load i64, i64* %arrayidx1087, align 8
  %and1088 = and i64 %or1086, %488
  %arrayidx1089 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %489 = load i64, i64* %arrayidx1089, align 8
  %arrayidx1090 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %490 = load i64, i64* %arrayidx1090, align 8
  %and1091 = and i64 %489, %490
  %or1092 = or i64 %and1088, %and1091
  %add1093 = add i64 %xor1083, %or1092
  store i64 %add1093, i64* %t1, align 8
  %491 = load i64, i64* %t0, align 8
  %arrayidx1094 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %492 = load i64, i64* %arrayidx1094, align 8
  %add1095 = add i64 %492, %491
  store i64 %add1095, i64* %arrayidx1094, align 8
  %493 = load i64, i64* %t0, align 8
  %494 = load i64, i64* %t1, align 8
  %add1096 = add i64 %493, %494
  %arrayidx1097 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add1096, i64* %arrayidx1097, align 8
  %arrayidx1098 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %495 = load i64, i64* %arrayidx1098, align 8
  %arrayidx1099 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %496 = load i64, i64* %arrayidx1099, align 8
  %shr1100 = lshr i64 %496, 14
  %arrayidx1101 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %497 = load i64, i64* %arrayidx1101, align 8
  %shl1102 = shl i64 %497, 50
  %or1103 = or i64 %shr1100, %shl1102
  %arrayidx1104 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %498 = load i64, i64* %arrayidx1104, align 8
  %shr1105 = lshr i64 %498, 18
  %arrayidx1106 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %499 = load i64, i64* %arrayidx1106, align 8
  %shl1107 = shl i64 %499, 46
  %or1108 = or i64 %shr1105, %shl1107
  %xor1109 = xor i64 %or1103, %or1108
  %arrayidx1110 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %500 = load i64, i64* %arrayidx1110, align 8
  %shr1111 = lshr i64 %500, 41
  %arrayidx1112 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %501 = load i64, i64* %arrayidx1112, align 8
  %shl1113 = shl i64 %501, 23
  %or1114 = or i64 %shr1111, %shl1113
  %xor1115 = xor i64 %xor1109, %or1114
  %add1116 = add i64 %495, %xor1115
  %arrayidx1117 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %502 = load i64, i64* %arrayidx1117, align 8
  %arrayidx1118 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %503 = load i64, i64* %arrayidx1118, align 8
  %arrayidx1119 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %504 = load i64, i64* %arrayidx1119, align 8
  %arrayidx1120 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %505 = load i64, i64* %arrayidx1120, align 8
  %xor1121 = xor i64 %504, %505
  %and1122 = and i64 %503, %xor1121
  %xor1123 = xor i64 %502, %and1122
  %add1124 = add i64 %add1116, %xor1123
  %add1125 = add i64 %add1124, -1171420211273849373
  %arrayidx1126 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 17
  %506 = load i64, i64* %arrayidx1126, align 8
  %add1127 = add i64 %add1125, %506
  store i64 %add1127, i64* %t0, align 8
  %arrayidx1128 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %507 = load i64, i64* %arrayidx1128, align 8
  %shr1129 = lshr i64 %507, 28
  %arrayidx1130 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %508 = load i64, i64* %arrayidx1130, align 8
  %shl1131 = shl i64 %508, 36
  %or1132 = or i64 %shr1129, %shl1131
  %arrayidx1133 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %509 = load i64, i64* %arrayidx1133, align 8
  %shr1134 = lshr i64 %509, 34
  %arrayidx1135 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %510 = load i64, i64* %arrayidx1135, align 8
  %shl1136 = shl i64 %510, 30
  %or1137 = or i64 %shr1134, %shl1136
  %xor1138 = xor i64 %or1132, %or1137
  %arrayidx1139 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %511 = load i64, i64* %arrayidx1139, align 8
  %shr1140 = lshr i64 %511, 39
  %arrayidx1141 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %512 = load i64, i64* %arrayidx1141, align 8
  %shl1142 = shl i64 %512, 25
  %or1143 = or i64 %shr1140, %shl1142
  %xor1144 = xor i64 %xor1138, %or1143
  %arrayidx1145 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %513 = load i64, i64* %arrayidx1145, align 8
  %arrayidx1146 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %514 = load i64, i64* %arrayidx1146, align 8
  %or1147 = or i64 %513, %514
  %arrayidx1148 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %515 = load i64, i64* %arrayidx1148, align 8
  %and1149 = and i64 %or1147, %515
  %arrayidx1150 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %516 = load i64, i64* %arrayidx1150, align 8
  %arrayidx1151 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %517 = load i64, i64* %arrayidx1151, align 8
  %and1152 = and i64 %516, %517
  %or1153 = or i64 %and1149, %and1152
  %add1154 = add i64 %xor1144, %or1153
  store i64 %add1154, i64* %t1, align 8
  %518 = load i64, i64* %t0, align 8
  %arrayidx1155 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %519 = load i64, i64* %arrayidx1155, align 8
  %add1156 = add i64 %519, %518
  store i64 %add1156, i64* %arrayidx1155, align 8
  %520 = load i64, i64* %t0, align 8
  %521 = load i64, i64* %t1, align 8
  %add1157 = add i64 %520, %521
  %arrayidx1158 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add1157, i64* %arrayidx1158, align 8
  %arrayidx1159 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %522 = load i64, i64* %arrayidx1159, align 8
  %arrayidx1160 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %523 = load i64, i64* %arrayidx1160, align 8
  %shr1161 = lshr i64 %523, 14
  %arrayidx1162 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %524 = load i64, i64* %arrayidx1162, align 8
  %shl1163 = shl i64 %524, 50
  %or1164 = or i64 %shr1161, %shl1163
  %arrayidx1165 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %525 = load i64, i64* %arrayidx1165, align 8
  %shr1166 = lshr i64 %525, 18
  %arrayidx1167 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %526 = load i64, i64* %arrayidx1167, align 8
  %shl1168 = shl i64 %526, 46
  %or1169 = or i64 %shr1166, %shl1168
  %xor1170 = xor i64 %or1164, %or1169
  %arrayidx1171 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %527 = load i64, i64* %arrayidx1171, align 8
  %shr1172 = lshr i64 %527, 41
  %arrayidx1173 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %528 = load i64, i64* %arrayidx1173, align 8
  %shl1174 = shl i64 %528, 23
  %or1175 = or i64 %shr1172, %shl1174
  %xor1176 = xor i64 %xor1170, %or1175
  %add1177 = add i64 %522, %xor1176
  %arrayidx1178 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %529 = load i64, i64* %arrayidx1178, align 8
  %arrayidx1179 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %530 = load i64, i64* %arrayidx1179, align 8
  %arrayidx1180 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %531 = load i64, i64* %arrayidx1180, align 8
  %arrayidx1181 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %532 = load i64, i64* %arrayidx1181, align 8
  %xor1182 = xor i64 %531, %532
  %and1183 = and i64 %530, %xor1182
  %xor1184 = xor i64 %529, %and1183
  %add1185 = add i64 %add1177, %xor1184
  %add1186 = add i64 %add1185, 1135362057144423861
  %arrayidx1187 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 18
  %533 = load i64, i64* %arrayidx1187, align 8
  %add1188 = add i64 %add1186, %533
  store i64 %add1188, i64* %t0, align 8
  %arrayidx1189 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %534 = load i64, i64* %arrayidx1189, align 8
  %shr1190 = lshr i64 %534, 28
  %arrayidx1191 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %535 = load i64, i64* %arrayidx1191, align 8
  %shl1192 = shl i64 %535, 36
  %or1193 = or i64 %shr1190, %shl1192
  %arrayidx1194 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %536 = load i64, i64* %arrayidx1194, align 8
  %shr1195 = lshr i64 %536, 34
  %arrayidx1196 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %537 = load i64, i64* %arrayidx1196, align 8
  %shl1197 = shl i64 %537, 30
  %or1198 = or i64 %shr1195, %shl1197
  %xor1199 = xor i64 %or1193, %or1198
  %arrayidx1200 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %538 = load i64, i64* %arrayidx1200, align 8
  %shr1201 = lshr i64 %538, 39
  %arrayidx1202 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %539 = load i64, i64* %arrayidx1202, align 8
  %shl1203 = shl i64 %539, 25
  %or1204 = or i64 %shr1201, %shl1203
  %xor1205 = xor i64 %xor1199, %or1204
  %arrayidx1206 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %540 = load i64, i64* %arrayidx1206, align 8
  %arrayidx1207 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %541 = load i64, i64* %arrayidx1207, align 8
  %or1208 = or i64 %540, %541
  %arrayidx1209 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %542 = load i64, i64* %arrayidx1209, align 8
  %and1210 = and i64 %or1208, %542
  %arrayidx1211 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %543 = load i64, i64* %arrayidx1211, align 8
  %arrayidx1212 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %544 = load i64, i64* %arrayidx1212, align 8
  %and1213 = and i64 %543, %544
  %or1214 = or i64 %and1210, %and1213
  %add1215 = add i64 %xor1205, %or1214
  store i64 %add1215, i64* %t1, align 8
  %545 = load i64, i64* %t0, align 8
  %arrayidx1216 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %546 = load i64, i64* %arrayidx1216, align 8
  %add1217 = add i64 %546, %545
  store i64 %add1217, i64* %arrayidx1216, align 8
  %547 = load i64, i64* %t0, align 8
  %548 = load i64, i64* %t1, align 8
  %add1218 = add i64 %547, %548
  %arrayidx1219 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add1218, i64* %arrayidx1219, align 8
  %arrayidx1220 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %549 = load i64, i64* %arrayidx1220, align 8
  %arrayidx1221 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %550 = load i64, i64* %arrayidx1221, align 8
  %shr1222 = lshr i64 %550, 14
  %arrayidx1223 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %551 = load i64, i64* %arrayidx1223, align 8
  %shl1224 = shl i64 %551, 50
  %or1225 = or i64 %shr1222, %shl1224
  %arrayidx1226 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %552 = load i64, i64* %arrayidx1226, align 8
  %shr1227 = lshr i64 %552, 18
  %arrayidx1228 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %553 = load i64, i64* %arrayidx1228, align 8
  %shl1229 = shl i64 %553, 46
  %or1230 = or i64 %shr1227, %shl1229
  %xor1231 = xor i64 %or1225, %or1230
  %arrayidx1232 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %554 = load i64, i64* %arrayidx1232, align 8
  %shr1233 = lshr i64 %554, 41
  %arrayidx1234 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %555 = load i64, i64* %arrayidx1234, align 8
  %shl1235 = shl i64 %555, 23
  %or1236 = or i64 %shr1233, %shl1235
  %xor1237 = xor i64 %xor1231, %or1236
  %add1238 = add i64 %549, %xor1237
  %arrayidx1239 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %556 = load i64, i64* %arrayidx1239, align 8
  %arrayidx1240 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %557 = load i64, i64* %arrayidx1240, align 8
  %arrayidx1241 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %558 = load i64, i64* %arrayidx1241, align 8
  %arrayidx1242 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %559 = load i64, i64* %arrayidx1242, align 8
  %xor1243 = xor i64 %558, %559
  %and1244 = and i64 %557, %xor1243
  %xor1245 = xor i64 %556, %and1244
  %add1246 = add i64 %add1238, %xor1245
  %add1247 = add i64 %add1246, 2597628984639134821
  %arrayidx1248 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 19
  %560 = load i64, i64* %arrayidx1248, align 8
  %add1249 = add i64 %add1247, %560
  store i64 %add1249, i64* %t0, align 8
  %arrayidx1250 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %561 = load i64, i64* %arrayidx1250, align 8
  %shr1251 = lshr i64 %561, 28
  %arrayidx1252 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %562 = load i64, i64* %arrayidx1252, align 8
  %shl1253 = shl i64 %562, 36
  %or1254 = or i64 %shr1251, %shl1253
  %arrayidx1255 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %563 = load i64, i64* %arrayidx1255, align 8
  %shr1256 = lshr i64 %563, 34
  %arrayidx1257 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %564 = load i64, i64* %arrayidx1257, align 8
  %shl1258 = shl i64 %564, 30
  %or1259 = or i64 %shr1256, %shl1258
  %xor1260 = xor i64 %or1254, %or1259
  %arrayidx1261 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %565 = load i64, i64* %arrayidx1261, align 8
  %shr1262 = lshr i64 %565, 39
  %arrayidx1263 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %566 = load i64, i64* %arrayidx1263, align 8
  %shl1264 = shl i64 %566, 25
  %or1265 = or i64 %shr1262, %shl1264
  %xor1266 = xor i64 %xor1260, %or1265
  %arrayidx1267 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %567 = load i64, i64* %arrayidx1267, align 8
  %arrayidx1268 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %568 = load i64, i64* %arrayidx1268, align 8
  %or1269 = or i64 %567, %568
  %arrayidx1270 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %569 = load i64, i64* %arrayidx1270, align 8
  %and1271 = and i64 %or1269, %569
  %arrayidx1272 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %570 = load i64, i64* %arrayidx1272, align 8
  %arrayidx1273 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %571 = load i64, i64* %arrayidx1273, align 8
  %and1274 = and i64 %570, %571
  %or1275 = or i64 %and1271, %and1274
  %add1276 = add i64 %xor1266, %or1275
  store i64 %add1276, i64* %t1, align 8
  %572 = load i64, i64* %t0, align 8
  %arrayidx1277 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %573 = load i64, i64* %arrayidx1277, align 8
  %add1278 = add i64 %573, %572
  store i64 %add1278, i64* %arrayidx1277, align 8
  %574 = load i64, i64* %t0, align 8
  %575 = load i64, i64* %t1, align 8
  %add1279 = add i64 %574, %575
  %arrayidx1280 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add1279, i64* %arrayidx1280, align 8
  %arrayidx1281 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %576 = load i64, i64* %arrayidx1281, align 8
  %arrayidx1282 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %577 = load i64, i64* %arrayidx1282, align 8
  %shr1283 = lshr i64 %577, 14
  %arrayidx1284 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %578 = load i64, i64* %arrayidx1284, align 8
  %shl1285 = shl i64 %578, 50
  %or1286 = or i64 %shr1283, %shl1285
  %arrayidx1287 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %579 = load i64, i64* %arrayidx1287, align 8
  %shr1288 = lshr i64 %579, 18
  %arrayidx1289 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %580 = load i64, i64* %arrayidx1289, align 8
  %shl1290 = shl i64 %580, 46
  %or1291 = or i64 %shr1288, %shl1290
  %xor1292 = xor i64 %or1286, %or1291
  %arrayidx1293 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %581 = load i64, i64* %arrayidx1293, align 8
  %shr1294 = lshr i64 %581, 41
  %arrayidx1295 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %582 = load i64, i64* %arrayidx1295, align 8
  %shl1296 = shl i64 %582, 23
  %or1297 = or i64 %shr1294, %shl1296
  %xor1298 = xor i64 %xor1292, %or1297
  %add1299 = add i64 %576, %xor1298
  %arrayidx1300 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %583 = load i64, i64* %arrayidx1300, align 8
  %arrayidx1301 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %584 = load i64, i64* %arrayidx1301, align 8
  %arrayidx1302 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %585 = load i64, i64* %arrayidx1302, align 8
  %arrayidx1303 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %586 = load i64, i64* %arrayidx1303, align 8
  %xor1304 = xor i64 %585, %586
  %and1305 = and i64 %584, %xor1304
  %xor1306 = xor i64 %583, %and1305
  %add1307 = add i64 %add1299, %xor1306
  %add1308 = add i64 %add1307, 3308224258029322869
  %arrayidx1309 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 20
  %587 = load i64, i64* %arrayidx1309, align 8
  %add1310 = add i64 %add1308, %587
  store i64 %add1310, i64* %t0, align 8
  %arrayidx1311 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %588 = load i64, i64* %arrayidx1311, align 8
  %shr1312 = lshr i64 %588, 28
  %arrayidx1313 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %589 = load i64, i64* %arrayidx1313, align 8
  %shl1314 = shl i64 %589, 36
  %or1315 = or i64 %shr1312, %shl1314
  %arrayidx1316 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %590 = load i64, i64* %arrayidx1316, align 8
  %shr1317 = lshr i64 %590, 34
  %arrayidx1318 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %591 = load i64, i64* %arrayidx1318, align 8
  %shl1319 = shl i64 %591, 30
  %or1320 = or i64 %shr1317, %shl1319
  %xor1321 = xor i64 %or1315, %or1320
  %arrayidx1322 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %592 = load i64, i64* %arrayidx1322, align 8
  %shr1323 = lshr i64 %592, 39
  %arrayidx1324 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %593 = load i64, i64* %arrayidx1324, align 8
  %shl1325 = shl i64 %593, 25
  %or1326 = or i64 %shr1323, %shl1325
  %xor1327 = xor i64 %xor1321, %or1326
  %arrayidx1328 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %594 = load i64, i64* %arrayidx1328, align 8
  %arrayidx1329 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %595 = load i64, i64* %arrayidx1329, align 8
  %or1330 = or i64 %594, %595
  %arrayidx1331 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %596 = load i64, i64* %arrayidx1331, align 8
  %and1332 = and i64 %or1330, %596
  %arrayidx1333 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %597 = load i64, i64* %arrayidx1333, align 8
  %arrayidx1334 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %598 = load i64, i64* %arrayidx1334, align 8
  %and1335 = and i64 %597, %598
  %or1336 = or i64 %and1332, %and1335
  %add1337 = add i64 %xor1327, %or1336
  store i64 %add1337, i64* %t1, align 8
  %599 = load i64, i64* %t0, align 8
  %arrayidx1338 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %600 = load i64, i64* %arrayidx1338, align 8
  %add1339 = add i64 %600, %599
  store i64 %add1339, i64* %arrayidx1338, align 8
  %601 = load i64, i64* %t0, align 8
  %602 = load i64, i64* %t1, align 8
  %add1340 = add i64 %601, %602
  %arrayidx1341 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add1340, i64* %arrayidx1341, align 8
  %arrayidx1342 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %603 = load i64, i64* %arrayidx1342, align 8
  %arrayidx1343 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %604 = load i64, i64* %arrayidx1343, align 8
  %shr1344 = lshr i64 %604, 14
  %arrayidx1345 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %605 = load i64, i64* %arrayidx1345, align 8
  %shl1346 = shl i64 %605, 50
  %or1347 = or i64 %shr1344, %shl1346
  %arrayidx1348 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %606 = load i64, i64* %arrayidx1348, align 8
  %shr1349 = lshr i64 %606, 18
  %arrayidx1350 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %607 = load i64, i64* %arrayidx1350, align 8
  %shl1351 = shl i64 %607, 46
  %or1352 = or i64 %shr1349, %shl1351
  %xor1353 = xor i64 %or1347, %or1352
  %arrayidx1354 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %608 = load i64, i64* %arrayidx1354, align 8
  %shr1355 = lshr i64 %608, 41
  %arrayidx1356 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %609 = load i64, i64* %arrayidx1356, align 8
  %shl1357 = shl i64 %609, 23
  %or1358 = or i64 %shr1355, %shl1357
  %xor1359 = xor i64 %xor1353, %or1358
  %add1360 = add i64 %603, %xor1359
  %arrayidx1361 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %610 = load i64, i64* %arrayidx1361, align 8
  %arrayidx1362 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %611 = load i64, i64* %arrayidx1362, align 8
  %arrayidx1363 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %612 = load i64, i64* %arrayidx1363, align 8
  %arrayidx1364 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %613 = load i64, i64* %arrayidx1364, align 8
  %xor1365 = xor i64 %612, %613
  %and1366 = and i64 %611, %xor1365
  %xor1367 = xor i64 %610, %and1366
  %add1368 = add i64 %add1360, %xor1367
  %add1369 = add i64 %add1368, 5365058923640841347
  %arrayidx1370 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 21
  %614 = load i64, i64* %arrayidx1370, align 8
  %add1371 = add i64 %add1369, %614
  store i64 %add1371, i64* %t0, align 8
  %arrayidx1372 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %615 = load i64, i64* %arrayidx1372, align 8
  %shr1373 = lshr i64 %615, 28
  %arrayidx1374 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %616 = load i64, i64* %arrayidx1374, align 8
  %shl1375 = shl i64 %616, 36
  %or1376 = or i64 %shr1373, %shl1375
  %arrayidx1377 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %617 = load i64, i64* %arrayidx1377, align 8
  %shr1378 = lshr i64 %617, 34
  %arrayidx1379 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %618 = load i64, i64* %arrayidx1379, align 8
  %shl1380 = shl i64 %618, 30
  %or1381 = or i64 %shr1378, %shl1380
  %xor1382 = xor i64 %or1376, %or1381
  %arrayidx1383 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %619 = load i64, i64* %arrayidx1383, align 8
  %shr1384 = lshr i64 %619, 39
  %arrayidx1385 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %620 = load i64, i64* %arrayidx1385, align 8
  %shl1386 = shl i64 %620, 25
  %or1387 = or i64 %shr1384, %shl1386
  %xor1388 = xor i64 %xor1382, %or1387
  %arrayidx1389 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %621 = load i64, i64* %arrayidx1389, align 8
  %arrayidx1390 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %622 = load i64, i64* %arrayidx1390, align 8
  %or1391 = or i64 %621, %622
  %arrayidx1392 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %623 = load i64, i64* %arrayidx1392, align 8
  %and1393 = and i64 %or1391, %623
  %arrayidx1394 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %624 = load i64, i64* %arrayidx1394, align 8
  %arrayidx1395 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %625 = load i64, i64* %arrayidx1395, align 8
  %and1396 = and i64 %624, %625
  %or1397 = or i64 %and1393, %and1396
  %add1398 = add i64 %xor1388, %or1397
  store i64 %add1398, i64* %t1, align 8
  %626 = load i64, i64* %t0, align 8
  %arrayidx1399 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %627 = load i64, i64* %arrayidx1399, align 8
  %add1400 = add i64 %627, %626
  store i64 %add1400, i64* %arrayidx1399, align 8
  %628 = load i64, i64* %t0, align 8
  %629 = load i64, i64* %t1, align 8
  %add1401 = add i64 %628, %629
  %arrayidx1402 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add1401, i64* %arrayidx1402, align 8
  %arrayidx1403 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %630 = load i64, i64* %arrayidx1403, align 8
  %arrayidx1404 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %631 = load i64, i64* %arrayidx1404, align 8
  %shr1405 = lshr i64 %631, 14
  %arrayidx1406 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %632 = load i64, i64* %arrayidx1406, align 8
  %shl1407 = shl i64 %632, 50
  %or1408 = or i64 %shr1405, %shl1407
  %arrayidx1409 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %633 = load i64, i64* %arrayidx1409, align 8
  %shr1410 = lshr i64 %633, 18
  %arrayidx1411 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %634 = load i64, i64* %arrayidx1411, align 8
  %shl1412 = shl i64 %634, 46
  %or1413 = or i64 %shr1410, %shl1412
  %xor1414 = xor i64 %or1408, %or1413
  %arrayidx1415 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %635 = load i64, i64* %arrayidx1415, align 8
  %shr1416 = lshr i64 %635, 41
  %arrayidx1417 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %636 = load i64, i64* %arrayidx1417, align 8
  %shl1418 = shl i64 %636, 23
  %or1419 = or i64 %shr1416, %shl1418
  %xor1420 = xor i64 %xor1414, %or1419
  %add1421 = add i64 %630, %xor1420
  %arrayidx1422 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %637 = load i64, i64* %arrayidx1422, align 8
  %arrayidx1423 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %638 = load i64, i64* %arrayidx1423, align 8
  %arrayidx1424 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %639 = load i64, i64* %arrayidx1424, align 8
  %arrayidx1425 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %640 = load i64, i64* %arrayidx1425, align 8
  %xor1426 = xor i64 %639, %640
  %and1427 = and i64 %638, %xor1426
  %xor1428 = xor i64 %637, %and1427
  %add1429 = add i64 %add1421, %xor1428
  %add1430 = add i64 %add1429, 6679025012923562964
  %arrayidx1431 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 22
  %641 = load i64, i64* %arrayidx1431, align 8
  %add1432 = add i64 %add1430, %641
  store i64 %add1432, i64* %t0, align 8
  %arrayidx1433 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %642 = load i64, i64* %arrayidx1433, align 8
  %shr1434 = lshr i64 %642, 28
  %arrayidx1435 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %643 = load i64, i64* %arrayidx1435, align 8
  %shl1436 = shl i64 %643, 36
  %or1437 = or i64 %shr1434, %shl1436
  %arrayidx1438 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %644 = load i64, i64* %arrayidx1438, align 8
  %shr1439 = lshr i64 %644, 34
  %arrayidx1440 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %645 = load i64, i64* %arrayidx1440, align 8
  %shl1441 = shl i64 %645, 30
  %or1442 = or i64 %shr1439, %shl1441
  %xor1443 = xor i64 %or1437, %or1442
  %arrayidx1444 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %646 = load i64, i64* %arrayidx1444, align 8
  %shr1445 = lshr i64 %646, 39
  %arrayidx1446 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %647 = load i64, i64* %arrayidx1446, align 8
  %shl1447 = shl i64 %647, 25
  %or1448 = or i64 %shr1445, %shl1447
  %xor1449 = xor i64 %xor1443, %or1448
  %arrayidx1450 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %648 = load i64, i64* %arrayidx1450, align 8
  %arrayidx1451 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %649 = load i64, i64* %arrayidx1451, align 8
  %or1452 = or i64 %648, %649
  %arrayidx1453 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %650 = load i64, i64* %arrayidx1453, align 8
  %and1454 = and i64 %or1452, %650
  %arrayidx1455 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %651 = load i64, i64* %arrayidx1455, align 8
  %arrayidx1456 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %652 = load i64, i64* %arrayidx1456, align 8
  %and1457 = and i64 %651, %652
  %or1458 = or i64 %and1454, %and1457
  %add1459 = add i64 %xor1449, %or1458
  store i64 %add1459, i64* %t1, align 8
  %653 = load i64, i64* %t0, align 8
  %arrayidx1460 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %654 = load i64, i64* %arrayidx1460, align 8
  %add1461 = add i64 %654, %653
  store i64 %add1461, i64* %arrayidx1460, align 8
  %655 = load i64, i64* %t0, align 8
  %656 = load i64, i64* %t1, align 8
  %add1462 = add i64 %655, %656
  %arrayidx1463 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add1462, i64* %arrayidx1463, align 8
  %arrayidx1464 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %657 = load i64, i64* %arrayidx1464, align 8
  %arrayidx1465 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %658 = load i64, i64* %arrayidx1465, align 8
  %shr1466 = lshr i64 %658, 14
  %arrayidx1467 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %659 = load i64, i64* %arrayidx1467, align 8
  %shl1468 = shl i64 %659, 50
  %or1469 = or i64 %shr1466, %shl1468
  %arrayidx1470 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %660 = load i64, i64* %arrayidx1470, align 8
  %shr1471 = lshr i64 %660, 18
  %arrayidx1472 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %661 = load i64, i64* %arrayidx1472, align 8
  %shl1473 = shl i64 %661, 46
  %or1474 = or i64 %shr1471, %shl1473
  %xor1475 = xor i64 %or1469, %or1474
  %arrayidx1476 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %662 = load i64, i64* %arrayidx1476, align 8
  %shr1477 = lshr i64 %662, 41
  %arrayidx1478 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %663 = load i64, i64* %arrayidx1478, align 8
  %shl1479 = shl i64 %663, 23
  %or1480 = or i64 %shr1477, %shl1479
  %xor1481 = xor i64 %xor1475, %or1480
  %add1482 = add i64 %657, %xor1481
  %arrayidx1483 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %664 = load i64, i64* %arrayidx1483, align 8
  %arrayidx1484 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %665 = load i64, i64* %arrayidx1484, align 8
  %arrayidx1485 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %666 = load i64, i64* %arrayidx1485, align 8
  %arrayidx1486 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %667 = load i64, i64* %arrayidx1486, align 8
  %xor1487 = xor i64 %666, %667
  %and1488 = and i64 %665, %xor1487
  %xor1489 = xor i64 %664, %and1488
  %add1490 = add i64 %add1482, %xor1489
  %add1491 = add i64 %add1490, 8573033837759648693
  %arrayidx1492 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 23
  %668 = load i64, i64* %arrayidx1492, align 8
  %add1493 = add i64 %add1491, %668
  store i64 %add1493, i64* %t0, align 8
  %arrayidx1494 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %669 = load i64, i64* %arrayidx1494, align 8
  %shr1495 = lshr i64 %669, 28
  %arrayidx1496 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %670 = load i64, i64* %arrayidx1496, align 8
  %shl1497 = shl i64 %670, 36
  %or1498 = or i64 %shr1495, %shl1497
  %arrayidx1499 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %671 = load i64, i64* %arrayidx1499, align 8
  %shr1500 = lshr i64 %671, 34
  %arrayidx1501 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %672 = load i64, i64* %arrayidx1501, align 8
  %shl1502 = shl i64 %672, 30
  %or1503 = or i64 %shr1500, %shl1502
  %xor1504 = xor i64 %or1498, %or1503
  %arrayidx1505 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %673 = load i64, i64* %arrayidx1505, align 8
  %shr1506 = lshr i64 %673, 39
  %arrayidx1507 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %674 = load i64, i64* %arrayidx1507, align 8
  %shl1508 = shl i64 %674, 25
  %or1509 = or i64 %shr1506, %shl1508
  %xor1510 = xor i64 %xor1504, %or1509
  %arrayidx1511 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %675 = load i64, i64* %arrayidx1511, align 8
  %arrayidx1512 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %676 = load i64, i64* %arrayidx1512, align 8
  %or1513 = or i64 %675, %676
  %arrayidx1514 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %677 = load i64, i64* %arrayidx1514, align 8
  %and1515 = and i64 %or1513, %677
  %arrayidx1516 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %678 = load i64, i64* %arrayidx1516, align 8
  %arrayidx1517 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %679 = load i64, i64* %arrayidx1517, align 8
  %and1518 = and i64 %678, %679
  %or1519 = or i64 %and1515, %and1518
  %add1520 = add i64 %xor1510, %or1519
  store i64 %add1520, i64* %t1, align 8
  %680 = load i64, i64* %t0, align 8
  %arrayidx1521 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %681 = load i64, i64* %arrayidx1521, align 8
  %add1522 = add i64 %681, %680
  store i64 %add1522, i64* %arrayidx1521, align 8
  %682 = load i64, i64* %t0, align 8
  %683 = load i64, i64* %t1, align 8
  %add1523 = add i64 %682, %683
  %arrayidx1524 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add1523, i64* %arrayidx1524, align 8
  %arrayidx1525 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %684 = load i64, i64* %arrayidx1525, align 8
  %arrayidx1526 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %685 = load i64, i64* %arrayidx1526, align 8
  %shr1527 = lshr i64 %685, 14
  %arrayidx1528 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %686 = load i64, i64* %arrayidx1528, align 8
  %shl1529 = shl i64 %686, 50
  %or1530 = or i64 %shr1527, %shl1529
  %arrayidx1531 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %687 = load i64, i64* %arrayidx1531, align 8
  %shr1532 = lshr i64 %687, 18
  %arrayidx1533 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %688 = load i64, i64* %arrayidx1533, align 8
  %shl1534 = shl i64 %688, 46
  %or1535 = or i64 %shr1532, %shl1534
  %xor1536 = xor i64 %or1530, %or1535
  %arrayidx1537 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %689 = load i64, i64* %arrayidx1537, align 8
  %shr1538 = lshr i64 %689, 41
  %arrayidx1539 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %690 = load i64, i64* %arrayidx1539, align 8
  %shl1540 = shl i64 %690, 23
  %or1541 = or i64 %shr1538, %shl1540
  %xor1542 = xor i64 %xor1536, %or1541
  %add1543 = add i64 %684, %xor1542
  %arrayidx1544 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %691 = load i64, i64* %arrayidx1544, align 8
  %arrayidx1545 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %692 = load i64, i64* %arrayidx1545, align 8
  %arrayidx1546 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %693 = load i64, i64* %arrayidx1546, align 8
  %arrayidx1547 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %694 = load i64, i64* %arrayidx1547, align 8
  %xor1548 = xor i64 %693, %694
  %and1549 = and i64 %692, %xor1548
  %xor1550 = xor i64 %691, %and1549
  %add1551 = add i64 %add1543, %xor1550
  %add1552 = add i64 %add1551, -7476448914759557205
  %arrayidx1553 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 24
  %695 = load i64, i64* %arrayidx1553, align 8
  %add1554 = add i64 %add1552, %695
  store i64 %add1554, i64* %t0, align 8
  %arrayidx1555 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %696 = load i64, i64* %arrayidx1555, align 8
  %shr1556 = lshr i64 %696, 28
  %arrayidx1557 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %697 = load i64, i64* %arrayidx1557, align 8
  %shl1558 = shl i64 %697, 36
  %or1559 = or i64 %shr1556, %shl1558
  %arrayidx1560 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %698 = load i64, i64* %arrayidx1560, align 8
  %shr1561 = lshr i64 %698, 34
  %arrayidx1562 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %699 = load i64, i64* %arrayidx1562, align 8
  %shl1563 = shl i64 %699, 30
  %or1564 = or i64 %shr1561, %shl1563
  %xor1565 = xor i64 %or1559, %or1564
  %arrayidx1566 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %700 = load i64, i64* %arrayidx1566, align 8
  %shr1567 = lshr i64 %700, 39
  %arrayidx1568 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %701 = load i64, i64* %arrayidx1568, align 8
  %shl1569 = shl i64 %701, 25
  %or1570 = or i64 %shr1567, %shl1569
  %xor1571 = xor i64 %xor1565, %or1570
  %arrayidx1572 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %702 = load i64, i64* %arrayidx1572, align 8
  %arrayidx1573 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %703 = load i64, i64* %arrayidx1573, align 8
  %or1574 = or i64 %702, %703
  %arrayidx1575 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %704 = load i64, i64* %arrayidx1575, align 8
  %and1576 = and i64 %or1574, %704
  %arrayidx1577 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %705 = load i64, i64* %arrayidx1577, align 8
  %arrayidx1578 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %706 = load i64, i64* %arrayidx1578, align 8
  %and1579 = and i64 %705, %706
  %or1580 = or i64 %and1576, %and1579
  %add1581 = add i64 %xor1571, %or1580
  store i64 %add1581, i64* %t1, align 8
  %707 = load i64, i64* %t0, align 8
  %arrayidx1582 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %708 = load i64, i64* %arrayidx1582, align 8
  %add1583 = add i64 %708, %707
  store i64 %add1583, i64* %arrayidx1582, align 8
  %709 = load i64, i64* %t0, align 8
  %710 = load i64, i64* %t1, align 8
  %add1584 = add i64 %709, %710
  %arrayidx1585 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add1584, i64* %arrayidx1585, align 8
  %arrayidx1586 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %711 = load i64, i64* %arrayidx1586, align 8
  %arrayidx1587 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %712 = load i64, i64* %arrayidx1587, align 8
  %shr1588 = lshr i64 %712, 14
  %arrayidx1589 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %713 = load i64, i64* %arrayidx1589, align 8
  %shl1590 = shl i64 %713, 50
  %or1591 = or i64 %shr1588, %shl1590
  %arrayidx1592 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %714 = load i64, i64* %arrayidx1592, align 8
  %shr1593 = lshr i64 %714, 18
  %arrayidx1594 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %715 = load i64, i64* %arrayidx1594, align 8
  %shl1595 = shl i64 %715, 46
  %or1596 = or i64 %shr1593, %shl1595
  %xor1597 = xor i64 %or1591, %or1596
  %arrayidx1598 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %716 = load i64, i64* %arrayidx1598, align 8
  %shr1599 = lshr i64 %716, 41
  %arrayidx1600 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %717 = load i64, i64* %arrayidx1600, align 8
  %shl1601 = shl i64 %717, 23
  %or1602 = or i64 %shr1599, %shl1601
  %xor1603 = xor i64 %xor1597, %or1602
  %add1604 = add i64 %711, %xor1603
  %arrayidx1605 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %718 = load i64, i64* %arrayidx1605, align 8
  %arrayidx1606 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %719 = load i64, i64* %arrayidx1606, align 8
  %arrayidx1607 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %720 = load i64, i64* %arrayidx1607, align 8
  %arrayidx1608 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %721 = load i64, i64* %arrayidx1608, align 8
  %xor1609 = xor i64 %720, %721
  %and1610 = and i64 %719, %xor1609
  %xor1611 = xor i64 %718, %and1610
  %add1612 = add i64 %add1604, %xor1611
  %add1613 = add i64 %add1612, -6327057829258317296
  %arrayidx1614 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 25
  %722 = load i64, i64* %arrayidx1614, align 8
  %add1615 = add i64 %add1613, %722
  store i64 %add1615, i64* %t0, align 8
  %arrayidx1616 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %723 = load i64, i64* %arrayidx1616, align 8
  %shr1617 = lshr i64 %723, 28
  %arrayidx1618 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %724 = load i64, i64* %arrayidx1618, align 8
  %shl1619 = shl i64 %724, 36
  %or1620 = or i64 %shr1617, %shl1619
  %arrayidx1621 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %725 = load i64, i64* %arrayidx1621, align 8
  %shr1622 = lshr i64 %725, 34
  %arrayidx1623 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %726 = load i64, i64* %arrayidx1623, align 8
  %shl1624 = shl i64 %726, 30
  %or1625 = or i64 %shr1622, %shl1624
  %xor1626 = xor i64 %or1620, %or1625
  %arrayidx1627 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %727 = load i64, i64* %arrayidx1627, align 8
  %shr1628 = lshr i64 %727, 39
  %arrayidx1629 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %728 = load i64, i64* %arrayidx1629, align 8
  %shl1630 = shl i64 %728, 25
  %or1631 = or i64 %shr1628, %shl1630
  %xor1632 = xor i64 %xor1626, %or1631
  %arrayidx1633 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %729 = load i64, i64* %arrayidx1633, align 8
  %arrayidx1634 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %730 = load i64, i64* %arrayidx1634, align 8
  %or1635 = or i64 %729, %730
  %arrayidx1636 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %731 = load i64, i64* %arrayidx1636, align 8
  %and1637 = and i64 %or1635, %731
  %arrayidx1638 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %732 = load i64, i64* %arrayidx1638, align 8
  %arrayidx1639 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %733 = load i64, i64* %arrayidx1639, align 8
  %and1640 = and i64 %732, %733
  %or1641 = or i64 %and1637, %and1640
  %add1642 = add i64 %xor1632, %or1641
  store i64 %add1642, i64* %t1, align 8
  %734 = load i64, i64* %t0, align 8
  %arrayidx1643 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %735 = load i64, i64* %arrayidx1643, align 8
  %add1644 = add i64 %735, %734
  store i64 %add1644, i64* %arrayidx1643, align 8
  %736 = load i64, i64* %t0, align 8
  %737 = load i64, i64* %t1, align 8
  %add1645 = add i64 %736, %737
  %arrayidx1646 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add1645, i64* %arrayidx1646, align 8
  %arrayidx1647 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %738 = load i64, i64* %arrayidx1647, align 8
  %arrayidx1648 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %739 = load i64, i64* %arrayidx1648, align 8
  %shr1649 = lshr i64 %739, 14
  %arrayidx1650 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %740 = load i64, i64* %arrayidx1650, align 8
  %shl1651 = shl i64 %740, 50
  %or1652 = or i64 %shr1649, %shl1651
  %arrayidx1653 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %741 = load i64, i64* %arrayidx1653, align 8
  %shr1654 = lshr i64 %741, 18
  %arrayidx1655 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %742 = load i64, i64* %arrayidx1655, align 8
  %shl1656 = shl i64 %742, 46
  %or1657 = or i64 %shr1654, %shl1656
  %xor1658 = xor i64 %or1652, %or1657
  %arrayidx1659 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %743 = load i64, i64* %arrayidx1659, align 8
  %shr1660 = lshr i64 %743, 41
  %arrayidx1661 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %744 = load i64, i64* %arrayidx1661, align 8
  %shl1662 = shl i64 %744, 23
  %or1663 = or i64 %shr1660, %shl1662
  %xor1664 = xor i64 %xor1658, %or1663
  %add1665 = add i64 %738, %xor1664
  %arrayidx1666 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %745 = load i64, i64* %arrayidx1666, align 8
  %arrayidx1667 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %746 = load i64, i64* %arrayidx1667, align 8
  %arrayidx1668 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %747 = load i64, i64* %arrayidx1668, align 8
  %arrayidx1669 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %748 = load i64, i64* %arrayidx1669, align 8
  %xor1670 = xor i64 %747, %748
  %and1671 = and i64 %746, %xor1670
  %xor1672 = xor i64 %745, %and1671
  %add1673 = add i64 %add1665, %xor1672
  %add1674 = add i64 %add1673, -5763719355590565569
  %arrayidx1675 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 26
  %749 = load i64, i64* %arrayidx1675, align 8
  %add1676 = add i64 %add1674, %749
  store i64 %add1676, i64* %t0, align 8
  %arrayidx1677 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %750 = load i64, i64* %arrayidx1677, align 8
  %shr1678 = lshr i64 %750, 28
  %arrayidx1679 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %751 = load i64, i64* %arrayidx1679, align 8
  %shl1680 = shl i64 %751, 36
  %or1681 = or i64 %shr1678, %shl1680
  %arrayidx1682 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %752 = load i64, i64* %arrayidx1682, align 8
  %shr1683 = lshr i64 %752, 34
  %arrayidx1684 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %753 = load i64, i64* %arrayidx1684, align 8
  %shl1685 = shl i64 %753, 30
  %or1686 = or i64 %shr1683, %shl1685
  %xor1687 = xor i64 %or1681, %or1686
  %arrayidx1688 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %754 = load i64, i64* %arrayidx1688, align 8
  %shr1689 = lshr i64 %754, 39
  %arrayidx1690 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %755 = load i64, i64* %arrayidx1690, align 8
  %shl1691 = shl i64 %755, 25
  %or1692 = or i64 %shr1689, %shl1691
  %xor1693 = xor i64 %xor1687, %or1692
  %arrayidx1694 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %756 = load i64, i64* %arrayidx1694, align 8
  %arrayidx1695 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %757 = load i64, i64* %arrayidx1695, align 8
  %or1696 = or i64 %756, %757
  %arrayidx1697 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %758 = load i64, i64* %arrayidx1697, align 8
  %and1698 = and i64 %or1696, %758
  %arrayidx1699 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %759 = load i64, i64* %arrayidx1699, align 8
  %arrayidx1700 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %760 = load i64, i64* %arrayidx1700, align 8
  %and1701 = and i64 %759, %760
  %or1702 = or i64 %and1698, %and1701
  %add1703 = add i64 %xor1693, %or1702
  store i64 %add1703, i64* %t1, align 8
  %761 = load i64, i64* %t0, align 8
  %arrayidx1704 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %762 = load i64, i64* %arrayidx1704, align 8
  %add1705 = add i64 %762, %761
  store i64 %add1705, i64* %arrayidx1704, align 8
  %763 = load i64, i64* %t0, align 8
  %764 = load i64, i64* %t1, align 8
  %add1706 = add i64 %763, %764
  %arrayidx1707 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add1706, i64* %arrayidx1707, align 8
  %arrayidx1708 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %765 = load i64, i64* %arrayidx1708, align 8
  %arrayidx1709 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %766 = load i64, i64* %arrayidx1709, align 8
  %shr1710 = lshr i64 %766, 14
  %arrayidx1711 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %767 = load i64, i64* %arrayidx1711, align 8
  %shl1712 = shl i64 %767, 50
  %or1713 = or i64 %shr1710, %shl1712
  %arrayidx1714 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %768 = load i64, i64* %arrayidx1714, align 8
  %shr1715 = lshr i64 %768, 18
  %arrayidx1716 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %769 = load i64, i64* %arrayidx1716, align 8
  %shl1717 = shl i64 %769, 46
  %or1718 = or i64 %shr1715, %shl1717
  %xor1719 = xor i64 %or1713, %or1718
  %arrayidx1720 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %770 = load i64, i64* %arrayidx1720, align 8
  %shr1721 = lshr i64 %770, 41
  %arrayidx1722 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %771 = load i64, i64* %arrayidx1722, align 8
  %shl1723 = shl i64 %771, 23
  %or1724 = or i64 %shr1721, %shl1723
  %xor1725 = xor i64 %xor1719, %or1724
  %add1726 = add i64 %765, %xor1725
  %arrayidx1727 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %772 = load i64, i64* %arrayidx1727, align 8
  %arrayidx1728 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %773 = load i64, i64* %arrayidx1728, align 8
  %arrayidx1729 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %774 = load i64, i64* %arrayidx1729, align 8
  %arrayidx1730 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %775 = load i64, i64* %arrayidx1730, align 8
  %xor1731 = xor i64 %774, %775
  %and1732 = and i64 %773, %xor1731
  %xor1733 = xor i64 %772, %and1732
  %add1734 = add i64 %add1726, %xor1733
  %add1735 = add i64 %add1734, -4658551843659510044
  %arrayidx1736 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 27
  %776 = load i64, i64* %arrayidx1736, align 8
  %add1737 = add i64 %add1735, %776
  store i64 %add1737, i64* %t0, align 8
  %arrayidx1738 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %777 = load i64, i64* %arrayidx1738, align 8
  %shr1739 = lshr i64 %777, 28
  %arrayidx1740 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %778 = load i64, i64* %arrayidx1740, align 8
  %shl1741 = shl i64 %778, 36
  %or1742 = or i64 %shr1739, %shl1741
  %arrayidx1743 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %779 = load i64, i64* %arrayidx1743, align 8
  %shr1744 = lshr i64 %779, 34
  %arrayidx1745 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %780 = load i64, i64* %arrayidx1745, align 8
  %shl1746 = shl i64 %780, 30
  %or1747 = or i64 %shr1744, %shl1746
  %xor1748 = xor i64 %or1742, %or1747
  %arrayidx1749 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %781 = load i64, i64* %arrayidx1749, align 8
  %shr1750 = lshr i64 %781, 39
  %arrayidx1751 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %782 = load i64, i64* %arrayidx1751, align 8
  %shl1752 = shl i64 %782, 25
  %or1753 = or i64 %shr1750, %shl1752
  %xor1754 = xor i64 %xor1748, %or1753
  %arrayidx1755 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %783 = load i64, i64* %arrayidx1755, align 8
  %arrayidx1756 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %784 = load i64, i64* %arrayidx1756, align 8
  %or1757 = or i64 %783, %784
  %arrayidx1758 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %785 = load i64, i64* %arrayidx1758, align 8
  %and1759 = and i64 %or1757, %785
  %arrayidx1760 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %786 = load i64, i64* %arrayidx1760, align 8
  %arrayidx1761 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %787 = load i64, i64* %arrayidx1761, align 8
  %and1762 = and i64 %786, %787
  %or1763 = or i64 %and1759, %and1762
  %add1764 = add i64 %xor1754, %or1763
  store i64 %add1764, i64* %t1, align 8
  %788 = load i64, i64* %t0, align 8
  %arrayidx1765 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %789 = load i64, i64* %arrayidx1765, align 8
  %add1766 = add i64 %789, %788
  store i64 %add1766, i64* %arrayidx1765, align 8
  %790 = load i64, i64* %t0, align 8
  %791 = load i64, i64* %t1, align 8
  %add1767 = add i64 %790, %791
  %arrayidx1768 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add1767, i64* %arrayidx1768, align 8
  %arrayidx1769 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %792 = load i64, i64* %arrayidx1769, align 8
  %arrayidx1770 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %793 = load i64, i64* %arrayidx1770, align 8
  %shr1771 = lshr i64 %793, 14
  %arrayidx1772 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %794 = load i64, i64* %arrayidx1772, align 8
  %shl1773 = shl i64 %794, 50
  %or1774 = or i64 %shr1771, %shl1773
  %arrayidx1775 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %795 = load i64, i64* %arrayidx1775, align 8
  %shr1776 = lshr i64 %795, 18
  %arrayidx1777 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %796 = load i64, i64* %arrayidx1777, align 8
  %shl1778 = shl i64 %796, 46
  %or1779 = or i64 %shr1776, %shl1778
  %xor1780 = xor i64 %or1774, %or1779
  %arrayidx1781 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %797 = load i64, i64* %arrayidx1781, align 8
  %shr1782 = lshr i64 %797, 41
  %arrayidx1783 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %798 = load i64, i64* %arrayidx1783, align 8
  %shl1784 = shl i64 %798, 23
  %or1785 = or i64 %shr1782, %shl1784
  %xor1786 = xor i64 %xor1780, %or1785
  %add1787 = add i64 %792, %xor1786
  %arrayidx1788 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %799 = load i64, i64* %arrayidx1788, align 8
  %arrayidx1789 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %800 = load i64, i64* %arrayidx1789, align 8
  %arrayidx1790 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %801 = load i64, i64* %arrayidx1790, align 8
  %arrayidx1791 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %802 = load i64, i64* %arrayidx1791, align 8
  %xor1792 = xor i64 %801, %802
  %and1793 = and i64 %800, %xor1792
  %xor1794 = xor i64 %799, %and1793
  %add1795 = add i64 %add1787, %xor1794
  %add1796 = add i64 %add1795, -4116276920077217854
  %arrayidx1797 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 28
  %803 = load i64, i64* %arrayidx1797, align 8
  %add1798 = add i64 %add1796, %803
  store i64 %add1798, i64* %t0, align 8
  %arrayidx1799 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %804 = load i64, i64* %arrayidx1799, align 8
  %shr1800 = lshr i64 %804, 28
  %arrayidx1801 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %805 = load i64, i64* %arrayidx1801, align 8
  %shl1802 = shl i64 %805, 36
  %or1803 = or i64 %shr1800, %shl1802
  %arrayidx1804 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %806 = load i64, i64* %arrayidx1804, align 8
  %shr1805 = lshr i64 %806, 34
  %arrayidx1806 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %807 = load i64, i64* %arrayidx1806, align 8
  %shl1807 = shl i64 %807, 30
  %or1808 = or i64 %shr1805, %shl1807
  %xor1809 = xor i64 %or1803, %or1808
  %arrayidx1810 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %808 = load i64, i64* %arrayidx1810, align 8
  %shr1811 = lshr i64 %808, 39
  %arrayidx1812 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %809 = load i64, i64* %arrayidx1812, align 8
  %shl1813 = shl i64 %809, 25
  %or1814 = or i64 %shr1811, %shl1813
  %xor1815 = xor i64 %xor1809, %or1814
  %arrayidx1816 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %810 = load i64, i64* %arrayidx1816, align 8
  %arrayidx1817 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %811 = load i64, i64* %arrayidx1817, align 8
  %or1818 = or i64 %810, %811
  %arrayidx1819 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %812 = load i64, i64* %arrayidx1819, align 8
  %and1820 = and i64 %or1818, %812
  %arrayidx1821 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %813 = load i64, i64* %arrayidx1821, align 8
  %arrayidx1822 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %814 = load i64, i64* %arrayidx1822, align 8
  %and1823 = and i64 %813, %814
  %or1824 = or i64 %and1820, %and1823
  %add1825 = add i64 %xor1815, %or1824
  store i64 %add1825, i64* %t1, align 8
  %815 = load i64, i64* %t0, align 8
  %arrayidx1826 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %816 = load i64, i64* %arrayidx1826, align 8
  %add1827 = add i64 %816, %815
  store i64 %add1827, i64* %arrayidx1826, align 8
  %817 = load i64, i64* %t0, align 8
  %818 = load i64, i64* %t1, align 8
  %add1828 = add i64 %817, %818
  %arrayidx1829 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add1828, i64* %arrayidx1829, align 8
  %arrayidx1830 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %819 = load i64, i64* %arrayidx1830, align 8
  %arrayidx1831 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %820 = load i64, i64* %arrayidx1831, align 8
  %shr1832 = lshr i64 %820, 14
  %arrayidx1833 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %821 = load i64, i64* %arrayidx1833, align 8
  %shl1834 = shl i64 %821, 50
  %or1835 = or i64 %shr1832, %shl1834
  %arrayidx1836 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %822 = load i64, i64* %arrayidx1836, align 8
  %shr1837 = lshr i64 %822, 18
  %arrayidx1838 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %823 = load i64, i64* %arrayidx1838, align 8
  %shl1839 = shl i64 %823, 46
  %or1840 = or i64 %shr1837, %shl1839
  %xor1841 = xor i64 %or1835, %or1840
  %arrayidx1842 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %824 = load i64, i64* %arrayidx1842, align 8
  %shr1843 = lshr i64 %824, 41
  %arrayidx1844 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %825 = load i64, i64* %arrayidx1844, align 8
  %shl1845 = shl i64 %825, 23
  %or1846 = or i64 %shr1843, %shl1845
  %xor1847 = xor i64 %xor1841, %or1846
  %add1848 = add i64 %819, %xor1847
  %arrayidx1849 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %826 = load i64, i64* %arrayidx1849, align 8
  %arrayidx1850 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %827 = load i64, i64* %arrayidx1850, align 8
  %arrayidx1851 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %828 = load i64, i64* %arrayidx1851, align 8
  %arrayidx1852 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %829 = load i64, i64* %arrayidx1852, align 8
  %xor1853 = xor i64 %828, %829
  %and1854 = and i64 %827, %xor1853
  %xor1855 = xor i64 %826, %and1854
  %add1856 = add i64 %add1848, %xor1855
  %add1857 = add i64 %add1856, -3051310485924567259
  %arrayidx1858 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 29
  %830 = load i64, i64* %arrayidx1858, align 8
  %add1859 = add i64 %add1857, %830
  store i64 %add1859, i64* %t0, align 8
  %arrayidx1860 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %831 = load i64, i64* %arrayidx1860, align 8
  %shr1861 = lshr i64 %831, 28
  %arrayidx1862 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %832 = load i64, i64* %arrayidx1862, align 8
  %shl1863 = shl i64 %832, 36
  %or1864 = or i64 %shr1861, %shl1863
  %arrayidx1865 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %833 = load i64, i64* %arrayidx1865, align 8
  %shr1866 = lshr i64 %833, 34
  %arrayidx1867 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %834 = load i64, i64* %arrayidx1867, align 8
  %shl1868 = shl i64 %834, 30
  %or1869 = or i64 %shr1866, %shl1868
  %xor1870 = xor i64 %or1864, %or1869
  %arrayidx1871 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %835 = load i64, i64* %arrayidx1871, align 8
  %shr1872 = lshr i64 %835, 39
  %arrayidx1873 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %836 = load i64, i64* %arrayidx1873, align 8
  %shl1874 = shl i64 %836, 25
  %or1875 = or i64 %shr1872, %shl1874
  %xor1876 = xor i64 %xor1870, %or1875
  %arrayidx1877 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %837 = load i64, i64* %arrayidx1877, align 8
  %arrayidx1878 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %838 = load i64, i64* %arrayidx1878, align 8
  %or1879 = or i64 %837, %838
  %arrayidx1880 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %839 = load i64, i64* %arrayidx1880, align 8
  %and1881 = and i64 %or1879, %839
  %arrayidx1882 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %840 = load i64, i64* %arrayidx1882, align 8
  %arrayidx1883 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %841 = load i64, i64* %arrayidx1883, align 8
  %and1884 = and i64 %840, %841
  %or1885 = or i64 %and1881, %and1884
  %add1886 = add i64 %xor1876, %or1885
  store i64 %add1886, i64* %t1, align 8
  %842 = load i64, i64* %t0, align 8
  %arrayidx1887 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %843 = load i64, i64* %arrayidx1887, align 8
  %add1888 = add i64 %843, %842
  store i64 %add1888, i64* %arrayidx1887, align 8
  %844 = load i64, i64* %t0, align 8
  %845 = load i64, i64* %t1, align 8
  %add1889 = add i64 %844, %845
  %arrayidx1890 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add1889, i64* %arrayidx1890, align 8
  %arrayidx1891 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %846 = load i64, i64* %arrayidx1891, align 8
  %arrayidx1892 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %847 = load i64, i64* %arrayidx1892, align 8
  %shr1893 = lshr i64 %847, 14
  %arrayidx1894 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %848 = load i64, i64* %arrayidx1894, align 8
  %shl1895 = shl i64 %848, 50
  %or1896 = or i64 %shr1893, %shl1895
  %arrayidx1897 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %849 = load i64, i64* %arrayidx1897, align 8
  %shr1898 = lshr i64 %849, 18
  %arrayidx1899 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %850 = load i64, i64* %arrayidx1899, align 8
  %shl1900 = shl i64 %850, 46
  %or1901 = or i64 %shr1898, %shl1900
  %xor1902 = xor i64 %or1896, %or1901
  %arrayidx1903 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %851 = load i64, i64* %arrayidx1903, align 8
  %shr1904 = lshr i64 %851, 41
  %arrayidx1905 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %852 = load i64, i64* %arrayidx1905, align 8
  %shl1906 = shl i64 %852, 23
  %or1907 = or i64 %shr1904, %shl1906
  %xor1908 = xor i64 %xor1902, %or1907
  %add1909 = add i64 %846, %xor1908
  %arrayidx1910 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %853 = load i64, i64* %arrayidx1910, align 8
  %arrayidx1911 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %854 = load i64, i64* %arrayidx1911, align 8
  %arrayidx1912 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %855 = load i64, i64* %arrayidx1912, align 8
  %arrayidx1913 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %856 = load i64, i64* %arrayidx1913, align 8
  %xor1914 = xor i64 %855, %856
  %and1915 = and i64 %854, %xor1914
  %xor1916 = xor i64 %853, %and1915
  %add1917 = add i64 %add1909, %xor1916
  %add1918 = add i64 %add1917, 489312712824947311
  %arrayidx1919 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 30
  %857 = load i64, i64* %arrayidx1919, align 8
  %add1920 = add i64 %add1918, %857
  store i64 %add1920, i64* %t0, align 8
  %arrayidx1921 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %858 = load i64, i64* %arrayidx1921, align 8
  %shr1922 = lshr i64 %858, 28
  %arrayidx1923 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %859 = load i64, i64* %arrayidx1923, align 8
  %shl1924 = shl i64 %859, 36
  %or1925 = or i64 %shr1922, %shl1924
  %arrayidx1926 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %860 = load i64, i64* %arrayidx1926, align 8
  %shr1927 = lshr i64 %860, 34
  %arrayidx1928 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %861 = load i64, i64* %arrayidx1928, align 8
  %shl1929 = shl i64 %861, 30
  %or1930 = or i64 %shr1927, %shl1929
  %xor1931 = xor i64 %or1925, %or1930
  %arrayidx1932 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %862 = load i64, i64* %arrayidx1932, align 8
  %shr1933 = lshr i64 %862, 39
  %arrayidx1934 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %863 = load i64, i64* %arrayidx1934, align 8
  %shl1935 = shl i64 %863, 25
  %or1936 = or i64 %shr1933, %shl1935
  %xor1937 = xor i64 %xor1931, %or1936
  %arrayidx1938 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %864 = load i64, i64* %arrayidx1938, align 8
  %arrayidx1939 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %865 = load i64, i64* %arrayidx1939, align 8
  %or1940 = or i64 %864, %865
  %arrayidx1941 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %866 = load i64, i64* %arrayidx1941, align 8
  %and1942 = and i64 %or1940, %866
  %arrayidx1943 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %867 = load i64, i64* %arrayidx1943, align 8
  %arrayidx1944 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %868 = load i64, i64* %arrayidx1944, align 8
  %and1945 = and i64 %867, %868
  %or1946 = or i64 %and1942, %and1945
  %add1947 = add i64 %xor1937, %or1946
  store i64 %add1947, i64* %t1, align 8
  %869 = load i64, i64* %t0, align 8
  %arrayidx1948 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %870 = load i64, i64* %arrayidx1948, align 8
  %add1949 = add i64 %870, %869
  store i64 %add1949, i64* %arrayidx1948, align 8
  %871 = load i64, i64* %t0, align 8
  %872 = load i64, i64* %t1, align 8
  %add1950 = add i64 %871, %872
  %arrayidx1951 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add1950, i64* %arrayidx1951, align 8
  %arrayidx1952 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %873 = load i64, i64* %arrayidx1952, align 8
  %arrayidx1953 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %874 = load i64, i64* %arrayidx1953, align 8
  %shr1954 = lshr i64 %874, 14
  %arrayidx1955 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %875 = load i64, i64* %arrayidx1955, align 8
  %shl1956 = shl i64 %875, 50
  %or1957 = or i64 %shr1954, %shl1956
  %arrayidx1958 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %876 = load i64, i64* %arrayidx1958, align 8
  %shr1959 = lshr i64 %876, 18
  %arrayidx1960 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %877 = load i64, i64* %arrayidx1960, align 8
  %shl1961 = shl i64 %877, 46
  %or1962 = or i64 %shr1959, %shl1961
  %xor1963 = xor i64 %or1957, %or1962
  %arrayidx1964 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %878 = load i64, i64* %arrayidx1964, align 8
  %shr1965 = lshr i64 %878, 41
  %arrayidx1966 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %879 = load i64, i64* %arrayidx1966, align 8
  %shl1967 = shl i64 %879, 23
  %or1968 = or i64 %shr1965, %shl1967
  %xor1969 = xor i64 %xor1963, %or1968
  %add1970 = add i64 %873, %xor1969
  %arrayidx1971 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %880 = load i64, i64* %arrayidx1971, align 8
  %arrayidx1972 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %881 = load i64, i64* %arrayidx1972, align 8
  %arrayidx1973 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %882 = load i64, i64* %arrayidx1973, align 8
  %arrayidx1974 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %883 = load i64, i64* %arrayidx1974, align 8
  %xor1975 = xor i64 %882, %883
  %and1976 = and i64 %881, %xor1975
  %xor1977 = xor i64 %880, %and1976
  %add1978 = add i64 %add1970, %xor1977
  %add1979 = add i64 %add1978, 1452737877330783856
  %arrayidx1980 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 31
  %884 = load i64, i64* %arrayidx1980, align 8
  %add1981 = add i64 %add1979, %884
  store i64 %add1981, i64* %t0, align 8
  %arrayidx1982 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %885 = load i64, i64* %arrayidx1982, align 8
  %shr1983 = lshr i64 %885, 28
  %arrayidx1984 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %886 = load i64, i64* %arrayidx1984, align 8
  %shl1985 = shl i64 %886, 36
  %or1986 = or i64 %shr1983, %shl1985
  %arrayidx1987 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %887 = load i64, i64* %arrayidx1987, align 8
  %shr1988 = lshr i64 %887, 34
  %arrayidx1989 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %888 = load i64, i64* %arrayidx1989, align 8
  %shl1990 = shl i64 %888, 30
  %or1991 = or i64 %shr1988, %shl1990
  %xor1992 = xor i64 %or1986, %or1991
  %arrayidx1993 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %889 = load i64, i64* %arrayidx1993, align 8
  %shr1994 = lshr i64 %889, 39
  %arrayidx1995 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %890 = load i64, i64* %arrayidx1995, align 8
  %shl1996 = shl i64 %890, 25
  %or1997 = or i64 %shr1994, %shl1996
  %xor1998 = xor i64 %xor1992, %or1997
  %arrayidx1999 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %891 = load i64, i64* %arrayidx1999, align 8
  %arrayidx2000 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %892 = load i64, i64* %arrayidx2000, align 8
  %or2001 = or i64 %891, %892
  %arrayidx2002 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %893 = load i64, i64* %arrayidx2002, align 8
  %and2003 = and i64 %or2001, %893
  %arrayidx2004 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %894 = load i64, i64* %arrayidx2004, align 8
  %arrayidx2005 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %895 = load i64, i64* %arrayidx2005, align 8
  %and2006 = and i64 %894, %895
  %or2007 = or i64 %and2003, %and2006
  %add2008 = add i64 %xor1998, %or2007
  store i64 %add2008, i64* %t1, align 8
  %896 = load i64, i64* %t0, align 8
  %arrayidx2009 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %897 = load i64, i64* %arrayidx2009, align 8
  %add2010 = add i64 %897, %896
  store i64 %add2010, i64* %arrayidx2009, align 8
  %898 = load i64, i64* %t0, align 8
  %899 = load i64, i64* %t1, align 8
  %add2011 = add i64 %898, %899
  %arrayidx2012 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add2011, i64* %arrayidx2012, align 8
  %arrayidx2013 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %900 = load i64, i64* %arrayidx2013, align 8
  %arrayidx2014 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %901 = load i64, i64* %arrayidx2014, align 8
  %shr2015 = lshr i64 %901, 14
  %arrayidx2016 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %902 = load i64, i64* %arrayidx2016, align 8
  %shl2017 = shl i64 %902, 50
  %or2018 = or i64 %shr2015, %shl2017
  %arrayidx2019 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %903 = load i64, i64* %arrayidx2019, align 8
  %shr2020 = lshr i64 %903, 18
  %arrayidx2021 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %904 = load i64, i64* %arrayidx2021, align 8
  %shl2022 = shl i64 %904, 46
  %or2023 = or i64 %shr2020, %shl2022
  %xor2024 = xor i64 %or2018, %or2023
  %arrayidx2025 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %905 = load i64, i64* %arrayidx2025, align 8
  %shr2026 = lshr i64 %905, 41
  %arrayidx2027 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %906 = load i64, i64* %arrayidx2027, align 8
  %shl2028 = shl i64 %906, 23
  %or2029 = or i64 %shr2026, %shl2028
  %xor2030 = xor i64 %xor2024, %or2029
  %add2031 = add i64 %900, %xor2030
  %arrayidx2032 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %907 = load i64, i64* %arrayidx2032, align 8
  %arrayidx2033 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %908 = load i64, i64* %arrayidx2033, align 8
  %arrayidx2034 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %909 = load i64, i64* %arrayidx2034, align 8
  %arrayidx2035 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %910 = load i64, i64* %arrayidx2035, align 8
  %xor2036 = xor i64 %909, %910
  %and2037 = and i64 %908, %xor2036
  %xor2038 = xor i64 %907, %and2037
  %add2039 = add i64 %add2031, %xor2038
  %add2040 = add i64 %add2039, 2861767655752347644
  %arrayidx2041 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 32
  %911 = load i64, i64* %arrayidx2041, align 8
  %add2042 = add i64 %add2040, %911
  store i64 %add2042, i64* %t0, align 8
  %arrayidx2043 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %912 = load i64, i64* %arrayidx2043, align 8
  %shr2044 = lshr i64 %912, 28
  %arrayidx2045 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %913 = load i64, i64* %arrayidx2045, align 8
  %shl2046 = shl i64 %913, 36
  %or2047 = or i64 %shr2044, %shl2046
  %arrayidx2048 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %914 = load i64, i64* %arrayidx2048, align 8
  %shr2049 = lshr i64 %914, 34
  %arrayidx2050 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %915 = load i64, i64* %arrayidx2050, align 8
  %shl2051 = shl i64 %915, 30
  %or2052 = or i64 %shr2049, %shl2051
  %xor2053 = xor i64 %or2047, %or2052
  %arrayidx2054 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %916 = load i64, i64* %arrayidx2054, align 8
  %shr2055 = lshr i64 %916, 39
  %arrayidx2056 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %917 = load i64, i64* %arrayidx2056, align 8
  %shl2057 = shl i64 %917, 25
  %or2058 = or i64 %shr2055, %shl2057
  %xor2059 = xor i64 %xor2053, %or2058
  %arrayidx2060 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %918 = load i64, i64* %arrayidx2060, align 8
  %arrayidx2061 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %919 = load i64, i64* %arrayidx2061, align 8
  %or2062 = or i64 %918, %919
  %arrayidx2063 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %920 = load i64, i64* %arrayidx2063, align 8
  %and2064 = and i64 %or2062, %920
  %arrayidx2065 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %921 = load i64, i64* %arrayidx2065, align 8
  %arrayidx2066 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %922 = load i64, i64* %arrayidx2066, align 8
  %and2067 = and i64 %921, %922
  %or2068 = or i64 %and2064, %and2067
  %add2069 = add i64 %xor2059, %or2068
  store i64 %add2069, i64* %t1, align 8
  %923 = load i64, i64* %t0, align 8
  %arrayidx2070 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %924 = load i64, i64* %arrayidx2070, align 8
  %add2071 = add i64 %924, %923
  store i64 %add2071, i64* %arrayidx2070, align 8
  %925 = load i64, i64* %t0, align 8
  %926 = load i64, i64* %t1, align 8
  %add2072 = add i64 %925, %926
  %arrayidx2073 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add2072, i64* %arrayidx2073, align 8
  %arrayidx2074 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %927 = load i64, i64* %arrayidx2074, align 8
  %arrayidx2075 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %928 = load i64, i64* %arrayidx2075, align 8
  %shr2076 = lshr i64 %928, 14
  %arrayidx2077 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %929 = load i64, i64* %arrayidx2077, align 8
  %shl2078 = shl i64 %929, 50
  %or2079 = or i64 %shr2076, %shl2078
  %arrayidx2080 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %930 = load i64, i64* %arrayidx2080, align 8
  %shr2081 = lshr i64 %930, 18
  %arrayidx2082 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %931 = load i64, i64* %arrayidx2082, align 8
  %shl2083 = shl i64 %931, 46
  %or2084 = or i64 %shr2081, %shl2083
  %xor2085 = xor i64 %or2079, %or2084
  %arrayidx2086 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %932 = load i64, i64* %arrayidx2086, align 8
  %shr2087 = lshr i64 %932, 41
  %arrayidx2088 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %933 = load i64, i64* %arrayidx2088, align 8
  %shl2089 = shl i64 %933, 23
  %or2090 = or i64 %shr2087, %shl2089
  %xor2091 = xor i64 %xor2085, %or2090
  %add2092 = add i64 %927, %xor2091
  %arrayidx2093 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %934 = load i64, i64* %arrayidx2093, align 8
  %arrayidx2094 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %935 = load i64, i64* %arrayidx2094, align 8
  %arrayidx2095 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %936 = load i64, i64* %arrayidx2095, align 8
  %arrayidx2096 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %937 = load i64, i64* %arrayidx2096, align 8
  %xor2097 = xor i64 %936, %937
  %and2098 = and i64 %935, %xor2097
  %xor2099 = xor i64 %934, %and2098
  %add2100 = add i64 %add2092, %xor2099
  %add2101 = add i64 %add2100, 3322285676063803686
  %arrayidx2102 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 33
  %938 = load i64, i64* %arrayidx2102, align 8
  %add2103 = add i64 %add2101, %938
  store i64 %add2103, i64* %t0, align 8
  %arrayidx2104 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %939 = load i64, i64* %arrayidx2104, align 8
  %shr2105 = lshr i64 %939, 28
  %arrayidx2106 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %940 = load i64, i64* %arrayidx2106, align 8
  %shl2107 = shl i64 %940, 36
  %or2108 = or i64 %shr2105, %shl2107
  %arrayidx2109 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %941 = load i64, i64* %arrayidx2109, align 8
  %shr2110 = lshr i64 %941, 34
  %arrayidx2111 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %942 = load i64, i64* %arrayidx2111, align 8
  %shl2112 = shl i64 %942, 30
  %or2113 = or i64 %shr2110, %shl2112
  %xor2114 = xor i64 %or2108, %or2113
  %arrayidx2115 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %943 = load i64, i64* %arrayidx2115, align 8
  %shr2116 = lshr i64 %943, 39
  %arrayidx2117 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %944 = load i64, i64* %arrayidx2117, align 8
  %shl2118 = shl i64 %944, 25
  %or2119 = or i64 %shr2116, %shl2118
  %xor2120 = xor i64 %xor2114, %or2119
  %arrayidx2121 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %945 = load i64, i64* %arrayidx2121, align 8
  %arrayidx2122 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %946 = load i64, i64* %arrayidx2122, align 8
  %or2123 = or i64 %945, %946
  %arrayidx2124 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %947 = load i64, i64* %arrayidx2124, align 8
  %and2125 = and i64 %or2123, %947
  %arrayidx2126 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %948 = load i64, i64* %arrayidx2126, align 8
  %arrayidx2127 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %949 = load i64, i64* %arrayidx2127, align 8
  %and2128 = and i64 %948, %949
  %or2129 = or i64 %and2125, %and2128
  %add2130 = add i64 %xor2120, %or2129
  store i64 %add2130, i64* %t1, align 8
  %950 = load i64, i64* %t0, align 8
  %arrayidx2131 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %951 = load i64, i64* %arrayidx2131, align 8
  %add2132 = add i64 %951, %950
  store i64 %add2132, i64* %arrayidx2131, align 8
  %952 = load i64, i64* %t0, align 8
  %953 = load i64, i64* %t1, align 8
  %add2133 = add i64 %952, %953
  %arrayidx2134 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add2133, i64* %arrayidx2134, align 8
  %arrayidx2135 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %954 = load i64, i64* %arrayidx2135, align 8
  %arrayidx2136 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %955 = load i64, i64* %arrayidx2136, align 8
  %shr2137 = lshr i64 %955, 14
  %arrayidx2138 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %956 = load i64, i64* %arrayidx2138, align 8
  %shl2139 = shl i64 %956, 50
  %or2140 = or i64 %shr2137, %shl2139
  %arrayidx2141 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %957 = load i64, i64* %arrayidx2141, align 8
  %shr2142 = lshr i64 %957, 18
  %arrayidx2143 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %958 = load i64, i64* %arrayidx2143, align 8
  %shl2144 = shl i64 %958, 46
  %or2145 = or i64 %shr2142, %shl2144
  %xor2146 = xor i64 %or2140, %or2145
  %arrayidx2147 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %959 = load i64, i64* %arrayidx2147, align 8
  %shr2148 = lshr i64 %959, 41
  %arrayidx2149 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %960 = load i64, i64* %arrayidx2149, align 8
  %shl2150 = shl i64 %960, 23
  %or2151 = or i64 %shr2148, %shl2150
  %xor2152 = xor i64 %xor2146, %or2151
  %add2153 = add i64 %954, %xor2152
  %arrayidx2154 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %961 = load i64, i64* %arrayidx2154, align 8
  %arrayidx2155 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %962 = load i64, i64* %arrayidx2155, align 8
  %arrayidx2156 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %963 = load i64, i64* %arrayidx2156, align 8
  %arrayidx2157 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %964 = load i64, i64* %arrayidx2157, align 8
  %xor2158 = xor i64 %963, %964
  %and2159 = and i64 %962, %xor2158
  %xor2160 = xor i64 %961, %and2159
  %add2161 = add i64 %add2153, %xor2160
  %add2162 = add i64 %add2161, 5560940570517711597
  %arrayidx2163 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 34
  %965 = load i64, i64* %arrayidx2163, align 8
  %add2164 = add i64 %add2162, %965
  store i64 %add2164, i64* %t0, align 8
  %arrayidx2165 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %966 = load i64, i64* %arrayidx2165, align 8
  %shr2166 = lshr i64 %966, 28
  %arrayidx2167 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %967 = load i64, i64* %arrayidx2167, align 8
  %shl2168 = shl i64 %967, 36
  %or2169 = or i64 %shr2166, %shl2168
  %arrayidx2170 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %968 = load i64, i64* %arrayidx2170, align 8
  %shr2171 = lshr i64 %968, 34
  %arrayidx2172 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %969 = load i64, i64* %arrayidx2172, align 8
  %shl2173 = shl i64 %969, 30
  %or2174 = or i64 %shr2171, %shl2173
  %xor2175 = xor i64 %or2169, %or2174
  %arrayidx2176 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %970 = load i64, i64* %arrayidx2176, align 8
  %shr2177 = lshr i64 %970, 39
  %arrayidx2178 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %971 = load i64, i64* %arrayidx2178, align 8
  %shl2179 = shl i64 %971, 25
  %or2180 = or i64 %shr2177, %shl2179
  %xor2181 = xor i64 %xor2175, %or2180
  %arrayidx2182 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %972 = load i64, i64* %arrayidx2182, align 8
  %arrayidx2183 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %973 = load i64, i64* %arrayidx2183, align 8
  %or2184 = or i64 %972, %973
  %arrayidx2185 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %974 = load i64, i64* %arrayidx2185, align 8
  %and2186 = and i64 %or2184, %974
  %arrayidx2187 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %975 = load i64, i64* %arrayidx2187, align 8
  %arrayidx2188 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %976 = load i64, i64* %arrayidx2188, align 8
  %and2189 = and i64 %975, %976
  %or2190 = or i64 %and2186, %and2189
  %add2191 = add i64 %xor2181, %or2190
  store i64 %add2191, i64* %t1, align 8
  %977 = load i64, i64* %t0, align 8
  %arrayidx2192 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %978 = load i64, i64* %arrayidx2192, align 8
  %add2193 = add i64 %978, %977
  store i64 %add2193, i64* %arrayidx2192, align 8
  %979 = load i64, i64* %t0, align 8
  %980 = load i64, i64* %t1, align 8
  %add2194 = add i64 %979, %980
  %arrayidx2195 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add2194, i64* %arrayidx2195, align 8
  %arrayidx2196 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %981 = load i64, i64* %arrayidx2196, align 8
  %arrayidx2197 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %982 = load i64, i64* %arrayidx2197, align 8
  %shr2198 = lshr i64 %982, 14
  %arrayidx2199 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %983 = load i64, i64* %arrayidx2199, align 8
  %shl2200 = shl i64 %983, 50
  %or2201 = or i64 %shr2198, %shl2200
  %arrayidx2202 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %984 = load i64, i64* %arrayidx2202, align 8
  %shr2203 = lshr i64 %984, 18
  %arrayidx2204 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %985 = load i64, i64* %arrayidx2204, align 8
  %shl2205 = shl i64 %985, 46
  %or2206 = or i64 %shr2203, %shl2205
  %xor2207 = xor i64 %or2201, %or2206
  %arrayidx2208 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %986 = load i64, i64* %arrayidx2208, align 8
  %shr2209 = lshr i64 %986, 41
  %arrayidx2210 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %987 = load i64, i64* %arrayidx2210, align 8
  %shl2211 = shl i64 %987, 23
  %or2212 = or i64 %shr2209, %shl2211
  %xor2213 = xor i64 %xor2207, %or2212
  %add2214 = add i64 %981, %xor2213
  %arrayidx2215 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %988 = load i64, i64* %arrayidx2215, align 8
  %arrayidx2216 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %989 = load i64, i64* %arrayidx2216, align 8
  %arrayidx2217 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %990 = load i64, i64* %arrayidx2217, align 8
  %arrayidx2218 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %991 = load i64, i64* %arrayidx2218, align 8
  %xor2219 = xor i64 %990, %991
  %and2220 = and i64 %989, %xor2219
  %xor2221 = xor i64 %988, %and2220
  %add2222 = add i64 %add2214, %xor2221
  %add2223 = add i64 %add2222, 5996557281743188959
  %arrayidx2224 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 35
  %992 = load i64, i64* %arrayidx2224, align 8
  %add2225 = add i64 %add2223, %992
  store i64 %add2225, i64* %t0, align 8
  %arrayidx2226 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %993 = load i64, i64* %arrayidx2226, align 8
  %shr2227 = lshr i64 %993, 28
  %arrayidx2228 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %994 = load i64, i64* %arrayidx2228, align 8
  %shl2229 = shl i64 %994, 36
  %or2230 = or i64 %shr2227, %shl2229
  %arrayidx2231 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %995 = load i64, i64* %arrayidx2231, align 8
  %shr2232 = lshr i64 %995, 34
  %arrayidx2233 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %996 = load i64, i64* %arrayidx2233, align 8
  %shl2234 = shl i64 %996, 30
  %or2235 = or i64 %shr2232, %shl2234
  %xor2236 = xor i64 %or2230, %or2235
  %arrayidx2237 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %997 = load i64, i64* %arrayidx2237, align 8
  %shr2238 = lshr i64 %997, 39
  %arrayidx2239 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %998 = load i64, i64* %arrayidx2239, align 8
  %shl2240 = shl i64 %998, 25
  %or2241 = or i64 %shr2238, %shl2240
  %xor2242 = xor i64 %xor2236, %or2241
  %arrayidx2243 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %999 = load i64, i64* %arrayidx2243, align 8
  %arrayidx2244 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1000 = load i64, i64* %arrayidx2244, align 8
  %or2245 = or i64 %999, %1000
  %arrayidx2246 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1001 = load i64, i64* %arrayidx2246, align 8
  %and2247 = and i64 %or2245, %1001
  %arrayidx2248 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1002 = load i64, i64* %arrayidx2248, align 8
  %arrayidx2249 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1003 = load i64, i64* %arrayidx2249, align 8
  %and2250 = and i64 %1002, %1003
  %or2251 = or i64 %and2247, %and2250
  %add2252 = add i64 %xor2242, %or2251
  store i64 %add2252, i64* %t1, align 8
  %1004 = load i64, i64* %t0, align 8
  %arrayidx2253 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1005 = load i64, i64* %arrayidx2253, align 8
  %add2254 = add i64 %1005, %1004
  store i64 %add2254, i64* %arrayidx2253, align 8
  %1006 = load i64, i64* %t0, align 8
  %1007 = load i64, i64* %t1, align 8
  %add2255 = add i64 %1006, %1007
  %arrayidx2256 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add2255, i64* %arrayidx2256, align 8
  %arrayidx2257 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1008 = load i64, i64* %arrayidx2257, align 8
  %arrayidx2258 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1009 = load i64, i64* %arrayidx2258, align 8
  %shr2259 = lshr i64 %1009, 14
  %arrayidx2260 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1010 = load i64, i64* %arrayidx2260, align 8
  %shl2261 = shl i64 %1010, 50
  %or2262 = or i64 %shr2259, %shl2261
  %arrayidx2263 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1011 = load i64, i64* %arrayidx2263, align 8
  %shr2264 = lshr i64 %1011, 18
  %arrayidx2265 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1012 = load i64, i64* %arrayidx2265, align 8
  %shl2266 = shl i64 %1012, 46
  %or2267 = or i64 %shr2264, %shl2266
  %xor2268 = xor i64 %or2262, %or2267
  %arrayidx2269 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1013 = load i64, i64* %arrayidx2269, align 8
  %shr2270 = lshr i64 %1013, 41
  %arrayidx2271 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1014 = load i64, i64* %arrayidx2271, align 8
  %shl2272 = shl i64 %1014, 23
  %or2273 = or i64 %shr2270, %shl2272
  %xor2274 = xor i64 %xor2268, %or2273
  %add2275 = add i64 %1008, %xor2274
  %arrayidx2276 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1015 = load i64, i64* %arrayidx2276, align 8
  %arrayidx2277 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1016 = load i64, i64* %arrayidx2277, align 8
  %arrayidx2278 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1017 = load i64, i64* %arrayidx2278, align 8
  %arrayidx2279 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1018 = load i64, i64* %arrayidx2279, align 8
  %xor2280 = xor i64 %1017, %1018
  %and2281 = and i64 %1016, %xor2280
  %xor2282 = xor i64 %1015, %and2281
  %add2283 = add i64 %add2275, %xor2282
  %add2284 = add i64 %add2283, 7280758554555802590
  %arrayidx2285 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 36
  %1019 = load i64, i64* %arrayidx2285, align 8
  %add2286 = add i64 %add2284, %1019
  store i64 %add2286, i64* %t0, align 8
  %arrayidx2287 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1020 = load i64, i64* %arrayidx2287, align 8
  %shr2288 = lshr i64 %1020, 28
  %arrayidx2289 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1021 = load i64, i64* %arrayidx2289, align 8
  %shl2290 = shl i64 %1021, 36
  %or2291 = or i64 %shr2288, %shl2290
  %arrayidx2292 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1022 = load i64, i64* %arrayidx2292, align 8
  %shr2293 = lshr i64 %1022, 34
  %arrayidx2294 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1023 = load i64, i64* %arrayidx2294, align 8
  %shl2295 = shl i64 %1023, 30
  %or2296 = or i64 %shr2293, %shl2295
  %xor2297 = xor i64 %or2291, %or2296
  %arrayidx2298 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1024 = load i64, i64* %arrayidx2298, align 8
  %shr2299 = lshr i64 %1024, 39
  %arrayidx2300 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1025 = load i64, i64* %arrayidx2300, align 8
  %shl2301 = shl i64 %1025, 25
  %or2302 = or i64 %shr2299, %shl2301
  %xor2303 = xor i64 %xor2297, %or2302
  %arrayidx2304 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1026 = load i64, i64* %arrayidx2304, align 8
  %arrayidx2305 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1027 = load i64, i64* %arrayidx2305, align 8
  %or2306 = or i64 %1026, %1027
  %arrayidx2307 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1028 = load i64, i64* %arrayidx2307, align 8
  %and2308 = and i64 %or2306, %1028
  %arrayidx2309 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1029 = load i64, i64* %arrayidx2309, align 8
  %arrayidx2310 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1030 = load i64, i64* %arrayidx2310, align 8
  %and2311 = and i64 %1029, %1030
  %or2312 = or i64 %and2308, %and2311
  %add2313 = add i64 %xor2303, %or2312
  store i64 %add2313, i64* %t1, align 8
  %1031 = load i64, i64* %t0, align 8
  %arrayidx2314 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1032 = load i64, i64* %arrayidx2314, align 8
  %add2315 = add i64 %1032, %1031
  store i64 %add2315, i64* %arrayidx2314, align 8
  %1033 = load i64, i64* %t0, align 8
  %1034 = load i64, i64* %t1, align 8
  %add2316 = add i64 %1033, %1034
  %arrayidx2317 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add2316, i64* %arrayidx2317, align 8
  %arrayidx2318 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1035 = load i64, i64* %arrayidx2318, align 8
  %arrayidx2319 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1036 = load i64, i64* %arrayidx2319, align 8
  %shr2320 = lshr i64 %1036, 14
  %arrayidx2321 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1037 = load i64, i64* %arrayidx2321, align 8
  %shl2322 = shl i64 %1037, 50
  %or2323 = or i64 %shr2320, %shl2322
  %arrayidx2324 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1038 = load i64, i64* %arrayidx2324, align 8
  %shr2325 = lshr i64 %1038, 18
  %arrayidx2326 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1039 = load i64, i64* %arrayidx2326, align 8
  %shl2327 = shl i64 %1039, 46
  %or2328 = or i64 %shr2325, %shl2327
  %xor2329 = xor i64 %or2323, %or2328
  %arrayidx2330 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1040 = load i64, i64* %arrayidx2330, align 8
  %shr2331 = lshr i64 %1040, 41
  %arrayidx2332 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1041 = load i64, i64* %arrayidx2332, align 8
  %shl2333 = shl i64 %1041, 23
  %or2334 = or i64 %shr2331, %shl2333
  %xor2335 = xor i64 %xor2329, %or2334
  %add2336 = add i64 %1035, %xor2335
  %arrayidx2337 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1042 = load i64, i64* %arrayidx2337, align 8
  %arrayidx2338 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1043 = load i64, i64* %arrayidx2338, align 8
  %arrayidx2339 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1044 = load i64, i64* %arrayidx2339, align 8
  %arrayidx2340 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1045 = load i64, i64* %arrayidx2340, align 8
  %xor2341 = xor i64 %1044, %1045
  %and2342 = and i64 %1043, %xor2341
  %xor2343 = xor i64 %1042, %and2342
  %add2344 = add i64 %add2336, %xor2343
  %add2345 = add i64 %add2344, 8532644243296465576
  %arrayidx2346 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 37
  %1046 = load i64, i64* %arrayidx2346, align 8
  %add2347 = add i64 %add2345, %1046
  store i64 %add2347, i64* %t0, align 8
  %arrayidx2348 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1047 = load i64, i64* %arrayidx2348, align 8
  %shr2349 = lshr i64 %1047, 28
  %arrayidx2350 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1048 = load i64, i64* %arrayidx2350, align 8
  %shl2351 = shl i64 %1048, 36
  %or2352 = or i64 %shr2349, %shl2351
  %arrayidx2353 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1049 = load i64, i64* %arrayidx2353, align 8
  %shr2354 = lshr i64 %1049, 34
  %arrayidx2355 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1050 = load i64, i64* %arrayidx2355, align 8
  %shl2356 = shl i64 %1050, 30
  %or2357 = or i64 %shr2354, %shl2356
  %xor2358 = xor i64 %or2352, %or2357
  %arrayidx2359 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1051 = load i64, i64* %arrayidx2359, align 8
  %shr2360 = lshr i64 %1051, 39
  %arrayidx2361 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1052 = load i64, i64* %arrayidx2361, align 8
  %shl2362 = shl i64 %1052, 25
  %or2363 = or i64 %shr2360, %shl2362
  %xor2364 = xor i64 %xor2358, %or2363
  %arrayidx2365 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1053 = load i64, i64* %arrayidx2365, align 8
  %arrayidx2366 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1054 = load i64, i64* %arrayidx2366, align 8
  %or2367 = or i64 %1053, %1054
  %arrayidx2368 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1055 = load i64, i64* %arrayidx2368, align 8
  %and2369 = and i64 %or2367, %1055
  %arrayidx2370 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1056 = load i64, i64* %arrayidx2370, align 8
  %arrayidx2371 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1057 = load i64, i64* %arrayidx2371, align 8
  %and2372 = and i64 %1056, %1057
  %or2373 = or i64 %and2369, %and2372
  %add2374 = add i64 %xor2364, %or2373
  store i64 %add2374, i64* %t1, align 8
  %1058 = load i64, i64* %t0, align 8
  %arrayidx2375 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1059 = load i64, i64* %arrayidx2375, align 8
  %add2376 = add i64 %1059, %1058
  store i64 %add2376, i64* %arrayidx2375, align 8
  %1060 = load i64, i64* %t0, align 8
  %1061 = load i64, i64* %t1, align 8
  %add2377 = add i64 %1060, %1061
  %arrayidx2378 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add2377, i64* %arrayidx2378, align 8
  %arrayidx2379 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1062 = load i64, i64* %arrayidx2379, align 8
  %arrayidx2380 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1063 = load i64, i64* %arrayidx2380, align 8
  %shr2381 = lshr i64 %1063, 14
  %arrayidx2382 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1064 = load i64, i64* %arrayidx2382, align 8
  %shl2383 = shl i64 %1064, 50
  %or2384 = or i64 %shr2381, %shl2383
  %arrayidx2385 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1065 = load i64, i64* %arrayidx2385, align 8
  %shr2386 = lshr i64 %1065, 18
  %arrayidx2387 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1066 = load i64, i64* %arrayidx2387, align 8
  %shl2388 = shl i64 %1066, 46
  %or2389 = or i64 %shr2386, %shl2388
  %xor2390 = xor i64 %or2384, %or2389
  %arrayidx2391 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1067 = load i64, i64* %arrayidx2391, align 8
  %shr2392 = lshr i64 %1067, 41
  %arrayidx2393 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1068 = load i64, i64* %arrayidx2393, align 8
  %shl2394 = shl i64 %1068, 23
  %or2395 = or i64 %shr2392, %shl2394
  %xor2396 = xor i64 %xor2390, %or2395
  %add2397 = add i64 %1062, %xor2396
  %arrayidx2398 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1069 = load i64, i64* %arrayidx2398, align 8
  %arrayidx2399 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1070 = load i64, i64* %arrayidx2399, align 8
  %arrayidx2400 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1071 = load i64, i64* %arrayidx2400, align 8
  %arrayidx2401 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1072 = load i64, i64* %arrayidx2401, align 8
  %xor2402 = xor i64 %1071, %1072
  %and2403 = and i64 %1070, %xor2402
  %xor2404 = xor i64 %1069, %and2403
  %add2405 = add i64 %add2397, %xor2404
  %add2406 = add i64 %add2405, -9096487096722542874
  %arrayidx2407 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 38
  %1073 = load i64, i64* %arrayidx2407, align 8
  %add2408 = add i64 %add2406, %1073
  store i64 %add2408, i64* %t0, align 8
  %arrayidx2409 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1074 = load i64, i64* %arrayidx2409, align 8
  %shr2410 = lshr i64 %1074, 28
  %arrayidx2411 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1075 = load i64, i64* %arrayidx2411, align 8
  %shl2412 = shl i64 %1075, 36
  %or2413 = or i64 %shr2410, %shl2412
  %arrayidx2414 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1076 = load i64, i64* %arrayidx2414, align 8
  %shr2415 = lshr i64 %1076, 34
  %arrayidx2416 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1077 = load i64, i64* %arrayidx2416, align 8
  %shl2417 = shl i64 %1077, 30
  %or2418 = or i64 %shr2415, %shl2417
  %xor2419 = xor i64 %or2413, %or2418
  %arrayidx2420 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1078 = load i64, i64* %arrayidx2420, align 8
  %shr2421 = lshr i64 %1078, 39
  %arrayidx2422 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1079 = load i64, i64* %arrayidx2422, align 8
  %shl2423 = shl i64 %1079, 25
  %or2424 = or i64 %shr2421, %shl2423
  %xor2425 = xor i64 %xor2419, %or2424
  %arrayidx2426 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1080 = load i64, i64* %arrayidx2426, align 8
  %arrayidx2427 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1081 = load i64, i64* %arrayidx2427, align 8
  %or2428 = or i64 %1080, %1081
  %arrayidx2429 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1082 = load i64, i64* %arrayidx2429, align 8
  %and2430 = and i64 %or2428, %1082
  %arrayidx2431 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1083 = load i64, i64* %arrayidx2431, align 8
  %arrayidx2432 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1084 = load i64, i64* %arrayidx2432, align 8
  %and2433 = and i64 %1083, %1084
  %or2434 = or i64 %and2430, %and2433
  %add2435 = add i64 %xor2425, %or2434
  store i64 %add2435, i64* %t1, align 8
  %1085 = load i64, i64* %t0, align 8
  %arrayidx2436 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1086 = load i64, i64* %arrayidx2436, align 8
  %add2437 = add i64 %1086, %1085
  store i64 %add2437, i64* %arrayidx2436, align 8
  %1087 = load i64, i64* %t0, align 8
  %1088 = load i64, i64* %t1, align 8
  %add2438 = add i64 %1087, %1088
  %arrayidx2439 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add2438, i64* %arrayidx2439, align 8
  %arrayidx2440 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1089 = load i64, i64* %arrayidx2440, align 8
  %arrayidx2441 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1090 = load i64, i64* %arrayidx2441, align 8
  %shr2442 = lshr i64 %1090, 14
  %arrayidx2443 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1091 = load i64, i64* %arrayidx2443, align 8
  %shl2444 = shl i64 %1091, 50
  %or2445 = or i64 %shr2442, %shl2444
  %arrayidx2446 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1092 = load i64, i64* %arrayidx2446, align 8
  %shr2447 = lshr i64 %1092, 18
  %arrayidx2448 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1093 = load i64, i64* %arrayidx2448, align 8
  %shl2449 = shl i64 %1093, 46
  %or2450 = or i64 %shr2447, %shl2449
  %xor2451 = xor i64 %or2445, %or2450
  %arrayidx2452 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1094 = load i64, i64* %arrayidx2452, align 8
  %shr2453 = lshr i64 %1094, 41
  %arrayidx2454 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1095 = load i64, i64* %arrayidx2454, align 8
  %shl2455 = shl i64 %1095, 23
  %or2456 = or i64 %shr2453, %shl2455
  %xor2457 = xor i64 %xor2451, %or2456
  %add2458 = add i64 %1089, %xor2457
  %arrayidx2459 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1096 = load i64, i64* %arrayidx2459, align 8
  %arrayidx2460 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1097 = load i64, i64* %arrayidx2460, align 8
  %arrayidx2461 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1098 = load i64, i64* %arrayidx2461, align 8
  %arrayidx2462 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1099 = load i64, i64* %arrayidx2462, align 8
  %xor2463 = xor i64 %1098, %1099
  %and2464 = and i64 %1097, %xor2463
  %xor2465 = xor i64 %1096, %and2464
  %add2466 = add i64 %add2458, %xor2465
  %add2467 = add i64 %add2466, -7894198246740708037
  %arrayidx2468 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 39
  %1100 = load i64, i64* %arrayidx2468, align 8
  %add2469 = add i64 %add2467, %1100
  store i64 %add2469, i64* %t0, align 8
  %arrayidx2470 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1101 = load i64, i64* %arrayidx2470, align 8
  %shr2471 = lshr i64 %1101, 28
  %arrayidx2472 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1102 = load i64, i64* %arrayidx2472, align 8
  %shl2473 = shl i64 %1102, 36
  %or2474 = or i64 %shr2471, %shl2473
  %arrayidx2475 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1103 = load i64, i64* %arrayidx2475, align 8
  %shr2476 = lshr i64 %1103, 34
  %arrayidx2477 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1104 = load i64, i64* %arrayidx2477, align 8
  %shl2478 = shl i64 %1104, 30
  %or2479 = or i64 %shr2476, %shl2478
  %xor2480 = xor i64 %or2474, %or2479
  %arrayidx2481 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1105 = load i64, i64* %arrayidx2481, align 8
  %shr2482 = lshr i64 %1105, 39
  %arrayidx2483 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1106 = load i64, i64* %arrayidx2483, align 8
  %shl2484 = shl i64 %1106, 25
  %or2485 = or i64 %shr2482, %shl2484
  %xor2486 = xor i64 %xor2480, %or2485
  %arrayidx2487 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1107 = load i64, i64* %arrayidx2487, align 8
  %arrayidx2488 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1108 = load i64, i64* %arrayidx2488, align 8
  %or2489 = or i64 %1107, %1108
  %arrayidx2490 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1109 = load i64, i64* %arrayidx2490, align 8
  %and2491 = and i64 %or2489, %1109
  %arrayidx2492 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1110 = load i64, i64* %arrayidx2492, align 8
  %arrayidx2493 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1111 = load i64, i64* %arrayidx2493, align 8
  %and2494 = and i64 %1110, %1111
  %or2495 = or i64 %and2491, %and2494
  %add2496 = add i64 %xor2486, %or2495
  store i64 %add2496, i64* %t1, align 8
  %1112 = load i64, i64* %t0, align 8
  %arrayidx2497 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1113 = load i64, i64* %arrayidx2497, align 8
  %add2498 = add i64 %1113, %1112
  store i64 %add2498, i64* %arrayidx2497, align 8
  %1114 = load i64, i64* %t0, align 8
  %1115 = load i64, i64* %t1, align 8
  %add2499 = add i64 %1114, %1115
  %arrayidx2500 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add2499, i64* %arrayidx2500, align 8
  %arrayidx2501 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1116 = load i64, i64* %arrayidx2501, align 8
  %arrayidx2502 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1117 = load i64, i64* %arrayidx2502, align 8
  %shr2503 = lshr i64 %1117, 14
  %arrayidx2504 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1118 = load i64, i64* %arrayidx2504, align 8
  %shl2505 = shl i64 %1118, 50
  %or2506 = or i64 %shr2503, %shl2505
  %arrayidx2507 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1119 = load i64, i64* %arrayidx2507, align 8
  %shr2508 = lshr i64 %1119, 18
  %arrayidx2509 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1120 = load i64, i64* %arrayidx2509, align 8
  %shl2510 = shl i64 %1120, 46
  %or2511 = or i64 %shr2508, %shl2510
  %xor2512 = xor i64 %or2506, %or2511
  %arrayidx2513 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1121 = load i64, i64* %arrayidx2513, align 8
  %shr2514 = lshr i64 %1121, 41
  %arrayidx2515 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1122 = load i64, i64* %arrayidx2515, align 8
  %shl2516 = shl i64 %1122, 23
  %or2517 = or i64 %shr2514, %shl2516
  %xor2518 = xor i64 %xor2512, %or2517
  %add2519 = add i64 %1116, %xor2518
  %arrayidx2520 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1123 = load i64, i64* %arrayidx2520, align 8
  %arrayidx2521 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1124 = load i64, i64* %arrayidx2521, align 8
  %arrayidx2522 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1125 = load i64, i64* %arrayidx2522, align 8
  %arrayidx2523 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1126 = load i64, i64* %arrayidx2523, align 8
  %xor2524 = xor i64 %1125, %1126
  %and2525 = and i64 %1124, %xor2524
  %xor2526 = xor i64 %1123, %and2525
  %add2527 = add i64 %add2519, %xor2526
  %add2528 = add i64 %add2527, -6719396339535248540
  %arrayidx2529 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 40
  %1127 = load i64, i64* %arrayidx2529, align 8
  %add2530 = add i64 %add2528, %1127
  store i64 %add2530, i64* %t0, align 8
  %arrayidx2531 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1128 = load i64, i64* %arrayidx2531, align 8
  %shr2532 = lshr i64 %1128, 28
  %arrayidx2533 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1129 = load i64, i64* %arrayidx2533, align 8
  %shl2534 = shl i64 %1129, 36
  %or2535 = or i64 %shr2532, %shl2534
  %arrayidx2536 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1130 = load i64, i64* %arrayidx2536, align 8
  %shr2537 = lshr i64 %1130, 34
  %arrayidx2538 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1131 = load i64, i64* %arrayidx2538, align 8
  %shl2539 = shl i64 %1131, 30
  %or2540 = or i64 %shr2537, %shl2539
  %xor2541 = xor i64 %or2535, %or2540
  %arrayidx2542 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1132 = load i64, i64* %arrayidx2542, align 8
  %shr2543 = lshr i64 %1132, 39
  %arrayidx2544 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1133 = load i64, i64* %arrayidx2544, align 8
  %shl2545 = shl i64 %1133, 25
  %or2546 = or i64 %shr2543, %shl2545
  %xor2547 = xor i64 %xor2541, %or2546
  %arrayidx2548 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1134 = load i64, i64* %arrayidx2548, align 8
  %arrayidx2549 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1135 = load i64, i64* %arrayidx2549, align 8
  %or2550 = or i64 %1134, %1135
  %arrayidx2551 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1136 = load i64, i64* %arrayidx2551, align 8
  %and2552 = and i64 %or2550, %1136
  %arrayidx2553 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1137 = load i64, i64* %arrayidx2553, align 8
  %arrayidx2554 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1138 = load i64, i64* %arrayidx2554, align 8
  %and2555 = and i64 %1137, %1138
  %or2556 = or i64 %and2552, %and2555
  %add2557 = add i64 %xor2547, %or2556
  store i64 %add2557, i64* %t1, align 8
  %1139 = load i64, i64* %t0, align 8
  %arrayidx2558 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1140 = load i64, i64* %arrayidx2558, align 8
  %add2559 = add i64 %1140, %1139
  store i64 %add2559, i64* %arrayidx2558, align 8
  %1141 = load i64, i64* %t0, align 8
  %1142 = load i64, i64* %t1, align 8
  %add2560 = add i64 %1141, %1142
  %arrayidx2561 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add2560, i64* %arrayidx2561, align 8
  %arrayidx2562 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1143 = load i64, i64* %arrayidx2562, align 8
  %arrayidx2563 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1144 = load i64, i64* %arrayidx2563, align 8
  %shr2564 = lshr i64 %1144, 14
  %arrayidx2565 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1145 = load i64, i64* %arrayidx2565, align 8
  %shl2566 = shl i64 %1145, 50
  %or2567 = or i64 %shr2564, %shl2566
  %arrayidx2568 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1146 = load i64, i64* %arrayidx2568, align 8
  %shr2569 = lshr i64 %1146, 18
  %arrayidx2570 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1147 = load i64, i64* %arrayidx2570, align 8
  %shl2571 = shl i64 %1147, 46
  %or2572 = or i64 %shr2569, %shl2571
  %xor2573 = xor i64 %or2567, %or2572
  %arrayidx2574 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1148 = load i64, i64* %arrayidx2574, align 8
  %shr2575 = lshr i64 %1148, 41
  %arrayidx2576 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1149 = load i64, i64* %arrayidx2576, align 8
  %shl2577 = shl i64 %1149, 23
  %or2578 = or i64 %shr2575, %shl2577
  %xor2579 = xor i64 %xor2573, %or2578
  %add2580 = add i64 %1143, %xor2579
  %arrayidx2581 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1150 = load i64, i64* %arrayidx2581, align 8
  %arrayidx2582 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1151 = load i64, i64* %arrayidx2582, align 8
  %arrayidx2583 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1152 = load i64, i64* %arrayidx2583, align 8
  %arrayidx2584 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1153 = load i64, i64* %arrayidx2584, align 8
  %xor2585 = xor i64 %1152, %1153
  %and2586 = and i64 %1151, %xor2585
  %xor2587 = xor i64 %1150, %and2586
  %add2588 = add i64 %add2580, %xor2587
  %add2589 = add i64 %add2588, -6333637450476146687
  %arrayidx2590 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 41
  %1154 = load i64, i64* %arrayidx2590, align 8
  %add2591 = add i64 %add2589, %1154
  store i64 %add2591, i64* %t0, align 8
  %arrayidx2592 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1155 = load i64, i64* %arrayidx2592, align 8
  %shr2593 = lshr i64 %1155, 28
  %arrayidx2594 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1156 = load i64, i64* %arrayidx2594, align 8
  %shl2595 = shl i64 %1156, 36
  %or2596 = or i64 %shr2593, %shl2595
  %arrayidx2597 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1157 = load i64, i64* %arrayidx2597, align 8
  %shr2598 = lshr i64 %1157, 34
  %arrayidx2599 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1158 = load i64, i64* %arrayidx2599, align 8
  %shl2600 = shl i64 %1158, 30
  %or2601 = or i64 %shr2598, %shl2600
  %xor2602 = xor i64 %or2596, %or2601
  %arrayidx2603 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1159 = load i64, i64* %arrayidx2603, align 8
  %shr2604 = lshr i64 %1159, 39
  %arrayidx2605 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1160 = load i64, i64* %arrayidx2605, align 8
  %shl2606 = shl i64 %1160, 25
  %or2607 = or i64 %shr2604, %shl2606
  %xor2608 = xor i64 %xor2602, %or2607
  %arrayidx2609 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1161 = load i64, i64* %arrayidx2609, align 8
  %arrayidx2610 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1162 = load i64, i64* %arrayidx2610, align 8
  %or2611 = or i64 %1161, %1162
  %arrayidx2612 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1163 = load i64, i64* %arrayidx2612, align 8
  %and2613 = and i64 %or2611, %1163
  %arrayidx2614 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1164 = load i64, i64* %arrayidx2614, align 8
  %arrayidx2615 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1165 = load i64, i64* %arrayidx2615, align 8
  %and2616 = and i64 %1164, %1165
  %or2617 = or i64 %and2613, %and2616
  %add2618 = add i64 %xor2608, %or2617
  store i64 %add2618, i64* %t1, align 8
  %1166 = load i64, i64* %t0, align 8
  %arrayidx2619 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1167 = load i64, i64* %arrayidx2619, align 8
  %add2620 = add i64 %1167, %1166
  store i64 %add2620, i64* %arrayidx2619, align 8
  %1168 = load i64, i64* %t0, align 8
  %1169 = load i64, i64* %t1, align 8
  %add2621 = add i64 %1168, %1169
  %arrayidx2622 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add2621, i64* %arrayidx2622, align 8
  %arrayidx2623 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1170 = load i64, i64* %arrayidx2623, align 8
  %arrayidx2624 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1171 = load i64, i64* %arrayidx2624, align 8
  %shr2625 = lshr i64 %1171, 14
  %arrayidx2626 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1172 = load i64, i64* %arrayidx2626, align 8
  %shl2627 = shl i64 %1172, 50
  %or2628 = or i64 %shr2625, %shl2627
  %arrayidx2629 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1173 = load i64, i64* %arrayidx2629, align 8
  %shr2630 = lshr i64 %1173, 18
  %arrayidx2631 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1174 = load i64, i64* %arrayidx2631, align 8
  %shl2632 = shl i64 %1174, 46
  %or2633 = or i64 %shr2630, %shl2632
  %xor2634 = xor i64 %or2628, %or2633
  %arrayidx2635 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1175 = load i64, i64* %arrayidx2635, align 8
  %shr2636 = lshr i64 %1175, 41
  %arrayidx2637 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1176 = load i64, i64* %arrayidx2637, align 8
  %shl2638 = shl i64 %1176, 23
  %or2639 = or i64 %shr2636, %shl2638
  %xor2640 = xor i64 %xor2634, %or2639
  %add2641 = add i64 %1170, %xor2640
  %arrayidx2642 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1177 = load i64, i64* %arrayidx2642, align 8
  %arrayidx2643 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1178 = load i64, i64* %arrayidx2643, align 8
  %arrayidx2644 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1179 = load i64, i64* %arrayidx2644, align 8
  %arrayidx2645 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1180 = load i64, i64* %arrayidx2645, align 8
  %xor2646 = xor i64 %1179, %1180
  %and2647 = and i64 %1178, %xor2646
  %xor2648 = xor i64 %1177, %and2647
  %add2649 = add i64 %add2641, %xor2648
  %add2650 = add i64 %add2649, -4446306890439682159
  %arrayidx2651 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 42
  %1181 = load i64, i64* %arrayidx2651, align 8
  %add2652 = add i64 %add2650, %1181
  store i64 %add2652, i64* %t0, align 8
  %arrayidx2653 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1182 = load i64, i64* %arrayidx2653, align 8
  %shr2654 = lshr i64 %1182, 28
  %arrayidx2655 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1183 = load i64, i64* %arrayidx2655, align 8
  %shl2656 = shl i64 %1183, 36
  %or2657 = or i64 %shr2654, %shl2656
  %arrayidx2658 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1184 = load i64, i64* %arrayidx2658, align 8
  %shr2659 = lshr i64 %1184, 34
  %arrayidx2660 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1185 = load i64, i64* %arrayidx2660, align 8
  %shl2661 = shl i64 %1185, 30
  %or2662 = or i64 %shr2659, %shl2661
  %xor2663 = xor i64 %or2657, %or2662
  %arrayidx2664 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1186 = load i64, i64* %arrayidx2664, align 8
  %shr2665 = lshr i64 %1186, 39
  %arrayidx2666 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1187 = load i64, i64* %arrayidx2666, align 8
  %shl2667 = shl i64 %1187, 25
  %or2668 = or i64 %shr2665, %shl2667
  %xor2669 = xor i64 %xor2663, %or2668
  %arrayidx2670 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1188 = load i64, i64* %arrayidx2670, align 8
  %arrayidx2671 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1189 = load i64, i64* %arrayidx2671, align 8
  %or2672 = or i64 %1188, %1189
  %arrayidx2673 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1190 = load i64, i64* %arrayidx2673, align 8
  %and2674 = and i64 %or2672, %1190
  %arrayidx2675 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1191 = load i64, i64* %arrayidx2675, align 8
  %arrayidx2676 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1192 = load i64, i64* %arrayidx2676, align 8
  %and2677 = and i64 %1191, %1192
  %or2678 = or i64 %and2674, %and2677
  %add2679 = add i64 %xor2669, %or2678
  store i64 %add2679, i64* %t1, align 8
  %1193 = load i64, i64* %t0, align 8
  %arrayidx2680 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1194 = load i64, i64* %arrayidx2680, align 8
  %add2681 = add i64 %1194, %1193
  store i64 %add2681, i64* %arrayidx2680, align 8
  %1195 = load i64, i64* %t0, align 8
  %1196 = load i64, i64* %t1, align 8
  %add2682 = add i64 %1195, %1196
  %arrayidx2683 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add2682, i64* %arrayidx2683, align 8
  %arrayidx2684 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1197 = load i64, i64* %arrayidx2684, align 8
  %arrayidx2685 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1198 = load i64, i64* %arrayidx2685, align 8
  %shr2686 = lshr i64 %1198, 14
  %arrayidx2687 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1199 = load i64, i64* %arrayidx2687, align 8
  %shl2688 = shl i64 %1199, 50
  %or2689 = or i64 %shr2686, %shl2688
  %arrayidx2690 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1200 = load i64, i64* %arrayidx2690, align 8
  %shr2691 = lshr i64 %1200, 18
  %arrayidx2692 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1201 = load i64, i64* %arrayidx2692, align 8
  %shl2693 = shl i64 %1201, 46
  %or2694 = or i64 %shr2691, %shl2693
  %xor2695 = xor i64 %or2689, %or2694
  %arrayidx2696 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1202 = load i64, i64* %arrayidx2696, align 8
  %shr2697 = lshr i64 %1202, 41
  %arrayidx2698 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1203 = load i64, i64* %arrayidx2698, align 8
  %shl2699 = shl i64 %1203, 23
  %or2700 = or i64 %shr2697, %shl2699
  %xor2701 = xor i64 %xor2695, %or2700
  %add2702 = add i64 %1197, %xor2701
  %arrayidx2703 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1204 = load i64, i64* %arrayidx2703, align 8
  %arrayidx2704 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1205 = load i64, i64* %arrayidx2704, align 8
  %arrayidx2705 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1206 = load i64, i64* %arrayidx2705, align 8
  %arrayidx2706 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1207 = load i64, i64* %arrayidx2706, align 8
  %xor2707 = xor i64 %1206, %1207
  %and2708 = and i64 %1205, %xor2707
  %xor2709 = xor i64 %1204, %and2708
  %add2710 = add i64 %add2702, %xor2709
  %add2711 = add i64 %add2710, -4076793802049405392
  %arrayidx2712 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 43
  %1208 = load i64, i64* %arrayidx2712, align 8
  %add2713 = add i64 %add2711, %1208
  store i64 %add2713, i64* %t0, align 8
  %arrayidx2714 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1209 = load i64, i64* %arrayidx2714, align 8
  %shr2715 = lshr i64 %1209, 28
  %arrayidx2716 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1210 = load i64, i64* %arrayidx2716, align 8
  %shl2717 = shl i64 %1210, 36
  %or2718 = or i64 %shr2715, %shl2717
  %arrayidx2719 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1211 = load i64, i64* %arrayidx2719, align 8
  %shr2720 = lshr i64 %1211, 34
  %arrayidx2721 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1212 = load i64, i64* %arrayidx2721, align 8
  %shl2722 = shl i64 %1212, 30
  %or2723 = or i64 %shr2720, %shl2722
  %xor2724 = xor i64 %or2718, %or2723
  %arrayidx2725 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1213 = load i64, i64* %arrayidx2725, align 8
  %shr2726 = lshr i64 %1213, 39
  %arrayidx2727 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1214 = load i64, i64* %arrayidx2727, align 8
  %shl2728 = shl i64 %1214, 25
  %or2729 = or i64 %shr2726, %shl2728
  %xor2730 = xor i64 %xor2724, %or2729
  %arrayidx2731 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1215 = load i64, i64* %arrayidx2731, align 8
  %arrayidx2732 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1216 = load i64, i64* %arrayidx2732, align 8
  %or2733 = or i64 %1215, %1216
  %arrayidx2734 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1217 = load i64, i64* %arrayidx2734, align 8
  %and2735 = and i64 %or2733, %1217
  %arrayidx2736 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1218 = load i64, i64* %arrayidx2736, align 8
  %arrayidx2737 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1219 = load i64, i64* %arrayidx2737, align 8
  %and2738 = and i64 %1218, %1219
  %or2739 = or i64 %and2735, %and2738
  %add2740 = add i64 %xor2730, %or2739
  store i64 %add2740, i64* %t1, align 8
  %1220 = load i64, i64* %t0, align 8
  %arrayidx2741 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1221 = load i64, i64* %arrayidx2741, align 8
  %add2742 = add i64 %1221, %1220
  store i64 %add2742, i64* %arrayidx2741, align 8
  %1222 = load i64, i64* %t0, align 8
  %1223 = load i64, i64* %t1, align 8
  %add2743 = add i64 %1222, %1223
  %arrayidx2744 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add2743, i64* %arrayidx2744, align 8
  %arrayidx2745 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1224 = load i64, i64* %arrayidx2745, align 8
  %arrayidx2746 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1225 = load i64, i64* %arrayidx2746, align 8
  %shr2747 = lshr i64 %1225, 14
  %arrayidx2748 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1226 = load i64, i64* %arrayidx2748, align 8
  %shl2749 = shl i64 %1226, 50
  %or2750 = or i64 %shr2747, %shl2749
  %arrayidx2751 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1227 = load i64, i64* %arrayidx2751, align 8
  %shr2752 = lshr i64 %1227, 18
  %arrayidx2753 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1228 = load i64, i64* %arrayidx2753, align 8
  %shl2754 = shl i64 %1228, 46
  %or2755 = or i64 %shr2752, %shl2754
  %xor2756 = xor i64 %or2750, %or2755
  %arrayidx2757 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1229 = load i64, i64* %arrayidx2757, align 8
  %shr2758 = lshr i64 %1229, 41
  %arrayidx2759 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1230 = load i64, i64* %arrayidx2759, align 8
  %shl2760 = shl i64 %1230, 23
  %or2761 = or i64 %shr2758, %shl2760
  %xor2762 = xor i64 %xor2756, %or2761
  %add2763 = add i64 %1224, %xor2762
  %arrayidx2764 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1231 = load i64, i64* %arrayidx2764, align 8
  %arrayidx2765 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1232 = load i64, i64* %arrayidx2765, align 8
  %arrayidx2766 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1233 = load i64, i64* %arrayidx2766, align 8
  %arrayidx2767 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1234 = load i64, i64* %arrayidx2767, align 8
  %xor2768 = xor i64 %1233, %1234
  %and2769 = and i64 %1232, %xor2768
  %xor2770 = xor i64 %1231, %and2769
  %add2771 = add i64 %add2763, %xor2770
  %add2772 = add i64 %add2771, -3345356375505022440
  %arrayidx2773 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 44
  %1235 = load i64, i64* %arrayidx2773, align 8
  %add2774 = add i64 %add2772, %1235
  store i64 %add2774, i64* %t0, align 8
  %arrayidx2775 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1236 = load i64, i64* %arrayidx2775, align 8
  %shr2776 = lshr i64 %1236, 28
  %arrayidx2777 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1237 = load i64, i64* %arrayidx2777, align 8
  %shl2778 = shl i64 %1237, 36
  %or2779 = or i64 %shr2776, %shl2778
  %arrayidx2780 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1238 = load i64, i64* %arrayidx2780, align 8
  %shr2781 = lshr i64 %1238, 34
  %arrayidx2782 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1239 = load i64, i64* %arrayidx2782, align 8
  %shl2783 = shl i64 %1239, 30
  %or2784 = or i64 %shr2781, %shl2783
  %xor2785 = xor i64 %or2779, %or2784
  %arrayidx2786 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1240 = load i64, i64* %arrayidx2786, align 8
  %shr2787 = lshr i64 %1240, 39
  %arrayidx2788 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1241 = load i64, i64* %arrayidx2788, align 8
  %shl2789 = shl i64 %1241, 25
  %or2790 = or i64 %shr2787, %shl2789
  %xor2791 = xor i64 %xor2785, %or2790
  %arrayidx2792 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1242 = load i64, i64* %arrayidx2792, align 8
  %arrayidx2793 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1243 = load i64, i64* %arrayidx2793, align 8
  %or2794 = or i64 %1242, %1243
  %arrayidx2795 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1244 = load i64, i64* %arrayidx2795, align 8
  %and2796 = and i64 %or2794, %1244
  %arrayidx2797 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1245 = load i64, i64* %arrayidx2797, align 8
  %arrayidx2798 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1246 = load i64, i64* %arrayidx2798, align 8
  %and2799 = and i64 %1245, %1246
  %or2800 = or i64 %and2796, %and2799
  %add2801 = add i64 %xor2791, %or2800
  store i64 %add2801, i64* %t1, align 8
  %1247 = load i64, i64* %t0, align 8
  %arrayidx2802 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1248 = load i64, i64* %arrayidx2802, align 8
  %add2803 = add i64 %1248, %1247
  store i64 %add2803, i64* %arrayidx2802, align 8
  %1249 = load i64, i64* %t0, align 8
  %1250 = load i64, i64* %t1, align 8
  %add2804 = add i64 %1249, %1250
  %arrayidx2805 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add2804, i64* %arrayidx2805, align 8
  %arrayidx2806 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1251 = load i64, i64* %arrayidx2806, align 8
  %arrayidx2807 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1252 = load i64, i64* %arrayidx2807, align 8
  %shr2808 = lshr i64 %1252, 14
  %arrayidx2809 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1253 = load i64, i64* %arrayidx2809, align 8
  %shl2810 = shl i64 %1253, 50
  %or2811 = or i64 %shr2808, %shl2810
  %arrayidx2812 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1254 = load i64, i64* %arrayidx2812, align 8
  %shr2813 = lshr i64 %1254, 18
  %arrayidx2814 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1255 = load i64, i64* %arrayidx2814, align 8
  %shl2815 = shl i64 %1255, 46
  %or2816 = or i64 %shr2813, %shl2815
  %xor2817 = xor i64 %or2811, %or2816
  %arrayidx2818 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1256 = load i64, i64* %arrayidx2818, align 8
  %shr2819 = lshr i64 %1256, 41
  %arrayidx2820 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1257 = load i64, i64* %arrayidx2820, align 8
  %shl2821 = shl i64 %1257, 23
  %or2822 = or i64 %shr2819, %shl2821
  %xor2823 = xor i64 %xor2817, %or2822
  %add2824 = add i64 %1251, %xor2823
  %arrayidx2825 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1258 = load i64, i64* %arrayidx2825, align 8
  %arrayidx2826 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1259 = load i64, i64* %arrayidx2826, align 8
  %arrayidx2827 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1260 = load i64, i64* %arrayidx2827, align 8
  %arrayidx2828 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1261 = load i64, i64* %arrayidx2828, align 8
  %xor2829 = xor i64 %1260, %1261
  %and2830 = and i64 %1259, %xor2829
  %xor2831 = xor i64 %1258, %and2830
  %add2832 = add i64 %add2824, %xor2831
  %add2833 = add i64 %add2832, -2983346525034927856
  %arrayidx2834 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 45
  %1262 = load i64, i64* %arrayidx2834, align 8
  %add2835 = add i64 %add2833, %1262
  store i64 %add2835, i64* %t0, align 8
  %arrayidx2836 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1263 = load i64, i64* %arrayidx2836, align 8
  %shr2837 = lshr i64 %1263, 28
  %arrayidx2838 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1264 = load i64, i64* %arrayidx2838, align 8
  %shl2839 = shl i64 %1264, 36
  %or2840 = or i64 %shr2837, %shl2839
  %arrayidx2841 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1265 = load i64, i64* %arrayidx2841, align 8
  %shr2842 = lshr i64 %1265, 34
  %arrayidx2843 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1266 = load i64, i64* %arrayidx2843, align 8
  %shl2844 = shl i64 %1266, 30
  %or2845 = or i64 %shr2842, %shl2844
  %xor2846 = xor i64 %or2840, %or2845
  %arrayidx2847 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1267 = load i64, i64* %arrayidx2847, align 8
  %shr2848 = lshr i64 %1267, 39
  %arrayidx2849 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1268 = load i64, i64* %arrayidx2849, align 8
  %shl2850 = shl i64 %1268, 25
  %or2851 = or i64 %shr2848, %shl2850
  %xor2852 = xor i64 %xor2846, %or2851
  %arrayidx2853 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1269 = load i64, i64* %arrayidx2853, align 8
  %arrayidx2854 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1270 = load i64, i64* %arrayidx2854, align 8
  %or2855 = or i64 %1269, %1270
  %arrayidx2856 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1271 = load i64, i64* %arrayidx2856, align 8
  %and2857 = and i64 %or2855, %1271
  %arrayidx2858 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1272 = load i64, i64* %arrayidx2858, align 8
  %arrayidx2859 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1273 = load i64, i64* %arrayidx2859, align 8
  %and2860 = and i64 %1272, %1273
  %or2861 = or i64 %and2857, %and2860
  %add2862 = add i64 %xor2852, %or2861
  store i64 %add2862, i64* %t1, align 8
  %1274 = load i64, i64* %t0, align 8
  %arrayidx2863 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1275 = load i64, i64* %arrayidx2863, align 8
  %add2864 = add i64 %1275, %1274
  store i64 %add2864, i64* %arrayidx2863, align 8
  %1276 = load i64, i64* %t0, align 8
  %1277 = load i64, i64* %t1, align 8
  %add2865 = add i64 %1276, %1277
  %arrayidx2866 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add2865, i64* %arrayidx2866, align 8
  %arrayidx2867 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1278 = load i64, i64* %arrayidx2867, align 8
  %arrayidx2868 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1279 = load i64, i64* %arrayidx2868, align 8
  %shr2869 = lshr i64 %1279, 14
  %arrayidx2870 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1280 = load i64, i64* %arrayidx2870, align 8
  %shl2871 = shl i64 %1280, 50
  %or2872 = or i64 %shr2869, %shl2871
  %arrayidx2873 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1281 = load i64, i64* %arrayidx2873, align 8
  %shr2874 = lshr i64 %1281, 18
  %arrayidx2875 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1282 = load i64, i64* %arrayidx2875, align 8
  %shl2876 = shl i64 %1282, 46
  %or2877 = or i64 %shr2874, %shl2876
  %xor2878 = xor i64 %or2872, %or2877
  %arrayidx2879 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1283 = load i64, i64* %arrayidx2879, align 8
  %shr2880 = lshr i64 %1283, 41
  %arrayidx2881 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1284 = load i64, i64* %arrayidx2881, align 8
  %shl2882 = shl i64 %1284, 23
  %or2883 = or i64 %shr2880, %shl2882
  %xor2884 = xor i64 %xor2878, %or2883
  %add2885 = add i64 %1278, %xor2884
  %arrayidx2886 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1285 = load i64, i64* %arrayidx2886, align 8
  %arrayidx2887 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1286 = load i64, i64* %arrayidx2887, align 8
  %arrayidx2888 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1287 = load i64, i64* %arrayidx2888, align 8
  %arrayidx2889 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1288 = load i64, i64* %arrayidx2889, align 8
  %xor2890 = xor i64 %1287, %1288
  %and2891 = and i64 %1286, %xor2890
  %xor2892 = xor i64 %1285, %and2891
  %add2893 = add i64 %add2885, %xor2892
  %add2894 = add i64 %add2893, -860691631967231958
  %arrayidx2895 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 46
  %1289 = load i64, i64* %arrayidx2895, align 8
  %add2896 = add i64 %add2894, %1289
  store i64 %add2896, i64* %t0, align 8
  %arrayidx2897 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1290 = load i64, i64* %arrayidx2897, align 8
  %shr2898 = lshr i64 %1290, 28
  %arrayidx2899 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1291 = load i64, i64* %arrayidx2899, align 8
  %shl2900 = shl i64 %1291, 36
  %or2901 = or i64 %shr2898, %shl2900
  %arrayidx2902 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1292 = load i64, i64* %arrayidx2902, align 8
  %shr2903 = lshr i64 %1292, 34
  %arrayidx2904 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1293 = load i64, i64* %arrayidx2904, align 8
  %shl2905 = shl i64 %1293, 30
  %or2906 = or i64 %shr2903, %shl2905
  %xor2907 = xor i64 %or2901, %or2906
  %arrayidx2908 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1294 = load i64, i64* %arrayidx2908, align 8
  %shr2909 = lshr i64 %1294, 39
  %arrayidx2910 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1295 = load i64, i64* %arrayidx2910, align 8
  %shl2911 = shl i64 %1295, 25
  %or2912 = or i64 %shr2909, %shl2911
  %xor2913 = xor i64 %xor2907, %or2912
  %arrayidx2914 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1296 = load i64, i64* %arrayidx2914, align 8
  %arrayidx2915 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1297 = load i64, i64* %arrayidx2915, align 8
  %or2916 = or i64 %1296, %1297
  %arrayidx2917 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1298 = load i64, i64* %arrayidx2917, align 8
  %and2918 = and i64 %or2916, %1298
  %arrayidx2919 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1299 = load i64, i64* %arrayidx2919, align 8
  %arrayidx2920 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1300 = load i64, i64* %arrayidx2920, align 8
  %and2921 = and i64 %1299, %1300
  %or2922 = or i64 %and2918, %and2921
  %add2923 = add i64 %xor2913, %or2922
  store i64 %add2923, i64* %t1, align 8
  %1301 = load i64, i64* %t0, align 8
  %arrayidx2924 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1302 = load i64, i64* %arrayidx2924, align 8
  %add2925 = add i64 %1302, %1301
  store i64 %add2925, i64* %arrayidx2924, align 8
  %1303 = load i64, i64* %t0, align 8
  %1304 = load i64, i64* %t1, align 8
  %add2926 = add i64 %1303, %1304
  %arrayidx2927 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add2926, i64* %arrayidx2927, align 8
  %arrayidx2928 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1305 = load i64, i64* %arrayidx2928, align 8
  %arrayidx2929 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1306 = load i64, i64* %arrayidx2929, align 8
  %shr2930 = lshr i64 %1306, 14
  %arrayidx2931 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1307 = load i64, i64* %arrayidx2931, align 8
  %shl2932 = shl i64 %1307, 50
  %or2933 = or i64 %shr2930, %shl2932
  %arrayidx2934 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1308 = load i64, i64* %arrayidx2934, align 8
  %shr2935 = lshr i64 %1308, 18
  %arrayidx2936 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1309 = load i64, i64* %arrayidx2936, align 8
  %shl2937 = shl i64 %1309, 46
  %or2938 = or i64 %shr2935, %shl2937
  %xor2939 = xor i64 %or2933, %or2938
  %arrayidx2940 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1310 = load i64, i64* %arrayidx2940, align 8
  %shr2941 = lshr i64 %1310, 41
  %arrayidx2942 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1311 = load i64, i64* %arrayidx2942, align 8
  %shl2943 = shl i64 %1311, 23
  %or2944 = or i64 %shr2941, %shl2943
  %xor2945 = xor i64 %xor2939, %or2944
  %add2946 = add i64 %1305, %xor2945
  %arrayidx2947 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1312 = load i64, i64* %arrayidx2947, align 8
  %arrayidx2948 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1313 = load i64, i64* %arrayidx2948, align 8
  %arrayidx2949 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1314 = load i64, i64* %arrayidx2949, align 8
  %arrayidx2950 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1315 = load i64, i64* %arrayidx2950, align 8
  %xor2951 = xor i64 %1314, %1315
  %and2952 = and i64 %1313, %xor2951
  %xor2953 = xor i64 %1312, %and2952
  %add2954 = add i64 %add2946, %xor2953
  %add2955 = add i64 %add2954, 1182934255886127544
  %arrayidx2956 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 47
  %1316 = load i64, i64* %arrayidx2956, align 8
  %add2957 = add i64 %add2955, %1316
  store i64 %add2957, i64* %t0, align 8
  %arrayidx2958 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1317 = load i64, i64* %arrayidx2958, align 8
  %shr2959 = lshr i64 %1317, 28
  %arrayidx2960 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1318 = load i64, i64* %arrayidx2960, align 8
  %shl2961 = shl i64 %1318, 36
  %or2962 = or i64 %shr2959, %shl2961
  %arrayidx2963 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1319 = load i64, i64* %arrayidx2963, align 8
  %shr2964 = lshr i64 %1319, 34
  %arrayidx2965 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1320 = load i64, i64* %arrayidx2965, align 8
  %shl2966 = shl i64 %1320, 30
  %or2967 = or i64 %shr2964, %shl2966
  %xor2968 = xor i64 %or2962, %or2967
  %arrayidx2969 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1321 = load i64, i64* %arrayidx2969, align 8
  %shr2970 = lshr i64 %1321, 39
  %arrayidx2971 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1322 = load i64, i64* %arrayidx2971, align 8
  %shl2972 = shl i64 %1322, 25
  %or2973 = or i64 %shr2970, %shl2972
  %xor2974 = xor i64 %xor2968, %or2973
  %arrayidx2975 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1323 = load i64, i64* %arrayidx2975, align 8
  %arrayidx2976 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1324 = load i64, i64* %arrayidx2976, align 8
  %or2977 = or i64 %1323, %1324
  %arrayidx2978 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1325 = load i64, i64* %arrayidx2978, align 8
  %and2979 = and i64 %or2977, %1325
  %arrayidx2980 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1326 = load i64, i64* %arrayidx2980, align 8
  %arrayidx2981 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1327 = load i64, i64* %arrayidx2981, align 8
  %and2982 = and i64 %1326, %1327
  %or2983 = or i64 %and2979, %and2982
  %add2984 = add i64 %xor2974, %or2983
  store i64 %add2984, i64* %t1, align 8
  %1328 = load i64, i64* %t0, align 8
  %arrayidx2985 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1329 = load i64, i64* %arrayidx2985, align 8
  %add2986 = add i64 %1329, %1328
  store i64 %add2986, i64* %arrayidx2985, align 8
  %1330 = load i64, i64* %t0, align 8
  %1331 = load i64, i64* %t1, align 8
  %add2987 = add i64 %1330, %1331
  %arrayidx2988 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add2987, i64* %arrayidx2988, align 8
  %arrayidx2989 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1332 = load i64, i64* %arrayidx2989, align 8
  %arrayidx2990 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1333 = load i64, i64* %arrayidx2990, align 8
  %shr2991 = lshr i64 %1333, 14
  %arrayidx2992 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1334 = load i64, i64* %arrayidx2992, align 8
  %shl2993 = shl i64 %1334, 50
  %or2994 = or i64 %shr2991, %shl2993
  %arrayidx2995 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1335 = load i64, i64* %arrayidx2995, align 8
  %shr2996 = lshr i64 %1335, 18
  %arrayidx2997 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1336 = load i64, i64* %arrayidx2997, align 8
  %shl2998 = shl i64 %1336, 46
  %or2999 = or i64 %shr2996, %shl2998
  %xor3000 = xor i64 %or2994, %or2999
  %arrayidx3001 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1337 = load i64, i64* %arrayidx3001, align 8
  %shr3002 = lshr i64 %1337, 41
  %arrayidx3003 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1338 = load i64, i64* %arrayidx3003, align 8
  %shl3004 = shl i64 %1338, 23
  %or3005 = or i64 %shr3002, %shl3004
  %xor3006 = xor i64 %xor3000, %or3005
  %add3007 = add i64 %1332, %xor3006
  %arrayidx3008 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1339 = load i64, i64* %arrayidx3008, align 8
  %arrayidx3009 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1340 = load i64, i64* %arrayidx3009, align 8
  %arrayidx3010 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1341 = load i64, i64* %arrayidx3010, align 8
  %arrayidx3011 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1342 = load i64, i64* %arrayidx3011, align 8
  %xor3012 = xor i64 %1341, %1342
  %and3013 = and i64 %1340, %xor3012
  %xor3014 = xor i64 %1339, %and3013
  %add3015 = add i64 %add3007, %xor3014
  %add3016 = add i64 %add3015, 1847814050463011016
  %arrayidx3017 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 48
  %1343 = load i64, i64* %arrayidx3017, align 8
  %add3018 = add i64 %add3016, %1343
  store i64 %add3018, i64* %t0, align 8
  %arrayidx3019 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1344 = load i64, i64* %arrayidx3019, align 8
  %shr3020 = lshr i64 %1344, 28
  %arrayidx3021 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1345 = load i64, i64* %arrayidx3021, align 8
  %shl3022 = shl i64 %1345, 36
  %or3023 = or i64 %shr3020, %shl3022
  %arrayidx3024 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1346 = load i64, i64* %arrayidx3024, align 8
  %shr3025 = lshr i64 %1346, 34
  %arrayidx3026 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1347 = load i64, i64* %arrayidx3026, align 8
  %shl3027 = shl i64 %1347, 30
  %or3028 = or i64 %shr3025, %shl3027
  %xor3029 = xor i64 %or3023, %or3028
  %arrayidx3030 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1348 = load i64, i64* %arrayidx3030, align 8
  %shr3031 = lshr i64 %1348, 39
  %arrayidx3032 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1349 = load i64, i64* %arrayidx3032, align 8
  %shl3033 = shl i64 %1349, 25
  %or3034 = or i64 %shr3031, %shl3033
  %xor3035 = xor i64 %xor3029, %or3034
  %arrayidx3036 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1350 = load i64, i64* %arrayidx3036, align 8
  %arrayidx3037 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1351 = load i64, i64* %arrayidx3037, align 8
  %or3038 = or i64 %1350, %1351
  %arrayidx3039 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1352 = load i64, i64* %arrayidx3039, align 8
  %and3040 = and i64 %or3038, %1352
  %arrayidx3041 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1353 = load i64, i64* %arrayidx3041, align 8
  %arrayidx3042 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1354 = load i64, i64* %arrayidx3042, align 8
  %and3043 = and i64 %1353, %1354
  %or3044 = or i64 %and3040, %and3043
  %add3045 = add i64 %xor3035, %or3044
  store i64 %add3045, i64* %t1, align 8
  %1355 = load i64, i64* %t0, align 8
  %arrayidx3046 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1356 = load i64, i64* %arrayidx3046, align 8
  %add3047 = add i64 %1356, %1355
  store i64 %add3047, i64* %arrayidx3046, align 8
  %1357 = load i64, i64* %t0, align 8
  %1358 = load i64, i64* %t1, align 8
  %add3048 = add i64 %1357, %1358
  %arrayidx3049 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add3048, i64* %arrayidx3049, align 8
  %arrayidx3050 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1359 = load i64, i64* %arrayidx3050, align 8
  %arrayidx3051 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1360 = load i64, i64* %arrayidx3051, align 8
  %shr3052 = lshr i64 %1360, 14
  %arrayidx3053 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1361 = load i64, i64* %arrayidx3053, align 8
  %shl3054 = shl i64 %1361, 50
  %or3055 = or i64 %shr3052, %shl3054
  %arrayidx3056 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1362 = load i64, i64* %arrayidx3056, align 8
  %shr3057 = lshr i64 %1362, 18
  %arrayidx3058 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1363 = load i64, i64* %arrayidx3058, align 8
  %shl3059 = shl i64 %1363, 46
  %or3060 = or i64 %shr3057, %shl3059
  %xor3061 = xor i64 %or3055, %or3060
  %arrayidx3062 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1364 = load i64, i64* %arrayidx3062, align 8
  %shr3063 = lshr i64 %1364, 41
  %arrayidx3064 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1365 = load i64, i64* %arrayidx3064, align 8
  %shl3065 = shl i64 %1365, 23
  %or3066 = or i64 %shr3063, %shl3065
  %xor3067 = xor i64 %xor3061, %or3066
  %add3068 = add i64 %1359, %xor3067
  %arrayidx3069 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1366 = load i64, i64* %arrayidx3069, align 8
  %arrayidx3070 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1367 = load i64, i64* %arrayidx3070, align 8
  %arrayidx3071 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1368 = load i64, i64* %arrayidx3071, align 8
  %arrayidx3072 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1369 = load i64, i64* %arrayidx3072, align 8
  %xor3073 = xor i64 %1368, %1369
  %and3074 = and i64 %1367, %xor3073
  %xor3075 = xor i64 %1366, %and3074
  %add3076 = add i64 %add3068, %xor3075
  %add3077 = add i64 %add3076, 2177327727835720531
  %arrayidx3078 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 49
  %1370 = load i64, i64* %arrayidx3078, align 8
  %add3079 = add i64 %add3077, %1370
  store i64 %add3079, i64* %t0, align 8
  %arrayidx3080 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1371 = load i64, i64* %arrayidx3080, align 8
  %shr3081 = lshr i64 %1371, 28
  %arrayidx3082 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1372 = load i64, i64* %arrayidx3082, align 8
  %shl3083 = shl i64 %1372, 36
  %or3084 = or i64 %shr3081, %shl3083
  %arrayidx3085 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1373 = load i64, i64* %arrayidx3085, align 8
  %shr3086 = lshr i64 %1373, 34
  %arrayidx3087 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1374 = load i64, i64* %arrayidx3087, align 8
  %shl3088 = shl i64 %1374, 30
  %or3089 = or i64 %shr3086, %shl3088
  %xor3090 = xor i64 %or3084, %or3089
  %arrayidx3091 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1375 = load i64, i64* %arrayidx3091, align 8
  %shr3092 = lshr i64 %1375, 39
  %arrayidx3093 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1376 = load i64, i64* %arrayidx3093, align 8
  %shl3094 = shl i64 %1376, 25
  %or3095 = or i64 %shr3092, %shl3094
  %xor3096 = xor i64 %xor3090, %or3095
  %arrayidx3097 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1377 = load i64, i64* %arrayidx3097, align 8
  %arrayidx3098 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1378 = load i64, i64* %arrayidx3098, align 8
  %or3099 = or i64 %1377, %1378
  %arrayidx3100 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1379 = load i64, i64* %arrayidx3100, align 8
  %and3101 = and i64 %or3099, %1379
  %arrayidx3102 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1380 = load i64, i64* %arrayidx3102, align 8
  %arrayidx3103 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1381 = load i64, i64* %arrayidx3103, align 8
  %and3104 = and i64 %1380, %1381
  %or3105 = or i64 %and3101, %and3104
  %add3106 = add i64 %xor3096, %or3105
  store i64 %add3106, i64* %t1, align 8
  %1382 = load i64, i64* %t0, align 8
  %arrayidx3107 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1383 = load i64, i64* %arrayidx3107, align 8
  %add3108 = add i64 %1383, %1382
  store i64 %add3108, i64* %arrayidx3107, align 8
  %1384 = load i64, i64* %t0, align 8
  %1385 = load i64, i64* %t1, align 8
  %add3109 = add i64 %1384, %1385
  %arrayidx3110 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add3109, i64* %arrayidx3110, align 8
  %arrayidx3111 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1386 = load i64, i64* %arrayidx3111, align 8
  %arrayidx3112 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1387 = load i64, i64* %arrayidx3112, align 8
  %shr3113 = lshr i64 %1387, 14
  %arrayidx3114 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1388 = load i64, i64* %arrayidx3114, align 8
  %shl3115 = shl i64 %1388, 50
  %or3116 = or i64 %shr3113, %shl3115
  %arrayidx3117 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1389 = load i64, i64* %arrayidx3117, align 8
  %shr3118 = lshr i64 %1389, 18
  %arrayidx3119 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1390 = load i64, i64* %arrayidx3119, align 8
  %shl3120 = shl i64 %1390, 46
  %or3121 = or i64 %shr3118, %shl3120
  %xor3122 = xor i64 %or3116, %or3121
  %arrayidx3123 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1391 = load i64, i64* %arrayidx3123, align 8
  %shr3124 = lshr i64 %1391, 41
  %arrayidx3125 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1392 = load i64, i64* %arrayidx3125, align 8
  %shl3126 = shl i64 %1392, 23
  %or3127 = or i64 %shr3124, %shl3126
  %xor3128 = xor i64 %xor3122, %or3127
  %add3129 = add i64 %1386, %xor3128
  %arrayidx3130 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1393 = load i64, i64* %arrayidx3130, align 8
  %arrayidx3131 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1394 = load i64, i64* %arrayidx3131, align 8
  %arrayidx3132 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1395 = load i64, i64* %arrayidx3132, align 8
  %arrayidx3133 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1396 = load i64, i64* %arrayidx3133, align 8
  %xor3134 = xor i64 %1395, %1396
  %and3135 = and i64 %1394, %xor3134
  %xor3136 = xor i64 %1393, %and3135
  %add3137 = add i64 %add3129, %xor3136
  %add3138 = add i64 %add3137, 2830643537854262169
  %arrayidx3139 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 50
  %1397 = load i64, i64* %arrayidx3139, align 8
  %add3140 = add i64 %add3138, %1397
  store i64 %add3140, i64* %t0, align 8
  %arrayidx3141 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1398 = load i64, i64* %arrayidx3141, align 8
  %shr3142 = lshr i64 %1398, 28
  %arrayidx3143 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1399 = load i64, i64* %arrayidx3143, align 8
  %shl3144 = shl i64 %1399, 36
  %or3145 = or i64 %shr3142, %shl3144
  %arrayidx3146 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1400 = load i64, i64* %arrayidx3146, align 8
  %shr3147 = lshr i64 %1400, 34
  %arrayidx3148 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1401 = load i64, i64* %arrayidx3148, align 8
  %shl3149 = shl i64 %1401, 30
  %or3150 = or i64 %shr3147, %shl3149
  %xor3151 = xor i64 %or3145, %or3150
  %arrayidx3152 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1402 = load i64, i64* %arrayidx3152, align 8
  %shr3153 = lshr i64 %1402, 39
  %arrayidx3154 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1403 = load i64, i64* %arrayidx3154, align 8
  %shl3155 = shl i64 %1403, 25
  %or3156 = or i64 %shr3153, %shl3155
  %xor3157 = xor i64 %xor3151, %or3156
  %arrayidx3158 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1404 = load i64, i64* %arrayidx3158, align 8
  %arrayidx3159 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1405 = load i64, i64* %arrayidx3159, align 8
  %or3160 = or i64 %1404, %1405
  %arrayidx3161 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1406 = load i64, i64* %arrayidx3161, align 8
  %and3162 = and i64 %or3160, %1406
  %arrayidx3163 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1407 = load i64, i64* %arrayidx3163, align 8
  %arrayidx3164 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1408 = load i64, i64* %arrayidx3164, align 8
  %and3165 = and i64 %1407, %1408
  %or3166 = or i64 %and3162, %and3165
  %add3167 = add i64 %xor3157, %or3166
  store i64 %add3167, i64* %t1, align 8
  %1409 = load i64, i64* %t0, align 8
  %arrayidx3168 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1410 = load i64, i64* %arrayidx3168, align 8
  %add3169 = add i64 %1410, %1409
  store i64 %add3169, i64* %arrayidx3168, align 8
  %1411 = load i64, i64* %t0, align 8
  %1412 = load i64, i64* %t1, align 8
  %add3170 = add i64 %1411, %1412
  %arrayidx3171 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add3170, i64* %arrayidx3171, align 8
  %arrayidx3172 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1413 = load i64, i64* %arrayidx3172, align 8
  %arrayidx3173 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1414 = load i64, i64* %arrayidx3173, align 8
  %shr3174 = lshr i64 %1414, 14
  %arrayidx3175 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1415 = load i64, i64* %arrayidx3175, align 8
  %shl3176 = shl i64 %1415, 50
  %or3177 = or i64 %shr3174, %shl3176
  %arrayidx3178 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1416 = load i64, i64* %arrayidx3178, align 8
  %shr3179 = lshr i64 %1416, 18
  %arrayidx3180 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1417 = load i64, i64* %arrayidx3180, align 8
  %shl3181 = shl i64 %1417, 46
  %or3182 = or i64 %shr3179, %shl3181
  %xor3183 = xor i64 %or3177, %or3182
  %arrayidx3184 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1418 = load i64, i64* %arrayidx3184, align 8
  %shr3185 = lshr i64 %1418, 41
  %arrayidx3186 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1419 = load i64, i64* %arrayidx3186, align 8
  %shl3187 = shl i64 %1419, 23
  %or3188 = or i64 %shr3185, %shl3187
  %xor3189 = xor i64 %xor3183, %or3188
  %add3190 = add i64 %1413, %xor3189
  %arrayidx3191 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1420 = load i64, i64* %arrayidx3191, align 8
  %arrayidx3192 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1421 = load i64, i64* %arrayidx3192, align 8
  %arrayidx3193 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1422 = load i64, i64* %arrayidx3193, align 8
  %arrayidx3194 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1423 = load i64, i64* %arrayidx3194, align 8
  %xor3195 = xor i64 %1422, %1423
  %and3196 = and i64 %1421, %xor3195
  %xor3197 = xor i64 %1420, %and3196
  %add3198 = add i64 %add3190, %xor3197
  %add3199 = add i64 %add3198, 3796741975233480872
  %arrayidx3200 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 51
  %1424 = load i64, i64* %arrayidx3200, align 8
  %add3201 = add i64 %add3199, %1424
  store i64 %add3201, i64* %t0, align 8
  %arrayidx3202 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1425 = load i64, i64* %arrayidx3202, align 8
  %shr3203 = lshr i64 %1425, 28
  %arrayidx3204 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1426 = load i64, i64* %arrayidx3204, align 8
  %shl3205 = shl i64 %1426, 36
  %or3206 = or i64 %shr3203, %shl3205
  %arrayidx3207 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1427 = load i64, i64* %arrayidx3207, align 8
  %shr3208 = lshr i64 %1427, 34
  %arrayidx3209 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1428 = load i64, i64* %arrayidx3209, align 8
  %shl3210 = shl i64 %1428, 30
  %or3211 = or i64 %shr3208, %shl3210
  %xor3212 = xor i64 %or3206, %or3211
  %arrayidx3213 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1429 = load i64, i64* %arrayidx3213, align 8
  %shr3214 = lshr i64 %1429, 39
  %arrayidx3215 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1430 = load i64, i64* %arrayidx3215, align 8
  %shl3216 = shl i64 %1430, 25
  %or3217 = or i64 %shr3214, %shl3216
  %xor3218 = xor i64 %xor3212, %or3217
  %arrayidx3219 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1431 = load i64, i64* %arrayidx3219, align 8
  %arrayidx3220 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1432 = load i64, i64* %arrayidx3220, align 8
  %or3221 = or i64 %1431, %1432
  %arrayidx3222 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1433 = load i64, i64* %arrayidx3222, align 8
  %and3223 = and i64 %or3221, %1433
  %arrayidx3224 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1434 = load i64, i64* %arrayidx3224, align 8
  %arrayidx3225 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1435 = load i64, i64* %arrayidx3225, align 8
  %and3226 = and i64 %1434, %1435
  %or3227 = or i64 %and3223, %and3226
  %add3228 = add i64 %xor3218, %or3227
  store i64 %add3228, i64* %t1, align 8
  %1436 = load i64, i64* %t0, align 8
  %arrayidx3229 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1437 = load i64, i64* %arrayidx3229, align 8
  %add3230 = add i64 %1437, %1436
  store i64 %add3230, i64* %arrayidx3229, align 8
  %1438 = load i64, i64* %t0, align 8
  %1439 = load i64, i64* %t1, align 8
  %add3231 = add i64 %1438, %1439
  %arrayidx3232 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add3231, i64* %arrayidx3232, align 8
  %arrayidx3233 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1440 = load i64, i64* %arrayidx3233, align 8
  %arrayidx3234 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1441 = load i64, i64* %arrayidx3234, align 8
  %shr3235 = lshr i64 %1441, 14
  %arrayidx3236 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1442 = load i64, i64* %arrayidx3236, align 8
  %shl3237 = shl i64 %1442, 50
  %or3238 = or i64 %shr3235, %shl3237
  %arrayidx3239 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1443 = load i64, i64* %arrayidx3239, align 8
  %shr3240 = lshr i64 %1443, 18
  %arrayidx3241 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1444 = load i64, i64* %arrayidx3241, align 8
  %shl3242 = shl i64 %1444, 46
  %or3243 = or i64 %shr3240, %shl3242
  %xor3244 = xor i64 %or3238, %or3243
  %arrayidx3245 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1445 = load i64, i64* %arrayidx3245, align 8
  %shr3246 = lshr i64 %1445, 41
  %arrayidx3247 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1446 = load i64, i64* %arrayidx3247, align 8
  %shl3248 = shl i64 %1446, 23
  %or3249 = or i64 %shr3246, %shl3248
  %xor3250 = xor i64 %xor3244, %or3249
  %add3251 = add i64 %1440, %xor3250
  %arrayidx3252 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1447 = load i64, i64* %arrayidx3252, align 8
  %arrayidx3253 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1448 = load i64, i64* %arrayidx3253, align 8
  %arrayidx3254 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1449 = load i64, i64* %arrayidx3254, align 8
  %arrayidx3255 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1450 = load i64, i64* %arrayidx3255, align 8
  %xor3256 = xor i64 %1449, %1450
  %and3257 = and i64 %1448, %xor3256
  %xor3258 = xor i64 %1447, %and3257
  %add3259 = add i64 %add3251, %xor3258
  %add3260 = add i64 %add3259, 4115178125766777443
  %arrayidx3261 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 52
  %1451 = load i64, i64* %arrayidx3261, align 8
  %add3262 = add i64 %add3260, %1451
  store i64 %add3262, i64* %t0, align 8
  %arrayidx3263 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1452 = load i64, i64* %arrayidx3263, align 8
  %shr3264 = lshr i64 %1452, 28
  %arrayidx3265 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1453 = load i64, i64* %arrayidx3265, align 8
  %shl3266 = shl i64 %1453, 36
  %or3267 = or i64 %shr3264, %shl3266
  %arrayidx3268 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1454 = load i64, i64* %arrayidx3268, align 8
  %shr3269 = lshr i64 %1454, 34
  %arrayidx3270 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1455 = load i64, i64* %arrayidx3270, align 8
  %shl3271 = shl i64 %1455, 30
  %or3272 = or i64 %shr3269, %shl3271
  %xor3273 = xor i64 %or3267, %or3272
  %arrayidx3274 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1456 = load i64, i64* %arrayidx3274, align 8
  %shr3275 = lshr i64 %1456, 39
  %arrayidx3276 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1457 = load i64, i64* %arrayidx3276, align 8
  %shl3277 = shl i64 %1457, 25
  %or3278 = or i64 %shr3275, %shl3277
  %xor3279 = xor i64 %xor3273, %or3278
  %arrayidx3280 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1458 = load i64, i64* %arrayidx3280, align 8
  %arrayidx3281 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1459 = load i64, i64* %arrayidx3281, align 8
  %or3282 = or i64 %1458, %1459
  %arrayidx3283 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1460 = load i64, i64* %arrayidx3283, align 8
  %and3284 = and i64 %or3282, %1460
  %arrayidx3285 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1461 = load i64, i64* %arrayidx3285, align 8
  %arrayidx3286 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1462 = load i64, i64* %arrayidx3286, align 8
  %and3287 = and i64 %1461, %1462
  %or3288 = or i64 %and3284, %and3287
  %add3289 = add i64 %xor3279, %or3288
  store i64 %add3289, i64* %t1, align 8
  %1463 = load i64, i64* %t0, align 8
  %arrayidx3290 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1464 = load i64, i64* %arrayidx3290, align 8
  %add3291 = add i64 %1464, %1463
  store i64 %add3291, i64* %arrayidx3290, align 8
  %1465 = load i64, i64* %t0, align 8
  %1466 = load i64, i64* %t1, align 8
  %add3292 = add i64 %1465, %1466
  %arrayidx3293 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add3292, i64* %arrayidx3293, align 8
  %arrayidx3294 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1467 = load i64, i64* %arrayidx3294, align 8
  %arrayidx3295 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1468 = load i64, i64* %arrayidx3295, align 8
  %shr3296 = lshr i64 %1468, 14
  %arrayidx3297 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1469 = load i64, i64* %arrayidx3297, align 8
  %shl3298 = shl i64 %1469, 50
  %or3299 = or i64 %shr3296, %shl3298
  %arrayidx3300 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1470 = load i64, i64* %arrayidx3300, align 8
  %shr3301 = lshr i64 %1470, 18
  %arrayidx3302 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1471 = load i64, i64* %arrayidx3302, align 8
  %shl3303 = shl i64 %1471, 46
  %or3304 = or i64 %shr3301, %shl3303
  %xor3305 = xor i64 %or3299, %or3304
  %arrayidx3306 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1472 = load i64, i64* %arrayidx3306, align 8
  %shr3307 = lshr i64 %1472, 41
  %arrayidx3308 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1473 = load i64, i64* %arrayidx3308, align 8
  %shl3309 = shl i64 %1473, 23
  %or3310 = or i64 %shr3307, %shl3309
  %xor3311 = xor i64 %xor3305, %or3310
  %add3312 = add i64 %1467, %xor3311
  %arrayidx3313 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1474 = load i64, i64* %arrayidx3313, align 8
  %arrayidx3314 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1475 = load i64, i64* %arrayidx3314, align 8
  %arrayidx3315 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1476 = load i64, i64* %arrayidx3315, align 8
  %arrayidx3316 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1477 = load i64, i64* %arrayidx3316, align 8
  %xor3317 = xor i64 %1476, %1477
  %and3318 = and i64 %1475, %xor3317
  %xor3319 = xor i64 %1474, %and3318
  %add3320 = add i64 %add3312, %xor3319
  %add3321 = add i64 %add3320, 5681478168544905931
  %arrayidx3322 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 53
  %1478 = load i64, i64* %arrayidx3322, align 8
  %add3323 = add i64 %add3321, %1478
  store i64 %add3323, i64* %t0, align 8
  %arrayidx3324 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1479 = load i64, i64* %arrayidx3324, align 8
  %shr3325 = lshr i64 %1479, 28
  %arrayidx3326 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1480 = load i64, i64* %arrayidx3326, align 8
  %shl3327 = shl i64 %1480, 36
  %or3328 = or i64 %shr3325, %shl3327
  %arrayidx3329 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1481 = load i64, i64* %arrayidx3329, align 8
  %shr3330 = lshr i64 %1481, 34
  %arrayidx3331 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1482 = load i64, i64* %arrayidx3331, align 8
  %shl3332 = shl i64 %1482, 30
  %or3333 = or i64 %shr3330, %shl3332
  %xor3334 = xor i64 %or3328, %or3333
  %arrayidx3335 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1483 = load i64, i64* %arrayidx3335, align 8
  %shr3336 = lshr i64 %1483, 39
  %arrayidx3337 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1484 = load i64, i64* %arrayidx3337, align 8
  %shl3338 = shl i64 %1484, 25
  %or3339 = or i64 %shr3336, %shl3338
  %xor3340 = xor i64 %xor3334, %or3339
  %arrayidx3341 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1485 = load i64, i64* %arrayidx3341, align 8
  %arrayidx3342 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1486 = load i64, i64* %arrayidx3342, align 8
  %or3343 = or i64 %1485, %1486
  %arrayidx3344 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1487 = load i64, i64* %arrayidx3344, align 8
  %and3345 = and i64 %or3343, %1487
  %arrayidx3346 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1488 = load i64, i64* %arrayidx3346, align 8
  %arrayidx3347 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1489 = load i64, i64* %arrayidx3347, align 8
  %and3348 = and i64 %1488, %1489
  %or3349 = or i64 %and3345, %and3348
  %add3350 = add i64 %xor3340, %or3349
  store i64 %add3350, i64* %t1, align 8
  %1490 = load i64, i64* %t0, align 8
  %arrayidx3351 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1491 = load i64, i64* %arrayidx3351, align 8
  %add3352 = add i64 %1491, %1490
  store i64 %add3352, i64* %arrayidx3351, align 8
  %1492 = load i64, i64* %t0, align 8
  %1493 = load i64, i64* %t1, align 8
  %add3353 = add i64 %1492, %1493
  %arrayidx3354 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add3353, i64* %arrayidx3354, align 8
  %arrayidx3355 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1494 = load i64, i64* %arrayidx3355, align 8
  %arrayidx3356 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1495 = load i64, i64* %arrayidx3356, align 8
  %shr3357 = lshr i64 %1495, 14
  %arrayidx3358 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1496 = load i64, i64* %arrayidx3358, align 8
  %shl3359 = shl i64 %1496, 50
  %or3360 = or i64 %shr3357, %shl3359
  %arrayidx3361 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1497 = load i64, i64* %arrayidx3361, align 8
  %shr3362 = lshr i64 %1497, 18
  %arrayidx3363 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1498 = load i64, i64* %arrayidx3363, align 8
  %shl3364 = shl i64 %1498, 46
  %or3365 = or i64 %shr3362, %shl3364
  %xor3366 = xor i64 %or3360, %or3365
  %arrayidx3367 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1499 = load i64, i64* %arrayidx3367, align 8
  %shr3368 = lshr i64 %1499, 41
  %arrayidx3369 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1500 = load i64, i64* %arrayidx3369, align 8
  %shl3370 = shl i64 %1500, 23
  %or3371 = or i64 %shr3368, %shl3370
  %xor3372 = xor i64 %xor3366, %or3371
  %add3373 = add i64 %1494, %xor3372
  %arrayidx3374 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1501 = load i64, i64* %arrayidx3374, align 8
  %arrayidx3375 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1502 = load i64, i64* %arrayidx3375, align 8
  %arrayidx3376 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1503 = load i64, i64* %arrayidx3376, align 8
  %arrayidx3377 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1504 = load i64, i64* %arrayidx3377, align 8
  %xor3378 = xor i64 %1503, %1504
  %and3379 = and i64 %1502, %xor3378
  %xor3380 = xor i64 %1501, %and3379
  %add3381 = add i64 %add3373, %xor3380
  %add3382 = add i64 %add3381, 6601373596472566643
  %arrayidx3383 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 54
  %1505 = load i64, i64* %arrayidx3383, align 8
  %add3384 = add i64 %add3382, %1505
  store i64 %add3384, i64* %t0, align 8
  %arrayidx3385 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1506 = load i64, i64* %arrayidx3385, align 8
  %shr3386 = lshr i64 %1506, 28
  %arrayidx3387 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1507 = load i64, i64* %arrayidx3387, align 8
  %shl3388 = shl i64 %1507, 36
  %or3389 = or i64 %shr3386, %shl3388
  %arrayidx3390 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1508 = load i64, i64* %arrayidx3390, align 8
  %shr3391 = lshr i64 %1508, 34
  %arrayidx3392 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1509 = load i64, i64* %arrayidx3392, align 8
  %shl3393 = shl i64 %1509, 30
  %or3394 = or i64 %shr3391, %shl3393
  %xor3395 = xor i64 %or3389, %or3394
  %arrayidx3396 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1510 = load i64, i64* %arrayidx3396, align 8
  %shr3397 = lshr i64 %1510, 39
  %arrayidx3398 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1511 = load i64, i64* %arrayidx3398, align 8
  %shl3399 = shl i64 %1511, 25
  %or3400 = or i64 %shr3397, %shl3399
  %xor3401 = xor i64 %xor3395, %or3400
  %arrayidx3402 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1512 = load i64, i64* %arrayidx3402, align 8
  %arrayidx3403 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1513 = load i64, i64* %arrayidx3403, align 8
  %or3404 = or i64 %1512, %1513
  %arrayidx3405 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1514 = load i64, i64* %arrayidx3405, align 8
  %and3406 = and i64 %or3404, %1514
  %arrayidx3407 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1515 = load i64, i64* %arrayidx3407, align 8
  %arrayidx3408 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1516 = load i64, i64* %arrayidx3408, align 8
  %and3409 = and i64 %1515, %1516
  %or3410 = or i64 %and3406, %and3409
  %add3411 = add i64 %xor3401, %or3410
  store i64 %add3411, i64* %t1, align 8
  %1517 = load i64, i64* %t0, align 8
  %arrayidx3412 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1518 = load i64, i64* %arrayidx3412, align 8
  %add3413 = add i64 %1518, %1517
  store i64 %add3413, i64* %arrayidx3412, align 8
  %1519 = load i64, i64* %t0, align 8
  %1520 = load i64, i64* %t1, align 8
  %add3414 = add i64 %1519, %1520
  %arrayidx3415 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add3414, i64* %arrayidx3415, align 8
  %arrayidx3416 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1521 = load i64, i64* %arrayidx3416, align 8
  %arrayidx3417 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1522 = load i64, i64* %arrayidx3417, align 8
  %shr3418 = lshr i64 %1522, 14
  %arrayidx3419 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1523 = load i64, i64* %arrayidx3419, align 8
  %shl3420 = shl i64 %1523, 50
  %or3421 = or i64 %shr3418, %shl3420
  %arrayidx3422 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1524 = load i64, i64* %arrayidx3422, align 8
  %shr3423 = lshr i64 %1524, 18
  %arrayidx3424 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1525 = load i64, i64* %arrayidx3424, align 8
  %shl3425 = shl i64 %1525, 46
  %or3426 = or i64 %shr3423, %shl3425
  %xor3427 = xor i64 %or3421, %or3426
  %arrayidx3428 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1526 = load i64, i64* %arrayidx3428, align 8
  %shr3429 = lshr i64 %1526, 41
  %arrayidx3430 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1527 = load i64, i64* %arrayidx3430, align 8
  %shl3431 = shl i64 %1527, 23
  %or3432 = or i64 %shr3429, %shl3431
  %xor3433 = xor i64 %xor3427, %or3432
  %add3434 = add i64 %1521, %xor3433
  %arrayidx3435 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1528 = load i64, i64* %arrayidx3435, align 8
  %arrayidx3436 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1529 = load i64, i64* %arrayidx3436, align 8
  %arrayidx3437 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1530 = load i64, i64* %arrayidx3437, align 8
  %arrayidx3438 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1531 = load i64, i64* %arrayidx3438, align 8
  %xor3439 = xor i64 %1530, %1531
  %and3440 = and i64 %1529, %xor3439
  %xor3441 = xor i64 %1528, %and3440
  %add3442 = add i64 %add3434, %xor3441
  %add3443 = add i64 %add3442, 7507060721942968483
  %arrayidx3444 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 55
  %1532 = load i64, i64* %arrayidx3444, align 8
  %add3445 = add i64 %add3443, %1532
  store i64 %add3445, i64* %t0, align 8
  %arrayidx3446 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1533 = load i64, i64* %arrayidx3446, align 8
  %shr3447 = lshr i64 %1533, 28
  %arrayidx3448 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1534 = load i64, i64* %arrayidx3448, align 8
  %shl3449 = shl i64 %1534, 36
  %or3450 = or i64 %shr3447, %shl3449
  %arrayidx3451 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1535 = load i64, i64* %arrayidx3451, align 8
  %shr3452 = lshr i64 %1535, 34
  %arrayidx3453 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1536 = load i64, i64* %arrayidx3453, align 8
  %shl3454 = shl i64 %1536, 30
  %or3455 = or i64 %shr3452, %shl3454
  %xor3456 = xor i64 %or3450, %or3455
  %arrayidx3457 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1537 = load i64, i64* %arrayidx3457, align 8
  %shr3458 = lshr i64 %1537, 39
  %arrayidx3459 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1538 = load i64, i64* %arrayidx3459, align 8
  %shl3460 = shl i64 %1538, 25
  %or3461 = or i64 %shr3458, %shl3460
  %xor3462 = xor i64 %xor3456, %or3461
  %arrayidx3463 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1539 = load i64, i64* %arrayidx3463, align 8
  %arrayidx3464 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1540 = load i64, i64* %arrayidx3464, align 8
  %or3465 = or i64 %1539, %1540
  %arrayidx3466 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1541 = load i64, i64* %arrayidx3466, align 8
  %and3467 = and i64 %or3465, %1541
  %arrayidx3468 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1542 = load i64, i64* %arrayidx3468, align 8
  %arrayidx3469 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1543 = load i64, i64* %arrayidx3469, align 8
  %and3470 = and i64 %1542, %1543
  %or3471 = or i64 %and3467, %and3470
  %add3472 = add i64 %xor3462, %or3471
  store i64 %add3472, i64* %t1, align 8
  %1544 = load i64, i64* %t0, align 8
  %arrayidx3473 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1545 = load i64, i64* %arrayidx3473, align 8
  %add3474 = add i64 %1545, %1544
  store i64 %add3474, i64* %arrayidx3473, align 8
  %1546 = load i64, i64* %t0, align 8
  %1547 = load i64, i64* %t1, align 8
  %add3475 = add i64 %1546, %1547
  %arrayidx3476 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add3475, i64* %arrayidx3476, align 8
  %arrayidx3477 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1548 = load i64, i64* %arrayidx3477, align 8
  %arrayidx3478 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1549 = load i64, i64* %arrayidx3478, align 8
  %shr3479 = lshr i64 %1549, 14
  %arrayidx3480 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1550 = load i64, i64* %arrayidx3480, align 8
  %shl3481 = shl i64 %1550, 50
  %or3482 = or i64 %shr3479, %shl3481
  %arrayidx3483 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1551 = load i64, i64* %arrayidx3483, align 8
  %shr3484 = lshr i64 %1551, 18
  %arrayidx3485 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1552 = load i64, i64* %arrayidx3485, align 8
  %shl3486 = shl i64 %1552, 46
  %or3487 = or i64 %shr3484, %shl3486
  %xor3488 = xor i64 %or3482, %or3487
  %arrayidx3489 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1553 = load i64, i64* %arrayidx3489, align 8
  %shr3490 = lshr i64 %1553, 41
  %arrayidx3491 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1554 = load i64, i64* %arrayidx3491, align 8
  %shl3492 = shl i64 %1554, 23
  %or3493 = or i64 %shr3490, %shl3492
  %xor3494 = xor i64 %xor3488, %or3493
  %add3495 = add i64 %1548, %xor3494
  %arrayidx3496 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1555 = load i64, i64* %arrayidx3496, align 8
  %arrayidx3497 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1556 = load i64, i64* %arrayidx3497, align 8
  %arrayidx3498 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1557 = load i64, i64* %arrayidx3498, align 8
  %arrayidx3499 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1558 = load i64, i64* %arrayidx3499, align 8
  %xor3500 = xor i64 %1557, %1558
  %and3501 = and i64 %1556, %xor3500
  %xor3502 = xor i64 %1555, %and3501
  %add3503 = add i64 %add3495, %xor3502
  %add3504 = add i64 %add3503, 8399075790359081724
  %arrayidx3505 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 56
  %1559 = load i64, i64* %arrayidx3505, align 8
  %add3506 = add i64 %add3504, %1559
  store i64 %add3506, i64* %t0, align 8
  %arrayidx3507 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1560 = load i64, i64* %arrayidx3507, align 8
  %shr3508 = lshr i64 %1560, 28
  %arrayidx3509 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1561 = load i64, i64* %arrayidx3509, align 8
  %shl3510 = shl i64 %1561, 36
  %or3511 = or i64 %shr3508, %shl3510
  %arrayidx3512 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1562 = load i64, i64* %arrayidx3512, align 8
  %shr3513 = lshr i64 %1562, 34
  %arrayidx3514 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1563 = load i64, i64* %arrayidx3514, align 8
  %shl3515 = shl i64 %1563, 30
  %or3516 = or i64 %shr3513, %shl3515
  %xor3517 = xor i64 %or3511, %or3516
  %arrayidx3518 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1564 = load i64, i64* %arrayidx3518, align 8
  %shr3519 = lshr i64 %1564, 39
  %arrayidx3520 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1565 = load i64, i64* %arrayidx3520, align 8
  %shl3521 = shl i64 %1565, 25
  %or3522 = or i64 %shr3519, %shl3521
  %xor3523 = xor i64 %xor3517, %or3522
  %arrayidx3524 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1566 = load i64, i64* %arrayidx3524, align 8
  %arrayidx3525 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1567 = load i64, i64* %arrayidx3525, align 8
  %or3526 = or i64 %1566, %1567
  %arrayidx3527 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1568 = load i64, i64* %arrayidx3527, align 8
  %and3528 = and i64 %or3526, %1568
  %arrayidx3529 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1569 = load i64, i64* %arrayidx3529, align 8
  %arrayidx3530 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1570 = load i64, i64* %arrayidx3530, align 8
  %and3531 = and i64 %1569, %1570
  %or3532 = or i64 %and3528, %and3531
  %add3533 = add i64 %xor3523, %or3532
  store i64 %add3533, i64* %t1, align 8
  %1571 = load i64, i64* %t0, align 8
  %arrayidx3534 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1572 = load i64, i64* %arrayidx3534, align 8
  %add3535 = add i64 %1572, %1571
  store i64 %add3535, i64* %arrayidx3534, align 8
  %1573 = load i64, i64* %t0, align 8
  %1574 = load i64, i64* %t1, align 8
  %add3536 = add i64 %1573, %1574
  %arrayidx3537 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add3536, i64* %arrayidx3537, align 8
  %arrayidx3538 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1575 = load i64, i64* %arrayidx3538, align 8
  %arrayidx3539 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1576 = load i64, i64* %arrayidx3539, align 8
  %shr3540 = lshr i64 %1576, 14
  %arrayidx3541 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1577 = load i64, i64* %arrayidx3541, align 8
  %shl3542 = shl i64 %1577, 50
  %or3543 = or i64 %shr3540, %shl3542
  %arrayidx3544 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1578 = load i64, i64* %arrayidx3544, align 8
  %shr3545 = lshr i64 %1578, 18
  %arrayidx3546 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1579 = load i64, i64* %arrayidx3546, align 8
  %shl3547 = shl i64 %1579, 46
  %or3548 = or i64 %shr3545, %shl3547
  %xor3549 = xor i64 %or3543, %or3548
  %arrayidx3550 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1580 = load i64, i64* %arrayidx3550, align 8
  %shr3551 = lshr i64 %1580, 41
  %arrayidx3552 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1581 = load i64, i64* %arrayidx3552, align 8
  %shl3553 = shl i64 %1581, 23
  %or3554 = or i64 %shr3551, %shl3553
  %xor3555 = xor i64 %xor3549, %or3554
  %add3556 = add i64 %1575, %xor3555
  %arrayidx3557 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1582 = load i64, i64* %arrayidx3557, align 8
  %arrayidx3558 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1583 = load i64, i64* %arrayidx3558, align 8
  %arrayidx3559 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1584 = load i64, i64* %arrayidx3559, align 8
  %arrayidx3560 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1585 = load i64, i64* %arrayidx3560, align 8
  %xor3561 = xor i64 %1584, %1585
  %and3562 = and i64 %1583, %xor3561
  %xor3563 = xor i64 %1582, %and3562
  %add3564 = add i64 %add3556, %xor3563
  %add3565 = add i64 %add3564, 8693463985226723168
  %arrayidx3566 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 57
  %1586 = load i64, i64* %arrayidx3566, align 8
  %add3567 = add i64 %add3565, %1586
  store i64 %add3567, i64* %t0, align 8
  %arrayidx3568 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1587 = load i64, i64* %arrayidx3568, align 8
  %shr3569 = lshr i64 %1587, 28
  %arrayidx3570 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1588 = load i64, i64* %arrayidx3570, align 8
  %shl3571 = shl i64 %1588, 36
  %or3572 = or i64 %shr3569, %shl3571
  %arrayidx3573 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1589 = load i64, i64* %arrayidx3573, align 8
  %shr3574 = lshr i64 %1589, 34
  %arrayidx3575 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1590 = load i64, i64* %arrayidx3575, align 8
  %shl3576 = shl i64 %1590, 30
  %or3577 = or i64 %shr3574, %shl3576
  %xor3578 = xor i64 %or3572, %or3577
  %arrayidx3579 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1591 = load i64, i64* %arrayidx3579, align 8
  %shr3580 = lshr i64 %1591, 39
  %arrayidx3581 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1592 = load i64, i64* %arrayidx3581, align 8
  %shl3582 = shl i64 %1592, 25
  %or3583 = or i64 %shr3580, %shl3582
  %xor3584 = xor i64 %xor3578, %or3583
  %arrayidx3585 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1593 = load i64, i64* %arrayidx3585, align 8
  %arrayidx3586 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1594 = load i64, i64* %arrayidx3586, align 8
  %or3587 = or i64 %1593, %1594
  %arrayidx3588 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1595 = load i64, i64* %arrayidx3588, align 8
  %and3589 = and i64 %or3587, %1595
  %arrayidx3590 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1596 = load i64, i64* %arrayidx3590, align 8
  %arrayidx3591 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1597 = load i64, i64* %arrayidx3591, align 8
  %and3592 = and i64 %1596, %1597
  %or3593 = or i64 %and3589, %and3592
  %add3594 = add i64 %xor3584, %or3593
  store i64 %add3594, i64* %t1, align 8
  %1598 = load i64, i64* %t0, align 8
  %arrayidx3595 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1599 = load i64, i64* %arrayidx3595, align 8
  %add3596 = add i64 %1599, %1598
  store i64 %add3596, i64* %arrayidx3595, align 8
  %1600 = load i64, i64* %t0, align 8
  %1601 = load i64, i64* %t1, align 8
  %add3597 = add i64 %1600, %1601
  %arrayidx3598 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add3597, i64* %arrayidx3598, align 8
  %arrayidx3599 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1602 = load i64, i64* %arrayidx3599, align 8
  %arrayidx3600 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1603 = load i64, i64* %arrayidx3600, align 8
  %shr3601 = lshr i64 %1603, 14
  %arrayidx3602 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1604 = load i64, i64* %arrayidx3602, align 8
  %shl3603 = shl i64 %1604, 50
  %or3604 = or i64 %shr3601, %shl3603
  %arrayidx3605 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1605 = load i64, i64* %arrayidx3605, align 8
  %shr3606 = lshr i64 %1605, 18
  %arrayidx3607 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1606 = load i64, i64* %arrayidx3607, align 8
  %shl3608 = shl i64 %1606, 46
  %or3609 = or i64 %shr3606, %shl3608
  %xor3610 = xor i64 %or3604, %or3609
  %arrayidx3611 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1607 = load i64, i64* %arrayidx3611, align 8
  %shr3612 = lshr i64 %1607, 41
  %arrayidx3613 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1608 = load i64, i64* %arrayidx3613, align 8
  %shl3614 = shl i64 %1608, 23
  %or3615 = or i64 %shr3612, %shl3614
  %xor3616 = xor i64 %xor3610, %or3615
  %add3617 = add i64 %1602, %xor3616
  %arrayidx3618 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1609 = load i64, i64* %arrayidx3618, align 8
  %arrayidx3619 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1610 = load i64, i64* %arrayidx3619, align 8
  %arrayidx3620 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1611 = load i64, i64* %arrayidx3620, align 8
  %arrayidx3621 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1612 = load i64, i64* %arrayidx3621, align 8
  %xor3622 = xor i64 %1611, %1612
  %and3623 = and i64 %1610, %xor3622
  %xor3624 = xor i64 %1609, %and3623
  %add3625 = add i64 %add3617, %xor3624
  %add3626 = add i64 %add3625, -8878714635349349518
  %arrayidx3627 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 58
  %1613 = load i64, i64* %arrayidx3627, align 8
  %add3628 = add i64 %add3626, %1613
  store i64 %add3628, i64* %t0, align 8
  %arrayidx3629 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1614 = load i64, i64* %arrayidx3629, align 8
  %shr3630 = lshr i64 %1614, 28
  %arrayidx3631 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1615 = load i64, i64* %arrayidx3631, align 8
  %shl3632 = shl i64 %1615, 36
  %or3633 = or i64 %shr3630, %shl3632
  %arrayidx3634 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1616 = load i64, i64* %arrayidx3634, align 8
  %shr3635 = lshr i64 %1616, 34
  %arrayidx3636 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1617 = load i64, i64* %arrayidx3636, align 8
  %shl3637 = shl i64 %1617, 30
  %or3638 = or i64 %shr3635, %shl3637
  %xor3639 = xor i64 %or3633, %or3638
  %arrayidx3640 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1618 = load i64, i64* %arrayidx3640, align 8
  %shr3641 = lshr i64 %1618, 39
  %arrayidx3642 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1619 = load i64, i64* %arrayidx3642, align 8
  %shl3643 = shl i64 %1619, 25
  %or3644 = or i64 %shr3641, %shl3643
  %xor3645 = xor i64 %xor3639, %or3644
  %arrayidx3646 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1620 = load i64, i64* %arrayidx3646, align 8
  %arrayidx3647 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1621 = load i64, i64* %arrayidx3647, align 8
  %or3648 = or i64 %1620, %1621
  %arrayidx3649 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1622 = load i64, i64* %arrayidx3649, align 8
  %and3650 = and i64 %or3648, %1622
  %arrayidx3651 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1623 = load i64, i64* %arrayidx3651, align 8
  %arrayidx3652 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1624 = load i64, i64* %arrayidx3652, align 8
  %and3653 = and i64 %1623, %1624
  %or3654 = or i64 %and3650, %and3653
  %add3655 = add i64 %xor3645, %or3654
  store i64 %add3655, i64* %t1, align 8
  %1625 = load i64, i64* %t0, align 8
  %arrayidx3656 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1626 = load i64, i64* %arrayidx3656, align 8
  %add3657 = add i64 %1626, %1625
  store i64 %add3657, i64* %arrayidx3656, align 8
  %1627 = load i64, i64* %t0, align 8
  %1628 = load i64, i64* %t1, align 8
  %add3658 = add i64 %1627, %1628
  %arrayidx3659 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add3658, i64* %arrayidx3659, align 8
  %arrayidx3660 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1629 = load i64, i64* %arrayidx3660, align 8
  %arrayidx3661 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1630 = load i64, i64* %arrayidx3661, align 8
  %shr3662 = lshr i64 %1630, 14
  %arrayidx3663 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1631 = load i64, i64* %arrayidx3663, align 8
  %shl3664 = shl i64 %1631, 50
  %or3665 = or i64 %shr3662, %shl3664
  %arrayidx3666 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1632 = load i64, i64* %arrayidx3666, align 8
  %shr3667 = lshr i64 %1632, 18
  %arrayidx3668 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1633 = load i64, i64* %arrayidx3668, align 8
  %shl3669 = shl i64 %1633, 46
  %or3670 = or i64 %shr3667, %shl3669
  %xor3671 = xor i64 %or3665, %or3670
  %arrayidx3672 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1634 = load i64, i64* %arrayidx3672, align 8
  %shr3673 = lshr i64 %1634, 41
  %arrayidx3674 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1635 = load i64, i64* %arrayidx3674, align 8
  %shl3675 = shl i64 %1635, 23
  %or3676 = or i64 %shr3673, %shl3675
  %xor3677 = xor i64 %xor3671, %or3676
  %add3678 = add i64 %1629, %xor3677
  %arrayidx3679 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1636 = load i64, i64* %arrayidx3679, align 8
  %arrayidx3680 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1637 = load i64, i64* %arrayidx3680, align 8
  %arrayidx3681 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1638 = load i64, i64* %arrayidx3681, align 8
  %arrayidx3682 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1639 = load i64, i64* %arrayidx3682, align 8
  %xor3683 = xor i64 %1638, %1639
  %and3684 = and i64 %1637, %xor3683
  %xor3685 = xor i64 %1636, %and3684
  %add3686 = add i64 %add3678, %xor3685
  %add3687 = add i64 %add3686, -8302665154208450068
  %arrayidx3688 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 59
  %1640 = load i64, i64* %arrayidx3688, align 8
  %add3689 = add i64 %add3687, %1640
  store i64 %add3689, i64* %t0, align 8
  %arrayidx3690 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1641 = load i64, i64* %arrayidx3690, align 8
  %shr3691 = lshr i64 %1641, 28
  %arrayidx3692 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1642 = load i64, i64* %arrayidx3692, align 8
  %shl3693 = shl i64 %1642, 36
  %or3694 = or i64 %shr3691, %shl3693
  %arrayidx3695 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1643 = load i64, i64* %arrayidx3695, align 8
  %shr3696 = lshr i64 %1643, 34
  %arrayidx3697 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1644 = load i64, i64* %arrayidx3697, align 8
  %shl3698 = shl i64 %1644, 30
  %or3699 = or i64 %shr3696, %shl3698
  %xor3700 = xor i64 %or3694, %or3699
  %arrayidx3701 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1645 = load i64, i64* %arrayidx3701, align 8
  %shr3702 = lshr i64 %1645, 39
  %arrayidx3703 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1646 = load i64, i64* %arrayidx3703, align 8
  %shl3704 = shl i64 %1646, 25
  %or3705 = or i64 %shr3702, %shl3704
  %xor3706 = xor i64 %xor3700, %or3705
  %arrayidx3707 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1647 = load i64, i64* %arrayidx3707, align 8
  %arrayidx3708 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1648 = load i64, i64* %arrayidx3708, align 8
  %or3709 = or i64 %1647, %1648
  %arrayidx3710 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1649 = load i64, i64* %arrayidx3710, align 8
  %and3711 = and i64 %or3709, %1649
  %arrayidx3712 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1650 = load i64, i64* %arrayidx3712, align 8
  %arrayidx3713 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1651 = load i64, i64* %arrayidx3713, align 8
  %and3714 = and i64 %1650, %1651
  %or3715 = or i64 %and3711, %and3714
  %add3716 = add i64 %xor3706, %or3715
  store i64 %add3716, i64* %t1, align 8
  %1652 = load i64, i64* %t0, align 8
  %arrayidx3717 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1653 = load i64, i64* %arrayidx3717, align 8
  %add3718 = add i64 %1653, %1652
  store i64 %add3718, i64* %arrayidx3717, align 8
  %1654 = load i64, i64* %t0, align 8
  %1655 = load i64, i64* %t1, align 8
  %add3719 = add i64 %1654, %1655
  %arrayidx3720 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add3719, i64* %arrayidx3720, align 8
  %arrayidx3721 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1656 = load i64, i64* %arrayidx3721, align 8
  %arrayidx3722 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1657 = load i64, i64* %arrayidx3722, align 8
  %shr3723 = lshr i64 %1657, 14
  %arrayidx3724 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1658 = load i64, i64* %arrayidx3724, align 8
  %shl3725 = shl i64 %1658, 50
  %or3726 = or i64 %shr3723, %shl3725
  %arrayidx3727 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1659 = load i64, i64* %arrayidx3727, align 8
  %shr3728 = lshr i64 %1659, 18
  %arrayidx3729 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1660 = load i64, i64* %arrayidx3729, align 8
  %shl3730 = shl i64 %1660, 46
  %or3731 = or i64 %shr3728, %shl3730
  %xor3732 = xor i64 %or3726, %or3731
  %arrayidx3733 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1661 = load i64, i64* %arrayidx3733, align 8
  %shr3734 = lshr i64 %1661, 41
  %arrayidx3735 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1662 = load i64, i64* %arrayidx3735, align 8
  %shl3736 = shl i64 %1662, 23
  %or3737 = or i64 %shr3734, %shl3736
  %xor3738 = xor i64 %xor3732, %or3737
  %add3739 = add i64 %1656, %xor3738
  %arrayidx3740 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1663 = load i64, i64* %arrayidx3740, align 8
  %arrayidx3741 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1664 = load i64, i64* %arrayidx3741, align 8
  %arrayidx3742 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1665 = load i64, i64* %arrayidx3742, align 8
  %arrayidx3743 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1666 = load i64, i64* %arrayidx3743, align 8
  %xor3744 = xor i64 %1665, %1666
  %and3745 = and i64 %1664, %xor3744
  %xor3746 = xor i64 %1663, %and3745
  %add3747 = add i64 %add3739, %xor3746
  %add3748 = add i64 %add3747, -8016688836872298968
  %arrayidx3749 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 60
  %1667 = load i64, i64* %arrayidx3749, align 8
  %add3750 = add i64 %add3748, %1667
  store i64 %add3750, i64* %t0, align 8
  %arrayidx3751 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1668 = load i64, i64* %arrayidx3751, align 8
  %shr3752 = lshr i64 %1668, 28
  %arrayidx3753 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1669 = load i64, i64* %arrayidx3753, align 8
  %shl3754 = shl i64 %1669, 36
  %or3755 = or i64 %shr3752, %shl3754
  %arrayidx3756 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1670 = load i64, i64* %arrayidx3756, align 8
  %shr3757 = lshr i64 %1670, 34
  %arrayidx3758 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1671 = load i64, i64* %arrayidx3758, align 8
  %shl3759 = shl i64 %1671, 30
  %or3760 = or i64 %shr3757, %shl3759
  %xor3761 = xor i64 %or3755, %or3760
  %arrayidx3762 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1672 = load i64, i64* %arrayidx3762, align 8
  %shr3763 = lshr i64 %1672, 39
  %arrayidx3764 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1673 = load i64, i64* %arrayidx3764, align 8
  %shl3765 = shl i64 %1673, 25
  %or3766 = or i64 %shr3763, %shl3765
  %xor3767 = xor i64 %xor3761, %or3766
  %arrayidx3768 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1674 = load i64, i64* %arrayidx3768, align 8
  %arrayidx3769 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1675 = load i64, i64* %arrayidx3769, align 8
  %or3770 = or i64 %1674, %1675
  %arrayidx3771 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1676 = load i64, i64* %arrayidx3771, align 8
  %and3772 = and i64 %or3770, %1676
  %arrayidx3773 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1677 = load i64, i64* %arrayidx3773, align 8
  %arrayidx3774 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1678 = load i64, i64* %arrayidx3774, align 8
  %and3775 = and i64 %1677, %1678
  %or3776 = or i64 %and3772, %and3775
  %add3777 = add i64 %xor3767, %or3776
  store i64 %add3777, i64* %t1, align 8
  %1679 = load i64, i64* %t0, align 8
  %arrayidx3778 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1680 = load i64, i64* %arrayidx3778, align 8
  %add3779 = add i64 %1680, %1679
  store i64 %add3779, i64* %arrayidx3778, align 8
  %1681 = load i64, i64* %t0, align 8
  %1682 = load i64, i64* %t1, align 8
  %add3780 = add i64 %1681, %1682
  %arrayidx3781 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add3780, i64* %arrayidx3781, align 8
  %arrayidx3782 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1683 = load i64, i64* %arrayidx3782, align 8
  %arrayidx3783 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1684 = load i64, i64* %arrayidx3783, align 8
  %shr3784 = lshr i64 %1684, 14
  %arrayidx3785 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1685 = load i64, i64* %arrayidx3785, align 8
  %shl3786 = shl i64 %1685, 50
  %or3787 = or i64 %shr3784, %shl3786
  %arrayidx3788 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1686 = load i64, i64* %arrayidx3788, align 8
  %shr3789 = lshr i64 %1686, 18
  %arrayidx3790 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1687 = load i64, i64* %arrayidx3790, align 8
  %shl3791 = shl i64 %1687, 46
  %or3792 = or i64 %shr3789, %shl3791
  %xor3793 = xor i64 %or3787, %or3792
  %arrayidx3794 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1688 = load i64, i64* %arrayidx3794, align 8
  %shr3795 = lshr i64 %1688, 41
  %arrayidx3796 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1689 = load i64, i64* %arrayidx3796, align 8
  %shl3797 = shl i64 %1689, 23
  %or3798 = or i64 %shr3795, %shl3797
  %xor3799 = xor i64 %xor3793, %or3798
  %add3800 = add i64 %1683, %xor3799
  %arrayidx3801 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1690 = load i64, i64* %arrayidx3801, align 8
  %arrayidx3802 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1691 = load i64, i64* %arrayidx3802, align 8
  %arrayidx3803 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1692 = load i64, i64* %arrayidx3803, align 8
  %arrayidx3804 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1693 = load i64, i64* %arrayidx3804, align 8
  %xor3805 = xor i64 %1692, %1693
  %and3806 = and i64 %1691, %xor3805
  %xor3807 = xor i64 %1690, %and3806
  %add3808 = add i64 %add3800, %xor3807
  %add3809 = add i64 %add3808, -6606660893046293015
  %arrayidx3810 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 61
  %1694 = load i64, i64* %arrayidx3810, align 8
  %add3811 = add i64 %add3809, %1694
  store i64 %add3811, i64* %t0, align 8
  %arrayidx3812 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1695 = load i64, i64* %arrayidx3812, align 8
  %shr3813 = lshr i64 %1695, 28
  %arrayidx3814 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1696 = load i64, i64* %arrayidx3814, align 8
  %shl3815 = shl i64 %1696, 36
  %or3816 = or i64 %shr3813, %shl3815
  %arrayidx3817 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1697 = load i64, i64* %arrayidx3817, align 8
  %shr3818 = lshr i64 %1697, 34
  %arrayidx3819 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1698 = load i64, i64* %arrayidx3819, align 8
  %shl3820 = shl i64 %1698, 30
  %or3821 = or i64 %shr3818, %shl3820
  %xor3822 = xor i64 %or3816, %or3821
  %arrayidx3823 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1699 = load i64, i64* %arrayidx3823, align 8
  %shr3824 = lshr i64 %1699, 39
  %arrayidx3825 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1700 = load i64, i64* %arrayidx3825, align 8
  %shl3826 = shl i64 %1700, 25
  %or3827 = or i64 %shr3824, %shl3826
  %xor3828 = xor i64 %xor3822, %or3827
  %arrayidx3829 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1701 = load i64, i64* %arrayidx3829, align 8
  %arrayidx3830 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1702 = load i64, i64* %arrayidx3830, align 8
  %or3831 = or i64 %1701, %1702
  %arrayidx3832 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1703 = load i64, i64* %arrayidx3832, align 8
  %and3833 = and i64 %or3831, %1703
  %arrayidx3834 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1704 = load i64, i64* %arrayidx3834, align 8
  %arrayidx3835 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1705 = load i64, i64* %arrayidx3835, align 8
  %and3836 = and i64 %1704, %1705
  %or3837 = or i64 %and3833, %and3836
  %add3838 = add i64 %xor3828, %or3837
  store i64 %add3838, i64* %t1, align 8
  %1706 = load i64, i64* %t0, align 8
  %arrayidx3839 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1707 = load i64, i64* %arrayidx3839, align 8
  %add3840 = add i64 %1707, %1706
  store i64 %add3840, i64* %arrayidx3839, align 8
  %1708 = load i64, i64* %t0, align 8
  %1709 = load i64, i64* %t1, align 8
  %add3841 = add i64 %1708, %1709
  %arrayidx3842 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add3841, i64* %arrayidx3842, align 8
  %arrayidx3843 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1710 = load i64, i64* %arrayidx3843, align 8
  %arrayidx3844 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1711 = load i64, i64* %arrayidx3844, align 8
  %shr3845 = lshr i64 %1711, 14
  %arrayidx3846 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1712 = load i64, i64* %arrayidx3846, align 8
  %shl3847 = shl i64 %1712, 50
  %or3848 = or i64 %shr3845, %shl3847
  %arrayidx3849 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1713 = load i64, i64* %arrayidx3849, align 8
  %shr3850 = lshr i64 %1713, 18
  %arrayidx3851 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1714 = load i64, i64* %arrayidx3851, align 8
  %shl3852 = shl i64 %1714, 46
  %or3853 = or i64 %shr3850, %shl3852
  %xor3854 = xor i64 %or3848, %or3853
  %arrayidx3855 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1715 = load i64, i64* %arrayidx3855, align 8
  %shr3856 = lshr i64 %1715, 41
  %arrayidx3857 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1716 = load i64, i64* %arrayidx3857, align 8
  %shl3858 = shl i64 %1716, 23
  %or3859 = or i64 %shr3856, %shl3858
  %xor3860 = xor i64 %xor3854, %or3859
  %add3861 = add i64 %1710, %xor3860
  %arrayidx3862 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1717 = load i64, i64* %arrayidx3862, align 8
  %arrayidx3863 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1718 = load i64, i64* %arrayidx3863, align 8
  %arrayidx3864 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1719 = load i64, i64* %arrayidx3864, align 8
  %arrayidx3865 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1720 = load i64, i64* %arrayidx3865, align 8
  %xor3866 = xor i64 %1719, %1720
  %and3867 = and i64 %1718, %xor3866
  %xor3868 = xor i64 %1717, %and3867
  %add3869 = add i64 %add3861, %xor3868
  %add3870 = add i64 %add3869, -4685533653050689259
  %arrayidx3871 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 62
  %1721 = load i64, i64* %arrayidx3871, align 8
  %add3872 = add i64 %add3870, %1721
  store i64 %add3872, i64* %t0, align 8
  %arrayidx3873 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1722 = load i64, i64* %arrayidx3873, align 8
  %shr3874 = lshr i64 %1722, 28
  %arrayidx3875 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1723 = load i64, i64* %arrayidx3875, align 8
  %shl3876 = shl i64 %1723, 36
  %or3877 = or i64 %shr3874, %shl3876
  %arrayidx3878 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1724 = load i64, i64* %arrayidx3878, align 8
  %shr3879 = lshr i64 %1724, 34
  %arrayidx3880 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1725 = load i64, i64* %arrayidx3880, align 8
  %shl3881 = shl i64 %1725, 30
  %or3882 = or i64 %shr3879, %shl3881
  %xor3883 = xor i64 %or3877, %or3882
  %arrayidx3884 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1726 = load i64, i64* %arrayidx3884, align 8
  %shr3885 = lshr i64 %1726, 39
  %arrayidx3886 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1727 = load i64, i64* %arrayidx3886, align 8
  %shl3887 = shl i64 %1727, 25
  %or3888 = or i64 %shr3885, %shl3887
  %xor3889 = xor i64 %xor3883, %or3888
  %arrayidx3890 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1728 = load i64, i64* %arrayidx3890, align 8
  %arrayidx3891 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1729 = load i64, i64* %arrayidx3891, align 8
  %or3892 = or i64 %1728, %1729
  %arrayidx3893 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1730 = load i64, i64* %arrayidx3893, align 8
  %and3894 = and i64 %or3892, %1730
  %arrayidx3895 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1731 = load i64, i64* %arrayidx3895, align 8
  %arrayidx3896 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1732 = load i64, i64* %arrayidx3896, align 8
  %and3897 = and i64 %1731, %1732
  %or3898 = or i64 %and3894, %and3897
  %add3899 = add i64 %xor3889, %or3898
  store i64 %add3899, i64* %t1, align 8
  %1733 = load i64, i64* %t0, align 8
  %arrayidx3900 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1734 = load i64, i64* %arrayidx3900, align 8
  %add3901 = add i64 %1734, %1733
  store i64 %add3901, i64* %arrayidx3900, align 8
  %1735 = load i64, i64* %t0, align 8
  %1736 = load i64, i64* %t1, align 8
  %add3902 = add i64 %1735, %1736
  %arrayidx3903 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add3902, i64* %arrayidx3903, align 8
  %arrayidx3904 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1737 = load i64, i64* %arrayidx3904, align 8
  %arrayidx3905 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1738 = load i64, i64* %arrayidx3905, align 8
  %shr3906 = lshr i64 %1738, 14
  %arrayidx3907 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1739 = load i64, i64* %arrayidx3907, align 8
  %shl3908 = shl i64 %1739, 50
  %or3909 = or i64 %shr3906, %shl3908
  %arrayidx3910 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1740 = load i64, i64* %arrayidx3910, align 8
  %shr3911 = lshr i64 %1740, 18
  %arrayidx3912 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1741 = load i64, i64* %arrayidx3912, align 8
  %shl3913 = shl i64 %1741, 46
  %or3914 = or i64 %shr3911, %shl3913
  %xor3915 = xor i64 %or3909, %or3914
  %arrayidx3916 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1742 = load i64, i64* %arrayidx3916, align 8
  %shr3917 = lshr i64 %1742, 41
  %arrayidx3918 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1743 = load i64, i64* %arrayidx3918, align 8
  %shl3919 = shl i64 %1743, 23
  %or3920 = or i64 %shr3917, %shl3919
  %xor3921 = xor i64 %xor3915, %or3920
  %add3922 = add i64 %1737, %xor3921
  %arrayidx3923 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1744 = load i64, i64* %arrayidx3923, align 8
  %arrayidx3924 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1745 = load i64, i64* %arrayidx3924, align 8
  %arrayidx3925 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1746 = load i64, i64* %arrayidx3925, align 8
  %arrayidx3926 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1747 = load i64, i64* %arrayidx3926, align 8
  %xor3927 = xor i64 %1746, %1747
  %and3928 = and i64 %1745, %xor3927
  %xor3929 = xor i64 %1744, %and3928
  %add3930 = add i64 %add3922, %xor3929
  %add3931 = add i64 %add3930, -4147400797238176981
  %arrayidx3932 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 63
  %1748 = load i64, i64* %arrayidx3932, align 8
  %add3933 = add i64 %add3931, %1748
  store i64 %add3933, i64* %t0, align 8
  %arrayidx3934 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1749 = load i64, i64* %arrayidx3934, align 8
  %shr3935 = lshr i64 %1749, 28
  %arrayidx3936 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1750 = load i64, i64* %arrayidx3936, align 8
  %shl3937 = shl i64 %1750, 36
  %or3938 = or i64 %shr3935, %shl3937
  %arrayidx3939 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1751 = load i64, i64* %arrayidx3939, align 8
  %shr3940 = lshr i64 %1751, 34
  %arrayidx3941 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1752 = load i64, i64* %arrayidx3941, align 8
  %shl3942 = shl i64 %1752, 30
  %or3943 = or i64 %shr3940, %shl3942
  %xor3944 = xor i64 %or3938, %or3943
  %arrayidx3945 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1753 = load i64, i64* %arrayidx3945, align 8
  %shr3946 = lshr i64 %1753, 39
  %arrayidx3947 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1754 = load i64, i64* %arrayidx3947, align 8
  %shl3948 = shl i64 %1754, 25
  %or3949 = or i64 %shr3946, %shl3948
  %xor3950 = xor i64 %xor3944, %or3949
  %arrayidx3951 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1755 = load i64, i64* %arrayidx3951, align 8
  %arrayidx3952 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1756 = load i64, i64* %arrayidx3952, align 8
  %or3953 = or i64 %1755, %1756
  %arrayidx3954 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1757 = load i64, i64* %arrayidx3954, align 8
  %and3955 = and i64 %or3953, %1757
  %arrayidx3956 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1758 = load i64, i64* %arrayidx3956, align 8
  %arrayidx3957 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1759 = load i64, i64* %arrayidx3957, align 8
  %and3958 = and i64 %1758, %1759
  %or3959 = or i64 %and3955, %and3958
  %add3960 = add i64 %xor3950, %or3959
  store i64 %add3960, i64* %t1, align 8
  %1760 = load i64, i64* %t0, align 8
  %arrayidx3961 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1761 = load i64, i64* %arrayidx3961, align 8
  %add3962 = add i64 %1761, %1760
  store i64 %add3962, i64* %arrayidx3961, align 8
  %1762 = load i64, i64* %t0, align 8
  %1763 = load i64, i64* %t1, align 8
  %add3963 = add i64 %1762, %1763
  %arrayidx3964 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add3963, i64* %arrayidx3964, align 8
  %arrayidx3965 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1764 = load i64, i64* %arrayidx3965, align 8
  %arrayidx3966 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1765 = load i64, i64* %arrayidx3966, align 8
  %shr3967 = lshr i64 %1765, 14
  %arrayidx3968 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1766 = load i64, i64* %arrayidx3968, align 8
  %shl3969 = shl i64 %1766, 50
  %or3970 = or i64 %shr3967, %shl3969
  %arrayidx3971 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1767 = load i64, i64* %arrayidx3971, align 8
  %shr3972 = lshr i64 %1767, 18
  %arrayidx3973 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1768 = load i64, i64* %arrayidx3973, align 8
  %shl3974 = shl i64 %1768, 46
  %or3975 = or i64 %shr3972, %shl3974
  %xor3976 = xor i64 %or3970, %or3975
  %arrayidx3977 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1769 = load i64, i64* %arrayidx3977, align 8
  %shr3978 = lshr i64 %1769, 41
  %arrayidx3979 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1770 = load i64, i64* %arrayidx3979, align 8
  %shl3980 = shl i64 %1770, 23
  %or3981 = or i64 %shr3978, %shl3980
  %xor3982 = xor i64 %xor3976, %or3981
  %add3983 = add i64 %1764, %xor3982
  %arrayidx3984 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1771 = load i64, i64* %arrayidx3984, align 8
  %arrayidx3985 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1772 = load i64, i64* %arrayidx3985, align 8
  %arrayidx3986 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1773 = load i64, i64* %arrayidx3986, align 8
  %arrayidx3987 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1774 = load i64, i64* %arrayidx3987, align 8
  %xor3988 = xor i64 %1773, %1774
  %and3989 = and i64 %1772, %xor3988
  %xor3990 = xor i64 %1771, %and3989
  %add3991 = add i64 %add3983, %xor3990
  %add3992 = add i64 %add3991, -3880063495543823972
  %arrayidx3993 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 64
  %1775 = load i64, i64* %arrayidx3993, align 8
  %add3994 = add i64 %add3992, %1775
  store i64 %add3994, i64* %t0, align 8
  %arrayidx3995 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1776 = load i64, i64* %arrayidx3995, align 8
  %shr3996 = lshr i64 %1776, 28
  %arrayidx3997 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1777 = load i64, i64* %arrayidx3997, align 8
  %shl3998 = shl i64 %1777, 36
  %or3999 = or i64 %shr3996, %shl3998
  %arrayidx4000 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1778 = load i64, i64* %arrayidx4000, align 8
  %shr4001 = lshr i64 %1778, 34
  %arrayidx4002 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1779 = load i64, i64* %arrayidx4002, align 8
  %shl4003 = shl i64 %1779, 30
  %or4004 = or i64 %shr4001, %shl4003
  %xor4005 = xor i64 %or3999, %or4004
  %arrayidx4006 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1780 = load i64, i64* %arrayidx4006, align 8
  %shr4007 = lshr i64 %1780, 39
  %arrayidx4008 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1781 = load i64, i64* %arrayidx4008, align 8
  %shl4009 = shl i64 %1781, 25
  %or4010 = or i64 %shr4007, %shl4009
  %xor4011 = xor i64 %xor4005, %or4010
  %arrayidx4012 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1782 = load i64, i64* %arrayidx4012, align 8
  %arrayidx4013 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1783 = load i64, i64* %arrayidx4013, align 8
  %or4014 = or i64 %1782, %1783
  %arrayidx4015 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1784 = load i64, i64* %arrayidx4015, align 8
  %and4016 = and i64 %or4014, %1784
  %arrayidx4017 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1785 = load i64, i64* %arrayidx4017, align 8
  %arrayidx4018 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1786 = load i64, i64* %arrayidx4018, align 8
  %and4019 = and i64 %1785, %1786
  %or4020 = or i64 %and4016, %and4019
  %add4021 = add i64 %xor4011, %or4020
  store i64 %add4021, i64* %t1, align 8
  %1787 = load i64, i64* %t0, align 8
  %arrayidx4022 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1788 = load i64, i64* %arrayidx4022, align 8
  %add4023 = add i64 %1788, %1787
  store i64 %add4023, i64* %arrayidx4022, align 8
  %1789 = load i64, i64* %t0, align 8
  %1790 = load i64, i64* %t1, align 8
  %add4024 = add i64 %1789, %1790
  %arrayidx4025 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add4024, i64* %arrayidx4025, align 8
  %arrayidx4026 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1791 = load i64, i64* %arrayidx4026, align 8
  %arrayidx4027 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1792 = load i64, i64* %arrayidx4027, align 8
  %shr4028 = lshr i64 %1792, 14
  %arrayidx4029 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1793 = load i64, i64* %arrayidx4029, align 8
  %shl4030 = shl i64 %1793, 50
  %or4031 = or i64 %shr4028, %shl4030
  %arrayidx4032 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1794 = load i64, i64* %arrayidx4032, align 8
  %shr4033 = lshr i64 %1794, 18
  %arrayidx4034 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1795 = load i64, i64* %arrayidx4034, align 8
  %shl4035 = shl i64 %1795, 46
  %or4036 = or i64 %shr4033, %shl4035
  %xor4037 = xor i64 %or4031, %or4036
  %arrayidx4038 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1796 = load i64, i64* %arrayidx4038, align 8
  %shr4039 = lshr i64 %1796, 41
  %arrayidx4040 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1797 = load i64, i64* %arrayidx4040, align 8
  %shl4041 = shl i64 %1797, 23
  %or4042 = or i64 %shr4039, %shl4041
  %xor4043 = xor i64 %xor4037, %or4042
  %add4044 = add i64 %1791, %xor4043
  %arrayidx4045 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1798 = load i64, i64* %arrayidx4045, align 8
  %arrayidx4046 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1799 = load i64, i64* %arrayidx4046, align 8
  %arrayidx4047 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1800 = load i64, i64* %arrayidx4047, align 8
  %arrayidx4048 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1801 = load i64, i64* %arrayidx4048, align 8
  %xor4049 = xor i64 %1800, %1801
  %and4050 = and i64 %1799, %xor4049
  %xor4051 = xor i64 %1798, %and4050
  %add4052 = add i64 %add4044, %xor4051
  %add4053 = add i64 %add4052, -3348786107499101689
  %arrayidx4054 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 65
  %1802 = load i64, i64* %arrayidx4054, align 8
  %add4055 = add i64 %add4053, %1802
  store i64 %add4055, i64* %t0, align 8
  %arrayidx4056 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1803 = load i64, i64* %arrayidx4056, align 8
  %shr4057 = lshr i64 %1803, 28
  %arrayidx4058 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1804 = load i64, i64* %arrayidx4058, align 8
  %shl4059 = shl i64 %1804, 36
  %or4060 = or i64 %shr4057, %shl4059
  %arrayidx4061 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1805 = load i64, i64* %arrayidx4061, align 8
  %shr4062 = lshr i64 %1805, 34
  %arrayidx4063 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1806 = load i64, i64* %arrayidx4063, align 8
  %shl4064 = shl i64 %1806, 30
  %or4065 = or i64 %shr4062, %shl4064
  %xor4066 = xor i64 %or4060, %or4065
  %arrayidx4067 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1807 = load i64, i64* %arrayidx4067, align 8
  %shr4068 = lshr i64 %1807, 39
  %arrayidx4069 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1808 = load i64, i64* %arrayidx4069, align 8
  %shl4070 = shl i64 %1808, 25
  %or4071 = or i64 %shr4068, %shl4070
  %xor4072 = xor i64 %xor4066, %or4071
  %arrayidx4073 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1809 = load i64, i64* %arrayidx4073, align 8
  %arrayidx4074 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1810 = load i64, i64* %arrayidx4074, align 8
  %or4075 = or i64 %1809, %1810
  %arrayidx4076 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1811 = load i64, i64* %arrayidx4076, align 8
  %and4077 = and i64 %or4075, %1811
  %arrayidx4078 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1812 = load i64, i64* %arrayidx4078, align 8
  %arrayidx4079 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1813 = load i64, i64* %arrayidx4079, align 8
  %and4080 = and i64 %1812, %1813
  %or4081 = or i64 %and4077, %and4080
  %add4082 = add i64 %xor4072, %or4081
  store i64 %add4082, i64* %t1, align 8
  %1814 = load i64, i64* %t0, align 8
  %arrayidx4083 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1815 = load i64, i64* %arrayidx4083, align 8
  %add4084 = add i64 %1815, %1814
  store i64 %add4084, i64* %arrayidx4083, align 8
  %1816 = load i64, i64* %t0, align 8
  %1817 = load i64, i64* %t1, align 8
  %add4085 = add i64 %1816, %1817
  %arrayidx4086 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add4085, i64* %arrayidx4086, align 8
  %arrayidx4087 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1818 = load i64, i64* %arrayidx4087, align 8
  %arrayidx4088 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1819 = load i64, i64* %arrayidx4088, align 8
  %shr4089 = lshr i64 %1819, 14
  %arrayidx4090 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1820 = load i64, i64* %arrayidx4090, align 8
  %shl4091 = shl i64 %1820, 50
  %or4092 = or i64 %shr4089, %shl4091
  %arrayidx4093 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1821 = load i64, i64* %arrayidx4093, align 8
  %shr4094 = lshr i64 %1821, 18
  %arrayidx4095 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1822 = load i64, i64* %arrayidx4095, align 8
  %shl4096 = shl i64 %1822, 46
  %or4097 = or i64 %shr4094, %shl4096
  %xor4098 = xor i64 %or4092, %or4097
  %arrayidx4099 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1823 = load i64, i64* %arrayidx4099, align 8
  %shr4100 = lshr i64 %1823, 41
  %arrayidx4101 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1824 = load i64, i64* %arrayidx4101, align 8
  %shl4102 = shl i64 %1824, 23
  %or4103 = or i64 %shr4100, %shl4102
  %xor4104 = xor i64 %xor4098, %or4103
  %add4105 = add i64 %1818, %xor4104
  %arrayidx4106 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1825 = load i64, i64* %arrayidx4106, align 8
  %arrayidx4107 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1826 = load i64, i64* %arrayidx4107, align 8
  %arrayidx4108 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1827 = load i64, i64* %arrayidx4108, align 8
  %arrayidx4109 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1828 = load i64, i64* %arrayidx4109, align 8
  %xor4110 = xor i64 %1827, %1828
  %and4111 = and i64 %1826, %xor4110
  %xor4112 = xor i64 %1825, %and4111
  %add4113 = add i64 %add4105, %xor4112
  %add4114 = add i64 %add4113, -1523767162380948706
  %arrayidx4115 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 66
  %1829 = load i64, i64* %arrayidx4115, align 8
  %add4116 = add i64 %add4114, %1829
  store i64 %add4116, i64* %t0, align 8
  %arrayidx4117 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1830 = load i64, i64* %arrayidx4117, align 8
  %shr4118 = lshr i64 %1830, 28
  %arrayidx4119 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1831 = load i64, i64* %arrayidx4119, align 8
  %shl4120 = shl i64 %1831, 36
  %or4121 = or i64 %shr4118, %shl4120
  %arrayidx4122 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1832 = load i64, i64* %arrayidx4122, align 8
  %shr4123 = lshr i64 %1832, 34
  %arrayidx4124 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1833 = load i64, i64* %arrayidx4124, align 8
  %shl4125 = shl i64 %1833, 30
  %or4126 = or i64 %shr4123, %shl4125
  %xor4127 = xor i64 %or4121, %or4126
  %arrayidx4128 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1834 = load i64, i64* %arrayidx4128, align 8
  %shr4129 = lshr i64 %1834, 39
  %arrayidx4130 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1835 = load i64, i64* %arrayidx4130, align 8
  %shl4131 = shl i64 %1835, 25
  %or4132 = or i64 %shr4129, %shl4131
  %xor4133 = xor i64 %xor4127, %or4132
  %arrayidx4134 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1836 = load i64, i64* %arrayidx4134, align 8
  %arrayidx4135 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1837 = load i64, i64* %arrayidx4135, align 8
  %or4136 = or i64 %1836, %1837
  %arrayidx4137 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1838 = load i64, i64* %arrayidx4137, align 8
  %and4138 = and i64 %or4136, %1838
  %arrayidx4139 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1839 = load i64, i64* %arrayidx4139, align 8
  %arrayidx4140 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1840 = load i64, i64* %arrayidx4140, align 8
  %and4141 = and i64 %1839, %1840
  %or4142 = or i64 %and4138, %and4141
  %add4143 = add i64 %xor4133, %or4142
  store i64 %add4143, i64* %t1, align 8
  %1841 = load i64, i64* %t0, align 8
  %arrayidx4144 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1842 = load i64, i64* %arrayidx4144, align 8
  %add4145 = add i64 %1842, %1841
  store i64 %add4145, i64* %arrayidx4144, align 8
  %1843 = load i64, i64* %t0, align 8
  %1844 = load i64, i64* %t1, align 8
  %add4146 = add i64 %1843, %1844
  %arrayidx4147 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add4146, i64* %arrayidx4147, align 8
  %arrayidx4148 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1845 = load i64, i64* %arrayidx4148, align 8
  %arrayidx4149 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1846 = load i64, i64* %arrayidx4149, align 8
  %shr4150 = lshr i64 %1846, 14
  %arrayidx4151 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1847 = load i64, i64* %arrayidx4151, align 8
  %shl4152 = shl i64 %1847, 50
  %or4153 = or i64 %shr4150, %shl4152
  %arrayidx4154 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1848 = load i64, i64* %arrayidx4154, align 8
  %shr4155 = lshr i64 %1848, 18
  %arrayidx4156 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1849 = load i64, i64* %arrayidx4156, align 8
  %shl4157 = shl i64 %1849, 46
  %or4158 = or i64 %shr4155, %shl4157
  %xor4159 = xor i64 %or4153, %or4158
  %arrayidx4160 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1850 = load i64, i64* %arrayidx4160, align 8
  %shr4161 = lshr i64 %1850, 41
  %arrayidx4162 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1851 = load i64, i64* %arrayidx4162, align 8
  %shl4163 = shl i64 %1851, 23
  %or4164 = or i64 %shr4161, %shl4163
  %xor4165 = xor i64 %xor4159, %or4164
  %add4166 = add i64 %1845, %xor4165
  %arrayidx4167 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1852 = load i64, i64* %arrayidx4167, align 8
  %arrayidx4168 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1853 = load i64, i64* %arrayidx4168, align 8
  %arrayidx4169 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1854 = load i64, i64* %arrayidx4169, align 8
  %arrayidx4170 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1855 = load i64, i64* %arrayidx4170, align 8
  %xor4171 = xor i64 %1854, %1855
  %and4172 = and i64 %1853, %xor4171
  %xor4173 = xor i64 %1852, %and4172
  %add4174 = add i64 %add4166, %xor4173
  %add4175 = add i64 %add4174, -757361751448694408
  %arrayidx4176 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 67
  %1856 = load i64, i64* %arrayidx4176, align 8
  %add4177 = add i64 %add4175, %1856
  store i64 %add4177, i64* %t0, align 8
  %arrayidx4178 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1857 = load i64, i64* %arrayidx4178, align 8
  %shr4179 = lshr i64 %1857, 28
  %arrayidx4180 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1858 = load i64, i64* %arrayidx4180, align 8
  %shl4181 = shl i64 %1858, 36
  %or4182 = or i64 %shr4179, %shl4181
  %arrayidx4183 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1859 = load i64, i64* %arrayidx4183, align 8
  %shr4184 = lshr i64 %1859, 34
  %arrayidx4185 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1860 = load i64, i64* %arrayidx4185, align 8
  %shl4186 = shl i64 %1860, 30
  %or4187 = or i64 %shr4184, %shl4186
  %xor4188 = xor i64 %or4182, %or4187
  %arrayidx4189 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1861 = load i64, i64* %arrayidx4189, align 8
  %shr4190 = lshr i64 %1861, 39
  %arrayidx4191 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1862 = load i64, i64* %arrayidx4191, align 8
  %shl4192 = shl i64 %1862, 25
  %or4193 = or i64 %shr4190, %shl4192
  %xor4194 = xor i64 %xor4188, %or4193
  %arrayidx4195 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1863 = load i64, i64* %arrayidx4195, align 8
  %arrayidx4196 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1864 = load i64, i64* %arrayidx4196, align 8
  %or4197 = or i64 %1863, %1864
  %arrayidx4198 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1865 = load i64, i64* %arrayidx4198, align 8
  %and4199 = and i64 %or4197, %1865
  %arrayidx4200 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1866 = load i64, i64* %arrayidx4200, align 8
  %arrayidx4201 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1867 = load i64, i64* %arrayidx4201, align 8
  %and4202 = and i64 %1866, %1867
  %or4203 = or i64 %and4199, %and4202
  %add4204 = add i64 %xor4194, %or4203
  store i64 %add4204, i64* %t1, align 8
  %1868 = load i64, i64* %t0, align 8
  %arrayidx4205 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1869 = load i64, i64* %arrayidx4205, align 8
  %add4206 = add i64 %1869, %1868
  store i64 %add4206, i64* %arrayidx4205, align 8
  %1870 = load i64, i64* %t0, align 8
  %1871 = load i64, i64* %t1, align 8
  %add4207 = add i64 %1870, %1871
  %arrayidx4208 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add4207, i64* %arrayidx4208, align 8
  %arrayidx4209 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1872 = load i64, i64* %arrayidx4209, align 8
  %arrayidx4210 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1873 = load i64, i64* %arrayidx4210, align 8
  %shr4211 = lshr i64 %1873, 14
  %arrayidx4212 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1874 = load i64, i64* %arrayidx4212, align 8
  %shl4213 = shl i64 %1874, 50
  %or4214 = or i64 %shr4211, %shl4213
  %arrayidx4215 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1875 = load i64, i64* %arrayidx4215, align 8
  %shr4216 = lshr i64 %1875, 18
  %arrayidx4217 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1876 = load i64, i64* %arrayidx4217, align 8
  %shl4218 = shl i64 %1876, 46
  %or4219 = or i64 %shr4216, %shl4218
  %xor4220 = xor i64 %or4214, %or4219
  %arrayidx4221 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1877 = load i64, i64* %arrayidx4221, align 8
  %shr4222 = lshr i64 %1877, 41
  %arrayidx4223 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1878 = load i64, i64* %arrayidx4223, align 8
  %shl4224 = shl i64 %1878, 23
  %or4225 = or i64 %shr4222, %shl4224
  %xor4226 = xor i64 %xor4220, %or4225
  %add4227 = add i64 %1872, %xor4226
  %arrayidx4228 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1879 = load i64, i64* %arrayidx4228, align 8
  %arrayidx4229 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1880 = load i64, i64* %arrayidx4229, align 8
  %arrayidx4230 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1881 = load i64, i64* %arrayidx4230, align 8
  %arrayidx4231 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1882 = load i64, i64* %arrayidx4231, align 8
  %xor4232 = xor i64 %1881, %1882
  %and4233 = and i64 %1880, %xor4232
  %xor4234 = xor i64 %1879, %and4233
  %add4235 = add i64 %add4227, %xor4234
  %add4236 = add i64 %add4235, 500013540394364858
  %arrayidx4237 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 68
  %1883 = load i64, i64* %arrayidx4237, align 8
  %add4238 = add i64 %add4236, %1883
  store i64 %add4238, i64* %t0, align 8
  %arrayidx4239 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1884 = load i64, i64* %arrayidx4239, align 8
  %shr4240 = lshr i64 %1884, 28
  %arrayidx4241 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1885 = load i64, i64* %arrayidx4241, align 8
  %shl4242 = shl i64 %1885, 36
  %or4243 = or i64 %shr4240, %shl4242
  %arrayidx4244 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1886 = load i64, i64* %arrayidx4244, align 8
  %shr4245 = lshr i64 %1886, 34
  %arrayidx4246 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1887 = load i64, i64* %arrayidx4246, align 8
  %shl4247 = shl i64 %1887, 30
  %or4248 = or i64 %shr4245, %shl4247
  %xor4249 = xor i64 %or4243, %or4248
  %arrayidx4250 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1888 = load i64, i64* %arrayidx4250, align 8
  %shr4251 = lshr i64 %1888, 39
  %arrayidx4252 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1889 = load i64, i64* %arrayidx4252, align 8
  %shl4253 = shl i64 %1889, 25
  %or4254 = or i64 %shr4251, %shl4253
  %xor4255 = xor i64 %xor4249, %or4254
  %arrayidx4256 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1890 = load i64, i64* %arrayidx4256, align 8
  %arrayidx4257 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1891 = load i64, i64* %arrayidx4257, align 8
  %or4258 = or i64 %1890, %1891
  %arrayidx4259 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1892 = load i64, i64* %arrayidx4259, align 8
  %and4260 = and i64 %or4258, %1892
  %arrayidx4261 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1893 = load i64, i64* %arrayidx4261, align 8
  %arrayidx4262 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1894 = load i64, i64* %arrayidx4262, align 8
  %and4263 = and i64 %1893, %1894
  %or4264 = or i64 %and4260, %and4263
  %add4265 = add i64 %xor4255, %or4264
  store i64 %add4265, i64* %t1, align 8
  %1895 = load i64, i64* %t0, align 8
  %arrayidx4266 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1896 = load i64, i64* %arrayidx4266, align 8
  %add4267 = add i64 %1896, %1895
  store i64 %add4267, i64* %arrayidx4266, align 8
  %1897 = load i64, i64* %t0, align 8
  %1898 = load i64, i64* %t1, align 8
  %add4268 = add i64 %1897, %1898
  %arrayidx4269 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add4268, i64* %arrayidx4269, align 8
  %arrayidx4270 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1899 = load i64, i64* %arrayidx4270, align 8
  %arrayidx4271 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1900 = load i64, i64* %arrayidx4271, align 8
  %shr4272 = lshr i64 %1900, 14
  %arrayidx4273 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1901 = load i64, i64* %arrayidx4273, align 8
  %shl4274 = shl i64 %1901, 50
  %or4275 = or i64 %shr4272, %shl4274
  %arrayidx4276 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1902 = load i64, i64* %arrayidx4276, align 8
  %shr4277 = lshr i64 %1902, 18
  %arrayidx4278 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1903 = load i64, i64* %arrayidx4278, align 8
  %shl4279 = shl i64 %1903, 46
  %or4280 = or i64 %shr4277, %shl4279
  %xor4281 = xor i64 %or4275, %or4280
  %arrayidx4282 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1904 = load i64, i64* %arrayidx4282, align 8
  %shr4283 = lshr i64 %1904, 41
  %arrayidx4284 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1905 = load i64, i64* %arrayidx4284, align 8
  %shl4285 = shl i64 %1905, 23
  %or4286 = or i64 %shr4283, %shl4285
  %xor4287 = xor i64 %xor4281, %or4286
  %add4288 = add i64 %1899, %xor4287
  %arrayidx4289 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1906 = load i64, i64* %arrayidx4289, align 8
  %arrayidx4290 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1907 = load i64, i64* %arrayidx4290, align 8
  %arrayidx4291 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1908 = load i64, i64* %arrayidx4291, align 8
  %arrayidx4292 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1909 = load i64, i64* %arrayidx4292, align 8
  %xor4293 = xor i64 %1908, %1909
  %and4294 = and i64 %1907, %xor4293
  %xor4295 = xor i64 %1906, %and4294
  %add4296 = add i64 %add4288, %xor4295
  %add4297 = add i64 %add4296, 748580250866718886
  %arrayidx4298 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 69
  %1910 = load i64, i64* %arrayidx4298, align 8
  %add4299 = add i64 %add4297, %1910
  store i64 %add4299, i64* %t0, align 8
  %arrayidx4300 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1911 = load i64, i64* %arrayidx4300, align 8
  %shr4301 = lshr i64 %1911, 28
  %arrayidx4302 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1912 = load i64, i64* %arrayidx4302, align 8
  %shl4303 = shl i64 %1912, 36
  %or4304 = or i64 %shr4301, %shl4303
  %arrayidx4305 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1913 = load i64, i64* %arrayidx4305, align 8
  %shr4306 = lshr i64 %1913, 34
  %arrayidx4307 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1914 = load i64, i64* %arrayidx4307, align 8
  %shl4308 = shl i64 %1914, 30
  %or4309 = or i64 %shr4306, %shl4308
  %xor4310 = xor i64 %or4304, %or4309
  %arrayidx4311 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1915 = load i64, i64* %arrayidx4311, align 8
  %shr4312 = lshr i64 %1915, 39
  %arrayidx4313 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1916 = load i64, i64* %arrayidx4313, align 8
  %shl4314 = shl i64 %1916, 25
  %or4315 = or i64 %shr4312, %shl4314
  %xor4316 = xor i64 %xor4310, %or4315
  %arrayidx4317 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1917 = load i64, i64* %arrayidx4317, align 8
  %arrayidx4318 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1918 = load i64, i64* %arrayidx4318, align 8
  %or4319 = or i64 %1917, %1918
  %arrayidx4320 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1919 = load i64, i64* %arrayidx4320, align 8
  %and4321 = and i64 %or4319, %1919
  %arrayidx4322 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1920 = load i64, i64* %arrayidx4322, align 8
  %arrayidx4323 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1921 = load i64, i64* %arrayidx4323, align 8
  %and4324 = and i64 %1920, %1921
  %or4325 = or i64 %and4321, %and4324
  %add4326 = add i64 %xor4316, %or4325
  store i64 %add4326, i64* %t1, align 8
  %1922 = load i64, i64* %t0, align 8
  %arrayidx4327 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1923 = load i64, i64* %arrayidx4327, align 8
  %add4328 = add i64 %1923, %1922
  store i64 %add4328, i64* %arrayidx4327, align 8
  %1924 = load i64, i64* %t0, align 8
  %1925 = load i64, i64* %t1, align 8
  %add4329 = add i64 %1924, %1925
  %arrayidx4330 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add4329, i64* %arrayidx4330, align 8
  %arrayidx4331 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1926 = load i64, i64* %arrayidx4331, align 8
  %arrayidx4332 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1927 = load i64, i64* %arrayidx4332, align 8
  %shr4333 = lshr i64 %1927, 14
  %arrayidx4334 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1928 = load i64, i64* %arrayidx4334, align 8
  %shl4335 = shl i64 %1928, 50
  %or4336 = or i64 %shr4333, %shl4335
  %arrayidx4337 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1929 = load i64, i64* %arrayidx4337, align 8
  %shr4338 = lshr i64 %1929, 18
  %arrayidx4339 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1930 = load i64, i64* %arrayidx4339, align 8
  %shl4340 = shl i64 %1930, 46
  %or4341 = or i64 %shr4338, %shl4340
  %xor4342 = xor i64 %or4336, %or4341
  %arrayidx4343 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1931 = load i64, i64* %arrayidx4343, align 8
  %shr4344 = lshr i64 %1931, 41
  %arrayidx4345 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1932 = load i64, i64* %arrayidx4345, align 8
  %shl4346 = shl i64 %1932, 23
  %or4347 = or i64 %shr4344, %shl4346
  %xor4348 = xor i64 %xor4342, %or4347
  %add4349 = add i64 %1926, %xor4348
  %arrayidx4350 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1933 = load i64, i64* %arrayidx4350, align 8
  %arrayidx4351 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1934 = load i64, i64* %arrayidx4351, align 8
  %arrayidx4352 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1935 = load i64, i64* %arrayidx4352, align 8
  %arrayidx4353 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1936 = load i64, i64* %arrayidx4353, align 8
  %xor4354 = xor i64 %1935, %1936
  %and4355 = and i64 %1934, %xor4354
  %xor4356 = xor i64 %1933, %and4355
  %add4357 = add i64 %add4349, %xor4356
  %add4358 = add i64 %add4357, 1242879168328830382
  %arrayidx4359 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 70
  %1937 = load i64, i64* %arrayidx4359, align 8
  %add4360 = add i64 %add4358, %1937
  store i64 %add4360, i64* %t0, align 8
  %arrayidx4361 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1938 = load i64, i64* %arrayidx4361, align 8
  %shr4362 = lshr i64 %1938, 28
  %arrayidx4363 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1939 = load i64, i64* %arrayidx4363, align 8
  %shl4364 = shl i64 %1939, 36
  %or4365 = or i64 %shr4362, %shl4364
  %arrayidx4366 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1940 = load i64, i64* %arrayidx4366, align 8
  %shr4367 = lshr i64 %1940, 34
  %arrayidx4368 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1941 = load i64, i64* %arrayidx4368, align 8
  %shl4369 = shl i64 %1941, 30
  %or4370 = or i64 %shr4367, %shl4369
  %xor4371 = xor i64 %or4365, %or4370
  %arrayidx4372 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1942 = load i64, i64* %arrayidx4372, align 8
  %shr4373 = lshr i64 %1942, 39
  %arrayidx4374 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1943 = load i64, i64* %arrayidx4374, align 8
  %shl4375 = shl i64 %1943, 25
  %or4376 = or i64 %shr4373, %shl4375
  %xor4377 = xor i64 %xor4371, %or4376
  %arrayidx4378 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1944 = load i64, i64* %arrayidx4378, align 8
  %arrayidx4379 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1945 = load i64, i64* %arrayidx4379, align 8
  %or4380 = or i64 %1944, %1945
  %arrayidx4381 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1946 = load i64, i64* %arrayidx4381, align 8
  %and4382 = and i64 %or4380, %1946
  %arrayidx4383 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1947 = load i64, i64* %arrayidx4383, align 8
  %arrayidx4384 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1948 = load i64, i64* %arrayidx4384, align 8
  %and4385 = and i64 %1947, %1948
  %or4386 = or i64 %and4382, %and4385
  %add4387 = add i64 %xor4377, %or4386
  store i64 %add4387, i64* %t1, align 8
  %1949 = load i64, i64* %t0, align 8
  %arrayidx4388 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1950 = load i64, i64* %arrayidx4388, align 8
  %add4389 = add i64 %1950, %1949
  store i64 %add4389, i64* %arrayidx4388, align 8
  %1951 = load i64, i64* %t0, align 8
  %1952 = load i64, i64* %t1, align 8
  %add4390 = add i64 %1951, %1952
  %arrayidx4391 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add4390, i64* %arrayidx4391, align 8
  %arrayidx4392 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1953 = load i64, i64* %arrayidx4392, align 8
  %arrayidx4393 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1954 = load i64, i64* %arrayidx4393, align 8
  %shr4394 = lshr i64 %1954, 14
  %arrayidx4395 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1955 = load i64, i64* %arrayidx4395, align 8
  %shl4396 = shl i64 %1955, 50
  %or4397 = or i64 %shr4394, %shl4396
  %arrayidx4398 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1956 = load i64, i64* %arrayidx4398, align 8
  %shr4399 = lshr i64 %1956, 18
  %arrayidx4400 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1957 = load i64, i64* %arrayidx4400, align 8
  %shl4401 = shl i64 %1957, 46
  %or4402 = or i64 %shr4399, %shl4401
  %xor4403 = xor i64 %or4397, %or4402
  %arrayidx4404 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1958 = load i64, i64* %arrayidx4404, align 8
  %shr4405 = lshr i64 %1958, 41
  %arrayidx4406 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1959 = load i64, i64* %arrayidx4406, align 8
  %shl4407 = shl i64 %1959, 23
  %or4408 = or i64 %shr4405, %shl4407
  %xor4409 = xor i64 %xor4403, %or4408
  %add4410 = add i64 %1953, %xor4409
  %arrayidx4411 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1960 = load i64, i64* %arrayidx4411, align 8
  %arrayidx4412 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1961 = load i64, i64* %arrayidx4412, align 8
  %arrayidx4413 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1962 = load i64, i64* %arrayidx4413, align 8
  %arrayidx4414 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1963 = load i64, i64* %arrayidx4414, align 8
  %xor4415 = xor i64 %1962, %1963
  %and4416 = and i64 %1961, %xor4415
  %xor4417 = xor i64 %1960, %and4416
  %add4418 = add i64 %add4410, %xor4417
  %add4419 = add i64 %add4418, 1977374033974150939
  %arrayidx4420 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 71
  %1964 = load i64, i64* %arrayidx4420, align 8
  %add4421 = add i64 %add4419, %1964
  store i64 %add4421, i64* %t0, align 8
  %arrayidx4422 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1965 = load i64, i64* %arrayidx4422, align 8
  %shr4423 = lshr i64 %1965, 28
  %arrayidx4424 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1966 = load i64, i64* %arrayidx4424, align 8
  %shl4425 = shl i64 %1966, 36
  %or4426 = or i64 %shr4423, %shl4425
  %arrayidx4427 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1967 = load i64, i64* %arrayidx4427, align 8
  %shr4428 = lshr i64 %1967, 34
  %arrayidx4429 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1968 = load i64, i64* %arrayidx4429, align 8
  %shl4430 = shl i64 %1968, 30
  %or4431 = or i64 %shr4428, %shl4430
  %xor4432 = xor i64 %or4426, %or4431
  %arrayidx4433 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1969 = load i64, i64* %arrayidx4433, align 8
  %shr4434 = lshr i64 %1969, 39
  %arrayidx4435 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1970 = load i64, i64* %arrayidx4435, align 8
  %shl4436 = shl i64 %1970, 25
  %or4437 = or i64 %shr4434, %shl4436
  %xor4438 = xor i64 %xor4432, %or4437
  %arrayidx4439 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1971 = load i64, i64* %arrayidx4439, align 8
  %arrayidx4440 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1972 = load i64, i64* %arrayidx4440, align 8
  %or4441 = or i64 %1971, %1972
  %arrayidx4442 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %1973 = load i64, i64* %arrayidx4442, align 8
  %and4443 = and i64 %or4441, %1973
  %arrayidx4444 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1974 = load i64, i64* %arrayidx4444, align 8
  %arrayidx4445 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %1975 = load i64, i64* %arrayidx4445, align 8
  %and4446 = and i64 %1974, %1975
  %or4447 = or i64 %and4443, %and4446
  %add4448 = add i64 %xor4438, %or4447
  store i64 %add4448, i64* %t1, align 8
  %1976 = load i64, i64* %t0, align 8
  %arrayidx4449 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1977 = load i64, i64* %arrayidx4449, align 8
  %add4450 = add i64 %1977, %1976
  store i64 %add4450, i64* %arrayidx4449, align 8
  %1978 = load i64, i64* %t0, align 8
  %1979 = load i64, i64* %t1, align 8
  %add4451 = add i64 %1978, %1979
  %arrayidx4452 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add4451, i64* %arrayidx4452, align 8
  %arrayidx4453 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %1980 = load i64, i64* %arrayidx4453, align 8
  %arrayidx4454 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1981 = load i64, i64* %arrayidx4454, align 8
  %shr4455 = lshr i64 %1981, 14
  %arrayidx4456 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1982 = load i64, i64* %arrayidx4456, align 8
  %shl4457 = shl i64 %1982, 50
  %or4458 = or i64 %shr4455, %shl4457
  %arrayidx4459 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1983 = load i64, i64* %arrayidx4459, align 8
  %shr4460 = lshr i64 %1983, 18
  %arrayidx4461 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1984 = load i64, i64* %arrayidx4461, align 8
  %shl4462 = shl i64 %1984, 46
  %or4463 = or i64 %shr4460, %shl4462
  %xor4464 = xor i64 %or4458, %or4463
  %arrayidx4465 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1985 = load i64, i64* %arrayidx4465, align 8
  %shr4466 = lshr i64 %1985, 41
  %arrayidx4467 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1986 = load i64, i64* %arrayidx4467, align 8
  %shl4468 = shl i64 %1986, 23
  %or4469 = or i64 %shr4466, %shl4468
  %xor4470 = xor i64 %xor4464, %or4469
  %add4471 = add i64 %1980, %xor4470
  %arrayidx4472 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1987 = load i64, i64* %arrayidx4472, align 8
  %arrayidx4473 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %1988 = load i64, i64* %arrayidx4473, align 8
  %arrayidx4474 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %1989 = load i64, i64* %arrayidx4474, align 8
  %arrayidx4475 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %1990 = load i64, i64* %arrayidx4475, align 8
  %xor4476 = xor i64 %1989, %1990
  %and4477 = and i64 %1988, %xor4476
  %xor4478 = xor i64 %1987, %and4477
  %add4479 = add i64 %add4471, %xor4478
  %add4480 = add i64 %add4479, 2944078676154940804
  %arrayidx4481 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 72
  %1991 = load i64, i64* %arrayidx4481, align 8
  %add4482 = add i64 %add4480, %1991
  store i64 %add4482, i64* %t0, align 8
  %arrayidx4483 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1992 = load i64, i64* %arrayidx4483, align 8
  %shr4484 = lshr i64 %1992, 28
  %arrayidx4485 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1993 = load i64, i64* %arrayidx4485, align 8
  %shl4486 = shl i64 %1993, 36
  %or4487 = or i64 %shr4484, %shl4486
  %arrayidx4488 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1994 = load i64, i64* %arrayidx4488, align 8
  %shr4489 = lshr i64 %1994, 34
  %arrayidx4490 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1995 = load i64, i64* %arrayidx4490, align 8
  %shl4491 = shl i64 %1995, 30
  %or4492 = or i64 %shr4489, %shl4491
  %xor4493 = xor i64 %or4487, %or4492
  %arrayidx4494 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1996 = load i64, i64* %arrayidx4494, align 8
  %shr4495 = lshr i64 %1996, 39
  %arrayidx4496 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1997 = load i64, i64* %arrayidx4496, align 8
  %shl4497 = shl i64 %1997, 25
  %or4498 = or i64 %shr4495, %shl4497
  %xor4499 = xor i64 %xor4493, %or4498
  %arrayidx4500 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %1998 = load i64, i64* %arrayidx4500, align 8
  %arrayidx4501 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %1999 = load i64, i64* %arrayidx4501, align 8
  %or4502 = or i64 %1998, %1999
  %arrayidx4503 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2000 = load i64, i64* %arrayidx4503, align 8
  %and4504 = and i64 %or4502, %2000
  %arrayidx4505 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2001 = load i64, i64* %arrayidx4505, align 8
  %arrayidx4506 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2002 = load i64, i64* %arrayidx4506, align 8
  %and4507 = and i64 %2001, %2002
  %or4508 = or i64 %and4504, %and4507
  %add4509 = add i64 %xor4499, %or4508
  store i64 %add4509, i64* %t1, align 8
  %2003 = load i64, i64* %t0, align 8
  %arrayidx4510 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2004 = load i64, i64* %arrayidx4510, align 8
  %add4511 = add i64 %2004, %2003
  store i64 %add4511, i64* %arrayidx4510, align 8
  %2005 = load i64, i64* %t0, align 8
  %2006 = load i64, i64* %t1, align 8
  %add4512 = add i64 %2005, %2006
  %arrayidx4513 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  store i64 %add4512, i64* %arrayidx4513, align 8
  %arrayidx4514 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2007 = load i64, i64* %arrayidx4514, align 8
  %arrayidx4515 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2008 = load i64, i64* %arrayidx4515, align 8
  %shr4516 = lshr i64 %2008, 14
  %arrayidx4517 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2009 = load i64, i64* %arrayidx4517, align 8
  %shl4518 = shl i64 %2009, 50
  %or4519 = or i64 %shr4516, %shl4518
  %arrayidx4520 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2010 = load i64, i64* %arrayidx4520, align 8
  %shr4521 = lshr i64 %2010, 18
  %arrayidx4522 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2011 = load i64, i64* %arrayidx4522, align 8
  %shl4523 = shl i64 %2011, 46
  %or4524 = or i64 %shr4521, %shl4523
  %xor4525 = xor i64 %or4519, %or4524
  %arrayidx4526 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2012 = load i64, i64* %arrayidx4526, align 8
  %shr4527 = lshr i64 %2012, 41
  %arrayidx4528 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2013 = load i64, i64* %arrayidx4528, align 8
  %shl4529 = shl i64 %2013, 23
  %or4530 = or i64 %shr4527, %shl4529
  %xor4531 = xor i64 %xor4525, %or4530
  %add4532 = add i64 %2007, %xor4531
  %arrayidx4533 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2014 = load i64, i64* %arrayidx4533, align 8
  %arrayidx4534 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2015 = load i64, i64* %arrayidx4534, align 8
  %arrayidx4535 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2016 = load i64, i64* %arrayidx4535, align 8
  %arrayidx4536 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2017 = load i64, i64* %arrayidx4536, align 8
  %xor4537 = xor i64 %2016, %2017
  %and4538 = and i64 %2015, %xor4537
  %xor4539 = xor i64 %2014, %and4538
  %add4540 = add i64 %add4532, %xor4539
  %add4541 = add i64 %add4540, 3659926193048069267
  %arrayidx4542 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 73
  %2018 = load i64, i64* %arrayidx4542, align 8
  %add4543 = add i64 %add4541, %2018
  store i64 %add4543, i64* %t0, align 8
  %arrayidx4544 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2019 = load i64, i64* %arrayidx4544, align 8
  %shr4545 = lshr i64 %2019, 28
  %arrayidx4546 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2020 = load i64, i64* %arrayidx4546, align 8
  %shl4547 = shl i64 %2020, 36
  %or4548 = or i64 %shr4545, %shl4547
  %arrayidx4549 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2021 = load i64, i64* %arrayidx4549, align 8
  %shr4550 = lshr i64 %2021, 34
  %arrayidx4551 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2022 = load i64, i64* %arrayidx4551, align 8
  %shl4552 = shl i64 %2022, 30
  %or4553 = or i64 %shr4550, %shl4552
  %xor4554 = xor i64 %or4548, %or4553
  %arrayidx4555 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2023 = load i64, i64* %arrayidx4555, align 8
  %shr4556 = lshr i64 %2023, 39
  %arrayidx4557 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2024 = load i64, i64* %arrayidx4557, align 8
  %shl4558 = shl i64 %2024, 25
  %or4559 = or i64 %shr4556, %shl4558
  %xor4560 = xor i64 %xor4554, %or4559
  %arrayidx4561 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2025 = load i64, i64* %arrayidx4561, align 8
  %arrayidx4562 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2026 = load i64, i64* %arrayidx4562, align 8
  %or4563 = or i64 %2025, %2026
  %arrayidx4564 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2027 = load i64, i64* %arrayidx4564, align 8
  %and4565 = and i64 %or4563, %2027
  %arrayidx4566 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2028 = load i64, i64* %arrayidx4566, align 8
  %arrayidx4567 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2029 = load i64, i64* %arrayidx4567, align 8
  %and4568 = and i64 %2028, %2029
  %or4569 = or i64 %and4565, %and4568
  %add4570 = add i64 %xor4560, %or4569
  store i64 %add4570, i64* %t1, align 8
  %2030 = load i64, i64* %t0, align 8
  %arrayidx4571 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2031 = load i64, i64* %arrayidx4571, align 8
  %add4572 = add i64 %2031, %2030
  store i64 %add4572, i64* %arrayidx4571, align 8
  %2032 = load i64, i64* %t0, align 8
  %2033 = load i64, i64* %t1, align 8
  %add4573 = add i64 %2032, %2033
  %arrayidx4574 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  store i64 %add4573, i64* %arrayidx4574, align 8
  %arrayidx4575 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2034 = load i64, i64* %arrayidx4575, align 8
  %arrayidx4576 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2035 = load i64, i64* %arrayidx4576, align 8
  %shr4577 = lshr i64 %2035, 14
  %arrayidx4578 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2036 = load i64, i64* %arrayidx4578, align 8
  %shl4579 = shl i64 %2036, 50
  %or4580 = or i64 %shr4577, %shl4579
  %arrayidx4581 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2037 = load i64, i64* %arrayidx4581, align 8
  %shr4582 = lshr i64 %2037, 18
  %arrayidx4583 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2038 = load i64, i64* %arrayidx4583, align 8
  %shl4584 = shl i64 %2038, 46
  %or4585 = or i64 %shr4582, %shl4584
  %xor4586 = xor i64 %or4580, %or4585
  %arrayidx4587 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2039 = load i64, i64* %arrayidx4587, align 8
  %shr4588 = lshr i64 %2039, 41
  %arrayidx4589 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2040 = load i64, i64* %arrayidx4589, align 8
  %shl4590 = shl i64 %2040, 23
  %or4591 = or i64 %shr4588, %shl4590
  %xor4592 = xor i64 %xor4586, %or4591
  %add4593 = add i64 %2034, %xor4592
  %arrayidx4594 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2041 = load i64, i64* %arrayidx4594, align 8
  %arrayidx4595 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2042 = load i64, i64* %arrayidx4595, align 8
  %arrayidx4596 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2043 = load i64, i64* %arrayidx4596, align 8
  %arrayidx4597 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2044 = load i64, i64* %arrayidx4597, align 8
  %xor4598 = xor i64 %2043, %2044
  %and4599 = and i64 %2042, %xor4598
  %xor4600 = xor i64 %2041, %and4599
  %add4601 = add i64 %add4593, %xor4600
  %add4602 = add i64 %add4601, 4368137639120453308
  %arrayidx4603 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 74
  %2045 = load i64, i64* %arrayidx4603, align 8
  %add4604 = add i64 %add4602, %2045
  store i64 %add4604, i64* %t0, align 8
  %arrayidx4605 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2046 = load i64, i64* %arrayidx4605, align 8
  %shr4606 = lshr i64 %2046, 28
  %arrayidx4607 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2047 = load i64, i64* %arrayidx4607, align 8
  %shl4608 = shl i64 %2047, 36
  %or4609 = or i64 %shr4606, %shl4608
  %arrayidx4610 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2048 = load i64, i64* %arrayidx4610, align 8
  %shr4611 = lshr i64 %2048, 34
  %arrayidx4612 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2049 = load i64, i64* %arrayidx4612, align 8
  %shl4613 = shl i64 %2049, 30
  %or4614 = or i64 %shr4611, %shl4613
  %xor4615 = xor i64 %or4609, %or4614
  %arrayidx4616 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2050 = load i64, i64* %arrayidx4616, align 8
  %shr4617 = lshr i64 %2050, 39
  %arrayidx4618 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2051 = load i64, i64* %arrayidx4618, align 8
  %shl4619 = shl i64 %2051, 25
  %or4620 = or i64 %shr4617, %shl4619
  %xor4621 = xor i64 %xor4615, %or4620
  %arrayidx4622 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2052 = load i64, i64* %arrayidx4622, align 8
  %arrayidx4623 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2053 = load i64, i64* %arrayidx4623, align 8
  %or4624 = or i64 %2052, %2053
  %arrayidx4625 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2054 = load i64, i64* %arrayidx4625, align 8
  %and4626 = and i64 %or4624, %2054
  %arrayidx4627 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2055 = load i64, i64* %arrayidx4627, align 8
  %arrayidx4628 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2056 = load i64, i64* %arrayidx4628, align 8
  %and4629 = and i64 %2055, %2056
  %or4630 = or i64 %and4626, %and4629
  %add4631 = add i64 %xor4621, %or4630
  store i64 %add4631, i64* %t1, align 8
  %2057 = load i64, i64* %t0, align 8
  %arrayidx4632 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2058 = load i64, i64* %arrayidx4632, align 8
  %add4633 = add i64 %2058, %2057
  store i64 %add4633, i64* %arrayidx4632, align 8
  %2059 = load i64, i64* %t0, align 8
  %2060 = load i64, i64* %t1, align 8
  %add4634 = add i64 %2059, %2060
  %arrayidx4635 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  store i64 %add4634, i64* %arrayidx4635, align 8
  %arrayidx4636 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2061 = load i64, i64* %arrayidx4636, align 8
  %arrayidx4637 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2062 = load i64, i64* %arrayidx4637, align 8
  %shr4638 = lshr i64 %2062, 14
  %arrayidx4639 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2063 = load i64, i64* %arrayidx4639, align 8
  %shl4640 = shl i64 %2063, 50
  %or4641 = or i64 %shr4638, %shl4640
  %arrayidx4642 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2064 = load i64, i64* %arrayidx4642, align 8
  %shr4643 = lshr i64 %2064, 18
  %arrayidx4644 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2065 = load i64, i64* %arrayidx4644, align 8
  %shl4645 = shl i64 %2065, 46
  %or4646 = or i64 %shr4643, %shl4645
  %xor4647 = xor i64 %or4641, %or4646
  %arrayidx4648 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2066 = load i64, i64* %arrayidx4648, align 8
  %shr4649 = lshr i64 %2066, 41
  %arrayidx4650 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2067 = load i64, i64* %arrayidx4650, align 8
  %shl4651 = shl i64 %2067, 23
  %or4652 = or i64 %shr4649, %shl4651
  %xor4653 = xor i64 %xor4647, %or4652
  %add4654 = add i64 %2061, %xor4653
  %arrayidx4655 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2068 = load i64, i64* %arrayidx4655, align 8
  %arrayidx4656 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2069 = load i64, i64* %arrayidx4656, align 8
  %arrayidx4657 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2070 = load i64, i64* %arrayidx4657, align 8
  %arrayidx4658 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2071 = load i64, i64* %arrayidx4658, align 8
  %xor4659 = xor i64 %2070, %2071
  %and4660 = and i64 %2069, %xor4659
  %xor4661 = xor i64 %2068, %and4660
  %add4662 = add i64 %add4654, %xor4661
  %add4663 = add i64 %add4662, 4836135668995329356
  %arrayidx4664 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 75
  %2072 = load i64, i64* %arrayidx4664, align 8
  %add4665 = add i64 %add4663, %2072
  store i64 %add4665, i64* %t0, align 8
  %arrayidx4666 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2073 = load i64, i64* %arrayidx4666, align 8
  %shr4667 = lshr i64 %2073, 28
  %arrayidx4668 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2074 = load i64, i64* %arrayidx4668, align 8
  %shl4669 = shl i64 %2074, 36
  %or4670 = or i64 %shr4667, %shl4669
  %arrayidx4671 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2075 = load i64, i64* %arrayidx4671, align 8
  %shr4672 = lshr i64 %2075, 34
  %arrayidx4673 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2076 = load i64, i64* %arrayidx4673, align 8
  %shl4674 = shl i64 %2076, 30
  %or4675 = or i64 %shr4672, %shl4674
  %xor4676 = xor i64 %or4670, %or4675
  %arrayidx4677 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2077 = load i64, i64* %arrayidx4677, align 8
  %shr4678 = lshr i64 %2077, 39
  %arrayidx4679 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2078 = load i64, i64* %arrayidx4679, align 8
  %shl4680 = shl i64 %2078, 25
  %or4681 = or i64 %shr4678, %shl4680
  %xor4682 = xor i64 %xor4676, %or4681
  %arrayidx4683 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2079 = load i64, i64* %arrayidx4683, align 8
  %arrayidx4684 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2080 = load i64, i64* %arrayidx4684, align 8
  %or4685 = or i64 %2079, %2080
  %arrayidx4686 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2081 = load i64, i64* %arrayidx4686, align 8
  %and4687 = and i64 %or4685, %2081
  %arrayidx4688 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2082 = load i64, i64* %arrayidx4688, align 8
  %arrayidx4689 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2083 = load i64, i64* %arrayidx4689, align 8
  %and4690 = and i64 %2082, %2083
  %or4691 = or i64 %and4687, %and4690
  %add4692 = add i64 %xor4682, %or4691
  store i64 %add4692, i64* %t1, align 8
  %2084 = load i64, i64* %t0, align 8
  %arrayidx4693 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2085 = load i64, i64* %arrayidx4693, align 8
  %add4694 = add i64 %2085, %2084
  store i64 %add4694, i64* %arrayidx4693, align 8
  %2086 = load i64, i64* %t0, align 8
  %2087 = load i64, i64* %t1, align 8
  %add4695 = add i64 %2086, %2087
  %arrayidx4696 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  store i64 %add4695, i64* %arrayidx4696, align 8
  %arrayidx4697 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2088 = load i64, i64* %arrayidx4697, align 8
  %arrayidx4698 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2089 = load i64, i64* %arrayidx4698, align 8
  %shr4699 = lshr i64 %2089, 14
  %arrayidx4700 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2090 = load i64, i64* %arrayidx4700, align 8
  %shl4701 = shl i64 %2090, 50
  %or4702 = or i64 %shr4699, %shl4701
  %arrayidx4703 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2091 = load i64, i64* %arrayidx4703, align 8
  %shr4704 = lshr i64 %2091, 18
  %arrayidx4705 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2092 = load i64, i64* %arrayidx4705, align 8
  %shl4706 = shl i64 %2092, 46
  %or4707 = or i64 %shr4704, %shl4706
  %xor4708 = xor i64 %or4702, %or4707
  %arrayidx4709 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2093 = load i64, i64* %arrayidx4709, align 8
  %shr4710 = lshr i64 %2093, 41
  %arrayidx4711 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2094 = load i64, i64* %arrayidx4711, align 8
  %shl4712 = shl i64 %2094, 23
  %or4713 = or i64 %shr4710, %shl4712
  %xor4714 = xor i64 %xor4708, %or4713
  %add4715 = add i64 %2088, %xor4714
  %arrayidx4716 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2095 = load i64, i64* %arrayidx4716, align 8
  %arrayidx4717 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2096 = load i64, i64* %arrayidx4717, align 8
  %arrayidx4718 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2097 = load i64, i64* %arrayidx4718, align 8
  %arrayidx4719 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2098 = load i64, i64* %arrayidx4719, align 8
  %xor4720 = xor i64 %2097, %2098
  %and4721 = and i64 %2096, %xor4720
  %xor4722 = xor i64 %2095, %and4721
  %add4723 = add i64 %add4715, %xor4722
  %add4724 = add i64 %add4723, 5532061633213252278
  %arrayidx4725 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 76
  %2099 = load i64, i64* %arrayidx4725, align 8
  %add4726 = add i64 %add4724, %2099
  store i64 %add4726, i64* %t0, align 8
  %arrayidx4727 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2100 = load i64, i64* %arrayidx4727, align 8
  %shr4728 = lshr i64 %2100, 28
  %arrayidx4729 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2101 = load i64, i64* %arrayidx4729, align 8
  %shl4730 = shl i64 %2101, 36
  %or4731 = or i64 %shr4728, %shl4730
  %arrayidx4732 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2102 = load i64, i64* %arrayidx4732, align 8
  %shr4733 = lshr i64 %2102, 34
  %arrayidx4734 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2103 = load i64, i64* %arrayidx4734, align 8
  %shl4735 = shl i64 %2103, 30
  %or4736 = or i64 %shr4733, %shl4735
  %xor4737 = xor i64 %or4731, %or4736
  %arrayidx4738 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2104 = load i64, i64* %arrayidx4738, align 8
  %shr4739 = lshr i64 %2104, 39
  %arrayidx4740 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2105 = load i64, i64* %arrayidx4740, align 8
  %shl4741 = shl i64 %2105, 25
  %or4742 = or i64 %shr4739, %shl4741
  %xor4743 = xor i64 %xor4737, %or4742
  %arrayidx4744 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2106 = load i64, i64* %arrayidx4744, align 8
  %arrayidx4745 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2107 = load i64, i64* %arrayidx4745, align 8
  %or4746 = or i64 %2106, %2107
  %arrayidx4747 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2108 = load i64, i64* %arrayidx4747, align 8
  %and4748 = and i64 %or4746, %2108
  %arrayidx4749 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2109 = load i64, i64* %arrayidx4749, align 8
  %arrayidx4750 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2110 = load i64, i64* %arrayidx4750, align 8
  %and4751 = and i64 %2109, %2110
  %or4752 = or i64 %and4748, %and4751
  %add4753 = add i64 %xor4743, %or4752
  store i64 %add4753, i64* %t1, align 8
  %2111 = load i64, i64* %t0, align 8
  %arrayidx4754 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2112 = load i64, i64* %arrayidx4754, align 8
  %add4755 = add i64 %2112, %2111
  store i64 %add4755, i64* %arrayidx4754, align 8
  %2113 = load i64, i64* %t0, align 8
  %2114 = load i64, i64* %t1, align 8
  %add4756 = add i64 %2113, %2114
  %arrayidx4757 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  store i64 %add4756, i64* %arrayidx4757, align 8
  %arrayidx4758 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2115 = load i64, i64* %arrayidx4758, align 8
  %arrayidx4759 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2116 = load i64, i64* %arrayidx4759, align 8
  %shr4760 = lshr i64 %2116, 14
  %arrayidx4761 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2117 = load i64, i64* %arrayidx4761, align 8
  %shl4762 = shl i64 %2117, 50
  %or4763 = or i64 %shr4760, %shl4762
  %arrayidx4764 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2118 = load i64, i64* %arrayidx4764, align 8
  %shr4765 = lshr i64 %2118, 18
  %arrayidx4766 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2119 = load i64, i64* %arrayidx4766, align 8
  %shl4767 = shl i64 %2119, 46
  %or4768 = or i64 %shr4765, %shl4767
  %xor4769 = xor i64 %or4763, %or4768
  %arrayidx4770 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2120 = load i64, i64* %arrayidx4770, align 8
  %shr4771 = lshr i64 %2120, 41
  %arrayidx4772 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2121 = load i64, i64* %arrayidx4772, align 8
  %shl4773 = shl i64 %2121, 23
  %or4774 = or i64 %shr4771, %shl4773
  %xor4775 = xor i64 %xor4769, %or4774
  %add4776 = add i64 %2115, %xor4775
  %arrayidx4777 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2122 = load i64, i64* %arrayidx4777, align 8
  %arrayidx4778 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2123 = load i64, i64* %arrayidx4778, align 8
  %arrayidx4779 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2124 = load i64, i64* %arrayidx4779, align 8
  %arrayidx4780 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2125 = load i64, i64* %arrayidx4780, align 8
  %xor4781 = xor i64 %2124, %2125
  %and4782 = and i64 %2123, %xor4781
  %xor4783 = xor i64 %2122, %and4782
  %add4784 = add i64 %add4776, %xor4783
  %add4785 = add i64 %add4784, 6448918945643986474
  %arrayidx4786 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 77
  %2126 = load i64, i64* %arrayidx4786, align 8
  %add4787 = add i64 %add4785, %2126
  store i64 %add4787, i64* %t0, align 8
  %arrayidx4788 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2127 = load i64, i64* %arrayidx4788, align 8
  %shr4789 = lshr i64 %2127, 28
  %arrayidx4790 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2128 = load i64, i64* %arrayidx4790, align 8
  %shl4791 = shl i64 %2128, 36
  %or4792 = or i64 %shr4789, %shl4791
  %arrayidx4793 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2129 = load i64, i64* %arrayidx4793, align 8
  %shr4794 = lshr i64 %2129, 34
  %arrayidx4795 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2130 = load i64, i64* %arrayidx4795, align 8
  %shl4796 = shl i64 %2130, 30
  %or4797 = or i64 %shr4794, %shl4796
  %xor4798 = xor i64 %or4792, %or4797
  %arrayidx4799 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2131 = load i64, i64* %arrayidx4799, align 8
  %shr4800 = lshr i64 %2131, 39
  %arrayidx4801 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2132 = load i64, i64* %arrayidx4801, align 8
  %shl4802 = shl i64 %2132, 25
  %or4803 = or i64 %shr4800, %shl4802
  %xor4804 = xor i64 %xor4798, %or4803
  %arrayidx4805 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2133 = load i64, i64* %arrayidx4805, align 8
  %arrayidx4806 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2134 = load i64, i64* %arrayidx4806, align 8
  %or4807 = or i64 %2133, %2134
  %arrayidx4808 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2135 = load i64, i64* %arrayidx4808, align 8
  %and4809 = and i64 %or4807, %2135
  %arrayidx4810 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2136 = load i64, i64* %arrayidx4810, align 8
  %arrayidx4811 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2137 = load i64, i64* %arrayidx4811, align 8
  %and4812 = and i64 %2136, %2137
  %or4813 = or i64 %and4809, %and4812
  %add4814 = add i64 %xor4804, %or4813
  store i64 %add4814, i64* %t1, align 8
  %2138 = load i64, i64* %t0, align 8
  %arrayidx4815 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2139 = load i64, i64* %arrayidx4815, align 8
  %add4816 = add i64 %2139, %2138
  store i64 %add4816, i64* %arrayidx4815, align 8
  %2140 = load i64, i64* %t0, align 8
  %2141 = load i64, i64* %t1, align 8
  %add4817 = add i64 %2140, %2141
  %arrayidx4818 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  store i64 %add4817, i64* %arrayidx4818, align 8
  %arrayidx4819 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2142 = load i64, i64* %arrayidx4819, align 8
  %arrayidx4820 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2143 = load i64, i64* %arrayidx4820, align 8
  %shr4821 = lshr i64 %2143, 14
  %arrayidx4822 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2144 = load i64, i64* %arrayidx4822, align 8
  %shl4823 = shl i64 %2144, 50
  %or4824 = or i64 %shr4821, %shl4823
  %arrayidx4825 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2145 = load i64, i64* %arrayidx4825, align 8
  %shr4826 = lshr i64 %2145, 18
  %arrayidx4827 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2146 = load i64, i64* %arrayidx4827, align 8
  %shl4828 = shl i64 %2146, 46
  %or4829 = or i64 %shr4826, %shl4828
  %xor4830 = xor i64 %or4824, %or4829
  %arrayidx4831 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2147 = load i64, i64* %arrayidx4831, align 8
  %shr4832 = lshr i64 %2147, 41
  %arrayidx4833 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2148 = load i64, i64* %arrayidx4833, align 8
  %shl4834 = shl i64 %2148, 23
  %or4835 = or i64 %shr4832, %shl4834
  %xor4836 = xor i64 %xor4830, %or4835
  %add4837 = add i64 %2142, %xor4836
  %arrayidx4838 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2149 = load i64, i64* %arrayidx4838, align 8
  %arrayidx4839 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2150 = load i64, i64* %arrayidx4839, align 8
  %arrayidx4840 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2151 = load i64, i64* %arrayidx4840, align 8
  %arrayidx4841 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2152 = load i64, i64* %arrayidx4841, align 8
  %xor4842 = xor i64 %2151, %2152
  %and4843 = and i64 %2150, %xor4842
  %xor4844 = xor i64 %2149, %and4843
  %add4845 = add i64 %add4837, %xor4844
  %add4846 = add i64 %add4845, 6902733635092675308
  %arrayidx4847 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 78
  %2153 = load i64, i64* %arrayidx4847, align 8
  %add4848 = add i64 %add4846, %2153
  store i64 %add4848, i64* %t0, align 8
  %arrayidx4849 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2154 = load i64, i64* %arrayidx4849, align 8
  %shr4850 = lshr i64 %2154, 28
  %arrayidx4851 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2155 = load i64, i64* %arrayidx4851, align 8
  %shl4852 = shl i64 %2155, 36
  %or4853 = or i64 %shr4850, %shl4852
  %arrayidx4854 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2156 = load i64, i64* %arrayidx4854, align 8
  %shr4855 = lshr i64 %2156, 34
  %arrayidx4856 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2157 = load i64, i64* %arrayidx4856, align 8
  %shl4857 = shl i64 %2157, 30
  %or4858 = or i64 %shr4855, %shl4857
  %xor4859 = xor i64 %or4853, %or4858
  %arrayidx4860 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2158 = load i64, i64* %arrayidx4860, align 8
  %shr4861 = lshr i64 %2158, 39
  %arrayidx4862 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2159 = load i64, i64* %arrayidx4862, align 8
  %shl4863 = shl i64 %2159, 25
  %or4864 = or i64 %shr4861, %shl4863
  %xor4865 = xor i64 %xor4859, %or4864
  %arrayidx4866 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2160 = load i64, i64* %arrayidx4866, align 8
  %arrayidx4867 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2161 = load i64, i64* %arrayidx4867, align 8
  %or4868 = or i64 %2160, %2161
  %arrayidx4869 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2162 = load i64, i64* %arrayidx4869, align 8
  %and4870 = and i64 %or4868, %2162
  %arrayidx4871 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2163 = load i64, i64* %arrayidx4871, align 8
  %arrayidx4872 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2164 = load i64, i64* %arrayidx4872, align 8
  %and4873 = and i64 %2163, %2164
  %or4874 = or i64 %and4870, %and4873
  %add4875 = add i64 %xor4865, %or4874
  store i64 %add4875, i64* %t1, align 8
  %2165 = load i64, i64* %t0, align 8
  %arrayidx4876 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2166 = load i64, i64* %arrayidx4876, align 8
  %add4877 = add i64 %2166, %2165
  store i64 %add4877, i64* %arrayidx4876, align 8
  %2167 = load i64, i64* %t0, align 8
  %2168 = load i64, i64* %t1, align 8
  %add4878 = add i64 %2167, %2168
  %arrayidx4879 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  store i64 %add4878, i64* %arrayidx4879, align 8
  %arrayidx4880 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  %2169 = load i64, i64* %arrayidx4880, align 8
  %arrayidx4881 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2170 = load i64, i64* %arrayidx4881, align 8
  %shr4882 = lshr i64 %2170, 14
  %arrayidx4883 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2171 = load i64, i64* %arrayidx4883, align 8
  %shl4884 = shl i64 %2171, 50
  %or4885 = or i64 %shr4882, %shl4884
  %arrayidx4886 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2172 = load i64, i64* %arrayidx4886, align 8
  %shr4887 = lshr i64 %2172, 18
  %arrayidx4888 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2173 = load i64, i64* %arrayidx4888, align 8
  %shl4889 = shl i64 %2173, 46
  %or4890 = or i64 %shr4887, %shl4889
  %xor4891 = xor i64 %or4885, %or4890
  %arrayidx4892 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2174 = load i64, i64* %arrayidx4892, align 8
  %shr4893 = lshr i64 %2174, 41
  %arrayidx4894 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2175 = load i64, i64* %arrayidx4894, align 8
  %shl4895 = shl i64 %2175, 23
  %or4896 = or i64 %shr4893, %shl4895
  %xor4897 = xor i64 %xor4891, %or4896
  %add4898 = add i64 %2169, %xor4897
  %arrayidx4899 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2176 = load i64, i64* %arrayidx4899, align 8
  %arrayidx4900 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 5
  %2177 = load i64, i64* %arrayidx4900, align 8
  %arrayidx4901 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 6
  %2178 = load i64, i64* %arrayidx4901, align 8
  %arrayidx4902 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 7
  %2179 = load i64, i64* %arrayidx4902, align 8
  %xor4903 = xor i64 %2178, %2179
  %and4904 = and i64 %2177, %xor4903
  %xor4905 = xor i64 %2176, %and4904
  %add4906 = add i64 %add4898, %xor4905
  %add4907 = add i64 %add4906, 7801388544844847127
  %arrayidx4908 = getelementptr [80 x i64], [80 x i64]* %W, i32 0, i64 79
  %2180 = load i64, i64* %arrayidx4908, align 8
  %add4909 = add i64 %add4907, %2180
  store i64 %add4909, i64* %t0, align 8
  %arrayidx4910 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2181 = load i64, i64* %arrayidx4910, align 8
  %shr4911 = lshr i64 %2181, 28
  %arrayidx4912 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2182 = load i64, i64* %arrayidx4912, align 8
  %shl4913 = shl i64 %2182, 36
  %or4914 = or i64 %shr4911, %shl4913
  %arrayidx4915 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2183 = load i64, i64* %arrayidx4915, align 8
  %shr4916 = lshr i64 %2183, 34
  %arrayidx4917 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2184 = load i64, i64* %arrayidx4917, align 8
  %shl4918 = shl i64 %2184, 30
  %or4919 = or i64 %shr4916, %shl4918
  %xor4920 = xor i64 %or4914, %or4919
  %arrayidx4921 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2185 = load i64, i64* %arrayidx4921, align 8
  %shr4922 = lshr i64 %2185, 39
  %arrayidx4923 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2186 = load i64, i64* %arrayidx4923, align 8
  %shl4924 = shl i64 %2186, 25
  %or4925 = or i64 %shr4922, %shl4924
  %xor4926 = xor i64 %xor4920, %or4925
  %arrayidx4927 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2187 = load i64, i64* %arrayidx4927, align 8
  %arrayidx4928 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2188 = load i64, i64* %arrayidx4928, align 8
  %or4929 = or i64 %2187, %2188
  %arrayidx4930 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 3
  %2189 = load i64, i64* %arrayidx4930, align 8
  %and4931 = and i64 %or4929, %2189
  %arrayidx4932 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 1
  %2190 = load i64, i64* %arrayidx4932, align 8
  %arrayidx4933 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 2
  %2191 = load i64, i64* %arrayidx4933, align 8
  %and4934 = and i64 %2190, %2191
  %or4935 = or i64 %and4931, %and4934
  %add4936 = add i64 %xor4926, %or4935
  store i64 %add4936, i64* %t1, align 8
  %2192 = load i64, i64* %t0, align 8
  %arrayidx4937 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 4
  %2193 = load i64, i64* %arrayidx4937, align 8
  %add4938 = add i64 %2193, %2192
  store i64 %add4938, i64* %arrayidx4937, align 8
  %2194 = load i64, i64* %t0, align 8
  %2195 = load i64, i64* %t1, align 8
  %add4939 = add i64 %2194, %2195
  %arrayidx4940 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 0
  store i64 %add4939, i64* %arrayidx4940, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4941

for.cond.4941:                                    ; preds = %for.inc.4953, %for.end.61
  %2196 = load i32, i32* %i, align 4
  %cmp4942 = icmp slt i32 %2196, 8
  br i1 %cmp4942, label %for.body.4943, label %for.end.4955

for.body.4943:                                    ; preds = %for.cond.4941
  %2197 = load i32, i32* %i, align 4
  %idxprom4944 = sext i32 %2197 to i64
  %2198 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest4945 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2198, i32 0, i32 1
  %arrayidx4946 = getelementptr [8 x i64], [8 x i64]* %digest4945, i32 0, i64 %idxprom4944
  %2199 = load i64, i64* %arrayidx4946, align 8
  %2200 = load i32, i32* %i, align 4
  %idxprom4947 = sext i32 %2200 to i64
  %arrayidx4948 = getelementptr [8 x i64], [8 x i64]* %S, i32 0, i64 %idxprom4947
  %2201 = load i64, i64* %arrayidx4948, align 8
  %add4949 = add i64 %2199, %2201
  %2202 = load i32, i32* %i, align 4
  %idxprom4950 = sext i32 %2202 to i64
  %2203 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest4951 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2203, i32 0, i32 1
  %arrayidx4952 = getelementptr [8 x i64], [8 x i64]* %digest4951, i32 0, i64 %idxprom4950
  store i64 %add4949, i64* %arrayidx4952, align 8
  br label %for.inc.4953

for.inc.4953:                                     ; preds = %for.body.4943
  %2204 = load i32, i32* %i, align 4
  %inc4954 = add i32 %2204, 1
  store i32 %inc4954, i32* %i, align 4
  br label %for.cond.4941

for.end.4955:                                     ; preds = %for.cond.4941
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @longReverse(i64* %buffer, i32 %byteCount) #0 {
entry:
  %buffer.addr = alloca i64*, align 8
  %byteCount.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store i64* %buffer, i64** %buffer.addr, align 8
  store i32 %byteCount, i32* %byteCount.addr, align 4
  %0 = load i32, i32* %byteCount.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 %conv, 8
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %byteCount.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %byteCount.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %byteCount.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64*, i64** %buffer.addr, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %value, align 8
  %4 = load i64, i64* %value, align 8
  %shr = lshr i64 %4, 56
  %conv2 = trunc i64 %shr to i8
  %conv3 = zext i8 %conv2 to i32
  %and = and i32 %conv3, 255
  %conv4 = trunc i32 %and to i8
  %5 = load i64*, i64** %buffer.addr, align 8
  %6 = bitcast i64* %5 to i8*
  %arrayidx = getelementptr i8, i8* %6, i64 0
  store i8 %conv4, i8* %arrayidx, align 1
  %7 = load i64, i64* %value, align 8
  %shr5 = lshr i64 %7, 48
  %conv6 = trunc i64 %shr5 to i8
  %conv7 = zext i8 %conv6 to i32
  %and8 = and i32 %conv7, 255
  %conv9 = trunc i32 %and8 to i8
  %8 = load i64*, i64** %buffer.addr, align 8
  %9 = bitcast i64* %8 to i8*
  %arrayidx10 = getelementptr i8, i8* %9, i64 1
  store i8 %conv9, i8* %arrayidx10, align 1
  %10 = load i64, i64* %value, align 8
  %shr11 = lshr i64 %10, 40
  %conv12 = trunc i64 %shr11 to i8
  %conv13 = zext i8 %conv12 to i32
  %and14 = and i32 %conv13, 255
  %conv15 = trunc i32 %and14 to i8
  %11 = load i64*, i64** %buffer.addr, align 8
  %12 = bitcast i64* %11 to i8*
  %arrayidx16 = getelementptr i8, i8* %12, i64 2
  store i8 %conv15, i8* %arrayidx16, align 1
  %13 = load i64, i64* %value, align 8
  %shr17 = lshr i64 %13, 32
  %conv18 = trunc i64 %shr17 to i8
  %conv19 = zext i8 %conv18 to i32
  %and20 = and i32 %conv19, 255
  %conv21 = trunc i32 %and20 to i8
  %14 = load i64*, i64** %buffer.addr, align 8
  %15 = bitcast i64* %14 to i8*
  %arrayidx22 = getelementptr i8, i8* %15, i64 3
  store i8 %conv21, i8* %arrayidx22, align 1
  %16 = load i64, i64* %value, align 8
  %shr23 = lshr i64 %16, 24
  %conv24 = trunc i64 %shr23 to i8
  %conv25 = zext i8 %conv24 to i32
  %and26 = and i32 %conv25, 255
  %conv27 = trunc i32 %and26 to i8
  %17 = load i64*, i64** %buffer.addr, align 8
  %18 = bitcast i64* %17 to i8*
  %arrayidx28 = getelementptr i8, i8* %18, i64 4
  store i8 %conv27, i8* %arrayidx28, align 1
  %19 = load i64, i64* %value, align 8
  %shr29 = lshr i64 %19, 16
  %conv30 = trunc i64 %shr29 to i8
  %conv31 = zext i8 %conv30 to i32
  %and32 = and i32 %conv31, 255
  %conv33 = trunc i32 %and32 to i8
  %20 = load i64*, i64** %buffer.addr, align 8
  %21 = bitcast i64* %20 to i8*
  %arrayidx34 = getelementptr i8, i8* %21, i64 5
  store i8 %conv33, i8* %arrayidx34, align 1
  %22 = load i64, i64* %value, align 8
  %shr35 = lshr i64 %22, 8
  %conv36 = trunc i64 %shr35 to i8
  %conv37 = zext i8 %conv36 to i32
  %and38 = and i32 %conv37, 255
  %conv39 = trunc i32 %and38 to i8
  %23 = load i64*, i64** %buffer.addr, align 8
  %24 = bitcast i64* %23 to i8*
  %arrayidx40 = getelementptr i8, i8* %24, i64 6
  store i8 %conv39, i8* %arrayidx40, align 1
  %25 = load i64, i64* %value, align 8
  %conv41 = trunc i64 %25 to i8
  %conv42 = zext i8 %conv41 to i32
  %and43 = and i32 %conv42, 255
  %conv44 = trunc i32 %and43 to i8
  %26 = load i64*, i64** %buffer.addr, align 8
  %27 = bitcast i64* %26 to i8*
  %arrayidx45 = getelementptr i8, i8* %27, i64 7
  store i8 %conv44, i8* %arrayidx45, align 1
  %28 = load i64*, i64** %buffer.addr, align 8
  %incdec.ptr = getelementptr i64, i64* %28, i32 1
  store i64* %incdec.ptr, i64** %buffer.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal void @sha512_update(%struct.SHAobject* %sha_info, i8* %buffer, i64 %count) #0 {
entry:
  %sha_info.addr = alloca %struct.SHAobject*, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %clo = alloca i32, align 4
  store %struct.SHAobject* %sha_info, %struct.SHAobject** %sha_info.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %0, i32 0, i32 2
  %1 = load i32, i32* %count_lo, align 4
  %2 = load i64, i64* %count.addr, align 8
  %conv = trunc i64 %2 to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %1, %shl
  store i32 %add, i32* %clo, align 4
  %3 = load i32, i32* %clo, align 4
  %4 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo1 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %4, i32 0, i32 2
  %5 = load i32, i32* %count_lo1, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %6, i32 0, i32 3
  %7 = load i32, i32* %count_hi, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %count_hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %clo, align 4
  %9 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo3 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %9, i32 0, i32 2
  store i32 %8, i32* %count_lo3, align 4
  %10 = load i64, i64* %count.addr, align 8
  %conv4 = trunc i64 %10 to i32
  %shr = lshr i32 %conv4, 29
  %11 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_hi5 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %11, i32 0, i32 3
  %12 = load i32, i32* %count_hi5, align 4
  %add6 = add i32 %12, %shr
  store i32 %add6, i32* %count_hi5, align 4
  %13 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %13, i32 0, i32 5
  %14 = load i32, i32* %local, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.7, label %if.end.25

if.then.7:                                        ; preds = %if.end
  %15 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local8 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %15, i32 0, i32 5
  %16 = load i32, i32* %local8, align 4
  %sub = sub i32 128, %16
  %conv9 = sext i32 %sub to i64
  store i64 %conv9, i64* %i, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %count.addr, align 8
  %cmp10 = icmp sgt i64 %17, %18
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %19 = load i64, i64* %count.addr, align 8
  store i64 %19, i64* %i, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.7
  %20 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %20, i32 0, i32 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %data, i32 0, i32 0
  %21 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local14 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %21, i32 0, i32 5
  %22 = load i32, i32* %local14, align 4
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext
  %23 = load i8*, i8** %buffer.addr, align 8
  %24 = load i64, i64* %i, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %23, i64 %24, i32 1, i1 false)
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %count.addr, align 8
  %sub15 = sub i64 %26, %25
  store i64 %sub15, i64* %count.addr, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load i8*, i8** %buffer.addr, align 8
  %add.ptr16 = getelementptr i8, i8* %28, i64 %27
  store i8* %add.ptr16, i8** %buffer.addr, align 8
  %29 = load i64, i64* %i, align 8
  %conv17 = trunc i64 %29 to i32
  %30 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local18 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %30, i32 0, i32 5
  %31 = load i32, i32* %local18, align 4
  %add19 = add i32 %31, %conv17
  store i32 %add19, i32* %local18, align 4
  %32 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local20 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %32, i32 0, i32 5
  %33 = load i32, i32* %local20, align 4
  %cmp21 = icmp eq i32 %33, 128
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.13
  %34 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  call void @sha512_transform(%struct.SHAobject* %34)
  br label %if.end.24

if.else:                                          ; preds = %if.end.13
  br label %return

if.end.24:                                        ; preds = %if.then.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.25
  %35 = load i64, i64* %count.addr, align 8
  %cmp26 = icmp sge i64 %35, 128
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data28 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %36, i32 0, i32 4
  %37 = bitcast [128 x i8]* %data28 to i8*
  %38 = load i8*, i8** %buffer.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 128, i32 1, i1 false)
  %39 = load i8*, i8** %buffer.addr, align 8
  %add.ptr29 = getelementptr i8, i8* %39, i64 128
  store i8* %add.ptr29, i8** %buffer.addr, align 8
  %40 = load i64, i64* %count.addr, align 8
  %sub30 = sub i64 %40, 128
  store i64 %sub30, i64* %count.addr, align 8
  %41 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  call void @sha512_transform(%struct.SHAobject* %41)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %data31 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %42, i32 0, i32 4
  %43 = bitcast [128 x i8]* %data31 to i8*
  %44 = load i8*, i8** %buffer.addr, align 8
  %45 = load i64, i64* %count.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 %45, i32 1, i1 false)
  %46 = load i64, i64* %count.addr, align 8
  %conv32 = trunc i64 %46 to i32
  %47 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local33 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %47, i32 0, i32 5
  store i32 %conv32, i32* %local33, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_get_block_size(%struct._object* %self, i8* %closure) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 128)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_get_name(%struct._object* %self, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.SHAobject*
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 6
  %2 = load i32, i32* %digestsize, align 4
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i64 6)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call1 = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i64 6)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA512_new(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %new = alloca %struct.SHAobject*, align 8
  %data_obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store %struct._object* null, %struct._object** %data_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @SHA512_new.kwlist, i32 0, i32 0), %struct._object** %data_obj)
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
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end
  %call20 = call %struct.SHAobject* @newSHA512object()
  store %struct.SHAobject* %call20, %struct.SHAobject** %new, align 8
  %cmp21 = icmp eq %struct.SHAobject* %call20, null
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
  %19 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  call void @sha512_init(%struct.SHAobject* %19)
  %call27 = call %struct._object* @PyErr_Occurred()
  %tobool28 = icmp ne %struct._object* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %20 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %21 = bitcast %struct.SHAobject* %20 to %struct._object*
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
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %30 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %buf42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %31 = load i8*, i8** %buf42, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %32 = load i64, i64* %len, align 8
  call void @sha512_update(%struct.SHAobject* %30, i8* %31, i64 %32)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  %33 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %34 = bitcast %struct.SHAobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.end.38, %if.end.25, %if.then.17, %if.then.14, %if.then.10, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SHA384_new(%struct._object* %self, %struct._object* %args, %struct._object* %kwdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwdict.addr = alloca %struct._object*, align 8
  %new = alloca %struct.SHAobject*, align 8
  %data_obj = alloca %struct._object*, align 8
  %buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwdict, %struct._object** %kwdict.addr, align 8
  store %struct._object* null, %struct._object** %data_obj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwdict.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @SHA384_new.kwlist, i32 0, i32 0), %struct._object** %data_obj)
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
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
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
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end
  %call20 = call %struct.SHAobject* @newSHA384object()
  store %struct.SHAobject* %call20, %struct.SHAobject** %new, align 8
  %cmp21 = icmp eq %struct.SHAobject* %call20, null
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
  %19 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  call void @sha384_init(%struct.SHAobject* %19)
  %call27 = call %struct._object* @PyErr_Occurred()
  %tobool28 = icmp ne %struct._object* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %20 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %21 = bitcast %struct.SHAobject* %20 to %struct._object*
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
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %30 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %buf42 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 0
  %31 = load i8*, i8** %buf42, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %buf, i32 0, i32 2
  %32 = load i64, i64* %len, align 8
  call void @sha512_update(%struct.SHAobject* %30, i8* %31, i64 %32)
  call void @PyBuffer_Release(%struct.bufferinfo* %buf)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  %33 = load %struct.SHAobject*, %struct.SHAobject** %new, align 8
  %34 = bitcast %struct.SHAobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.end.38, %if.end.25, %if.then.17, %if.then.14, %if.then.10, %if.then.3, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal void @sha512_init(%struct.SHAobject* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHAobject*, align 8
  store %struct.SHAobject* %sha_info, %struct.SHAobject** %sha_info.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %0, i32 0, i32 1
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %digest, i32 0, i64 0
  store i64 7640891576956012808, i64* %arrayidx, align 8
  %1 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 1
  %arrayidx2 = getelementptr [8 x i64], [8 x i64]* %digest1, i32 0, i64 1
  store i64 -4942790177534073029, i64* %arrayidx2, align 8
  %2 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2, i32 0, i32 1
  %arrayidx4 = getelementptr [8 x i64], [8 x i64]* %digest3, i32 0, i64 2
  store i64 4354685564936845355, i64* %arrayidx4, align 8
  %3 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %3, i32 0, i32 1
  %arrayidx6 = getelementptr [8 x i64], [8 x i64]* %digest5, i32 0, i64 3
  store i64 -6534734903238641935, i64* %arrayidx6, align 8
  %4 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %4, i32 0, i32 1
  %arrayidx8 = getelementptr [8 x i64], [8 x i64]* %digest7, i32 0, i64 4
  store i64 5840696475078001361, i64* %arrayidx8, align 8
  %5 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest9 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %5, i32 0, i32 1
  %arrayidx10 = getelementptr [8 x i64], [8 x i64]* %digest9, i32 0, i64 5
  store i64 -7276294671716946913, i64* %arrayidx10, align 8
  %6 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest11 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %6, i32 0, i32 1
  %arrayidx12 = getelementptr [8 x i64], [8 x i64]* %digest11, i32 0, i64 6
  store i64 2270897969802886507, i64* %arrayidx12, align 8
  %7 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest13 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %7, i32 0, i32 1
  %arrayidx14 = getelementptr [8 x i64], [8 x i64]* %digest13, i32 0, i64 7
  store i64 6620516959819538809, i64* %arrayidx14, align 8
  %8 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %8, i32 0, i32 2
  store i32 0, i32* %count_lo, align 4
  %9 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %9, i32 0, i32 3
  store i32 0, i32* %count_hi, align 4
  %10 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %10, i32 0, i32 5
  store i32 0, i32* %local, align 4
  %11 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %11, i32 0, i32 6
  store i32 64, i32* %digestsize, align 4
  ret void
}

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal void @sha384_init(%struct.SHAobject* %sha_info) #0 {
entry:
  %sha_info.addr = alloca %struct.SHAobject*, align 8
  store %struct.SHAobject* %sha_info, %struct.SHAobject** %sha_info.addr, align 8
  %0 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %0, i32 0, i32 1
  %arrayidx = getelementptr [8 x i64], [8 x i64]* %digest, i32 0, i64 0
  store i64 -3766243637369397544, i64* %arrayidx, align 8
  %1 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest1 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %1, i32 0, i32 1
  %arrayidx2 = getelementptr [8 x i64], [8 x i64]* %digest1, i32 0, i64 1
  store i64 7105036623409894663, i64* %arrayidx2, align 8
  %2 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest3 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %2, i32 0, i32 1
  %arrayidx4 = getelementptr [8 x i64], [8 x i64]* %digest3, i32 0, i64 2
  store i64 -7973340178411365097, i64* %arrayidx4, align 8
  %3 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest5 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %3, i32 0, i32 1
  %arrayidx6 = getelementptr [8 x i64], [8 x i64]* %digest5, i32 0, i64 3
  store i64 1526699215303891257, i64* %arrayidx6, align 8
  %4 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest7 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %4, i32 0, i32 1
  %arrayidx8 = getelementptr [8 x i64], [8 x i64]* %digest7, i32 0, i64 4
  store i64 7436329637833083697, i64* %arrayidx8, align 8
  %5 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest9 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %5, i32 0, i32 1
  %arrayidx10 = getelementptr [8 x i64], [8 x i64]* %digest9, i32 0, i64 5
  store i64 -8163818279084223215, i64* %arrayidx10, align 8
  %6 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest11 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %6, i32 0, i32 1
  %arrayidx12 = getelementptr [8 x i64], [8 x i64]* %digest11, i32 0, i64 6
  store i64 -2662702644619276377, i64* %arrayidx12, align 8
  %7 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digest13 = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %7, i32 0, i32 1
  %arrayidx14 = getelementptr [8 x i64], [8 x i64]* %digest13, i32 0, i64 7
  store i64 5167115440072839076, i64* %arrayidx14, align 8
  %8 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_lo = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %8, i32 0, i32 2
  store i32 0, i32* %count_lo, align 4
  %9 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %count_hi = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %9, i32 0, i32 3
  store i32 0, i32* %count_hi, align 4
  %10 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %local = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %10, i32 0, i32 5
  store i32 0, i32* %local, align 4
  %11 = load %struct.SHAobject*, %struct.SHAobject** %sha_info.addr, align 8
  %digestsize = getelementptr inbounds %struct.SHAobject, %struct.SHAobject* %11, i32 0, i32 6
  store i32 48, i32* %digestsize, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
