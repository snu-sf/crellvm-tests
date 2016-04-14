; ModuleID = 'programs_new/Python-new/spwdmodule.bc.ll'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !492
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !492
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !357, metadata !493), !dbg !494
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @spwdmodule, i32 1013), !dbg !495
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !496, !tbaa !497
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !501, !tbaa !497
  %cmp = icmp eq %struct._object* %1, null, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !505
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !505

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @initialized, align 4, !dbg !506, !tbaa !508
  %tobool = icmp ne i32 %2, 0, !dbg !506
  br i1 %tobool, label %if.end.6, label %if.then.1, !dbg !510

if.then.1:                                        ; preds = %if.end
  %call2 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @StructSpwdType, %struct.PyStructSequence_Desc* @struct_spwd_type_desc), !dbg !511
  %cmp3 = icmp slt i32 %call2, 0, !dbg !514
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !515

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval, !dbg !516
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !516

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6, !dbg !517

if.end.6:                                         ; preds = %if.end.5, %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !518, !tbaa !519
  %inc = add i64 %3, 1, !dbg !518
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !518, !tbaa !519
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !522, !tbaa !497
  %call7 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @StructSpwdType, i32 0, i32 0, i32 0)), !dbg !523
  store i32 1, i32* @initialized, align 4, !dbg !524, !tbaa !508
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !525, !tbaa !497
  store %struct._object* %5, %struct._object** %retval, !dbg !526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !526

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then
  %6 = bitcast %struct._object** %m to i8*, !dbg !527
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !527
  %7 = load %struct._object*, %struct._object** %retval, !dbg !527
  ret %struct._object* %7, !dbg !527
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !360, metadata !493), !dbg !528
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !361, metadata !493), !dbg !529
  %0 = bitcast i8** %name to i8*, !dbg !530
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !530
  call void @llvm.dbg.declare(metadata i8** %name, metadata !362, metadata !493), !dbg !531
  %1 = bitcast %struct.spwd** %p to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !532
  call void @llvm.dbg.declare(metadata %struct.spwd** %p, metadata !363, metadata !493), !dbg !533
  %2 = bitcast %struct._object** %arg to i8*, !dbg !534
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !534
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !377, metadata !493), !dbg !535
  %3 = bitcast %struct._object** %bytes to i8*, !dbg !534
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !534
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !378, metadata !493), !dbg !536
  %4 = bitcast %struct._object** %retval1 to i8*, !dbg !534
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !534
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !379, metadata !493), !dbg !537
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !537, !tbaa !497
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !538, !tbaa !497
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object** %arg), !dbg !540
  %tobool = icmp ne i32 %call, 0, !dbg !540
  br i1 %tobool, label %if.end, label %if.then, !dbg !541

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !542
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !542

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !543, !tbaa !497
  %call2 = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %6), !dbg !545
  store %struct._object* %call2, %struct._object** %bytes, align 8, !dbg !546, !tbaa !497
  %cmp = icmp eq %struct._object* %call2, null, !dbg !547
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !548

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !549
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !549

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !550, !tbaa !497
  %call5 = call i32 @PyBytes_AsStringAndSize(%struct._object* %7, i8** %name, i64* null), !dbg !552
  %cmp6 = icmp eq i32 %call5, -1, !dbg !553
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !554

if.then.7:                                        ; preds = %if.end.4
  br label %out, !dbg !555

if.end.8:                                         ; preds = %if.end.4
  %8 = load i8*, i8** %name, align 8, !dbg !556, !tbaa !497
  %call9 = call %struct.spwd* @getspnam(i8* %8), !dbg !558
  store %struct.spwd* %call9, %struct.spwd** %p, align 8, !dbg !559, !tbaa !497
  %cmp10 = icmp eq %struct.spwd* %call9, null, !dbg !560
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !561

if.then.11:                                       ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !562, !tbaa !497
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)), !dbg !564
  br label %out, !dbg !565

if.end.12:                                        ; preds = %if.end.8
  %10 = load %struct.spwd*, %struct.spwd** %p, align 8, !dbg !566, !tbaa !497
  %call13 = call %struct._object* @mkspent(%struct.spwd* %10), !dbg !567
  store %struct._object* %call13, %struct._object** %retval1, align 8, !dbg !568, !tbaa !497
  br label %out, !dbg !569

out:                                              ; preds = %if.end.12, %if.then.11, %if.then.7
  br label %do.body, !dbg !570

do.body:                                          ; preds = %out
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !571
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !571
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !380, metadata !493), !dbg !573
  %12 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !574, !tbaa !497
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !573, !tbaa !497
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !575, !tbaa !497
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !577
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !578, !tbaa !519
  %dec = add i64 %14, -1, !dbg !578
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !578, !tbaa !519
  %cmp14 = icmp ne i64 %dec, 0, !dbg !579
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !580

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !581

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !583, !tbaa !497
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !585
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !585, !tbaa !586
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !587
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !587, !tbaa !588
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !591, !tbaa !497
  call void %17(%struct._object* %18), !dbg !592
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !593
  br label %do.cond, !dbg !595

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !596

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !598, !tbaa !497
  store %struct._object* %20, %struct._object** %retval, !dbg !599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !599

cleanup:                                          ; preds = %do.end, %if.then.3, %if.then
  %21 = bitcast %struct._object** %retval1 to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !600
  %22 = bitcast %struct._object** %bytes to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !600
  %23 = bitcast %struct._object** %arg to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !600
  %24 = bitcast %struct.spwd** %p to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !600
  %25 = bitcast i8** %name to i8*, !dbg !600
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !600
  %26 = load %struct._object*, %struct._object** %retval, !dbg !600
  ret %struct._object* %26, !dbg !600
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @spwd_getspall(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %p = alloca %struct.spwd*, align 8
  %cleanup.dest.slot = alloca i32
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !405, metadata !493), !dbg !601
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !406, metadata !493), !dbg !602
  %0 = bitcast %struct._object** %d to i8*, !dbg !603
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !603
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !407, metadata !493), !dbg !604
  %1 = bitcast %struct.spwd** %p to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !605
  call void @llvm.dbg.declare(metadata %struct.spwd** %p, metadata !408, metadata !493), !dbg !606
  %call = call %struct._object* @PyList_New(i64 0), !dbg !607
  store %struct._object* %call, %struct._object** %d, align 8, !dbg !609, !tbaa !497
  %cmp = icmp eq %struct._object* %call, null, !dbg !610
  br i1 %cmp, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !612
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !612

if.end:                                           ; preds = %entry
  call void @setspent(), !dbg !613
  br label %while.cond, !dbg !614

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %call1 = call %struct.spwd* @getspent(), !dbg !615
  store %struct.spwd* %call1, %struct.spwd** %p, align 8, !dbg !618, !tbaa !497
  %cmp2 = icmp ne %struct.spwd* %call1, null, !dbg !619
  br i1 %cmp2, label %while.body, label %while.end, !dbg !614

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct._object** %v to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !620
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !409, metadata !493), !dbg !621
  %3 = load %struct.spwd*, %struct.spwd** %p, align 8, !dbg !622, !tbaa !497
  %call3 = call %struct._object* @mkspent(%struct.spwd* %3), !dbg !623
  store %struct._object* %call3, %struct._object** %v, align 8, !dbg !621, !tbaa !497
  %4 = load %struct._object*, %struct._object** %v, align 8, !dbg !624, !tbaa !497
  %cmp4 = icmp eq %struct._object* %4, null, !dbg !625
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false, !dbg !626

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct._object*, %struct._object** %d, align 8, !dbg !627, !tbaa !497
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !629, !tbaa !497
  %call5 = call i32 @PyList_Append(%struct._object* %5, %struct._object* %6), !dbg !630
  %cmp6 = icmp ne i32 %call5, 0, !dbg !631
  br i1 %cmp6, label %if.then.7, label %if.end.29, !dbg !632

if.then.7:                                        ; preds = %lor.lhs.false, %while.body
  br label %do.body, !dbg !633

