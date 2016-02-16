; ModuleID = 'symtablemodule.o.bc'
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
  %call = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @PySTEntry_Type) #1, !dbg !479
  %cmp = icmp slt i32 %call, 0, !dbg !481
  br i1 %cmp, label %cleanup, label %if.end, !dbg !482

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @symtablemodule, i32 1013) #1, !dbg !483
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !359, metadata !484), !dbg !485
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !486
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !488

if.end.4:                                         ; preds = %if.end
  %call5 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 16) #1, !dbg !489
  %call6 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 1) #1, !dbg !490
  %call7 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 2) #1, !dbg !491
  %call8 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 4) #1, !dbg !492
  %call9 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 32) #1, !dbg !493
  %call10 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 64) #1, !dbg !494
  %call11 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 128) #1, !dbg !495
  %call12 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 134) #1, !dbg !496
  %call13 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 0) #1, !dbg !497
  %call14 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 1) #1, !dbg !498
  %call15 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 2) #1, !dbg !499
  %call16 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 1) #1, !dbg !500
  %call17 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i64 2) #1, !dbg !501
  %call18 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 1) #1, !dbg !502
  %call19 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i64 2) #1, !dbg !503
  %call20 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 3) #1, !dbg !504
  %call21 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 4) #1, !dbg !505
  %call22 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 5) #1, !dbg !506
  %call23 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 11) #1, !dbg !507
  %call24 = tail call i32 @PyModule_AddIntConstant(%struct._object* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 15) #1, !dbg !508
  %call25 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !509
  %tobool = icmp eq %struct._object* %call25, null, !dbg !509
  br i1 %tobool, label %cleanup, label %do.body, !dbg !510

do.body:                                          ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !360, metadata !484), !dbg !511
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !513
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !513, !tbaa !515
  %dec = add i64 %0, -1, !dbg !513
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !513, !tbaa !515
  %cmp27 = icmp eq i64 %dec, 0, !dbg !513
  br i1 %cmp27, label %if.else, label %cleanup, !dbg !521

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !522
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !522, !tbaa !524
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !522
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !522, !tbaa !525
  tail call void %2(%struct._object* %call1) #1, !dbg !522
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %do.body, %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end.4 ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !529
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @symtable_symtable(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %startstr = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !366, metadata !484), !dbg !530
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !367, metadata !484), !dbg !531
  %0 = bitcast i8** %str to i8*, !dbg !532
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !532
  %1 = bitcast %struct._object** %filename to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !533
  %2 = bitcast i8** %startstr to i8*, !dbg !534
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !534
  tail call void @llvm.dbg.value(metadata i8** %str, i64 0, metadata !418, metadata !484), !dbg !535
  tail call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !419, metadata !484), !dbg !536
  tail call void @llvm.dbg.value(metadata i8** %startstr, i64 0, metadata !420, metadata !484), !dbg !537
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** nonnull %str, i32 (%struct._object*, i8*)* nonnull @PyUnicode_FSDecoder, %struct._object** nonnull %filename, i8** nonnull %startstr) #1, !dbg !538
  %tobool = icmp eq i32 %call, 0, !dbg !538
  br i1 %tobool, label %cleanup, label %cond.false, !dbg !540

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !425, metadata !484), !dbg !541
  call void @llvm.dbg.value(metadata i8** %startstr, i64 0, metadata !420, metadata !484), !dbg !537
  %3 = load i8*, i8** %startstr, align 8, !dbg !542, !tbaa !545
  %call38 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #1, !dbg !542
  %cmp39 = icmp eq i32 %call38, 0, !dbg !546
  br i1 %cmp39, label %if.end.168, label %cond.false.93, !dbg !547

cond.false.93:                                    ; preds = %cond.false
  call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !432, metadata !484), !dbg !548
  call void @llvm.dbg.value(metadata i8** %startstr, i64 0, metadata !420, metadata !484), !dbg !537
  %call94 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #1, !dbg !549
  %cmp97 = icmp eq i32 %call94, 0, !dbg !552
  br i1 %cmp97, label %if.end.168, label %cond.false.152, !dbg !553

cond.false.152:                                   ; preds = %cond.false.93
  call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !439, metadata !484), !dbg !554
  call void @llvm.dbg.value(metadata i8** %startstr, i64 0, metadata !420, metadata !484), !dbg !537
  %call153 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #1, !dbg !555
  %cmp156 = icmp eq i32 %call153, 0, !dbg !558
  br i1 %cmp156, label %if.end.168, label %if.else.159, !dbg !559

