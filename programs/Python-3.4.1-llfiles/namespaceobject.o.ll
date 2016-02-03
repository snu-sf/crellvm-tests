; ModuleID = 'namespaceobject.o.bc'
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
%struct._PyNamespaceObject = type { %struct._object, %struct._object* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [22 x i8] c"types.SimpleNamespace\00", align 1
@namespace_doc = internal global [63 x i8] c"A simple attribute-based namespace.\0A\0ASimpleNamespace(**kwargs)\00", align 16
@namespace_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._PyNamespaceObject*)* @namespace_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @namespace_reduce__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@namespace_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@_PyNamespace_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct._PyNamespaceObject*)* @namespace_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @namespace_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @namespace_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._PyNamespaceObject*, i32 (%struct._object*, i8*)*, i8*)* @namespace_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct._PyNamespaceObject*)* @namespace_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @namespace_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @namespace_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @namespace_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._PyNamespaceObject*, %struct._object*, %struct._object*)* @namespace_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @namespace_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s(...)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%S=%R\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s(%S)\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@namespace_reduce__doc__ = internal global [38 x i8] c"Return state information for pickling\00", align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"no positional arguments expected\00", align 1

; Function Attrs: nounwind uwtable
define internal void @namespace_dealloc(%struct._PyNamespaceObject* %ns) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyNamespaceObject* %ns, i64 0, metadata !388, metadata !528), !dbg !529
  %0 = bitcast %struct._PyNamespaceObject* %ns to i8*, !dbg !530
  tail call void @PyObject_GC_UnTrack(i8* %0) #3, !dbg !531
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 1, !dbg !532
  %1 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !532, !tbaa !534
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !389, metadata !528), !dbg !532
  %cmp = icmp eq %struct._object* %1, null, !dbg !541
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !542

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %ns_dict, align 8, !dbg !543, !tbaa !534
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !391, metadata !528), !dbg !545
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !547
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !547, !tbaa !549
  %dec = add i64 %2, -1, !dbg !547
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !547, !tbaa !549
  %cmp3 = icmp eq i64 %dec, 0, !dbg !547
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !550

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !551
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !551, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !551
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !551, !tbaa !554
  tail call void %4(%struct._object* %1) #3, !dbg !551
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %ob_type8 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 0, i32 1, !dbg !558
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !558, !tbaa !553
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 38, !dbg !559
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !559, !tbaa !560
  tail call void %6(i8* %0) #3, !dbg !558
  ret void, !dbg !561
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_repr(%struct._object* %ns) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %ns, i64 0, metadata !397, metadata !528), !dbg !562
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !399, metadata !528), !dbg !563
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !400, metadata !528), !dbg !564
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !401, metadata !528), !dbg !565
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !402, metadata !528), !dbg !566
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !403, metadata !528), !dbg !567
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !407, metadata !528), !dbg !568
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %ns, i64 0, i32 1, !dbg !569
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !569, !tbaa !553
  %cmp = icmp eq %struct._typeobject* %0, @_PyNamespace_Type, !dbg !570
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !571

cond.false:                                       ; preds = %entry
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !572
  %1 = load i8*, i8** %tp_name, align 8, !dbg !572, !tbaa !573
  br label %cond.end, !dbg !571

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %1, %cond.false ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %entry ], !dbg !571
  tail call void @llvm.dbg.value(metadata i8* %cond, i64 0, metadata !408, metadata !528), !dbg !574
  %call = tail call i32 @Py_ReprEnter(%struct._object* %ns) #3, !dbg !575
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !398, metadata !528), !dbg !576
  %cmp2 = icmp eq i32 %call, 0, !dbg !577
  br i1 %cmp2, label %if.end, label %if.then, !dbg !579

if.then:                                          ; preds = %cond.end
  %cmp3 = icmp sgt i32 %call, 0, !dbg !580
  br i1 %cmp3, label %cond.true.4, label %cleanup, !dbg !582

cond.true.4:                                      ; preds = %if.then
  %call5 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %cond) #3, !dbg !583
  br label %cleanup, !dbg !582

if.end:                                           ; preds = %cond.end
  %call9 = tail call %struct._object* @PyList_New(i64 0) #3, !dbg !584
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !400, metadata !528), !dbg !564
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !585
  br i1 %cmp10, label %if.end.163, label %if.end.12, !dbg !587

if.end.12:                                        ; preds = %if.end
  %ns_dict = getelementptr inbounds %struct._object, %struct._object* %ns, i64 1, !dbg !588
  %2 = bitcast %struct._object* %ns_dict to %struct._object**, !dbg !588
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !588, !tbaa !534
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !401, metadata !528), !dbg !565
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !589
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !589, !tbaa !549
  %inc = add i64 %4, 1, !dbg !589
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !589, !tbaa !549
  %call13 = tail call %struct._object* @PyDict_Keys(%struct._object* %3) #3, !dbg !590
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !402, metadata !528), !dbg !566
  %cmp14 = icmp eq %struct._object* %call13, null, !dbg !591
  br i1 %cmp14, label %do.body.94, label %if.end.16, !dbg !593

if.end.16:                                        ; preds = %if.end.12
  %call17 = tail call i32 @PyList_Sort(%struct._object* %call13) #3, !dbg !594
  %cmp18 = icmp eq i32 %call17, 0, !dbg !596
  br i1 %cmp18, label %if.end.20, label %do.body.94, !dbg !597

if.end.20:                                        ; preds = %if.end.16
  %call21 = tail call %struct._object* @PyObject_GetIter(%struct._object* %call13) #3, !dbg !598
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !403, metadata !528), !dbg !567
  %cmp22 = icmp eq %struct._object* %call21, null, !dbg !599
  br i1 %cmp22, label %do.body.94, label %while.cond.preheader, !dbg !601

while.cond.preheader:                             ; preds = %if.end.20
  br label %while.cond, !dbg !602

while.cond:                                       ; preds = %while.cond.preheader, %if.end.53
  %call25 = tail call %struct._object* @PyIter_Next(%struct._object* %call21) #3, !dbg !602
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !404, metadata !528), !dbg !603
  %cmp26 = icmp eq %struct._object* %call25, null, !dbg !604
  br i1 %cmp26, label %while.end, label %while.body, !dbg !605

while.body:                                       ; preds = %while.cond
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 1, !dbg !606
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !606, !tbaa !553
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !606
  %6 = load i64, i64* %tp_flags, align 8, !dbg !606, !tbaa !607
  %and = and i64 %6, 268435456, !dbg !606
  %cmp28 = icmp eq i64 %and, 0, !dbg !606
  br i1 %cmp28, label %do.body.44, label %land.lhs.true, !dbg !608

land.lhs.true:                                    ; preds = %while.body
  %7 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 1, i32 0, !dbg !609
  %8 = load i64, i64* %7, align 8, !dbg !609, !tbaa !611
  %cmp29 = icmp sgt i64 %8, 0, !dbg !614
  br i1 %cmp29, label %if.then.30, label %do.body.44, !dbg !615

if.then.30:                                       ; preds = %land.lhs.true
  %call31 = tail call %struct._object* @PyDict_GetItem(%struct._object* %3, %struct._object* %call25) #3, !dbg !616
  tail call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !409, metadata !528), !dbg !617
  %call32 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call25, %struct._object* %call31) #3, !dbg !618
  tail call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !413, metadata !528), !dbg !619
  %cmp33 = icmp eq %struct._object* %call32, null, !dbg !620
  br i1 %cmp33, label %do.body.44, label %if.else, !dbg !621

