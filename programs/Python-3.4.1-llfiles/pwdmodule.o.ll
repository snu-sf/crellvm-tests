; ModuleID = 'pwdmodule.o.bc'
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

@pwdmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @pwd__doc__, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @pwd_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@initialized = internal unnamed_addr global i1 false
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
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @pwdmodule, i32 1013) #1, !dbg !509
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !356, metadata !510), !dbg !511
  %cmp = icmp eq %struct._object* %call, null, !dbg !512
  br i1 %cmp, label %cleanup, label %if.end, !dbg !514

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @initialized, align 1
  br i1 %.b, label %if.end.6, label %if.then.1, !dbg !515

if.then.1:                                        ; preds = %if.end
  %call2 = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* nonnull @StructPwdType, %struct.PyStructSequence_Desc* nonnull @struct_pwd_type_desc) #1, !dbg !516
  %cmp3 = icmp slt i32 %call2, 0, !dbg !520
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !521

if.end.5:                                         ; preds = %if.then.1
  store i1 true, i1* @initialized, align 1
  br label %if.end.6, !dbg !522

if.end.6:                                         ; preds = %if.end.5, %if.end
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !523, !tbaa !524
  %inc = add i64 %0, 1, !dbg !523
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !523, !tbaa !524
  %call7 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructPwdType, i64 0, i32 0, i32 0)) #1, !dbg !530
  br label %cleanup, !dbg !531

cleanup:                                          ; preds = %if.then.1, %entry, %if.end.6
  %retval.0 = phi %struct._object* [ %call, %if.end.6 ], [ null, %entry ], [ null, %if.then.1 ]
  ret %struct._object* %retval.0, !dbg !532
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwuid(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %uid = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !359, metadata !510), !dbg !533
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !360, metadata !510), !dbg !534
  %0 = bitcast i32* %uid to i8*, !dbg !535
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !535
  tail call void @llvm.dbg.value(metadata i32* %uid, i64 0, metadata !361, metadata !510), !dbg !536
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 (%struct._object*, i8*)* nonnull @_Py_Uid_Converter, i32* nonnull %uid) #1, !dbg !537
  %tobool = icmp eq i32 %call, 0, !dbg !537
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !539

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !540, !tbaa !543
  %call1 = call i32 @PyErr_ExceptionMatches(%struct._object* %1) #1, !dbg !544
  %tobool2 = icmp eq i32 %call1, 0, !dbg !544
  br i1 %tobool2, label %cleanup.18, label %if.then.3, !dbg !545

if.then.3:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !546, !tbaa !543
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #1, !dbg !547
  br label %cleanup.18, !dbg !547

if.end.5:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %uid, i64 0, metadata !361, metadata !510), !dbg !536
  %3 = load i32, i32* %uid, align 4, !dbg !548, !tbaa !549
  %call6 = call %struct.passwd* @getpwuid(i32 %3) #1, !dbg !551
  call void @llvm.dbg.value(metadata %struct.passwd* %call6, i64 0, metadata !365, metadata !510), !dbg !552
  %cmp = icmp eq %struct.passwd* %call6, null, !dbg !553
  br i1 %cmp, label %if.then.7, label %if.end.16, !dbg !554

if.then.7:                                        ; preds = %if.end.5
  call void @llvm.dbg.value(metadata i32* %uid, i64 0, metadata !361, metadata !510), !dbg !536
  %4 = load i32, i32* %uid, align 4, !dbg !555, !tbaa !549
  %call8 = call %struct._object* @_PyLong_FromUid(i32 %4) #1, !dbg !556
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !378, metadata !510), !dbg !557
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !558
  br i1 %cmp9, label %cleanup.18, label %if.end.11, !dbg !560

if.end.11:                                        ; preds = %if.then.7
  %5 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !561, !tbaa !543
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), %struct._object* %call8) #1, !dbg !562
  call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !381, metadata !510), !dbg !563
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 0, !dbg !565
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !565, !tbaa !524
  %dec = add i64 %6, -1, !dbg !565
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !565, !tbaa !524
  %cmp13 = icmp eq i64 %dec, 0, !dbg !565
  br i1 %cmp13, label %if.else, label %cleanup.18, !dbg !567

if.else:                                          ; preds = %if.end.11
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call8, i64 0, i32 1, !dbg !568
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !568, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !568
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !568, !tbaa !571
  call void %8(%struct._object* %call8) #1, !dbg !568
  br label %cleanup.18

if.end.16:                                        ; preds = %if.end.5
  %call17 = call fastcc %struct._object* @mkpwent(%struct.passwd* %call6), !dbg !574
  br label %cleanup.18, !dbg !575

cleanup.18:                                       ; preds = %if.then.7, %if.end.11, %if.else, %if.then.3, %if.then, %if.end.16
  %retval.1 = phi %struct._object* [ %call17, %if.end.16 ], [ null, %if.then ], [ null, %if.then.3 ], [ null, %if.else ], [ null, %if.end.11 ], [ null, %if.then.7 ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #1, !dbg !576
  ret %struct._object* %retval.1, !dbg !576
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwnam(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %name = alloca i8*, align 8
  %arg = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !409, metadata !510), !dbg !577
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !410, metadata !510), !dbg !578
  %0 = bitcast i8** %name to i8*, !dbg !579
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !579
  %1 = bitcast %struct._object** %arg to i8*, !dbg !580
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !580
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !415, metadata !510), !dbg !581
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !413, metadata !510), !dbg !582
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), %struct._object** nonnull %arg) #1, !dbg !583
  %tobool = icmp eq i32 %call, 0, !dbg !583
  br i1 %tobool, label %cleanup, label %if.end, !dbg !585

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !413, metadata !510), !dbg !582
  %2 = load %struct._object*, %struct._object** %arg, align 8, !dbg !586, !tbaa !543
  %call2 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %2) #1, !dbg !588
  call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !414, metadata !510), !dbg !589
  %cmp = icmp eq %struct._object* %call2, null, !dbg !590
  br i1 %cmp, label %cleanup, label %if.end.4, !dbg !591

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !411, metadata !510), !dbg !592
  %call5 = call i32 @PyBytes_AsStringAndSize(%struct._object* %call2, i8** nonnull %name, i64* null) #1, !dbg !593
  %cmp6 = icmp eq i32 %call5, -1, !dbg !595
  br i1 %cmp6, label %do.body, label %if.end.8, !dbg !596