do.body:                                          ; preds = %if.then.7
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !634
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !634
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !411, metadata !493), !dbg !636
  %8 = load %struct._object*, %struct._object** %v, align 8, !dbg !637, !tbaa !497
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8, !dbg !636, !tbaa !497
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !638, !tbaa !497
  %cmp8 = icmp ne %struct._object* %9, null, !dbg !639
  br i1 %cmp8, label %if.then.9, label %if.end.14, !dbg !640

if.then.9:                                        ; preds = %do.body
  br label %do.body.10, !dbg !641

do.body.10:                                       ; preds = %if.then.9
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !643
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !415, metadata !493), !dbg !645
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !646, !tbaa !497
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !645, !tbaa !497
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !647, !tbaa !497
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !649
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !650, !tbaa !519
  %dec = add i64 %13, -1, !dbg !650
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !650, !tbaa !519
  %cmp11 = icmp ne i64 %dec, 0, !dbg !651
  br i1 %cmp11, label %if.then.12, label %if.else, !dbg !652

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13, !dbg !653

if.else:                                          ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !655, !tbaa !497
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !657
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !657, !tbaa !586
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !658
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !658, !tbaa !588
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !659, !tbaa !497
  call void %16(%struct._object* %17), !dbg !660
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !661
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !661
  br label %do.cond, !dbg !663

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !664

do.end:                                           ; preds = %do.cond
  br label %if.end.14, !dbg !666

if.end.14:                                        ; preds = %do.end, %do.body
  %19 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !668
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !668
  br label %do.cond.15, !dbg !671

do.cond.15:                                       ; preds = %if.end.14
  br label %do.end.16, !dbg !672

do.end.16:                                        ; preds = %do.cond.15
  br label %do.body.17, !dbg !674

do.body.17:                                       ; preds = %do.end.16
  %20 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !675
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !675
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp18, metadata !418, metadata !493), !dbg !677
  %21 = load %struct._object*, %struct._object** %d, align 8, !dbg !678, !tbaa !497
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8, !dbg !677, !tbaa !497
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !679, !tbaa !497
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !681
  %23 = load i64, i64* %ob_refcnt19, align 8, !dbg !682, !tbaa !519
  %dec20 = add i64 %23, -1, !dbg !682
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !682, !tbaa !519
  %cmp21 = icmp ne i64 %dec20, 0, !dbg !683
  br i1 %cmp21, label %if.then.22, label %if.else.23, !dbg !684

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26, !dbg !685

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !687, !tbaa !497
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !689
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !689, !tbaa !586
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !690
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !690, !tbaa !588
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8, !dbg !691, !tbaa !497
  call void %26(%struct._object* %27), !dbg !692
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  %28 = bitcast %struct._object** %_py_decref_tmp18 to i8*, !dbg !693
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !693
  br label %do.cond.27, !dbg !695

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !696

do.end.28:                                        ; preds = %do.cond.27
  call void @endspent(), !dbg !698
  store %struct._object* null, %struct._object** %retval, !dbg !699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !699

if.end.29:                                        ; preds = %lor.lhs.false
  br label %do.body.30, !dbg !700

do.body.30:                                       ; preds = %if.end.29
  %29 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !701
  call void @llvm.lifetime.start(i64 8, i8* %29) #1, !dbg !701
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !420, metadata !493), !dbg !703
  %30 = load %struct._object*, %struct._object** %v, align 8, !dbg !704, !tbaa !497
  store %struct._object* %30, %struct._object** %_py_decref_tmp31, align 8, !dbg !703, !tbaa !497
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !705, !tbaa !497
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !707
  %32 = load i64, i64* %ob_refcnt32, align 8, !dbg !708, !tbaa !519
  %dec33 = add i64 %32, -1, !dbg !708
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !708, !tbaa !519
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !709
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !710

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !711

if.else.36:                                       ; preds = %do.body.30
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !713, !tbaa !497
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !715
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !715, !tbaa !586
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !716
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !716, !tbaa !588
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !717, !tbaa !497
  call void %35(%struct._object* %36), !dbg !718
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %37 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !719
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !719
  br label %do.cond.40, !dbg !721

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !722

do.end.41:                                        ; preds = %do.cond.40
  store i32 0, i32* %cleanup.dest.slot, !dbg !724
  br label %cleanup, !dbg !724

cleanup:                                          ; preds = %do.end.41, %do.end.28
  %38 = bitcast %struct._object** %v to i8*, !dbg !725
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !725
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !614

while.end:                                        ; preds = %while.cond
  call void @endspent(), !dbg !726
  %39 = load %struct._object*, %struct._object** %d, align 8, !dbg !727, !tbaa !497
  store %struct._object* %39, %struct._object** %retval, !dbg !728
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !728

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.42

cleanup.42:                                       ; preds = %NewDefault, %while.end, %if.then
  %40 = bitcast %struct.spwd** %p to i8*, !dbg !729
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !729
  %41 = bitcast %struct._object** %d to i8*, !dbg !729
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !729
  %42 = load %struct._object*, %struct._object** %retval, !dbg !729
  ret %struct._object* %42, !dbg !729
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #3