if.else:                                          ; preds = %if.then.30
  %call35 = tail call i32 @PyList_Append(%struct._object* %call9, %struct._object* %call32) #3, !dbg !622
  tail call void @llvm.dbg.value(metadata i32 %call35, i64 0, metadata !399, metadata !528), !dbg !563
  tail call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !414, metadata !528), !dbg !623
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %call32, i64 0, i32 0, !dbg !625
  %9 = load i64, i64* %ob_refcnt36, align 8, !dbg !625, !tbaa !549
  %dec = add i64 %9, -1, !dbg !625
  store i64 %dec, i64* %ob_refcnt36, align 8, !dbg !625, !tbaa !549
  %cmp37 = icmp eq i64 %dec, 0, !dbg !625
  br i1 %cmp37, label %if.else.39, label %do.body.44, !dbg !627

if.else.39:                                       ; preds = %if.else
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %call32, i64 0, i32 1, !dbg !628
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !628, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !628
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !628, !tbaa !554
  tail call void %11(%struct._object* %call32) #3, !dbg !628
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.30, %if.else, %if.else.39, %while.body, %land.lhs.true
  %loop_error.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %while.body ], [ 1, %if.then.30 ], [ %call35, %if.else ], [ %call35, %if.else.39 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !418, metadata !528), !dbg !630
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 0, !dbg !632
  %12 = load i64, i64* %ob_refcnt46, align 8, !dbg !632, !tbaa !549
  %dec47 = add i64 %12, -1, !dbg !632
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !632, !tbaa !549
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !632
  br i1 %cmp48, label %if.else.50, label %if.end.53, !dbg !634

if.else.50:                                       ; preds = %do.body.44
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !635, !tbaa !553
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !635
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !635, !tbaa !554
  tail call void %14(%struct._object* %call25) #3, !dbg !635
  br label %if.end.53

if.end.53:                                        ; preds = %do.body.44, %if.else.50
  %tobool = icmp eq i32 %loop_error.2, 0, !dbg !637
  br i1 %tobool, label %while.cond, label %do.body.94.loopexit, !dbg !639

while.end:                                        ; preds = %while.cond
  %call58 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !640
  tail call void @llvm.dbg.value(metadata %struct._object* %call58, i64 0, metadata !405, metadata !528), !dbg !641
  %cmp59 = icmp eq %struct._object* %call58, null, !dbg !642
  br i1 %cmp59, label %do.body.94, label %if.end.61, !dbg !644

if.end.61:                                        ; preds = %while.end
  %call62 = tail call %struct._object* @PyUnicode_Join(%struct._object* %call58, %struct._object* %call9) #3, !dbg !645
  tail call void @llvm.dbg.value(metadata %struct._object* %call62, i64 0, metadata !406, metadata !528), !dbg !646
  tail call void @llvm.dbg.value(metadata %struct._object* %call58, i64 0, metadata !420, metadata !528), !dbg !647
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %call58, i64 0, i32 0, !dbg !649
  %15 = load i64, i64* %ob_refcnt65, align 8, !dbg !649, !tbaa !549
  %dec66 = add i64 %15, -1, !dbg !649
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !649, !tbaa !549
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !649
  br i1 %cmp67, label %if.else.69, label %if.end.72, !dbg !651

if.else.69:                                       ; preds = %if.end.61
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %call58, i64 0, i32 1, !dbg !652
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !652, !tbaa !553
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !652
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !652, !tbaa !554
  tail call void %17(%struct._object* %call58) #3, !dbg !652
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.61, %if.else.69
  %cmp75 = icmp eq %struct._object* %call62, null, !dbg !654
  br i1 %cmp75, label %do.body.94, label %if.end.77, !dbg !656

if.end.77:                                        ; preds = %if.end.72
  %call78 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %cond, %struct._object* %call62) #3, !dbg !657
  tail call void @llvm.dbg.value(metadata %struct._object* %call78, i64 0, metadata !407, metadata !528), !dbg !568
  tail call void @llvm.dbg.value(metadata %struct._object* %call62, i64 0, metadata !422, metadata !528), !dbg !658
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %call62, i64 0, i32 0, !dbg !660
  %18 = load i64, i64* %ob_refcnt81, align 8, !dbg !660, !tbaa !549
  %dec82 = add i64 %18, -1, !dbg !660
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !660, !tbaa !549
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !660
  br i1 %cmp83, label %if.else.85, label %do.body.94, !dbg !662

if.else.85:                                       ; preds = %if.end.77
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %call62, i64 0, i32 1, !dbg !663
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !663, !tbaa !553
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !663
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !663, !tbaa !554
  tail call void %20(%struct._object* %call62) #3, !dbg !663
  br label %do.body.94

do.body.94.loopexit:                              ; preds = %if.end.53
  br label %do.body.94, !dbg !665

do.body.94:                                       ; preds = %do.body.94.loopexit, %if.end.72, %while.end, %if.end.77, %if.else.85, %if.end.20, %if.end.12, %if.end.16
  %keys.0252 = phi %struct._object* [ %call13, %if.end.16 ], [ null, %if.end.12 ], [ %call13, %if.end.20 ], [ %call13, %if.else.85 ], [ %call13, %if.end.77 ], [ %call13, %while.end ], [ %call13, %if.end.72 ], [ %call13, %do.body.94.loopexit ]
  %keys_iter.0250 = phi %struct._object* [ null, %if.end.16 ], [ null, %if.end.12 ], [ null, %if.end.20 ], [ %call21, %if.else.85 ], [ %call21, %if.end.77 ], [ %call21, %while.end ], [ %call21, %if.end.72 ], [ %call21, %do.body.94.loopexit ]
  %repr.0248 = phi %struct._object* [ null, %if.end.16 ], [ null, %if.end.12 ], [ null, %if.end.20 ], [ %call78, %if.else.85 ], [ %call78, %if.end.77 ], [ null, %while.end ], [ null, %if.end.72 ], [ null, %do.body.94.loopexit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !426, metadata !528), !dbg !665
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !667
  %21 = load i64, i64* %ob_refcnt96, align 8, !dbg !667, !tbaa !549
  %dec97 = add i64 %21, -1, !dbg !667
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !667, !tbaa !549
  %cmp98 = icmp eq i64 %dec97, 0, !dbg !667
  br i1 %cmp98, label %if.else.100, label %if.end.106, !dbg !669

if.else.100:                                      ; preds = %do.body.94
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !670
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8, !dbg !670, !tbaa !553
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !670
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8, !dbg !670, !tbaa !554
  tail call void %23(%struct._object* %call9) #3, !dbg !670
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %do.body.94
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !429, metadata !528), !dbg !672
  %cmp111 = icmp eq %struct._object* %3, null, !dbg !674
  br i1 %cmp111, label %if.end.125, label %do.body.113, !dbg !675

do.body.113:                                      ; preds = %if.end.106
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !431, metadata !528), !dbg !676
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !678, !tbaa !549
  %dec116 = add i64 %24, -1, !dbg !678
  store i64 %dec116, i64* %ob_refcnt, align 8, !dbg !678, !tbaa !549
  %cmp117 = icmp eq i64 %dec116, 0, !dbg !678
  br i1 %cmp117, label %if.else.119, label %if.end.125, !dbg !680

if.else.119:                                      ; preds = %do.body.113
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !681
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !681, !tbaa !553
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !681
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !681, !tbaa !554
  tail call void %26(%struct._object* %3) #3, !dbg !681
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.119, %do.body.113, %if.end.106
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !434, metadata !528), !dbg !683
  %cmp130 = icmp eq %struct._object* %keys.0252, null, !dbg !685
  br i1 %cmp130, label %if.end.144, label %do.body.132, !dbg !686

do.body.132:                                      ; preds = %if.end.125
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !436, metadata !528), !dbg !687
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %keys.0252, i64 0, i32 0, !dbg !689
  %27 = load i64, i64* %ob_refcnt134, align 8, !dbg !689, !tbaa !549
  %dec135 = add i64 %27, -1, !dbg !689
  store i64 %dec135, i64* %ob_refcnt134, align 8, !dbg !689, !tbaa !549
  %cmp136 = icmp eq i64 %dec135, 0, !dbg !689
  br i1 %cmp136, label %if.else.138, label %if.end.144, !dbg !691