if.end.8:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !411, metadata !510), !dbg !592
  %3 = load i8*, i8** %name, align 8, !dbg !597, !tbaa !543
  %call9 = call %struct.passwd* @getpwnam(i8* %3) #1, !dbg !599
  call void @llvm.dbg.value(metadata %struct.passwd* %call9, i64 0, metadata !412, metadata !510), !dbg !600
  %cmp10 = icmp eq %struct.passwd* %call9, null, !dbg !601
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !602

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !603, !tbaa !543
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !411, metadata !510), !dbg !592
  %5 = load i8*, i8** %name, align 8, !dbg !605, !tbaa !543
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %5) #1, !dbg !606
  br label %do.body, !dbg !607

if.end.13:                                        ; preds = %if.end.8
  %call14 = call fastcc %struct._object* @mkpwent(%struct.passwd* %call9), !dbg !608
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !415, metadata !510), !dbg !581
  br label %do.body, !dbg !609

do.body:                                          ; preds = %if.then.11, %if.end.13, %if.end.4
  %retval1.0 = phi %struct._object* [ null, %if.end.4 ], [ null, %if.then.11 ], [ %call14, %if.end.13 ]
  call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !416, metadata !510), !dbg !610
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !612
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !612, !tbaa !524
  %dec = add i64 %6, -1, !dbg !612
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !612, !tbaa !524
  %cmp15 = icmp eq i64 %dec, 0, !dbg !612
  br i1 %cmp15, label %if.else, label %cleanup, !dbg !614

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !615
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !615, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !615
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !615, !tbaa !571
  call void %8(%struct._object* %call2) #1, !dbg !615
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %retval1.0, %do.body ], [ %retval1.0, %if.else ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !617
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !617
  ret %struct._object* %retval.0, !dbg !617
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pwd_getpwall(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !420, metadata !510), !dbg !618
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !619
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !421, metadata !510), !dbg !621
  %cmp = icmp eq %struct._object* %call, null, !dbg !622
  br i1 %cmp, label %cleanup.42, label %if.end, !dbg !623

if.end:                                           ; preds = %entry
  tail call void @setpwent() #1, !dbg !624
  %call1.64 = tail call %struct.passwd* @getpwent() #1, !dbg !625
  tail call void @llvm.dbg.value(metadata %struct.passwd* %call1.64, i64 0, metadata !422, metadata !510), !dbg !628
  %cmp2.65 = icmp eq %struct.passwd* %call1.64, null, !dbg !629
  br i1 %cmp2.65, label %while.end, label %while.body.preheader, !dbg !630

while.body.preheader:                             ; preds = %if.end
  br label %while.body, !dbg !631

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %call166 = phi %struct.passwd* [ %call1, %while.cond.backedge ], [ %call1.64, %while.body.preheader ]
  %call3 = tail call fastcc %struct._object* @mkpwent(%struct.passwd* %call166), !dbg !631
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !423, metadata !510), !dbg !632
  %cond = icmp eq %struct._object* %call3, null, !dbg !633
  br i1 %cond, label %if.end.14.loopexit, label %lor.lhs.false, !dbg !633

lor.lhs.false:                                    ; preds = %while.body
  %call5 = tail call i32 @PyList_Append(%struct._object* %call, %struct._object* %call3) #1, !dbg !634
  %cmp6 = icmp eq i32 %call5, 0, !dbg !635
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !636
  %0 = load i64, i64* %ob_refcnt32, align 8, !dbg !636, !tbaa !524
  %dec33 = add i64 %0, -1, !dbg !636
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !636, !tbaa !524
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !636
  br i1 %cmp6, label %do.body.30, label %do.body.10, !dbg !638

do.body.10:                                       ; preds = %lor.lhs.false
  %cmp34.lcssa = phi i1 [ %cmp34, %lor.lhs.false ]
  %call3.lcssa76 = phi %struct._object* [ %call3, %lor.lhs.false ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !425, metadata !510), !dbg !639
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !429, metadata !510), !dbg !641
  br i1 %cmp34.lcssa, label %if.else, label %if.end.14, !dbg !643

if.else:                                          ; preds = %do.body.10
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call3.lcssa76, i64 0, i32 1, !dbg !644
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !644, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !644
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !644, !tbaa !571
  tail call void %2(%struct._object* %call3.lcssa76) #1, !dbg !644
  br label %if.end.14

if.end.14.loopexit:                               ; preds = %while.body
  br label %if.end.14, !dbg !647

if.end.14:                                        ; preds = %if.end.14.loopexit, %if.else, %do.body.10
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !432, metadata !510), !dbg !647
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !649
  %3 = load i64, i64* %ob_refcnt19, align 8, !dbg !649, !tbaa !524
  %dec20 = add i64 %3, -1, !dbg !649
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !649, !tbaa !524
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !649
  br i1 %cmp21, label %if.else.23, label %if.end.26, !dbg !651

if.else.23:                                       ; preds = %if.end.14
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !652
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !652, !tbaa !570
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !652
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !652, !tbaa !571
  tail call void %5(%struct._object* %call) #1, !dbg !652
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.14, %if.else.23
  tail call void @endpwent() #1, !dbg !654
  br label %cleanup.42

do.body.30:                                       ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !434, metadata !510), !dbg !655
  br i1 %cmp34, label %if.else.36, label %while.cond.backedge, !dbg !657

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !658
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !658, !tbaa !570
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !658
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !658, !tbaa !571
  tail call void %7(%struct._object* %call3) #1, !dbg !658
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else.36, %do.body.30
  %call1 = tail call %struct.passwd* @getpwent() #1, !dbg !625
  tail call void @llvm.dbg.value(metadata %struct.passwd* %call1, i64 0, metadata !422, metadata !510), !dbg !628
  %cmp2 = icmp eq %struct.passwd* %call1, null, !dbg !629
  br i1 %cmp2, label %while.end.loopexit, label %while.body, !dbg !630

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end, !dbg !660

while.end:                                        ; preds = %while.end.loopexit, %if.end
  tail call void @endpwent() #1, !dbg !660
  br label %cleanup.42, !dbg !661

