; ModuleID = 'importdl.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }

@.str = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"dynamic module does not define init function (PyInit_%s)\00", align 1
@_Py_PackageContext = external global i8*, align 8
@PyExc_SystemError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"initialization of %s raised unreported exception\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"initialization of %s did not return an extension module\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__file__\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_LoadDynamicModule(%struct._object* %name, %struct._object* %path, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !359, metadata !419), !dbg !420
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !360, metadata !419), !dbg !421
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !361, metadata !419), !dbg !422
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !362, metadata !419), !dbg !423
  %call = tail call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %name, %struct._object* %path) #4, !dbg !424
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !362, metadata !419), !dbg !423
  %cmp = icmp eq %struct._object* %call, null, !dbg !425
  br i1 %cmp, label %if.end, label %if.then, !dbg !427

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !428
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !428, !tbaa !430
  %inc = add i64 %0, 1, !dbg !428
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !428, !tbaa !430
  br label %cleanup.114, !dbg !436

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %name, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* null) #4, !dbg !437
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !364, metadata !419), !dbg !438
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !439
  br i1 %cmp2, label %cleanup.114, label %if.end.4, !dbg !441

if.end.4:                                         ; preds = %if.end
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !442
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !442
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !365, metadata !419), !dbg !443
  %call8 = tail call i8* @strrchr(i8* %arraydecay, i32 46) #5, !dbg !444
  tail call void @llvm.dbg.value(metadata i8* %call8, i64 0, metadata !366, metadata !419), !dbg !445
  %cmp9 = icmp eq i8* %call8, null, !dbg !446
  tail call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !368, metadata !419), !dbg !448
  %add.ptr = getelementptr i8, i8* %call8, i64 1, !dbg !449
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !367, metadata !419), !dbg !451
  %packagecontext.0 = select i1 %cmp9, i8* null, i8* %arraydecay, !dbg !452
  %shortname.0 = select i1 %cmp9, i8* %arraydecay, i8* %add.ptr, !dbg !452
  %call12 = tail call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %path) #4, !dbg !453
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !363, metadata !419), !dbg !454
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !455
  br i1 %cmp13, label %do.body.84, label %if.end.15, !dbg !457

if.end.15:                                        ; preds = %if.end.4
  %ob_sval16 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 2, !dbg !458
  %arraydecay17 = bitcast %struct._object* %ob_sval16 to i8*, !dbg !458
  %call18 = tail call void ()* @_PyImport_GetDynLoadFunc(i8* %shortname.0, i8* %arraydecay17, %struct._IO_FILE* %fp) #4, !dbg !459
  tail call void @llvm.dbg.value(metadata void ()* %call18, i64 0, metadata !370, metadata !419), !dbg !460
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !400, metadata !419), !dbg !461
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !463
  %1 = load i64, i64* %ob_refcnt19, align 8, !dbg !463, !tbaa !430
  %dec = add i64 %1, -1, !dbg !463
  store i64 %dec, i64* %ob_refcnt19, align 8, !dbg !463, !tbaa !430
  %cmp20 = icmp eq i64 %dec, 0, !dbg !463
  br i1 %cmp20, label %if.else.22, label %if.end.23, !dbg !465

if.else.22:                                       ; preds = %if.end.15
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !466
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !466, !tbaa !468
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !466
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !466, !tbaa !469
  tail call void %3(%struct._object* %call12) #4, !dbg !466
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.15, %if.else.22
  %4 = bitcast void ()* %call18 to %struct._object* ()*, !dbg !473
  tail call void @llvm.dbg.value(metadata %struct._object* ()* %4, i64 0, metadata !376, metadata !419), !dbg !474
  %call24 = tail call %struct._object* @PyErr_Occurred() #4, !dbg !475
  %tobool = icmp eq %struct._object* %call24, null, !dbg !475
  br i1 %tobool, label %if.end.26, label %do.body.84, !dbg !477

if.end.26:                                        ; preds = %if.end.23
  %cmp27 = icmp eq void ()* %call18, null, !dbg !478
  br i1 %cmp27, label %if.then.28, label %if.end.46, !dbg !479

if.then.28:                                       ; preds = %if.end.26
  %call29 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %shortname.0) #4, !dbg !480
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !402, metadata !419), !dbg !481
  %cmp30 = icmp eq %struct._object* %call29, null, !dbg !482
  br i1 %cmp30, label %do.body.84, label %if.end.32, !dbg !484