declare %struct.spwd* @getspnam(i8*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @mkspent(%struct.spwd* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.spwd*, align 8
  %setIndex = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.spwd* %p, %struct.spwd** %p.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct.spwd** %p.addr, metadata !386, metadata !493), !dbg !730
  %0 = bitcast i32* %setIndex to i8*, !dbg !731
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !731
  call void @llvm.dbg.declare(metadata i32* %setIndex, metadata !387, metadata !493), !dbg !732
  store i32 0, i32* %setIndex, align 4, !dbg !732, !tbaa !508
  %1 = bitcast %struct._object** %v to i8*, !dbg !733
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !733
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !388, metadata !493), !dbg !734
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @StructSpwdType), !dbg !735
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !734, !tbaa !497
  %2 = load %struct._object*, %struct._object** %v, align 8, !dbg !736, !tbaa !497
  %cmp = icmp eq %struct._object* %2, null, !dbg !738
  br i1 %cmp, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !740
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !740

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v, align 8, !dbg !741, !tbaa !497
  %4 = load i32, i32* %setIndex, align 4, !dbg !742, !tbaa !508
  %inc = add i32 %4, 1, !dbg !742
  store i32 %inc, i32* %setIndex, align 4, !dbg !742, !tbaa !508
  %5 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !743, !tbaa !497
  %sp_namp = getelementptr inbounds %struct.spwd, %struct.spwd* %5, i32 0, i32 0, !dbg !744
  %6 = load i8*, i8** %sp_namp, align 8, !dbg !744, !tbaa !745
  call void @sets(%struct._object* %3, i32 %4, i8* %6), !dbg !747
  %7 = load %struct._object*, %struct._object** %v, align 8, !dbg !748, !tbaa !497
  %8 = load i32, i32* %setIndex, align 4, !dbg !749, !tbaa !508
  %inc1 = add i32 %8, 1, !dbg !749
  store i32 %inc1, i32* %setIndex, align 4, !dbg !749, !tbaa !508
  %9 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !750, !tbaa !497
  %sp_pwdp = getelementptr inbounds %struct.spwd, %struct.spwd* %9, i32 0, i32 1, !dbg !751
  %10 = load i8*, i8** %sp_pwdp, align 8, !dbg !751, !tbaa !752
  call void @sets(%struct._object* %7, i32 %8, i8* %10), !dbg !753
  %11 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !754, !tbaa !497
  %sp_lstchg = getelementptr inbounds %struct.spwd, %struct.spwd* %11, i32 0, i32 2, !dbg !755
  %12 = load i64, i64* %sp_lstchg, align 8, !dbg !755, !tbaa !756
  %call2 = call %struct._object* @PyLong_FromLong(i64 %12), !dbg !757
  %13 = load i32, i32* %setIndex, align 4, !dbg !758, !tbaa !508
  %inc3 = add i32 %13, 1, !dbg !758
  store i32 %inc3, i32* %setIndex, align 4, !dbg !758, !tbaa !508
  %idxprom = sext i32 %13 to i64, !dbg !759
  %14 = load %struct._object*, %struct._object** %v, align 8, !dbg !760, !tbaa !497
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*, !dbg !761
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1, !dbg !762
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !759
  store %struct._object* %call2, %struct._object** %arrayidx, align 8, !dbg !763, !tbaa !497
  %16 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !764, !tbaa !497
  %sp_min = getelementptr inbounds %struct.spwd, %struct.spwd* %16, i32 0, i32 3, !dbg !765
  %17 = load i64, i64* %sp_min, align 8, !dbg !765, !tbaa !766
  %call4 = call %struct._object* @PyLong_FromLong(i64 %17), !dbg !767
  %18 = load i32, i32* %setIndex, align 4, !dbg !768, !tbaa !508
  %inc5 = add i32 %18, 1, !dbg !768
  store i32 %inc5, i32* %setIndex, align 4, !dbg !768, !tbaa !508
  %idxprom6 = sext i32 %18 to i64, !dbg !769
  %19 = load %struct._object*, %struct._object** %v, align 8, !dbg !770, !tbaa !497
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !771
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !772
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 %idxprom6, !dbg !769
  store %struct._object* %call4, %struct._object** %arrayidx8, align 8, !dbg !773, !tbaa !497
  %21 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !774, !tbaa !497
  %sp_max = getelementptr inbounds %struct.spwd, %struct.spwd* %21, i32 0, i32 4, !dbg !775
  %22 = load i64, i64* %sp_max, align 8, !dbg !775, !tbaa !776
  %call9 = call %struct._object* @PyLong_FromLong(i64 %22), !dbg !777
  %23 = load i32, i32* %setIndex, align 4, !dbg !778, !tbaa !508
  %inc10 = add i32 %23, 1, !dbg !778
  store i32 %inc10, i32* %setIndex, align 4, !dbg !778, !tbaa !508
  %idxprom11 = sext i32 %23 to i64, !dbg !779
  %24 = load %struct._object*, %struct._object** %v, align 8, !dbg !780, !tbaa !497
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*, !dbg !781
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1, !dbg !782
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %idxprom11, !dbg !779
  store %struct._object* %call9, %struct._object** %arrayidx13, align 8, !dbg !783, !tbaa !497
  %26 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !784, !tbaa !497
  %sp_warn = getelementptr inbounds %struct.spwd, %struct.spwd* %26, i32 0, i32 5, !dbg !785
  %27 = load i64, i64* %sp_warn, align 8, !dbg !785, !tbaa !786
  %call14 = call %struct._object* @PyLong_FromLong(i64 %27), !dbg !787
  %28 = load i32, i32* %setIndex, align 4, !dbg !788, !tbaa !508
  %inc15 = add i32 %28, 1, !dbg !788
  store i32 %inc15, i32* %setIndex, align 4, !dbg !788, !tbaa !508
  %idxprom16 = sext i32 %28 to i64, !dbg !789
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !790, !tbaa !497
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*, !dbg !791
  %ob_item17 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1, !dbg !792
  %arrayidx18 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item17, i32 0, i64 %idxprom16, !dbg !789
  store %struct._object* %call14, %struct._object** %arrayidx18, align 8, !dbg !793, !tbaa !497
  %31 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !794, !tbaa !497
  %sp_inact = getelementptr inbounds %struct.spwd, %struct.spwd* %31, i32 0, i32 6, !dbg !795
  %32 = load i64, i64* %sp_inact, align 8, !dbg !795, !tbaa !796
  %call19 = call %struct._object* @PyLong_FromLong(i64 %32), !dbg !797
  %33 = load i32, i32* %setIndex, align 4, !dbg !798, !tbaa !508
  %inc20 = add i32 %33, 1, !dbg !798
  store i32 %inc20, i32* %setIndex, align 4, !dbg !798, !tbaa !508
  %idxprom21 = sext i32 %33 to i64, !dbg !799
  %34 = load %struct._object*, %struct._object** %v, align 8, !dbg !800, !tbaa !497
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*, !dbg !801
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1, !dbg !802
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 %idxprom21, !dbg !799
  store %struct._object* %call19, %struct._object** %arrayidx23, align 8, !dbg !803, !tbaa !497
  %36 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !804, !tbaa !497
  %sp_expire = getelementptr inbounds %struct.spwd, %struct.spwd* %36, i32 0, i32 7, !dbg !805
  %37 = load i64, i64* %sp_expire, align 8, !dbg !805, !tbaa !806
  %call24 = call %struct._object* @PyLong_FromLong(i64 %37), !dbg !807
  %38 = load i32, i32* %setIndex, align 4, !dbg !808, !tbaa !508
  %inc25 = add i32 %38, 1, !dbg !808
  store i32 %inc25, i32* %setIndex, align 4, !dbg !808, !tbaa !508
  %idxprom26 = sext i32 %38 to i64, !dbg !809
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !810, !tbaa !497
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*, !dbg !811
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1, !dbg !812
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 %idxprom26, !dbg !809
  store %struct._object* %call24, %struct._object** %arrayidx28, align 8, !dbg !813, !tbaa !497
  %41 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !814, !tbaa !497
  %sp_flag = getelementptr inbounds %struct.spwd, %struct.spwd* %41, i32 0, i32 8, !dbg !815
  %42 = load i64, i64* %sp_flag, align 8, !dbg !815, !tbaa !816
  %call29 = call %struct._object* @PyLong_FromLong(i64 %42), !dbg !817
  %43 = load i32, i32* %setIndex, align 4, !dbg !818, !tbaa !508
  %inc30 = add i32 %43, 1, !dbg !818
  store i32 %inc30, i32* %setIndex, align 4, !dbg !818, !tbaa !508
  %idxprom31 = sext i32 %43 to i64, !dbg !819
  %44 = load %struct._object*, %struct._object** %v, align 8, !dbg !820, !tbaa !497
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*, !dbg !821
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1, !dbg !822
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 %idxprom31, !dbg !819
  store %struct._object* %call29, %struct._object** %arrayidx33, align 8, !dbg !823, !tbaa !497
  %46 = load %struct._object*, %struct._object** %v, align 8, !dbg !824, !tbaa !497
  %47 = load i32, i32* %setIndex, align 4, !dbg !825, !tbaa !508
  %inc34 = add i32 %47, 1, !dbg !825
  store i32 %inc34, i32* %setIndex, align 4, !dbg !825, !tbaa !508
  %48 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !826, !tbaa !497
  %sp_namp35 = getelementptr inbounds %struct.spwd, %struct.spwd* %48, i32 0, i32 0, !dbg !827
  %49 = load i8*, i8** %sp_namp35, align 8, !dbg !827, !tbaa !745
  call void @sets(%struct._object* %46, i32 %47, i8* %49), !dbg !828
  %50 = load %struct._object*, %struct._object** %v, align 8, !dbg !829, !tbaa !497
  %51 = load i32, i32* %setIndex, align 4, !dbg !830, !tbaa !508
  %inc36 = add i32 %51, 1, !dbg !830
  store i32 %inc36, i32* %setIndex, align 4, !dbg !830, !tbaa !508
  %52 = load %struct.spwd*, %struct.spwd** %p.addr, align 8, !dbg !831, !tbaa !497
  %sp_pwdp37 = getelementptr inbounds %struct.spwd, %struct.spwd* %52, i32 0, i32 1, !dbg !832
  %53 = load i8*, i8** %sp_pwdp37, align 8, !dbg !832, !tbaa !752
  call void @sets(%struct._object* %50, i32 %51, i8* %53), !dbg !833
  %call38 = call %struct._object* @PyErr_Occurred(), !dbg !834
  %tobool = icmp ne %struct._object* %call38, null, !dbg !834
  br i1 %tobool, label %if.then.39, label %if.end.43, !dbg !835

if.then.39:                                       ; preds = %if.end
  br label %do.body, !dbg !836

do.body:                                          ; preds = %if.then.39
  %54 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !837
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !837
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !389, metadata !493), !dbg !839
  %55 = load %struct._object*, %struct._object** %v, align 8, !dbg !840, !tbaa !497
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8, !dbg !839, !tbaa !497
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !841, !tbaa !497
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !843
  %57 = load i64, i64* %ob_refcnt, align 8, !dbg !844, !tbaa !519
  %dec = add i64 %57, -1, !dbg !844
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !844, !tbaa !519
  %cmp40 = icmp ne i64 %dec, 0, !dbg !845
  br i1 %cmp40, label %if.then.41, label %if.else, !dbg !846