cleanup.42:                                       ; preds = %if.end.26, %entry, %while.end
  %retval.2 = phi %struct._object* [ %call, %while.end ], [ null, %entry ], [ null, %if.end.26 ]
  ret %struct._object* %retval.2, !dbg !662
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare i32 @_Py_Uid_Converter(%struct._object*, i8*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare %struct.passwd* @getpwuid(i32) #2

declare %struct._object* @_PyLong_FromUid(i32) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @mkpwent(%struct.passwd* nocapture readonly %p) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.passwd* %p, i64 0, metadata !387, metadata !510), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !388, metadata !510), !dbg !664
  %call = tail call %struct._object* @PyStructSequence_New(%struct._typeobject* nonnull @StructPwdType) #1, !dbg !665
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !389, metadata !510), !dbg !666
  %cmp = icmp eq %struct._object* %call, null, !dbg !667
  br i1 %cmp, label %cleanup, label %if.end, !dbg !669

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !388, metadata !510), !dbg !664
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 0, !dbg !670
  %0 = load i8*, i8** %pw_name, align 8, !dbg !670, !tbaa !671
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !510) #1, !dbg !673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !402, metadata !510) #1, !dbg !675
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !403, metadata !510) #1, !dbg !676
  %tobool.i = icmp eq i8* %0, null, !dbg !677
  br i1 %tobool.i, label %if.else.i, label %if.then.i, !dbg !678

if.then.i:                                        ; preds = %if.end
  %call.i = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0) #1, !dbg !679
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !404, metadata !510) #1, !dbg !680
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !681
  %arrayidx.i = bitcast %struct._typeobject** %ob_item.i to %struct._object**, !dbg !681
  store %struct._object* %call.i, %struct._object** %arrayidx.i, align 8, !dbg !681, !tbaa !543
  br label %sets.exit, !dbg !682

if.else.i:                                        ; preds = %if.end
  %ob_item2.i = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !683
  %arrayidx3.i = bitcast %struct._typeobject** %ob_item2.i to %struct._object**, !dbg !683
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx3.i, align 8, !dbg !683, !tbaa !543
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !685, !tbaa !524
  %inc.i = add i64 %1, 1, !dbg !685
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !685, !tbaa !524
  br label %sets.exit, !dbg !670

sets.exit:                                        ; preds = %if.then.i, %if.else.i
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !388, metadata !510), !dbg !664
  %pw_passwd = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 1, !dbg !686
  %2 = load i8*, i8** %pw_passwd, align 8, !dbg !686, !tbaa !687
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !510) #1, !dbg !688
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !402, metadata !510) #1, !dbg !690
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !403, metadata !510) #1, !dbg !691
  %tobool.i.53 = icmp eq i8* %2, null, !dbg !692
  br i1 %tobool.i.53, label %if.else.i.61, label %if.then.i.57, !dbg !693

if.then.i.57:                                     ; preds = %sets.exit
  %call.i.54 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2) #1, !dbg !694
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.54, i64 0, metadata !404, metadata !510) #1, !dbg !695
  %ob_item.i.55 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  %arrayidx.i.56 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item.i.55, i64 1, !dbg !696
  %3 = bitcast %struct._typeobject** %arrayidx.i.56 to %struct._object**, !dbg !696
  store %struct._object* %call.i.54, %struct._object** %3, align 8, !dbg !696, !tbaa !543
  br label %sets.exit62, !dbg !697

if.else.i.61:                                     ; preds = %sets.exit
  %ob_item2.i.58 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !698
  %arrayidx3.i.59 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item2.i.58, i64 1, !dbg !698
  %4 = bitcast %struct._typeobject** %arrayidx3.i.59 to %struct._object**, !dbg !698
  store %struct._object* @_Py_NoneStruct, %struct._object** %4, align 8, !dbg !698, !tbaa !543
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !699, !tbaa !524
  %inc.i.60 = add i64 %5, 1, !dbg !699
  store i64 %inc.i.60, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !699, !tbaa !524
  br label %sets.exit62, !dbg !686

sets.exit62:                                      ; preds = %if.then.i.57, %if.else.i.61
  %6 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  %7 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 2, !dbg !700
  %8 = load i32, i32* %pw_uid, align 4, !dbg !700, !tbaa !701
  %call2 = tail call %struct._object* @_PyLong_FromUid(i32 %8) #1, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !388, metadata !510), !dbg !664
  %arrayidx = getelementptr %struct._typeobject*, %struct._typeobject** %7, i64 2, !dbg !700
  %9 = bitcast %struct._typeobject** %arrayidx to %struct._object**, !dbg !700
  store %struct._object* %call2, %struct._object** %9, align 8, !dbg !700, !tbaa !543
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 3, !dbg !702
  %10 = load i32, i32* %pw_gid, align 4, !dbg !702, !tbaa !703
  %call4 = tail call %struct._object* @_PyLong_FromGid(i32 %10) #1, !dbg !702
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !388, metadata !510), !dbg !664
  %arrayidx8 = getelementptr %struct._typeobject*, %struct._typeobject** %6, i64 3, !dbg !702
  %11 = bitcast %struct._typeobject** %arrayidx8 to %struct._object**, !dbg !702
  store %struct._object* %call4, %struct._object** %11, align 8, !dbg !702, !tbaa !543
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !388, metadata !510), !dbg !664
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 4, !dbg !704
  %12 = load i8*, i8** %pw_gecos, align 8, !dbg !704, !tbaa !705
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !510) #1, !dbg !706
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !402, metadata !510) #1, !dbg !708
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !403, metadata !510) #1, !dbg !709
  %tobool.i.63 = icmp eq i8* %12, null, !dbg !710
  %13 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  br i1 %tobool.i.63, label %if.else.i.71, label %if.then.i.67, !dbg !711

if.then.i.67:                                     ; preds = %sets.exit62
  %call.i.64 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %12) #1, !dbg !712
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.64, i64 0, metadata !404, metadata !510) #1, !dbg !713
  %arrayidx.i.66 = getelementptr %struct._typeobject*, %struct._typeobject** %13, i64 4, !dbg !714
  %14 = bitcast %struct._typeobject** %arrayidx.i.66 to %struct._object**, !dbg !714
  store %struct._object* %call.i.64, %struct._object** %14, align 8, !dbg !714, !tbaa !543
  br label %sets.exit72, !dbg !715

if.else.i.71:                                     ; preds = %sets.exit62
  %arrayidx3.i.69 = getelementptr %struct._typeobject*, %struct._typeobject** %13, i64 4, !dbg !716
  %15 = bitcast %struct._typeobject** %arrayidx3.i.69 to %struct._object**, !dbg !716
  store %struct._object* @_Py_NoneStruct, %struct._object** %15, align 8, !dbg !716, !tbaa !543
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !717, !tbaa !524
  %inc.i.70 = add i64 %16, 1, !dbg !717
  store i64 %inc.i.70, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !717, !tbaa !524
  br label %sets.exit72, !dbg !704

