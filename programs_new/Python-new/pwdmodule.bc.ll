; ModuleID = 'programs_new/Python-new/pwdmodule.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !510
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !510
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !357, metadata !511), !dbg !512
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @pwdmodule, i32 1013), !dbg !513
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !514, !tbaa !515
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !519, !tbaa !515
  %cmp = icmp eq %struct._object* %1, null, !dbg !521
  br i1 %cmp, label %if.then, label %if.end, !dbg !522

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !523
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !523

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialized, align 4, !dbg !524, !tbaa !526
  %tobool = icmp ne i32 %2, 0, !dbg !524
  br i1 %tobool, label %if.end.6, label %if.then.1, !dbg !528

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructPwdType, %struct.PyStructSequence_Desc* @struct_pwd_type_desc), !dbg !529
  %cmp3 = icmp slt i32 %call2, 0, !dbg !532
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !533

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !534

if.end.5:                                         ; preds = %if.then.1
  store i32 1, i32* @initialized, align 4, !dbg !535, !tbaa !526
  br label %if.end.6, !dbg !536

if.end.6:                                         ; preds = %if.end.5, %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !537, !tbaa !538
  %inc = add i64 %3, 1, !dbg !537
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !537, !tbaa !538
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !541, !tbaa !515
  %call7 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i32 0, i32 0, i32 0)), !dbg !542
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !543, !tbaa !515
  store %struct._object* %5, %struct._object** %retval, !dbg !544
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %6 = bitcast %struct._object** %m to i8*, !dbg !545
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !545
  %7 = load %struct._object*, %struct._object** %retval, !dbg !545
  ret %struct._object* %7, !dbg !545
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwuid(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %uid = alloca i32, align 4
  %p = alloca %struct.passwd*, align 8
  %cleanup.dest.slot = alloca i32
  %uid_obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !360, metadata !511), !dbg !546
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !361, metadata !511), !dbg !547
  %0 = bitcast i32* %uid to i8*, !dbg !548
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !548
  call void @llvm.dbg.declare(metadata i32* %uid, metadata !362, metadata !511), !dbg !549
  %1 = bitcast %struct.passwd** %p to i8*, !dbg !550
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !550
  call void @llvm.dbg.declare(metadata %struct.passwd** %p, metadata !366, metadata !511), !dbg !551
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !552, !tbaa !515
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct._object*, i8*)* @_Py_Uid_Converter, i32* %uid), !dbg !554
  %tobool = icmp ne i32 %call, 0, !dbg !554
  br i1 %tobool, label %if.end.5, label %if.then, !dbg !555

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !556, !tbaa !515
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %3), !dbg !559
  %tobool2 = icmp ne i32 %call1, 0, !dbg !559
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !560

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !561, !tbaa !515
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)), !dbg !562
  br label %if.end, !dbg !562

if.end:                                           ; preds = %if.then.3, %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !563

if.end.5:                                         ; preds = %entry
  %5 = load i32, i32* %uid, align 4, !dbg !564, !tbaa !526
  %call6 = call %struct.passwd* @getpwuid(i32 %5), !dbg !565
  store %struct.passwd* %call6, %struct.passwd** %p, align 8, !dbg !566, !tbaa !515
  %cmp = icmp eq %struct.passwd* %call6, null, !dbg !567
  br i1 %cmp, label %if.then.7, label %if.end.16, !dbg !568

if.then.7:                                        ; preds = %if.end.5
  %6 = bitcast %struct._object** %uid_obj to i8*, !dbg !569
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !569
  call void @llvm.dbg.declare(metadata %struct._object** %uid_obj, metadata !379, metadata !511), !dbg !570
  %7 = load i32, i32* %uid, align 4, !dbg !571, !tbaa !526
  %call8 = call %struct._object* @_PyLong_FromUid(i32 %7), !dbg !572
  store %struct._object* %call8, %struct._object** %uid_obj, align 8, !dbg !570, !tbaa !515
  %8 = load %struct._object*, %struct._object** %uid_obj, align 8, !dbg !573, !tbaa !515
  %cmp9 = icmp eq %struct._object* %8, null, !dbg !575
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !576

if.then.10:                                       ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval, !dbg !577
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !577

if.end.11:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !578, !tbaa !515
  %10 = load %struct._object*, %struct._object** %uid_obj, align 8, !dbg !579, !tbaa !515
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), %struct._object* %10), !dbg !580
  br label %do.body, !dbg !581

do.body:                                          ; preds = %if.end.11
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !582
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !582
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !382, metadata !511), !dbg !584
  %12 = load %struct._object*, %struct._object** %uid_obj, align 8, !dbg !585, !tbaa !515
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !584, !tbaa !515
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !586, !tbaa !515
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !588
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !589, !tbaa !538
  %dec = add i64 %14, -1, !dbg !589
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !589, !tbaa !538
  %cmp13 = icmp ne i64 %dec, 0, !dbg !590
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !591

if.then.14:                                       ; preds = %do.body
  br label %if.end.15, !dbg !592

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !594, !tbaa !515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !596
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !596, !tbaa !597
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !598
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !598, !tbaa !599
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !602, !tbaa !515
  call void %17(%struct._object* %18), !dbg !603
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !604
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !604
  br label %do.cond, !dbg !606

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !607

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !609

cleanup:                                          ; preds = %do.end, %if.then.10
  %20 = bitcast %struct._object** %uid_obj to i8*, !dbg !610
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !610
  br label %cleanup.18

if.end.16:                                        ; preds = %if.end.5
  %21 = load %struct.passwd*, %struct.passwd** %p, align 8, !dbg !611, !tbaa !515
  %call17 = call %struct._object* @mkpwent(%struct.passwd* %21), !dbg !612
  store %struct._object* %call17, %struct._object** %retval, !dbg !613
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18, !dbg !613

cleanup.18:                                       ; preds = %if.end.16, %cleanup, %if.end
  %22 = bitcast %struct.passwd** %p to i8*, !dbg !614
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !614
  %23 = bitcast i32* %uid to i8*, !dbg !614
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !614
  %24 = load %struct._object*, %struct._object** %retval, !dbg !614
  ret %struct._object* %24, !dbg !614
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !410, metadata !511), !dbg !615
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !411, metadata !511), !dbg !616
  %0 = bitcast i8** %name to i8*, !dbg !617
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !617
  call void @llvm.dbg.declare(metadata i8** %name, metadata !412, metadata !511), !dbg !618
  %1 = bitcast %struct.passwd** %p to i8*, !dbg !619
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !619
  call void @llvm.dbg.declare(metadata %struct.passwd** %p, metadata !413, metadata !511), !dbg !620
  %2 = bitcast %struct._object** %arg to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !621
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !414, metadata !511), !dbg !622
  %3 = bitcast %struct._object** %bytes to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !621
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !415, metadata !511), !dbg !623
  %4 = bitcast %struct._object** %retval1 to i8*, !dbg !621
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !621
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !416, metadata !511), !dbg !624
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !624, !tbaa !515
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !625, !tbaa !515
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object** %arg), !dbg !627
  %tobool = icmp ne i32 %call, 0, !dbg !627
  br i1 %tobool, label %if.end, label %if.then, !dbg !628

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !629
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !629

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !630, !tbaa !515
  %call2 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %6), !dbg !632
  store %struct._object* %call2, %struct._object** %bytes, align 8, !dbg !633, !tbaa !515
  %cmp = icmp eq %struct._object* %call2, null, !dbg !634
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !635

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !636
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !636

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !637, !tbaa !515
  %call5 = call i32 @PyBytes_AsStringAndSize(%struct._object* %7, i8** %name, i64* null), !dbg !639
  %cmp6 = icmp eq i32 %call5, -1, !dbg !640
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !641

if.then.7:                                        ; preds = %if.end.4
  br label %out, !dbg !642

if.end.8:                                         ; preds = %if.end.4
  %8 = load i8*, i8** %name, align 8, !dbg !643, !tbaa !515
  %call9 = call %struct.passwd* @getpwnam(i8* %8), !dbg !645
  store %struct.passwd* %call9, %struct.passwd** %p, align 8, !dbg !646, !tbaa !515
  %cmp10 = icmp eq %struct.passwd* %call9, null, !dbg !647
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !648

if.then.11:                                       ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !649, !tbaa !515
  %10 = load i8*, i8** %name, align 8, !dbg !651, !tbaa !515
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i8* %10), !dbg !652
  br label %out, !dbg !653

