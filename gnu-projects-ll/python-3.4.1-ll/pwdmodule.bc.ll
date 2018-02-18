; ModuleID = './pwdmodule.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@pwdmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @pwd__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @pwd_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal global i32 0, align 4
@StructPwdType = internal global %struct._typeobject zeroinitializer, align 8
@struct_pwd_type_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([220 x i8], [220 x i8]* @struct_passwd__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([8 x %struct.PyStructSequence_Field], [8 x %struct.PyStructSequence_Field]* @struct_pwd_type_fields, i32 0, i32 0), i32 7 }, align 8
@.str = private unnamed_addr constant [14 x i8] c"struct_passwd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@pwd__doc__ = internal global [421 x i8] c"This module provides access to the Unix password database.\0AIt is available on all Unix versions.\0A\0APassword database entries are reported as 7-tuples containing the following\0Aitems from the password database (see `<pwd.h>'), in order:\0Apw_name, pw_passwd, pw_uid, pw_gid, pw_gecos, pw_dir, pw_shell.\0AThe uid and gid items are integers, all others are strings. An\0Aexception is raised if the entry asked for cannot be found.\00", align 16
@pwd_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwuid, i32 1, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @pwd_getpwuid__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwnam, i32 1, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @pwd_getpwnam__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @pwd_getpwall to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @pwd_getpwall__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@pwd_getpwuid__doc__ = internal global [214 x i8] c"getpwuid(uid) -> (pw_name,pw_passwd,pw_uid,\0A                  pw_gid,pw_gecos,pw_dir,pw_shell)\0AReturn the password database entry for the given numeric user ID.\0ASee help(pwd) for more on password database entries.\00", align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@pwd_getpwnam__doc__ = internal global [211 x i8] c"getpwnam(name) -> (pw_name,pw_passwd,pw_uid,\0A                    pw_gid,pw_gecos,pw_dir,pw_shell)\0AReturn the password database entry for the given user name.\0ASee help(pwd) for more on password database entries.\00", align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"getpwall\00", align 1
@pwd_getpwall__doc__ = internal global [161 x i8] c"getpwall() -> list_of_entries\0AReturn a list of all available password database entries, in arbitrary order.\0ASee help(pwd) for more on password database entries.\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"O&:getpwuid\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@PyExc_KeyError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"getpwuid(): uid not found\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"getpwuid(): uid not found: %S\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"U:getpwnam\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"getpwnam(): name not found: %s\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pwd.struct_passwd\00", align 1
@struct_passwd__doc__ = internal global [220 x i8] c"pwd.struct_passwd: Results from getpw*() routines.\0A\0AThis object may be accessed either as a tuple of\0A  (pw_name,pw_passwd,pw_uid,pw_gid,pw_gecos,pw_dir,pw_shell)\0Aor via the object attributes as named in the above tuple.\00", align 16
@struct_pwd_type_fields = internal global [8 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"pw_name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"user name\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"pw_passwd\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"pw_uid\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"user id\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pw_gid\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"group id\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"pw_gecos\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"real name\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"pw_dir\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"home directory\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"pw_shell\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"shell program\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_pwd() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @pwdmodule, i32 1013)
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
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructPwdType, %struct.PyStructSequence_Desc* @struct_pwd_type_desc)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  store i32 1, i32* @initialized, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0, i32 0), align 8
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0))
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
define internal %struct._object* @pwd_getpwuid(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %uid = alloca i32, align 4
  %p = alloca %struct.passwd*, align 8
  %uid_obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct._object*, i8*)* @_Py_Uid_Converter, i32* %uid)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %entry
  %3 = load i32, i32* %uid, align 4
  %call6 = call %struct.passwd* @getpwuid(i32 %3)
  store %struct.passwd* %call6, %struct.passwd** %p, align 8
  %cmp = icmp eq %struct.passwd* %call6, null
  br i1 %cmp, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end.5
  %4 = load i32, i32* %uid, align 4
  %call8 = call %struct._object* @_PyLong_FromUid(i32 %4)
  store %struct._object* %call8, %struct._object** %uid_obj, align 8
  %5 = load %struct._object*, %struct._object** %uid_obj, align 8
  %cmp9 = icmp eq %struct._object* %5, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %7 = load %struct._object*, %struct._object** %uid_obj, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), %struct._object* %7)
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** %uid_obj, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.5
  %15 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call17 = call %struct._object* @mkpwent(%struct.passwd* %15)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %do.end, %if.then.10, %if.end
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwnam(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %p = alloca %struct.passwd*, align 8
  %arg = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object** %arg)
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
  %call9 = call %struct.passwd* @getpwnam(i8* %3)
  store %struct.passwd* %call9, %struct.passwd** %p, align 8
  %cmp10 = icmp eq %struct.passwd* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %5 = load i8*, i8** %name, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* %5)
  br label %out

if.end.13:                                        ; preds = %if.end.8
  %6 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call14 = call %struct._object* @mkpwent(%struct.passwd* %6)
  store %struct._object* %call14, %struct._object** %retval1, align 8
  br label %out

out:                                              ; preds = %if.end.13, %if.then.11, %if.then.7
  br label %do.body

do.body:                                          ; preds = %out
  %7 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %14 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwall(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %p = alloca %struct.passwd*, align 8
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %d, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @setpwent()
  br label %while.cond

while.cond:                                       ; preds = %do.end.38, %if.end
  %call1 = call %struct.passwd* @getpwent()
  store %struct.passwd* %call1, %struct.passwd** %p, align 8
  %cmp2 = icmp ne %struct.passwd* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load %struct.passwd*, %struct.passwd** %p, align 8
  %call3 = call %struct._object* @mkpwent(%struct.passwd* %0)
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
  call void @endpwent()
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
  call void @endpwent()
  %27 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.26, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @_Py_Uid_Converter(%struct._object*, i8*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct.passwd* @getpwuid(i32) #1

declare %struct._object* @_PyLong_FromUid(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @mkpwent(%struct.passwd* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.passwd*, align 8
  %setIndex = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.passwd* %p, %struct.passwd** %p.addr, align 8
  store i32 0, i32* %setIndex, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructPwdType)
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
  %3 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i32 0, i32 0
  %4 = load i8*, i8** %pw_name, align 8
  call void @sets(%struct._object* %1, i32 %2, i8* %4)
  %5 = load %struct._object*, %struct._object** %v, align 8
  %6 = load i32, i32* %setIndex, align 4
  %inc1 = add i32 %6, 1
  store i32 %inc1, i32* %setIndex, align 4
  %7 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 1
  %8 = load i8*, i8** %pw_passwd, align 8
  call void @sets(%struct._object* %5, i32 %6, i8* %8)
  %9 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 2
  %10 = load i32, i32* %pw_uid, align 4
  %call2 = call %struct._object* @_PyLong_FromUid(i32 %10)
  %11 = load i32, i32* %setIndex, align 4
  %inc3 = add i32 %11, 1
  store i32 %inc3, i32* %setIndex, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._object*, %struct._object** %v, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call2, %struct._object** %arrayidx, align 8
  %14 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 3
  %15 = load i32, i32* %pw_gid, align 4
  %call4 = call %struct._object* @_PyLong_FromGid(i32 %15)
  %16 = load i32, i32* %setIndex, align 4
  %inc5 = add i32 %16, 1
  store i32 %inc5, i32* %setIndex, align 4
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct._object*, %struct._object** %v, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 %idxprom6
  store %struct._object* %call4, %struct._object** %arrayidx8, align 8
  %19 = load %struct._object*, %struct._object** %v, align 8
  %20 = load i32, i32* %setIndex, align 4
  %inc9 = add i32 %20, 1
  store i32 %inc9, i32* %setIndex, align 4
  %21 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 4
  %22 = load i8*, i8** %pw_gecos, align 8
  call void @sets(%struct._object* %19, i32 %20, i8* %22)
  %23 = load %struct._object*, %struct._object** %v, align 8
  %24 = load i32, i32* %setIndex, align 4
  %inc10 = add i32 %24, 1
  store i32 %inc10, i32* %setIndex, align 4
  %25 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 5
  %26 = load i8*, i8** %pw_dir, align 8
  call void @sets(%struct._object* %23, i32 %24, i8* %26)
  %27 = load %struct._object*, %struct._object** %v, align 8
  %28 = load i32, i32* %setIndex, align 4
  %inc11 = add i32 %28, 1
  store i32 %inc11, i32* %setIndex, align 4
  %29 = load %struct.passwd*, %struct.passwd** %p.addr, align 8
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 6
  %30 = load i8*, i8** %pw_shell, align 8
  call void @sets(%struct._object* %27, i32 %28, i8* %30)
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call12, null
  br i1 %tobool, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %31 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %32, null
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19

if.else:                                          ; preds = %do.body.16
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end
  %40 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %do.end.21, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
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

declare %struct._object* @_PyLong_FromGid(i32) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #1

declare %struct.passwd* @getpwnam(i8*) #1

declare %struct._object* @PyList_New(i64) #1

declare void @setpwent() #1

declare %struct.passwd* @getpwent() #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare void @endpwent() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
