; ModuleID = './spwdmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct.spwd = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@spwdmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([524 x i8], [524 x i8]* @spwd__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @spwd_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal global i32 0, align 4
@StructSpwdType = internal global %struct._typeobject zeroinitializer, align 8
@struct_spwd_type_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([239 x i8], [239 x i8]* @struct_spwd__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([12 x %struct.PyStructSequence_Field], [12 x %struct.PyStructSequence_Field]* @struct_spwd_type_fields, i32 0, i32 0), i32 9 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"struct_spwd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"spwd\00", align 1
@spwd__doc__ = internal global [524 x i8] c"This module provides access to the Unix shadow password database.\0AIt is available on various Unix versions.\0A\0AShadow password database entries are reported as 9-tuples of type struct_spwd,\0Acontaining the following items from the password database (see `<shadow.h>'):\0Asp_namp, sp_pwdp, sp_lstchg, sp_min, sp_max, sp_warn, sp_inact, sp_expire, sp_flag.\0AThe sp_namp and sp_pwdp are strings, the rest are integers.\0AAn exception is raised if the entry asked for cannot be found.\0AYou have to be root to be able to use this module.\00", align 16
@spwd_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @spwd_getspnam, i32 1, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @spwd_getspnam__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @spwd_getspall, i32 4, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @spwd_getspall__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"getspnam\00", align 1
@spwd_getspnam__doc__ = internal global [253 x i8] c"getspnam(name) -> (sp_namp, sp_pwdp, sp_lstchg, sp_min, sp_max,\0A                    sp_warn, sp_inact, sp_expire, sp_flag)\0AReturn the shadow password database entry for the given user name.\0ASee spwd.__doc__ for more on shadow password database entries.\00", align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"getspall\00", align 1
@spwd_getspall__doc__ = internal global [178 x i8] c"getspall() -> list_of_entries\0AReturn a list of all available shadow password database entries, in arbitrary order.\0ASee spwd.__doc__ for more on shadow password database entries.\00", align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"U:getspnam\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"getspnam(): name not found\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"spwd.struct_spwd\00", align 1
@struct_spwd__doc__ = internal global [239 x i8] c"spwd.struct_spwd: Results from getsp*() routines.\0A\0AThis object may be accessed either as a 9-tuple of\0A  (sp_namp,sp_pwdp,sp_lstchg,sp_min,sp_max,sp_warn,sp_inact,sp_expire,sp_flag)\0Aor via the object attributes as named in the above tuple.\00", align 16
@struct_spwd_type_fields = internal global [12 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"sp_namp\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"login name\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sp_pwdp\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"encrypted password\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sp_lstchg\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"date of last change\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"sp_min\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"min #days between changes\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"sp_max\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"max #days between changes\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sp_warn\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"#days before pw expires to warn user about it\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"sp_inact\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"#days after pw expires until account is disabled\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sp_expire\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"#days since 1970-01-01 when account expires\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"sp_flag\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sp_nam\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"login name; deprecated\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sp_pwd\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"encrypted password; deprecated\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_spwd() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @spwdmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.6, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructSpwdType, %struct.PyStructSequence_Desc* @struct_spwd_type_desc)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0))
  store i32 1, i32* @initialized, align 4
  %4 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @spwd_getspnam(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %p = alloca %struct.spwd*, align 8
  %arg = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object** %arg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %1)
  store %struct._object* %call2, %struct._object** %bytes, align 8
  %cmp = icmp eq %struct._object* %call2, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %bytes, align 8
  %call5 = call i32 @PyBytes_AsStringAndSize(%struct._object* %2, i8** %name, i64* null)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %out

if.end.8:                                         ; preds = %if.end.4
  %3 = load i8*, i8** %name, align 8
  %call9 = call %struct.spwd* @getspnam(i8* %3)
  store %struct.spwd* %call9, %struct.spwd** %p, align 8
  %cmp10 = icmp eq %struct.spwd* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  br label %out

if.end.12:                                        ; preds = %if.end.8
  %5 = load %struct.spwd*, %struct.spwd** %p, align 8
  %call13 = call %struct._object* @mkspent(%struct.spwd* %5)
  store %struct._object* %call13, %struct._object** %retval1, align 8
  br label %out

out:                                              ; preds = %if.end.12, %if.then.11, %if.then.7
  br label %do.body

do.body:                                          ; preds = %out
  %6 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

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
  %13 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spwd_getspall(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %p = alloca %struct.spwd*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %d, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @setspent()
  br label %while.cond

while.cond:                                       ; preds = %do.end.38, %if.end
  %call1 = call %struct.spwd* @getspent()
  store %struct.spwd* %call1, %struct.spwd** %p, align 8
  %cmp2 = icmp ne %struct.spwd* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load %struct.spwd*, %struct.spwd** %p, align 8
  %call3 = call %struct._object* @mkspent(%struct.spwd* %0)
  store %struct._object* %call3, %struct._object** %v, align 8
  %1 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp eq %struct._object* %1, null
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load %struct._object*, %struct._object** %d, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %call5 = call i32 @PyList_Append(%struct._object* %2, %struct._object* %3)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.27

if.then.7:                                        ; preds = %lor.lhs.false, %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %4 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %13 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp17, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt18, align 8
  %dec19 = add i64 %15, -1
  store i64 %dec19, i64* %ob_refcnt18, align 8
  %cmp20 = icmp ne i64 %dec19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.16
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.16
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp17, align 8
  call void %18(%struct._object* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  call void @endspent()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %20 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp29, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %22, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %25(%struct._object* %26)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @endspent()
  %27 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.26, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #1

declare %struct.spwd* @getspnam(i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mkspent(%struct.spwd* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.spwd*, align 8
  %setIndex = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.spwd* %p, %struct.spwd** %p.addr, align 8
  store i32 0, i32* %setIndex, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructSpwdType)
  store %struct._object* %call, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %2 = load i32, i32* %setIndex, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %setIndex, align 4
  %3 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_namp = getelementptr inbounds %struct.spwd, %struct.spwd* %3, i32 0, i32 0
  %4 = load i8*, i8** %sp_namp, align 8
  call void @sets(%struct._object* %1, i32 %2, i8* %4)
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load i32, i32* %setIndex, align 4
  %inc1 = add i32 %6, 1
  store i32 %inc1, i32* %setIndex, align 4
  %7 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_pwdp = getelementptr inbounds %struct.spwd, %struct.spwd* %7, i32 0, i32 1
  %8 = load i8*, i8** %sp_pwdp, align 8
  call void @sets(%struct._object* %5, i32 %6, i8* %8)
  %9 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_lstchg = getelementptr inbounds %struct.spwd, %struct.spwd* %9, i32 0, i32 2
  %10 = load i64, i64* %sp_lstchg, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 %10)
  %11 = load i32, i32* %setIndex, align 4
  %inc3 = add i32 %11, 1
  store i32 %inc3, i32* %setIndex, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._object*, %struct._object** %v, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call2, %struct._object** %arrayidx, align 8
  %14 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_min = getelementptr inbounds %struct.spwd, %struct.spwd* %14, i32 0, i32 3
  %15 = load i64, i64* %sp_min, align 8
  %call4 = call %struct._object* @PyLong_FromLong(i64 %15)
  %16 = load i32, i32* %setIndex, align 4
  %inc5 = add i32 %16, 1
  store i32 %inc5, i32* %setIndex, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct._object*, %struct._object** %v, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 %idxprom6
  store %struct._object* %call4, %struct._object** %arrayidx8, align 8
  %19 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_max = getelementptr inbounds %struct.spwd, %struct.spwd* %19, i32 0, i32 4
  %20 = load i64, i64* %sp_max, align 8
  %call9 = call %struct._object* @PyLong_FromLong(i64 %20)
  %21 = load i32, i32* %setIndex, align 4
  %inc10 = add i32 %21, 1
  store i32 %inc10, i32* %setIndex, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct._object*, %struct._object** %v, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %idxprom11
  store %struct._object* %call9, %struct._object** %arrayidx13, align 8
  %24 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_warn = getelementptr inbounds %struct.spwd, %struct.spwd* %24, i32 0, i32 5
  %25 = load i64, i64* %sp_warn, align 8
  %call14 = call %struct._object* @PyLong_FromLong(i64 %25)
  %26 = load i32, i32* %setIndex, align 4
  %inc15 = add i32 %26, 1
  store i32 %inc15, i32* %setIndex, align 4
  %idxprom16 = sext i32 %26 to i64
  %27 = load %struct._object*, %struct._object** %v, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 %idxprom16
  store %struct._object* %call14, %struct._object** %arrayidx18, align 8
  %29 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_inact = getelementptr inbounds %struct.spwd, %struct.spwd* %29, i32 0, i32 6
  %30 = load i64, i64* %sp_inact, align 8
  %call19 = call %struct._object* @PyLong_FromLong(i64 %30)
  %31 = load i32, i32* %setIndex, align 4
  %inc20 = add i32 %31, 1
  store i32 %inc20, i32* %setIndex, align 4
  %idxprom21 = sext i32 %31 to i64
  %32 = load %struct._object*, %struct._object** %v, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 %idxprom21
  store %struct._object* %call19, %struct._object** %arrayidx23, align 8
  %34 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_expire = getelementptr inbounds %struct.spwd, %struct.spwd* %34, i32 0, i32 7
  %35 = load i64, i64* %sp_expire, align 8
  %call24 = call %struct._object* @PyLong_FromLong(i64 %35)
  %36 = load i32, i32* %setIndex, align 4
  %inc25 = add i32 %36, 1
  store i32 %inc25, i32* %setIndex, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct._object*, %struct._object** %v, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyTupleObject*
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %38, i32 0, i32 1
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 %idxprom26
  store %struct._object* %call24, %struct._object** %arrayidx28, align 8
  %39 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_flag = getelementptr inbounds %struct.spwd, %struct.spwd* %39, i32 0, i32 8
  %40 = load i64, i64* %sp_flag, align 8
  %call29 = call %struct._object* @PyLong_FromLong(i64 %40)
  %41 = load i32, i32* %setIndex, align 4
  %inc30 = add i32 %41, 1
  store i32 %inc30, i32* %setIndex, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load %struct._object*, %struct._object** %v, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyTupleObject*
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 %idxprom31
  store %struct._object* %call29, %struct._object** %arrayidx33, align 8
  %44 = load %struct._object*, %struct._object** %v, align 8
  %45 = load i32, i32* %setIndex, align 4
  %inc34 = add i32 %45, 1
  store i32 %inc34, i32* %setIndex, align 4
  %46 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_namp35 = getelementptr inbounds %struct.spwd, %struct.spwd* %46, i32 0, i32 0
  %47 = load i8*, i8** %sp_namp35, align 8
  call void @sets(%struct._object* %44, i32 %45, i8* %47)
  %48 = load %struct._object*, %struct._object** %v, align 8
  %49 = load i32, i32* %setIndex, align 4
  %inc36 = add i32 %49, 1
  store i32 %inc36, i32* %setIndex, align 4
  %50 = load %struct.spwd*, %struct.spwd** %p.addr, align 8
  %sp_pwdp37 = getelementptr inbounds %struct.spwd, %struct.spwd* %50, i32 0, i32 1
  %51 = load i8*, i8** %sp_pwdp37, align 8
  call void @sets(%struct._object* %48, i32 %49, i8* %51)
  %call38 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call38, null
  br i1 %tobool, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.39
  %52 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp40 = icmp ne i64 %dec, 0
  br i1 %cmp40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %do.body
  br label %if.end.42

if.else:                                          ; preds = %do.body
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %57(%struct._object* %58)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.end
  %59 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %59, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.43, %do.end, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal void @sets(%struct._object* %v, i32 %i, i8* %val) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %i.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %o = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i8* %val, i8** %val.addr, align 8
  %0 = load i8*, i8** %val.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %val.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %1)
  store %struct._object* %call, %struct._object** %o, align 8
  %2 = load %struct._object*, %struct._object** %o, align 8
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %2, %struct._object** %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %idxprom1
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare %struct._object* @PyList_New(i64) #1

declare void @setspent() #1

declare %struct.spwd* @getspent() #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare void @endspent() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