if.end.32:                                        ; preds = %if.then.28
  %call33 = tail call %struct._object* @PyErr_SetImportError(%struct._object* %call29, %struct._object* %name, %struct._object* %path) #4, !dbg !485
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !405, metadata !419), !dbg !486
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !488
  %5 = load i64, i64* %ob_refcnt36, align 8, !dbg !488, !tbaa !430
  %dec37 = add i64 %5, -1, !dbg !488
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !488, !tbaa !430
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !488
  br i1 %cmp38, label %if.else.40, label %do.body.84, !dbg !490

if.else.40:                                       ; preds = %if.end.32
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 1, !dbg !491
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !491, !tbaa !468
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !491
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !491, !tbaa !469
  tail call void %7(%struct._object* %call29) #4, !dbg !491
  br label %do.body.84

if.end.46:                                        ; preds = %if.end.26
  %8 = load i64, i64* bitcast (i8** @_Py_PackageContext to i64*), align 8, !dbg !493, !tbaa !494
  store i8* %packagecontext.0, i8** @_Py_PackageContext, align 8, !dbg !495, !tbaa !494
  %call47 = tail call %struct._object* %4() #4, !dbg !496
  tail call void @llvm.dbg.value(metadata %struct._object* %call47, i64 0, metadata !362, metadata !419), !dbg !423
  store i64 %8, i64* bitcast (i8** @_Py_PackageContext to i64*), align 8, !dbg !497, !tbaa !494
  %cmp48 = icmp eq %struct._object* %call47, null, !dbg !498
  br i1 %cmp48, label %do.body.84, label %if.end.50, !dbg !500

if.end.50:                                        ; preds = %if.end.46
  %call51 = tail call %struct._object* @PyErr_Occurred() #4, !dbg !501
  %tobool52 = icmp eq %struct._object* %call51, null, !dbg !501
  br i1 %tobool52, label %if.end.55, label %if.then.53, !dbg !503

if.then.53:                                       ; preds = %if.end.50
  %9 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !504, !tbaa !494
  %call54 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %shortname.0) #4, !dbg !506
  br label %do.body.84, !dbg !507

if.end.55:                                        ; preds = %if.end.50
  %call56 = tail call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %call47) #4, !dbg !508
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %call56, i64 0, metadata !377, metadata !419), !dbg !509
  %cmp57 = icmp eq %struct.PyModuleDef* %call56, null, !dbg !510
  br i1 %cmp57, label %if.then.58, label %if.end.60, !dbg !512

if.then.58:                                       ; preds = %if.end.55
  %10 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !513, !tbaa !494
  %call59 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %shortname.0) #4, !dbg !515
  br label %do.body.84, !dbg !516

if.end.60:                                        ; preds = %if.end.55
  %m_init = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %call56, i64 0, i32 0, i32 1, !dbg !517
  %11 = bitcast %struct._object* ()** %m_init to void ()**, !dbg !518
  store void ()* %call18, void ()** %11, align 8, !dbg !518, !tbaa !519
  %call61 = tail call i32 @PyModule_AddObject(%struct._object* %call47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct._object* %path) #4, !dbg !522
  %cmp62 = icmp slt i32 %call61, 0, !dbg !524
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !525

if.then.63:                                       ; preds = %if.end.60
  tail call void @PyErr_Clear() #4, !dbg !526
  br label %if.end.67, !dbg !526

if.else.64:                                       ; preds = %if.end.60
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %path, i64 0, i32 0, !dbg !527
  %12 = load i64, i64* %ob_refcnt65, align 8, !dbg !527, !tbaa !430
  %inc66 = add i64 %12, 1, !dbg !527
  store i64 %inc66, i64* %ob_refcnt65, align 8, !dbg !527, !tbaa !430
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %call68 = tail call i32 @_PyImport_FixupExtensionObject(%struct._object* %call47, %struct._object* %name, %struct._object* %path) #4, !dbg !528
  %cmp69 = icmp slt i32 %call68, 0, !dbg !530
  br i1 %cmp69, label %do.body.84, label %do.body.72, !dbg !531

