; ModuleID = 'programs_new/Python-new/symtablemodule.bc.ll'
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
%struct.symtable = type { %struct._object*, %struct._symtable_entry*, %struct._symtable_entry*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct.PyFutureFeatures*, i32, i32 }
%struct._symtable_entry = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.symtable* }
%struct.PyFutureFeatures = type { i32, i32 }

@PySTEntry_Type = external global %struct._typeobject, align 8
@symtablemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @symtable_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"USE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DEF_GLOBAL\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DEF_LOCAL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DEF_PARAM\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DEF_FREE\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DEF_FREE_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DEF_IMPORT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DEF_BOUND\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TYPE_FUNCTION\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TYPE_CLASS\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"TYPE_MODULE\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"OPT_IMPORT_STAR\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"OPT_TOPLEVEL\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"GLOBAL_EXPLICIT\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"GLOBAL_IMPLICIT\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"CELL\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SCOPE_OFF\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"SCOPE_MASK\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"_symtable\00", align 1
@symtable_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @symtable_symtable, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"symtable\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"Return symbol and scope dictionaries used internally by compiler.\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"sO&s:symtable\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [54 x i8] c"symtable() arg 3 must be 'exec' or 'eval' or 'single'\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__symtable() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !480
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !480
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !360, metadata !481), !dbg !482
  %call = call i32 @PyType_Ready(%struct._typeobject* @PySTEntry_Type), !dbg !483
  %cmp = icmp slt i32 %call, 0, !dbg !485
  br i1 %cmp, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !487

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @symtablemodule, i32 1013), !dbg !488
  store %struct._object* %call1, %struct._object** %m, align 8, !dbg !489, !tbaa !490
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !494, !tbaa !490
  %cmp2 = icmp eq %struct._object* %1, null, !dbg !496
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !497

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !498
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !498

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !499, !tbaa !490
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 16), !dbg !500
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !501, !tbaa !490
  %call6 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1), !dbg !502
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !503, !tbaa !490
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 2), !dbg !504
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !505, !tbaa !490
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 4), !dbg !506
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !507, !tbaa !490
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 32), !dbg !508
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !509, !tbaa !490
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 64), !dbg !510
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !511, !tbaa !490
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 128), !dbg !512
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !513, !tbaa !490
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 134), !dbg !514
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !515, !tbaa !490
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i64 0), !dbg !516
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !517, !tbaa !490
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 1), !dbg !518
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !519, !tbaa !490
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i64 2), !dbg !520
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !521, !tbaa !490
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i64 1), !dbg !522
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !523, !tbaa !490
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i64 2), !dbg !524
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !525, !tbaa !490
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i64 1), !dbg !526
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !527, !tbaa !490
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i64 2), !dbg !528
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !529, !tbaa !490
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i64 3), !dbg !530
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !531, !tbaa !490
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4), !dbg !532
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !533, !tbaa !490
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 5), !dbg !534
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !535, !tbaa !490
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 11), !dbg !536
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !537, !tbaa !490
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i64 15), !dbg !538
  %call25 = call %struct._object* @PyErr_Occurred(), !dbg !539
  %tobool = icmp ne %struct._object* %call25, null, !dbg !539
  br i1 %tobool, label %if.then.26, label %if.end.30, !dbg !540

if.then.26:                                       ; preds = %if.end.4
  br label %do.body, !dbg !541

do.body:                                          ; preds = %if.then.26
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !542
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !542
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !361, metadata !481), !dbg !544
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !545, !tbaa !490
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !544, !tbaa !490
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !546, !tbaa !490
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !548
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !549, !tbaa !550
  %dec = add i64 %25, -1, !dbg !549
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !549, !tbaa !550
  %cmp27 = icmp ne i64 %dec, 0, !dbg !553
  br i1 %cmp27, label %if.then.28, label %if.else, !dbg !554

if.then.28:                                       ; preds = %do.body
  br label %if.end.29, !dbg !555

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !557, !tbaa !490
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !559
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !559, !tbaa !560
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !561
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !561, !tbaa !562
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !566, !tbaa !490
  call void %28(%struct._object* %29), !dbg !567
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !568
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !568
  br label %do.cond, !dbg !570

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !571

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %m, align 8, !dbg !573, !tbaa !490
  br label %if.end.30, !dbg !574

if.end.30:                                        ; preds = %do.end, %if.end.4
  %31 = load %struct._object*, %struct._object** %m, align 8, !dbg !575, !tbaa !490
  store %struct._object* %31, %struct._object** %retval, !dbg !576
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %if.end.30, %if.then.3, %if.then
  %32 = bitcast %struct._object** %m to i8*, !dbg !577
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !577
  %33 = load %struct._object*, %struct._object** %retval, !dbg !577
  ret %struct._object* %33, !dbg !577
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @symtable_symtable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %st = alloca %struct.symtable*, align 8
  %t = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %startstr = alloca i8*, align 8
  %start = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__s1_len43 = alloca i64, align 8
  %__s2_len45 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %__s152 = alloca i8*, align 8
  %__result54 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %__s1_len102 = alloca i64, align 8
  %__s2_len104 = alloca i64, align 8
  %tmp105 = alloca i32, align 4
  %__s1111 = alloca i8*, align 8
  %__result113 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp172 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !490
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !367, metadata !481), !dbg !578
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !490
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !368, metadata !481), !dbg !579
  %0 = bitcast %struct.symtable** %st to i8*, !dbg !580
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !580
  call void @llvm.dbg.declare(metadata %struct.symtable** %st, metadata !369, metadata !481), !dbg !581
  %1 = bitcast %struct._object** %t to i8*, !dbg !582
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !582
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !418, metadata !481), !dbg !583
  %2 = bitcast i8** %str to i8*, !dbg !584
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !584
  call void @llvm.dbg.declare(metadata i8** %str, metadata !419, metadata !481), !dbg !585
  %3 = bitcast %struct._object** %filename to i8*, !dbg !586
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !586
  call void @llvm.dbg.declare(metadata %struct._object** %filename, metadata !420, metadata !481), !dbg !587
  %4 = bitcast i8** %startstr to i8*, !dbg !588
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !588
  call void @llvm.dbg.declare(metadata i8** %startstr, metadata !421, metadata !481), !dbg !589
  %5 = bitcast i32* %start to i8*, !dbg !590
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %start, metadata !422, metadata !481), !dbg !591
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !592, !tbaa !490
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8** %str, i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %filename, i8** %startstr), !dbg !594
  %tobool = icmp ne i32 %call, 0, !dbg !594
  br i1 %tobool, label %if.end, label %if.then, !dbg !595

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !596
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !596

if.end:                                           ; preds = %entry
  %7 = bitcast i64* %__s1_len to i8*, !dbg !597
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !597
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !423, metadata !481), !dbg !598
  %8 = bitcast i64* %__s2_len to i8*, !dbg !597
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !597
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !426, metadata !481), !dbg !599
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.24 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !600

land.lhs.true:                                    ; preds = %if.end
  store i64 4, i64* %__s2_len, align 8, !dbg !601, !tbaa !603
  %9 = load i64, i64* %__s2_len, align 8, !dbg !604, !tbaa !603
  %cmp = icmp ult i64 %9, 4, !dbg !605
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !606

cond.true:                                        ; preds = %land.lhs.true
  %10 = bitcast i8** %__s1 to i8*, !dbg !607
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !607
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !427, metadata !481), !dbg !609
  %11 = load i8*, i8** %startstr, align 8, !dbg !610, !tbaa !490
  store i8* %11, i8** %__s1, align 8, !dbg !609, !tbaa !490
  %12 = bitcast i32* %__result to i8*, !dbg !611
  call void @llvm.lifetime.start(i64 4, i8* %12) #1, !dbg !611
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !429, metadata !481), !dbg !612
  %13 = load i8*, i8** %__s1, align 8, !dbg !613, !tbaa !490
  %arrayidx = getelementptr i8, i8* %13, i64 0, !dbg !613
  %14 = load i8, i8* %arrayidx, align 1, !dbg !613, !tbaa !614
  %conv = zext i8 %14 to i32, !dbg !613
  %15 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), align 1, !dbg !615, !tbaa !614
  %conv3 = zext i8 %15 to i32, !dbg !615
  %sub = sub i32 %conv, %conv3, !dbg !616
  store i32 %sub, i32* %__result, align 4, !dbg !612, !tbaa !617
  %16 = load i64, i64* %__s2_len, align 8, !dbg !618, !tbaa !603
  %cmp4 = icmp ugt i64 %16, 0, !dbg !620
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.36, !dbg !621

land.lhs.true.6:                                  ; preds = %cond.true
  %17 = load i32, i32* %__result, align 4, !dbg !622, !tbaa !617
  %cmp7 = icmp eq i32 %17, 0, !dbg !624
  br i1 %cmp7, label %if.then.9, label %if.end.36, !dbg !625

if.then.9:                                        ; preds = %land.lhs.true.6
  %18 = load i8*, i8** %__s1, align 8, !dbg !626, !tbaa !490
  %arrayidx10 = getelementptr i8, i8* %18, i64 1, !dbg !626
  %19 = load i8, i8* %arrayidx10, align 1, !dbg !626, !tbaa !614
  %conv11 = zext i8 %19 to i32, !dbg !626
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i64 1), align 1, !dbg !629, !tbaa !614
  %conv12 = zext i8 %20 to i32, !dbg !629
  %sub13 = sub i32 %conv11, %conv12, !dbg !630
  store i32 %sub13, i32* %__result, align 4, !dbg !631, !tbaa !617
  %21 = load i64, i64* %__s2_len, align 8, !dbg !632, !tbaa !603
  %cmp14 = icmp ugt i64 %21, 1, !dbg !634
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.35, !dbg !635

land.lhs.true.16:                                 ; preds = %if.then.9
  %22 = load i32, i32* %__result, align 4, !dbg !636, !tbaa !617
  %cmp17 = icmp eq i32 %22, 0, !dbg !638
  br i1 %cmp17, label %if.then.19, label %if.end.35, !dbg !639