if.then.41:                                       ; preds = %do.body
  br label %if.end.42, !dbg !847

if.else:                                          ; preds = %do.body
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !849, !tbaa !497
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !851
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !851, !tbaa !586
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !852
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !852, !tbaa !588
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !853, !tbaa !497
  call void %60(%struct._object* %61), !dbg !854
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  %62 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !855
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !855
  br label %do.cond, !dbg !857

do.cond:                                          ; preds = %if.end.42
  br label %do.end, !dbg !858

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !860
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !860

if.end.43:                                        ; preds = %if.end
  %63 = load %struct._object*, %struct._object** %v, align 8, !dbg !861, !tbaa !497
  store %struct._object* %63, %struct._object** %retval, !dbg !862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %if.end.43, %do.end, %if.then
  %64 = bitcast %struct._object** %v to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !863
  %65 = bitcast i32* %setIndex to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 4, i8* %65) #1, !dbg !863
  %66 = load %struct._object*, %struct._object** %retval, !dbg !863
  ret %struct._object* %66, !dbg !863
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal void @sets(%struct._object* %v, i32 %i, i8* %val) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %i.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %o = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !397, metadata !493), !dbg !864
  store i32 %i, i32* %i.addr, align 4, !tbaa !508
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !398, metadata !493), !dbg !865
  store i8* %val, i8** %val.addr, align 8, !tbaa !497
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !399, metadata !493), !dbg !866
  %0 = load i8*, i8** %val.addr, align 8, !dbg !867, !tbaa !497
  %tobool = icmp ne i8* %0, null, !dbg !867
  br i1 %tobool, label %if.then, label %if.else, !dbg !868

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object** %o to i8*, !dbg !869
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !869
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !400, metadata !493), !dbg !870
  %2 = load i8*, i8** %val.addr, align 8, !dbg !871, !tbaa !497
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %2), !dbg !872
  store %struct._object* %call, %struct._object** %o, align 8, !dbg !870, !tbaa !497
  %3 = load %struct._object*, %struct._object** %o, align 8, !dbg !873, !tbaa !497
  %4 = load i32, i32* %i.addr, align 4, !dbg !874, !tbaa !508
  %idxprom = sext i32 %4 to i64, !dbg !875
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !876, !tbaa !497
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*, !dbg !877
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1, !dbg !878
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !875
  store %struct._object* %3, %struct._object** %arrayidx, align 8, !dbg !879, !tbaa !497
  %7 = bitcast %struct._object** %o to i8*, !dbg !880
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !880
  br label %if.end, !dbg !881

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %i.addr, align 4, !dbg !882, !tbaa !508
  %idxprom1 = sext i32 %8 to i64, !dbg !884
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !885, !tbaa !497
  %10 = bitcast %struct._object* %9 to %struct.PyTupleObject*, !dbg !886
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1, !dbg !887
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %idxprom1, !dbg !884
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx3, align 8, !dbg !888, !tbaa !497
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !889, !tbaa !519
  %inc = add i64 %11, 1, !dbg !889
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !889, !tbaa !519
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !890
}

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

declare %struct._object* @PyList_New(i64) #3

declare void @setspent() #3

declare %struct.spwd* @getspent() #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