do.body.72:                                       ; preds = %if.end.67
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !407, metadata !419), !dbg !532
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !534
  %13 = load i64, i64* %ob_refcnt74, align 8, !dbg !534, !tbaa !430
  %dec75 = add i64 %13, -1, !dbg !534
  store i64 %dec75, i64* %ob_refcnt74, align 8, !dbg !534, !tbaa !430
  %cmp76 = icmp eq i64 %dec75, 0, !dbg !534
  br i1 %cmp76, label %if.else.78, label %cleanup.114, !dbg !536

if.else.78:                                       ; preds = %do.body.72
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !537
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !537, !tbaa !468
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !537
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !537, !tbaa !469
  tail call void %15(%struct._object* %call1) #4, !dbg !537
  br label %cleanup.114

do.body.84:                                       ; preds = %if.then.28, %if.end.32, %if.else.40, %if.end.23, %if.then.53, %if.then.58, %if.end.4, %if.end.46, %if.end.67
  %m.0 = phi %struct._object* [ null, %if.end.4 ], [ null, %if.end.23 ], [ null, %if.end.46 ], [ %call47, %if.then.53 ], [ %call47, %if.then.58 ], [ %call47, %if.end.67 ], [ null, %if.else.40 ], [ null, %if.end.32 ], [ null, %if.then.28 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !409, metadata !419), !dbg !539
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !541
  %16 = load i64, i64* %ob_refcnt86, align 8, !dbg !541, !tbaa !430
  %dec87 = add i64 %16, -1, !dbg !541
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !541, !tbaa !430
  %cmp88 = icmp eq i64 %dec87, 0, !dbg !541
  br i1 %cmp88, label %if.else.90, label %if.end.93, !dbg !543

if.else.90:                                       ; preds = %do.body.84
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !544
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8, !dbg !544, !tbaa !468
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !544
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8, !dbg !544, !tbaa !469
  tail call void %18(%struct._object* %call1) #4, !dbg !544
  br label %if.end.93

if.end.93:                                        ; preds = %do.body.84, %if.else.90
  tail call void @llvm.dbg.value(metadata %struct._object* %m.0, i64 0, metadata !411, metadata !419), !dbg !546
  %cmp97 = icmp eq %struct._object* %m.0, null, !dbg !548
  br i1 %cmp97, label %cleanup.114, label %do.body.99, !dbg !549

do.body.99:                                       ; preds = %if.end.93
  tail call void @llvm.dbg.value(metadata %struct._object* %m.0, i64 0, metadata !413, metadata !419), !dbg !550
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %m.0, i64 0, i32 0, !dbg !552
  %19 = load i64, i64* %ob_refcnt101, align 8, !dbg !552, !tbaa !430
  %dec102 = add i64 %19, -1, !dbg !552
  store i64 %dec102, i64* %ob_refcnt101, align 8, !dbg !552, !tbaa !430
  %cmp103 = icmp eq i64 %dec102, 0, !dbg !552
  br i1 %cmp103, label %if.else.105, label %cleanup.114, !dbg !554

if.else.105:                                      ; preds = %do.body.99
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %m.0, i64 0, i32 1, !dbg !555
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8, !dbg !555, !tbaa !468
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !555
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8, !dbg !555, !tbaa !469
  tail call void %21(%struct._object* %m.0) #4, !dbg !555
  br label %cleanup.114

cleanup.114:                                      ; preds = %if.end.93, %do.body.99, %if.else.105, %if.else.78, %do.body.72, %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ null, %if.end ], [ %call47, %do.body.72 ], [ %call47, %if.else.78 ], [ null, %if.else.105 ], [ null, %do.body.99 ], [ null, %if.end.93 ]
  ret %struct._object* %retval.0, !dbg !557
}

declare %struct._object* @_PyImport_FindExtensionObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