if.then.19:                                       ; preds = %land.lhs.true.16
  %23 = load i8*, i8** %__s1, align 8, !dbg !640, !tbaa !490
  %arrayidx20 = getelementptr i8, i8* %23, i64 2, !dbg !640
  %24 = load i8, i8* %arrayidx20, align 1, !dbg !640, !tbaa !614
  %conv21 = zext i8 %24 to i32, !dbg !640
  %25 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i64 2), align 1, !dbg !643, !tbaa !614
  %conv22 = zext i8 %25 to i32, !dbg !643
  %sub23 = sub i32 %conv21, %conv22, !dbg !644
  store i32 %sub23, i32* %__result, align 4, !dbg !645, !tbaa !617
  %26 = load i64, i64* %__s2_len, align 8, !dbg !646, !tbaa !603
  %cmp24 = icmp ugt i64 %26, 2, !dbg !648
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34, !dbg !649

land.lhs.true.26:                                 ; preds = %if.then.19
  %27 = load i32, i32* %__result, align 4, !dbg !650, !tbaa !617
  %cmp27 = icmp eq i32 %27, 0, !dbg !652
  br i1 %cmp27, label %if.then.29, label %if.end.34, !dbg !653

if.then.29:                                       ; preds = %land.lhs.true.26
  %28 = load i8*, i8** %__s1, align 8, !dbg !654, !tbaa !490
  %arrayidx30 = getelementptr i8, i8* %28, i64 3, !dbg !654
  %29 = load i8, i8* %arrayidx30, align 1, !dbg !654, !tbaa !614
  %conv31 = zext i8 %29 to i32, !dbg !654
  %30 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i64 3), align 1, !dbg !656, !tbaa !614
  %conv32 = zext i8 %30 to i32, !dbg !656
  %sub33 = sub i32 %conv31, %conv32, !dbg !657
  store i32 %sub33, i32* %__result, align 4, !dbg !658, !tbaa !617
  br label %if.end.34, !dbg !659

if.end.34:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.then.19
  br label %if.end.35, !dbg !660

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.16, %if.then.9
  br label %if.end.36, !dbg !664

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.6, %cond.true
  %31 = load i32, i32* %__result, align 4, !dbg !668, !tbaa !617
  store i32 %31, i32* %tmp37, !dbg !672, !tbaa !617
  %32 = bitcast i32* %__result to i8*, !dbg !673
  call void @llvm.lifetime.end(i64 4, i8* %32) #1, !dbg !673
  %33 = bitcast i8** %__s1 to i8*, !dbg !673
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !673
  %34 = load i32, i32* %tmp37, !dbg !674, !tbaa !617
  br label %cond.end, !dbg !606

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %35 = load i8*, i8** %startstr, align 8, !dbg !675, !tbaa !490
  %call38 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #1, !dbg !678
  br label %cond.end, !dbg !606

cond.end:                                         ; preds = %cond.false, %if.end.36
  %cond = phi i32 [ %34, %if.end.36 ], [ %call38, %cond.false ], !dbg !606
  store i32 %cond, i32* %tmp, !dbg !679, !tbaa !617
  %36 = bitcast i64* %__s2_len to i8*, !dbg !682
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !682
  %37 = bitcast i64* %__s1_len to i8*, !dbg !682
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !682
  %38 = load i32, i32* %tmp, !dbg !683, !tbaa !617
  %cmp39 = icmp eq i32 %38, 0, !dbg !684
  br i1 %cmp39, label %if.then.41, label %if.else, !dbg !685

if.then.41:                                       ; preds = %cond.end
  store i32 257, i32* %start, align 4, !dbg !686, !tbaa !617
  br label %if.end.168, !dbg !687

if.else:                                          ; preds = %cond.end
  %39 = bitcast i64* %__s1_len43 to i8*, !dbg !688
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !688
  call void @llvm.dbg.declare(metadata i64* %__s1_len43, metadata !430, metadata !481), !dbg !689
  %40 = bitcast i64* %__s2_len45 to i8*, !dbg !688
  call void @llvm.lifetime.start(i64 8, i8* %40) #1, !dbg !688
  call void @llvm.dbg.declare(metadata i64* %__s2_len45, metadata !433, metadata !481), !dbg !690
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.25 to i64)), i64 1), label %land.lhs.true.47, label %cond.false.93, !dbg !691

land.lhs.true.47:                                 ; preds = %if.else
  store i64 4, i64* %__s2_len45, align 8, !dbg !692, !tbaa !603
  %41 = load i64, i64* %__s2_len45, align 8, !dbg !694, !tbaa !603
  %cmp48 = icmp ult i64 %41, 4, !dbg !695
  br i1 %cmp48, label %cond.true.50, label %cond.false.93, !dbg !696

cond.true.50:                                     ; preds = %land.lhs.true.47
  %42 = bitcast i8** %__s152 to i8*, !dbg !697
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !697
  call void @llvm.dbg.declare(metadata i8** %__s152, metadata !434, metadata !481), !dbg !699
  %43 = load i8*, i8** %startstr, align 8, !dbg !700, !tbaa !490
  store i8* %43, i8** %__s152, align 8, !dbg !699, !tbaa !490
  %44 = bitcast i32* %__result54 to i8*, !dbg !701
  call void @llvm.lifetime.start(i64 4, i8* %44) #1, !dbg !701
  call void @llvm.dbg.declare(metadata i32* %__result54, metadata !436, metadata !481), !dbg !702
  %45 = load i8*, i8** %__s152, align 8, !dbg !703, !tbaa !490
  %arrayidx55 = getelementptr i8, i8* %45, i64 0, !dbg !703
  %46 = load i8, i8* %arrayidx55, align 1, !dbg !703, !tbaa !614
  %conv56 = zext i8 %46 to i32, !dbg !703
  %47 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), align 1, !dbg !704, !tbaa !614
  %conv57 = zext i8 %47 to i32, !dbg !704
  %sub58 = sub i32 %conv56, %conv57, !dbg !705
  store i32 %sub58, i32* %__result54, align 4, !dbg !702, !tbaa !617
  %48 = load i64, i64* %__s2_len45, align 8, !dbg !706, !tbaa !603
  %cmp59 = icmp ugt i64 %48, 0, !dbg !708
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.91, !dbg !709

land.lhs.true.61:                                 ; preds = %cond.true.50
  %49 = load i32, i32* %__result54, align 4, !dbg !710, !tbaa !617
  %cmp62 = icmp eq i32 %49, 0, !dbg !712
  br i1 %cmp62, label %if.then.64, label %if.end.91, !dbg !713

if.then.64:                                       ; preds = %land.lhs.true.61
  %50 = load i8*, i8** %__s152, align 8, !dbg !714, !tbaa !490
  %arrayidx65 = getelementptr i8, i8* %50, i64 1, !dbg !714
  %51 = load i8, i8* %arrayidx65, align 1, !dbg !714, !tbaa !614
  %conv66 = zext i8 %51 to i32, !dbg !714
  %52 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 1), align 1, !dbg !717, !tbaa !614
  %conv67 = zext i8 %52 to i32, !dbg !717
  %sub68 = sub i32 %conv66, %conv67, !dbg !718
  store i32 %sub68, i32* %__result54, align 4, !dbg !719, !tbaa !617
  %53 = load i64, i64* %__s2_len45, align 8, !dbg !720, !tbaa !603
  %cmp69 = icmp ugt i64 %53, 1, !dbg !722
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.90, !dbg !723

land.lhs.true.71:                                 ; preds = %if.then.64
  %54 = load i32, i32* %__result54, align 4, !dbg !724, !tbaa !617
  %cmp72 = icmp eq i32 %54, 0, !dbg !726
  br i1 %cmp72, label %if.then.74, label %if.end.90, !dbg !727

if.then.74:                                       ; preds = %land.lhs.true.71
  %55 = load i8*, i8** %__s152, align 8, !dbg !728, !tbaa !490
  %arrayidx75 = getelementptr i8, i8* %55, i64 2, !dbg !728
  %56 = load i8, i8* %arrayidx75, align 1, !dbg !728, !tbaa !614
  %conv76 = zext i8 %56 to i32, !dbg !728
  %57 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 2), align 1, !dbg !731, !tbaa !614
  %conv77 = zext i8 %57 to i32, !dbg !731
  %sub78 = sub i32 %conv76, %conv77, !dbg !732
  store i32 %sub78, i32* %__result54, align 4, !dbg !733, !tbaa !617
  %58 = load i64, i64* %__s2_len45, align 8, !dbg !734, !tbaa !603
  %cmp79 = icmp ugt i64 %58, 2, !dbg !736
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.89, !dbg !737

land.lhs.true.81:                                 ; preds = %if.then.74
  %59 = load i32, i32* %__result54, align 4, !dbg !738, !tbaa !617
  %cmp82 = icmp eq i32 %59, 0, !dbg !740
  br i1 %cmp82, label %if.then.84, label %if.end.89, !dbg !741

if.then.84:                                       ; preds = %land.lhs.true.81
  %60 = load i8*, i8** %__s152, align 8, !dbg !742, !tbaa !490
  %arrayidx85 = getelementptr i8, i8* %60, i64 3, !dbg !742
  %61 = load i8, i8* %arrayidx85, align 1, !dbg !742, !tbaa !614
  %conv86 = zext i8 %61 to i32, !dbg !742
  %62 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i64 3), align 1, !dbg !744, !tbaa !614
  %conv87 = zext i8 %62 to i32, !dbg !744
  %sub88 = sub i32 %conv86, %conv87, !dbg !745
  store i32 %sub88, i32* %__result54, align 4, !dbg !746, !tbaa !617
  br label %if.end.89, !dbg !747

if.end.89:                                        ; preds = %if.then.84, %land.lhs.true.81, %if.then.74
  br label %if.end.90, !dbg !748

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.71, %if.then.64
  br label %if.end.91, !dbg !752

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.61, %cond.true.50
  %63 = load i32, i32* %__result54, align 4, !dbg !756, !tbaa !617
  store i32 %63, i32* %tmp92, !dbg !760, !tbaa !617
  %64 = bitcast i32* %__result54 to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 4, i8* %64) #1, !dbg !761
  %65 = bitcast i8** %__s152 to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !761
  %66 = load i32, i32* %tmp92, !dbg !762, !tbaa !617
  br label %cond.end.95, !dbg !696

cond.false.93:                                    ; preds = %land.lhs.true.47, %if.else
  %67 = load i8*, i8** %startstr, align 8, !dbg !763, !tbaa !490
  %call94 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #1, !dbg !766
  br label %cond.end.95, !dbg !696