if.end.13:                                        ; preds = %if.end.8
  %11 = load %struct.passwd*, %struct.passwd** %p, align 8, !dbg !654, !tbaa !515
  %call14 = call %struct._object* @mkpwent(%struct.passwd* %11), !dbg !655
  store %struct._object* %call14, %struct._object** %retval1, align 8, !dbg !656, !tbaa !515
  br label %out, !dbg !657

out:                                              ; preds = %if.end.13, %if.then.11, %if.then.7
  br label %do.body, !dbg !658

do.body:                                          ; preds = %out
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !659
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !417, metadata !511), !dbg !661
  %13 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !662, !tbaa !515
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !661, !tbaa !515
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !663, !tbaa !515
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !665
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !666, !tbaa !538
  %dec = add i64 %15, -1, !dbg !666
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !666, !tbaa !538
  %cmp15 = icmp ne i64 %dec, 0, !dbg !667
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !668

if.then.16:                                       ; preds = %do.body
  br label %if.end.17, !dbg !669

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !671, !tbaa !515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !673
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !673, !tbaa !597
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !674
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !674, !tbaa !599
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !675, !tbaa !515
  call void %18(%struct._object* %19), !dbg !676
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !677
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !677
  br label %do.cond, !dbg !679

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !680

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !682, !tbaa !515
  store %struct._object* %21, %struct._object** %retval, !dbg !683
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !683

cleanup:                                          ; preds = %do.end, %if.then.3, %if.then
  %22 = bitcast %struct._object** %retval1 to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !684
  %23 = bitcast %struct._object** %bytes to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !684
  %24 = bitcast %struct._object** %arg to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !684
  %25 = bitcast %struct.passwd** %p to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !684
  %26 = bitcast i8** %name to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !684
  %27 = load %struct._object*, %struct._object** %retval, !dbg !684
  ret %struct._object* %27, !dbg !684
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwall(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %p = alloca %struct.passwd*, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !421, metadata !511), !dbg !685
  %0 = bitcast %struct._object** %d to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !686
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !422, metadata !511), !dbg !687
  %1 = bitcast %struct.passwd** %p to i8*, !dbg !688
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !688
  call void @llvm.dbg.declare(metadata %struct.passwd** %p, metadata !423, metadata !511), !dbg !689
  %call = call %struct._object* @PyList_New(i64 0), !dbg !690
  store %struct._object* %call, %struct._object** %d, align 8, !dbg !692, !tbaa !515
  %cmp = icmp eq %struct._object* %call, null, !dbg !693
  br i1 %cmp, label %if.then, label %if.end, !dbg !694

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !695
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !695

if.end:                                           ; preds = %entry
  call void @setpwent(), !dbg !696
  br label %while.cond, !dbg !697

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %call1 = call %struct.passwd* @getpwent(), !dbg !698
  store %struct.passwd* %call1, %struct.passwd** %p, align 8, !dbg !701, !tbaa !515
  %cmp2 = icmp ne %struct.passwd* %call1, null, !dbg !702
  br i1 %cmp2, label %while.body, label %while.end, !dbg !697

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct._object** %v to i8*, !dbg !703
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !703
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !424, metadata !511), !dbg !704
  %3 = load %struct.passwd*, %struct.passwd** %p, align 8, !dbg !705, !tbaa !515
  %call3 = call %struct._object* @mkpwent(%struct.passwd* %3), !dbg !706
  store %struct._object* %call3, %struct._object** %v, align 8, !dbg !704, !tbaa !515
  %4 = load %struct._object*, %struct._object** %v, align 8, !dbg !707, !tbaa !515
  %cmp4 = icmp eq %struct._object* %4, null, !dbg !708
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false, !dbg !709

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct._object*, %struct._object** %d, align 8, !dbg !710, !tbaa !515
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !712, !tbaa !515
  %call5 = call i32 @PyList_Append(%struct._object* %5, %struct._object* %6), !dbg !713
  %cmp6 = icmp ne i32 %call5, 0, !dbg !714
  br i1 %cmp6, label %if.then.7, label %if.end.29, !dbg !715

if.then.7:                                        ; preds = %lor.lhs.false, %while.body
  br label %do.body, !dbg !716

do.body:                                          ; preds = %if.then.7
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !717
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !717
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !426, metadata !511), !dbg !719
  %8 = load %struct._object*, %struct._object** %v, align 8, !dbg !720, !tbaa !515
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !719, !tbaa !515
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !721, !tbaa !515
  %cmp8 = icmp ne %struct._object* %9, null, !dbg !722
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !723

if.then.9:                                        ; preds = %do.body
  br label %do.body.10, !dbg !724

do.body.10:                                       ; preds = %if.then.9
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !726
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !726
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !430, metadata !511), !dbg !728
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !729, !tbaa !515
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !728, !tbaa !515
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !730, !tbaa !515
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !732
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !733, !tbaa !538
  %dec = add i64 %13, -1, !dbg !733
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !733, !tbaa !538
  %cmp11 = icmp ne i64 %dec, 0, !dbg !734
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !735

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13, !dbg !736

if.else:                                          ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !738, !tbaa !515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !740
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !740, !tbaa !597
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !741
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !741, !tbaa !599
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !742, !tbaa !515
  call void %16(%struct._object* %17), !dbg !743
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !744
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !744
  br label %do.cond, !dbg !746

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !747

do.end:                                           ; preds = %do.cond
  br label %if.end.14, !dbg !749

if.end.14:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !751
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !751
  br label %do.cond.15, !dbg !754

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16, !dbg !755

do.end.16:                                        ; preds = %do.cond.15
  br label %do.body.17, !dbg !757

do.body.17:                                       ; preds = %do.end.16
  %20 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !758
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !758
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !433, metadata !511), !dbg !760
  %21 = load %struct._object*, %struct._object** %d, align 8, !dbg !761, !tbaa !515
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8, !dbg !760, !tbaa !515
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !762, !tbaa !515
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !764
  %23 = load i64, i64* %ob_refcnt19, align 8, !dbg !765, !tbaa !538
  %dec20 = add i64 %23, -1, !dbg !765
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !765, !tbaa !538
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !766
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !767

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !768

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !770, !tbaa !515
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !772
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !772, !tbaa !597
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !773
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !773, !tbaa !599
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !774, !tbaa !515
  call void %26(%struct._object* %27), !dbg !775
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %28 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !776
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !776
  br label %do.cond.27, !dbg !778

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !779

do.end.28:                                        ; preds = %do.cond.27
  call void @endpwent(), !dbg !781
  store %struct._object* null, %struct._object** %retval, !dbg !782
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !782

if.end.29:                                        ; preds = %lor.lhs.false
  br label %do.body.30, !dbg !783

do.body.30:                                       ; preds = %if.end.29
  %29 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !784
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !784
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !435, metadata !511), !dbg !786
  %30 = load %struct._object*, %struct._object** %v, align 8, !dbg !787, !tbaa !515
  store %struct._object* %30, %struct._object** %_py_decref_tmp31, align 8, !dbg !786, !tbaa !515
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !788, !tbaa !515
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !790
  %32 = load i64, i64* %ob_refcnt32, align 8, !dbg !791, !tbaa !538
  %dec33 = add i64 %32, -1, !dbg !791
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !791, !tbaa !538
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !792
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !793

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !794

if.else.36:                                       ; preds = %do.body.30
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !796, !tbaa !515
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !798
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !798, !tbaa !597
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !799
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !799, !tbaa !599
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !800, !tbaa !515
  call void %35(%struct._object* %36), !dbg !801
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %37 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !802
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !802
  br label %do.cond.40, !dbg !804

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !805

do.end.41:                                        ; preds = %do.cond.40
  store i32 0, i32* %cleanup.dest.slot, !dbg !807
  br label %cleanup, !dbg !807

cleanup:                                          ; preds = %do.end.41, %do.end.28
  %38 = bitcast %struct._object** %v to i8*, !dbg !808
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !808
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !697

while.end:                                        ; preds = %while.cond
  call void @endpwent(), !dbg !809
  %39 = load %struct._object*, %struct._object** %d, align 8, !dbg !810, !tbaa !515
  store %struct._object* %39, %struct._object** %retval, !dbg !811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !811

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.42