if.else.159:                                      ; preds = %cond.false.152
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !560, !tbaa !545
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i64 0, i64 0)) #1, !dbg !561
  call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !419, metadata !484), !dbg !536
  %5 = load %struct._object*, %struct._object** %filename, align 8, !dbg !562, !tbaa !545
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !443, metadata !484), !dbg !562
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !564
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !564, !tbaa !515
  %dec = add i64 %6, -1, !dbg !564
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !564, !tbaa !515
  %cmp161 = icmp eq i64 %dec, 0, !dbg !564
  br i1 %cmp161, label %if.else.164, label %cleanup, !dbg !566

if.else.164:                                      ; preds = %if.else.159
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !567
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !567, !tbaa !524
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !567
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !567, !tbaa !525
  call void %8(%struct._object* %5) #1, !dbg !567
  br label %cleanup

if.end.168:                                       ; preds = %cond.false.152, %cond.false.93, %cond.false
  %start.0 = phi i32 [ 257, %cond.false ], [ 258, %cond.false.93 ], [ 256, %cond.false.152 ]
  call void @llvm.dbg.value(metadata i8** %str, i64 0, metadata !418, metadata !484), !dbg !535
  %9 = load i8*, i8** %str, align 8, !dbg !569, !tbaa !545
  call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !419, metadata !484), !dbg !536
  %10 = load %struct._object*, %struct._object** %filename, align 8, !dbg !570, !tbaa !545
  %call169 = call %struct.symtable* @Py_SymtableStringObject(i8* %9, %struct._object* %10, i32 %start.0) #1, !dbg !571
  call void @llvm.dbg.value(metadata %struct.symtable* %call169, i64 0, metadata !368, metadata !484), !dbg !572
  call void @llvm.dbg.value(metadata %struct._object** %filename, i64 0, metadata !419, metadata !484), !dbg !536
  %11 = load %struct._object*, %struct._object** %filename, align 8, !dbg !573, !tbaa !545
  call void @llvm.dbg.value(metadata %struct._object* %11, i64 0, metadata !446, metadata !484), !dbg !573
  %ob_refcnt173 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 0, !dbg !575
  %12 = load i64, i64* %ob_refcnt173, align 8, !dbg !575, !tbaa !515
  %dec174 = add i64 %12, -1, !dbg !575
  store i64 %dec174, i64* %ob_refcnt173, align 8, !dbg !575, !tbaa !515
  %cmp175 = icmp eq i64 %dec174, 0, !dbg !575
  br i1 %cmp175, label %if.else.178, label %if.end.181, !dbg !577

if.else.178:                                      ; preds = %if.end.168
  %ob_type179 = getelementptr inbounds %struct._object, %struct._object* %11, i64 0, i32 1, !dbg !578
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type179, align 8, !dbg !578, !tbaa !524
  %tp_dealloc180 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !578
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc180, align 8, !dbg !578, !tbaa !525
  call void %14(%struct._object* %11) #1, !dbg !578
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.168, %if.else.178
  %cmp184 = icmp eq %struct.symtable* %call169, null, !dbg !580
  br i1 %cmp184, label %cleanup, label %if.end.187, !dbg !582

if.end.187:                                       ; preds = %if.end.181
  %st_top = getelementptr inbounds %struct.symtable, %struct.symtable* %call169, i64 0, i32 2, !dbg !583
  %15 = bitcast %struct._symtable_entry** %st_top to %struct._object**, !dbg !583
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !583, !tbaa !584
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !417, metadata !484), !dbg !586
  %ob_refcnt188 = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !587
  %17 = load i64, i64* %ob_refcnt188, align 8, !dbg !587, !tbaa !515
  %inc = add i64 %17, 1, !dbg !587
  store i64 %inc, i64* %ob_refcnt188, align 8, !dbg !587, !tbaa !515
  %st_future = getelementptr inbounds %struct.symtable, %struct.symtable* %call169, i64 0, i32 8, !dbg !588
  %18 = bitcast %struct.PyFutureFeatures** %st_future to i8**, !dbg !588
  %19 = load i8*, i8** %18, align 8, !dbg !588, !tbaa !589
  call void @PyMem_Free(i8* %19) #1, !dbg !590
  call void @PySymtable_Free(%struct.symtable* %call169) #1, !dbg !591
  br label %cleanup, !dbg !592