if.else.138:                                      ; preds = %do.body.132
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %keys.0252, i64 0, i32 1, !dbg !692
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8, !dbg !692, !tbaa !553
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !692
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8, !dbg !692, !tbaa !554
  tail call void %29(%struct._object* %keys.0252) #3, !dbg !692
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.138, %do.body.132, %if.end.125
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !439, metadata !528), !dbg !694
  %cmp149 = icmp eq %struct._object* %keys_iter.0250, null, !dbg !696
  br i1 %cmp149, label %if.end.163, label %do.body.151, !dbg !697

do.body.151:                                      ; preds = %if.end.144
  tail call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !441, metadata !528), !dbg !698
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %keys_iter.0250, i64 0, i32 0, !dbg !700
  %30 = load i64, i64* %ob_refcnt153, align 8, !dbg !700, !tbaa !549
  %dec154 = add i64 %30, -1, !dbg !700
  store i64 %dec154, i64* %ob_refcnt153, align 8, !dbg !700, !tbaa !549
  %cmp155 = icmp eq i64 %dec154, 0, !dbg !700
  br i1 %cmp155, label %if.else.157, label %if.end.163, !dbg !702

if.else.157:                                      ; preds = %do.body.151
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %keys_iter.0250, i64 0, i32 1, !dbg !703
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !703, !tbaa !553
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !703
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8, !dbg !703, !tbaa !554
  tail call void %32(%struct._object* %keys_iter.0250) #3, !dbg !703
  br label %if.end.163

if.end.163:                                       ; preds = %if.end, %if.else.157, %do.body.151, %if.end.144
  %repr.0249260262265 = phi %struct._object* [ %repr.0248, %if.else.157 ], [ %repr.0248, %do.body.151 ], [ %repr.0248, %if.end.144 ], [ null, %if.end ]
  tail call void @Py_ReprLeave(%struct._object* %ns) #3, !dbg !705
  br label %cleanup, !dbg !706

cleanup:                                          ; preds = %cond.true.4, %if.then, %if.end.163
  %retval.0 = phi %struct._object* [ %repr.0249260262265, %if.end.163 ], [ %call5, %cond.true.4 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !707
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @namespace_traverse(%struct._PyNamespaceObject* nocapture readonly %ns, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyNamespaceObject* %ns, i64 0, metadata !448, metadata !528), !dbg !708
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !449, metadata !528), !dbg !709
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !450, metadata !528), !dbg !710
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 1, !dbg !711
  %0 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !711, !tbaa !534
  %tobool = icmp eq %struct._object* %0, null, !dbg !711
  br i1 %tobool, label %do.end, label %if.then, !dbg !713

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #3, !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !451, metadata !528), !dbg !714
  %tobool2 = icmp eq i32 %call, 0, !dbg !716
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !718

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_clear(%struct._PyNamespaceObject* nocapture %ns) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyNamespaceObject* %ns, i64 0, metadata !459, metadata !528), !dbg !720
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 1, !dbg !721
  %0 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !721, !tbaa !534
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !460, metadata !528), !dbg !721
  %cmp = icmp eq %struct._object* %0, null, !dbg !723
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !724

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %ns_dict, align 8, !dbg !725, !tbaa !534
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !462, metadata !528), !dbg !727
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !729
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !729, !tbaa !549
  %dec = add i64 %1, -1, !dbg !729
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !729, !tbaa !549
  %cmp3 = icmp eq i64 %dec, 0, !dbg !729
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !731

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !732
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !732, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !732
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !732, !tbaa !554
  tail call void %3(%struct._object* %0) #3, !dbg !732
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  ret i32 0, !dbg !734
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !468, metadata !528), !dbg !735
  tail call void @llvm.dbg.value(metadata %struct._object* %other, i64 0, metadata !469, metadata !528), !dbg !736
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !470, metadata !528), !dbg !737
  %call = tail call i32 @PyObject_IsInstance(%struct._object* %self, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i64 0, i32 0, i32 0)) #3, !dbg !738
  %tobool = icmp eq i32 %call, 0, !dbg !738
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !740

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @PyObject_IsInstance(%struct._object* %other, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i64 0, i32 0, i32 0)) #3, !dbg !741
  %tobool2 = icmp eq i32 %call1, 0, !dbg !741
  br i1 %tobool2, label %if.end, label %if.then, !dbg !742

if.then:                                          ; preds = %land.lhs.true
  %ns_dict = getelementptr inbounds %struct._object, %struct._object* %self, i64 1, !dbg !743
  %0 = bitcast %struct._object* %ns_dict to %struct._object**, !dbg !743
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !743, !tbaa !534
  %ns_dict3 = getelementptr inbounds %struct._object, %struct._object* %other, i64 1, !dbg !744
  %2 = bitcast %struct._object* %ns_dict3 to %struct._object**, !dbg !744
  %3 = load %struct._object*, %struct._object** %2, align 8, !dbg !744, !tbaa !534
  %call4 = tail call %struct._object* @PyObject_RichCompare(%struct._object* %1, %struct._object* %3, i32 %op) #3, !dbg !745
  br label %return, !dbg !746

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !747, !tbaa !549
  %inc = add i64 %4, 1, !dbg !747
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !747, !tbaa !549
  br label %return, !dbg !748

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call4, %if.then ], [ @_Py_NotImplementedStruct, %if.end ]
  ret %struct._object* %retval.0, !dbg !749
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_init(%struct._PyNamespaceObject* nocapture readonly %ns, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyNamespaceObject* %ns, i64 0, metadata !484, metadata !528), !dbg !750
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !485, metadata !528), !dbg !751
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !486, metadata !528), !dbg !752
  %cmp = icmp eq %struct._object* %args, null, !dbg !753
  br i1 %cmp, label %if.end.7, label %if.then, !dbg !754

if.then:                                          ; preds = %entry
  %call = tail call i64 @PyObject_Size(%struct._object* %args) #3, !dbg !755
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !487, metadata !528), !dbg !756
  %cmp1 = icmp slt i64 %call, 0, !dbg !757
  br i1 %cmp1, label %return, label %if.else, !dbg !759

if.else:                                          ; preds = %if.then
  %cmp3 = icmp sgt i64 %call, 0, !dbg !760
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !762

if.then.4:                                        ; preds = %if.else
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !763, !tbaa !765
  %call5 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0)) #3, !dbg !766
  br label %return

if.end.7:                                         ; preds = %if.else, %entry
  %cmp8 = icmp eq %struct._object* %kwds, null, !dbg !767
  br i1 %cmp8, label %return, label %if.end.10, !dbg !769

if.end.10:                                        ; preds = %if.end.7
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 1, !dbg !770
  %1 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !770, !tbaa !534
  %call11 = tail call i32 @PyDict_Update(%struct._object* %1, %struct._object* %kwds) #3, !dbg !771
  br label %return, !dbg !772

return:                                           ; preds = %if.then, %if.end.7, %if.then.4, %if.end.10
  %retval.1 = phi i32 [ %call11, %if.end.10 ], [ -1, %if.then.4 ], [ 0, %if.end.7 ], [ -1, %if.then ]
  ret i32 %retval.1, !dbg !773
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !496, metadata !528), !dbg !774
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !497, metadata !528), !dbg !775
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !498, metadata !528), !dbg !776
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !777
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !777, !tbaa !778
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #3, !dbg !779
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !499, metadata !528), !dbg !780
  %cmp = icmp eq %struct._object* %call, null, !dbg !781
  br i1 %cmp, label %cleanup.9, label %if.then, !dbg !782

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* @PyDict_New() #3, !dbg !783
  %ns_dict = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !784
  %1 = bitcast %struct._object* %ns_dict to %struct._object**, !dbg !784
  store %struct._object* %call1, %struct._object** %1, align 8, !dbg !785, !tbaa !534
  %cmp3 = icmp eq %struct._object* %call1, null, !dbg !786
  br i1 %cmp3, label %do.body, label %cleanup.9, !dbg !787