cleanup.42:                                       ; preds = %NewDefault, %while.end, %if.then
  %40 = bitcast %struct.passwd** %p to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !812
  %41 = bitcast %struct._object** %d to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !812
  %42 = load %struct._object*, %struct._object** %retval, !dbg !812
  ret %struct._object* %42, !dbg !812
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @_Py_Uid_Converter(%struct._object*, i8*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct.passwd* @getpwuid(i32) #3

declare %struct._object* @_PyLong_FromUid(i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @mkpwent(%struct.passwd* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.passwd*, align 8
  %setIndex = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.passwd* %p, %struct.passwd** %p.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct.passwd** %p.addr, metadata !388, metadata !511), !dbg !813
  %0 = bitcast i32* %setIndex to i8*, !dbg !814
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !814
  call void @llvm.dbg.declare(metadata i32* %setIndex, metadata !389, metadata !511), !dbg !815
  store i32 0, i32* %setIndex, align 4, !dbg !815, !tbaa !526
  %1 = bitcast %struct._object** %v to i8*, !dbg !816
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !816
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !390, metadata !511), !dbg !817
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructPwdType), !dbg !818
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !817, !tbaa !515
  %2 = load %struct._object*, %struct._object** %v, align 8, !dbg !819, !tbaa !515
  %cmp = icmp eq %struct._object* %2, null, !dbg !821
  br i1 %cmp, label %if.then, label %if.end, !dbg !822

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !823

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v, align 8, !dbg !824, !tbaa !515
  %4 = load i32, i32* %setIndex, align 4, !dbg !825, !tbaa !526
  %inc = add i32 %4, 1, !dbg !825
  store i32 %inc, i32* %setIndex, align 4, !dbg !825, !tbaa !526
  %5 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !826, !tbaa !515
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 0, !dbg !827
  %6 = load i8*, i8** %pw_name, align 8, !dbg !827, !tbaa !828
  call void @sets(%struct._object* %3, i32 %4, i8* %6), !dbg !830
  %7 = load %struct._object*, %struct._object** %v, align 8, !dbg !831, !tbaa !515
  %8 = load i32, i32* %setIndex, align 4, !dbg !832, !tbaa !526
  %inc1 = add i32 %8, 1, !dbg !832
  store i32 %inc1, i32* %setIndex, align 4, !dbg !832, !tbaa !526
  %9 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !833, !tbaa !515
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 1, !dbg !834
  %10 = load i8*, i8** %pw_passwd, align 8, !dbg !834, !tbaa !835
  call void @sets(%struct._object* %7, i32 %8, i8* %10), !dbg !836
  %11 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !837, !tbaa !515
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 2, !dbg !838
  %12 = load i32, i32* %pw_uid, align 4, !dbg !838, !tbaa !839
  %call2 = call %struct._object* @_PyLong_FromUid(i32 %12), !dbg !840
  %13 = load i32, i32* %setIndex, align 4, !dbg !841, !tbaa !526
  %inc3 = add i32 %13, 1, !dbg !841
  store i32 %inc3, i32* %setIndex, align 4, !dbg !841, !tbaa !526
  %idxprom = sext i32 %13 to i64, !dbg !842
  %14 = load %struct._object*, %struct._object** %v, align 8, !dbg !843, !tbaa !515
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*, !dbg !844
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1, !dbg !845
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !842
  store %struct._object* %call2, %struct._object** %arrayidx, align 8, !dbg !846, !tbaa !515
  %16 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !847, !tbaa !515
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %16, i32 0, i32 3, !dbg !848
  %17 = load i32, i32* %pw_gid, align 4, !dbg !848, !tbaa !849
  %call4 = call %struct._object* @_PyLong_FromGid(i32 %17), !dbg !850
  %18 = load i32, i32* %setIndex, align 4, !dbg !851, !tbaa !526
  %inc5 = add i32 %18, 1, !dbg !851
  store i32 %inc5, i32* %setIndex, align 4, !dbg !851, !tbaa !526
  %idxprom6 = sext i32 %18 to i64, !dbg !852
  %19 = load %struct._object*, %struct._object** %v, align 8, !dbg !853, !tbaa !515
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !854
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !855
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 %idxprom6, !dbg !852
  store %struct._object* %call4, %struct._object** %arrayidx8, align 8, !dbg !856, !tbaa !515
  %21 = load %struct._object*, %struct._object** %v, align 8, !dbg !857, !tbaa !515
  %22 = load i32, i32* %setIndex, align 4, !dbg !858, !tbaa !526
  %inc9 = add i32 %22, 1, !dbg !858
  store i32 %inc9, i32* %setIndex, align 4, !dbg !858, !tbaa !526
  %23 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !859, !tbaa !515
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %23, i32 0, i32 4, !dbg !860
  %24 = load i8*, i8** %pw_gecos, align 8, !dbg !860, !tbaa !861
  call void @sets(%struct._object* %21, i32 %22, i8* %24), !dbg !862
  %25 = load %struct._object*, %struct._object** %v, align 8, !dbg !863, !tbaa !515
  %26 = load i32, i32* %setIndex, align 4, !dbg !864, !tbaa !526
  %inc10 = add i32 %26, 1, !dbg !864
  store i32 %inc10, i32* %setIndex, align 4, !dbg !864, !tbaa !526
  %27 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !865, !tbaa !515
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 5, !dbg !866
  %28 = load i8*, i8** %pw_dir, align 8, !dbg !866, !tbaa !867
  call void @sets(%struct._object* %25, i32 %26, i8* %28), !dbg !868
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !869, !tbaa !515
  %30 = load i32, i32* %setIndex, align 4, !dbg !870, !tbaa !526
  %inc11 = add i32 %30, 1, !dbg !870
  store i32 %inc11, i32* %setIndex, align 4, !dbg !870, !tbaa !526
  %31 = load %struct.passwd*, %struct.passwd** %p.addr, align 8, !dbg !871, !tbaa !515
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 6, !dbg !872
  %32 = load i8*, i8** %pw_shell, align 8, !dbg !872, !tbaa !873
  call void @sets(%struct._object* %29, i32 %30, i8* %32), !dbg !874
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !875
  %tobool = icmp ne %struct._object* %call12, null, !dbg !875
  br i1 %tobool, label %if.then.13, label %if.end.23, !dbg !876

if.then.13:                                       ; preds = %if.end
  br label %do.body, !dbg !877

do.body:                                          ; preds = %if.then.13
  %33 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !878
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !878
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !391, metadata !511), !dbg !880
  %34 = load %struct._object*, %struct._object** %v, align 8, !dbg !881, !tbaa !515
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp, align 8, !dbg !880, !tbaa !515
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !882, !tbaa !515
  %cmp14 = icmp ne %struct._object* %35, null, !dbg !883
  br i1 %cmp14, label %if.then.15, label %if.end.20, !dbg !884

if.then.15:                                       ; preds = %do.body
  br label %do.body.16, !dbg !885

do.body.16:                                       ; preds = %if.then.15
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !887
  call void @llvm.lifetime.start(i64 8, i8* %36) #1, !dbg !887
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !395, metadata !511), !dbg !889
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !890, !tbaa !515
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8, !dbg !889, !tbaa !515
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !891, !tbaa !515
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !893
  %39 = load i64, i64* %ob_refcnt, align 8, !dbg !894, !tbaa !538
  %dec = add i64 %39, -1, !dbg !894
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !894, !tbaa !538
  %cmp17 = icmp ne i64 %dec, 0, !dbg !895
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !896

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19, !dbg !897

if.else:                                          ; preds = %do.body.16
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !899, !tbaa !515
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !901
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !901, !tbaa !597
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !902
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !902, !tbaa !599
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !903, !tbaa !515
  call void %42(%struct._object* %43), !dbg !904
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %44 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !905
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !905
  br label %do.cond, !dbg !907

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !908

do.end:                                           ; preds = %do.cond
  br label %if.end.20, !dbg !910

if.end.20:                                        ; preds = %do.end, %do.body
  %45 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !912
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !912
  br label %do.cond.21, !dbg !915

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !916

do.end.22:                                        ; preds = %do.cond.21
  store %struct._object* null, %struct._object** %retval, !dbg !918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !918

if.end.23:                                        ; preds = %if.end
  %46 = load %struct._object*, %struct._object** %v, align 8, !dbg !919, !tbaa !515
  store %struct._object* %46, %struct._object** %retval, !dbg !920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !920