declare void @endspent() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!488, !489, !490}
!llvm.ident = !{!491}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !351, globals: !422)
!1 = !DIFile(filename: "spwdmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !17, !343}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!345 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 25, size: 256, align: 64, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 26, baseType: !23, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !346, file: !345, line: 27, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 64, elements: !82)
!351 = !{!352, !358, !382, !393, !403}
!352 = !DISubprogram(name: "PyInit_spwd", scope: !353, file: !353, line: 197, type: !354, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_spwd, variables: !356)
!353 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/spwdmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DISubroutineType(types: !355)
!355 = !{!5}
!356 = !{!357}
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !352, file: !353, line: 199, type: !5)
!358 = !DISubprogram(name: "spwd_getspnam", scope: !353, file: !353, line: 116, type: !126, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @spwd_getspnam, variables: !359)
!359 = !{!360, !361, !362, !363, !377, !378, !379, !380}
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !358, file: !353, line: 116, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !358, file: !353, line: 116, type: !5)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !358, file: !353, line: 118, type: !52)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !358, file: !353, line: 119, type: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "spwd", file: !366, line: 39, size: 576, align: 64, elements: !367)
!366 = !DIFile(filename: "/usr/include/shadow.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sp_namp", scope: !365, file: !366, line: 41, baseType: !52, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sp_pwdp", scope: !365, file: !366, line: 42, baseType: !52, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sp_lstchg", scope: !365, file: !366, line: 43, baseType: !17, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sp_min", scope: !365, file: !366, line: 44, baseType: !17, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sp_max", scope: !365, file: !366, line: 45, baseType: !17, size: 64, align: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sp_warn", scope: !365, file: !366, line: 46, baseType: !17, size: 64, align: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sp_inact", scope: !365, file: !366, line: 48, baseType: !17, size: 64, align: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sp_expire", scope: !365, file: !366, line: 50, baseType: !17, size: 64, align: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sp_flag", scope: !365, file: !366, line: 52, baseType: !96, size: 64, align: 64, offset: 512)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !358, file: !353, line: 120, type: !5)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !358, file: !353, line: 120, type: !5)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !358, file: !353, line: 120, type: !5)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !381, file: !353, line: 134, type: !5)
!381 = distinct !DILexicalBlock(scope: !358, file: !353, line: 134, column: 8)
!382 = !DISubprogram(name: "mkspent", scope: !353, file: !353, line: 72, type: !383, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.spwd*)* @mkspent, variables: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!5, !364}
!385 = !{!386, !387, !388, !389}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !382, file: !353, line: 72, type: !364)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "setIndex", scope: !382, file: !353, line: 74, type: !44)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !382, file: !353, line: 75, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !390, file: !353, line: 98, type: !5)
!390 = distinct !DILexicalBlock(scope: !391, file: !353, line: 98, column: 12)
!391 = distinct !DILexicalBlock(scope: !392, file: !353, line: 97, column: 27)
!392 = distinct !DILexicalBlock(scope: !382, file: !353, line: 97, column: 9)
!393 = !DISubprogram(name: "sets", scope: !353, file: !353, line: 61, type: !394, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i32, i8*)* @sets, variables: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !5, !44, !29}
!396 = !{!397, !398, !399, !400}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !393, file: !353, line: 61, type: !5)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !393, file: !353, line: 61, type: !44)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "val", arg: 3, scope: !393, file: !353, line: 61, type: !29)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !401, file: !353, line: 64, type: !5)
!401 = distinct !DILexicalBlock(scope: !402, file: !353, line: 63, column: 12)
!402 = distinct !DILexicalBlock(scope: !393, file: !353, line: 63, column: 7)
!403 = !DISubprogram(name: "spwd_getspall", scope: !353, file: !353, line: 149, type: !126, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @spwd_getspall, variables: !404)
!404 = !{!405, !406, !407, !408, !409, !411, !415, !418, !420}
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !403, file: !353, line: 149, type: !5)
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !403, file: !353, line: 149, type: !5)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !403, file: !353, line: 151, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !403, file: !353, line: 152, type: !364)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !410, file: !353, line: 157, type: !5)
!410 = distinct !DILexicalBlock(scope: !403, file: !353, line: 156, column: 44)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !412, file: !353, line: 159, type: !5)
!412 = distinct !DILexicalBlock(scope: !413, file: !353, line: 159, column: 16)
!413 = distinct !DILexicalBlock(scope: !414, file: !353, line: 158, column: 58)
!414 = distinct !DILexicalBlock(scope: !410, file: !353, line: 158, column: 13)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !353, line: 159, type: !5)
!416 = distinct !DILexicalBlock(scope: !417, file: !353, line: 159, column: 101)
!417 = distinct !DILexicalBlock(scope: !412, file: !353, line: 159, column: 67)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !419, file: !353, line: 160, type: !5)
!419 = distinct !DILexicalBlock(scope: !413, file: !353, line: 160, column: 16)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !353, line: 164, type: !5)
!421 = distinct !DILexicalBlock(scope: !410, file: !353, line: 164, column: 12)
!422 = !{!423, !424, !426, !449, !453, !457, !461, !465, !479, !483}
!423 = !DIGlobalVariable(name: "initialized", scope: !0, file: !353, line: 56, type: !44, isLocal: true, isDefinition: true, variable: i32* @initialized)
!424 = !DIGlobalVariable(name: "StructSpwdType", scope: !0, file: !353, line: 57, type: !425, isLocal: true, isDefinition: true, variable: %struct._typeobject* @StructSpwdType)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!426 = !DIGlobalVariable(name: "spwdmodule", scope: !0, file: !353, line: 184, type: !427, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @spwdmodule)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !428, line: 47, size: 832, align: 64, elements: !429)
!428 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!429 = !{!430, !439, !440, !441, !442, !445, !446, !447, !448}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !427, file: !428, line: 48, baseType: !431, size: 320, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !428, line: 38, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !428, line: 33, size: 320, align: 64, elements: !433)
!433 = !{!434, !435, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !432, file: !428, line: 34, baseType: !6, size: 128, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !432, file: !428, line: 35, baseType: !436, size: 64, align: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !432, file: !428, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !432, file: !428, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !427, file: !428, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !427, file: !428, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !427, file: !428, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !427, file: !428, line: 52, baseType: !443, size: 64, align: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !427, file: !428, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !427, file: !428, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !427, file: !428, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !427, file: !428, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!449 = !DIGlobalVariable(name: "spwd__doc__", scope: !0, file: !353, line: 14, type: !450, isLocal: true, isDefinition: true, variable: [524 x i8]* @spwd__doc__)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4192, align: 8, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 524)
!453 = !DIGlobalVariable(name: "spwd_methods", scope: !0, file: !353, line: 172, type: !454, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @spwd_methods)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 768, align: 64, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 3)
!457 = !DIGlobalVariable(name: "spwd_getspnam__doc__", scope: !0, file: !353, line: 110, type: !458, isLocal: true, isDefinition: true, variable: [253 x i8]* @spwd_getspnam__doc__)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2024, align: 8, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 253)
!461 = !DIGlobalVariable(name: "spwd_getspall__doc__", scope: !0, file: !353, line: 142, type: !462, isLocal: true, isDefinition: true, variable: [178 x i8]* @spwd_getspall__doc__)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1424, align: 8, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 178)
!465 = !DIGlobalVariable(name: "struct_spwd_type_desc", scope: !0, file: !353, line: 49, type: !466, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @struct_spwd_type_desc)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !467, line: 20, baseType: !468)
!467 = !DIFile(filename: "./Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !467, line: 15, size: 256, align: 64, elements: !469)
!469 = !{!470, !471, !472, !478}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !467, line: 16, baseType: !52, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !468, file: !467, line: 17, baseType: !52, size: 64, align: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !468, file: !467, line: 18, baseType: !473, size: 64, align: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !467, line: 10, size: 128, align: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !467, line: 11, baseType: !52, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !474, file: !467, line: 12, baseType: !52, size: 64, align: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !468, file: !467, line: 19, baseType: !44, size: 32, align: 32, offset: 192)
!479 = !DIGlobalVariable(name: "struct_spwd__doc__", scope: !0, file: !353, line: 43, type: !480, isLocal: true, isDefinition: true, variable: [239 x i8]* @struct_spwd__doc__)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1912, align: 8, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 239)
!483 = !DIGlobalVariable(name: "struct_spwd_type_fields", scope: !0, file: !353, line: 28, type: !484, isLocal: true, isDefinition: true, variable: [12 x %struct.PyStructSequence_Field]* @struct_spwd_type_fields)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 1536, align: 64, elements: !486)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !467, line: 13, baseType: !474)
!486 = !{!487}
!487 = !DISubrange(count: 12)
!488 = !{i32 2, !"Dwarf Version", i32 4}
!489 = !{i32 2, !"Debug Info Version", i32 3}
!490 = !{i32 1, !"PIC Level", i32 2}
!491 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!492 = !DILocation(line: 199, column: 5, scope: !352)
!493 = !DIExpression()
!494 = !DILocation(line: 199, column: 15, scope: !352)
!495 = !DILocation(line: 200, column: 7, scope: !352)
!496 = !DILocation(line: 200, column: 6, scope: !352)
!497 = !{!498, !498, i64 0}
!498 = !{!"any pointer", !499, i64 0}
!499 = !{!"omnipotent char", !500, i64 0}
!500 = !{!"Simple C/C++ TBAA"}
!501 = !DILocation(line: 201, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !352, file: !353, line: 201, column: 9)
!503 = !DILocation(line: 201, column: 11, scope: !502)
!504 = !DILocation(line: 201, column: 9, scope: !352)
!505 = !DILocation(line: 202, column: 9, scope: !502)
!506 = !DILocation(line: 203, column: 10, scope: !507)
!507 = distinct !DILexicalBlock(scope: !352, file: !353, line: 203, column: 9)
!508 = !{!509, !509, i64 0}
!509 = !{!"int", !499, i64 0}
!510 = !DILocation(line: 203, column: 9, scope: !352)
!511 = !DILocation(line: 204, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !353, line: 204, column: 13)
!513 = distinct !DILexicalBlock(scope: !507, file: !353, line: 203, column: 23)
!514 = !DILocation(line: 205, column: 64, scope: !512)
!515 = !DILocation(line: 204, column: 13, scope: !513)
!516 = !DILocation(line: 206, column: 13, scope: !512)
!517 = !DILocation(line: 207, column: 5, scope: !513)
!518 = !DILocation(line: 208, column: 62, scope: !352)
!519 = !{!520, !521, i64 0}
!520 = !{!"_object", !521, i64 0, !498, i64 8}
!521 = !{!"long", !499, i64 0}
!522 = !DILocation(line: 209, column: 24, scope: !352)
!523 = !DILocation(line: 209, column: 5, scope: !352)
!524 = !DILocation(line: 210, column: 17, scope: !352)
!525 = !DILocation(line: 211, column: 12, scope: !352)
!526 = !DILocation(line: 211, column: 5, scope: !352)
!527 = !DILocation(line: 212, column: 1, scope: !352)
!528 = !DILocation(line: 116, column: 42, scope: !358)
!529 = !DILocation(line: 116, column: 58, scope: !358)
!530 = !DILocation(line: 118, column: 5, scope: !358)
!531 = !DILocation(line: 118, column: 11, scope: !358)
!532 = !DILocation(line: 119, column: 5, scope: !358)
!533 = !DILocation(line: 119, column: 18, scope: !358)
!534 = !DILocation(line: 120, column: 5, scope: !358)
!535 = !DILocation(line: 120, column: 15, scope: !358)
!536 = !DILocation(line: 120, column: 21, scope: !358)
!537 = !DILocation(line: 120, column: 29, scope: !358)
!538 = !DILocation(line: 122, column: 27, scope: !539)
!539 = distinct !DILexicalBlock(scope: !358, file: !353, line: 122, column: 9)
!540 = !DILocation(line: 122, column: 10, scope: !539)
!541 = !DILocation(line: 122, column: 9, scope: !358)
!542 = !DILocation(line: 123, column: 9, scope: !539)
!543 = !DILocation(line: 124, column: 44, scope: !544)
!544 = distinct !DILexicalBlock(scope: !358, file: !353, line: 124, column: 9)
!545 = !DILocation(line: 124, column: 18, scope: !544)
!546 = !DILocation(line: 124, column: 16, scope: !544)
!547 = !DILocation(line: 124, column: 50, scope: !544)
!548 = !DILocation(line: 124, column: 9, scope: !358)
!549 = !DILocation(line: 125, column: 9, scope: !544)
!550 = !DILocation(line: 126, column: 33, scope: !551)
!551 = distinct !DILexicalBlock(scope: !358, file: !353, line: 126, column: 9)
!552 = !DILocation(line: 126, column: 9, scope: !551)
!553 = !DILocation(line: 126, column: 59, scope: !551)
!554 = !DILocation(line: 126, column: 9, scope: !358)
!555 = !DILocation(line: 127, column: 9, scope: !551)
!556 = !DILocation(line: 128, column: 23, scope: !557)
!557 = distinct !DILexicalBlock(scope: !358, file: !353, line: 128, column: 9)
!558 = !DILocation(line: 128, column: 14, scope: !557)
!559 = !DILocation(line: 128, column: 12, scope: !557)
!560 = !DILocation(line: 128, column: 30, scope: !557)
!561 = !DILocation(line: 128, column: 9, scope: !358)
!562 = !DILocation(line: 129, column: 25, scope: !563)
!563 = distinct !DILexicalBlock(scope: !557, file: !353, line: 128, column: 45)
!564 = !DILocation(line: 129, column: 9, scope: !563)
!565 = !DILocation(line: 130, column: 9, scope: !563)
!566 = !DILocation(line: 132, column: 22, scope: !358)
!567 = !DILocation(line: 132, column: 14, scope: !358)
!568 = !DILocation(line: 132, column: 12, scope: !358)
!569 = !DILocation(line: 132, column: 5, scope: !358)
!570 = !DILocation(line: 134, column: 5, scope: !358)
!571 = !DILocation(line: 134, column: 10, scope: !572)
!572 = !DILexicalBlockFile(scope: !381, file: !353, discriminator: 1)
!573 = !DILocation(line: 134, column: 20, scope: !381)
!574 = !DILocation(line: 134, column: 50, scope: !381)
!575 = !DILocation(line: 134, column: 66, scope: !576)
!576 = distinct !DILexicalBlock(scope: !381, file: !353, line: 134, column: 63)
!577 = !DILocation(line: 134, column: 83, scope: !576)
!578 = !DILocation(line: 134, column: 63, scope: !576)
!579 = !DILocation(line: 134, column: 93, scope: !576)
!580 = !DILocation(line: 134, column: 63, scope: !381)
!581 = !DILocation(line: 134, column: 63, scope: !582)
!582 = !DILexicalBlockFile(scope: !381, file: !353, discriminator: 2)
!583 = !DILocation(line: 134, column: 124, scope: !584)
!584 = !DILexicalBlockFile(scope: !576, file: !353, discriminator: 3)
!585 = !DILocation(line: 134, column: 142, scope: !576)
!586 = !{!520, !498, i64 8}
!587 = !DILocation(line: 134, column: 152, scope: !576)
!588 = !{!589, !498, i64 48}
!589 = !{!"_typeobject", !590, i64 0, !498, i64 24, !521, i64 32, !521, i64 40, !498, i64 48, !498, i64 56, !498, i64 64, !498, i64 72, !498, i64 80, !498, i64 88, !498, i64 96, !498, i64 104, !498, i64 112, !498, i64 120, !498, i64 128, !498, i64 136, !498, i64 144, !498, i64 152, !498, i64 160, !521, i64 168, !498, i64 176, !498, i64 184, !498, i64 192, !498, i64 200, !521, i64 208, !498, i64 216, !498, i64 224, !498, i64 232, !498, i64 240, !498, i64 248, !498, i64 256, !498, i64 264, !498, i64 272, !498, i64 280, !521, i64 288, !498, i64 296, !498, i64 304, !498, i64 312, !498, i64 320, !498, i64 328, !498, i64 336, !498, i64 344, !498, i64 352, !498, i64 360, !498, i64 368, !498, i64 376, !509, i64 384, !498, i64 392}
!590 = !{!"", !520, i64 0, !521, i64 16}
!591 = !DILocation(line: 134, column: 177, scope: !576)
!592 = !DILocation(line: 134, column: 108, scope: !576)
!593 = !DILocation(line: 134, column: 196, scope: !594)
!594 = !DILexicalBlockFile(scope: !358, file: !353, discriminator: 4)
!595 = !DILocation(line: 134, column: 196, scope: !381)
!596 = !DILocation(line: 134, column: 196, scope: !597)
!597 = !DILexicalBlockFile(scope: !381, file: !353, discriminator: 5)
!598 = !DILocation(line: 135, column: 12, scope: !358)
!599 = !DILocation(line: 135, column: 5, scope: !358)
!600 = !DILocation(line: 136, column: 1, scope: !358)
!601 = !DILocation(line: 149, column: 25, scope: !403)
!602 = !DILocation(line: 149, column: 41, scope: !403)
!603 = !DILocation(line: 151, column: 5, scope: !403)
!604 = !DILocation(line: 151, column: 15, scope: !403)
!605 = !DILocation(line: 152, column: 5, scope: !403)
!606 = !DILocation(line: 152, column: 18, scope: !403)
!607 = !DILocation(line: 153, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !403, file: !353, line: 153, column: 9)
!609 = !DILocation(line: 153, column: 12, scope: !608)
!610 = !DILocation(line: 153, column: 29, scope: !608)
!611 = !DILocation(line: 153, column: 9, scope: !403)
!612 = !DILocation(line: 154, column: 9, scope: !608)
!613 = !DILocation(line: 155, column: 5, scope: !403)
!614 = !DILocation(line: 156, column: 5, scope: !403)
!615 = !DILocation(line: 156, column: 17, scope: !616)
!616 = !DILexicalBlockFile(scope: !617, file: !353, discriminator: 2)
!617 = !DILexicalBlockFile(scope: !403, file: !353, discriminator: 1)
!618 = !DILocation(line: 156, column: 15, scope: !403)
!619 = !DILocation(line: 156, column: 29, scope: !403)
!620 = !DILocation(line: 157, column: 9, scope: !410)
!621 = !DILocation(line: 157, column: 19, scope: !410)
!622 = !DILocation(line: 157, column: 31, scope: !410)
!623 = !DILocation(line: 157, column: 23, scope: !410)
!624 = !DILocation(line: 158, column: 13, scope: !414)
!625 = !DILocation(line: 158, column: 15, scope: !414)
!626 = !DILocation(line: 158, column: 29, scope: !414)
!627 = !DILocation(line: 158, column: 46, scope: !628)
!628 = !DILexicalBlockFile(scope: !414, file: !353, discriminator: 1)
!629 = !DILocation(line: 158, column: 49, scope: !414)
!630 = !DILocation(line: 158, column: 32, scope: !414)
!631 = !DILocation(line: 158, column: 52, scope: !414)
!632 = !DILocation(line: 158, column: 13, scope: !410)
!633 = !DILocation(line: 159, column: 13, scope: !413)
!634 = !DILocation(line: 159, column: 18, scope: !635)
!635 = !DILexicalBlockFile(scope: !412, file: !353, discriminator: 1)
!636 = !DILocation(line: 159, column: 28, scope: !412)
!637 = !DILocation(line: 159, column: 59, scope: !412)
!638 = !DILocation(line: 159, column: 67, scope: !417)
!639 = !DILocation(line: 159, column: 83, scope: !417)
!640 = !DILocation(line: 159, column: 67, scope: !412)
!641 = !DILocation(line: 159, column: 98, scope: !642)
!642 = !DILexicalBlockFile(scope: !417, file: !353, discriminator: 2)
!643 = !DILocation(line: 159, column: 103, scope: !644)
!644 = !DILexicalBlockFile(scope: !416, file: !353, discriminator: 4)
!645 = !DILocation(line: 159, column: 113, scope: !416)
!646 = !DILocation(line: 159, column: 143, scope: !416)
!647 = !DILocation(line: 159, column: 169, scope: !648)
!648 = distinct !DILexicalBlock(scope: !416, file: !353, line: 159, column: 166)
!649 = !DILocation(line: 159, column: 186, scope: !648)
!650 = !DILocation(line: 159, column: 166, scope: !648)
!651 = !DILocation(line: 159, column: 196, scope: !648)
!652 = !DILocation(line: 159, column: 166, scope: !416)
!653 = !DILocation(line: 159, column: 166, scope: !654)
!654 = !DILexicalBlockFile(scope: !416, file: !353, discriminator: 5)
!655 = !DILocation(line: 159, column: 227, scope: !656)
!656 = !DILexicalBlockFile(scope: !648, file: !353, discriminator: 6)
!657 = !DILocation(line: 159, column: 245, scope: !648)
!658 = !DILocation(line: 159, column: 255, scope: !648)
!659 = !DILocation(line: 159, column: 280, scope: !648)
!660 = !DILocation(line: 159, column: 211, scope: !648)
!661 = !DILocation(line: 159, column: 299, scope: !662)
!662 = !DILexicalBlockFile(scope: !417, file: !353, discriminator: 7)
!663 = !DILocation(line: 159, column: 299, scope: !416)
!664 = !DILocation(line: 159, column: 299, scope: !665)
!665 = !DILexicalBlockFile(scope: !416, file: !353, discriminator: 8)
!666 = !DILocation(line: 159, column: 299, scope: !667)
!667 = !DILexicalBlockFile(scope: !416, file: !353, discriminator: 9)
!668 = !DILocation(line: 159, column: 312, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !353, discriminator: 10)
!670 = !DILexicalBlockFile(scope: !413, file: !353, discriminator: 3)
!671 = !DILocation(line: 159, column: 312, scope: !412)
!672 = !DILocation(line: 159, column: 312, scope: !673)
!673 = !DILexicalBlockFile(scope: !412, file: !353, discriminator: 11)
!674 = !DILocation(line: 160, column: 13, scope: !413)
!675 = !DILocation(line: 160, column: 18, scope: !676)
!676 = !DILexicalBlockFile(scope: !419, file: !353, discriminator: 1)
!677 = !DILocation(line: 160, column: 28, scope: !419)
!678 = !DILocation(line: 160, column: 58, scope: !419)
!679 = !DILocation(line: 160, column: 70, scope: !680)
!680 = distinct !DILexicalBlock(scope: !419, file: !353, line: 160, column: 67)
!681 = !DILocation(line: 160, column: 87, scope: !680)
!682 = !DILocation(line: 160, column: 67, scope: !680)
!683 = !DILocation(line: 160, column: 97, scope: !680)
!684 = !DILocation(line: 160, column: 67, scope: !419)
!685 = !DILocation(line: 160, column: 67, scope: !686)
!686 = !DILexicalBlockFile(scope: !419, file: !353, discriminator: 2)
!687 = !DILocation(line: 160, column: 128, scope: !688)
!688 = !DILexicalBlockFile(scope: !680, file: !353, discriminator: 3)
!689 = !DILocation(line: 160, column: 146, scope: !680)
!690 = !DILocation(line: 160, column: 156, scope: !680)
!691 = !DILocation(line: 160, column: 181, scope: !680)
!692 = !DILocation(line: 160, column: 112, scope: !680)
!693 = !DILocation(line: 160, column: 200, scope: !694)
!694 = !DILexicalBlockFile(scope: !413, file: !353, discriminator: 4)
!695 = !DILocation(line: 160, column: 200, scope: !419)
!696 = !DILocation(line: 160, column: 200, scope: !697)
!697 = !DILexicalBlockFile(scope: !419, file: !353, discriminator: 5)
!698 = !DILocation(line: 161, column: 13, scope: !413)
!699 = !DILocation(line: 162, column: 13, scope: !413)
!700 = !DILocation(line: 164, column: 9, scope: !410)
!701 = !DILocation(line: 164, column: 14, scope: !702)
!702 = !DILexicalBlockFile(scope: !421, file: !353, discriminator: 1)
!703 = !DILocation(line: 164, column: 24, scope: !421)
!704 = !DILocation(line: 164, column: 54, scope: !421)
!705 = !DILocation(line: 164, column: 66, scope: !706)
!706 = distinct !DILexicalBlock(scope: !421, file: !353, line: 164, column: 63)
!707 = !DILocation(line: 164, column: 83, scope: !706)
!708 = !DILocation(line: 164, column: 63, scope: !706)
!709 = !DILocation(line: 164, column: 93, scope: !706)
!710 = !DILocation(line: 164, column: 63, scope: !421)
!711 = !DILocation(line: 164, column: 63, scope: !712)
!712 = !DILexicalBlockFile(scope: !421, file: !353, discriminator: 2)
!713 = !DILocation(line: 164, column: 124, scope: !714)
!714 = !DILexicalBlockFile(scope: !706, file: !353, discriminator: 3)
!715 = !DILocation(line: 164, column: 142, scope: !706)
!716 = !DILocation(line: 164, column: 152, scope: !706)
!717 = !DILocation(line: 164, column: 177, scope: !706)
!718 = !DILocation(line: 164, column: 108, scope: !706)
!719 = !DILocation(line: 164, column: 196, scope: !720)
!720 = !DILexicalBlockFile(scope: !410, file: !353, discriminator: 4)
!721 = !DILocation(line: 164, column: 196, scope: !421)
!722 = !DILocation(line: 164, column: 196, scope: !723)
!723 = !DILexicalBlockFile(scope: !421, file: !353, discriminator: 5)
!724 = !DILocation(line: 165, column: 5, scope: !403)
!725 = !DILocation(line: 165, column: 5, scope: !617)
!726 = !DILocation(line: 166, column: 5, scope: !403)
!727 = !DILocation(line: 167, column: 12, scope: !403)
!728 = !DILocation(line: 167, column: 5, scope: !403)
!729 = !DILocation(line: 168, column: 1, scope: !403)
!730 = !DILocation(line: 72, column: 39, scope: !382)
!731 = !DILocation(line: 74, column: 5, scope: !382)
!732 = !DILocation(line: 74, column: 9, scope: !382)
!733 = !DILocation(line: 75, column: 5, scope: !382)
!734 = !DILocation(line: 75, column: 15, scope: !382)
!735 = !DILocation(line: 75, column: 19, scope: !382)
!736 = !DILocation(line: 76, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !382, file: !353, line: 76, column: 9)
!738 = !DILocation(line: 76, column: 11, scope: !737)
!739 = !DILocation(line: 76, column: 9, scope: !382)
!740 = !DILocation(line: 77, column: 9, scope: !737)
!741 = !DILocation(line: 82, column: 10, scope: !382)
!742 = !DILocation(line: 82, column: 21, scope: !382)
!743 = !DILocation(line: 82, column: 25, scope: !382)
!744 = !DILocation(line: 82, column: 28, scope: !382)
!745 = !{!746, !498, i64 0}
!746 = !{!"spwd", !498, i64 0, !498, i64 8, !521, i64 16, !521, i64 24, !521, i64 32, !521, i64 40, !521, i64 48, !521, i64 56, !521, i64 64}
!747 = !DILocation(line: 82, column: 5, scope: !382)
!748 = !DILocation(line: 83, column: 10, scope: !382)
!749 = !DILocation(line: 83, column: 21, scope: !382)
!750 = !DILocation(line: 83, column: 25, scope: !382)
!751 = !DILocation(line: 83, column: 28, scope: !382)
!752 = !{!746, !498, i64 8}
!753 = !DILocation(line: 83, column: 5, scope: !382)
!754 = !DILocation(line: 84, column: 75, scope: !382)
!755 = !DILocation(line: 84, column: 78, scope: !382)
!756 = !{!746, !521, i64 16}
!757 = !DILocation(line: 84, column: 52, scope: !382)
!758 = !DILocation(line: 84, column: 46, scope: !382)
!759 = !DILocation(line: 84, column: 6, scope: !382)
!760 = !DILocation(line: 84, column: 25, scope: !382)
!761 = !DILocation(line: 84, column: 7, scope: !382)
!762 = !DILocation(line: 84, column: 30, scope: !382)
!763 = !DILocation(line: 84, column: 50, scope: !382)
!764 = !DILocation(line: 85, column: 75, scope: !382)
!765 = !DILocation(line: 85, column: 78, scope: !382)
!766 = !{!746, !521, i64 24}
!767 = !DILocation(line: 85, column: 52, scope: !382)
!768 = !DILocation(line: 85, column: 46, scope: !382)
!769 = !DILocation(line: 85, column: 6, scope: !382)
!770 = !DILocation(line: 85, column: 25, scope: !382)
!771 = !DILocation(line: 85, column: 7, scope: !382)
!772 = !DILocation(line: 85, column: 30, scope: !382)
!773 = !DILocation(line: 85, column: 50, scope: !382)
!774 = !DILocation(line: 86, column: 75, scope: !382)
!775 = !DILocation(line: 86, column: 78, scope: !382)
!776 = !{!746, !521, i64 32}
!777 = !DILocation(line: 86, column: 52, scope: !382)
!778 = !DILocation(line: 86, column: 46, scope: !382)
!779 = !DILocation(line: 86, column: 6, scope: !382)
!780 = !DILocation(line: 86, column: 25, scope: !382)
!781 = !DILocation(line: 86, column: 7, scope: !382)
!782 = !DILocation(line: 86, column: 30, scope: !382)
!783 = !DILocation(line: 86, column: 50, scope: !382)
!784 = !DILocation(line: 87, column: 75, scope: !382)
!785 = !DILocation(line: 87, column: 78, scope: !382)
!786 = !{!746, !521, i64 40}
!787 = !DILocation(line: 87, column: 52, scope: !382)
!788 = !DILocation(line: 87, column: 46, scope: !382)
!789 = !DILocation(line: 87, column: 6, scope: !382)
!790 = !DILocation(line: 87, column: 25, scope: !382)
!791 = !DILocation(line: 87, column: 7, scope: !382)
!792 = !DILocation(line: 87, column: 30, scope: !382)
!793 = !DILocation(line: 87, column: 50, scope: !382)
!794 = !DILocation(line: 88, column: 75, scope: !382)
!795 = !DILocation(line: 88, column: 78, scope: !382)
!796 = !{!746, !521, i64 48}
!797 = !DILocation(line: 88, column: 52, scope: !382)
!798 = !DILocation(line: 88, column: 46, scope: !382)
!799 = !DILocation(line: 88, column: 6, scope: !382)
!800 = !DILocation(line: 88, column: 25, scope: !382)
!801 = !DILocation(line: 88, column: 7, scope: !382)
!802 = !DILocation(line: 88, column: 30, scope: !382)
!803 = !DILocation(line: 88, column: 50, scope: !382)
!804 = !DILocation(line: 89, column: 75, scope: !382)
!805 = !DILocation(line: 89, column: 78, scope: !382)
!806 = !{!746, !521, i64 56}
!807 = !DILocation(line: 89, column: 52, scope: !382)
!808 = !DILocation(line: 89, column: 46, scope: !382)
!809 = !DILocation(line: 89, column: 6, scope: !382)
!810 = !DILocation(line: 89, column: 25, scope: !382)
!811 = !DILocation(line: 89, column: 7, scope: !382)
!812 = !DILocation(line: 89, column: 30, scope: !382)
!813 = !DILocation(line: 89, column: 50, scope: !382)
!814 = !DILocation(line: 90, column: 75, scope: !382)
!815 = !DILocation(line: 90, column: 78, scope: !382)
!816 = !{!746, !521, i64 64}
!817 = !DILocation(line: 90, column: 52, scope: !382)
!818 = !DILocation(line: 90, column: 46, scope: !382)
!819 = !DILocation(line: 90, column: 6, scope: !382)
!820 = !DILocation(line: 90, column: 25, scope: !382)
!821 = !DILocation(line: 90, column: 7, scope: !382)
!822 = !DILocation(line: 90, column: 30, scope: !382)
!823 = !DILocation(line: 90, column: 50, scope: !382)
!824 = !DILocation(line: 91, column: 10, scope: !382)
!825 = !DILocation(line: 91, column: 21, scope: !382)
!826 = !DILocation(line: 91, column: 25, scope: !382)
!827 = !DILocation(line: 91, column: 28, scope: !382)
!828 = !DILocation(line: 91, column: 5, scope: !382)
!829 = !DILocation(line: 92, column: 10, scope: !382)
!830 = !DILocation(line: 92, column: 21, scope: !382)
!831 = !DILocation(line: 92, column: 25, scope: !382)
!832 = !DILocation(line: 92, column: 28, scope: !382)
!833 = !DILocation(line: 92, column: 5, scope: !382)
!834 = !DILocation(line: 97, column: 9, scope: !392)
!835 = !DILocation(line: 97, column: 9, scope: !382)
!836 = !DILocation(line: 98, column: 9, scope: !391)
!837 = !DILocation(line: 98, column: 14, scope: !838)
!838 = !DILexicalBlockFile(scope: !390, file: !353, discriminator: 1)
!839 = !DILocation(line: 98, column: 24, scope: !390)
!840 = !DILocation(line: 98, column: 54, scope: !390)
!841 = !DILocation(line: 98, column: 66, scope: !842)
!842 = distinct !DILexicalBlock(scope: !390, file: !353, line: 98, column: 63)
!843 = !DILocation(line: 98, column: 83, scope: !842)
!844 = !DILocation(line: 98, column: 63, scope: !842)
!845 = !DILocation(line: 98, column: 93, scope: !842)
!846 = !DILocation(line: 98, column: 63, scope: !390)
!847 = !DILocation(line: 98, column: 63, scope: !848)
!848 = !DILexicalBlockFile(scope: !390, file: !353, discriminator: 2)
!849 = !DILocation(line: 98, column: 124, scope: !850)
!850 = !DILexicalBlockFile(scope: !842, file: !353, discriminator: 3)
!851 = !DILocation(line: 98, column: 142, scope: !842)
!852 = !DILocation(line: 98, column: 152, scope: !842)
!853 = !DILocation(line: 98, column: 177, scope: !842)
!854 = !DILocation(line: 98, column: 108, scope: !842)
!855 = !DILocation(line: 98, column: 196, scope: !856)
!856 = !DILexicalBlockFile(scope: !391, file: !353, discriminator: 4)
!857 = !DILocation(line: 98, column: 196, scope: !390)
!858 = !DILocation(line: 98, column: 196, scope: !859)
!859 = !DILexicalBlockFile(scope: !390, file: !353, discriminator: 5)
!860 = !DILocation(line: 99, column: 9, scope: !391)
!861 = !DILocation(line: 102, column: 12, scope: !382)
!862 = !DILocation(line: 102, column: 5, scope: !382)
!863 = !DILocation(line: 103, column: 1, scope: !382)
!864 = !DILocation(line: 61, column: 16, scope: !393)
!865 = !DILocation(line: 61, column: 23, scope: !393)
!866 = !DILocation(line: 61, column: 38, scope: !393)
!867 = !DILocation(line: 63, column: 7, scope: !402)
!868 = !DILocation(line: 63, column: 7, scope: !393)
!869 = !DILocation(line: 64, column: 7, scope: !401)
!870 = !DILocation(line: 64, column: 17, scope: !401)
!871 = !DILocation(line: 64, column: 47, scope: !401)
!872 = !DILocation(line: 64, column: 21, scope: !401)
!873 = !DILocation(line: 65, column: 45, scope: !401)
!874 = !DILocation(line: 65, column: 40, scope: !401)
!875 = !DILocation(line: 65, column: 8, scope: !401)
!876 = !DILocation(line: 65, column: 27, scope: !401)
!877 = !DILocation(line: 65, column: 9, scope: !401)
!878 = !DILocation(line: 65, column: 32, scope: !401)
!879 = !DILocation(line: 65, column: 43, scope: !401)
!880 = !DILocation(line: 66, column: 3, scope: !402)
!881 = !DILocation(line: 66, column: 3, scope: !401)
!882 = !DILocation(line: 67, column: 40, scope: !883)
!883 = distinct !DILexicalBlock(scope: !402, file: !353, line: 66, column: 10)
!884 = !DILocation(line: 67, column: 8, scope: !883)
!885 = !DILocation(line: 67, column: 27, scope: !883)
!886 = !DILocation(line: 67, column: 9, scope: !883)
!887 = !DILocation(line: 67, column: 32, scope: !883)
!888 = !DILocation(line: 67, column: 43, scope: !883)
!889 = !DILocation(line: 68, column: 53, scope: !883)
!890 = !DILocation(line: 70, column: 1, scope: !393)