cleanup:                                          ; preds = %if.end.181, %if.else.164, %if.else.159, %entry, %if.end.187
  %retval.0 = phi %struct._object* [ %16, %if.end.187 ], [ null, %entry ], [ null, %if.else.159 ], [ null, %if.else.164 ], [ null, %if.end.181 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !593
  ret %struct._object* %retval.0, !dbg !593
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct.symtable* @Py_SymtableStringObject(i8*, %struct._object*, i32) #2

declare void @PyMem_Free(i8*) #2

declare void @PySymtable_Free(%struct.symtable*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!476, !477}
!llvm.ident = !{!478}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !354, globals: !448)
!1 = !DIFile(filename: "./Modules/symtablemodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_block_type", file: !4, line: 13, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/symtable.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "FunctionBlock", value: 0)
!7 = !DIEnumerator(name: "ClassBlock", value: 1)
!8 = !DIEnumerator(name: "ModuleBlock", value: 2)
!9 = !{!10, !11, !100, !349, !351, !35}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !23)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!101 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!354 = !{!355, !364}
!355 = !DISubprogram(name: "PyInit__symtable", scope: !1, file: !1, line: 64, type: !356, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__symtable, variables: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!11}
!358 = !{!359, !360}
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !355, file: !1, line: 66, type: !11)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !361, file: !1, line: 100, type: !11)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 100, column: 9)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 99, column: 27)
!363 = distinct !DILexicalBlock(scope: !355, file: !1, line: 99, column: 9)
!364 = !DISubprogram(name: "symtable_symtable", scope: !1, file: !1, line: 8, type: !132, isLocal: true, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @symtable_symtable, variables: !365)
!365 = !{!366, !367, !368, !417, !418, !419, !420, !421, !422, !425, !426, !428, !429, !432, !433, !435, !436, !439, !440, !442, !443, !446}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !364, file: !1, line: 8, type: !11)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !364, file: !1, line: 8, type: !11)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "st", scope: !364, file: !1, line: 10, type: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "symtable", file: !4, line: 18, size: 640, align: 64, elements: !371)
!371 = !{!372, !373, !401, !402, !403, !404, !405, !406, !407, !415, !416}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_filename", scope: !370, file: !4, line: 19, baseType: !11, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_cur", scope: !370, file: !4, line: 21, baseType: !374, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "_symtable_entry", file: !4, line: 37, size: 896, align: 64, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !375, file: !4, line: 38, baseType: !12, size: 128, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ste_id", scope: !375, file: !4, line: 39, baseType: !11, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ste_symbols", scope: !375, file: !4, line: 40, baseType: !11, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ste_name", scope: !375, file: !4, line: 41, baseType: !11, size: 64, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varnames", scope: !375, file: !4, line: 42, baseType: !11, size: 64, align: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ste_children", scope: !375, file: !4, line: 43, baseType: !11, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ste_directives", scope: !375, file: !4, line: 44, baseType: !11, size: 64, align: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ste_type", scope: !375, file: !4, line: 45, baseType: !385, size: 32, align: 32, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_block_ty", file: !4, line: 14, baseType: !3)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ste_unoptimized", scope: !375, file: !4, line: 46, baseType: !50, size: 32, align: 32, offset: 544)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ste_nested", scope: !375, file: !4, line: 47, baseType: !50, size: 32, align: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ste_free", scope: !375, file: !4, line: 48, baseType: !347, size: 1, align: 32, offset: 608)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ste_child_free", scope: !375, file: !4, line: 49, baseType: !347, size: 1, align: 32, offset: 609)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ste_generator", scope: !375, file: !4, line: 51, baseType: !347, size: 1, align: 32, offset: 610)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varargs", scope: !375, file: !4, line: 52, baseType: !347, size: 1, align: 32, offset: 611)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ste_varkeywords", scope: !375, file: !4, line: 53, baseType: !347, size: 1, align: 32, offset: 612)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ste_returns_value", scope: !375, file: !4, line: 54, baseType: !347, size: 1, align: 32, offset: 613)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ste_needs_class_closure", scope: !375, file: !4, line: 56, baseType: !347, size: 1, align: 32, offset: 614)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ste_lineno", scope: !375, file: !4, line: 59, baseType: !50, size: 32, align: 32, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ste_col_offset", scope: !375, file: !4, line: 60, baseType: !50, size: 32, align: 32, offset: 672)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ste_opt_lineno", scope: !375, file: !4, line: 61, baseType: !50, size: 32, align: 32, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ste_opt_col_offset", scope: !375, file: !4, line: 62, baseType: !50, size: 32, align: 32, offset: 736)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ste_tmpname", scope: !375, file: !4, line: 63, baseType: !50, size: 32, align: 32, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ste_table", scope: !375, file: !4, line: 64, baseType: !369, size: 64, align: 64, offset: 832)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "st_top", scope: !370, file: !4, line: 22, baseType: !374, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !370, file: !4, line: 23, baseType: !11, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_stack", scope: !370, file: !4, line: 25, baseType: !11, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "st_global", scope: !370, file: !4, line: 26, baseType: !11, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "st_nblocks", scope: !370, file: !4, line: 27, baseType: !50, size: 32, align: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "st_private", scope: !370, file: !4, line: 30, baseType: !11, size: 64, align: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "st_future", scope: !370, file: !4, line: 31, baseType: !408, size: 64, align: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFutureFeatures", file: !410, line: 20, baseType: !411)
!410 = !DIFile(filename: "Include/compile.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 17, size: 64, align: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ff_features", scope: !411, file: !410, line: 18, baseType: !50, size: 32, align: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ff_lineno", scope: !411, file: !410, line: 19, baseType: !50, size: 32, align: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !370, file: !4, line: 33, baseType: !50, size: 32, align: 32, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_limit", scope: !370, file: !4, line: 34, baseType: !50, size: 32, align: 32, offset: 608)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !364, file: !1, line: 11, type: !11)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !364, file: !1, line: 13, type: !58)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !364, file: !1, line: 14, type: !11)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "startstr", scope: !364, file: !1, line: 15, type: !58)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !364, file: !1, line: 16, type: !50)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !423, file: !1, line: 21, type: !100)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 21, column: 9)
!424 = distinct !DILexicalBlock(scope: !364, file: !1, line: 21, column: 9)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !423, file: !1, line: 21, type: !100)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !427, file: !1, line: 21, type: !351)
!427 = distinct !DILexicalBlock(scope: !423, file: !1, line: 21, column: 9)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !427, file: !1, line: 21, type: !50)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !430, file: !1, line: 23, type: !100)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 23, column: 14)
!431 = distinct !DILexicalBlock(scope: !424, file: !1, line: 23, column: 14)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !430, file: !1, line: 23, type: !100)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !434, file: !1, line: 23, type: !351)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 23, column: 14)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !434, file: !1, line: 23, type: !50)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !437, file: !1, line: 25, type: !100)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 25, column: 14)
!438 = distinct !DILexicalBlock(scope: !431, file: !1, line: 25, column: 14)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !437, file: !1, line: 25, type: !100)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !441, file: !1, line: 25, type: !351)
!441 = distinct !DILexicalBlock(scope: !437, file: !1, line: 25, column: 14)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !441, file: !1, line: 25, type: !50)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !1, line: 30, type: !11)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 30, column: 9)
!445 = distinct !DILexicalBlock(scope: !438, file: !1, line: 27, column: 10)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !447, file: !1, line: 34, type: !11)
!447 = distinct !DILexicalBlock(scope: !364, file: !1, line: 34, column: 5)
!448 = !{!449, !472}
!449 = !DIGlobalVariable(name: "symtablemodule", scope: !0, file: !1, line: 51, type: !450, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @symtablemodule)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !451, line: 47, size: 832, align: 64, elements: !452)
!451 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!452 = !{!453, !462, !463, !464, !465, !468, !469, !470, !471}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !450, file: !451, line: 48, baseType: !454, size: 320, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !451, line: 38, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !451, line: 33, size: 320, align: 64, elements: !456)
!456 = !{!457, !458, !460, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !455, file: !451, line: 34, baseType: !12, size: 128, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !455, file: !451, line: 35, baseType: !459, size: 64, align: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !455, file: !451, line: 36, baseType: !17, size: 64, align: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !455, file: !451, line: 37, baseType: !11, size: 64, align: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !450, file: !451, line: 49, baseType: !35, size: 64, align: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !450, file: !451, line: 50, baseType: !35, size: 64, align: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !450, file: !451, line: 51, baseType: !17, size: 64, align: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !450, file: !451, line: 52, baseType: !466, size: 64, align: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !450, file: !451, line: 53, baseType: !148, size: 64, align: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !450, file: !451, line: 54, baseType: !265, size: 64, align: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !450, file: !451, line: 55, baseType: !148, size: 64, align: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !450, file: !451, line: 56, baseType: !335, size: 64, align: 64, offset: 768)
!472 = !DIGlobalVariable(name: "symtable_methods", scope: !0, file: !1, line: 44, type: !473, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @symtable_methods)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 512, align: 64, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 2)
!476 = !{i32 2, !"Dwarf Version", i32 4}
!477 = !{i32 2, !"Debug Info Version", i32 3}
!478 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!479 = !DILocation(line: 68, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !355, file: !1, line: 68, column: 9)
!481 = !DILocation(line: 68, column: 39, scope: !480)
!482 = !DILocation(line: 68, column: 9, scope: !355)
!483 = !DILocation(line: 71, column: 9, scope: !355)
!484 = !DIExpression()
!485 = !DILocation(line: 66, column: 15, scope: !355)
!486 = !DILocation(line: 72, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !355, file: !1, line: 72, column: 9)
!488 = !DILocation(line: 72, column: 9, scope: !355)
!489 = !DILocation(line: 74, column: 5, scope: !355)
!490 = !DILocation(line: 75, column: 5, scope: !355)
!491 = !DILocation(line: 76, column: 5, scope: !355)
!492 = !DILocation(line: 77, column: 5, scope: !355)
!493 = !DILocation(line: 78, column: 5, scope: !355)
!494 = !DILocation(line: 79, column: 5, scope: !355)
!495 = !DILocation(line: 80, column: 5, scope: !355)
!496 = !DILocation(line: 81, column: 5, scope: !355)
!497 = !DILocation(line: 83, column: 5, scope: !355)
!498 = !DILocation(line: 84, column: 5, scope: !355)
!499 = !DILocation(line: 85, column: 5, scope: !355)
!500 = !DILocation(line: 87, column: 5, scope: !355)
!501 = !DILocation(line: 88, column: 5, scope: !355)
!502 = !DILocation(line: 90, column: 5, scope: !355)
!503 = !DILocation(line: 91, column: 5, scope: !355)
!504 = !DILocation(line: 92, column: 5, scope: !355)
!505 = !DILocation(line: 93, column: 5, scope: !355)
!506 = !DILocation(line: 94, column: 5, scope: !355)
!507 = !DILocation(line: 96, column: 5, scope: !355)
!508 = !DILocation(line: 97, column: 5, scope: !355)
!509 = !DILocation(line: 99, column: 9, scope: !363)
!510 = !DILocation(line: 99, column: 9, scope: !355)
!511 = !DILocation(line: 100, column: 9, scope: !512)
!512 = !DILexicalBlockFile(scope: !361, file: !1, discriminator: 1)
!513 = !DILocation(line: 100, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !361, file: !1, line: 100, column: 9)
!515 = !{!516, !517, i64 0}
!516 = !{!"_object", !517, i64 0, !520, i64 8}
!517 = !{!"long", !518, i64 0}
!518 = !{!"omnipotent char", !519, i64 0}
!519 = !{!"Simple C/C++ TBAA"}
!520 = !{!"any pointer", !518, i64 0}
!521 = !DILocation(line: 100, column: 9, scope: !361)
!522 = !DILocation(line: 100, column: 9, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 3)
!524 = !{!516, !520, i64 8}
!525 = !{!526, !520, i64 48}
!526 = !{!"_typeobject", !527, i64 0, !520, i64 24, !517, i64 32, !517, i64 40, !520, i64 48, !520, i64 56, !520, i64 64, !520, i64 72, !520, i64 80, !520, i64 88, !520, i64 96, !520, i64 104, !520, i64 112, !520, i64 120, !520, i64 128, !520, i64 136, !520, i64 144, !520, i64 152, !520, i64 160, !517, i64 168, !520, i64 176, !520, i64 184, !520, i64 192, !520, i64 200, !517, i64 208, !520, i64 216, !520, i64 224, !520, i64 232, !520, i64 240, !520, i64 248, !520, i64 256, !520, i64 264, !520, i64 272, !520, i64 280, !517, i64 288, !520, i64 296, !520, i64 304, !520, i64 312, !520, i64 320, !520, i64 328, !520, i64 336, !520, i64 344, !520, i64 352, !520, i64 360, !520, i64 368, !520, i64 376, !528, i64 384, !520, i64 392}
!527 = !{!"", !516, i64 0, !517, i64 16}
!528 = !{!"int", !518, i64 0}
!529 = !DILocation(line: 104, column: 1, scope: !355)
!530 = !DILocation(line: 8, column: 29, scope: !364)
!531 = !DILocation(line: 8, column: 45, scope: !364)
!532 = !DILocation(line: 13, column: 5, scope: !364)
!533 = !DILocation(line: 14, column: 5, scope: !364)
!534 = !DILocation(line: 15, column: 5, scope: !364)
!535 = !DILocation(line: 13, column: 11, scope: !364)
!536 = !DILocation(line: 14, column: 15, scope: !364)
!537 = !DILocation(line: 15, column: 11, scope: !364)
!538 = !DILocation(line: 18, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !364, file: !1, line: 18, column: 9)
!540 = !DILocation(line: 18, column: 9, scope: !364)
!541 = !DILocation(line: 21, column: 9, scope: !423)
!542 = !DILocation(line: 21, column: 9, scope: !543)
!543 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 4)
!544 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 2)
!545 = !{!520, !520, i64 0}
!546 = !DILocation(line: 21, column: 34, scope: !424)
!547 = !DILocation(line: 21, column: 9, scope: !364)
!548 = !DILocation(line: 23, column: 14, scope: !430)
!549 = !DILocation(line: 23, column: 14, scope: !550)
!550 = !DILexicalBlockFile(scope: !551, file: !1, discriminator: 4)
!551 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 2)
!552 = !DILocation(line: 23, column: 39, scope: !431)
!553 = !DILocation(line: 23, column: 14, scope: !424)
!554 = !DILocation(line: 25, column: 14, scope: !437)
!555 = !DILocation(line: 25, column: 14, scope: !556)
!556 = !DILexicalBlockFile(scope: !557, file: !1, discriminator: 4)
!557 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 2)
!558 = !DILocation(line: 25, column: 41, scope: !438)
!559 = !DILocation(line: 25, column: 14, scope: !431)
!560 = !DILocation(line: 28, column: 25, scope: !445)
!561 = !DILocation(line: 28, column: 9, scope: !445)
!562 = !DILocation(line: 30, column: 9, scope: !563)
!563 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 1)
!564 = !DILocation(line: 30, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !444, file: !1, line: 30, column: 9)
!566 = !DILocation(line: 30, column: 9, scope: !444)
!567 = !DILocation(line: 30, column: 9, scope: !568)
!568 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 3)
!569 = !DILocation(line: 33, column: 34, scope: !364)
!570 = !DILocation(line: 33, column: 39, scope: !364)
!571 = !DILocation(line: 33, column: 10, scope: !364)
!572 = !DILocation(line: 10, column: 22, scope: !364)
!573 = !DILocation(line: 34, column: 5, scope: !574)
!574 = !DILexicalBlockFile(scope: !447, file: !1, discriminator: 1)
!575 = !DILocation(line: 34, column: 5, scope: !576)
!576 = distinct !DILexicalBlock(scope: !447, file: !1, line: 34, column: 5)
!577 = !DILocation(line: 34, column: 5, scope: !447)
!578 = !DILocation(line: 34, column: 5, scope: !579)
!579 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 3)
!580 = !DILocation(line: 35, column: 12, scope: !581)
!581 = distinct !DILexicalBlock(scope: !364, file: !1, line: 35, column: 9)
!582 = !DILocation(line: 35, column: 9, scope: !364)
!583 = !DILocation(line: 37, column: 25, scope: !364)
!584 = !{!585, !520, i64 16}
!585 = !{!"symtable", !520, i64 0, !520, i64 8, !520, i64 16, !520, i64 24, !520, i64 32, !520, i64 40, !528, i64 48, !520, i64 56, !520, i64 64, !528, i64 72, !528, i64 76}
!586 = !DILocation(line: 11, column: 15, scope: !364)
!587 = !DILocation(line: 38, column: 5, scope: !364)
!588 = !DILocation(line: 39, column: 28, scope: !364)
!589 = !{!585, !520, i64 64}
!590 = !DILocation(line: 39, column: 5, scope: !364)
!591 = !DILocation(line: 40, column: 5, scope: !364)
!592 = !DILocation(line: 41, column: 5, scope: !364)
!593 = !DILocation(line: 42, column: 1, scope: !364)