cleanup:                                          ; preds = %if.end.23, %do.end.22, %if.then
  %47 = bitcast %struct._object** %v to i8*, !dbg !921
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !921
  %48 = bitcast i32* %setIndex to i8*, !dbg !921
  call void @llvm.lifetime.end(i64 4, i8* %48) #1, !dbg !921
  %49 = load %struct._object*, %struct._object** %retval, !dbg !921
  ret %struct._object* %49, !dbg !921
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal void @sets(%struct._object* %v, i32 %i, i8* %val) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %i.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %o = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !402, metadata !511), !dbg !922
  store i32 %i, i32* %i.addr, align 4, !tbaa !526
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !403, metadata !511), !dbg !923
  store i8* %val, i8** %val.addr, align 8, !tbaa !515
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !404, metadata !511), !dbg !924
  %0 = load i8*, i8** %val.addr, align 8, !dbg !925, !tbaa !515
  %tobool = icmp ne i8* %0, null, !dbg !925
  br i1 %tobool, label %if.then, label %if.else, !dbg !926

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object** %o to i8*, !dbg !927
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !927
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !405, metadata !511), !dbg !928
  %2 = load i8*, i8** %val.addr, align 8, !dbg !929, !tbaa !515
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !930
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !928, !tbaa !515
  %3 = load %struct._object*, %struct._object** %o, align 8, !dbg !931, !tbaa !515
  %4 = load i32, i32* %i.addr, align 4, !dbg !932, !tbaa !526
  %idxprom = sext i32 %4 to i64, !dbg !933
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !934, !tbaa !515
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*, !dbg !935
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1, !dbg !936
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !933
  store %struct._object* %3, %struct._object** %arrayidx, align 8, !dbg !937, !tbaa !515
  %7 = bitcast %struct._object** %o to i8*, !dbg !938
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !938
  br label %if.end, !dbg !939

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %i.addr, align 4, !dbg !940, !tbaa !526
  %idxprom1 = sext i32 %8 to i64, !dbg !942
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !943, !tbaa !515
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*, !dbg !944
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1, !dbg !945
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %idxprom1, !dbg !942
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx3, align 8, !dbg !946, !tbaa !515
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !947, !tbaa !538
  %inc = add i64 %11, 1, !dbg !947
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !947, !tbaa !538
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !948
}

declare %struct._object* @_PyLong_FromGid(i32) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #3

declare %struct.passwd* @getpwnam(i8*) #3

declare %struct._object* @PyList_New(i64) #3

declare void @setpwent() #3

declare %struct.passwd* @getpwent() #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