do.body:                                          ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !503, metadata !528), !dbg !788
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !790
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !790, !tbaa !549
  %dec = add i64 %2, -1, !dbg !790
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !790, !tbaa !549
  %cmp5 = icmp eq i64 %dec, 0, !dbg !790
  br i1 %cmp5, label %if.else, label %cleanup.9, !dbg !792

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !793
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !793, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !793
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !793, !tbaa !554
  tail call void %4(%struct._object* %call) #3, !dbg !793
  br label %cleanup.9

cleanup.9:                                        ; preds = %do.body, %entry, %if.then, %if.else
  %retval.1 = phi %struct._object* [ null, %if.else ], [ %call, %if.then ], [ null, %entry ], [ null, %do.body ]
  ret %struct._object* %retval.1, !dbg !795
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyNamespace_New(%struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !378, metadata !528), !dbg !796
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @_PyNamespace_Type, i64 0, metadata !496, metadata !528) #3, !dbg !797
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !497, metadata !528) #3, !dbg !799
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !498, metadata !528) #3, !dbg !800
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i64 0, i32 36), align 8, !dbg !801, !tbaa !778
  %call.i = tail call %struct._object* %0(%struct._typeobject* nonnull @_PyNamespace_Type, i64 0) #3, !dbg !802
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !499, metadata !528) #3, !dbg !803
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !804
  br i1 %cmp.i, label %cleanup, label %if.then.i, !dbg !805

if.then.i:                                        ; preds = %entry
  %call1.i = tail call %struct._object* @PyDict_New() #3, !dbg !806
  %ns_dict.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !807
  %1 = bitcast %struct._object* %ns_dict.i to %struct._object**, !dbg !807
  store %struct._object* %call1.i, %struct._object** %1, align 8, !dbg !808, !tbaa !534
  %cmp3.i = icmp eq %struct._object* %call1.i, null, !dbg !809
  br i1 %cmp3.i, label %do.body.i, label %if.end, !dbg !810

do.body.i:                                        ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !503, metadata !528) #3, !dbg !811
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !812
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !812, !tbaa !549
  %dec.i = add i64 %2, -1, !dbg !812
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !812, !tbaa !549
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !812
  br i1 %cmp5.i, label %if.else.i, label %cleanup, !dbg !813

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !814
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !814, !tbaa !553
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !814
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !814, !tbaa !554
  tail call void %4(%struct._object* %call.i) #3, !dbg !814
  br label %cleanup, !dbg !815

if.end:                                           ; preds = %if.then.i
  %cmp1 = icmp eq %struct._object* %kwds, null, !dbg !816
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !818

if.end.3:                                         ; preds = %if.end
  %call4 = tail call i32 @PyDict_Update(%struct._object* %call1.i, %struct._object* %kwds) #3, !dbg !819
  %cmp5 = icmp eq i32 %call4, 0, !dbg !820
  br i1 %cmp5, label %cleanup, label %do.body, !dbg !821

do.body:                                          ; preds = %if.end.3
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !822
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !822, !tbaa !549
  %dec = add i64 %5, -1, !dbg !822
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !822, !tbaa !549
  %cmp7 = icmp eq i64 %dec, 0, !dbg !822
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !824

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !825
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !825, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !825
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !825, !tbaa !554
  tail call void %7(%struct._object* %call.i) #3, !dbg !825
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %entry, %if.else.i, %if.end.3, %if.else, %do.body, %if.end
  %retval.0 = phi %struct._object* [ %call.i, %if.end ], [ null, %do.body ], [ null, %if.else ], [ %call.i, %if.end.3 ], [ null, %if.else.i ], [ null, %entry ], [ null, %do.body.i ]
  ret %struct._object* %retval.0, !dbg !827
}

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare i32 @Py_ReprEnter(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyDict_Keys(%struct._object*) #1

declare i32 @PyList_Sort(%struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

declare void @Py_ReprLeave(%struct._object*) #1

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_reduce(%struct._PyNamespaceObject* nocapture readonly %ns) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._PyNamespaceObject* %ns, i64 0, metadata !475, metadata !528), !dbg !828
  %call = tail call %struct._object* @PyTuple_New(i64 0) #3, !dbg !829
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !477, metadata !528), !dbg !830
  %tobool = icmp eq %struct._object* %call, null, !dbg !831
  br i1 %tobool, label %cleanup, label %if.end, !dbg !833

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 0, i32 1, !dbg !834
  %0 = bitcast %struct._typeobject** %ob_type to %struct._object**, !dbg !834
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !834, !tbaa !553
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %ns, i64 0, i32 1, !dbg !835
  %2 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !835, !tbaa !534
  %call1 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %1, %struct._object* %call, %struct._object* %2) #3, !dbg !836
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !476, metadata !528), !dbg !837
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !478, metadata !528), !dbg !838
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !840
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !840, !tbaa !549
  %dec = add i64 %3, -1, !dbg !840
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !840, !tbaa !549
  %cmp = icmp eq i64 %dec, 0, !dbg !840
  br i1 %cmp, label %if.else, label %cleanup, !dbg !842