cond.end.95:                                      ; preds = %cond.false.93, %if.end.91
  %cond96 = phi i32 [ %66, %if.end.91 ], [ %call94, %cond.false.93 ], !dbg !696
  store i32 %cond96, i32* %tmp46, !dbg !767, !tbaa !617
  %68 = bitcast i64* %__s2_len45 to i8*, !dbg !770
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !770
  %69 = bitcast i64* %__s1_len43 to i8*, !dbg !770
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !770
  %70 = load i32, i32* %tmp46, !dbg !771, !tbaa !617
  %cmp97 = icmp eq i32 %70, 0, !dbg !772
  br i1 %cmp97, label %if.then.99, label %if.else.100, !dbg !773

if.then.99:                                       ; preds = %cond.end.95
  store i32 258, i32* %start, align 4, !dbg !774, !tbaa !617
  br label %if.end.167, !dbg !775

if.else.100:                                      ; preds = %cond.end.95
  %71 = bitcast i64* %__s1_len102 to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !776
  call void @llvm.dbg.declare(metadata i64* %__s1_len102, metadata !437, metadata !481), !dbg !777
  %72 = bitcast i64* %__s2_len104 to i8*, !dbg !776
  call void @llvm.lifetime.start(i64 8, i8* %72) #1, !dbg !776
  call void @llvm.dbg.declare(metadata i64* %__s2_len104, metadata !440, metadata !481), !dbg !778
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.26 to i64)), i64 1), label %land.lhs.true.106, label %cond.false.152, !dbg !779

land.lhs.true.106:                                ; preds = %if.else.100
  store i64 6, i64* %__s2_len104, align 8, !dbg !780, !tbaa !603
  %73 = load i64, i64* %__s2_len104, align 8, !dbg !782, !tbaa !603
  %cmp107 = icmp ult i64 %73, 4, !dbg !783
  br i1 %cmp107, label %cond.true.109, label %cond.false.152, !dbg !784

cond.true.109:                                    ; preds = %land.lhs.true.106
  %74 = bitcast i8** %__s1111 to i8*, !dbg !785
  call void @llvm.lifetime.start(i64 8, i8* %74) #1, !dbg !785
  call void @llvm.dbg.declare(metadata i8** %__s1111, metadata !441, metadata !481), !dbg !787
  %75 = load i8*, i8** %startstr, align 8, !dbg !788, !tbaa !490
  store i8* %75, i8** %__s1111, align 8, !dbg !787, !tbaa !490
  %76 = bitcast i32* %__result113 to i8*, !dbg !789
  call void @llvm.lifetime.start(i64 4, i8* %76) #1, !dbg !789
  call void @llvm.dbg.declare(metadata i32* %__result113, metadata !443, metadata !481), !dbg !790
  %77 = load i8*, i8** %__s1111, align 8, !dbg !791, !tbaa !490
  %arrayidx114 = getelementptr i8, i8* %77, i64 0, !dbg !791
  %78 = load i8, i8* %arrayidx114, align 1, !dbg !791, !tbaa !614
  %conv115 = zext i8 %78 to i32, !dbg !791
  %79 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), align 1, !dbg !792, !tbaa !614
  %conv116 = zext i8 %79 to i32, !dbg !792
  %sub117 = sub i32 %conv115, %conv116, !dbg !793
  store i32 %sub117, i32* %__result113, align 4, !dbg !790, !tbaa !617
  %80 = load i64, i64* %__s2_len104, align 8, !dbg !794, !tbaa !603
  %cmp118 = icmp ugt i64 %80, 0, !dbg !796
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.150, !dbg !797

land.lhs.true.120:                                ; preds = %cond.true.109
  %81 = load i32, i32* %__result113, align 4, !dbg !798, !tbaa !617
  %cmp121 = icmp eq i32 %81, 0, !dbg !800
  br i1 %cmp121, label %if.then.123, label %if.end.150, !dbg !801

if.then.123:                                      ; preds = %land.lhs.true.120
  %82 = load i8*, i8** %__s1111, align 8, !dbg !802, !tbaa !490
  %arrayidx124 = getelementptr i8, i8* %82, i64 1, !dbg !802
  %83 = load i8, i8* %arrayidx124, align 1, !dbg !802, !tbaa !614
  %conv125 = zext i8 %83 to i32, !dbg !802
  %84 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1), align 1, !dbg !805, !tbaa !614
  %conv126 = zext i8 %84 to i32, !dbg !805
  %sub127 = sub i32 %conv125, %conv126, !dbg !806
  store i32 %sub127, i32* %__result113, align 4, !dbg !807, !tbaa !617
  %85 = load i64, i64* %__s2_len104, align 8, !dbg !808, !tbaa !603
  %cmp128 = icmp ugt i64 %85, 1, !dbg !810
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.149, !dbg !811

land.lhs.true.130:                                ; preds = %if.then.123
  %86 = load i32, i32* %__result113, align 4, !dbg !812, !tbaa !617
  %cmp131 = icmp eq i32 %86, 0, !dbg !814
  br i1 %cmp131, label %if.then.133, label %if.end.149, !dbg !815

if.then.133:                                      ; preds = %land.lhs.true.130
  %87 = load i8*, i8** %__s1111, align 8, !dbg !816, !tbaa !490
  %arrayidx134 = getelementptr i8, i8* %87, i64 2, !dbg !816
  %88 = load i8, i8* %arrayidx134, align 1, !dbg !816, !tbaa !614
  %conv135 = zext i8 %88 to i32, !dbg !816
  %89 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 2), align 1, !dbg !819, !tbaa !614
  %conv136 = zext i8 %89 to i32, !dbg !819
  %sub137 = sub i32 %conv135, %conv136, !dbg !820
  store i32 %sub137, i32* %__result113, align 4, !dbg !821, !tbaa !617
  %90 = load i64, i64* %__s2_len104, align 8, !dbg !822, !tbaa !603
  %cmp138 = icmp ugt i64 %90, 2, !dbg !824
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.148, !dbg !825

land.lhs.true.140:                                ; preds = %if.then.133
  %91 = load i32, i32* %__result113, align 4, !dbg !826, !tbaa !617
  %cmp141 = icmp eq i32 %91, 0, !dbg !828
  br i1 %cmp141, label %if.then.143, label %if.end.148, !dbg !829

if.then.143:                                      ; preds = %land.lhs.true.140
  %92 = load i8*, i8** %__s1111, align 8, !dbg !830, !tbaa !490
  %arrayidx144 = getelementptr i8, i8* %92, i64 3, !dbg !830
  %93 = load i8, i8* %arrayidx144, align 1, !dbg !830, !tbaa !614
  %conv145 = zext i8 %93 to i32, !dbg !830
  %94 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 3), align 1, !dbg !832, !tbaa !614
  %conv146 = zext i8 %94 to i32, !dbg !832
  %sub147 = sub i32 %conv145, %conv146, !dbg !833
  store i32 %sub147, i32* %__result113, align 4, !dbg !834, !tbaa !617
  br label %if.end.148, !dbg !835

if.end.148:                                       ; preds = %if.then.143, %land.lhs.true.140, %if.then.133
  br label %if.end.149, !dbg !836

if.end.149:                                       ; preds = %if.end.148, %land.lhs.true.130, %if.then.123
  br label %if.end.150, !dbg !840

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.120, %cond.true.109
  %95 = load i32, i32* %__result113, align 4, !dbg !844, !tbaa !617
  store i32 %95, i32* %tmp151, !dbg !848, !tbaa !617
  %96 = bitcast i32* %__result113 to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 4, i8* %96) #1, !dbg !849
  %97 = bitcast i8** %__s1111 to i8*, !dbg !849
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !849
  %98 = load i32, i32* %tmp151, !dbg !850, !tbaa !617
  br label %cond.end.154, !dbg !784

cond.false.152:                                   ; preds = %land.lhs.true.106, %if.else.100
  %99 = load i8*, i8** %startstr, align 8, !dbg !851, !tbaa !490
  %call153 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #1, !dbg !854
  br label %cond.end.154, !dbg !784

cond.end.154:                                     ; preds = %cond.false.152, %if.end.150
  %cond155 = phi i32 [ %98, %if.end.150 ], [ %call153, %cond.false.152 ], !dbg !784
  store i32 %cond155, i32* %tmp105, !dbg !855, !tbaa !617
  %100 = bitcast i64* %__s2_len104 to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !858
  %101 = bitcast i64* %__s1_len102 to i8*, !dbg !858
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !858
  %102 = load i32, i32* %tmp105, !dbg !859, !tbaa !617
  %cmp156 = icmp eq i32 %102, 0, !dbg !860
  br i1 %cmp156, label %if.then.158, label %if.else.159, !dbg !861

if.then.158:                                      ; preds = %cond.end.154
  store i32 256, i32* %start, align 4, !dbg !862, !tbaa !617
  br label %if.end.166, !dbg !863

if.else.159:                                      ; preds = %cond.end.154
  %103 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !864, !tbaa !490
  call void @PyErr_SetString(%struct._object* %103, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0)), !dbg !865
  br label %do.body, !dbg !866

do.body:                                          ; preds = %if.else.159
  %104 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !867
  call void @llvm.lifetime.start(i64 8, i8* %104) #1, !dbg !867
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !444, metadata !481), !dbg !869
  %105 = load %struct._object*, %struct._object** %filename, align 8, !dbg !870, !tbaa !490
  store %struct._object* %105, %struct._object** %_py_decref_tmp, align 8, !dbg !869, !tbaa !490
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !871, !tbaa !490
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0, !dbg !873
  %107 = load i64, i64* %ob_refcnt, align 8, !dbg !874, !tbaa !550
  %dec = add i64 %107, -1, !dbg !874
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !874, !tbaa !550
  %cmp161 = icmp ne i64 %dec, 0, !dbg !875
  br i1 %cmp161, label %if.then.163, label %if.else.164, !dbg !876

if.then.163:                                      ; preds = %do.body
  br label %if.end.165, !dbg !877

if.else.164:                                      ; preds = %do.body
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !879, !tbaa !490
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 1, !dbg !881
  %109 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !881, !tbaa !560
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %109, i32 0, i32 4, !dbg !882
  %110 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !882, !tbaa !562
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !883, !tbaa !490
  call void %110(%struct._object* %111), !dbg !884
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.164, %if.then.163
  %112 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !885
  call void @llvm.lifetime.end(i64 8, i8* %112) #1, !dbg !885
  br label %do.cond, !dbg !887

do.cond:                                          ; preds = %if.end.165
  br label %do.end, !dbg !888

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !890
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !890