sets.exit72:                                      ; preds = %if.then.i.67, %if.else.i.71
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !388, metadata !510), !dbg !664
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 5, !dbg !718
  %17 = load i8*, i8** %pw_dir, align 8, !dbg !718, !tbaa !719
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !510) #1, !dbg !720
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !402, metadata !510) #1, !dbg !722
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !403, metadata !510) #1, !dbg !723
  %tobool.i.73 = icmp eq i8* %17, null, !dbg !724
  %18 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  br i1 %tobool.i.73, label %if.else.i.81, label %if.then.i.77, !dbg !725

if.then.i.77:                                     ; preds = %sets.exit72
  %call.i.74 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %17) #1, !dbg !726
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.74, i64 0, metadata !404, metadata !510) #1, !dbg !727
  %arrayidx.i.76 = getelementptr %struct._typeobject*, %struct._typeobject** %18, i64 5, !dbg !728
  %19 = bitcast %struct._typeobject** %arrayidx.i.76 to %struct._object**, !dbg !728
  store %struct._object* %call.i.74, %struct._object** %19, align 8, !dbg !728, !tbaa !543
  br label %sets.exit82, !dbg !729

if.else.i.81:                                     ; preds = %sets.exit72
  %arrayidx3.i.79 = getelementptr %struct._typeobject*, %struct._typeobject** %18, i64 5, !dbg !730
  %20 = bitcast %struct._typeobject** %arrayidx3.i.79 to %struct._object**, !dbg !730
  store %struct._object* @_Py_NoneStruct, %struct._object** %20, align 8, !dbg !730, !tbaa !543
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !731, !tbaa !524
  %inc.i.80 = add i64 %21, 1, !dbg !731
  store i64 %inc.i.80, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !731, !tbaa !524
  br label %sets.exit82, !dbg !718

sets.exit82:                                      ; preds = %if.then.i.77, %if.else.i.81
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %p, i64 0, i32 6, !dbg !732
  %22 = load i8*, i8** %pw_shell, align 8, !dbg !732, !tbaa !733
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !401, metadata !510) #1, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !402, metadata !510) #1, !dbg !736
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !403, metadata !510) #1, !dbg !737
  %tobool.i.83 = icmp eq i8* %22, null, !dbg !738
  %23 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !696
  br i1 %tobool.i.83, label %if.else.i.91, label %if.then.i.87, !dbg !739

if.then.i.87:                                     ; preds = %sets.exit82
  %call.i.84 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %22) #1, !dbg !740
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.84, i64 0, metadata !404, metadata !510) #1, !dbg !741
  %arrayidx.i.86 = getelementptr %struct._typeobject*, %struct._typeobject** %23, i64 6, !dbg !742
  %24 = bitcast %struct._typeobject** %arrayidx.i.86 to %struct._object**, !dbg !742
  store %struct._object* %call.i.84, %struct._object** %24, align 8, !dbg !742, !tbaa !543
  br label %sets.exit92, !dbg !743

if.else.i.91:                                     ; preds = %sets.exit82
  %arrayidx3.i.89 = getelementptr %struct._typeobject*, %struct._typeobject** %23, i64 6, !dbg !744
  %25 = bitcast %struct._typeobject** %arrayidx3.i.89 to %struct._object**, !dbg !744
  store %struct._object* @_Py_NoneStruct, %struct._object** %25, align 8, !dbg !744, !tbaa !543
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !745, !tbaa !524
  %inc.i.90 = add i64 %26, 1, !dbg !745
  store i64 %inc.i.90, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !745, !tbaa !524
  br label %sets.exit92, !dbg !732

sets.exit92:                                      ; preds = %if.then.i.87, %if.else.i.91
  %call12 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !746
  %tobool = icmp eq %struct._object* %call12, null, !dbg !746
  br i1 %tobool, label %cleanup, label %do.body.16, !dbg !747

do.body.16:                                       ; preds = %sets.exit92
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !390, metadata !510), !dbg !748
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !394, metadata !510), !dbg !750
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !752
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !752, !tbaa !524
  %dec = add i64 %27, -1, !dbg !752
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !752, !tbaa !524
  %cmp17 = icmp eq i64 %dec, 0, !dbg !752
  br i1 %cmp17, label %if.else, label %cleanup, !dbg !754

if.else:                                          ; preds = %do.body.16
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !755
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !755, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !755
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !755, !tbaa !571
  tail call void %29(%struct._object* %call) #1, !dbg !755
  br label %cleanup

cleanup:                                          ; preds = %sets.exit92, %do.body.16, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.16 ], [ %call, %sets.exit92 ]
  ret %struct._object* %retval.0, !dbg !757
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #2

declare %struct._object* @_PyLong_FromGid(i32) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #2

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #2

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #2

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) #3

declare %struct._object* @PyList_New(i64) #2

declare void @setpwent() #2

declare %struct.passwd* @getpwent() #2

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