if.else:                                          ; preds = %if.end
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !843
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !843, !tbaa !553
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !843
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !843, !tbaa !554
  tail call void %5(%struct._object* %call) #3, !dbg !843
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !845
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!525, !526}
!llvm.ident = !{!527}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !375, globals: !507)
!1 = !DIFile(filename: "Objects/namespaceobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !43, !356}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyNamespaceObject", file: !1, line: 10, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 7, size: 192, align: 64, elements: !8)
!8 = !{!9, !355}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !1, line: 8, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !303, !321, !322, !323, !325, !327, !328, !330, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !354}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !43, !50, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 246, size: 1728, align: 64, elements: !54)
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !95, !96, !97, !98, !102, !103}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 247, baseType: !49, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 252, baseType: !57, size: 64, align: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 253, baseType: !57, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 254, baseType: !57, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 255, baseType: !57, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 256, baseType: !57, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 257, baseType: !57, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 258, baseType: !57, size: 64, align: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 259, baseType: !57, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 261, baseType: !57, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 262, baseType: !57, size: 64, align: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 263, baseType: !57, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 265, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 161, size: 192, align: 64, elements: !71)
!71 = !{!72, !73, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !53, line: 162, baseType: !69, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !70, file: !53, line: 163, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !70, file: !53, line: 167, baseType: !49, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 267, baseType: !74, size: 64, align: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 269, baseType: !49, size: 32, align: 32, offset: 896)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 273, baseType: !49, size: 32, align: 32, offset: 928)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 275, baseType: !80, size: 64, align: 64, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 279, baseType: !82, size: 16, align: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 280, baseType: !84, size: 8, align: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 281, baseType: !86, size: 8, align: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 285, baseType: !90, size: 64, align: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 155, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 294, baseType: !93, size: 64, align: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!43, !43, !57}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!49, !43, !57, !43}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!43, !43}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !11, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!43, !43, !43}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !11, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !11, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !11, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !11, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !11, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!43, !43, !43, !43}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !11, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !11, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !11, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !11, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!49, !43}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !11, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !11, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !11, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !11, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !11, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !11, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !11, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !11, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !11, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !11, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !11, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !11, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !11, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !11, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !11, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !11, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !11, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !11, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !11, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !11, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !11, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !11, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !11, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !11, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !11, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!15, !43}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !11, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !11, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!43, !43, !15}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !11, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !11, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !11, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!49, !43, !15, !43}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !11, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !11, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!49, !43, !43}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !11, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !11, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !11, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !11, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !11, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!49, !43, !43, !43}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !43}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !11, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!49, !43, !240, !49}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !11, line: 179, baseType: !4, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !11, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !11, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !11, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !11, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !11, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !43, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!49, !43, !268, !4}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!49, !43, !4}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!43, !43, !43, !49}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !33, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !296, line: 18, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 19, baseType: !57, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !296, line: 20, baseType: !49, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !296, line: 21, baseType: !15, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 22, baseType: !49, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 23, baseType: !57, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!307 = !{!308, !309, !314, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 12, baseType: !57, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !305, file: !306, line: 13, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !306, line: 8, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!43, !43, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !305, file: !306, line: 14, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !306, line: 9, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!49, !43, !43, !4}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !305, file: !306, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !324, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !139)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !326, size: 64, align: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !215)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !329, size: 64, align: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !215)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !331, size: 64, align: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!43, !23, !15}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !336, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!43, !23, !43, !43}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !341, size: 64, align: 64, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !4}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !353, size: 32, align: 32, offset: 3072)
!353 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ns_dict", scope: !7, file: !1, line: 9, baseType: !43, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !358, line: 351, baseType: !359)
!358 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!359 = !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 217, size: 384, align: 64, elements: !360)
!360 = !{!361, !362, !363, !364, !372}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !359, file: !358, line: 291, baseType: !10, size: 128, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !359, file: !358, line: 292, baseType: !15, size: 64, align: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !359, file: !358, line: 293, baseType: !223, size: 64, align: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !358, line: 349, baseType: !365, size: 32, align: 32, offset: 256)
!365 = !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !358, line: 294, size: 32, align: 32, elements: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !365, file: !358, line: 303, baseType: !353, size: 2, align: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !365, file: !358, line: 331, baseType: !353, size: 3, align: 32, offset: 2)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !365, file: !358, line: 336, baseType: !353, size: 1, align: 32, offset: 5)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !365, file: !358, line: 340, baseType: !353, size: 1, align: 32, offset: 6)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !365, file: !358, line: 345, baseType: !353, size: 1, align: 32, offset: 7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !359, file: !358, line: 350, baseType: !373, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !100, line: 90, baseType: !49)
!375 = !{!376, !384, !395, !444, !455, !466, !471, !480, !490}
!376 = !DISubprogram(name: "_PyNamespace_New", scope: !1, file: !1, line: 249, type: !121, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @_PyNamespace_New, variables: !377)
!377 = !{!378, !379, !380}
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 1, scope: !376, file: !1, line: 249, type: !43)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ns", scope: !376, file: !1, line: 251, type: !43)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !381, file: !1, line: 258, type: !43)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 258, column: 9)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 257, column: 72)
!383 = distinct !DILexicalBlock(scope: !376, file: !1, line: 257, column: 9)
!384 = !DISubprogram(name: "namespace_dealloc", scope: !1, file: !1, line: 60, type: !385, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyNamespaceObject*)* @namespace_dealloc, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !5}
!387 = !{!388, !389, !391}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !384, file: !1, line: 60, type: !5)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !390, file: !1, line: 63, type: !43)
!390 = distinct !DILexicalBlock(scope: !384, file: !1, line: 63, column: 5)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !392, file: !1, line: 63, type: !43)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 63, column: 5)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 63, column: 5)
!394 = distinct !DILexicalBlock(scope: !390, file: !1, line: 63, column: 5)
!395 = !DISubprogram(name: "namespace_repr", scope: !1, file: !1, line: 69, type: !121, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @namespace_repr, variables: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !413, !414, !418, !420, !422, !424, !426, !429, !431, !434, !436, !439, !441}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !395, file: !1, line: 69, type: !43)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !395, file: !1, line: 71, type: !49)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loop_error", scope: !395, file: !1, line: 71, type: !49)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pairs", scope: !395, file: !1, line: 72, type: !43)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !395, file: !1, line: 72, type: !43)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keys", scope: !395, file: !1, line: 72, type: !43)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keys_iter", scope: !395, file: !1, line: 72, type: !43)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !395, file: !1, line: 73, type: !43)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "separator", scope: !395, file: !1, line: 74, type: !43)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pairsrepr", scope: !395, file: !1, line: 74, type: !43)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !395, file: !1, line: 74, type: !43)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !395, file: !1, line: 75, type: !33)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !410, file: !1, line: 105, type: !43)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 104, column: 68)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 104, column: 13)
!412 = distinct !DILexicalBlock(scope: !395, file: !1, line: 103, column: 52)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !410, file: !1, line: 105, type: !43)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !415, file: !1, line: 116, type: !43)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 116, column: 17)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 114, column: 18)
!417 = distinct !DILexicalBlock(scope: !410, file: !1, line: 111, column: 17)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !419, file: !1, line: 120, type: !43)
!419 = distinct !DILexicalBlock(scope: !412, file: !1, line: 120, column: 9)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !1, line: 130, type: !43)
!421 = distinct !DILexicalBlock(scope: !395, file: !1, line: 130, column: 5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !1, line: 135, type: !43)
!423 = distinct !DILexicalBlock(scope: !395, file: !1, line: 135, column: 5)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !425, file: !1, line: 138, type: !43)
!425 = distinct !DILexicalBlock(scope: !395, file: !1, line: 138, column: 5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !427, file: !1, line: 138, type: !43)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 138, column: 5)
!428 = distinct !DILexicalBlock(scope: !425, file: !1, line: 138, column: 5)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !430, file: !1, line: 139, type: !43)
!430 = distinct !DILexicalBlock(scope: !395, file: !1, line: 139, column: 5)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !432, file: !1, line: 139, type: !43)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 139, column: 5)
!433 = distinct !DILexicalBlock(scope: !430, file: !1, line: 139, column: 5)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !435, file: !1, line: 140, type: !43)
!435 = distinct !DILexicalBlock(scope: !395, file: !1, line: 140, column: 5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !437, file: !1, line: 140, type: !43)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 140, column: 5)
!438 = distinct !DILexicalBlock(scope: !435, file: !1, line: 140, column: 5)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !440, file: !1, line: 141, type: !43)
!440 = distinct !DILexicalBlock(scope: !395, file: !1, line: 141, column: 5)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !1, line: 141, type: !43)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 141, column: 5)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 141, column: 5)
!444 = !DISubprogram(name: "namespace_traverse", scope: !1, file: !1, line: 149, type: !445, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*, i32 (%struct._object*, i8*)*, i8*)* @namespace_traverse, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!49, !5, !268, !4}
!447 = !{!448, !449, !450, !451}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !444, file: !1, line: 149, type: !5)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !444, file: !1, line: 149, type: !268)
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !444, file: !1, line: 149, type: !4)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !452, file: !1, line: 151, type: !49)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 151, column: 5)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 151, column: 5)
!454 = distinct !DILexicalBlock(scope: !444, file: !1, line: 151, column: 5)
!455 = !DISubprogram(name: "namespace_clear", scope: !1, file: !1, line: 157, type: !456, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*)* @namespace_clear, variables: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{!49, !5}
!458 = !{!459, !460, !462}
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !455, file: !1, line: 157, type: !5)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !461, file: !1, line: 159, type: !43)
!461 = distinct !DILexicalBlock(scope: !455, file: !1, line: 159, column: 5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !463, file: !1, line: 159, type: !43)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 159, column: 5)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 159, column: 5)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 159, column: 5)
!466 = !DISubprogram(name: "namespace_richcompare", scope: !1, file: !1, line: 165, type: !276, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @namespace_richcompare, variables: !467)
!467 = !{!468, !469, !470}
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !466, file: !1, line: 165, type: !43)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !466, file: !1, line: 165, type: !43)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !466, file: !1, line: 165, type: !49)
!471 = !DISubprogram(name: "namespace_reduce", scope: !1, file: !1, line: 179, type: !472, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyNamespaceObject*)* @namespace_reduce, variables: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!43, !5}
!474 = !{!475, !476, !477, !478}
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !471, file: !1, line: 179, type: !5)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !471, file: !1, line: 181, type: !43)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !471, file: !1, line: 181, type: !43)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !479, file: !1, line: 187, type: !43)
!479 = distinct !DILexicalBlock(scope: !471, file: !1, line: 187, column: 5)
!480 = !DISubprogram(name: "namespace_init", scope: !1, file: !1, line: 41, type: !481, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*, %struct._object*, %struct._object*)* @namespace_init, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!49, !5, !43, !43}
!483 = !{!484, !485, !486, !487}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !480, file: !1, line: 41, type: !5)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !480, file: !1, line: 41, type: !43)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !480, file: !1, line: 41, type: !43)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argcount", scope: !488, file: !1, line: 45, type: !15)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 44, column: 23)
!489 = distinct !DILexicalBlock(scope: !480, file: !1, line: 44, column: 9)
!490 = !DISubprogram(name: "namespace_new", scope: !1, file: !1, line: 22, type: !491, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @namespace_new, variables: !495)
!491 = !DISubroutineType(types: !492)
!492 = !{!43, !493, !43, !43}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!495 = !{!496, !497, !498, !499, !500, !503}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !490, file: !1, line: 22, type: !493)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !490, file: !1, line: 22, type: !43)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !490, file: !1, line: 22, type: !43)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !490, file: !1, line: 24, type: !43)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ns", scope: !501, file: !1, line: 29, type: !5)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 28, column: 23)
!502 = distinct !DILexicalBlock(scope: !490, file: !1, line: 28, column: 9)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !1, line: 32, type: !43)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 32, column: 13)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 31, column: 34)
!506 = distinct !DILexicalBlock(scope: !501, file: !1, line: 31, column: 13)
!507 = !{!508, !509, !513, !518, !522}
!508 = !DIGlobalVariable(name: "_PyNamespace_Type", scope: !0, file: !1, line: 204, type: !494, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyNamespace_Type)
!509 = !DIGlobalVariable(name: "namespace_doc", scope: !0, file: !1, line: 199, type: !510, isLocal: true, isDefinition: true, variable: [63 x i8]* @namespace_doc)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 504, align: 8, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 63)
!513 = !DIGlobalVariable(name: "namespace_methods", scope: !0, file: !1, line: 192, type: !514, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @namespace_methods)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 512, align: 64, elements: !516)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !286, line: 47, baseType: !285)
!516 = !{!517}
!517 = !DISubrange(count: 2)
!518 = !DIGlobalVariable(name: "namespace_reduce__doc__", scope: !0, file: !1, line: 176, type: !519, isLocal: true, isDefinition: true, variable: [38 x i8]* @namespace_reduce__doc__)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 304, align: 8, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 38)
!522 = !DIGlobalVariable(name: "namespace_members", scope: !0, file: !1, line: 13, type: !523, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @namespace_members)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 640, align: 64, elements: !516)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !296, line: 24, baseType: !295)
!525 = !{i32 2, !"Dwarf Version", i32 4}
!526 = !{i32 2, !"Debug Info Version", i32 3}
!527 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!528 = !DIExpression()
!529 = !DILocation(line: 60, column: 39, scope: !384)
!530 = !DILocation(line: 62, column: 25, scope: !384)
!531 = !DILocation(line: 62, column: 5, scope: !384)
!532 = !DILocation(line: 63, column: 5, scope: !533)
!533 = !DILexicalBlockFile(scope: !390, file: !1, discriminator: 1)
!534 = !{!535, !540, i64 16}
!535 = !{!"", !536, i64 0, !540, i64 16}
!536 = !{!"_object", !537, i64 0, !540, i64 8}
!537 = !{!"long", !538, i64 0}
!538 = !{!"omnipotent char", !539, i64 0}
!539 = !{!"Simple C/C++ TBAA"}
!540 = !{!"any pointer", !538, i64 0}
!541 = !DILocation(line: 63, column: 5, scope: !394)
!542 = !DILocation(line: 63, column: 5, scope: !390)
!543 = !DILocation(line: 63, column: 5, scope: !544)
!544 = !DILexicalBlockFile(scope: !393, file: !1, discriminator: 2)
!545 = !DILocation(line: 63, column: 5, scope: !546)
!546 = !DILexicalBlockFile(scope: !392, file: !1, discriminator: 4)
!547 = !DILocation(line: 63, column: 5, scope: !548)
!548 = distinct !DILexicalBlock(scope: !392, file: !1, line: 63, column: 5)
!549 = !{!536, !537, i64 0}
!550 = !DILocation(line: 63, column: 5, scope: !392)
!551 = !DILocation(line: 63, column: 5, scope: !552)
!552 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 6)
!553 = !{!536, !540, i64 8}
!554 = !{!555, !540, i64 48}
!555 = !{!"_typeobject", !556, i64 0, !540, i64 24, !537, i64 32, !537, i64 40, !540, i64 48, !540, i64 56, !540, i64 64, !540, i64 72, !540, i64 80, !540, i64 88, !540, i64 96, !540, i64 104, !540, i64 112, !540, i64 120, !540, i64 128, !540, i64 136, !540, i64 144, !540, i64 152, !540, i64 160, !537, i64 168, !540, i64 176, !540, i64 184, !540, i64 192, !540, i64 200, !537, i64 208, !540, i64 216, !540, i64 224, !540, i64 232, !540, i64 240, !540, i64 248, !540, i64 256, !540, i64 264, !540, i64 272, !540, i64 280, !537, i64 288, !540, i64 296, !540, i64 304, !540, i64 312, !540, i64 320, !540, i64 328, !540, i64 336, !540, i64 344, !540, i64 352, !540, i64 360, !540, i64 368, !540, i64 376, !557, i64 384, !540, i64 392}
!556 = !{!"", !536, i64 0, !537, i64 16}
!557 = !{!"int", !538, i64 0}
!558 = !DILocation(line: 64, column: 5, scope: !384)
!559 = !DILocation(line: 64, column: 18, scope: !384)
!560 = !{!555, !540, i64 320}
!561 = !DILocation(line: 65, column: 1, scope: !384)
!562 = !DILocation(line: 69, column: 26, scope: !395)
!563 = !DILocation(line: 71, column: 12, scope: !395)
!564 = !DILocation(line: 72, column: 15, scope: !395)
!565 = !DILocation(line: 72, column: 30, scope: !395)
!566 = !DILocation(line: 72, column: 41, scope: !395)
!567 = !DILocation(line: 72, column: 55, scope: !395)
!568 = !DILocation(line: 74, column: 39, scope: !395)
!569 = !DILocation(line: 77, column: 13, scope: !395)
!570 = !DILocation(line: 77, column: 25, scope: !395)
!571 = !DILocation(line: 77, column: 12, scope: !395)
!572 = !DILocation(line: 78, column: 63, scope: !395)
!573 = !{!555, !540, i64 24}
!574 = !DILocation(line: 75, column: 18, scope: !395)
!575 = !DILocation(line: 80, column: 9, scope: !395)
!576 = !DILocation(line: 71, column: 9, scope: !395)
!577 = !DILocation(line: 81, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !395, file: !1, line: 81, column: 9)
!579 = !DILocation(line: 81, column: 9, scope: !395)
!580 = !DILocation(line: 82, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 81, column: 17)
!582 = !DILocation(line: 82, column: 16, scope: !581)
!583 = !DILocation(line: 82, column: 24, scope: !581)
!584 = !DILocation(line: 85, column: 13, scope: !395)
!585 = !DILocation(line: 86, column: 15, scope: !586)
!586 = distinct !DILexicalBlock(scope: !395, file: !1, line: 86, column: 9)
!587 = !DILocation(line: 86, column: 9, scope: !395)
!588 = !DILocation(line: 89, column: 37, scope: !395)
!589 = !DILocation(line: 91, column: 5, scope: !395)
!590 = !DILocation(line: 93, column: 12, scope: !395)
!591 = !DILocation(line: 94, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !395, file: !1, line: 94, column: 9)
!593 = !DILocation(line: 94, column: 9, scope: !395)
!594 = !DILocation(line: 96, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !395, file: !1, line: 96, column: 9)
!596 = !DILocation(line: 96, column: 27, scope: !595)
!597 = !DILocation(line: 96, column: 9, scope: !395)
!598 = !DILocation(line: 99, column: 17, scope: !395)
!599 = !DILocation(line: 100, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !395, file: !1, line: 100, column: 9)
!601 = !DILocation(line: 100, column: 9, scope: !395)
!602 = !DILocation(line: 103, column: 19, scope: !395)
!603 = !DILocation(line: 73, column: 15, scope: !395)
!604 = !DILocation(line: 103, column: 43, scope: !395)
!605 = !DILocation(line: 103, column: 5, scope: !395)
!606 = !DILocation(line: 104, column: 13, scope: !411)
!607 = !{!555, !537, i64 168}
!608 = !DILocation(line: 104, column: 34, scope: !411)
!609 = !DILocation(line: 104, column: 37, scope: !610)
!610 = !DILexicalBlockFile(scope: !411, file: !1, discriminator: 1)
!611 = !{!612, !537, i64 16}
!612 = !{!"", !536, i64 0, !537, i64 16, !537, i64 24, !613, i64 32, !540, i64 40}
!613 = !{!"", !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 0, !557, i64 1}
!614 = !DILocation(line: 104, column: 63, scope: !411)
!615 = !DILocation(line: 104, column: 13, scope: !412)
!616 = !DILocation(line: 107, column: 21, scope: !410)
!617 = !DILocation(line: 105, column: 23, scope: !410)
!618 = !DILocation(line: 110, column: 20, scope: !410)
!619 = !DILocation(line: 105, column: 31, scope: !410)
!620 = !DILocation(line: 111, column: 22, scope: !417)
!621 = !DILocation(line: 111, column: 17, scope: !410)
!622 = !DILocation(line: 115, column: 30, scope: !416)
!623 = !DILocation(line: 116, column: 17, scope: !624)
!624 = !DILexicalBlockFile(scope: !415, file: !1, discriminator: 1)
!625 = !DILocation(line: 116, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !415, file: !1, line: 116, column: 17)
!627 = !DILocation(line: 116, column: 17, scope: !415)
!628 = !DILocation(line: 116, column: 17, scope: !629)
!629 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 3)
!630 = !DILocation(line: 120, column: 9, scope: !631)
!631 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 1)
!632 = !DILocation(line: 120, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !419, file: !1, line: 120, column: 9)
!634 = !DILocation(line: 120, column: 9, scope: !419)
!635 = !DILocation(line: 120, column: 9, scope: !636)
!636 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 3)
!637 = !DILocation(line: 121, column: 13, scope: !638)
!638 = distinct !DILexicalBlock(scope: !412, file: !1, line: 121, column: 13)
!639 = !DILocation(line: 121, column: 13, scope: !412)
!640 = !DILocation(line: 125, column: 17, scope: !395)
!641 = !DILocation(line: 74, column: 15, scope: !395)
!642 = !DILocation(line: 126, column: 19, scope: !643)
!643 = distinct !DILexicalBlock(scope: !395, file: !1, line: 126, column: 9)
!644 = !DILocation(line: 126, column: 9, scope: !395)
!645 = !DILocation(line: 129, column: 17, scope: !395)
!646 = !DILocation(line: 74, column: 27, scope: !395)
!647 = !DILocation(line: 130, column: 5, scope: !648)
!648 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!649 = !DILocation(line: 130, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !421, file: !1, line: 130, column: 5)
!651 = !DILocation(line: 130, column: 5, scope: !421)
!652 = !DILocation(line: 130, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 3)
!654 = !DILocation(line: 131, column: 19, scope: !655)
!655 = distinct !DILexicalBlock(scope: !395, file: !1, line: 131, column: 9)
!656 = !DILocation(line: 131, column: 9, scope: !395)
!657 = !DILocation(line: 134, column: 12, scope: !395)
!658 = !DILocation(line: 135, column: 5, scope: !659)
!659 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!660 = !DILocation(line: 135, column: 5, scope: !661)
!661 = distinct !DILexicalBlock(scope: !423, file: !1, line: 135, column: 5)
!662 = !DILocation(line: 135, column: 5, scope: !423)
!663 = !DILocation(line: 135, column: 5, scope: !664)
!664 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 3)
!665 = !DILocation(line: 138, column: 5, scope: !666)
!666 = !DILexicalBlockFile(scope: !427, file: !1, discriminator: 4)
!667 = !DILocation(line: 138, column: 5, scope: !668)
!668 = distinct !DILexicalBlock(scope: !427, file: !1, line: 138, column: 5)
!669 = !DILocation(line: 138, column: 5, scope: !427)
!670 = !DILocation(line: 138, column: 5, scope: !671)
!671 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 6)
!672 = !DILocation(line: 139, column: 5, scope: !673)
!673 = !DILexicalBlockFile(scope: !430, file: !1, discriminator: 1)
!674 = !DILocation(line: 139, column: 5, scope: !433)
!675 = !DILocation(line: 139, column: 5, scope: !430)
!676 = !DILocation(line: 139, column: 5, scope: !677)
!677 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 4)
!678 = !DILocation(line: 139, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !432, file: !1, line: 139, column: 5)
!680 = !DILocation(line: 139, column: 5, scope: !432)
!681 = !DILocation(line: 139, column: 5, scope: !682)
!682 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 6)
!683 = !DILocation(line: 140, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !435, file: !1, discriminator: 1)
!685 = !DILocation(line: 140, column: 5, scope: !438)
!686 = !DILocation(line: 140, column: 5, scope: !435)
!687 = !DILocation(line: 140, column: 5, scope: !688)
!688 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 4)
!689 = !DILocation(line: 140, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !437, file: !1, line: 140, column: 5)
!691 = !DILocation(line: 140, column: 5, scope: !437)
!692 = !DILocation(line: 140, column: 5, scope: !693)
!693 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 6)
!694 = !DILocation(line: 141, column: 5, scope: !695)
!695 = !DILexicalBlockFile(scope: !440, file: !1, discriminator: 1)
!696 = !DILocation(line: 141, column: 5, scope: !443)
!697 = !DILocation(line: 141, column: 5, scope: !440)
!698 = !DILocation(line: 141, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 4)
!700 = !DILocation(line: 141, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !442, file: !1, line: 141, column: 5)
!702 = !DILocation(line: 141, column: 5, scope: !442)
!703 = !DILocation(line: 141, column: 5, scope: !704)
!704 = !DILexicalBlockFile(scope: !701, file: !1, discriminator: 6)
!705 = !DILocation(line: 142, column: 5, scope: !395)
!706 = !DILocation(line: 144, column: 5, scope: !395)
!707 = !DILocation(line: 145, column: 1, scope: !395)
!708 = !DILocation(line: 149, column: 40, scope: !444)
!709 = !DILocation(line: 149, column: 54, scope: !444)
!710 = !DILocation(line: 149, column: 67, scope: !444)
!711 = !DILocation(line: 151, column: 5, scope: !712)
!712 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 1)
!713 = !DILocation(line: 151, column: 5, scope: !454)
!714 = !DILocation(line: 151, column: 5, scope: !715)
!715 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 2)
!716 = !DILocation(line: 151, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !452, file: !1, line: 151, column: 5)
!718 = !DILocation(line: 152, column: 5, scope: !444)
!719 = !DILocation(line: 153, column: 1, scope: !444)
!720 = !DILocation(line: 157, column: 37, scope: !455)
!721 = !DILocation(line: 159, column: 5, scope: !722)
!722 = !DILexicalBlockFile(scope: !461, file: !1, discriminator: 1)
!723 = !DILocation(line: 159, column: 5, scope: !465)
!724 = !DILocation(line: 159, column: 5, scope: !461)
!725 = !DILocation(line: 159, column: 5, scope: !726)
!726 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 2)
!727 = !DILocation(line: 159, column: 5, scope: !728)
!728 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 4)
!729 = !DILocation(line: 159, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !463, file: !1, line: 159, column: 5)
!731 = !DILocation(line: 159, column: 5, scope: !463)
!732 = !DILocation(line: 159, column: 5, scope: !733)
!733 = !DILexicalBlockFile(scope: !730, file: !1, discriminator: 6)
!734 = !DILocation(line: 160, column: 5, scope: !455)
!735 = !DILocation(line: 165, column: 33, scope: !466)
!736 = !DILocation(line: 165, column: 49, scope: !466)
!737 = !DILocation(line: 165, column: 60, scope: !466)
!738 = !DILocation(line: 167, column: 9, scope: !739)
!739 = distinct !DILexicalBlock(scope: !466, file: !1, line: 167, column: 9)
!740 = !DILocation(line: 167, column: 67, scope: !739)
!741 = !DILocation(line: 168, column: 13, scope: !739)
!742 = !DILocation(line: 167, column: 9, scope: !466)
!743 = !DILocation(line: 169, column: 67, scope: !739)
!744 = !DILocation(line: 170, column: 67, scope: !739)
!745 = !DILocation(line: 169, column: 16, scope: !739)
!746 = !DILocation(line: 169, column: 9, scope: !739)
!747 = !DILocation(line: 171, column: 5, scope: !466)
!748 = !DILocation(line: 172, column: 5, scope: !466)
!749 = !DILocation(line: 173, column: 1, scope: !466)
!750 = !DILocation(line: 41, column: 36, scope: !480)
!751 = !DILocation(line: 41, column: 50, scope: !480)
!752 = !DILocation(line: 41, column: 66, scope: !480)
!753 = !DILocation(line: 44, column: 14, scope: !489)
!754 = !DILocation(line: 44, column: 9, scope: !480)
!755 = !DILocation(line: 45, column: 31, scope: !488)
!756 = !DILocation(line: 45, column: 20, scope: !488)
!757 = !DILocation(line: 46, column: 22, scope: !758)
!758 = distinct !DILexicalBlock(scope: !488, file: !1, line: 46, column: 13)
!759 = !DILocation(line: 46, column: 13, scope: !488)
!760 = !DILocation(line: 48, column: 27, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 48, column: 18)
!762 = !DILocation(line: 48, column: 18, scope: !758)
!763 = !DILocation(line: 49, column: 26, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !1, line: 48, column: 32)
!765 = !{!540, !540, i64 0}
!766 = !DILocation(line: 49, column: 13, scope: !764)
!767 = !DILocation(line: 53, column: 14, scope: !768)
!768 = distinct !DILexicalBlock(scope: !480, file: !1, line: 53, column: 9)
!769 = !DILocation(line: 53, column: 9, scope: !480)
!770 = !DILocation(line: 55, column: 30, scope: !480)
!771 = !DILocation(line: 55, column: 12, scope: !480)
!772 = !DILocation(line: 55, column: 5, scope: !480)
!773 = !DILocation(line: 56, column: 1, scope: !480)
!774 = !DILocation(line: 22, column: 29, scope: !490)
!775 = !DILocation(line: 22, column: 45, scope: !490)
!776 = !DILocation(line: 22, column: 61, scope: !490)
!777 = !DILocation(line: 27, column: 18, scope: !490)
!778 = !{!555, !540, i64 304}
!779 = !DILocation(line: 27, column: 12, scope: !490)
!780 = !DILocation(line: 24, column: 15, scope: !490)
!781 = !DILocation(line: 28, column: 14, scope: !502)
!782 = !DILocation(line: 28, column: 9, scope: !490)
!783 = !DILocation(line: 30, column: 23, scope: !501)
!784 = !DILocation(line: 30, column: 13, scope: !501)
!785 = !DILocation(line: 30, column: 21, scope: !501)
!786 = !DILocation(line: 31, column: 25, scope: !506)
!787 = !DILocation(line: 31, column: 13, scope: !501)
!788 = !DILocation(line: 32, column: 13, scope: !789)
!789 = !DILexicalBlockFile(scope: !504, file: !1, discriminator: 1)
!790 = !DILocation(line: 32, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !504, file: !1, line: 32, column: 13)
!792 = !DILocation(line: 32, column: 13, scope: !504)
!793 = !DILocation(line: 32, column: 13, scope: !794)
!794 = !DILexicalBlockFile(scope: !791, file: !1, discriminator: 3)
!795 = !DILocation(line: 37, column: 1, scope: !490)
!796 = !DILocation(line: 249, column: 28, scope: !376)
!797 = !DILocation(line: 22, column: 29, scope: !490, inlinedAt: !798)
!798 = distinct !DILocation(line: 251, column: 20, scope: !376)
!799 = !DILocation(line: 22, column: 45, scope: !490, inlinedAt: !798)
!800 = !DILocation(line: 22, column: 61, scope: !490, inlinedAt: !798)
!801 = !DILocation(line: 27, column: 18, scope: !490, inlinedAt: !798)
!802 = !DILocation(line: 27, column: 12, scope: !490, inlinedAt: !798)
!803 = !DILocation(line: 24, column: 15, scope: !490, inlinedAt: !798)
!804 = !DILocation(line: 28, column: 14, scope: !502, inlinedAt: !798)
!805 = !DILocation(line: 28, column: 9, scope: !490, inlinedAt: !798)
!806 = !DILocation(line: 257, column: 51, scope: !383)
!807 = !DILocation(line: 30, column: 13, scope: !501, inlinedAt: !798)
!808 = !DILocation(line: 30, column: 21, scope: !501, inlinedAt: !798)
!809 = !DILocation(line: 31, column: 25, scope: !506, inlinedAt: !798)
!810 = !DILocation(line: 31, column: 13, scope: !501, inlinedAt: !798)
!811 = !DILocation(line: 32, column: 13, scope: !789, inlinedAt: !798)
!812 = !DILocation(line: 32, column: 13, scope: !791, inlinedAt: !798)
!813 = !DILocation(line: 32, column: 13, scope: !504, inlinedAt: !798)
!814 = !DILocation(line: 32, column: 13, scope: !794, inlinedAt: !798)
!815 = !DILocation(line: 251, column: 20, scope: !376)
!816 = !DILocation(line: 255, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !376, file: !1, line: 255, column: 9)
!818 = !DILocation(line: 255, column: 9, scope: !376)
!819 = !DILocation(line: 257, column: 9, scope: !383)
!820 = !DILocation(line: 257, column: 66, scope: !383)
!821 = !DILocation(line: 257, column: 9, scope: !376)
!822 = !DILocation(line: 258, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !381, file: !1, line: 258, column: 9)
!824 = !DILocation(line: 258, column: 9, scope: !381)
!825 = !DILocation(line: 258, column: 9, scope: !826)
!826 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 3)
!827 = !DILocation(line: 263, column: 1, scope: !376)
!828 = !DILocation(line: 179, column: 38, scope: !471)
!829 = !DILocation(line: 181, column: 31, scope: !471)
!830 = !DILocation(line: 181, column: 24, scope: !471)
!831 = !DILocation(line: 183, column: 10, scope: !832)
!832 = distinct !DILexicalBlock(scope: !471, file: !1, line: 183, column: 9)
!833 = !DILocation(line: 183, column: 9, scope: !471)
!834 = !DILocation(line: 186, column: 42, scope: !471)
!835 = !DILocation(line: 186, column: 65, scope: !471)
!836 = !DILocation(line: 186, column: 14, scope: !471)
!837 = !DILocation(line: 181, column: 15, scope: !471)
!838 = !DILocation(line: 187, column: 5, scope: !839)
!839 = !DILexicalBlockFile(scope: !479, file: !1, discriminator: 1)
!840 = !DILocation(line: 187, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !479, file: !1, line: 187, column: 5)
!842 = !DILocation(line: 187, column: 5, scope: !479)
!843 = !DILocation(line: 187, column: 5, scope: !844)
!844 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 3)
!845 = !DILocation(line: 189, column: 1, scope: !471)