if.end.166:                                       ; preds = %if.then.158
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.99
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.41
  %113 = load i8*, i8** %str, align 8, !dbg !891, !tbaa !490
  %114 = load %struct._object*, %struct._object** %filename, align 8, !dbg !892, !tbaa !490
  %115 = load i32, i32* %start, align 4, !dbg !893, !tbaa !617
  %call169 = call %struct.symtable* @Py_SymtableStringObject(i8* %113, %struct._object* %114, i32 %115), !dbg !894
  store %struct.symtable* %call169, %struct.symtable** %st, align 8, !dbg !895, !tbaa !490
  br label %do.body.170, !dbg !896

do.body.170:                                      ; preds = %if.end.168
  %116 = bitcast %struct._object** %_py_decref_tmp172 to i8*, !dbg !897
  call void @llvm.lifetime.start(i64 8, i8* %116) #1, !dbg !897
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp172, metadata !447, metadata !481), !dbg !899
  %117 = load %struct._object*, %struct._object** %filename, align 8, !dbg !900, !tbaa !490
  store %struct._object* %117, %struct._object** %_py_decref_tmp172, align 8, !dbg !899, !tbaa !490
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8, !dbg !901, !tbaa !490
  %ob_refcnt173 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0, !dbg !903
  %119 = load i64, i64* %ob_refcnt173, align 8, !dbg !904, !tbaa !550
  %dec174 = add i64 %119, -1, !dbg !904
  store i64 %dec174, i64* %ob_refcnt173, align 8, !dbg !904, !tbaa !550
  %cmp175 = icmp ne i64 %dec174, 0, !dbg !905
  br i1 %cmp175, label %if.then.177, label %if.else.178, !dbg !906

if.then.177:                                      ; preds = %do.body.170
  br label %if.end.181, !dbg !907

if.else.178:                                      ; preds = %do.body.170
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8, !dbg !909, !tbaa !490
  %ob_type179 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1, !dbg !911
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type179, align 8, !dbg !911, !tbaa !560
  %tp_dealloc180 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4, !dbg !912
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc180, align 8, !dbg !912, !tbaa !562
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8, !dbg !913, !tbaa !490
  call void %122(%struct._object* %123), !dbg !914
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.then.177
  %124 = bitcast %struct._object** %_py_decref_tmp172 to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !915
  br label %do.cond.182, !dbg !917

do.cond.182:                                      ; preds = %if.end.181
  br label %do.end.183, !dbg !918

do.end.183:                                       ; preds = %do.cond.182
  %125 = load %struct.symtable*, %struct.symtable** %st, align 8, !dbg !920, !tbaa !490
  %cmp184 = icmp eq %struct.symtable* %125, null, !dbg !922
  br i1 %cmp184, label %if.then.186, label %if.end.187, !dbg !923

if.then.186:                                      ; preds = %do.end.183
  store %struct._object* null, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !924

if.end.187:                                       ; preds = %do.end.183
  %126 = load %struct.symtable*, %struct.symtable** %st, align 8, !dbg !925, !tbaa !490
  %st_top = getelementptr inbounds %struct.symtable, %struct.symtable* %126, i32 0, i32 2, !dbg !926
  %127 = load %struct._symtable_entry*, %struct._symtable_entry** %st_top, align 8, !dbg !926, !tbaa !927
  %128 = bitcast %struct._symtable_entry* %127 to %struct._object*, !dbg !929
  store %struct._object* %128, %struct._object** %t, align 8, !dbg !930, !tbaa !490
  %129 = load %struct._object*, %struct._object** %t, align 8, !dbg !931, !tbaa !490
  %ob_refcnt188 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0, !dbg !932
  %130 = load i64, i64* %ob_refcnt188, align 8, !dbg !933, !tbaa !550
  %inc = add i64 %130, 1, !dbg !933
  store i64 %inc, i64* %ob_refcnt188, align 8, !dbg !933, !tbaa !550
  %131 = load %struct.symtable*, %struct.symtable** %st, align 8, !dbg !934, !tbaa !490
  %st_future = getelementptr inbounds %struct.symtable, %struct.symtable* %131, i32 0, i32 8, !dbg !935
  %132 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %st_future, align 8, !dbg !935, !tbaa !936
  %133 = bitcast %struct.PyFutureFeatures* %132 to i8*, !dbg !937
  call void @PyMem_Free(i8* %133), !dbg !938
  %134 = load %struct.symtable*, %struct.symtable** %st, align 8, !dbg !939, !tbaa !490
  call void @PySymtable_Free(%struct.symtable* %134), !dbg !940
  %135 = load %struct._object*, %struct._object** %t, align 8, !dbg !941, !tbaa !490
  store %struct._object* %135, %struct._object** %retval, !dbg !942
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !942

cleanup:                                          ; preds = %if.end.187, %if.then.186, %do.end, %if.then
  %136 = bitcast i32* %start to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 4, i8* %136) #1, !dbg !943
  %137 = bitcast i8** %startstr to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 8, i8* %137) #1, !dbg !943
  %138 = bitcast %struct._object** %filename to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 8, i8* %138) #1, !dbg !943
  %139 = bitcast i8** %str to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 8, i8* %139) #1, !dbg !943
  %140 = bitcast %struct._object** %t to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 8, i8* %140) #1, !dbg !943
  %141 = bitcast %struct.symtable** %st to i8*, !dbg !943
  call void @llvm.lifetime.end(i64 8, i8* %141) #1, !dbg !943
  %142 = load %struct._object*, %struct._object** %retval, !dbg !943
  ret %struct._object* %142, !dbg !943
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct.symtable* @Py_SymtableStringObject(i8*, %struct._object*, i32) #3

declare void @PyMem_Free(i8*) #3