declare void @endpwent() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!506, !507}
!llvm.ident = !{!508}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !351, globals: !436)
!1 = !DIFile(filename: "./Modules/pwdmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!345 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 25, size: 256, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 26, baseType: !23, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !346, file: !345, line: 27, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!351 = !{!352, !357, !383, !397, !407, !418}
!352 = !DISubprogram(name: "PyInit_pwd", scope: !1, file: !1, line: 203, type: !353, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_pwd, variables: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{!5}
!355 = !{!356}
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !352, file: !1, line: 205, type: !5)
!357 = !DISubprogram(name: "pwd_getpwuid", scope: !1, file: !1, line: 97, type: !126, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwuid, variables: !358)
!358 = !{!359, !360, !361, !365, !378, !381}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !357, file: !1, line: 97, type: !5)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !357, file: !1, line: 97, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uid", scope: !357, file: !1, line: 99, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !363, line: 80, baseType: !364)
!363 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 134, baseType: !341)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !357, file: !1, line: 100, type: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !368, line: 50, size: 384, align: 64, elements: !369)
!368 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!369 = !{!370, !371, !372, !373, !375, !376, !377}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !367, file: !368, line: 52, baseType: !52, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !367, file: !368, line: 53, baseType: !52, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !367, file: !368, line: 54, baseType: !364, size: 32, align: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !367, file: !368, line: 55, baseType: !374, size: 32, align: 32, offset: 160)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 135, baseType: !341)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !367, file: !368, line: 56, baseType: !52, size: 64, align: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !367, file: !368, line: 57, baseType: !52, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !367, file: !368, line: 58, baseType: !52, size: 64, align: 64, offset: 320)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uid_obj", scope: !379, file: !1, line: 108, type: !5)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 107, column: 38)
!380 = distinct !DILexicalBlock(scope: !357, file: !1, line: 107, column: 9)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !382, file: !1, line: 113, type: !5)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 113, column: 9)
!383 = !DISubprogram(name: "mkpwent", scope: !1, file: !1, line: 61, type: !384, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.passwd*)* @mkpwent, variables: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!5, !366}
!386 = !{!387, !388, !389, !390, !394}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !383, file: !1, line: 61, type: !366)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setIndex", scope: !383, file: !1, line: 63, type: !44)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !383, file: !1, line: 64, type: !5)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !391, file: !1, line: 83, type: !5)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 83, column: 9)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 82, column: 27)
!393 = distinct !DILexicalBlock(scope: !383, file: !1, line: 82, column: 9)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !395, file: !1, line: 83, type: !5)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 83, column: 9)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 83, column: 9)
!397 = !DISubprogram(name: "sets", scope: !1, file: !1, line: 48, type: !398, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !5, !44, !29}
!400 = !{!401, !402, !403, !404}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !397, file: !1, line: 48, type: !5)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !397, file: !1, line: 48, type: !44)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 3, scope: !397, file: !1, line: 48, type: !29)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !405, file: !1, line: 51, type: !5)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 50, column: 12)
!406 = distinct !DILexicalBlock(scope: !397, file: !1, line: 50, column: 7)
!407 = !DISubprogram(name: "pwd_getpwnam", scope: !1, file: !1, line: 126, type: !126, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @pwd_getpwnam, variables: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !407, file: !1, line: 126, type: !5)
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !407, file: !1, line: 126, type: !5)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !407, file: !1, line: 128, type: !52)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !407, file: !1, line: 129, type: !366)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !407, file: !1, line: 130, type: !5)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !407, file: !1, line: 130, type: !5)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !407, file: !1, line: 130, type: !5)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !417, file: !1, line: 145, type: !5)
!417 = distinct !DILexicalBlock(scope: !407, file: !1, line: 145, column: 5)
!418 = !DISubprogram(name: "pwd_getpwall", scope: !1, file: !1, line: 157, type: !116, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @pwd_getpwall, variables: !419)
!419 = !{!420, !421, !422, !423, !425, !429, !432, !434}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !418, file: !1, line: 157, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !418, file: !1, line: 159, type: !5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !418, file: !1, line: 160, type: !366)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !424, file: !1, line: 165, type: !5)
!424 = distinct !DILexicalBlock(scope: !418, file: !1, line: 164, column: 38)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !426, file: !1, line: 167, type: !5)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 167, column: 13)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 166, column: 52)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 166, column: 13)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !430, file: !1, line: 167, type: !5)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 167, column: 13)
!431 = distinct !DILexicalBlock(scope: !426, file: !1, line: 167, column: 13)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !1, line: 168, type: !5)
!433 = distinct !DILexicalBlock(scope: !427, file: !1, line: 168, column: 13)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !1, line: 172, type: !5)
!435 = distinct !DILexicalBlock(scope: !424, file: !1, line: 172, column: 9)
!436 = !{!437, !438, !440, !463, !467, !471, !475, !479, !483, !497, !501}
!437 = !DIGlobalVariable(name: "initialized", scope: !0, file: !1, line: 44, type: !44, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariable(name: "StructPwdType", scope: !0, file: !1, line: 45, type: !439, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StructPwdType)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!440 = !DIGlobalVariable(name: "pwdmodule", scope: !0, file: !1, line: 189, type: !441, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @pwdmodule)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !442, line: 47, size: 832, align: 64, elements: !443)
!442 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!443 = !{!444, !453, !454, !455, !456, !459, !460, !461, !462}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !441, file: !442, line: 48, baseType: !445, size: 320, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !442, line: 38, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !442, line: 33, size: 320, align: 64, elements: !447)
!447 = !{!448, !449, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !446, file: !442, line: 34, baseType: !6, size: 128, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !446, file: !442, line: 35, baseType: !450, size: 64, align: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !446, file: !442, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !446, file: !442, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !441, file: !442, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !441, file: !442, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !441, file: !442, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !441, file: !442, line: 52, baseType: !457, size: 64, align: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !441, file: !442, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !441, file: !442, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !441, file: !442, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !441, file: !442, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!463 = !DIGlobalVariable(name: "pwd__doc__", scope: !0, file: !1, line: 33, type: !464, isLocal: true, isDefinition: true, variable: [421 x i8]* @pwd__doc__)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3368, align: 8, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 421)
!467 = !DIGlobalVariable(name: "pwd_methods", scope: !0, file: !1, line: 179, type: !468, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @pwd_methods)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1024, align: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 4)
!471 = !DIGlobalVariable(name: "pwd_getpwuid__doc__", scope: !0, file: !1, line: 90, type: !472, isLocal: true, isDefinition: true, variable: [214 x i8]* @pwd_getpwuid__doc__)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1712, align: 8, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 214)
!475 = !DIGlobalVariable(name: "pwd_getpwnam__doc__", scope: !0, file: !1, line: 119, type: !476, isLocal: true, isDefinition: true, variable: [211 x i8]* @pwd_getpwnam__doc__)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1688, align: 8, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 211)
!479 = !DIGlobalVariable(name: "pwd_getpwall__doc__", scope: !0, file: !1, line: 150, type: !480, isLocal: true, isDefinition: true, variable: [161 x i8]* @pwd_getpwall__doc__)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1288, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 161)
!483 = !DIGlobalVariable(name: "struct_pwd_type_desc", scope: !0, file: !1, line: 26, type: !484, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_pwd_type_desc)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !485, line: 20, baseType: !486)
!485 = !DIFile(filename: "Include/structseq.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !485, line: 15, size: 256, align: 64, elements: !487)
!487 = !{!488, !489, !490, !496}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !485, line: 16, baseType: !52, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !486, file: !485, line: 17, baseType: !52, size: 64, align: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !486, file: !485, line: 18, baseType: !491, size: 64, align: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !485, line: 10, size: 128, align: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !485, line: 11, baseType: !52, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !492, file: !485, line: 12, baseType: !52, size: 64, align: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !486, file: !485, line: 19, baseType: !44, size: 32, align: 32, offset: 192)
!497 = !DIGlobalVariable(name: "struct_passwd__doc__", scope: !0, file: !1, line: 20, type: !498, isLocal: true, isDefinition: true, variable: [220 x i8]* @struct_passwd__doc__)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1760, align: 8, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 220)
!501 = !DIGlobalVariable(name: "struct_pwd_type_fields", scope: !0, file: !1, line: 9, type: !502, isLocal: true, isDefinition: true, variable: [8 x %struct.PyStructSequence_Field]* @struct_pwd_type_fields)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 1024, align: 64, elements: !504)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !485, line: 13, baseType: !492)
!504 = !{!505}
!505 = !DISubrange(count: 8)
!506 = !{i32 2, !"Dwarf Version", i32 4}
!507 = !{i32 2, !"Debug Info Version", i32 3}
!508 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!509 = !DILocation(line: 206, column: 9, scope: !352)
!510 = !DIExpression()
!511 = !DILocation(line: 205, column: 15, scope: !352)
!512 = !DILocation(line: 207, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !352, file: !1, line: 207, column: 9)
!514 = !DILocation(line: 207, column: 9, scope: !352)
!515 = !DILocation(line: 210, column: 9, scope: !352)
!516 = !DILocation(line: 211, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 211, column: 13)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 210, column: 23)
!519 = distinct !DILexicalBlock(scope: !352, file: !1, line: 210, column: 9)
!520 = !DILocation(line: 212, column: 63, scope: !517)
!521 = !DILocation(line: 211, column: 13, scope: !518)
!522 = !DILocation(line: 215, column: 5, scope: !518)
!523 = !DILocation(line: 216, column: 5, scope: !352)
!524 = !{!525, !526, i64 0}
!525 = !{!"_object", !526, i64 0, !529, i64 8}
!526 = !{!"long", !527, i64 0}
!527 = !{!"omnipotent char", !528, i64 0}
!528 = !{!"Simple C/C++ TBAA"}
!529 = !{!"any pointer", !527, i64 0}
!530 = !DILocation(line: 217, column: 5, scope: !352)
!531 = !DILocation(line: 218, column: 5, scope: !352)
!532 = !DILocation(line: 219, column: 1, scope: !352)
!533 = !DILocation(line: 97, column: 24, scope: !357)
!534 = !DILocation(line: 97, column: 40, scope: !357)
!535 = !DILocation(line: 99, column: 5, scope: !357)
!536 = !DILocation(line: 99, column: 11, scope: !357)
!537 = !DILocation(line: 101, column: 10, scope: !538)
!538 = distinct !DILexicalBlock(scope: !357, file: !1, line: 101, column: 9)
!539 = !DILocation(line: 101, column: 9, scope: !357)
!540 = !DILocation(line: 102, column: 36, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 102, column: 13)
!542 = distinct !DILexicalBlock(scope: !538, file: !1, line: 101, column: 74)
!543 = !{!529, !529, i64 0}
!544 = !DILocation(line: 102, column: 13, scope: !541)
!545 = !DILocation(line: 102, column: 13, scope: !542)
!546 = !DILocation(line: 103, column: 26, scope: !541)
!547 = !DILocation(line: 103, column: 13, scope: !541)
!548 = !DILocation(line: 107, column: 23, scope: !380)
!549 = !{!550, !550, i64 0}
!550 = !{!"int", !527, i64 0}
!551 = !DILocation(line: 107, column: 14, scope: !380)
!552 = !DILocation(line: 100, column: 20, scope: !357)
!553 = !DILocation(line: 107, column: 29, scope: !380)
!554 = !DILocation(line: 107, column: 9, scope: !357)
!555 = !DILocation(line: 108, column: 45, scope: !379)
!556 = !DILocation(line: 108, column: 29, scope: !379)
!557 = !DILocation(line: 108, column: 19, scope: !379)
!558 = !DILocation(line: 109, column: 21, scope: !559)
!559 = distinct !DILexicalBlock(scope: !379, file: !1, line: 109, column: 13)
!560 = !DILocation(line: 109, column: 13, scope: !379)
!561 = !DILocation(line: 111, column: 22, scope: !379)
!562 = !DILocation(line: 111, column: 9, scope: !379)
!563 = !DILocation(line: 113, column: 9, scope: !564)
!564 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 1)
!565 = !DILocation(line: 113, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !382, file: !1, line: 113, column: 9)
!567 = !DILocation(line: 113, column: 9, scope: !382)
!568 = !DILocation(line: 113, column: 9, scope: !569)
!569 = !DILexicalBlockFile(scope: !566, file: !1, discriminator: 3)
!570 = !{!525, !529, i64 8}
!571 = !{!572, !529, i64 48}
!572 = !{!"_typeobject", !573, i64 0, !529, i64 24, !526, i64 32, !526, i64 40, !529, i64 48, !529, i64 56, !529, i64 64, !529, i64 72, !529, i64 80, !529, i64 88, !529, i64 96, !529, i64 104, !529, i64 112, !529, i64 120, !529, i64 128, !529, i64 136, !529, i64 144, !529, i64 152, !529, i64 160, !526, i64 168, !529, i64 176, !529, i64 184, !529, i64 192, !529, i64 200, !526, i64 208, !529, i64 216, !529, i64 224, !529, i64 232, !529, i64 240, !529, i64 248, !529, i64 256, !529, i64 264, !529, i64 272, !529, i64 280, !526, i64 288, !529, i64 296, !529, i64 304, !529, i64 312, !529, i64 320, !529, i64 328, !529, i64 336, !529, i64 344, !529, i64 352, !529, i64 360, !529, i64 368, !529, i64 376, !550, i64 384, !529, i64 392}
!573 = !{!"", !525, i64 0, !526, i64 16}
!574 = !DILocation(line: 116, column: 12, scope: !357)
!575 = !DILocation(line: 116, column: 5, scope: !357)
!576 = !DILocation(line: 117, column: 1, scope: !357)
!577 = !DILocation(line: 126, column: 24, scope: !407)
!578 = !DILocation(line: 126, column: 40, scope: !407)
!579 = !DILocation(line: 128, column: 5, scope: !407)
!580 = !DILocation(line: 130, column: 5, scope: !407)
!581 = !DILocation(line: 130, column: 29, scope: !407)
!582 = !DILocation(line: 130, column: 15, scope: !407)
!583 = !DILocation(line: 132, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !407, file: !1, line: 132, column: 9)
!585 = !DILocation(line: 132, column: 9, scope: !407)
!586 = !DILocation(line: 134, column: 44, scope: !587)
!587 = distinct !DILexicalBlock(scope: !407, file: !1, line: 134, column: 9)
!588 = !DILocation(line: 134, column: 18, scope: !587)
!589 = !DILocation(line: 130, column: 21, scope: !407)
!590 = !DILocation(line: 134, column: 50, scope: !587)
!591 = !DILocation(line: 134, column: 9, scope: !407)
!592 = !DILocation(line: 128, column: 11, scope: !407)
!593 = !DILocation(line: 136, column: 9, scope: !594)
!594 = distinct !DILexicalBlock(scope: !407, file: !1, line: 136, column: 9)
!595 = !DILocation(line: 136, column: 53, scope: !594)
!596 = !DILocation(line: 136, column: 9, scope: !407)
!597 = !DILocation(line: 138, column: 23, scope: !598)
!598 = distinct !DILexicalBlock(scope: !407, file: !1, line: 138, column: 9)
!599 = !DILocation(line: 138, column: 14, scope: !598)
!600 = !DILocation(line: 129, column: 20, scope: !407)
!601 = !DILocation(line: 138, column: 30, scope: !598)
!602 = !DILocation(line: 138, column: 9, scope: !407)
!603 = !DILocation(line: 139, column: 22, scope: !604)
!604 = distinct !DILexicalBlock(scope: !598, file: !1, line: 138, column: 39)
!605 = !DILocation(line: 140, column: 56, scope: !604)
!606 = !DILocation(line: 139, column: 9, scope: !604)
!607 = !DILocation(line: 141, column: 9, scope: !604)
!608 = !DILocation(line: 143, column: 14, scope: !407)
!609 = !DILocation(line: 143, column: 5, scope: !407)
!610 = !DILocation(line: 145, column: 5, scope: !611)
!611 = !DILexicalBlockFile(scope: !417, file: !1, discriminator: 1)
!612 = !DILocation(line: 145, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !417, file: !1, line: 145, column: 5)
!614 = !DILocation(line: 145, column: 5, scope: !417)
!615 = !DILocation(line: 145, column: 5, scope: !616)
!616 = !DILexicalBlockFile(scope: !613, file: !1, discriminator: 3)
!617 = !DILocation(line: 147, column: 1, scope: !407)
!618 = !DILocation(line: 157, column: 24, scope: !418)
!619 = !DILocation(line: 161, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !418, file: !1, line: 161, column: 9)
!621 = !DILocation(line: 159, column: 15, scope: !418)
!622 = !DILocation(line: 161, column: 29, scope: !620)
!623 = !DILocation(line: 161, column: 9, scope: !418)
!624 = !DILocation(line: 163, column: 5, scope: !418)
!625 = !DILocation(line: 164, column: 17, scope: !626)
!626 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 2)
!627 = !DILexicalBlockFile(scope: !418, file: !1, discriminator: 1)
!628 = !DILocation(line: 160, column: 20, scope: !418)
!629 = !DILocation(line: 164, column: 29, scope: !418)
!630 = !DILocation(line: 164, column: 5, scope: !418)
!631 = !DILocation(line: 165, column: 23, scope: !424)
!632 = !DILocation(line: 165, column: 19, scope: !424)
!633 = !DILocation(line: 166, column: 23, scope: !428)
!634 = !DILocation(line: 166, column: 26, scope: !428)
!635 = !DILocation(line: 166, column: 46, scope: !428)
!636 = !DILocation(line: 172, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !435, file: !1, line: 172, column: 9)
!638 = !DILocation(line: 166, column: 13, scope: !424)
!639 = !DILocation(line: 167, column: 13, scope: !640)
!640 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 1)
!641 = !DILocation(line: 167, column: 13, scope: !642)
!642 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 4)
!643 = !DILocation(line: 167, column: 13, scope: !430)
!644 = !DILocation(line: 167, column: 13, scope: !645)
!645 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 6)
!646 = distinct !DILexicalBlock(scope: !430, file: !1, line: 167, column: 13)
!647 = !DILocation(line: 168, column: 13, scope: !648)
!648 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!649 = !DILocation(line: 168, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !433, file: !1, line: 168, column: 13)
!651 = !DILocation(line: 168, column: 13, scope: !433)
!652 = !DILocation(line: 168, column: 13, scope: !653)
!653 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 3)
!654 = !DILocation(line: 169, column: 13, scope: !427)
!655 = !DILocation(line: 172, column: 9, scope: !656)
!656 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 1)
!657 = !DILocation(line: 172, column: 9, scope: !435)
!658 = !DILocation(line: 172, column: 9, scope: !659)
!659 = !DILexicalBlockFile(scope: !637, file: !1, discriminator: 3)
!660 = !DILocation(line: 174, column: 5, scope: !418)
!661 = !DILocation(line: 175, column: 5, scope: !418)
!662 = !DILocation(line: 176, column: 1, scope: !418)
!663 = !DILocation(line: 61, column: 24, scope: !383)
!664 = !DILocation(line: 63, column: 9, scope: !383)
!665 = !DILocation(line: 64, column: 19, scope: !383)
!666 = !DILocation(line: 64, column: 15, scope: !383)
!667 = !DILocation(line: 65, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !383, file: !1, line: 65, column: 9)
!669 = !DILocation(line: 65, column: 9, scope: !383)
!670 = !DILocation(line: 71, column: 5, scope: !383)
!671 = !{!672, !529, i64 0}
!672 = !{!"passwd", !529, i64 0, !529, i64 8, !550, i64 16, !550, i64 20, !529, i64 24, !529, i64 32, !529, i64 40}
!673 = !DILocation(line: 48, column: 16, scope: !397, inlinedAt: !674)
!674 = distinct !DILocation(line: 71, column: 5, scope: !383)
!675 = !DILocation(line: 48, column: 23, scope: !397, inlinedAt: !674)
!676 = !DILocation(line: 48, column: 38, scope: !397, inlinedAt: !674)
!677 = !DILocation(line: 50, column: 7, scope: !406, inlinedAt: !674)
!678 = !DILocation(line: 50, column: 7, scope: !397, inlinedAt: !674)
!679 = !DILocation(line: 51, column: 21, scope: !405, inlinedAt: !674)
!680 = !DILocation(line: 51, column: 17, scope: !405, inlinedAt: !674)
!681 = !DILocation(line: 52, column: 7, scope: !405, inlinedAt: !674)
!682 = !DILocation(line: 53, column: 3, scope: !405, inlinedAt: !674)
!683 = !DILocation(line: 55, column: 7, scope: !684, inlinedAt: !674)
!684 = distinct !DILexicalBlock(scope: !406, file: !1, line: 54, column: 8)
!685 = !DILocation(line: 56, column: 7, scope: !684, inlinedAt: !674)
!686 = !DILocation(line: 72, column: 5, scope: !383)
!687 = !{!672, !529, i64 8}
!688 = !DILocation(line: 48, column: 16, scope: !397, inlinedAt: !689)
!689 = distinct !DILocation(line: 72, column: 5, scope: !383)
!690 = !DILocation(line: 48, column: 23, scope: !397, inlinedAt: !689)
!691 = !DILocation(line: 48, column: 38, scope: !397, inlinedAt: !689)
!692 = !DILocation(line: 50, column: 7, scope: !406, inlinedAt: !689)
!693 = !DILocation(line: 50, column: 7, scope: !397, inlinedAt: !689)
!694 = !DILocation(line: 51, column: 21, scope: !405, inlinedAt: !689)
!695 = !DILocation(line: 51, column: 17, scope: !405, inlinedAt: !689)
!696 = !DILocation(line: 52, column: 7, scope: !405, inlinedAt: !689)
!697 = !DILocation(line: 53, column: 3, scope: !405, inlinedAt: !689)
!698 = !DILocation(line: 55, column: 7, scope: !684, inlinedAt: !689)
!699 = !DILocation(line: 56, column: 7, scope: !684, inlinedAt: !689)
!700 = !DILocation(line: 73, column: 5, scope: !383)
!701 = !{!672, !550, i64 16}
!702 = !DILocation(line: 74, column: 5, scope: !383)
!703 = !{!672, !550, i64 20}
!704 = !DILocation(line: 75, column: 5, scope: !383)
!705 = !{!672, !529, i64 24}
!706 = !DILocation(line: 48, column: 16, scope: !397, inlinedAt: !707)
!707 = distinct !DILocation(line: 75, column: 5, scope: !383)
!708 = !DILocation(line: 48, column: 23, scope: !397, inlinedAt: !707)
!709 = !DILocation(line: 48, column: 38, scope: !397, inlinedAt: !707)
!710 = !DILocation(line: 50, column: 7, scope: !406, inlinedAt: !707)
!711 = !DILocation(line: 50, column: 7, scope: !397, inlinedAt: !707)
!712 = !DILocation(line: 51, column: 21, scope: !405, inlinedAt: !707)
!713 = !DILocation(line: 51, column: 17, scope: !405, inlinedAt: !707)
!714 = !DILocation(line: 52, column: 7, scope: !405, inlinedAt: !707)
!715 = !DILocation(line: 53, column: 3, scope: !405, inlinedAt: !707)
!716 = !DILocation(line: 55, column: 7, scope: !684, inlinedAt: !707)
!717 = !DILocation(line: 56, column: 7, scope: !684, inlinedAt: !707)
!718 = !DILocation(line: 76, column: 5, scope: !383)
!719 = !{!672, !529, i64 32}
!720 = !DILocation(line: 48, column: 16, scope: !397, inlinedAt: !721)
!721 = distinct !DILocation(line: 76, column: 5, scope: !383)
!722 = !DILocation(line: 48, column: 23, scope: !397, inlinedAt: !721)
!723 = !DILocation(line: 48, column: 38, scope: !397, inlinedAt: !721)
!724 = !DILocation(line: 50, column: 7, scope: !406, inlinedAt: !721)
!725 = !DILocation(line: 50, column: 7, scope: !397, inlinedAt: !721)
!726 = !DILocation(line: 51, column: 21, scope: !405, inlinedAt: !721)
!727 = !DILocation(line: 51, column: 17, scope: !405, inlinedAt: !721)
!728 = !DILocation(line: 52, column: 7, scope: !405, inlinedAt: !721)
!729 = !DILocation(line: 53, column: 3, scope: !405, inlinedAt: !721)
!730 = !DILocation(line: 55, column: 7, scope: !684, inlinedAt: !721)
!731 = !DILocation(line: 56, column: 7, scope: !684, inlinedAt: !721)
!732 = !DILocation(line: 77, column: 5, scope: !383)
!733 = !{!672, !529, i64 40}
!734 = !DILocation(line: 48, column: 16, scope: !397, inlinedAt: !735)
!735 = distinct !DILocation(line: 77, column: 5, scope: !383)
!736 = !DILocation(line: 48, column: 23, scope: !397, inlinedAt: !735)
!737 = !DILocation(line: 48, column: 38, scope: !397, inlinedAt: !735)
!738 = !DILocation(line: 50, column: 7, scope: !406, inlinedAt: !735)
!739 = !DILocation(line: 50, column: 7, scope: !397, inlinedAt: !735)
!740 = !DILocation(line: 51, column: 21, scope: !405, inlinedAt: !735)
!741 = !DILocation(line: 51, column: 17, scope: !405, inlinedAt: !735)
!742 = !DILocation(line: 52, column: 7, scope: !405, inlinedAt: !735)
!743 = !DILocation(line: 53, column: 3, scope: !405, inlinedAt: !735)
!744 = !DILocation(line: 55, column: 7, scope: !684, inlinedAt: !735)
!745 = !DILocation(line: 56, column: 7, scope: !684, inlinedAt: !735)
!746 = !DILocation(line: 82, column: 9, scope: !393)
!747 = !DILocation(line: 82, column: 9, scope: !383)
!748 = !DILocation(line: 83, column: 9, scope: !749)
!749 = !DILexicalBlockFile(scope: !391, file: !1, discriminator: 1)
!750 = !DILocation(line: 83, column: 9, scope: !751)
!751 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 4)
!752 = !DILocation(line: 83, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !395, file: !1, line: 83, column: 9)
!754 = !DILocation(line: 83, column: 9, scope: !395)
!755 = !DILocation(line: 83, column: 9, scope: !756)
!756 = !DILexicalBlockFile(scope: !753, file: !1, discriminator: 6)
!757 = !DILocation(line: 88, column: 1, scope: !383)