declare void ()* @_PyImport_GetDynLoadFunc(i8*, i8*, %struct._IO_FILE*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct.PyModuleDef* @PyModule_GetDef(%struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare void @PyErr_Clear() #1

declare i32 @_PyImport_FixupExtensionObject(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!416, !417}
!llvm.ident = !{!418}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !354)
!1 = !DIFile(filename: "./Python/importdl.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !351}
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
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !345, line: 41, baseType: !346)
!345 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!346 = !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 31, size: 320, align: 64, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !346, file: !345, line: 32, baseType: !23, size: 192, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !346, file: !345, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !346, file: !345, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!5}
!354 = !{!355}
!355 = !DISubprogram(name: "_PyImport_LoadDynamicModule", scope: !1, file: !1, line: 24, type: !356, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._IO_FILE*)* @_PyImport_LoadDynamicModule, variables: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!5, !5, !5, !45}
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !376, !377, !400, !402, !405, !407, !409, !411, !413}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !355, file: !1, line: 24, type: !5)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 2, scope: !355, file: !1, line: 24, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !355, file: !1, line: 24, type: !45)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !355, file: !1, line: 26, type: !5)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbytes", scope: !355, file: !1, line: 28, type: !5)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameascii", scope: !355, file: !1, line: 30, type: !5)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namestr", scope: !355, file: !1, line: 31, type: !52)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastdot", scope: !355, file: !1, line: 31, type: !52)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shortname", scope: !355, file: !1, line: 31, type: !52)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "packagecontext", scope: !355, file: !1, line: 31, type: !52)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldcontext", scope: !355, file: !1, line: 31, type: !52)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p0", scope: !355, file: !1, line: 32, type: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "dl_funcptr", file: !372, line: 21, baseType: !373)
!372 = !DIFile(filename: "./Python/importdl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null}
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !355, file: !1, line: 33, type: !351)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !355, file: !1, line: 34, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !380, line: 47, size: 832, align: 64, elements: !381)
!380 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!381 = !{!382, !390, !391, !392, !393, !396, !397, !398, !399}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !379, file: !380, line: 48, baseType: !383, size: 320, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !380, line: 38, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !380, line: 33, size: 320, align: 64, elements: !385)
!385 = !{!386, !387, !388, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !384, file: !380, line: 34, baseType: !6, size: 128, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !384, file: !380, line: 35, baseType: !351, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !384, file: !380, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !384, file: !380, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !379, file: !380, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !379, file: !380, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !379, file: !380, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !379, file: !380, line: 52, baseType: !394, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !379, file: !380, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !379, file: !380, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !379, file: !380, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !379, file: !380, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !401, file: !1, line: 71, type: !5)
!401 = distinct !DILexicalBlock(scope: !355, file: !1, line: 71, column: 5)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !403, file: !1, line: 77, type: !5)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 76, column: 20)
!404 = distinct !DILexicalBlock(scope: !355, file: !1, line: 76, column: 9)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !406, file: !1, line: 83, type: !5)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 83, column: 9)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !408, file: !1, line: 118, type: !5)
!408 = distinct !DILexicalBlock(scope: !355, file: !1, line: 118, column: 5)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !410, file: !1, line: 122, type: !5)
!410 = distinct !DILexicalBlock(scope: !355, file: !1, line: 122, column: 5)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !412, file: !1, line: 123, type: !5)
!412 = distinct !DILexicalBlock(scope: !355, file: !1, line: 123, column: 5)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !414, file: !1, line: 123, type: !5)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 123, column: 5)
!415 = distinct !DILexicalBlock(scope: !412, file: !1, line: 123, column: 5)
!416 = !{i32 2, !"Dwarf Version", i32 4}
!417 = !{i32 2, !"Debug Info Version", i32 3}
!418 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!419 = !DIExpression()
!420 = !DILocation(line: 24, column: 39, scope: !355)
!421 = !DILocation(line: 24, column: 55, scope: !355)
!422 = !DILocation(line: 24, column: 67, scope: !355)
!423 = !DILocation(line: 26, column: 15, scope: !355)
!424 = !DILocation(line: 36, column: 9, scope: !355)
!425 = !DILocation(line: 37, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !355, file: !1, line: 37, column: 9)
!427 = !DILocation(line: 37, column: 9, scope: !355)
!428 = !DILocation(line: 38, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 37, column: 20)
!430 = !{!431, !432, i64 0}
!431 = !{!"_object", !432, i64 0, !435, i64 8}
!432 = !{!"long", !433, i64 0}
!433 = !{!"omnipotent char", !434, i64 0}
!434 = !{!"Simple C/C++ TBAA"}
!435 = !{!"any pointer", !433, i64 0}
!436 = !DILocation(line: 39, column: 9, scope: !429)
!437 = !DILocation(line: 45, column: 17, scope: !355)
!438 = !DILocation(line: 30, column: 15, scope: !355)
!439 = !DILocation(line: 46, column: 19, scope: !440)
!440 = distinct !DILexicalBlock(scope: !355, file: !1, line: 46, column: 9)
!441 = !DILocation(line: 46, column: 9, scope: !355)
!442 = !DILocation(line: 49, column: 15, scope: !355)
!443 = !DILocation(line: 31, column: 11, scope: !355)
!444 = !DILocation(line: 53, column: 15, scope: !355)
!445 = !DILocation(line: 31, column: 21, scope: !355)
!446 = !DILocation(line: 54, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !355, file: !1, line: 54, column: 9)
!448 = !DILocation(line: 31, column: 43, scope: !355)
!449 = !DILocation(line: 60, column: 28, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 58, column: 10)
!451 = !DILocation(line: 31, column: 31, scope: !355)
!452 = !DILocation(line: 54, column: 9, scope: !355)
!453 = !DILocation(line: 66, column: 17, scope: !355)
!454 = !DILocation(line: 28, column: 15, scope: !355)
!455 = !DILocation(line: 67, column: 19, scope: !456)
!456 = distinct !DILexicalBlock(scope: !355, file: !1, line: 67, column: 9)
!457 = !DILocation(line: 67, column: 9, scope: !355)
!458 = !DILocation(line: 70, column: 35, scope: !355)
!459 = !DILocation(line: 69, column: 10, scope: !355)
!460 = !DILocation(line: 32, column: 16, scope: !355)
!461 = !DILocation(line: 71, column: 5, scope: !462)
!462 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!463 = !DILocation(line: 71, column: 5, scope: !464)
!464 = distinct !DILexicalBlock(scope: !401, file: !1, line: 71, column: 5)
!465 = !DILocation(line: 71, column: 5, scope: !401)
!466 = !DILocation(line: 71, column: 5, scope: !467)
!467 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 3)
!468 = !{!431, !435, i64 8}
!469 = !{!470, !435, i64 48}
!470 = !{!"_typeobject", !471, i64 0, !435, i64 24, !432, i64 32, !432, i64 40, !435, i64 48, !435, i64 56, !435, i64 64, !435, i64 72, !435, i64 80, !435, i64 88, !435, i64 96, !435, i64 104, !435, i64 112, !435, i64 120, !435, i64 128, !435, i64 136, !435, i64 144, !435, i64 152, !435, i64 160, !432, i64 168, !435, i64 176, !435, i64 184, !435, i64 192, !435, i64 200, !432, i64 208, !435, i64 216, !435, i64 224, !435, i64 232, !435, i64 240, !435, i64 248, !435, i64 256, !435, i64 264, !435, i64 272, !435, i64 280, !432, i64 288, !435, i64 296, !435, i64 304, !435, i64 312, !435, i64 320, !435, i64 328, !435, i64 336, !435, i64 344, !435, i64 352, !435, i64 360, !435, i64 368, !435, i64 376, !472, i64 384, !435, i64 392}
!471 = !{!"", !431, i64 0, !432, i64 16}
!472 = !{!"int", !433, i64 0}
!473 = !DILocation(line: 73, column: 9, scope: !355)
!474 = !DILocation(line: 33, column: 17, scope: !355)
!475 = !DILocation(line: 74, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !355, file: !1, line: 74, column: 9)
!477 = !DILocation(line: 74, column: 9, scope: !355)
!478 = !DILocation(line: 76, column: 11, scope: !404)
!479 = !DILocation(line: 76, column: 9, scope: !355)
!480 = !DILocation(line: 77, column: 25, scope: !403)
!481 = !DILocation(line: 77, column: 19, scope: !403)
!482 = !DILocation(line: 80, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !403, file: !1, line: 80, column: 13)
!484 = !DILocation(line: 80, column: 13, scope: !403)
!485 = !DILocation(line: 82, column: 9, scope: !403)
!486 = !DILocation(line: 83, column: 9, scope: !487)
!487 = !DILexicalBlockFile(scope: !406, file: !1, discriminator: 1)
!488 = !DILocation(line: 83, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !406, file: !1, line: 83, column: 9)
!490 = !DILocation(line: 83, column: 9, scope: !406)
!491 = !DILocation(line: 83, column: 9, scope: !492)
!492 = !DILexicalBlockFile(scope: !489, file: !1, discriminator: 3)
!493 = !DILocation(line: 86, column: 18, scope: !355)
!494 = !{!435, !435, i64 0}
!495 = !DILocation(line: 87, column: 24, scope: !355)
!496 = !DILocation(line: 88, column: 9, scope: !355)
!497 = !DILocation(line: 89, column: 24, scope: !355)
!498 = !DILocation(line: 90, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !355, file: !1, line: 90, column: 9)
!500 = !DILocation(line: 90, column: 9, scope: !355)
!501 = !DILocation(line: 93, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !355, file: !1, line: 93, column: 9)
!503 = !DILocation(line: 93, column: 9, scope: !355)
!504 = !DILocation(line: 94, column: 22, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !1, line: 93, column: 27)
!506 = !DILocation(line: 94, column: 9, scope: !505)
!507 = !DILocation(line: 97, column: 9, scope: !505)
!508 = !DILocation(line: 101, column: 11, scope: !355)
!509 = !DILocation(line: 34, column: 25, scope: !355)
!510 = !DILocation(line: 102, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !355, file: !1, line: 102, column: 9)
!512 = !DILocation(line: 102, column: 9, scope: !355)
!513 = !DILocation(line: 103, column: 22, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !1, line: 102, column: 22)
!515 = !DILocation(line: 103, column: 9, scope: !514)
!516 = !DILocation(line: 106, column: 9, scope: !514)
!517 = !DILocation(line: 108, column: 17, scope: !355)
!518 = !DILocation(line: 108, column: 24, scope: !355)
!519 = !{!520, !435, i64 16}
!520 = !{!"PyModuleDef", !521, i64 0, !435, i64 40, !435, i64 48, !432, i64 56, !435, i64 64, !435, i64 72, !435, i64 80, !435, i64 88, !435, i64 96}
!521 = !{!"PyModuleDef_Base", !431, i64 0, !435, i64 16, !432, i64 24, !435, i64 32}
!522 = !DILocation(line: 111, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !355, file: !1, line: 111, column: 9)
!524 = !DILocation(line: 111, column: 49, scope: !523)
!525 = !DILocation(line: 111, column: 9, scope: !355)
!526 = !DILocation(line: 112, column: 9, scope: !523)
!527 = !DILocation(line: 114, column: 9, scope: !523)
!528 = !DILocation(line: 116, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !355, file: !1, line: 116, column: 9)
!530 = !DILocation(line: 116, column: 55, scope: !529)
!531 = !DILocation(line: 116, column: 9, scope: !355)
!532 = !DILocation(line: 118, column: 5, scope: !533)
!533 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!534 = !DILocation(line: 118, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !408, file: !1, line: 118, column: 5)
!536 = !DILocation(line: 118, column: 5, scope: !408)
!537 = !DILocation(line: 118, column: 5, scope: !538)
!538 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 3)
!539 = !DILocation(line: 122, column: 5, scope: !540)
!540 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 1)
!541 = !DILocation(line: 122, column: 5, scope: !542)
!542 = distinct !DILexicalBlock(scope: !410, file: !1, line: 122, column: 5)
!543 = !DILocation(line: 122, column: 5, scope: !410)
!544 = !DILocation(line: 122, column: 5, scope: !545)
!545 = !DILexicalBlockFile(scope: !542, file: !1, discriminator: 3)
!546 = !DILocation(line: 123, column: 5, scope: !547)
!547 = !DILexicalBlockFile(scope: !412, file: !1, discriminator: 1)
!548 = !DILocation(line: 123, column: 5, scope: !415)
!549 = !DILocation(line: 123, column: 5, scope: !412)
!550 = !DILocation(line: 123, column: 5, scope: !551)
!551 = !DILexicalBlockFile(scope: !414, file: !1, discriminator: 4)
!552 = !DILocation(line: 123, column: 5, scope: !553)
!553 = distinct !DILexicalBlock(scope: !414, file: !1, line: 123, column: 5)
!554 = !DILocation(line: 123, column: 5, scope: !414)
!555 = !DILocation(line: 123, column: 5, scope: !556)
!556 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 6)
!557 = !DILocation(line: 125, column: 1, scope: !355)