declare void @PySymtable_Free(%struct.symtable*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!477, !478}
!llvm.ident = !{!479}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !354, globals: !449)
!1 = !DIFile(filename: "symtablemodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_block_type", file: !4, line: 13, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/symtable.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "FunctionBlock", value: 0)
!7 = !DIEnumerator(name: "ClassBlock", value: 1)
!8 = !DIEnumerator(name: "ModuleBlock", value: 2)
!9 = !{!10, !11, !100, !349, !351, !35}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !14, file: !13, line: 108, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !27)
!27 = !{!28, !34, !38, !39, !40, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !26, file: !13, line: 335, baseType: !29, size: 192, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !13, line: 112, baseType: !12, size: 128, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !30, file: !13, line: 113, baseType: !17, size: 64, align: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !26, file: !13, line: 336, baseType: !35, size: 64, align: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !26, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !26, file: !13, line: 341, baseType: !41, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !11}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !26, file: !13, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !11, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !96, !97, !98, !99, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !53, file: !54, line: 253, baseType: !58, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !53, file: !54, line: 254, baseType: !58, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !53, file: !54, line: 255, baseType: !58, size: 64, align: 64, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !53, file: !54, line: 256, baseType: !58, size: 64, align: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !53, file: !54, line: 257, baseType: !58, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !53, file: !54, line: 258, baseType: !58, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !53, file: !54, line: 259, baseType: !58, size: 64, align: 64, offset: 512)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !53, file: !54, line: 261, baseType: !58, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !53, file: !54, line: 262, baseType: !58, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !53, file: !54, line: 263, baseType: !58, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !53, file: !54, line: 265, baseType: !70, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !54, line: 161, size: 192, align: 64, elements: !72)
!72 = !{!73, !74, !76}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !71, file: !54, line: 162, baseType: !70, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !71, file: !54, line: 163, baseType: !75, size: 64, align: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !71, file: !54, line: 167, baseType: !50, size: 32, align: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !53, file: !54, line: 267, baseType: !75, size: 64, align: 64, offset: 832)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !53, file: !54, line: 269, baseType: !50, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !53, file: !54, line: 273, baseType: !50, size: 32, align: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !53, file: !54, line: 275, baseType: !81, size: 64, align: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 140, baseType: !23)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 141, baseType: !23)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !10, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !10, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !10, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !10, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !26, file: !13, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!11, !11, !58}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !26, file: !13, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!50, !11, !58, !11}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !26, file: !13, line: 345, baseType: !10, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !26, file: !13, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!11, !11}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !26, file: !13, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !13, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!11, !11, !11}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !13, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !13, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !13, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !13, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !13, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!11, !11, !11, !11}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !13, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !13, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !13, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !13, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!50, !11}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !13, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !13, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !13, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !13, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !13, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !13, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !13, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !13, line: 258, baseType: !10, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !13, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !13, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !13, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !13, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !13, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !13, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !13, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !13, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !13, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !13, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !13, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !13, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !13, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !13, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !13, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !13, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !26, file: !13, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !13, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!17, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !13, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !13, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!11, !11, !17}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !13, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !13, line: 285, baseType: !10, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !13, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !11, !17, !11}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !13, line: 287, baseType: !10, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !13, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !11, !11}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !13, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !13, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !26, file: !13, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !13, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !13, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !13, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!50, !11, !11, !11}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !26, file: !13, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !11}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !26, file: !13, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !26, file: !13, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !26, file: !13, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !26, file: !13, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !26, file: !13, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !13, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!50, !11, !241, !50}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !13, line: 179, baseType: !10, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !13, line: 180, baseType: !11, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !13, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !13, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !13, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !13, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !13, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !13, line: 190, baseType: !10, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !13, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !11, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !26, file: !13, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !26, file: !13, line: 368, baseType: !35, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !26, file: !13, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!50, !11, !269, !10}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !11, !10}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !26, file: !13, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !26, file: !13, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!11, !11, !11, !50}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !26, file: !13, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !26, file: !13, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !26, file: !13, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !26, file: !13, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !35, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !35, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !26, file: !13, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !26, file: !13, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !58, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!11, !11, !10}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!50, !11, !11, !10}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !10, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !26, file: !13, line: 392, baseType: !25, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !26, file: !13, line: 393, baseType: !11, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !26, file: !13, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !26, file: !13, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !26, file: !13, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !26, file: !13, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !26, file: !13, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!11, !25, !17}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !26, file: !13, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!11, !25, !11, !11}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !26, file: !13, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !10}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !26, file: !13, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !26, file: !13, line: 402, baseType: !11, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !26, file: !13, line: 403, baseType: !11, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !26, file: !13, line: 404, baseType: !11, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !26, file: !13, line: 405, baseType: !11, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !26, file: !13, line: 406, baseType: !11, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !26, file: !13, line: 407, baseType: !41, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !26, file: !13, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !26, file: !13, line: 412, baseType: !41, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!354 = !{!355, !365}
!355 = !DISubprogram(name: "PyInit__symtable", scope: !356, file: !356, line: 64, type: !357, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__symtable, variables: !359)
!356 = !DIFile(filename: "./Modules/symtablemodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!357 = !DISubroutineType(types: !358)
!358 = !{!11}
!359 = !{!360, !361}
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !355, file: !356, line: 66, type: !11)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !362, file: !356, line: 100, type: !11)
!362 = distinct !DILexicalBlock(scope: !363, file: !356, line: 100, column: 12)
!363 = distinct !DILexicalBlock(scope: !364, file: !356, line: 99, column: 27)
!364 = distinct !DILexicalBlock(scope: !355, file: !356, line: 99, column: 9)
!365 = !DISubprogram(name: "symtable_symtable", scope: !356, file: !356, line: 8, type: !132, isLocal: true, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @symtable_symtable, variables: !366)
!366 = !{!367, !368, !369, !418, !419, !420, !421, !422, !423, !426, !427, !429, !430, !433, !434, !436, !437, !440, !441, !443, !444, !447}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !365, file: !356, line: 8, type: !11)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !365, file: !356, line: 8, type: !11)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !365, file: !356, line: 10, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "symtable", file: !4, line: 18, size: 640, align: 64, elements: !372)
!372 = !{!373, !374, !402, !403, !404, !405, !406, !407, !408, !416, !417}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_filename", scope: !371, file: !4, line: 19, baseType: !11, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "st_cur", scope: !371, file: !4, line: 21, baseType: !375, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "_symtable_entry", file: !4, line: 37, size: 896, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !376, file: !4, line: 38, baseType: !12, size: 128, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ste_id", scope: !376, file: !4, line: 39, baseType: !11, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ste_symbols", scope: !376, file: !4, line: 40, baseType: !11, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ste_name", scope: !376, file: !4, line: 41, baseType: !11, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varnames", scope: !376, file: !4, line: 42, baseType: !11, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ste_children", scope: !376, file: !4, line: 43, baseType: !11, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ste_directives", scope: !376, file: !4, line: 44, baseType: !11, size: 64, align: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ste_type", scope: !376, file: !4, line: 45, baseType: !386, size: 32, align: 32, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_block_ty", file: !4, line: 14, baseType: !3)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ste_unoptimized", scope: !376, file: !4, line: 46, baseType: !50, size: 32, align: 32, offset: 544)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ste_nested", scope: !376, file: !4, line: 47, baseType: !50, size: 32, align: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ste_free", scope: !376, file: !4, line: 48, baseType: !347, size: 1, align: 32, offset: 608)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ste_child_free", scope: !376, file: !4, line: 49, baseType: !347, size: 1, align: 32, offset: 609)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ste_generator", scope: !376, file: !4, line: 51, baseType: !347, size: 1, align: 32, offset: 610)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varargs", scope: !376, file: !4, line: 52, baseType: !347, size: 1, align: 32, offset: 611)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varkeywords", scope: !376, file: !4, line: 53, baseType: !347, size: 1, align: 32, offset: 612)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ste_returns_value", scope: !376, file: !4, line: 54, baseType: !347, size: 1, align: 32, offset: 613)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ste_needs_class_closure", scope: !376, file: !4, line: 56, baseType: !347, size: 1, align: 32, offset: 614)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ste_lineno", scope: !376, file: !4, line: 59, baseType: !50, size: 32, align: 32, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ste_col_offset", scope: !376, file: !4, line: 60, baseType: !50, size: 32, align: 32, offset: 672)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ste_opt_lineno", scope: !376, file: !4, line: 61, baseType: !50, size: 32, align: 32, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ste_opt_col_offset", scope: !376, file: !4, line: 62, baseType: !50, size: 32, align: 32, offset: 736)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ste_tmpname", scope: !376, file: !4, line: 63, baseType: !50, size: 32, align: 32, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ste_table", scope: !376, file: !4, line: 64, baseType: !370, size: 64, align: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "st_top", scope: !371, file: !4, line: 22, baseType: !375, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !371, file: !4, line: 23, baseType: !11, size: 64, align: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "st_stack", scope: !371, file: !4, line: 25, baseType: !11, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "st_global", scope: !371, file: !4, line: 26, baseType: !11, size: 64, align: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_nblocks", scope: !371, file: !4, line: 27, baseType: !50, size: 32, align: 32, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_private", scope: !371, file: !4, line: 30, baseType: !11, size: 64, align: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "st_future", scope: !371, file: !4, line: 31, baseType: !409, size: 64, align: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFutureFeatures", file: !411, line: 20, baseType: !412)
!411 = !DIFile(filename: "Include/compile.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 17, size: 64, align: 32, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ff_features", scope: !412, file: !411, line: 18, baseType: !50, size: 32, align: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ff_lineno", scope: !412, file: !411, line: 19, baseType: !50, size: 32, align: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !371, file: !4, line: 33, baseType: !50, size: 32, align: 32, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_limit", scope: !371, file: !4, line: 34, baseType: !50, size: 32, align: 32, offset: 608)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !365, file: !356, line: 11, type: !11)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !365, file: !356, line: 13, type: !58)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !365, file: !356, line: 14, type: !11)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "startstr", scope: !365, file: !356, line: 15, type: !58)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !365, file: !356, line: 16, type: !50)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !424, file: !356, line: 21, type: !100)
!424 = distinct !DILexicalBlock(scope: !425, file: !356, line: 21, column: 24)
!425 = distinct !DILexicalBlock(scope: !365, file: !356, line: 21, column: 9)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !424, file: !356, line: 21, type: !100)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !428, file: !356, line: 21, type: !351)
!428 = distinct !DILexicalBlock(scope: !424, file: !356, line: 21, column: 1627)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !428, file: !356, line: 21, type: !50)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !431, file: !356, line: 23, type: !100)
!431 = distinct !DILexicalBlock(scope: !432, file: !356, line: 23, column: 29)
!432 = distinct !DILexicalBlock(scope: !425, file: !356, line: 23, column: 14)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !431, file: !356, line: 23, type: !100)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !435, file: !356, line: 23, type: !351)
!435 = distinct !DILexicalBlock(scope: !431, file: !356, line: 23, column: 1632)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !435, file: !356, line: 23, type: !50)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !438, file: !356, line: 25, type: !100)
!438 = distinct !DILexicalBlock(scope: !439, file: !356, line: 25, column: 29)
!439 = distinct !DILexicalBlock(scope: !432, file: !356, line: 25, column: 14)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !438, file: !356, line: 25, type: !100)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !442, file: !356, line: 25, type: !351)
!442 = distinct !DILexicalBlock(scope: !438, file: !356, line: 25, column: 1662)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !442, file: !356, line: 25, type: !50)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !356, line: 30, type: !11)
!445 = distinct !DILexicalBlock(scope: !446, file: !356, line: 30, column: 12)
!446 = distinct !DILexicalBlock(scope: !439, file: !356, line: 27, column: 10)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !448, file: !356, line: 34, type: !11)
!448 = distinct !DILexicalBlock(scope: !365, file: !356, line: 34, column: 8)
!449 = !{!450, !473}
!450 = !DIGlobalVariable(name: "symtablemodule", scope: !0, file: !356, line: 51, type: !451, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @symtablemodule)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !452, line: 47, size: 832, align: 64, elements: !453)
!452 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!453 = !{!454, !463, !464, !465, !466, !469, !470, !471, !472}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !451, file: !452, line: 48, baseType: !455, size: 320, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !452, line: 38, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !452, line: 33, size: 320, align: 64, elements: !457)
!457 = !{!458, !459, !461, !462}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !456, file: !452, line: 34, baseType: !12, size: 128, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !456, file: !452, line: 35, baseType: !460, size: 64, align: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !456, file: !452, line: 36, baseType: !17, size: 64, align: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !456, file: !452, line: 37, baseType: !11, size: 64, align: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !451, file: !452, line: 49, baseType: !35, size: 64, align: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !451, file: !452, line: 50, baseType: !35, size: 64, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !451, file: !452, line: 51, baseType: !17, size: 64, align: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !451, file: !452, line: 52, baseType: !467, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !451, file: !452, line: 53, baseType: !148, size: 64, align: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !451, file: !452, line: 54, baseType: !265, size: 64, align: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !451, file: !452, line: 55, baseType: !148, size: 64, align: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !451, file: !452, line: 56, baseType: !335, size: 64, align: 64, offset: 768)
!473 = !DIGlobalVariable(name: "symtable_methods", scope: !0, file: !356, line: 44, type: !474, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @symtable_methods)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 512, align: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !{i32 2, !"Dwarf Version", i32 4}
!478 = !{i32 2, !"Debug Info Version", i32 3}
!479 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!480 = !DILocation(line: 66, column: 5, scope: !355)
!481 = !DIExpression()
!482 = !DILocation(line: 66, column: 15, scope: !355)
!483 = !DILocation(line: 68, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !355, file: !356, line: 68, column: 9)
!485 = !DILocation(line: 68, column: 39, scope: !484)
!486 = !DILocation(line: 68, column: 9, scope: !355)
!487 = !DILocation(line: 69, column: 9, scope: !484)
!488 = !DILocation(line: 71, column: 9, scope: !355)
!489 = !DILocation(line: 71, column: 7, scope: !355)
!490 = !{!491, !491, i64 0}
!491 = !{!"any pointer", !492, i64 0}
!492 = !{!"omnipotent char", !493, i64 0}
!493 = !{!"Simple C/C++ TBAA"}
!494 = !DILocation(line: 72, column: 9, scope: !495)
!495 = distinct !DILexicalBlock(scope: !355, file: !356, line: 72, column: 9)
!496 = !DILocation(line: 72, column: 11, scope: !495)
!497 = !DILocation(line: 72, column: 9, scope: !355)
!498 = !DILocation(line: 73, column: 9, scope: !495)
!499 = !DILocation(line: 74, column: 29, scope: !355)
!500 = !DILocation(line: 74, column: 5, scope: !355)
!501 = !DILocation(line: 75, column: 29, scope: !355)
!502 = !DILocation(line: 75, column: 5, scope: !355)
!503 = !DILocation(line: 76, column: 29, scope: !355)
!504 = !DILocation(line: 76, column: 5, scope: !355)
!505 = !DILocation(line: 77, column: 29, scope: !355)
!506 = !DILocation(line: 77, column: 5, scope: !355)
!507 = !DILocation(line: 78, column: 29, scope: !355)
!508 = !DILocation(line: 78, column: 5, scope: !355)
!509 = !DILocation(line: 79, column: 29, scope: !355)
!510 = !DILocation(line: 79, column: 5, scope: !355)
!511 = !DILocation(line: 80, column: 29, scope: !355)
!512 = !DILocation(line: 80, column: 5, scope: !355)
!513 = !DILocation(line: 81, column: 29, scope: !355)
!514 = !DILocation(line: 81, column: 5, scope: !355)
!515 = !DILocation(line: 83, column: 29, scope: !355)
!516 = !DILocation(line: 83, column: 5, scope: !355)
!517 = !DILocation(line: 84, column: 29, scope: !355)
!518 = !DILocation(line: 84, column: 5, scope: !355)
!519 = !DILocation(line: 85, column: 29, scope: !355)
!520 = !DILocation(line: 85, column: 5, scope: !355)
!521 = !DILocation(line: 87, column: 29, scope: !355)
!522 = !DILocation(line: 87, column: 5, scope: !355)
!523 = !DILocation(line: 88, column: 29, scope: !355)
!524 = !DILocation(line: 88, column: 5, scope: !355)
!525 = !DILocation(line: 90, column: 29, scope: !355)
!526 = !DILocation(line: 90, column: 5, scope: !355)
!527 = !DILocation(line: 91, column: 29, scope: !355)
!528 = !DILocation(line: 91, column: 5, scope: !355)
!529 = !DILocation(line: 92, column: 29, scope: !355)
!530 = !DILocation(line: 92, column: 5, scope: !355)
!531 = !DILocation(line: 93, column: 29, scope: !355)
!532 = !DILocation(line: 93, column: 5, scope: !355)
!533 = !DILocation(line: 94, column: 29, scope: !355)
!534 = !DILocation(line: 94, column: 5, scope: !355)
!535 = !DILocation(line: 96, column: 29, scope: !355)
!536 = !DILocation(line: 96, column: 5, scope: !355)
!537 = !DILocation(line: 97, column: 29, scope: !355)
!538 = !DILocation(line: 97, column: 5, scope: !355)
!539 = !DILocation(line: 99, column: 9, scope: !364)
!540 = !DILocation(line: 99, column: 9, scope: !355)
!541 = !DILocation(line: 100, column: 9, scope: !363)
!542 = !DILocation(line: 100, column: 14, scope: !543)
!543 = !DILexicalBlockFile(scope: !362, file: !356, discriminator: 1)
!544 = !DILocation(line: 100, column: 24, scope: !362)
!545 = !DILocation(line: 100, column: 54, scope: !362)
!546 = !DILocation(line: 100, column: 66, scope: !547)
!547 = distinct !DILexicalBlock(scope: !362, file: !356, line: 100, column: 63)
!548 = !DILocation(line: 100, column: 83, scope: !547)
!549 = !DILocation(line: 100, column: 63, scope: !547)
!550 = !{!551, !552, i64 0}
!551 = !{!"_object", !552, i64 0, !491, i64 8}
!552 = !{!"long", !492, i64 0}
!553 = !DILocation(line: 100, column: 93, scope: !547)
!554 = !DILocation(line: 100, column: 63, scope: !362)
!555 = !DILocation(line: 100, column: 63, scope: !556)
!556 = !DILexicalBlockFile(scope: !362, file: !356, discriminator: 2)
!557 = !DILocation(line: 100, column: 124, scope: !558)
!558 = !DILexicalBlockFile(scope: !547, file: !356, discriminator: 3)
!559 = !DILocation(line: 100, column: 142, scope: !547)
!560 = !{!551, !491, i64 8}
!561 = !DILocation(line: 100, column: 152, scope: !547)
!562 = !{!563, !491, i64 48}
!563 = !{!"_typeobject", !564, i64 0, !491, i64 24, !552, i64 32, !552, i64 40, !491, i64 48, !491, i64 56, !491, i64 64, !491, i64 72, !491, i64 80, !491, i64 88, !491, i64 96, !491, i64 104, !491, i64 112, !491, i64 120, !491, i64 128, !491, i64 136, !491, i64 144, !491, i64 152, !491, i64 160, !552, i64 168, !491, i64 176, !491, i64 184, !491, i64 192, !491, i64 200, !552, i64 208, !491, i64 216, !491, i64 224, !491, i64 232, !491, i64 240, !491, i64 248, !491, i64 256, !491, i64 264, !491, i64 272, !491, i64 280, !552, i64 288, !491, i64 296, !491, i64 304, !491, i64 312, !491, i64 320, !491, i64 328, !491, i64 336, !491, i64 344, !491, i64 352, !491, i64 360, !491, i64 368, !491, i64 376, !565, i64 384, !491, i64 392}
!564 = !{!"", !551, i64 0, !552, i64 16}
!565 = !{!"int", !492, i64 0}
!566 = !DILocation(line: 100, column: 177, scope: !547)
!567 = !DILocation(line: 100, column: 108, scope: !547)
!568 = !DILocation(line: 100, column: 196, scope: !569)
!569 = !DILexicalBlockFile(scope: !363, file: !356, discriminator: 4)
!570 = !DILocation(line: 100, column: 196, scope: !362)
!571 = !DILocation(line: 100, column: 196, scope: !572)
!572 = !DILexicalBlockFile(scope: !362, file: !356, discriminator: 5)
!573 = !DILocation(line: 101, column: 11, scope: !363)
!574 = !DILocation(line: 102, column: 5, scope: !363)
!575 = !DILocation(line: 103, column: 12, scope: !355)
!576 = !DILocation(line: 103, column: 5, scope: !355)
!577 = !DILocation(line: 104, column: 1, scope: !355)
!578 = !DILocation(line: 8, column: 29, scope: !365)
!579 = !DILocation(line: 8, column: 45, scope: !365)
!580 = !DILocation(line: 10, column: 5, scope: !365)
!581 = !DILocation(line: 10, column: 22, scope: !365)
!582 = !DILocation(line: 11, column: 5, scope: !365)
!583 = !DILocation(line: 11, column: 15, scope: !365)
!584 = !DILocation(line: 13, column: 5, scope: !365)
!585 = !DILocation(line: 13, column: 11, scope: !365)
!586 = !DILocation(line: 14, column: 5, scope: !365)
!587 = !DILocation(line: 14, column: 15, scope: !365)
!588 = !DILocation(line: 15, column: 5, scope: !365)
!589 = !DILocation(line: 15, column: 11, scope: !365)
!590 = !DILocation(line: 16, column: 5, scope: !365)
!591 = !DILocation(line: 16, column: 9, scope: !365)
!592 = !DILocation(line: 18, column: 27, scope: !593)
!593 = distinct !DILexicalBlock(scope: !365, file: !356, line: 18, column: 9)
!594 = !DILocation(line: 18, column: 10, scope: !593)
!595 = !DILocation(line: 18, column: 9, scope: !365)
!596 = !DILocation(line: 20, column: 9, scope: !593)
!597 = !DILocation(line: 21, column: 26, scope: !424)
!598 = !DILocation(line: 21, column: 33, scope: !424)
!599 = !DILocation(line: 21, column: 43, scope: !424)
!600 = !DILocation(line: 21, column: 1406, scope: !424)
!601 = !DILocation(line: 21, column: 1419, scope: !602)
!602 = !DILexicalBlockFile(scope: !424, file: !356, discriminator: 1)
!603 = !{!552, !552, i64 0}
!604 = !DILocation(line: 21, column: 1438, scope: !424)
!605 = !DILocation(line: 21, column: 1447, scope: !424)
!606 = !DILocation(line: 21, column: 1296, scope: !424)
!607 = !DILocation(line: 21, column: 1629, scope: !608)
!608 = !DILexicalBlockFile(scope: !428, file: !356, discriminator: 3)
!609 = !DILocation(line: 21, column: 1650, scope: !428)
!610 = !DILocation(line: 21, column: 1697, scope: !428)
!611 = !DILocation(line: 21, column: 1708, scope: !428)
!612 = !DILocation(line: 21, column: 1721, scope: !428)
!613 = !DILocation(line: 21, column: 1732, scope: !428)
!614 = !{!492, !492, i64 0}
!615 = !DILocation(line: 21, column: 1742, scope: !428)
!616 = !DILocation(line: 21, column: 1740, scope: !428)
!617 = !{!565, !565, i64 0}
!618 = !DILocation(line: 21, column: 1800, scope: !619)
!619 = distinct !DILexicalBlock(scope: !428, file: !356, line: 21, column: 1800)
!620 = !DILocation(line: 21, column: 1809, scope: !619)
!621 = !DILocation(line: 21, column: 1813, scope: !619)
!622 = !DILocation(line: 21, column: 1816, scope: !623)
!623 = !DILexicalBlockFile(scope: !619, file: !356, discriminator: 5)
!624 = !DILocation(line: 21, column: 1825, scope: !619)
!625 = !DILocation(line: 21, column: 1800, scope: !428)
!626 = !DILocation(line: 21, column: 1845, scope: !627)
!627 = !DILexicalBlockFile(scope: !628, file: !356, discriminator: 7)
!628 = distinct !DILexicalBlock(scope: !619, file: !356, line: 21, column: 1831)
!629 = !DILocation(line: 21, column: 1855, scope: !628)
!630 = !DILocation(line: 21, column: 1853, scope: !628)
!631 = !DILocation(line: 21, column: 1842, scope: !628)
!632 = !DILocation(line: 21, column: 1914, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !356, line: 21, column: 1914)
!634 = !DILocation(line: 21, column: 1923, scope: !633)
!635 = !DILocation(line: 21, column: 1927, scope: !633)
!636 = !DILocation(line: 21, column: 1930, scope: !637)
!637 = !DILexicalBlockFile(scope: !633, file: !356, discriminator: 9)
!638 = !DILocation(line: 21, column: 1939, scope: !633)
!639 = !DILocation(line: 21, column: 1914, scope: !628)
!640 = !DILocation(line: 21, column: 1959, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !356, discriminator: 11)
!642 = distinct !DILexicalBlock(scope: !633, file: !356, line: 21, column: 1945)
!643 = !DILocation(line: 21, column: 1969, scope: !642)
!644 = !DILocation(line: 21, column: 1967, scope: !642)
!645 = !DILocation(line: 21, column: 1956, scope: !642)
!646 = !DILocation(line: 21, column: 2028, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !356, line: 21, column: 2028)
!648 = !DILocation(line: 21, column: 2037, scope: !647)
!649 = !DILocation(line: 21, column: 2041, scope: !647)
!650 = !DILocation(line: 21, column: 2044, scope: !651)
!651 = !DILexicalBlockFile(scope: !647, file: !356, discriminator: 13)
!652 = !DILocation(line: 21, column: 2053, scope: !647)
!653 = !DILocation(line: 21, column: 2028, scope: !642)
!654 = !DILocation(line: 21, column: 2071, scope: !655)
!655 = !DILexicalBlockFile(scope: !647, file: !356, discriminator: 15)
!656 = !DILocation(line: 21, column: 2081, scope: !647)
!657 = !DILocation(line: 21, column: 2079, scope: !647)
!658 = !DILocation(line: 21, column: 2068, scope: !647)
!659 = !DILocation(line: 21, column: 2059, scope: !647)
!660 = !DILocation(line: 21, column: 2136, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !356, discriminator: 17)
!662 = !DILexicalBlockFile(scope: !663, file: !356, discriminator: 16)
!663 = !DILexicalBlockFile(scope: !642, file: !356, discriminator: 14)
!664 = !DILocation(line: 21, column: 2138, scope: !665)
!665 = !DILexicalBlockFile(scope: !666, file: !356, discriminator: 18)
!666 = !DILexicalBlockFile(scope: !667, file: !356, discriminator: 12)
!667 = !DILexicalBlockFile(scope: !628, file: !356, discriminator: 10)
!668 = !DILocation(line: 21, column: 2140, scope: !669)
!669 = !DILexicalBlockFile(scope: !670, file: !356, discriminator: 19)
!670 = !DILexicalBlockFile(scope: !671, file: !356, discriminator: 8)
!671 = !DILexicalBlockFile(scope: !428, file: !356, discriminator: 6)
!672 = !DILocation(line: 21, column: 1828, scope: !619)
!673 = !DILocation(line: 21, column: 2150, scope: !424)
!674 = !DILocation(line: 21, column: 2150, scope: !428)
!675 = !DILocation(line: 21, column: 2175, scope: !676)
!676 = !DILexicalBlockFile(scope: !677, file: !356, discriminator: 4)
!677 = !DILexicalBlockFile(scope: !424, file: !356, discriminator: 2)
!678 = !DILocation(line: 21, column: 2157, scope: !424)
!679 = !DILocation(line: 21, column: 26, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !356, discriminator: 21)
!681 = !DILexicalBlockFile(scope: !424, file: !356, discriminator: 20)
!682 = !DILocation(line: 21, column: 2197, scope: !425)
!683 = !DILocation(line: 21, column: 2197, scope: !424)
!684 = !DILocation(line: 21, column: 2200, scope: !425)
!685 = !DILocation(line: 21, column: 9, scope: !365)
!686 = !DILocation(line: 22, column: 15, scope: !425)
!687 = !DILocation(line: 22, column: 9, scope: !425)
!688 = !DILocation(line: 23, column: 31, scope: !431)
!689 = !DILocation(line: 23, column: 38, scope: !431)
!690 = !DILocation(line: 23, column: 48, scope: !431)
!691 = !DILocation(line: 23, column: 1411, scope: !431)
!692 = !DILocation(line: 23, column: 1424, scope: !693)
!693 = !DILexicalBlockFile(scope: !431, file: !356, discriminator: 1)
!694 = !DILocation(line: 23, column: 1443, scope: !431)
!695 = !DILocation(line: 23, column: 1452, scope: !431)
!696 = !DILocation(line: 23, column: 1301, scope: !431)
!697 = !DILocation(line: 23, column: 1634, scope: !698)
!698 = !DILexicalBlockFile(scope: !435, file: !356, discriminator: 3)
!699 = !DILocation(line: 23, column: 1655, scope: !435)
!700 = !DILocation(line: 23, column: 1702, scope: !435)
!701 = !DILocation(line: 23, column: 1713, scope: !435)
!702 = !DILocation(line: 23, column: 1726, scope: !435)
!703 = !DILocation(line: 23, column: 1737, scope: !435)
!704 = !DILocation(line: 23, column: 1747, scope: !435)
!705 = !DILocation(line: 23, column: 1745, scope: !435)
!706 = !DILocation(line: 23, column: 1805, scope: !707)
!707 = distinct !DILexicalBlock(scope: !435, file: !356, line: 23, column: 1805)
!708 = !DILocation(line: 23, column: 1814, scope: !707)
!709 = !DILocation(line: 23, column: 1818, scope: !707)
!710 = !DILocation(line: 23, column: 1821, scope: !711)
!711 = !DILexicalBlockFile(scope: !707, file: !356, discriminator: 5)
!712 = !DILocation(line: 23, column: 1830, scope: !707)
!713 = !DILocation(line: 23, column: 1805, scope: !435)
!714 = !DILocation(line: 23, column: 1850, scope: !715)
!715 = !DILexicalBlockFile(scope: !716, file: !356, discriminator: 7)
!716 = distinct !DILexicalBlock(scope: !707, file: !356, line: 23, column: 1836)
!717 = !DILocation(line: 23, column: 1860, scope: !716)
!718 = !DILocation(line: 23, column: 1858, scope: !716)
!719 = !DILocation(line: 23, column: 1847, scope: !716)
!720 = !DILocation(line: 23, column: 1919, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !356, line: 23, column: 1919)
!722 = !DILocation(line: 23, column: 1928, scope: !721)
!723 = !DILocation(line: 23, column: 1932, scope: !721)
!724 = !DILocation(line: 23, column: 1935, scope: !725)
!725 = !DILexicalBlockFile(scope: !721, file: !356, discriminator: 9)
!726 = !DILocation(line: 23, column: 1944, scope: !721)
!727 = !DILocation(line: 23, column: 1919, scope: !716)
!728 = !DILocation(line: 23, column: 1964, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !356, discriminator: 11)
!730 = distinct !DILexicalBlock(scope: !721, file: !356, line: 23, column: 1950)
!731 = !DILocation(line: 23, column: 1974, scope: !730)
!732 = !DILocation(line: 23, column: 1972, scope: !730)
!733 = !DILocation(line: 23, column: 1961, scope: !730)
!734 = !DILocation(line: 23, column: 2033, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !356, line: 23, column: 2033)
!736 = !DILocation(line: 23, column: 2042, scope: !735)
!737 = !DILocation(line: 23, column: 2046, scope: !735)
!738 = !DILocation(line: 23, column: 2049, scope: !739)
!739 = !DILexicalBlockFile(scope: !735, file: !356, discriminator: 13)
!740 = !DILocation(line: 23, column: 2058, scope: !735)
!741 = !DILocation(line: 23, column: 2033, scope: !730)
!742 = !DILocation(line: 23, column: 2076, scope: !743)
!743 = !DILexicalBlockFile(scope: !735, file: !356, discriminator: 15)
!744 = !DILocation(line: 23, column: 2086, scope: !735)
!745 = !DILocation(line: 23, column: 2084, scope: !735)
!746 = !DILocation(line: 23, column: 2073, scope: !735)
!747 = !DILocation(line: 23, column: 2064, scope: !735)
!748 = !DILocation(line: 23, column: 2141, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !356, discriminator: 17)
!750 = !DILexicalBlockFile(scope: !751, file: !356, discriminator: 16)
!751 = !DILexicalBlockFile(scope: !730, file: !356, discriminator: 14)
!752 = !DILocation(line: 23, column: 2143, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !356, discriminator: 18)
!754 = !DILexicalBlockFile(scope: !755, file: !356, discriminator: 12)
!755 = !DILexicalBlockFile(scope: !716, file: !356, discriminator: 10)
!756 = !DILocation(line: 23, column: 2145, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !356, discriminator: 19)
!758 = !DILexicalBlockFile(scope: !759, file: !356, discriminator: 8)
!759 = !DILexicalBlockFile(scope: !435, file: !356, discriminator: 6)
!760 = !DILocation(line: 23, column: 1833, scope: !707)
!761 = !DILocation(line: 23, column: 2155, scope: !431)
!762 = !DILocation(line: 23, column: 2155, scope: !435)
!763 = !DILocation(line: 23, column: 2180, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !356, discriminator: 4)
!765 = !DILexicalBlockFile(scope: !431, file: !356, discriminator: 2)
!766 = !DILocation(line: 23, column: 2162, scope: !431)
!767 = !DILocation(line: 23, column: 31, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !356, discriminator: 21)
!769 = !DILexicalBlockFile(scope: !431, file: !356, discriminator: 20)
!770 = !DILocation(line: 23, column: 2202, scope: !432)
!771 = !DILocation(line: 23, column: 2202, scope: !431)
!772 = !DILocation(line: 23, column: 2205, scope: !432)
!773 = !DILocation(line: 23, column: 14, scope: !425)
!774 = !DILocation(line: 24, column: 15, scope: !432)
!775 = !DILocation(line: 24, column: 9, scope: !432)
!776 = !DILocation(line: 25, column: 31, scope: !438)
!777 = !DILocation(line: 25, column: 38, scope: !438)
!778 = !DILocation(line: 25, column: 48, scope: !438)
!779 = !DILocation(line: 25, column: 1437, scope: !438)
!780 = !DILocation(line: 25, column: 1450, scope: !781)
!781 = !DILexicalBlockFile(scope: !438, file: !356, discriminator: 1)
!782 = !DILocation(line: 25, column: 1471, scope: !438)
!783 = !DILocation(line: 25, column: 1480, scope: !438)
!784 = !DILocation(line: 25, column: 1321, scope: !438)
!785 = !DILocation(line: 25, column: 1664, scope: !786)
!786 = !DILexicalBlockFile(scope: !442, file: !356, discriminator: 3)
!787 = !DILocation(line: 25, column: 1685, scope: !442)
!788 = !DILocation(line: 25, column: 1732, scope: !442)
!789 = !DILocation(line: 25, column: 1743, scope: !442)
!790 = !DILocation(line: 25, column: 1756, scope: !442)
!791 = !DILocation(line: 25, column: 1767, scope: !442)
!792 = !DILocation(line: 25, column: 1777, scope: !442)
!793 = !DILocation(line: 25, column: 1775, scope: !442)
!794 = !DILocation(line: 25, column: 1837, scope: !795)
!795 = distinct !DILexicalBlock(scope: !442, file: !356, line: 25, column: 1837)
!796 = !DILocation(line: 25, column: 1846, scope: !795)
!797 = !DILocation(line: 25, column: 1850, scope: !795)
!798 = !DILocation(line: 25, column: 1853, scope: !799)
!799 = !DILexicalBlockFile(scope: !795, file: !356, discriminator: 5)
!800 = !DILocation(line: 25, column: 1862, scope: !795)
!801 = !DILocation(line: 25, column: 1837, scope: !442)
!802 = !DILocation(line: 25, column: 1882, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !356, discriminator: 7)
!804 = distinct !DILexicalBlock(scope: !795, file: !356, line: 25, column: 1868)
!805 = !DILocation(line: 25, column: 1892, scope: !804)
!806 = !DILocation(line: 25, column: 1890, scope: !804)
!807 = !DILocation(line: 25, column: 1879, scope: !804)
!808 = !DILocation(line: 25, column: 1953, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !356, line: 25, column: 1953)
!810 = !DILocation(line: 25, column: 1962, scope: !809)
!811 = !DILocation(line: 25, column: 1966, scope: !809)
!812 = !DILocation(line: 25, column: 1969, scope: !813)
!813 = !DILexicalBlockFile(scope: !809, file: !356, discriminator: 9)
!814 = !DILocation(line: 25, column: 1978, scope: !809)
!815 = !DILocation(line: 25, column: 1953, scope: !804)
!816 = !DILocation(line: 25, column: 1998, scope: !817)
!817 = !DILexicalBlockFile(scope: !818, file: !356, discriminator: 11)
!818 = distinct !DILexicalBlock(scope: !809, file: !356, line: 25, column: 1984)
!819 = !DILocation(line: 25, column: 2008, scope: !818)
!820 = !DILocation(line: 25, column: 2006, scope: !818)
!821 = !DILocation(line: 25, column: 1995, scope: !818)
!822 = !DILocation(line: 25, column: 2069, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !356, line: 25, column: 2069)
!824 = !DILocation(line: 25, column: 2078, scope: !823)
!825 = !DILocation(line: 25, column: 2082, scope: !823)
!826 = !DILocation(line: 25, column: 2085, scope: !827)
!827 = !DILexicalBlockFile(scope: !823, file: !356, discriminator: 13)
!828 = !DILocation(line: 25, column: 2094, scope: !823)
!829 = !DILocation(line: 25, column: 2069, scope: !818)
!830 = !DILocation(line: 25, column: 2112, scope: !831)
!831 = !DILexicalBlockFile(scope: !823, file: !356, discriminator: 15)
!832 = !DILocation(line: 25, column: 2122, scope: !823)
!833 = !DILocation(line: 25, column: 2120, scope: !823)
!834 = !DILocation(line: 25, column: 2109, scope: !823)
!835 = !DILocation(line: 25, column: 2100, scope: !823)
!836 = !DILocation(line: 25, column: 2179, scope: !837)
!837 = !DILexicalBlockFile(scope: !838, file: !356, discriminator: 17)
!838 = !DILexicalBlockFile(scope: !839, file: !356, discriminator: 16)
!839 = !DILexicalBlockFile(scope: !818, file: !356, discriminator: 14)
!840 = !DILocation(line: 25, column: 2181, scope: !841)
!841 = !DILexicalBlockFile(scope: !842, file: !356, discriminator: 18)
!842 = !DILexicalBlockFile(scope: !843, file: !356, discriminator: 12)
!843 = !DILexicalBlockFile(scope: !804, file: !356, discriminator: 10)
!844 = !DILocation(line: 25, column: 2183, scope: !845)
!845 = !DILexicalBlockFile(scope: !846, file: !356, discriminator: 19)
!846 = !DILexicalBlockFile(scope: !847, file: !356, discriminator: 8)
!847 = !DILexicalBlockFile(scope: !442, file: !356, discriminator: 6)
!848 = !DILocation(line: 25, column: 1865, scope: !795)
!849 = !DILocation(line: 25, column: 2193, scope: !438)
!850 = !DILocation(line: 25, column: 2193, scope: !442)
!851 = !DILocation(line: 25, column: 2218, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !356, discriminator: 4)
!853 = !DILexicalBlockFile(scope: !438, file: !356, discriminator: 2)
!854 = !DILocation(line: 25, column: 2200, scope: !438)
!855 = !DILocation(line: 25, column: 31, scope: !856)
!856 = !DILexicalBlockFile(scope: !857, file: !356, discriminator: 21)
!857 = !DILexicalBlockFile(scope: !438, file: !356, discriminator: 20)
!858 = !DILocation(line: 25, column: 2242, scope: !439)
!859 = !DILocation(line: 25, column: 2242, scope: !438)
!860 = !DILocation(line: 25, column: 2245, scope: !439)
!861 = !DILocation(line: 25, column: 14, scope: !432)
!862 = !DILocation(line: 26, column: 15, scope: !439)
!863 = !DILocation(line: 26, column: 9, scope: !439)
!864 = !DILocation(line: 28, column: 25, scope: !446)
!865 = !DILocation(line: 28, column: 9, scope: !446)
!866 = !DILocation(line: 30, column: 9, scope: !446)
!867 = !DILocation(line: 30, column: 14, scope: !868)
!868 = !DILexicalBlockFile(scope: !445, file: !356, discriminator: 1)
!869 = !DILocation(line: 30, column: 24, scope: !445)
!870 = !DILocation(line: 30, column: 54, scope: !445)
!871 = !DILocation(line: 30, column: 73, scope: !872)
!872 = distinct !DILexicalBlock(scope: !445, file: !356, line: 30, column: 70)
!873 = !DILocation(line: 30, column: 90, scope: !872)
!874 = !DILocation(line: 30, column: 70, scope: !872)
!875 = !DILocation(line: 30, column: 100, scope: !872)
!876 = !DILocation(line: 30, column: 70, scope: !445)
!877 = !DILocation(line: 30, column: 70, scope: !878)
!878 = !DILexicalBlockFile(scope: !445, file: !356, discriminator: 2)
!879 = !DILocation(line: 30, column: 131, scope: !880)
!880 = !DILexicalBlockFile(scope: !872, file: !356, discriminator: 3)
!881 = !DILocation(line: 30, column: 149, scope: !872)
!882 = !DILocation(line: 30, column: 159, scope: !872)
!883 = !DILocation(line: 30, column: 184, scope: !872)
!884 = !DILocation(line: 30, column: 115, scope: !872)
!885 = !DILocation(line: 30, column: 203, scope: !886)
!886 = !DILexicalBlockFile(scope: !446, file: !356, discriminator: 4)
!887 = !DILocation(line: 30, column: 203, scope: !445)
!888 = !DILocation(line: 30, column: 203, scope: !889)
!889 = !DILexicalBlockFile(scope: !445, file: !356, discriminator: 5)
!890 = !DILocation(line: 31, column: 9, scope: !446)
!891 = !DILocation(line: 33, column: 34, scope: !365)
!892 = !DILocation(line: 33, column: 39, scope: !365)
!893 = !DILocation(line: 33, column: 49, scope: !365)
!894 = !DILocation(line: 33, column: 10, scope: !365)
!895 = !DILocation(line: 33, column: 8, scope: !365)
!896 = !DILocation(line: 34, column: 5, scope: !365)
!897 = !DILocation(line: 34, column: 10, scope: !898)
!898 = !DILexicalBlockFile(scope: !448, file: !356, discriminator: 1)
!899 = !DILocation(line: 34, column: 20, scope: !448)
!900 = !DILocation(line: 34, column: 50, scope: !448)
!901 = !DILocation(line: 34, column: 69, scope: !902)
!902 = distinct !DILexicalBlock(scope: !448, file: !356, line: 34, column: 66)
!903 = !DILocation(line: 34, column: 86, scope: !902)
!904 = !DILocation(line: 34, column: 66, scope: !902)
!905 = !DILocation(line: 34, column: 96, scope: !902)
!906 = !DILocation(line: 34, column: 66, scope: !448)
!907 = !DILocation(line: 34, column: 66, scope: !908)
!908 = !DILexicalBlockFile(scope: !448, file: !356, discriminator: 2)
!909 = !DILocation(line: 34, column: 127, scope: !910)
!910 = !DILexicalBlockFile(scope: !902, file: !356, discriminator: 3)
!911 = !DILocation(line: 34, column: 145, scope: !902)
!912 = !DILocation(line: 34, column: 155, scope: !902)
!913 = !DILocation(line: 34, column: 180, scope: !902)
!914 = !DILocation(line: 34, column: 111, scope: !902)
!915 = !DILocation(line: 34, column: 199, scope: !916)
!916 = !DILexicalBlockFile(scope: !365, file: !356, discriminator: 4)
!917 = !DILocation(line: 34, column: 199, scope: !448)
!918 = !DILocation(line: 34, column: 199, scope: !919)
!919 = !DILexicalBlockFile(scope: !448, file: !356, discriminator: 5)
!920 = !DILocation(line: 35, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !365, file: !356, line: 35, column: 9)
!922 = !DILocation(line: 35, column: 12, scope: !921)
!923 = !DILocation(line: 35, column: 9, scope: !365)
!924 = !DILocation(line: 36, column: 9, scope: !921)
!925 = !DILocation(line: 37, column: 21, scope: !365)
!926 = !DILocation(line: 37, column: 25, scope: !365)
!927 = !{!928, !491, i64 16}
!928 = !{!"symtable", !491, i64 0, !491, i64 8, !491, i64 16, !491, i64 24, !491, i64 32, !491, i64 40, !565, i64 48, !491, i64 56, !491, i64 64, !565, i64 72, !565, i64 76}
!929 = !DILocation(line: 37, column: 9, scope: !365)
!930 = !DILocation(line: 37, column: 7, scope: !365)
!931 = !DILocation(line: 38, column: 21, scope: !365)
!932 = !DILocation(line: 38, column: 26, scope: !365)
!933 = !DILocation(line: 38, column: 35, scope: !365)
!934 = !DILocation(line: 39, column: 24, scope: !365)
!935 = !DILocation(line: 39, column: 28, scope: !365)
!936 = !{!928, !491, i64 64}
!937 = !DILocation(line: 39, column: 16, scope: !365)
!938 = !DILocation(line: 39, column: 5, scope: !365)
!939 = !DILocation(line: 40, column: 21, scope: !365)
!940 = !DILocation(line: 40, column: 5, scope: !365)
!941 = !DILocation(line: 41, column: 12, scope: !365)
!942 = !DILocation(line: 41, column: 5, scope: !365)
!943 = !DILocation(line: 42, column: 1, scope: !365)