declare void @endpwent() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!507, !508}
!llvm.ident = !{!509}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !351, globals: !437)
!1 = !DIFile(filename: "pwdmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !345, line: 33, baseType: !346)
!345 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 25, size: 256, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 26, baseType: !23, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !346, file: !345, line: 27, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!351 = !{!352, !358, !384, !398, !408, !419}
!352 = !DISubprogram(name: "PyInit_pwd", scope: !353, file: !353, line: 203, type: !354, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_pwd, variables: !356)
!353 = !DIFile(filename: "./Modules/pwdmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DISubroutineType(types: !355)
!355 = !{!5}
!356 = !{!357}
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !352, file: !353, line: 205, type: !5)
!358 = !DISubprogram(name: "pwd_getpwuid", scope: !353, file: !353, line: 97, type: !126, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwuid, variables: !359)
!359 = !{!360, !361, !362, !366, !379, !382}
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !358, file: !353, line: 97, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !358, file: !353, line: 97, type: !5)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uid", scope: !358, file: !353, line: 99, type: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !364, line: 80, baseType: !365)
!364 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 134, baseType: !341)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !358, file: !353, line: 100, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !369, line: 50, size: 384, align: 64, elements: !370)
!369 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!370 = !{!371, !372, !373, !374, !376, !377, !378}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !368, file: !369, line: 52, baseType: !52, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !368, file: !369, line: 53, baseType: !52, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !368, file: !369, line: 54, baseType: !365, size: 32, align: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !368, file: !369, line: 55, baseType: !375, size: 32, align: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 135, baseType: !341)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !368, file: !369, line: 56, baseType: !52, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !368, file: !369, line: 57, baseType: !52, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !368, file: !369, line: 58, baseType: !52, size: 64, align: 64, offset: 320)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uid_obj", scope: !380, file: !353, line: 108, type: !5)
!380 = distinct !DILexicalBlock(scope: !381, file: !353, line: 107, column: 44)
!381 = distinct !DILexicalBlock(scope: !358, file: !353, line: 107, column: 9)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !383, file: !353, line: 113, type: !5)
!383 = distinct !DILexicalBlock(scope: !380, file: !353, line: 113, column: 12)
!384 = !DISubprogram(name: "mkpwent", scope: !353, file: !353, line: 61, type: !385, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.passwd*)* @mkpwent, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!5, !367}
!387 = !{!388, !389, !390, !391, !395}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !384, file: !353, line: 61, type: !367)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setIndex", scope: !384, file: !353, line: 63, type: !44)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !384, file: !353, line: 64, type: !5)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !392, file: !353, line: 83, type: !5)
!392 = distinct !DILexicalBlock(scope: !393, file: !353, line: 83, column: 12)
!393 = distinct !DILexicalBlock(scope: !394, file: !353, line: 82, column: 27)
!394 = distinct !DILexicalBlock(scope: !384, file: !353, line: 82, column: 9)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !396, file: !353, line: 83, type: !5)
!396 = distinct !DILexicalBlock(scope: !397, file: !353, line: 83, column: 97)
!397 = distinct !DILexicalBlock(scope: !392, file: !353, line: 83, column: 63)
!398 = !DISubprogram(name: "sets", scope: !353, file: !353, line: 48, type: !399, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i32, i8*)* @sets, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !5, !44, !29}
!401 = !{!402, !403, !404, !405}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !398, file: !353, line: 48, type: !5)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !398, file: !353, line: 48, type: !44)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 3, scope: !398, file: !353, line: 48, type: !29)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !406, file: !353, line: 51, type: !5)
!406 = distinct !DILexicalBlock(scope: !407, file: !353, line: 50, column: 12)
!407 = distinct !DILexicalBlock(scope: !398, file: !353, line: 50, column: 7)
!408 = !DISubprogram(name: "pwd_getpwnam", scope: !353, file: !353, line: 126, type: !126, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwnam, variables: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !408, file: !353, line: 126, type: !5)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !408, file: !353, line: 126, type: !5)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !408, file: !353, line: 128, type: !52)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !408, file: !353, line: 129, type: !367)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !408, file: !353, line: 130, type: !5)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !408, file: !353, line: 130, type: !5)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !408, file: !353, line: 130, type: !5)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !418, file: !353, line: 145, type: !5)
!418 = distinct !DILexicalBlock(scope: !408, file: !353, line: 145, column: 8)
!419 = !DISubprogram(name: "pwd_getpwall", scope: !353, file: !353, line: 157, type: !116, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @pwd_getpwall, variables: !420)
!420 = !{!421, !422, !423, !424, !426, !430, !433, !435}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !419, file: !353, line: 157, type: !5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !419, file: !353, line: 159, type: !5)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !419, file: !353, line: 160, type: !367)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !425, file: !353, line: 165, type: !5)
!425 = distinct !DILexicalBlock(scope: !419, file: !353, line: 164, column: 44)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !427, file: !353, line: 167, type: !5)
!427 = distinct !DILexicalBlock(scope: !428, file: !353, line: 167, column: 16)
!428 = distinct !DILexicalBlock(scope: !429, file: !353, line: 166, column: 58)
!429 = distinct !DILexicalBlock(scope: !425, file: !353, line: 166, column: 13)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !431, file: !353, line: 167, type: !5)
!431 = distinct !DILexicalBlock(scope: !432, file: !353, line: 167, column: 101)
!432 = distinct !DILexicalBlock(scope: !427, file: !353, line: 167, column: 67)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !353, line: 168, type: !5)
!434 = distinct !DILexicalBlock(scope: !428, file: !353, line: 168, column: 16)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !353, line: 172, type: !5)
!436 = distinct !DILexicalBlock(scope: !425, file: !353, line: 172, column: 12)
!437 = !{!438, !439, !441, !464, !468, !472, !476, !480, !484, !498, !502}
!438 = !DIGlobalVariable(name: "initialized", scope: !0, file: !353, line: 44, type: !44, isLocal: true, isDefinition: true, variable: i32* @initialized)
!439 = !DIGlobalVariable(name: "StructPwdType", scope: !0, file: !353, line: 45, type: !440, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StructPwdType)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!441 = !DIGlobalVariable(name: "pwdmodule", scope: !0, file: !353, line: 189, type: !442, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @pwdmodule)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !443, line: 47, size: 832, align: 64, elements: !444)
!443 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!444 = !{!445, !454, !455, !456, !457, !460, !461, !462, !463}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !442, file: !443, line: 48, baseType: !446, size: 320, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !443, line: 38, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !443, line: 33, size: 320, align: 64, elements: !448)
!448 = !{!449, !450, !452, !453}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !447, file: !443, line: 34, baseType: !6, size: 128, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !447, file: !443, line: 35, baseType: !451, size: 64, align: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !447, file: !443, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !447, file: !443, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !442, file: !443, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !442, file: !443, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !442, file: !443, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !442, file: !443, line: 52, baseType: !458, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !442, file: !443, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !442, file: !443, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !442, file: !443, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !442, file: !443, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!464 = !DIGlobalVariable(name: "pwd__doc__", scope: !0, file: !353, line: 33, type: !465, isLocal: true, isDefinition: true, variable: [421 x i8]* @pwd__doc__)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3368, align: 8, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 421)
!468 = !DIGlobalVariable(name: "pwd_methods", scope: !0, file: !353, line: 179, type: !469, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @pwd_methods)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1024, align: 64, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 4)
!472 = !DIGlobalVariable(name: "pwd_getpwuid__doc__", scope: !0, file: !353, line: 90, type: !473, isLocal: true, isDefinition: true, variable: [214 x i8]* @pwd_getpwuid__doc__)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1712, align: 8, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 214)
!476 = !DIGlobalVariable(name: "pwd_getpwnam__doc__", scope: !0, file: !353, line: 119, type: !477, isLocal: true, isDefinition: true, variable: [211 x i8]* @pwd_getpwnam__doc__)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1688, align: 8, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 211)
!480 = !DIGlobalVariable(name: "pwd_getpwall__doc__", scope: !0, file: !353, line: 150, type: !481, isLocal: true, isDefinition: true, variable: [161 x i8]* @pwd_getpwall__doc__)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1288, align: 8, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 161)
!484 = !DIGlobalVariable(name: "struct_pwd_type_desc", scope: !0, file: !353, line: 26, type: !485, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_pwd_type_desc)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !486, line: 20, baseType: !487)
!486 = !DIFile(filename: "Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !486, line: 15, size: 256, align: 64, elements: !488)
!488 = !{!489, !490, !491, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !486, line: 16, baseType: !52, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !487, file: !486, line: 17, baseType: !52, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !487, file: !486, line: 18, baseType: !492, size: 64, align: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !486, line: 10, size: 128, align: 64, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !486, line: 11, baseType: !52, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !493, file: !486, line: 12, baseType: !52, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !487, file: !486, line: 19, baseType: !44, size: 32, align: 32, offset: 192)
!498 = !DIGlobalVariable(name: "struct_passwd__doc__", scope: !0, file: !353, line: 20, type: !499, isLocal: true, isDefinition: true, variable: [220 x i8]* @struct_passwd__doc__)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1760, align: 8, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 220)
!502 = !DIGlobalVariable(name: "struct_pwd_type_fields", scope: !0, file: !353, line: 9, type: !503, isLocal: true, isDefinition: true, variable: [8 x %struct.PyStructSequence_Field]* @struct_pwd_type_fields)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 1024, align: 64, elements: !505)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !486, line: 13, baseType: !493)
!505 = !{!506}
!506 = !DISubrange(count: 8)
!507 = !{i32 2, !"Dwarf Version", i32 4}
!508 = !{i32 2, !"Debug Info Version", i32 3}
!509 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!510 = !DILocation(line: 205, column: 5, scope: !352)
!511 = !DIExpression()
!512 = !DILocation(line: 205, column: 15, scope: !352)
!513 = !DILocation(line: 206, column: 9, scope: !352)
!514 = !DILocation(line: 206, column: 7, scope: !352)
!515 = !{!516, !516, i64 0}
!516 = !{!"any pointer", !517, i64 0}
!517 = !{!"omnipotent char", !518, i64 0}
!518 = !{!"Simple C/C++ TBAA"}
!519 = !DILocation(line: 207, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !352, file: !353, line: 207, column: 9)
!521 = !DILocation(line: 207, column: 11, scope: !520)
!522 = !DILocation(line: 207, column: 9, scope: !352)
!523 = !DILocation(line: 208, column: 9, scope: !520)
!524 = !DILocation(line: 210, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !352, file: !353, line: 210, column: 9)
!526 = !{!527, !527, i64 0}
!527 = !{!"int", !517, i64 0}
!528 = !DILocation(line: 210, column: 9, scope: !352)
!529 = !DILocation(line: 211, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !353, line: 211, column: 13)
!531 = distinct !DILexicalBlock(scope: !525, file: !353, line: 210, column: 23)
!532 = !DILocation(line: 212, column: 63, scope: !530)
!533 = !DILocation(line: 211, column: 13, scope: !531)
!534 = !DILocation(line: 213, column: 13, scope: !530)
!535 = !DILocation(line: 214, column: 21, scope: !531)
!536 = !DILocation(line: 215, column: 5, scope: !531)
!537 = !DILocation(line: 216, column: 61, scope: !352)
!538 = !{!539, !540, i64 0}
!539 = !{!"_object", !540, i64 0, !516, i64 8}
!540 = !{!"long", !517, i64 0}
!541 = !DILocation(line: 217, column: 24, scope: !352)
!542 = !DILocation(line: 217, column: 5, scope: !352)
!543 = !DILocation(line: 218, column: 12, scope: !352)
!544 = !DILocation(line: 218, column: 5, scope: !352)
!545 = !DILocation(line: 219, column: 1, scope: !352)
!546 = !DILocation(line: 97, column: 24, scope: !358)
!547 = !DILocation(line: 97, column: 40, scope: !358)
!548 = !DILocation(line: 99, column: 5, scope: !358)
!549 = !DILocation(line: 99, column: 11, scope: !358)
!550 = !DILocation(line: 100, column: 5, scope: !358)
!551 = !DILocation(line: 100, column: 20, scope: !358)
!552 = !DILocation(line: 101, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !358, file: !353, line: 101, column: 9)
!554 = !DILocation(line: 101, column: 10, scope: !553)
!555 = !DILocation(line: 101, column: 9, scope: !358)
!556 = !DILocation(line: 102, column: 36, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !353, line: 102, column: 13)
!558 = distinct !DILexicalBlock(scope: !553, file: !353, line: 101, column: 74)
!559 = !DILocation(line: 102, column: 13, scope: !557)
!560 = !DILocation(line: 102, column: 13, scope: !558)
!561 = !DILocation(line: 103, column: 26, scope: !557)
!562 = !DILocation(line: 103, column: 13, scope: !557)
!563 = !DILocation(line: 105, column: 9, scope: !558)
!564 = !DILocation(line: 107, column: 23, scope: !381)
!565 = !DILocation(line: 107, column: 14, scope: !381)
!566 = !DILocation(line: 107, column: 12, scope: !381)
!567 = !DILocation(line: 107, column: 29, scope: !381)
!568 = !DILocation(line: 107, column: 9, scope: !358)
!569 = !DILocation(line: 108, column: 9, scope: !380)
!570 = !DILocation(line: 108, column: 19, scope: !380)
!571 = !DILocation(line: 108, column: 45, scope: !380)
!572 = !DILocation(line: 108, column: 29, scope: !380)
!573 = !DILocation(line: 109, column: 13, scope: !574)
!574 = distinct !DILexicalBlock(scope: !380, file: !353, line: 109, column: 13)
!575 = !DILocation(line: 109, column: 21, scope: !574)
!576 = !DILocation(line: 109, column: 13, scope: !380)
!577 = !DILocation(line: 110, column: 13, scope: !574)
!578 = !DILocation(line: 111, column: 22, scope: !380)
!579 = !DILocation(line: 112, column: 55, scope: !380)
!580 = !DILocation(line: 111, column: 9, scope: !380)
!581 = !DILocation(line: 113, column: 9, scope: !380)
!582 = !DILocation(line: 113, column: 14, scope: !583)
!583 = !DILexicalBlockFile(scope: !383, file: !353, discriminator: 1)
!584 = !DILocation(line: 113, column: 24, scope: !383)
!585 = !DILocation(line: 113, column: 54, scope: !383)
!586 = !DILocation(line: 113, column: 72, scope: !587)
!587 = distinct !DILexicalBlock(scope: !383, file: !353, line: 113, column: 69)
!588 = !DILocation(line: 113, column: 89, scope: !587)
!589 = !DILocation(line: 113, column: 69, scope: !587)
!590 = !DILocation(line: 113, column: 99, scope: !587)
!591 = !DILocation(line: 113, column: 69, scope: !383)
!592 = !DILocation(line: 113, column: 69, scope: !593)
!593 = !DILexicalBlockFile(scope: !383, file: !353, discriminator: 2)
!594 = !DILocation(line: 113, column: 130, scope: !595)
!595 = !DILexicalBlockFile(scope: !587, file: !353, discriminator: 3)
!596 = !DILocation(line: 113, column: 148, scope: !587)
!597 = !{!539, !516, i64 8}
!598 = !DILocation(line: 113, column: 158, scope: !587)
!599 = !{!600, !516, i64 48}
!600 = !{!"_typeobject", !601, i64 0, !516, i64 24, !540, i64 32, !540, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !516, i64 80, !516, i64 88, !516, i64 96, !516, i64 104, !516, i64 112, !516, i64 120, !516, i64 128, !516, i64 136, !516, i64 144, !516, i64 152, !516, i64 160, !540, i64 168, !516, i64 176, !516, i64 184, !516, i64 192, !516, i64 200, !540, i64 208, !516, i64 216, !516, i64 224, !516, i64 232, !516, i64 240, !516, i64 248, !516, i64 256, !516, i64 264, !516, i64 272, !516, i64 280, !540, i64 288, !516, i64 296, !516, i64 304, !516, i64 312, !516, i64 320, !516, i64 328, !516, i64 336, !516, i64 344, !516, i64 352, !516, i64 360, !516, i64 368, !516, i64 376, !527, i64 384, !516, i64 392}
!601 = !{!"", !539, i64 0, !540, i64 16}
!602 = !DILocation(line: 113, column: 183, scope: !587)
!603 = !DILocation(line: 113, column: 114, scope: !587)
!604 = !DILocation(line: 113, column: 202, scope: !605)
!605 = !DILexicalBlockFile(scope: !380, file: !353, discriminator: 4)
!606 = !DILocation(line: 113, column: 202, scope: !383)
!607 = !DILocation(line: 113, column: 202, scope: !608)
!608 = !DILexicalBlockFile(scope: !383, file: !353, discriminator: 5)
!609 = !DILocation(line: 114, column: 9, scope: !380)
!610 = !DILocation(line: 115, column: 5, scope: !381)
!611 = !DILocation(line: 116, column: 20, scope: !358)
!612 = !DILocation(line: 116, column: 12, scope: !358)
!613 = !DILocation(line: 116, column: 5, scope: !358)
!614 = !DILocation(line: 117, column: 1, scope: !358)
!615 = !DILocation(line: 126, column: 24, scope: !408)
!616 = !DILocation(line: 126, column: 40, scope: !408)
!617 = !DILocation(line: 128, column: 5, scope: !408)
!618 = !DILocation(line: 128, column: 11, scope: !408)
!619 = !DILocation(line: 129, column: 5, scope: !408)
!620 = !DILocation(line: 129, column: 20, scope: !408)
!621 = !DILocation(line: 130, column: 5, scope: !408)
!622 = !DILocation(line: 130, column: 15, scope: !408)
!623 = !DILocation(line: 130, column: 21, scope: !408)
!624 = !DILocation(line: 130, column: 29, scope: !408)
!625 = !DILocation(line: 132, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !408, file: !353, line: 132, column: 9)
!627 = !DILocation(line: 132, column: 10, scope: !626)
!628 = !DILocation(line: 132, column: 9, scope: !408)
!629 = !DILocation(line: 133, column: 9, scope: !626)
!630 = !DILocation(line: 134, column: 44, scope: !631)
!631 = distinct !DILexicalBlock(scope: !408, file: !353, line: 134, column: 9)
!632 = !DILocation(line: 134, column: 18, scope: !631)
!633 = !DILocation(line: 134, column: 16, scope: !631)
!634 = !DILocation(line: 134, column: 50, scope: !631)
!635 = !DILocation(line: 134, column: 9, scope: !408)
!636 = !DILocation(line: 135, column: 9, scope: !631)
!637 = !DILocation(line: 136, column: 33, scope: !638)
!638 = distinct !DILexicalBlock(scope: !408, file: !353, line: 136, column: 9)
!639 = !DILocation(line: 136, column: 9, scope: !638)
!640 = !DILocation(line: 136, column: 59, scope: !638)
!641 = !DILocation(line: 136, column: 9, scope: !408)
!642 = !DILocation(line: 137, column: 9, scope: !638)
!643 = !DILocation(line: 138, column: 23, scope: !644)
!644 = distinct !DILexicalBlock(scope: !408, file: !353, line: 138, column: 9)
!645 = !DILocation(line: 138, column: 14, scope: !644)
!646 = !DILocation(line: 138, column: 12, scope: !644)
!647 = !DILocation(line: 138, column: 30, scope: !644)
!648 = !DILocation(line: 138, column: 9, scope: !408)
!649 = !DILocation(line: 139, column: 22, scope: !650)
!650 = distinct !DILexicalBlock(scope: !644, file: !353, line: 138, column: 45)
!651 = !DILocation(line: 140, column: 56, scope: !650)
!652 = !DILocation(line: 139, column: 9, scope: !650)
!653 = !DILocation(line: 141, column: 9, scope: !650)
!654 = !DILocation(line: 143, column: 22, scope: !408)
!655 = !DILocation(line: 143, column: 14, scope: !408)
!656 = !DILocation(line: 143, column: 12, scope: !408)
!657 = !DILocation(line: 143, column: 5, scope: !408)
!658 = !DILocation(line: 145, column: 5, scope: !408)
!659 = !DILocation(line: 145, column: 10, scope: !660)
!660 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 1)
!661 = !DILocation(line: 145, column: 20, scope: !418)
!662 = !DILocation(line: 145, column: 50, scope: !418)
!663 = !DILocation(line: 145, column: 66, scope: !664)
!664 = distinct !DILexicalBlock(scope: !418, file: !353, line: 145, column: 63)
!665 = !DILocation(line: 145, column: 83, scope: !664)
!666 = !DILocation(line: 145, column: 63, scope: !664)
!667 = !DILocation(line: 145, column: 93, scope: !664)
!668 = !DILocation(line: 145, column: 63, scope: !418)
!669 = !DILocation(line: 145, column: 63, scope: !670)
!670 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 2)
!671 = !DILocation(line: 145, column: 124, scope: !672)
!672 = !DILexicalBlockFile(scope: !664, file: !353, discriminator: 3)
!673 = !DILocation(line: 145, column: 142, scope: !664)
!674 = !DILocation(line: 145, column: 152, scope: !664)
!675 = !DILocation(line: 145, column: 177, scope: !664)
!676 = !DILocation(line: 145, column: 108, scope: !664)
!677 = !DILocation(line: 145, column: 196, scope: !678)
!678 = !DILexicalBlockFile(scope: !408, file: !353, discriminator: 4)
!679 = !DILocation(line: 145, column: 196, scope: !418)
!680 = !DILocation(line: 145, column: 196, scope: !681)
!681 = !DILexicalBlockFile(scope: !418, file: !353, discriminator: 5)
!682 = !DILocation(line: 146, column: 12, scope: !408)
!683 = !DILocation(line: 146, column: 5, scope: !408)
!684 = !DILocation(line: 147, column: 1, scope: !408)
!685 = !DILocation(line: 157, column: 24, scope: !419)
!686 = !DILocation(line: 159, column: 5, scope: !419)
!687 = !DILocation(line: 159, column: 15, scope: !419)
!688 = !DILocation(line: 160, column: 5, scope: !419)
!689 = !DILocation(line: 160, column: 20, scope: !419)
!690 = !DILocation(line: 161, column: 14, scope: !691)
!691 = distinct !DILexicalBlock(scope: !419, file: !353, line: 161, column: 9)
!692 = !DILocation(line: 161, column: 12, scope: !691)
!693 = !DILocation(line: 161, column: 29, scope: !691)
!694 = !DILocation(line: 161, column: 9, scope: !419)
!695 = !DILocation(line: 162, column: 9, scope: !691)
!696 = !DILocation(line: 163, column: 5, scope: !419)
!697 = !DILocation(line: 164, column: 5, scope: !419)
!698 = !DILocation(line: 164, column: 17, scope: !699)
!699 = !DILexicalBlockFile(scope: !700, file: !353, discriminator: 2)
!700 = !DILexicalBlockFile(scope: !419, file: !353, discriminator: 1)
!701 = !DILocation(line: 164, column: 15, scope: !419)
!702 = !DILocation(line: 164, column: 29, scope: !419)
!703 = !DILocation(line: 165, column: 9, scope: !425)
!704 = !DILocation(line: 165, column: 19, scope: !425)
!705 = !DILocation(line: 165, column: 31, scope: !425)
!706 = !DILocation(line: 165, column: 23, scope: !425)
!707 = !DILocation(line: 166, column: 13, scope: !429)
!708 = !DILocation(line: 166, column: 15, scope: !429)
!709 = !DILocation(line: 166, column: 29, scope: !429)
!710 = !DILocation(line: 166, column: 46, scope: !711)
!711 = !DILexicalBlockFile(scope: !429, file: !353, discriminator: 1)
!712 = !DILocation(line: 166, column: 49, scope: !429)
!713 = !DILocation(line: 166, column: 32, scope: !429)
!714 = !DILocation(line: 166, column: 52, scope: !429)
!715 = !DILocation(line: 166, column: 13, scope: !425)
!716 = !DILocation(line: 167, column: 13, scope: !428)
!717 = !DILocation(line: 167, column: 18, scope: !718)
!718 = !DILexicalBlockFile(scope: !427, file: !353, discriminator: 1)
!719 = !DILocation(line: 167, column: 28, scope: !427)
!720 = !DILocation(line: 167, column: 59, scope: !427)
!721 = !DILocation(line: 167, column: 67, scope: !432)
!722 = !DILocation(line: 167, column: 83, scope: !432)
!723 = !DILocation(line: 167, column: 67, scope: !427)
!724 = !DILocation(line: 167, column: 98, scope: !725)
!725 = !DILexicalBlockFile(scope: !432, file: !353, discriminator: 2)
!726 = !DILocation(line: 167, column: 103, scope: !727)
!727 = !DILexicalBlockFile(scope: !431, file: !353, discriminator: 4)
!728 = !DILocation(line: 167, column: 113, scope: !431)
!729 = !DILocation(line: 167, column: 143, scope: !431)
!730 = !DILocation(line: 167, column: 169, scope: !731)
!731 = distinct !DILexicalBlock(scope: !431, file: !353, line: 167, column: 166)
!732 = !DILocation(line: 167, column: 186, scope: !731)
!733 = !DILocation(line: 167, column: 166, scope: !731)
!734 = !DILocation(line: 167, column: 196, scope: !731)
!735 = !DILocation(line: 167, column: 166, scope: !431)
!736 = !DILocation(line: 167, column: 166, scope: !737)
!737 = !DILexicalBlockFile(scope: !431, file: !353, discriminator: 5)
!738 = !DILocation(line: 167, column: 227, scope: !739)
!739 = !DILexicalBlockFile(scope: !731, file: !353, discriminator: 6)
!740 = !DILocation(line: 167, column: 245, scope: !731)
!741 = !DILocation(line: 167, column: 255, scope: !731)
!742 = !DILocation(line: 167, column: 280, scope: !731)
!743 = !DILocation(line: 167, column: 211, scope: !731)
!744 = !DILocation(line: 167, column: 299, scope: !745)
!745 = !DILexicalBlockFile(scope: !432, file: !353, discriminator: 7)
!746 = !DILocation(line: 167, column: 299, scope: !431)
!747 = !DILocation(line: 167, column: 299, scope: !748)
!748 = !DILexicalBlockFile(scope: !431, file: !353, discriminator: 8)
!749 = !DILocation(line: 167, column: 299, scope: !750)
!750 = !DILexicalBlockFile(scope: !431, file: !353, discriminator: 9)
!751 = !DILocation(line: 167, column: 312, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !353, discriminator: 10)
!753 = !DILexicalBlockFile(scope: !428, file: !353, discriminator: 3)
!754 = !DILocation(line: 167, column: 312, scope: !427)
!755 = !DILocation(line: 167, column: 312, scope: !756)
!756 = !DILexicalBlockFile(scope: !427, file: !353, discriminator: 11)
!757 = !DILocation(line: 168, column: 13, scope: !428)
!758 = !DILocation(line: 168, column: 18, scope: !759)
!759 = !DILexicalBlockFile(scope: !434, file: !353, discriminator: 1)
!760 = !DILocation(line: 168, column: 28, scope: !434)
!761 = !DILocation(line: 168, column: 58, scope: !434)
!762 = !DILocation(line: 168, column: 70, scope: !763)
!763 = distinct !DILexicalBlock(scope: !434, file: !353, line: 168, column: 67)
!764 = !DILocation(line: 168, column: 87, scope: !763)
!765 = !DILocation(line: 168, column: 67, scope: !763)
!766 = !DILocation(line: 168, column: 97, scope: !763)
!767 = !DILocation(line: 168, column: 67, scope: !434)
!768 = !DILocation(line: 168, column: 67, scope: !769)
!769 = !DILexicalBlockFile(scope: !434, file: !353, discriminator: 2)
!770 = !DILocation(line: 168, column: 128, scope: !771)
!771 = !DILexicalBlockFile(scope: !763, file: !353, discriminator: 3)
!772 = !DILocation(line: 168, column: 146, scope: !763)
!773 = !DILocation(line: 168, column: 156, scope: !763)
!774 = !DILocation(line: 168, column: 181, scope: !763)
!775 = !DILocation(line: 168, column: 112, scope: !763)
!776 = !DILocation(line: 168, column: 200, scope: !777)
!777 = !DILexicalBlockFile(scope: !428, file: !353, discriminator: 4)
!778 = !DILocation(line: 168, column: 200, scope: !434)
!779 = !DILocation(line: 168, column: 200, scope: !780)
!780 = !DILexicalBlockFile(scope: !434, file: !353, discriminator: 5)
!781 = !DILocation(line: 169, column: 13, scope: !428)
!782 = !DILocation(line: 170, column: 13, scope: !428)
!783 = !DILocation(line: 172, column: 9, scope: !425)
!784 = !DILocation(line: 172, column: 14, scope: !785)
!785 = !DILexicalBlockFile(scope: !436, file: !353, discriminator: 1)
!786 = !DILocation(line: 172, column: 24, scope: !436)
!787 = !DILocation(line: 172, column: 54, scope: !436)
!788 = !DILocation(line: 172, column: 66, scope: !789)
!789 = distinct !DILexicalBlock(scope: !436, file: !353, line: 172, column: 63)
!790 = !DILocation(line: 172, column: 83, scope: !789)
!791 = !DILocation(line: 172, column: 63, scope: !789)
!792 = !DILocation(line: 172, column: 93, scope: !789)
!793 = !DILocation(line: 172, column: 63, scope: !436)
!794 = !DILocation(line: 172, column: 63, scope: !795)
!795 = !DILexicalBlockFile(scope: !436, file: !353, discriminator: 2)
!796 = !DILocation(line: 172, column: 124, scope: !797)
!797 = !DILexicalBlockFile(scope: !789, file: !353, discriminator: 3)
!798 = !DILocation(line: 172, column: 142, scope: !789)
!799 = !DILocation(line: 172, column: 152, scope: !789)
!800 = !DILocation(line: 172, column: 177, scope: !789)
!801 = !DILocation(line: 172, column: 108, scope: !789)
!802 = !DILocation(line: 172, column: 196, scope: !803)
!803 = !DILexicalBlockFile(scope: !425, file: !353, discriminator: 4)
!804 = !DILocation(line: 172, column: 196, scope: !436)
!805 = !DILocation(line: 172, column: 196, scope: !806)
!806 = !DILexicalBlockFile(scope: !436, file: !353, discriminator: 5)
!807 = !DILocation(line: 173, column: 5, scope: !419)
!808 = !DILocation(line: 173, column: 5, scope: !700)
!809 = !DILocation(line: 174, column: 5, scope: !419)
!810 = !DILocation(line: 175, column: 12, scope: !419)
!811 = !DILocation(line: 175, column: 5, scope: !419)
!812 = !DILocation(line: 176, column: 1, scope: !419)
!813 = !DILocation(line: 61, column: 24, scope: !384)
!814 = !DILocation(line: 63, column: 5, scope: !384)
!815 = !DILocation(line: 63, column: 9, scope: !384)
!816 = !DILocation(line: 64, column: 5, scope: !384)
!817 = !DILocation(line: 64, column: 15, scope: !384)
!818 = !DILocation(line: 64, column: 19, scope: !384)
!819 = !DILocation(line: 65, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !384, file: !353, line: 65, column: 9)
!821 = !DILocation(line: 65, column: 11, scope: !820)
!822 = !DILocation(line: 65, column: 9, scope: !384)
!823 = !DILocation(line: 66, column: 9, scope: !820)
!824 = !DILocation(line: 71, column: 10, scope: !384)
!825 = !DILocation(line: 71, column: 21, scope: !384)
!826 = !DILocation(line: 71, column: 25, scope: !384)
!827 = !DILocation(line: 71, column: 28, scope: !384)
!828 = !{!829, !516, i64 0}
!829 = !{!"passwd", !516, i64 0, !516, i64 8, !527, i64 16, !527, i64 20, !516, i64 24, !516, i64 32, !516, i64 40}
!830 = !DILocation(line: 71, column: 5, scope: !384)
!831 = !DILocation(line: 72, column: 10, scope: !384)
!832 = !DILocation(line: 72, column: 21, scope: !384)
!833 = !DILocation(line: 72, column: 25, scope: !384)
!834 = !DILocation(line: 72, column: 28, scope: !384)
!835 = !{!829, !516, i64 8}
!836 = !DILocation(line: 72, column: 5, scope: !384)
!837 = !DILocation(line: 73, column: 68, scope: !384)
!838 = !DILocation(line: 73, column: 71, scope: !384)
!839 = !{!829, !527, i64 16}
!840 = !DILocation(line: 73, column: 52, scope: !384)
!841 = !DILocation(line: 73, column: 46, scope: !384)
!842 = !DILocation(line: 73, column: 6, scope: !384)
!843 = !DILocation(line: 73, column: 25, scope: !384)
!844 = !DILocation(line: 73, column: 7, scope: !384)
!845 = !DILocation(line: 73, column: 30, scope: !384)
!846 = !DILocation(line: 73, column: 50, scope: !384)
!847 = !DILocation(line: 74, column: 68, scope: !384)
!848 = !DILocation(line: 74, column: 71, scope: !384)
!849 = !{!829, !527, i64 20}
!850 = !DILocation(line: 74, column: 52, scope: !384)
!851 = !DILocation(line: 74, column: 46, scope: !384)
!852 = !DILocation(line: 74, column: 6, scope: !384)
!853 = !DILocation(line: 74, column: 25, scope: !384)
!854 = !DILocation(line: 74, column: 7, scope: !384)
!855 = !DILocation(line: 74, column: 30, scope: !384)
!856 = !DILocation(line: 74, column: 50, scope: !384)
!857 = !DILocation(line: 75, column: 10, scope: !384)
!858 = !DILocation(line: 75, column: 21, scope: !384)
!859 = !DILocation(line: 75, column: 25, scope: !384)
!860 = !DILocation(line: 75, column: 28, scope: !384)
!861 = !{!829, !516, i64 24}
!862 = !DILocation(line: 75, column: 5, scope: !384)
!863 = !DILocation(line: 76, column: 10, scope: !384)
!864 = !DILocation(line: 76, column: 21, scope: !384)
!865 = !DILocation(line: 76, column: 25, scope: !384)
!866 = !DILocation(line: 76, column: 28, scope: !384)
!867 = !{!829, !516, i64 32}
!868 = !DILocation(line: 76, column: 5, scope: !384)
!869 = !DILocation(line: 77, column: 10, scope: !384)
!870 = !DILocation(line: 77, column: 21, scope: !384)
!871 = !DILocation(line: 77, column: 25, scope: !384)
!872 = !DILocation(line: 77, column: 28, scope: !384)
!873 = !{!829, !516, i64 40}
!874 = !DILocation(line: 77, column: 5, scope: !384)
!875 = !DILocation(line: 82, column: 9, scope: !394)
!876 = !DILocation(line: 82, column: 9, scope: !384)
!877 = !DILocation(line: 83, column: 9, scope: !393)
!878 = !DILocation(line: 83, column: 14, scope: !879)
!879 = !DILexicalBlockFile(scope: !392, file: !353, discriminator: 1)
!880 = !DILocation(line: 83, column: 24, scope: !392)
!881 = !DILocation(line: 83, column: 55, scope: !392)
!882 = !DILocation(line: 83, column: 63, scope: !397)
!883 = !DILocation(line: 83, column: 79, scope: !397)
!884 = !DILocation(line: 83, column: 63, scope: !392)
!885 = !DILocation(line: 83, column: 94, scope: !886)
!886 = !DILexicalBlockFile(scope: !397, file: !353, discriminator: 2)
!887 = !DILocation(line: 83, column: 99, scope: !888)
!888 = !DILexicalBlockFile(scope: !396, file: !353, discriminator: 4)
!889 = !DILocation(line: 83, column: 109, scope: !396)
!890 = !DILocation(line: 83, column: 139, scope: !396)
!891 = !DILocation(line: 83, column: 165, scope: !892)
!892 = distinct !DILexicalBlock(scope: !396, file: !353, line: 83, column: 162)
!893 = !DILocation(line: 83, column: 182, scope: !892)
!894 = !DILocation(line: 83, column: 162, scope: !892)
!895 = !DILocation(line: 83, column: 192, scope: !892)
!896 = !DILocation(line: 83, column: 162, scope: !396)
!897 = !DILocation(line: 83, column: 162, scope: !898)
!898 = !DILexicalBlockFile(scope: !396, file: !353, discriminator: 5)
!899 = !DILocation(line: 83, column: 223, scope: !900)
!900 = !DILexicalBlockFile(scope: !892, file: !353, discriminator: 6)
!901 = !DILocation(line: 83, column: 241, scope: !892)
!902 = !DILocation(line: 83, column: 251, scope: !892)
!903 = !DILocation(line: 83, column: 276, scope: !892)
!904 = !DILocation(line: 83, column: 207, scope: !892)
!905 = !DILocation(line: 83, column: 295, scope: !906)
!906 = !DILexicalBlockFile(scope: !397, file: !353, discriminator: 7)
!907 = !DILocation(line: 83, column: 295, scope: !396)
!908 = !DILocation(line: 83, column: 295, scope: !909)
!909 = !DILexicalBlockFile(scope: !396, file: !353, discriminator: 8)
!910 = !DILocation(line: 83, column: 295, scope: !911)
!911 = !DILexicalBlockFile(scope: !396, file: !353, discriminator: 9)
!912 = !DILocation(line: 83, column: 308, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !353, discriminator: 10)
!914 = !DILexicalBlockFile(scope: !393, file: !353, discriminator: 3)
!915 = !DILocation(line: 83, column: 308, scope: !392)
!916 = !DILocation(line: 83, column: 308, scope: !917)
!917 = !DILexicalBlockFile(scope: !392, file: !353, discriminator: 11)
!918 = !DILocation(line: 84, column: 9, scope: !393)
!919 = !DILocation(line: 87, column: 12, scope: !384)
!920 = !DILocation(line: 87, column: 5, scope: !384)
!921 = !DILocation(line: 88, column: 1, scope: !384)
!922 = !DILocation(line: 48, column: 16, scope: !398)
!923 = !DILocation(line: 48, column: 23, scope: !398)
!924 = !DILocation(line: 48, column: 38, scope: !398)
!925 = !DILocation(line: 50, column: 7, scope: !407)
!926 = !DILocation(line: 50, column: 7, scope: !398)
!927 = !DILocation(line: 51, column: 7, scope: !406)
!928 = !DILocation(line: 51, column: 17, scope: !406)
!929 = !DILocation(line: 51, column: 47, scope: !406)
!930 = !DILocation(line: 51, column: 21, scope: !406)
!931 = !DILocation(line: 52, column: 45, scope: !406)
!932 = !DILocation(line: 52, column: 40, scope: !406)
!933 = !DILocation(line: 52, column: 8, scope: !406)
!934 = !DILocation(line: 52, column: 27, scope: !406)
!935 = !DILocation(line: 52, column: 9, scope: !406)
!936 = !DILocation(line: 52, column: 32, scope: !406)
!937 = !DILocation(line: 52, column: 43, scope: !406)
!938 = !DILocation(line: 53, column: 3, scope: !407)
!939 = !DILocation(line: 53, column: 3, scope: !406)
!940 = !DILocation(line: 55, column: 40, scope: !941)
!941 = distinct !DILexicalBlock(scope: !407, file: !353, line: 54, column: 8)
!942 = !DILocation(line: 55, column: 8, scope: !941)
!943 = !DILocation(line: 55, column: 27, scope: !941)
!944 = !DILocation(line: 55, column: 9, scope: !941)
!945 = !DILocation(line: 55, column: 32, scope: !941)
!946 = !DILocation(line: 55, column: 43, scope: !941)
!947 = !DILocation(line: 56, column: 53, scope: !941)
!948 = !DILocation(line: 58, column: 1, scope: !398)
