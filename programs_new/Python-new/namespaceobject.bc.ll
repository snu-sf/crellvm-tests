; ModuleID = 'programs_new/Python-new/namespaceobject.bc.ll'
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
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

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
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns.addr, metadata !389, metadata !533), !dbg !534
  %0 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !535, !tbaa !529
  %1 = bitcast %struct._PyNamespaceObject* %0 to i8*, !dbg !535
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !536
  br label %do.body, !dbg !537

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_tmp to i8*, !dbg !538
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !538
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !390, metadata !533), !dbg !540
  %3 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !541, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %3, i32 0, i32 1, !dbg !542
  %4 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !542, !tbaa !543
  store %struct._object* %4, %struct._object** %_py_tmp, align 8, !dbg !540, !tbaa !529
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !547, !tbaa !529
  %cmp = icmp ne %struct._object* %5, null, !dbg !548
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !549

if.then:                                          ; preds = %do.body
  %6 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !550, !tbaa !529
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1, !dbg !552
  store %struct._object* null, %struct._object** %ns_dict1, align 8, !dbg !553, !tbaa !543
  br label %do.body.2, !dbg !554

do.body.2:                                        ; preds = %if.then
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !555
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !555
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !392, metadata !533), !dbg !557
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !558, !tbaa !529
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !557, !tbaa !529
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !559, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !561
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !562, !tbaa !563
  %dec = add i64 %10, -1, !dbg !562
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !562, !tbaa !563
  %cmp3 = icmp ne i64 %dec, 0, !dbg !564
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !565

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !566

if.else:                                          ; preds = %do.body.2
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !568, !tbaa !529
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !570
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !570, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !572
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !572, !tbaa !573
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !577, !tbaa !529
  call void %13(%struct._object* %14), !dbg !578
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !579
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !579
  br label %do.cond, !dbg !581

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !582

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !584

if.end.5:                                         ; preds = %do.end, %do.body
  %16 = bitcast %struct._object** %_py_tmp to i8*, !dbg !586
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !586
  br label %do.end.7, !dbg !589

do.end.7:                                         ; preds = %if.end.5
  %17 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !590, !tbaa !529
  %18 = bitcast %struct._PyNamespaceObject* %17 to %struct._object*, !dbg !591
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !592
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !592, !tbaa !571
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 38, !dbg !593
  %20 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !593, !tbaa !594
  %21 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !595, !tbaa !529
  %22 = bitcast %struct._PyNamespaceObject* %21 to %struct._object*, !dbg !596
  %23 = bitcast %struct._object* %22 to i8*, !dbg !596
  call void %20(i8* %23), !dbg !597
  ret void, !dbg !598
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_repr(%struct._object* %ns) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ns.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %loop_error = alloca i32, align 4
  %pairs = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %keys = alloca %struct._object*, align 8
  %keys_iter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %separator = alloca %struct._object*, align 8
  %pairsrepr = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %value = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_xdecref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_xdecref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_xdecref_tmp148 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  store %struct._object* %ns, %struct._object** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %ns.addr, metadata !398, metadata !533), !dbg !599
  %0 = bitcast i32* %i to i8*, !dbg !600
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !600
  call void @llvm.dbg.declare(metadata i32* %i, metadata !399, metadata !533), !dbg !601
  %1 = bitcast i32* %loop_error to i8*, !dbg !600
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !600
  call void @llvm.dbg.declare(metadata i32* %loop_error, metadata !400, metadata !533), !dbg !602
  store i32 0, i32* %loop_error, align 4, !dbg !602, !tbaa !603
  %2 = bitcast %struct._object** %pairs to i8*, !dbg !604
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !604
  call void @llvm.dbg.declare(metadata %struct._object** %pairs, metadata !401, metadata !533), !dbg !605
  store %struct._object* null, %struct._object** %pairs, align 8, !dbg !605, !tbaa !529
  %3 = bitcast %struct._object** %d to i8*, !dbg !604
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !604
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !402, metadata !533), !dbg !606
  store %struct._object* null, %struct._object** %d, align 8, !dbg !606, !tbaa !529
  %4 = bitcast %struct._object** %keys to i8*, !dbg !604
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !604
  call void @llvm.dbg.declare(metadata %struct._object** %keys, metadata !403, metadata !533), !dbg !607
  store %struct._object* null, %struct._object** %keys, align 8, !dbg !607, !tbaa !529
  %5 = bitcast %struct._object** %keys_iter to i8*, !dbg !604
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !604
  call void @llvm.dbg.declare(metadata %struct._object** %keys_iter, metadata !404, metadata !533), !dbg !608
  store %struct._object* null, %struct._object** %keys_iter, align 8, !dbg !608, !tbaa !529
  %6 = bitcast %struct._object** %key to i8*, !dbg !609
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !609
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !405, metadata !533), !dbg !610
  %7 = bitcast %struct._object** %separator to i8*, !dbg !611
  call void @llvm.lifetime.start(i64 8, i8* %7) #3, !dbg !611
  call void @llvm.dbg.declare(metadata %struct._object** %separator, metadata !406, metadata !533), !dbg !612
  %8 = bitcast %struct._object** %pairsrepr to i8*, !dbg !611
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !611
  call void @llvm.dbg.declare(metadata %struct._object** %pairsrepr, metadata !407, metadata !533), !dbg !613
  %9 = bitcast %struct._object** %repr to i8*, !dbg !611
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !611
  call void @llvm.dbg.declare(metadata %struct._object** %repr, metadata !408, metadata !533), !dbg !614
  store %struct._object* null, %struct._object** %repr, align 8, !dbg !614, !tbaa !529
  %10 = bitcast i8** %name to i8*, !dbg !615
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !615
  call void @llvm.dbg.declare(metadata i8** %name, metadata !409, metadata !533), !dbg !616
  %11 = load %struct._object*, %struct._object** %ns.addr, align 8, !dbg !617, !tbaa !529
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !618
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !618, !tbaa !571
  %cmp = icmp eq %struct._typeobject* %12, @_PyNamespace_Type, !dbg !619
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !620

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !621

cond.false:                                       ; preds = %entry
  %13 = load %struct._object*, %struct._object** %ns.addr, align 8, !dbg !623, !tbaa !529
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !624
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !624, !tbaa !571
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 1, !dbg !625
  %15 = load i8*, i8** %tp_name, align 8, !dbg !625, !tbaa !626
  br label %cond.end, !dbg !620

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %cond.true ], [ %15, %cond.false ], !dbg !620
  store i8* %cond, i8** %name, align 8, !dbg !627, !tbaa !529
  %16 = load %struct._object*, %struct._object** %ns.addr, align 8, !dbg !630, !tbaa !529
  %call = call i32 @Py_ReprEnter(%struct._object* %16), !dbg !631
  store i32 %call, i32* %i, align 4, !dbg !632, !tbaa !603
  %17 = load i32, i32* %i, align 4, !dbg !633, !tbaa !603
  %cmp2 = icmp ne i32 %17, 0, !dbg !635
  br i1 %cmp2, label %if.then, label %if.end, !dbg !636

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4, !dbg !637, !tbaa !603
  %cmp3 = icmp sgt i32 %18, 0, !dbg !639
  br i1 %cmp3, label %cond.true.4, label %cond.false.6, !dbg !637

cond.true.4:                                      ; preds = %if.then
  %19 = load i8*, i8** %name, align 8, !dbg !640, !tbaa !529
  %call5 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %19), !dbg !642
  br label %cond.end.7, !dbg !637

cond.false.6:                                     ; preds = %if.then
  br label %cond.end.7, !dbg !643

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi %struct._object* [ %call5, %cond.true.4 ], [ null, %cond.false.6 ], !dbg !637
  store %struct._object* %cond8, %struct._object** %retval, !dbg !645
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !648

if.end:                                           ; preds = %cond.end
  %call9 = call %struct._object* @PyList_New(i64 0), !dbg !649
  store %struct._object* %call9, %struct._object** %pairs, align 8, !dbg !650, !tbaa !529
  %20 = load %struct._object*, %struct._object** %pairs, align 8, !dbg !651, !tbaa !529
  %cmp10 = icmp eq %struct._object* %20, null, !dbg !653
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !654

if.then.11:                                       ; preds = %if.end
  br label %error, !dbg !655

if.end.12:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %ns.addr, align 8, !dbg !656, !tbaa !529
  %22 = bitcast %struct._object* %21 to %struct._PyNamespaceObject*, !dbg !657
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %22, i32 0, i32 1, !dbg !658
  %23 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !658, !tbaa !543
  store %struct._object* %23, %struct._object** %d, align 8, !dbg !659, !tbaa !529
  %24 = load %struct._object*, %struct._object** %d, align 8, !dbg !660, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !661
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !662, !tbaa !563
  %inc = add i64 %25, 1, !dbg !662
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !662, !tbaa !563
  %26 = load %struct._object*, %struct._object** %d, align 8, !dbg !663, !tbaa !529
  %call13 = call %struct._object* @PyDict_Keys(%struct._object* %26), !dbg !664
  store %struct._object* %call13, %struct._object** %keys, align 8, !dbg !665, !tbaa !529
  %27 = load %struct._object*, %struct._object** %keys, align 8, !dbg !666, !tbaa !529
  %cmp14 = icmp eq %struct._object* %27, null, !dbg !668
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !669

if.then.15:                                       ; preds = %if.end.12
  br label %error, !dbg !670

if.end.16:                                        ; preds = %if.end.12
  %28 = load %struct._object*, %struct._object** %keys, align 8, !dbg !671, !tbaa !529
  %call17 = call i32 @PyList_Sort(%struct._object* %28), !dbg !673
  %cmp18 = icmp ne i32 %call17, 0, !dbg !674
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !675

if.then.19:                                       ; preds = %if.end.16
  br label %error, !dbg !676

if.end.20:                                        ; preds = %if.end.16
  %29 = load %struct._object*, %struct._object** %keys, align 8, !dbg !677, !tbaa !529
  %call21 = call %struct._object* @PyObject_GetIter(%struct._object* %29), !dbg !678
  store %struct._object* %call21, %struct._object** %keys_iter, align 8, !dbg !679, !tbaa !529
  %30 = load %struct._object*, %struct._object** %keys_iter, align 8, !dbg !680, !tbaa !529
  %cmp22 = icmp eq %struct._object* %30, null, !dbg !682
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !683

if.then.23:                                       ; preds = %if.end.20
  br label %error, !dbg !684

if.end.24:                                        ; preds = %if.end.20
  br label %while.cond, !dbg !685

while.cond:                                       ; preds = %if.end.57, %if.end.24
  %31 = load %struct._object*, %struct._object** %keys_iter, align 8, !dbg !686, !tbaa !529
  %call25 = call %struct._object* @PyIter_Next(%struct._object* %31), !dbg !688
  store %struct._object* %call25, %struct._object** %key, align 8, !dbg !689, !tbaa !529
  %cmp26 = icmp ne %struct._object* %call25, null, !dbg !690
  br i1 %cmp26, label %while.body, label %while.end, !dbg !685

while.body:                                       ; preds = %while.cond
  %32 = load %struct._object*, %struct._object** %key, align 8, !dbg !691, !tbaa !529
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !692
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !692, !tbaa !571
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19, !dbg !693
  %34 = load i64, i64* %tp_flags, align 8, !dbg !693, !tbaa !694
  %and = and i64 %34, 268435456, !dbg !695
  %cmp28 = icmp ne i64 %and, 0, !dbg !696
  br i1 %cmp28, label %land.lhs.true, label %if.end.43, !dbg !697

land.lhs.true:                                    ; preds = %while.body
  %35 = load %struct._object*, %struct._object** %key, align 8, !dbg !698, !tbaa !529
  %36 = bitcast %struct._object* %35 to %struct.PyASCIIObject*, !dbg !700
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %36, i32 0, i32 1, !dbg !701
  %37 = load i64, i64* %length, align 8, !dbg !701, !tbaa !702
  %cmp29 = icmp sgt i64 %37, 0, !dbg !705
  br i1 %cmp29, label %if.then.30, label %if.end.43, !dbg !706

if.then.30:                                       ; preds = %land.lhs.true
  %38 = bitcast %struct._object** %value to i8*, !dbg !707
  call void @llvm.lifetime.start(i64 8, i8* %38) #3, !dbg !707
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !410, metadata !533), !dbg !708
  %39 = bitcast %struct._object** %item to i8*, !dbg !707
  call void @llvm.lifetime.start(i64 8, i8* %39) #3, !dbg !707
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !414, metadata !533), !dbg !709
  %40 = load %struct._object*, %struct._object** %d, align 8, !dbg !710, !tbaa !529
  %41 = load %struct._object*, %struct._object** %key, align 8, !dbg !711, !tbaa !529
  %call31 = call %struct._object* @PyDict_GetItem(%struct._object* %40, %struct._object* %41), !dbg !712
  store %struct._object* %call31, %struct._object** %value, align 8, !dbg !713, !tbaa !529
  %42 = load %struct._object*, %struct._object** %key, align 8, !dbg !714, !tbaa !529
  %43 = load %struct._object*, %struct._object** %value, align 8, !dbg !715, !tbaa !529
  %call32 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* %42, %struct._object* %43), !dbg !716
  store %struct._object* %call32, %struct._object** %item, align 8, !dbg !717, !tbaa !529
  %44 = load %struct._object*, %struct._object** %item, align 8, !dbg !718, !tbaa !529
  %cmp33 = icmp eq %struct._object* %44, null, !dbg !719
  br i1 %cmp33, label %if.then.34, label %if.else, !dbg !720

if.then.34:                                       ; preds = %if.then.30
  store i32 1, i32* %loop_error, align 4, !dbg !721, !tbaa !603
  br label %if.end.42, !dbg !723

if.else:                                          ; preds = %if.then.30
  %45 = load %struct._object*, %struct._object** %pairs, align 8, !dbg !724, !tbaa !529
  %46 = load %struct._object*, %struct._object** %item, align 8, !dbg !725, !tbaa !529
  %call35 = call i32 @PyList_Append(%struct._object* %45, %struct._object* %46), !dbg !726
  store i32 %call35, i32* %loop_error, align 4, !dbg !727, !tbaa !603
  br label %do.body, !dbg !728

do.body:                                          ; preds = %if.else
  %47 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !729
  call void @llvm.lifetime.start(i64 8, i8* %47) #3, !dbg !729
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !415, metadata !533), !dbg !731
  %48 = load %struct._object*, %struct._object** %item, align 8, !dbg !732, !tbaa !529
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8, !dbg !731, !tbaa !529
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !733, !tbaa !529
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !735
  %50 = load i64, i64* %ob_refcnt36, align 8, !dbg !736, !tbaa !563
  %dec = add i64 %50, -1, !dbg !736
  store i64 %dec, i64* %ob_refcnt36, align 8, !dbg !736, !tbaa !563
  %cmp37 = icmp ne i64 %dec, 0, !dbg !737
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !738

if.then.38:                                       ; preds = %do.body
  br label %if.end.41, !dbg !739

if.else.39:                                       ; preds = %do.body
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !741, !tbaa !529
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !743
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !743, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !744
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !744, !tbaa !573
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !745, !tbaa !529
  call void %53(%struct._object* %54), !dbg !746
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  %55 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !747
  call void @llvm.lifetime.end(i64 8, i8* %55) #3, !dbg !747
  br label %do.cond, !dbg !749

do.cond:                                          ; preds = %if.end.41
  br label %do.end, !dbg !750

do.end:                                           ; preds = %do.cond
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %if.then.34
  %56 = bitcast %struct._object** %item to i8*, !dbg !752
  call void @llvm.lifetime.end(i64 8, i8* %56) #3, !dbg !752
  %57 = bitcast %struct._object** %value to i8*, !dbg !752
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !752
  br label %if.end.43, !dbg !753

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %while.body
  br label %do.body.44, !dbg !754

do.body.44:                                       ; preds = %if.end.43
  %58 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 8, i8* %58) #3, !dbg !755
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp45, metadata !419, metadata !533), !dbg !757
  %59 = load %struct._object*, %struct._object** %key, align 8, !dbg !758, !tbaa !529
  store %struct._object* %59, %struct._object** %_py_decref_tmp45, align 8, !dbg !757, !tbaa !529
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !759, !tbaa !529
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !761
  %61 = load i64, i64* %ob_refcnt46, align 8, !dbg !762, !tbaa !563
  %dec47 = add i64 %61, -1, !dbg !762
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !762, !tbaa !563
  %cmp48 = icmp ne i64 %dec47, 0, !dbg !763
  br i1 %cmp48, label %if.then.49, label %if.else.50, !dbg !764

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53, !dbg !765

if.else.50:                                       ; preds = %do.body.44
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !767, !tbaa !529
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !769
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !769, !tbaa !571
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !770
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !770, !tbaa !573
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8, !dbg !771, !tbaa !529
  call void %64(%struct._object* %65), !dbg !772
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %66 = bitcast %struct._object** %_py_decref_tmp45 to i8*, !dbg !773
  call void @llvm.lifetime.end(i64 8, i8* %66) #3, !dbg !773
  br label %do.cond.54, !dbg !775

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !776

do.end.55:                                        ; preds = %do.cond.54
  %67 = load i32, i32* %loop_error, align 4, !dbg !778, !tbaa !603
  %tobool = icmp ne i32 %67, 0, !dbg !778
  br i1 %tobool, label %if.then.56, label %if.end.57, !dbg !780

if.then.56:                                       ; preds = %do.end.55
  br label %error, !dbg !781

if.end.57:                                        ; preds = %do.end.55
  br label %while.cond, !dbg !685

while.end:                                        ; preds = %while.cond
  %call58 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)), !dbg !782
  store %struct._object* %call58, %struct._object** %separator, align 8, !dbg !783, !tbaa !529
  %68 = load %struct._object*, %struct._object** %separator, align 8, !dbg !784, !tbaa !529
  %cmp59 = icmp eq %struct._object* %68, null, !dbg !786
  br i1 %cmp59, label %if.then.60, label %if.end.61, !dbg !787

if.then.60:                                       ; preds = %while.end
  br label %error, !dbg !788

if.end.61:                                        ; preds = %while.end
  %69 = load %struct._object*, %struct._object** %separator, align 8, !dbg !789, !tbaa !529
  %70 = load %struct._object*, %struct._object** %pairs, align 8, !dbg !790, !tbaa !529
  %call62 = call %struct._object* @PyUnicode_Join(%struct._object* %69, %struct._object* %70), !dbg !791
  store %struct._object* %call62, %struct._object** %pairsrepr, align 8, !dbg !792, !tbaa !529
  br label %do.body.63, !dbg !793

do.body.63:                                       ; preds = %if.end.61
  %71 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !794
  call void @llvm.lifetime.start(i64 8, i8* %71) #3, !dbg !794
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !421, metadata !533), !dbg !796
  %72 = load %struct._object*, %struct._object** %separator, align 8, !dbg !797, !tbaa !529
  store %struct._object* %72, %struct._object** %_py_decref_tmp64, align 8, !dbg !796, !tbaa !529
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !798, !tbaa !529
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !800
  %74 = load i64, i64* %ob_refcnt65, align 8, !dbg !801, !tbaa !563
  %dec66 = add i64 %74, -1, !dbg !801
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !801, !tbaa !563
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !802
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !803

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72, !dbg !804

if.else.69:                                       ; preds = %do.body.63
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !806, !tbaa !529
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !808
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !808, !tbaa !571
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !809
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !809, !tbaa !573
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !810, !tbaa !529
  call void %77(%struct._object* %78), !dbg !811
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %79 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !812
  call void @llvm.lifetime.end(i64 8, i8* %79) #3, !dbg !812
  br label %do.cond.73, !dbg !814

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !815

do.end.74:                                        ; preds = %do.cond.73
  %80 = load %struct._object*, %struct._object** %pairsrepr, align 8, !dbg !817, !tbaa !529
  %cmp75 = icmp eq %struct._object* %80, null, !dbg !819
  br i1 %cmp75, label %if.then.76, label %if.end.77, !dbg !820

if.then.76:                                       ; preds = %do.end.74
  br label %error, !dbg !821

if.end.77:                                        ; preds = %do.end.74
  %81 = load i8*, i8** %name, align 8, !dbg !822, !tbaa !529
  %82 = load %struct._object*, %struct._object** %pairsrepr, align 8, !dbg !823, !tbaa !529
  %call78 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* %81, %struct._object* %82), !dbg !824
  store %struct._object* %call78, %struct._object** %repr, align 8, !dbg !825, !tbaa !529
  br label %do.body.79, !dbg !826

do.body.79:                                       ; preds = %if.end.77
  %83 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !827
  call void @llvm.lifetime.start(i64 8, i8* %83) #3, !dbg !827
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp80, metadata !423, metadata !533), !dbg !829
  %84 = load %struct._object*, %struct._object** %pairsrepr, align 8, !dbg !830, !tbaa !529
  store %struct._object* %84, %struct._object** %_py_decref_tmp80, align 8, !dbg !829, !tbaa !529
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !831, !tbaa !529
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !833
  %86 = load i64, i64* %ob_refcnt81, align 8, !dbg !834, !tbaa !563
  %dec82 = add i64 %86, -1, !dbg !834
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !834, !tbaa !563
  %cmp83 = icmp ne i64 %dec82, 0, !dbg !835
  br i1 %cmp83, label %if.then.84, label %if.else.85, !dbg !836

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88, !dbg !837

if.else.85:                                       ; preds = %do.body.79
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !839, !tbaa !529
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !841
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !841, !tbaa !571
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !842
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !842, !tbaa !573
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8, !dbg !843, !tbaa !529
  call void %89(%struct._object* %90), !dbg !844
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  %91 = bitcast %struct._object** %_py_decref_tmp80 to i8*, !dbg !845
  call void @llvm.lifetime.end(i64 8, i8* %91) #3, !dbg !845
  br label %do.cond.89, !dbg !846

do.cond.89:                                       ; preds = %if.end.88
  br label %do.end.90, !dbg !847

do.end.90:                                        ; preds = %do.cond.89
  br label %error, !dbg !849

error:                                            ; preds = %do.end.90, %if.then.76, %if.then.60, %if.then.56, %if.then.23, %if.then.19, %if.then.15, %if.then.11
  br label %do.body.91, !dbg !851

do.body.91:                                       ; preds = %error
  %92 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !852
  call void @llvm.lifetime.start(i64 8, i8* %92) #3, !dbg !852
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !425, metadata !533), !dbg !854
  %93 = load %struct._object*, %struct._object** %pairs, align 8, !dbg !855, !tbaa !529
  store %struct._object* %93, %struct._object** %_py_xdecref_tmp, align 8, !dbg !854, !tbaa !529
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !856, !tbaa !529
  %cmp92 = icmp ne %struct._object* %94, null, !dbg !857
  br i1 %cmp92, label %if.then.93, label %if.end.106, !dbg !858

if.then.93:                                       ; preds = %do.body.91
  br label %do.body.94, !dbg !859

do.body.94:                                       ; preds = %if.then.93
  %95 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !861
  call void @llvm.lifetime.start(i64 8, i8* %95) #3, !dbg !861
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp95, metadata !427, metadata !533), !dbg !863
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !864, !tbaa !529
  store %struct._object* %96, %struct._object** %_py_decref_tmp95, align 8, !dbg !863, !tbaa !529
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !865, !tbaa !529
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !867
  %98 = load i64, i64* %ob_refcnt96, align 8, !dbg !868, !tbaa !563
  %dec97 = add i64 %98, -1, !dbg !868
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !868, !tbaa !563
  %cmp98 = icmp ne i64 %dec97, 0, !dbg !869
  br i1 %cmp98, label %if.then.99, label %if.else.100, !dbg !870

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103, !dbg !871

if.else.100:                                      ; preds = %do.body.94
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !873, !tbaa !529
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !875
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8, !dbg !875, !tbaa !571
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !876
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8, !dbg !876, !tbaa !573
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !877, !tbaa !529
  call void %101(%struct._object* %102), !dbg !878
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  %103 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !879
  call void @llvm.lifetime.end(i64 8, i8* %103) #3, !dbg !879
  br label %do.cond.104, !dbg !881

do.cond.104:                                      ; preds = %if.end.103
  br label %do.end.105, !dbg !882

do.end.105:                                       ; preds = %do.cond.104
  br label %if.end.106, !dbg !884

if.end.106:                                       ; preds = %do.end.105, %do.body.91
  %104 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !886
  call void @llvm.lifetime.end(i64 8, i8* %104) #3, !dbg !886
  br label %do.cond.107, !dbg !889

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !890

do.end.108:                                       ; preds = %do.cond.107
  br label %do.body.109, !dbg !892

do.body.109:                                      ; preds = %do.end.108
  %105 = bitcast %struct._object** %_py_xdecref_tmp110 to i8*, !dbg !893
  call void @llvm.lifetime.start(i64 8, i8* %105) #3, !dbg !893
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp110, metadata !430, metadata !533), !dbg !895
  %106 = load %struct._object*, %struct._object** %d, align 8, !dbg !896, !tbaa !529
  store %struct._object* %106, %struct._object** %_py_xdecref_tmp110, align 8, !dbg !895, !tbaa !529
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8, !dbg !897, !tbaa !529
  %cmp111 = icmp ne %struct._object* %107, null, !dbg !898
  br i1 %cmp111, label %if.then.112, label %if.end.125, !dbg !899

if.then.112:                                      ; preds = %do.body.109
  br label %do.body.113, !dbg !900

do.body.113:                                      ; preds = %if.then.112
  %108 = bitcast %struct._object** %_py_decref_tmp114 to i8*, !dbg !902
  call void @llvm.lifetime.start(i64 8, i8* %108) #3, !dbg !902
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp114, metadata !432, metadata !533), !dbg !904
  %109 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8, !dbg !905, !tbaa !529
  store %struct._object* %109, %struct._object** %_py_decref_tmp114, align 8, !dbg !904, !tbaa !529
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !906, !tbaa !529
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0, !dbg !908
  %111 = load i64, i64* %ob_refcnt115, align 8, !dbg !909, !tbaa !563
  %dec116 = add i64 %111, -1, !dbg !909
  store i64 %dec116, i64* %ob_refcnt115, align 8, !dbg !909, !tbaa !563
  %cmp117 = icmp ne i64 %dec116, 0, !dbg !910
  br i1 %cmp117, label %if.then.118, label %if.else.119, !dbg !911

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122, !dbg !912

if.else.119:                                      ; preds = %do.body.113
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !914, !tbaa !529
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1, !dbg !916
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !916, !tbaa !571
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4, !dbg !917
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !917, !tbaa !573
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8, !dbg !918, !tbaa !529
  call void %114(%struct._object* %115), !dbg !919
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  %116 = bitcast %struct._object** %_py_decref_tmp114 to i8*, !dbg !920
  call void @llvm.lifetime.end(i64 8, i8* %116) #3, !dbg !920
  br label %do.cond.123, !dbg !922

do.cond.123:                                      ; preds = %if.end.122
  br label %do.end.124, !dbg !923

do.end.124:                                       ; preds = %do.cond.123
  br label %if.end.125, !dbg !925

if.end.125:                                       ; preds = %do.end.124, %do.body.109
  %117 = bitcast %struct._object** %_py_xdecref_tmp110 to i8*, !dbg !927
  call void @llvm.lifetime.end(i64 8, i8* %117) #3, !dbg !927
  br label %do.cond.126, !dbg !928

do.cond.126:                                      ; preds = %if.end.125
  br label %do.end.127, !dbg !929

do.end.127:                                       ; preds = %do.cond.126
  br label %do.body.128, !dbg !931

do.body.128:                                      ; preds = %do.end.127
  %118 = bitcast %struct._object** %_py_xdecref_tmp129 to i8*, !dbg !932
  call void @llvm.lifetime.start(i64 8, i8* %118) #3, !dbg !932
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp129, metadata !435, metadata !533), !dbg !934
  %119 = load %struct._object*, %struct._object** %keys, align 8, !dbg !935, !tbaa !529
  store %struct._object* %119, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !934, !tbaa !529
  %120 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !936, !tbaa !529
  %cmp130 = icmp ne %struct._object* %120, null, !dbg !937
  br i1 %cmp130, label %if.then.131, label %if.end.144, !dbg !938

if.then.131:                                      ; preds = %do.body.128
  br label %do.body.132, !dbg !939

do.body.132:                                      ; preds = %if.then.131
  %121 = bitcast %struct._object** %_py_decref_tmp133 to i8*, !dbg !941
  call void @llvm.lifetime.start(i64 8, i8* %121) #3, !dbg !941
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp133, metadata !437, metadata !533), !dbg !943
  %122 = load %struct._object*, %struct._object** %_py_xdecref_tmp129, align 8, !dbg !944, !tbaa !529
  store %struct._object* %122, %struct._object** %_py_decref_tmp133, align 8, !dbg !943, !tbaa !529
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !945, !tbaa !529
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0, !dbg !947
  %124 = load i64, i64* %ob_refcnt134, align 8, !dbg !948, !tbaa !563
  %dec135 = add i64 %124, -1, !dbg !948
  store i64 %dec135, i64* %ob_refcnt134, align 8, !dbg !948, !tbaa !563
  %cmp136 = icmp ne i64 %dec135, 0, !dbg !949
  br i1 %cmp136, label %if.then.137, label %if.else.138, !dbg !950

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141, !dbg !951

if.else.138:                                      ; preds = %do.body.132
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !953, !tbaa !529
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1, !dbg !955
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8, !dbg !955, !tbaa !571
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4, !dbg !956
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8, !dbg !956, !tbaa !573
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8, !dbg !957, !tbaa !529
  call void %127(%struct._object* %128), !dbg !958
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  %129 = bitcast %struct._object** %_py_decref_tmp133 to i8*, !dbg !959
  call void @llvm.lifetime.end(i64 8, i8* %129) #3, !dbg !959
  br label %do.cond.142, !dbg !961

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143, !dbg !962

do.end.143:                                       ; preds = %do.cond.142
  br label %if.end.144, !dbg !964

if.end.144:                                       ; preds = %do.end.143, %do.body.128
  %130 = bitcast %struct._object** %_py_xdecref_tmp129 to i8*, !dbg !966
  call void @llvm.lifetime.end(i64 8, i8* %130) #3, !dbg !966
  br label %do.cond.145, !dbg !967

do.cond.145:                                      ; preds = %if.end.144
  br label %do.end.146, !dbg !968

do.end.146:                                       ; preds = %do.cond.145
  br label %do.body.147, !dbg !970

do.body.147:                                      ; preds = %do.end.146
  %131 = bitcast %struct._object** %_py_xdecref_tmp148 to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 8, i8* %131) #3, !dbg !971
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp148, metadata !440, metadata !533), !dbg !973
  %132 = load %struct._object*, %struct._object** %keys_iter, align 8, !dbg !974, !tbaa !529
  store %struct._object* %132, %struct._object** %_py_xdecref_tmp148, align 8, !dbg !973, !tbaa !529
  %133 = load %struct._object*, %struct._object** %_py_xdecref_tmp148, align 8, !dbg !975, !tbaa !529
  %cmp149 = icmp ne %struct._object* %133, null, !dbg !976
  br i1 %cmp149, label %if.then.150, label %if.end.163, !dbg !977

if.then.150:                                      ; preds = %do.body.147
  br label %do.body.151, !dbg !978

do.body.151:                                      ; preds = %if.then.150
  %134 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !980
  call void @llvm.lifetime.start(i64 8, i8* %134) #3, !dbg !980
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp152, metadata !442, metadata !533), !dbg !982
  %135 = load %struct._object*, %struct._object** %_py_xdecref_tmp148, align 8, !dbg !983, !tbaa !529
  store %struct._object* %135, %struct._object** %_py_decref_tmp152, align 8, !dbg !982, !tbaa !529
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !984, !tbaa !529
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0, !dbg !986
  %137 = load i64, i64* %ob_refcnt153, align 8, !dbg !987, !tbaa !563
  %dec154 = add i64 %137, -1, !dbg !987
  store i64 %dec154, i64* %ob_refcnt153, align 8, !dbg !987, !tbaa !563
  %cmp155 = icmp ne i64 %dec154, 0, !dbg !988
  br i1 %cmp155, label %if.then.156, label %if.else.157, !dbg !989

if.then.156:                                      ; preds = %do.body.151
  br label %if.end.160, !dbg !990

if.else.157:                                      ; preds = %do.body.151
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !992, !tbaa !529
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 1, !dbg !994
  %139 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !994, !tbaa !571
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %139, i32 0, i32 4, !dbg !995
  %140 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8, !dbg !995, !tbaa !573
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8, !dbg !996, !tbaa !529
  call void %140(%struct._object* %141), !dbg !997
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  %142 = bitcast %struct._object** %_py_decref_tmp152 to i8*, !dbg !998
  call void @llvm.lifetime.end(i64 8, i8* %142) #3, !dbg !998
  br label %do.cond.161, !dbg !1000

do.cond.161:                                      ; preds = %if.end.160
  br label %do.end.162, !dbg !1001

do.end.162:                                       ; preds = %do.cond.161
  br label %if.end.163, !dbg !1003

if.end.163:                                       ; preds = %do.end.162, %do.body.147
  %143 = bitcast %struct._object** %_py_xdecref_tmp148 to i8*, !dbg !1005
  call void @llvm.lifetime.end(i64 8, i8* %143) #3, !dbg !1005
  br label %do.cond.164, !dbg !1006

do.cond.164:                                      ; preds = %if.end.163
  br label %do.end.165, !dbg !1007

do.end.165:                                       ; preds = %do.cond.164
  %144 = load %struct._object*, %struct._object** %ns.addr, align 8, !dbg !1009, !tbaa !529
  call void @Py_ReprLeave(%struct._object* %144), !dbg !1010
  %145 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1011, !tbaa !529
  store %struct._object* %145, %struct._object** %retval, !dbg !1012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1012

cleanup:                                          ; preds = %do.end.165, %cond.end.7
  %146 = bitcast i8** %name to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %146) #3, !dbg !1013
  %147 = bitcast %struct._object** %repr to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %147) #3, !dbg !1013
  %148 = bitcast %struct._object** %pairsrepr to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %148) #3, !dbg !1013
  %149 = bitcast %struct._object** %separator to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %149) #3, !dbg !1013
  %150 = bitcast %struct._object** %key to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %150) #3, !dbg !1013
  %151 = bitcast %struct._object** %keys_iter to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %151) #3, !dbg !1013
  %152 = bitcast %struct._object** %keys to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %152) #3, !dbg !1013
  %153 = bitcast %struct._object** %d to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %153) #3, !dbg !1013
  %154 = bitcast %struct._object** %pairs to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 8, i8* %154) #3, !dbg !1013
  %155 = bitcast i32* %loop_error to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 4, i8* %155) #3, !dbg !1013
  %156 = bitcast i32* %i to i8*, !dbg !1013
  call void @llvm.lifetime.end(i64 4, i8* %156) #3, !dbg !1013
  %157 = load %struct._object*, %struct._object** %retval, !dbg !1013
  ret %struct._object* %157, !dbg !1013
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @namespace_traverse(%struct._PyNamespaceObject* %ns, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns.addr, metadata !449, metadata !533), !dbg !1014
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !450, metadata !533), !dbg !1015
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !451, metadata !533), !dbg !1016
  br label %do.body, !dbg !1017

do.body:                                          ; preds = %entry
  %0 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1018, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %0, i32 0, i32 1, !dbg !1020
  %1 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1020, !tbaa !543
  %tobool = icmp ne %struct._object* %1, null, !dbg !1021
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1022

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1023
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !452, metadata !533), !dbg !1025
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1026, !tbaa !529
  %4 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1027, !tbaa !529
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %4, i32 0, i32 1, !dbg !1028
  %5 = load %struct._object*, %struct._object** %ns_dict1, align 8, !dbg !1028, !tbaa !543
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1029, !tbaa !529
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1026
  store i32 %call, i32* %vret, align 4, !dbg !1025, !tbaa !603
  %7 = load i32, i32* %vret, align 4, !dbg !1030, !tbaa !603
  %tobool2 = icmp ne i32 %7, 0, !dbg !1030
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1032

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1033, !tbaa !603
  store i32 %8, i32* %retval, !dbg !1035
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1035

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1036
  br label %cleanup, !dbg !1036

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1038
  call void @llvm.lifetime.end(i64 4, i8* %9) #3, !dbg !1038
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !1041

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1042

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !1045
  br label %return, !dbg !1045

return:                                           ; preds = %LeafBlock, %do.end
  %10 = load i32, i32* %retval, !dbg !1046
  ret i32 %10, !dbg !1046
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_clear(%struct._PyNamespaceObject* %ns) #0 {
entry:
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns.addr, metadata !460, metadata !533), !dbg !1047
  br label %do.body, !dbg !1048

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1049
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1049
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !461, metadata !533), !dbg !1051
  %1 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1052, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %1, i32 0, i32 1, !dbg !1053
  %2 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1053, !tbaa !543
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !1051, !tbaa !529
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1054, !tbaa !529
  %cmp = icmp ne %struct._object* %3, null, !dbg !1055
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1056

if.then:                                          ; preds = %do.body
  %4 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1057, !tbaa !529
  %ns_dict1 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %4, i32 0, i32 1, !dbg !1059
  store %struct._object* null, %struct._object** %ns_dict1, align 8, !dbg !1060, !tbaa !543
  br label %do.body.2, !dbg !1061

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1062
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1062
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !463, metadata !533), !dbg !1064
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1065, !tbaa !529
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !1064, !tbaa !529
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1066, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !1068
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !1069, !tbaa !563
  %dec = add i64 %8, -1, !dbg !1069
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1069, !tbaa !563
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1070
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1071

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1072

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1074, !tbaa !529
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1076
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1076, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !1077
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1077, !tbaa !573
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1078, !tbaa !529
  call void %11(%struct._object* %12), !dbg !1079
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1080
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !1080
  br label %do.cond, !dbg !1082

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1083

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1085

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1087
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1087
  br label %do.end.7, !dbg !1090

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !1091
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !469, metadata !533), !dbg !1092
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !470, metadata !533), !dbg !1093
  store i32 %op, i32* %op.addr, align 4, !tbaa !603
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !471, metadata !533), !dbg !1094
  %0 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1095, !tbaa !529
  %call = call i32 @PyObject_IsInstance(%struct._object* %0, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i32 0, i32 0, i32 0)), !dbg !1097
  %tobool = icmp ne i32 %call, 0, !dbg !1097
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1098

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1099, !tbaa !529
  %call1 = call i32 @PyObject_IsInstance(%struct._object* %1, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyNamespace_Type, i32 0, i32 0, i32 0)), !dbg !1100
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1100
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1101

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !1102, !tbaa !529
  %3 = bitcast %struct._object* %2 to %struct._PyNamespaceObject*, !dbg !1103
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %3, i32 0, i32 1, !dbg !1104
  %4 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1104, !tbaa !543
  %5 = load %struct._object*, %struct._object** %other.addr, align 8, !dbg !1105, !tbaa !529
  %6 = bitcast %struct._object* %5 to %struct._PyNamespaceObject*, !dbg !1106
  %ns_dict3 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %6, i32 0, i32 1, !dbg !1107
  %7 = load %struct._object*, %struct._object** %ns_dict3, align 8, !dbg !1107, !tbaa !543
  %8 = load i32, i32* %op.addr, align 4, !dbg !1108, !tbaa !603
  %call4 = call %struct._object* @PyObject_RichCompare(%struct._object* %4, %struct._object* %7, i32 %8), !dbg !1109
  store %struct._object* %call4, %struct._object** %retval, !dbg !1110
  br label %return, !dbg !1110

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1111, !tbaa !563
  %inc = add i64 %9, 1, !dbg !1111
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1111, !tbaa !563
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1112
  br label %return, !dbg !1112

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1113
  ret %struct._object* %10, !dbg !1113
}

; Function Attrs: nounwind uwtable
define internal i32 @namespace_init(%struct._PyNamespaceObject* %ns, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %argcount = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns.addr, metadata !485, metadata !533), !dbg !1114
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !486, metadata !533), !dbg !1115
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !487, metadata !533), !dbg !1116
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1117, !tbaa !529
  %cmp = icmp ne %struct._object* %0, null, !dbg !1118
  br i1 %cmp, label %if.then, label %if.end.7, !dbg !1119

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %argcount to i8*, !dbg !1120
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1120
  call void @llvm.dbg.declare(metadata i64* %argcount, metadata !488, metadata !533), !dbg !1121
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1122, !tbaa !529
  %call = call i64 @PyObject_Size(%struct._object* %2), !dbg !1123
  store i64 %call, i64* %argcount, align 8, !dbg !1121, !tbaa !1124
  %3 = load i64, i64* %argcount, align 8, !dbg !1125, !tbaa !1124
  %cmp1 = icmp slt i64 %3, 0, !dbg !1127
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1128

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !1129
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1129

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* %argcount, align 8, !dbg !1130, !tbaa !1124
  %cmp3 = icmp sgt i64 %4, 0, !dbg !1132
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !1133

if.then.4:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1134, !tbaa !529
  %call5 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)), !dbg !1136
  store i32 -1, i32* %retval, !dbg !1137
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1137

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1138
  br label %cleanup, !dbg !1138

cleanup:                                          ; preds = %if.end.6, %if.then.4, %if.then.2
  %6 = bitcast i64* %argcount to i8*, !dbg !1139
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !1139
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.7, !dbg !1141

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1142, !tbaa !529
  %cmp8 = icmp eq %struct._object* %7, null, !dbg !1144
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1145

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval, !dbg !1146
  br label %return, !dbg !1146

if.end.10:                                        ; preds = %if.end.7
  %8 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1147, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %8, i32 0, i32 1, !dbg !1148
  %9 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1148, !tbaa !543
  %10 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1149, !tbaa !529
  %call11 = call i32 @PyDict_Update(%struct._object* %9, %struct._object* %10), !dbg !1150
  store i32 %call11, i32* %retval, !dbg !1151
  br label %return, !dbg !1151

return:                                           ; preds = %LeafBlock, %if.end.10, %if.then.9
  %11 = load i32, i32* %retval, !dbg !1152
  ret i32 %11, !dbg !1152
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @namespace_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct._object*, align 8
  %ns = alloca %struct._PyNamespaceObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !497, metadata !533), !dbg !1153
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !498, metadata !533), !dbg !1154
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !499, metadata !533), !dbg !1155
  %0 = bitcast %struct._object** %self to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._object** %self, metadata !500, metadata !533), !dbg !1157
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1158, !tbaa !529
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !1159
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1159, !tbaa !1160
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1161, !tbaa !529
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !1158
  store %struct._object* %call, %struct._object** %self, align 8, !dbg !1162, !tbaa !529
  %4 = load %struct._object*, %struct._object** %self, align 8, !dbg !1163, !tbaa !529
  %cmp = icmp ne %struct._object* %4, null, !dbg !1164
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !1165

if.then:                                          ; preds = %entry
  %5 = bitcast %struct._PyNamespaceObject** %ns to i8*, !dbg !1166
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1166
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns, metadata !501, metadata !533), !dbg !1167
  %6 = load %struct._object*, %struct._object** %self, align 8, !dbg !1168, !tbaa !529
  %7 = bitcast %struct._object* %6 to %struct._PyNamespaceObject*, !dbg !1169
  store %struct._PyNamespaceObject* %7, %struct._PyNamespaceObject** %ns, align 8, !dbg !1167, !tbaa !529
  %call1 = call %struct._object* @PyDict_New(), !dbg !1170
  %8 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8, !dbg !1171, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %8, i32 0, i32 1, !dbg !1172
  store %struct._object* %call1, %struct._object** %ns_dict, align 8, !dbg !1173, !tbaa !543
  %9 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8, !dbg !1174, !tbaa !529
  %ns_dict2 = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %9, i32 0, i32 1, !dbg !1175
  %10 = load %struct._object*, %struct._object** %ns_dict2, align 8, !dbg !1175, !tbaa !543
  %cmp3 = icmp eq %struct._object* %10, null, !dbg !1176
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !1177

if.then.4:                                        ; preds = %if.then
  br label %do.body, !dbg !1178

do.body:                                          ; preds = %if.then.4
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1179
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1179
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !504, metadata !533), !dbg !1181
  %12 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns, align 8, !dbg !1182, !tbaa !529
  %13 = bitcast %struct._PyNamespaceObject* %12 to %struct._object*, !dbg !1183
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1181, !tbaa !529
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1184, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1186
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1187, !tbaa !563
  %dec = add i64 %15, -1, !dbg !1187
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1187, !tbaa !563
  %cmp5 = icmp ne i64 %dec, 0, !dbg !1188
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !1189

if.then.6:                                        ; preds = %do.body
  br label %if.end, !dbg !1190

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1192, !tbaa !529
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1194
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1194, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1195
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1195, !tbaa !573
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1196, !tbaa !529
  call void %18(%struct._object* %19), !dbg !1197
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1198
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !1198
  br label %do.cond, !dbg !1200

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1201

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1203
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1203

if.end.7:                                         ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1204
  br label %cleanup, !dbg !1204

cleanup:                                          ; preds = %if.end.7, %do.end
  %21 = bitcast %struct._PyNamespaceObject** %ns to i8*, !dbg !1205
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1205
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.8, !dbg !1207

if.end.8:                                         ; preds = %cleanup.cont, %entry
  %22 = load %struct._object*, %struct._object** %self, align 8, !dbg !1208, !tbaa !529
  store %struct._object* %22, %struct._object** %retval, !dbg !1209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9, !dbg !1209

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.9

cleanup.9:                                        ; preds = %NewDefault, %if.end.8
  %23 = bitcast %struct._object** %self to i8*, !dbg !1210
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !1210
  %24 = load %struct._object*, %struct._object** %retval, !dbg !1210
  ret %struct._object* %24, !dbg !1210
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyNamespace_New(%struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ns = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !379, metadata !533), !dbg !1211
  %0 = bitcast %struct._object** %ns to i8*, !dbg !1212
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1212
  call void @llvm.dbg.declare(metadata %struct._object** %ns, metadata !380, metadata !533), !dbg !1213
  %call = call %struct._object* @namespace_new(%struct._typeobject* @_PyNamespace_Type, %struct._object* null, %struct._object* null), !dbg !1214
  store %struct._object* %call, %struct._object** %ns, align 8, !dbg !1213, !tbaa !529
  %1 = load %struct._object*, %struct._object** %ns, align 8, !dbg !1215, !tbaa !529
  %cmp = icmp eq %struct._object* %1, null, !dbg !1217
  br i1 %cmp, label %if.then, label %if.end, !dbg !1218

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1219
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1219

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1220, !tbaa !529
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !1222
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !1223

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %ns, align 8, !dbg !1224, !tbaa !529
  store %struct._object* %3, %struct._object** %retval, !dbg !1225
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1225

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %ns, align 8, !dbg !1226, !tbaa !529
  %5 = bitcast %struct._object* %4 to %struct._PyNamespaceObject*, !dbg !1227
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %5, i32 0, i32 1, !dbg !1228
  %6 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1228, !tbaa !543
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1229, !tbaa !529
  %call4 = call i32 @PyDict_Update(%struct._object* %6, %struct._object* %7), !dbg !1230
  %cmp5 = icmp ne i32 %call4, 0, !dbg !1231
  br i1 %cmp5, label %if.then.6, label %if.end.10, !dbg !1232

if.then.6:                                        ; preds = %if.end.3
  br label %do.body, !dbg !1233

do.body:                                          ; preds = %if.then.6
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1234
  call void @llvm.lifetime.start(i64 8, i8* %8) #3, !dbg !1234
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !381, metadata !533), !dbg !1236
  %9 = load %struct._object*, %struct._object** %ns, align 8, !dbg !1237, !tbaa !529
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !1236, !tbaa !529
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1238, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !1240
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1241, !tbaa !563
  %dec = add i64 %11, -1, !dbg !1241
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1241, !tbaa !563
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1242
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1243

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1244

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1246, !tbaa !529
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1248
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1248, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !1249
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1249, !tbaa !573
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1250, !tbaa !529
  call void %14(%struct._object* %15), !dbg !1251
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1252
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1252
  br label %do.cond, !dbg !1254

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1255

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1257
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1257

if.end.10:                                        ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %ns, align 8, !dbg !1258, !tbaa !529
  store %struct._object* %17, %struct._object** %retval, !dbg !1259
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1259

cleanup:                                          ; preds = %if.end.10, %do.end, %if.then.2, %if.then
  %18 = bitcast %struct._object** %ns to i8*, !dbg !1260
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1260
  %19 = load %struct._object*, %struct._object** %retval, !dbg !1260
  ret %struct._object* %19, !dbg !1260
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

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
define internal %struct._object* @namespace_reduce(%struct._PyNamespaceObject* %ns) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ns.addr = alloca %struct._PyNamespaceObject*, align 8
  %result = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyNamespaceObject* %ns, %struct._PyNamespaceObject** %ns.addr, align 8, !tbaa !529
  call void @llvm.dbg.declare(metadata %struct._PyNamespaceObject** %ns.addr, metadata !476, metadata !533), !dbg !1261
  %0 = bitcast %struct._object** %result to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1262
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !477, metadata !533), !dbg !1263
  %1 = bitcast %struct._object** %args to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1262
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !478, metadata !533), !dbg !1264
  %call = call %struct._object* @PyTuple_New(i64 0), !dbg !1265
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !1264, !tbaa !529
  %2 = load %struct._object*, %struct._object** %args, align 8, !dbg !1266, !tbaa !529
  %tobool = icmp ne %struct._object* %2, null, !dbg !1266
  br i1 %tobool, label %if.end, label %if.then, !dbg !1268

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1269
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1269

if.end:                                           ; preds = %entry
  %3 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1270, !tbaa !529
  %4 = bitcast %struct._PyNamespaceObject* %3 to %struct._object*, !dbg !1271
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1272
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1272, !tbaa !571
  %6 = bitcast %struct._typeobject* %5 to %struct._object*, !dbg !1273
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !1274, !tbaa !529
  %8 = load %struct._PyNamespaceObject*, %struct._PyNamespaceObject** %ns.addr, align 8, !dbg !1275, !tbaa !529
  %ns_dict = getelementptr inbounds %struct._PyNamespaceObject, %struct._PyNamespaceObject* %8, i32 0, i32 1, !dbg !1276
  %9 = load %struct._object*, %struct._object** %ns_dict, align 8, !dbg !1276, !tbaa !543
  %call1 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %6, %struct._object* %7, %struct._object* %9), !dbg !1277
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !1278, !tbaa !529
  br label %do.body, !dbg !1279

do.body:                                          ; preds = %if.end
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1280
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !479, metadata !533), !dbg !1282
  %11 = load %struct._object*, %struct._object** %args, align 8, !dbg !1283, !tbaa !529
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !1282, !tbaa !529
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1284, !tbaa !529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !1286
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !1287, !tbaa !563
  %dec = add i64 %13, -1, !dbg !1287
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1287, !tbaa !563
  %cmp = icmp ne i64 %dec, 0, !dbg !1288
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1289

if.then.2:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1290

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1292, !tbaa !529
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1294
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !1294, !tbaa !571
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !1295
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1295, !tbaa !573
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1296, !tbaa !529
  call void %16(%struct._object* %17), !dbg !1297
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1298
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !1298
  br label %do.cond, !dbg !1300

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1301

do.end:                                           ; preds = %do.cond
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !1303, !tbaa !529
  store %struct._object* %19, %struct._object** %retval, !dbg !1304
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1304

cleanup:                                          ; preds = %do.end, %if.then
  %20 = bitcast %struct._object** %args to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 8, i8* %20) #3, !dbg !1305
  %21 = bitcast %struct._object** %result to i8*, !dbg !1305
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1305
  %22 = load %struct._object*, %struct._object** %retval, !dbg !1305
  ret %struct._object* %22, !dbg !1305
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i64 @PyObject_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyDict_New() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!526, !527}
!llvm.ident = !{!528}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !376, globals: !508)
!1 = !DIFile(filename: "namespaceobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !44, !357}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyNamespaceObject", file: !7, line: 10, baseType: !8)
!7 = !DIFile(filename: "Objects/namespaceobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 7, size: 192, align: 64, elements: !9)
!9 = !{!10, !356}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !8, file: !7, line: 8, baseType: !11, size: 128, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !12, line: 109, baseType: !13)
!12 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !12, line: 105, size: 128, align: 64, elements: !14)
!14 = !{!15, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !13, file: !12, line: 107, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !17, line: 177, baseType: !18)
!17 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 102, baseType: !20)
!19 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !21, line: 181, baseType: !22)
!21 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !13, file: !12, line: 108, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !12, line: 334, size: 3200, align: 64, elements: !26)
!26 = !{!27, !33, !37, !38, !39, !45, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !304, !322, !323, !324, !326, !328, !329, !331, !336, !341, !346, !347, !348, !349, !350, !351, !352, !353, !355}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !12, line: 335, baseType: !28, size: 192, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !12, line: 114, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 111, size: 192, align: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !29, file: !12, line: 112, baseType: !11, size: 128, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !29, file: !12, line: 113, baseType: !16, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !25, file: !12, line: 336, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !25, file: !12, line: 337, baseType: !16, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !25, file: !12, line: 337, baseType: !16, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !25, file: !12, line: 341, baseType: !40, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !12, line: 308, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !25, file: !12, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !12, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !44, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !19, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !96, !97, !98, !99, !103, !104}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !53, file: !54, line: 247, baseType: !50, size: 32, align: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !53, file: !54, line: 252, baseType: !58, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
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
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !21, line: 140, baseType: !22)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !53, file: !54, line: 279, baseType: !83, size: 16, align: 16, offset: 1024)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !53, file: !54, line: 280, baseType: !85, size: 8, align: 8, offset: 1040)
!85 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !53, file: !54, line: 281, baseType: !87, size: 8, align: 8, offset: 1048)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !53, file: !54, line: 285, baseType: !91, size: 64, align: 64, offset: 1088)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !54, line: 155, baseType: null)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !53, file: !54, line: 294, baseType: !94, size: 64, align: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !21, line: 141, baseType: !22)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !25, file: !12, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !12, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!44, !44, !58}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !25, file: !12, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !12, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!50, !44, !58, !44}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !25, file: !12, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !25, file: !12, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !12, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!44, !44}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !25, file: !12, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !12, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !12, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !12, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!44, !44, !44}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !12, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !12, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !12, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !12, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !12, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !12, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!44, !44, !44, !44}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !12, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !12, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !12, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !12, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !12, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !12, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!50, !44}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !12, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !12, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !12, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !12, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !12, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !12, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !12, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !12, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !12, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !12, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !12, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !12, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !12, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !12, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !12, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !12, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !12, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !12, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !12, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !12, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !12, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !12, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !12, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !12, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !25, file: !12, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !12, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !12, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !12, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!16, !44}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !12, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !12, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !12, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!44, !44, !16}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !12, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !12, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !12, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !12, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!50, !44, !16, !44}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !12, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !12, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !12, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!50, !44, !44}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !12, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !12, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !25, file: !12, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !12, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !12, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !12, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !12, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !12, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!50, !44, !44, !44}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !25, file: !12, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !12, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !44}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !17, line: 186, baseType: !16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !25, file: !12, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !25, file: !12, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !25, file: !12, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !12, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !25, file: !12, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !12, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !25, file: !12, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !12, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !12, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !12, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!50, !44, !241, !50}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !12, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !12, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !12, line: 179, baseType: !4, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !12, line: 180, baseType: !44, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !12, line: 181, baseType: !16, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !12, line: 182, baseType: !16, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !12, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !12, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !12, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !12, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !12, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !12, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !12, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !12, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !12, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !44, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !25, file: !12, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !25, file: !12, line: 368, baseType: !34, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !25, file: !12, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !12, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!50, !44, !269, !4}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !12, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!50, !44, !4}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !25, file: !12, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !25, file: !12, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !12, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!44, !44, !44, !50}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !25, file: !12, line: 382, baseType: !16, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !25, file: !12, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !12, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !25, file: !12, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !12, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !25, file: !12, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !34, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !25, file: !12, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !297, line: 18, size: 320, align: 64, elements: !298)
!297 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!298 = !{!299, !300, !301, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 19, baseType: !58, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !297, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !296, file: !297, line: 21, baseType: !16, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !297, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !296, file: !297, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !12, line: 391, baseType: !305, size: 64, align: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !307, line: 11, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!308 = !{!309, !310, !315, !320, !321}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 12, baseType: !58, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !306, file: !307, line: 13, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !307, line: 8, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!44, !44, !4}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !306, file: !307, line: 14, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !307, line: 9, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!50, !44, !44, !4}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !306, file: !307, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !306, file: !307, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !25, file: !12, line: 392, baseType: !24, size: 64, align: 64, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !25, file: !12, line: 393, baseType: !44, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !25, file: !12, line: 394, baseType: !325, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !12, line: 325, baseType: !140)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !25, file: !12, line: 395, baseType: !327, size: 64, align: 64, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !12, line: 326, baseType: !216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !25, file: !12, line: 396, baseType: !16, size: 64, align: 64, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !25, file: !12, line: 397, baseType: !330, size: 64, align: 64, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !12, line: 327, baseType: !216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !25, file: !12, line: 398, baseType: !332, size: 64, align: 64, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !12, line: 329, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!44, !24, !16}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !25, file: !12, line: 399, baseType: !337, size: 64, align: 64, offset: 2496)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !12, line: 328, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!44, !24, !44, !44}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !25, file: !12, line: 400, baseType: !342, size: 64, align: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !12, line: 307, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !4}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !25, file: !12, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !25, file: !12, line: 402, baseType: !44, size: 64, align: 64, offset: 2688)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !25, file: !12, line: 403, baseType: !44, size: 64, align: 64, offset: 2752)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !25, file: !12, line: 404, baseType: !44, size: 64, align: 64, offset: 2816)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !25, file: !12, line: 405, baseType: !44, size: 64, align: 64, offset: 2880)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !25, file: !12, line: 406, baseType: !44, size: 64, align: 64, offset: 2944)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !25, file: !12, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !25, file: !12, line: 410, baseType: !354, size: 32, align: 32, offset: 3072)
!354 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !25, file: !12, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ns_dict", scope: !8, file: !7, line: 9, baseType: !44, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !359, line: 351, baseType: !360)
!359 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!360 = !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 217, size: 384, align: 64, elements: !361)
!361 = !{!362, !363, !364, !365, !373}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !360, file: !359, line: 291, baseType: !11, size: 128, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !360, file: !359, line: 292, baseType: !16, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !360, file: !359, line: 293, baseType: !224, size: 64, align: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !359, line: 349, baseType: !366, size: 32, align: 32, offset: 256)
!366 = !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !359, line: 294, size: 32, align: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !366, file: !359, line: 303, baseType: !354, size: 2, align: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !366, file: !359, line: 331, baseType: !354, size: 3, align: 32, offset: 2)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !366, file: !359, line: 336, baseType: !354, size: 1, align: 32, offset: 5)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !366, file: !359, line: 340, baseType: !354, size: 1, align: 32, offset: 6)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !366, file: !359, line: 345, baseType: !354, size: 1, align: 32, offset: 7)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !360, file: !359, line: 350, baseType: !374, size: 64, align: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !101, line: 90, baseType: !50)
!376 = !{!377, !385, !396, !445, !456, !467, !472, !481, !491}
!377 = !DISubprogram(name: "_PyNamespace_New", scope: !7, file: !7, line: 249, type: !122, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @_PyNamespace_New, variables: !378)
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 1, scope: !377, file: !7, line: 249, type: !44)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ns", scope: !377, file: !7, line: 251, type: !44)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !382, file: !7, line: 258, type: !44)
!382 = distinct !DILexicalBlock(scope: !383, file: !7, line: 258, column: 12)
!383 = distinct !DILexicalBlock(scope: !384, file: !7, line: 257, column: 72)
!384 = distinct !DILexicalBlock(scope: !377, file: !7, line: 257, column: 9)
!385 = !DISubprogram(name: "namespace_dealloc", scope: !7, file: !7, line: 60, type: !386, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._PyNamespaceObject*)* @namespace_dealloc, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !5}
!388 = !{!389, !390, !392}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !385, file: !7, line: 60, type: !5)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !391, file: !7, line: 63, type: !44)
!391 = distinct !DILexicalBlock(scope: !385, file: !7, line: 63, column: 8)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !393, file: !7, line: 63, type: !44)
!393 = distinct !DILexicalBlock(scope: !394, file: !7, line: 63, column: 117)
!394 = distinct !DILexicalBlock(scope: !395, file: !7, line: 63, column: 84)
!395 = distinct !DILexicalBlock(scope: !391, file: !7, line: 63, column: 61)
!396 = !DISubprogram(name: "namespace_repr", scope: !7, file: !7, line: 69, type: !122, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @namespace_repr, variables: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !414, !415, !419, !421, !423, !425, !427, !430, !432, !435, !437, !440, !442}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !396, file: !7, line: 69, type: !44)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !396, file: !7, line: 71, type: !50)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loop_error", scope: !396, file: !7, line: 71, type: !50)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pairs", scope: !396, file: !7, line: 72, type: !44)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !396, file: !7, line: 72, type: !44)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keys", scope: !396, file: !7, line: 72, type: !44)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keys_iter", scope: !396, file: !7, line: 72, type: !44)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !396, file: !7, line: 73, type: !44)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "separator", scope: !396, file: !7, line: 74, type: !44)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pairsrepr", scope: !396, file: !7, line: 74, type: !44)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !396, file: !7, line: 74, type: !44)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !396, file: !7, line: 75, type: !34)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !411, file: !7, line: 105, type: !44)
!411 = distinct !DILexicalBlock(scope: !412, file: !7, line: 104, column: 151)
!412 = distinct !DILexicalBlock(scope: !413, file: !7, line: 104, column: 13)
!413 = distinct !DILexicalBlock(scope: !396, file: !7, line: 103, column: 58)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !411, file: !7, line: 105, type: !44)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !416, file: !7, line: 116, type: !44)
!416 = distinct !DILexicalBlock(scope: !417, file: !7, line: 116, column: 20)
!417 = distinct !DILexicalBlock(scope: !418, file: !7, line: 114, column: 18)
!418 = distinct !DILexicalBlock(scope: !411, file: !7, line: 111, column: 17)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !420, file: !7, line: 120, type: !44)
!420 = distinct !DILexicalBlock(scope: !413, file: !7, line: 120, column: 12)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !422, file: !7, line: 130, type: !44)
!422 = distinct !DILexicalBlock(scope: !396, file: !7, line: 130, column: 8)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !424, file: !7, line: 135, type: !44)
!424 = distinct !DILexicalBlock(scope: !396, file: !7, line: 135, column: 8)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !426, file: !7, line: 138, type: !44)
!426 = distinct !DILexicalBlock(scope: !396, file: !7, line: 138, column: 8)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !7, line: 138, type: !44)
!428 = distinct !DILexicalBlock(scope: !429, file: !7, line: 138, column: 97)
!429 = distinct !DILexicalBlock(scope: !426, file: !7, line: 138, column: 63)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !431, file: !7, line: 139, type: !44)
!431 = distinct !DILexicalBlock(scope: !396, file: !7, line: 139, column: 8)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !7, line: 139, type: !44)
!433 = distinct !DILexicalBlock(scope: !434, file: !7, line: 139, column: 93)
!434 = distinct !DILexicalBlock(scope: !431, file: !7, line: 139, column: 59)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !436, file: !7, line: 140, type: !44)
!436 = distinct !DILexicalBlock(scope: !396, file: !7, line: 140, column: 8)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !438, file: !7, line: 140, type: !44)
!438 = distinct !DILexicalBlock(scope: !439, file: !7, line: 140, column: 96)
!439 = distinct !DILexicalBlock(scope: !436, file: !7, line: 140, column: 62)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !441, file: !7, line: 141, type: !44)
!441 = distinct !DILexicalBlock(scope: !396, file: !7, line: 141, column: 8)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !7, line: 141, type: !44)
!443 = distinct !DILexicalBlock(scope: !444, file: !7, line: 141, column: 101)
!444 = distinct !DILexicalBlock(scope: !441, file: !7, line: 141, column: 67)
!445 = !DISubprogram(name: "namespace_traverse", scope: !7, file: !7, line: 149, type: !446, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*, i32 (%struct._object*, i8*)*, i8*)* @namespace_traverse, variables: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{!50, !5, !269, !4}
!448 = !{!449, !450, !451, !452}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !445, file: !7, line: 149, type: !5)
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !445, file: !7, line: 149, type: !269)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !445, file: !7, line: 149, type: !4)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !453, file: !7, line: 151, type: !50)
!453 = distinct !DILexicalBlock(scope: !454, file: !7, line: 151, column: 27)
!454 = distinct !DILexicalBlock(scope: !455, file: !7, line: 151, column: 14)
!455 = distinct !DILexicalBlock(scope: !445, file: !7, line: 151, column: 8)
!456 = !DISubprogram(name: "namespace_clear", scope: !7, file: !7, line: 157, type: !457, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*)* @namespace_clear, variables: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!50, !5}
!459 = !{!460, !461, !463}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !456, file: !7, line: 157, type: !5)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !462, file: !7, line: 159, type: !44)
!462 = distinct !DILexicalBlock(scope: !456, file: !7, line: 159, column: 8)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !464, file: !7, line: 159, type: !44)
!464 = distinct !DILexicalBlock(scope: !465, file: !7, line: 159, column: 117)
!465 = distinct !DILexicalBlock(scope: !466, file: !7, line: 159, column: 84)
!466 = distinct !DILexicalBlock(scope: !462, file: !7, line: 159, column: 61)
!467 = !DISubprogram(name: "namespace_richcompare", scope: !7, file: !7, line: 165, type: !277, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @namespace_richcompare, variables: !468)
!468 = !{!469, !470, !471}
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !467, file: !7, line: 165, type: !44)
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !467, file: !7, line: 165, type: !44)
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !467, file: !7, line: 165, type: !50)
!472 = !DISubprogram(name: "namespace_reduce", scope: !7, file: !7, line: 179, type: !473, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._PyNamespaceObject*)* @namespace_reduce, variables: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!44, !5}
!475 = !{!476, !477, !478, !479}
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !472, file: !7, line: 179, type: !5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !472, file: !7, line: 181, type: !44)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !472, file: !7, line: 181, type: !44)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !480, file: !7, line: 187, type: !44)
!480 = distinct !DILexicalBlock(scope: !472, file: !7, line: 187, column: 8)
!481 = !DISubprogram(name: "namespace_init", scope: !7, file: !7, line: 41, type: !482, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._PyNamespaceObject*, %struct._object*, %struct._object*)* @namespace_init, variables: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!50, !5, !44, !44}
!484 = !{!485, !486, !487, !488}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ns", arg: 1, scope: !481, file: !7, line: 41, type: !5)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !481, file: !7, line: 41, type: !44)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !481, file: !7, line: 41, type: !44)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argcount", scope: !489, file: !7, line: 45, type: !16)
!489 = distinct !DILexicalBlock(scope: !490, file: !7, line: 44, column: 29)
!490 = distinct !DILexicalBlock(scope: !481, file: !7, line: 44, column: 9)
!491 = !DISubprogram(name: "namespace_new", scope: !7, file: !7, line: 22, type: !492, isLocal: true, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @namespace_new, variables: !496)
!492 = !DISubroutineType(types: !493)
!493 = !{!44, !494, !44, !44}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !12, line: 422, baseType: !25)
!496 = !{!497, !498, !499, !500, !501, !504}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !491, file: !7, line: 22, type: !494)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !491, file: !7, line: 22, type: !44)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !491, file: !7, line: 22, type: !44)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !491, file: !7, line: 24, type: !44)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ns", scope: !502, file: !7, line: 29, type: !5)
!502 = distinct !DILexicalBlock(scope: !503, file: !7, line: 28, column: 29)
!503 = distinct !DILexicalBlock(scope: !491, file: !7, line: 28, column: 9)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !505, file: !7, line: 32, type: !44)
!505 = distinct !DILexicalBlock(scope: !506, file: !7, line: 32, column: 16)
!506 = distinct !DILexicalBlock(scope: !507, file: !7, line: 31, column: 40)
!507 = distinct !DILexicalBlock(scope: !502, file: !7, line: 31, column: 13)
!508 = !{!509, !510, !514, !519, !523}
!509 = !DIGlobalVariable(name: "_PyNamespace_Type", scope: !0, file: !7, line: 204, type: !495, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyNamespace_Type)
!510 = !DIGlobalVariable(name: "namespace_doc", scope: !0, file: !7, line: 199, type: !511, isLocal: true, isDefinition: true, variable: [63 x i8]* @namespace_doc)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 504, align: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 63)
!514 = !DIGlobalVariable(name: "namespace_methods", scope: !0, file: !7, line: 192, type: !515, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @namespace_methods)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 512, align: 64, elements: !517)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!517 = !{!518}
!518 = !DISubrange(count: 2)
!519 = !DIGlobalVariable(name: "namespace_reduce__doc__", scope: !0, file: !7, line: 176, type: !520, isLocal: true, isDefinition: true, variable: [38 x i8]* @namespace_reduce__doc__)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 304, align: 8, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 38)
!523 = !DIGlobalVariable(name: "namespace_members", scope: !0, file: !7, line: 13, type: !524, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMemberDef]* @namespace_members)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 640, align: 64, elements: !517)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !297, line: 24, baseType: !296)
!526 = !{i32 2, !"Dwarf Version", i32 4}
!527 = !{i32 2, !"Debug Info Version", i32 3}
!528 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!529 = !{!530, !530, i64 0}
!530 = !{!"any pointer", !531, i64 0}
!531 = !{!"omnipotent char", !532, i64 0}
!532 = !{!"Simple C/C++ TBAA"}
!533 = !DIExpression()
!534 = !DILocation(line: 60, column: 39, scope: !385)
!535 = !DILocation(line: 62, column: 25, scope: !385)
!536 = !DILocation(line: 62, column: 5, scope: !385)
!537 = !DILocation(line: 63, column: 5, scope: !385)
!538 = !DILocation(line: 63, column: 10, scope: !539)
!539 = !DILexicalBlockFile(scope: !391, file: !7, discriminator: 1)
!540 = !DILocation(line: 63, column: 20, scope: !391)
!541 = !DILocation(line: 63, column: 43, scope: !391)
!542 = !DILocation(line: 63, column: 47, scope: !391)
!543 = !{!544, !530, i64 16}
!544 = !{!"", !545, i64 0, !530, i64 16}
!545 = !{!"_object", !546, i64 0, !530, i64 8}
!546 = !{!"long", !531, i64 0}
!547 = !DILocation(line: 63, column: 61, scope: !395)
!548 = !DILocation(line: 63, column: 69, scope: !395)
!549 = !DILocation(line: 63, column: 61, scope: !391)
!550 = !DILocation(line: 63, column: 87, scope: !551)
!551 = !DILexicalBlockFile(scope: !394, file: !7, discriminator: 2)
!552 = !DILocation(line: 63, column: 91, scope: !394)
!553 = !DILocation(line: 63, column: 100, scope: !394)
!554 = !DILocation(line: 63, column: 114, scope: !394)
!555 = !DILocation(line: 63, column: 119, scope: !556)
!556 = !DILexicalBlockFile(scope: !393, file: !7, discriminator: 4)
!557 = !DILocation(line: 63, column: 129, scope: !393)
!558 = !DILocation(line: 63, column: 159, scope: !393)
!559 = !DILocation(line: 63, column: 177, scope: !560)
!560 = distinct !DILexicalBlock(scope: !393, file: !7, line: 63, column: 174)
!561 = !DILocation(line: 63, column: 194, scope: !560)
!562 = !DILocation(line: 63, column: 174, scope: !560)
!563 = !{!545, !546, i64 0}
!564 = !DILocation(line: 63, column: 204, scope: !560)
!565 = !DILocation(line: 63, column: 174, scope: !393)
!566 = !DILocation(line: 63, column: 174, scope: !567)
!567 = !DILexicalBlockFile(scope: !393, file: !7, discriminator: 5)
!568 = !DILocation(line: 63, column: 235, scope: !569)
!569 = !DILexicalBlockFile(scope: !560, file: !7, discriminator: 6)
!570 = !DILocation(line: 63, column: 253, scope: !560)
!571 = !{!545, !530, i64 8}
!572 = !DILocation(line: 63, column: 263, scope: !560)
!573 = !{!574, !530, i64 48}
!574 = !{!"_typeobject", !575, i64 0, !530, i64 24, !546, i64 32, !546, i64 40, !530, i64 48, !530, i64 56, !530, i64 64, !530, i64 72, !530, i64 80, !530, i64 88, !530, i64 96, !530, i64 104, !530, i64 112, !530, i64 120, !530, i64 128, !530, i64 136, !530, i64 144, !530, i64 152, !530, i64 160, !546, i64 168, !530, i64 176, !530, i64 184, !530, i64 192, !530, i64 200, !546, i64 208, !530, i64 216, !530, i64 224, !530, i64 232, !530, i64 240, !530, i64 248, !530, i64 256, !530, i64 264, !530, i64 272, !530, i64 280, !546, i64 288, !530, i64 296, !530, i64 304, !530, i64 312, !530, i64 320, !530, i64 328, !530, i64 336, !530, i64 344, !530, i64 352, !530, i64 360, !530, i64 368, !530, i64 376, !576, i64 384, !530, i64 392}
!575 = !{!"", !545, i64 0, !546, i64 16}
!576 = !{!"int", !531, i64 0}
!577 = !DILocation(line: 63, column: 288, scope: !560)
!578 = !DILocation(line: 63, column: 219, scope: !560)
!579 = !DILocation(line: 63, column: 307, scope: !580)
!580 = !DILexicalBlockFile(scope: !394, file: !7, discriminator: 7)
!581 = !DILocation(line: 63, column: 307, scope: !393)
!582 = !DILocation(line: 63, column: 307, scope: !583)
!583 = !DILexicalBlockFile(scope: !393, file: !7, discriminator: 8)
!584 = !DILocation(line: 63, column: 320, scope: !585)
!585 = !DILexicalBlockFile(scope: !394, file: !7, discriminator: 9)
!586 = !DILocation(line: 63, column: 322, scope: !587)
!587 = !DILexicalBlockFile(scope: !588, file: !7, discriminator: 10)
!588 = !DILexicalBlockFile(scope: !385, file: !7, discriminator: 3)
!589 = !DILocation(line: 63, column: 322, scope: !391)
!590 = !DILocation(line: 64, column: 19, scope: !385)
!591 = !DILocation(line: 64, column: 7, scope: !385)
!592 = !DILocation(line: 64, column: 25, scope: !385)
!593 = !DILocation(line: 64, column: 35, scope: !385)
!594 = !{!574, !530, i64 320}
!595 = !DILocation(line: 64, column: 55, scope: !385)
!596 = !DILocation(line: 64, column: 43, scope: !385)
!597 = !DILocation(line: 64, column: 5, scope: !385)
!598 = !DILocation(line: 65, column: 1, scope: !385)
!599 = !DILocation(line: 69, column: 26, scope: !396)
!600 = !DILocation(line: 71, column: 5, scope: !396)
!601 = !DILocation(line: 71, column: 9, scope: !396)
!602 = !DILocation(line: 71, column: 12, scope: !396)
!603 = !{!576, !576, i64 0}
!604 = !DILocation(line: 72, column: 5, scope: !396)
!605 = !DILocation(line: 72, column: 15, scope: !396)
!606 = !DILocation(line: 72, column: 36, scope: !396)
!607 = !DILocation(line: 72, column: 53, scope: !396)
!608 = !DILocation(line: 72, column: 73, scope: !396)
!609 = !DILocation(line: 73, column: 5, scope: !396)
!610 = !DILocation(line: 73, column: 15, scope: !396)
!611 = !DILocation(line: 74, column: 5, scope: !396)
!612 = !DILocation(line: 74, column: 15, scope: !396)
!613 = !DILocation(line: 74, column: 27, scope: !396)
!614 = !DILocation(line: 74, column: 39, scope: !396)
!615 = !DILocation(line: 75, column: 5, scope: !396)
!616 = !DILocation(line: 75, column: 18, scope: !396)
!617 = !DILocation(line: 77, column: 27, scope: !396)
!618 = !DILocation(line: 77, column: 33, scope: !396)
!619 = !DILocation(line: 77, column: 42, scope: !396)
!620 = !DILocation(line: 77, column: 12, scope: !396)
!621 = !DILocation(line: 77, column: 12, scope: !622)
!622 = !DILexicalBlockFile(scope: !396, file: !7, discriminator: 1)
!623 = !DILocation(line: 78, column: 50, scope: !396)
!624 = !DILocation(line: 78, column: 54, scope: !396)
!625 = !DILocation(line: 78, column: 63, scope: !396)
!626 = !{!574, !530, i64 24}
!627 = !DILocation(line: 77, column: 10, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !7, discriminator: 3)
!629 = !DILexicalBlockFile(scope: !396, file: !7, discriminator: 2)
!630 = !DILocation(line: 80, column: 22, scope: !396)
!631 = !DILocation(line: 80, column: 9, scope: !396)
!632 = !DILocation(line: 80, column: 7, scope: !396)
!633 = !DILocation(line: 81, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !396, file: !7, line: 81, column: 9)
!635 = !DILocation(line: 81, column: 11, scope: !634)
!636 = !DILocation(line: 81, column: 9, scope: !396)
!637 = !DILocation(line: 82, column: 16, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !7, line: 81, column: 17)
!639 = !DILocation(line: 82, column: 18, scope: !638)
!640 = !DILocation(line: 82, column: 56, scope: !641)
!641 = !DILexicalBlockFile(scope: !638, file: !7, discriminator: 1)
!642 = !DILocation(line: 82, column: 24, scope: !638)
!643 = !DILocation(line: 82, column: 16, scope: !644)
!644 = !DILexicalBlockFile(scope: !638, file: !7, discriminator: 2)
!645 = !DILocation(line: 82, column: 9, scope: !646)
!646 = !DILexicalBlockFile(scope: !647, file: !7, discriminator: 4)
!647 = !DILexicalBlockFile(scope: !638, file: !7, discriminator: 3)
!648 = !DILocation(line: 82, column: 9, scope: !638)
!649 = !DILocation(line: 85, column: 13, scope: !396)
!650 = !DILocation(line: 85, column: 11, scope: !396)
!651 = !DILocation(line: 86, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !396, file: !7, line: 86, column: 9)
!653 = !DILocation(line: 86, column: 15, scope: !652)
!654 = !DILocation(line: 86, column: 9, scope: !396)
!655 = !DILocation(line: 87, column: 9, scope: !652)
!656 = !DILocation(line: 89, column: 32, scope: !396)
!657 = !DILocation(line: 89, column: 10, scope: !396)
!658 = !DILocation(line: 89, column: 37, scope: !396)
!659 = !DILocation(line: 89, column: 7, scope: !396)
!660 = !DILocation(line: 91, column: 21, scope: !396)
!661 = !DILocation(line: 91, column: 26, scope: !396)
!662 = !DILocation(line: 91, column: 35, scope: !396)
!663 = !DILocation(line: 93, column: 24, scope: !396)
!664 = !DILocation(line: 93, column: 12, scope: !396)
!665 = !DILocation(line: 93, column: 10, scope: !396)
!666 = !DILocation(line: 94, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !396, file: !7, line: 94, column: 9)
!668 = !DILocation(line: 94, column: 14, scope: !667)
!669 = !DILocation(line: 94, column: 9, scope: !396)
!670 = !DILocation(line: 95, column: 9, scope: !667)
!671 = !DILocation(line: 96, column: 21, scope: !672)
!672 = distinct !DILexicalBlock(scope: !396, file: !7, line: 96, column: 9)
!673 = !DILocation(line: 96, column: 9, scope: !672)
!674 = !DILocation(line: 96, column: 27, scope: !672)
!675 = !DILocation(line: 96, column: 9, scope: !396)
!676 = !DILocation(line: 97, column: 9, scope: !672)
!677 = !DILocation(line: 99, column: 34, scope: !396)
!678 = !DILocation(line: 99, column: 17, scope: !396)
!679 = !DILocation(line: 99, column: 15, scope: !396)
!680 = !DILocation(line: 100, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !396, file: !7, line: 100, column: 9)
!682 = !DILocation(line: 100, column: 19, scope: !681)
!683 = !DILocation(line: 100, column: 9, scope: !396)
!684 = !DILocation(line: 101, column: 9, scope: !681)
!685 = !DILocation(line: 103, column: 5, scope: !396)
!686 = !DILocation(line: 103, column: 31, scope: !687)
!687 = !DILexicalBlockFile(scope: !622, file: !7, discriminator: 2)
!688 = !DILocation(line: 103, column: 19, scope: !396)
!689 = !DILocation(line: 103, column: 17, scope: !396)
!690 = !DILocation(line: 103, column: 43, scope: !396)
!691 = !DILocation(line: 104, column: 30, scope: !412)
!692 = !DILocation(line: 104, column: 37, scope: !412)
!693 = !DILocation(line: 104, column: 48, scope: !412)
!694 = !{!574, !546, i64 168}
!695 = !DILocation(line: 104, column: 57, scope: !412)
!696 = !DILocation(line: 104, column: 74, scope: !412)
!697 = !DILocation(line: 104, column: 80, scope: !412)
!698 = !DILocation(line: 104, column: 131, scope: !699)
!699 = !DILexicalBlockFile(scope: !412, file: !7, discriminator: 1)
!700 = !DILocation(line: 104, column: 113, scope: !412)
!701 = !DILocation(line: 104, column: 138, scope: !412)
!702 = !{!703, !546, i64 16}
!703 = !{!"", !545, i64 0, !546, i64 16, !546, i64 24, !704, i64 32, !530, i64 40}
!704 = !{!"", !576, i64 0, !576, i64 0, !576, i64 0, !576, i64 0, !576, i64 0, !576, i64 1}
!705 = !DILocation(line: 104, column: 146, scope: !412)
!706 = !DILocation(line: 104, column: 13, scope: !413)
!707 = !DILocation(line: 105, column: 13, scope: !411)
!708 = !DILocation(line: 105, column: 23, scope: !411)
!709 = !DILocation(line: 105, column: 31, scope: !411)
!710 = !DILocation(line: 107, column: 36, scope: !411)
!711 = !DILocation(line: 107, column: 39, scope: !411)
!712 = !DILocation(line: 107, column: 21, scope: !411)
!713 = !DILocation(line: 107, column: 19, scope: !411)
!714 = !DILocation(line: 110, column: 50, scope: !411)
!715 = !DILocation(line: 110, column: 55, scope: !411)
!716 = !DILocation(line: 110, column: 20, scope: !411)
!717 = !DILocation(line: 110, column: 18, scope: !411)
!718 = !DILocation(line: 111, column: 17, scope: !418)
!719 = !DILocation(line: 111, column: 22, scope: !418)
!720 = !DILocation(line: 111, column: 17, scope: !411)
!721 = !DILocation(line: 112, column: 28, scope: !722)
!722 = distinct !DILexicalBlock(scope: !418, file: !7, line: 111, column: 37)
!723 = !DILocation(line: 113, column: 13, scope: !722)
!724 = !DILocation(line: 115, column: 44, scope: !417)
!725 = !DILocation(line: 115, column: 51, scope: !417)
!726 = !DILocation(line: 115, column: 30, scope: !417)
!727 = !DILocation(line: 115, column: 28, scope: !417)
!728 = !DILocation(line: 116, column: 17, scope: !417)
!729 = !DILocation(line: 116, column: 22, scope: !730)
!730 = !DILexicalBlockFile(scope: !416, file: !7, discriminator: 1)
!731 = !DILocation(line: 116, column: 32, scope: !416)
!732 = !DILocation(line: 116, column: 62, scope: !416)
!733 = !DILocation(line: 116, column: 77, scope: !734)
!734 = distinct !DILexicalBlock(scope: !416, file: !7, line: 116, column: 74)
!735 = !DILocation(line: 116, column: 94, scope: !734)
!736 = !DILocation(line: 116, column: 74, scope: !734)
!737 = !DILocation(line: 116, column: 104, scope: !734)
!738 = !DILocation(line: 116, column: 74, scope: !416)
!739 = !DILocation(line: 116, column: 74, scope: !740)
!740 = !DILexicalBlockFile(scope: !416, file: !7, discriminator: 2)
!741 = !DILocation(line: 116, column: 135, scope: !742)
!742 = !DILexicalBlockFile(scope: !734, file: !7, discriminator: 3)
!743 = !DILocation(line: 116, column: 153, scope: !734)
!744 = !DILocation(line: 116, column: 163, scope: !734)
!745 = !DILocation(line: 116, column: 188, scope: !734)
!746 = !DILocation(line: 116, column: 119, scope: !734)
!747 = !DILocation(line: 116, column: 207, scope: !748)
!748 = !DILexicalBlockFile(scope: !417, file: !7, discriminator: 4)
!749 = !DILocation(line: 116, column: 207, scope: !416)
!750 = !DILocation(line: 116, column: 207, scope: !751)
!751 = !DILexicalBlockFile(scope: !416, file: !7, discriminator: 5)
!752 = !DILocation(line: 118, column: 9, scope: !412)
!753 = !DILocation(line: 118, column: 9, scope: !411)
!754 = !DILocation(line: 120, column: 9, scope: !413)
!755 = !DILocation(line: 120, column: 14, scope: !756)
!756 = !DILexicalBlockFile(scope: !420, file: !7, discriminator: 1)
!757 = !DILocation(line: 120, column: 24, scope: !420)
!758 = !DILocation(line: 120, column: 54, scope: !420)
!759 = !DILocation(line: 120, column: 68, scope: !760)
!760 = distinct !DILexicalBlock(scope: !420, file: !7, line: 120, column: 65)
!761 = !DILocation(line: 120, column: 85, scope: !760)
!762 = !DILocation(line: 120, column: 65, scope: !760)
!763 = !DILocation(line: 120, column: 95, scope: !760)
!764 = !DILocation(line: 120, column: 65, scope: !420)
!765 = !DILocation(line: 120, column: 65, scope: !766)
!766 = !DILexicalBlockFile(scope: !420, file: !7, discriminator: 2)
!767 = !DILocation(line: 120, column: 126, scope: !768)
!768 = !DILexicalBlockFile(scope: !760, file: !7, discriminator: 3)
!769 = !DILocation(line: 120, column: 144, scope: !760)
!770 = !DILocation(line: 120, column: 154, scope: !760)
!771 = !DILocation(line: 120, column: 179, scope: !760)
!772 = !DILocation(line: 120, column: 110, scope: !760)
!773 = !DILocation(line: 120, column: 198, scope: !774)
!774 = !DILexicalBlockFile(scope: !413, file: !7, discriminator: 4)
!775 = !DILocation(line: 120, column: 198, scope: !420)
!776 = !DILocation(line: 120, column: 198, scope: !777)
!777 = !DILexicalBlockFile(scope: !420, file: !7, discriminator: 5)
!778 = !DILocation(line: 121, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !413, file: !7, line: 121, column: 13)
!780 = !DILocation(line: 121, column: 13, scope: !413)
!781 = !DILocation(line: 122, column: 13, scope: !779)
!782 = !DILocation(line: 125, column: 17, scope: !396)
!783 = !DILocation(line: 125, column: 15, scope: !396)
!784 = !DILocation(line: 126, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !396, file: !7, line: 126, column: 9)
!786 = !DILocation(line: 126, column: 19, scope: !785)
!787 = !DILocation(line: 126, column: 9, scope: !396)
!788 = !DILocation(line: 127, column: 9, scope: !785)
!789 = !DILocation(line: 129, column: 32, scope: !396)
!790 = !DILocation(line: 129, column: 43, scope: !396)
!791 = !DILocation(line: 129, column: 17, scope: !396)
!792 = !DILocation(line: 129, column: 15, scope: !396)
!793 = !DILocation(line: 130, column: 5, scope: !396)
!794 = !DILocation(line: 130, column: 10, scope: !795)
!795 = !DILexicalBlockFile(scope: !422, file: !7, discriminator: 1)
!796 = !DILocation(line: 130, column: 20, scope: !422)
!797 = !DILocation(line: 130, column: 50, scope: !422)
!798 = !DILocation(line: 130, column: 70, scope: !799)
!799 = distinct !DILexicalBlock(scope: !422, file: !7, line: 130, column: 67)
!800 = !DILocation(line: 130, column: 87, scope: !799)
!801 = !DILocation(line: 130, column: 67, scope: !799)
!802 = !DILocation(line: 130, column: 97, scope: !799)
!803 = !DILocation(line: 130, column: 67, scope: !422)
!804 = !DILocation(line: 130, column: 67, scope: !805)
!805 = !DILexicalBlockFile(scope: !422, file: !7, discriminator: 2)
!806 = !DILocation(line: 130, column: 128, scope: !807)
!807 = !DILexicalBlockFile(scope: !799, file: !7, discriminator: 3)
!808 = !DILocation(line: 130, column: 146, scope: !799)
!809 = !DILocation(line: 130, column: 156, scope: !799)
!810 = !DILocation(line: 130, column: 181, scope: !799)
!811 = !DILocation(line: 130, column: 112, scope: !799)
!812 = !DILocation(line: 130, column: 200, scope: !813)
!813 = !DILexicalBlockFile(scope: !396, file: !7, discriminator: 4)
!814 = !DILocation(line: 130, column: 200, scope: !422)
!815 = !DILocation(line: 130, column: 200, scope: !816)
!816 = !DILexicalBlockFile(scope: !422, file: !7, discriminator: 5)
!817 = !DILocation(line: 131, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !396, file: !7, line: 131, column: 9)
!819 = !DILocation(line: 131, column: 19, scope: !818)
!820 = !DILocation(line: 131, column: 9, scope: !396)
!821 = !DILocation(line: 132, column: 9, scope: !818)
!822 = !DILocation(line: 134, column: 43, scope: !396)
!823 = !DILocation(line: 134, column: 49, scope: !396)
!824 = !DILocation(line: 134, column: 12, scope: !396)
!825 = !DILocation(line: 134, column: 10, scope: !396)
!826 = !DILocation(line: 135, column: 5, scope: !396)
!827 = !DILocation(line: 135, column: 10, scope: !828)
!828 = !DILexicalBlockFile(scope: !424, file: !7, discriminator: 1)
!829 = !DILocation(line: 135, column: 20, scope: !424)
!830 = !DILocation(line: 135, column: 50, scope: !424)
!831 = !DILocation(line: 135, column: 70, scope: !832)
!832 = distinct !DILexicalBlock(scope: !424, file: !7, line: 135, column: 67)
!833 = !DILocation(line: 135, column: 87, scope: !832)
!834 = !DILocation(line: 135, column: 67, scope: !832)
!835 = !DILocation(line: 135, column: 97, scope: !832)
!836 = !DILocation(line: 135, column: 67, scope: !424)
!837 = !DILocation(line: 135, column: 67, scope: !838)
!838 = !DILexicalBlockFile(scope: !424, file: !7, discriminator: 2)
!839 = !DILocation(line: 135, column: 128, scope: !840)
!840 = !DILexicalBlockFile(scope: !832, file: !7, discriminator: 3)
!841 = !DILocation(line: 135, column: 146, scope: !832)
!842 = !DILocation(line: 135, column: 156, scope: !832)
!843 = !DILocation(line: 135, column: 181, scope: !832)
!844 = !DILocation(line: 135, column: 112, scope: !832)
!845 = !DILocation(line: 135, column: 200, scope: !813)
!846 = !DILocation(line: 135, column: 200, scope: !424)
!847 = !DILocation(line: 135, column: 200, scope: !848)
!848 = !DILexicalBlockFile(scope: !424, file: !7, discriminator: 5)
!849 = !DILocation(line: 135, column: 200, scope: !850)
!850 = !DILexicalBlockFile(scope: !424, file: !7, discriminator: 6)
!851 = !DILocation(line: 138, column: 5, scope: !396)
!852 = !DILocation(line: 138, column: 10, scope: !853)
!853 = !DILexicalBlockFile(scope: !426, file: !7, discriminator: 1)
!854 = !DILocation(line: 138, column: 20, scope: !426)
!855 = !DILocation(line: 138, column: 51, scope: !426)
!856 = !DILocation(line: 138, column: 63, scope: !429)
!857 = !DILocation(line: 138, column: 79, scope: !429)
!858 = !DILocation(line: 138, column: 63, scope: !426)
!859 = !DILocation(line: 138, column: 94, scope: !860)
!860 = !DILexicalBlockFile(scope: !429, file: !7, discriminator: 2)
!861 = !DILocation(line: 138, column: 99, scope: !862)
!862 = !DILexicalBlockFile(scope: !428, file: !7, discriminator: 4)
!863 = !DILocation(line: 138, column: 109, scope: !428)
!864 = !DILocation(line: 138, column: 139, scope: !428)
!865 = !DILocation(line: 138, column: 165, scope: !866)
!866 = distinct !DILexicalBlock(scope: !428, file: !7, line: 138, column: 162)
!867 = !DILocation(line: 138, column: 182, scope: !866)
!868 = !DILocation(line: 138, column: 162, scope: !866)
!869 = !DILocation(line: 138, column: 192, scope: !866)
!870 = !DILocation(line: 138, column: 162, scope: !428)
!871 = !DILocation(line: 138, column: 162, scope: !872)
!872 = !DILexicalBlockFile(scope: !428, file: !7, discriminator: 5)
!873 = !DILocation(line: 138, column: 223, scope: !874)
!874 = !DILexicalBlockFile(scope: !866, file: !7, discriminator: 6)
!875 = !DILocation(line: 138, column: 241, scope: !866)
!876 = !DILocation(line: 138, column: 251, scope: !866)
!877 = !DILocation(line: 138, column: 276, scope: !866)
!878 = !DILocation(line: 138, column: 207, scope: !866)
!879 = !DILocation(line: 138, column: 295, scope: !880)
!880 = !DILexicalBlockFile(scope: !429, file: !7, discriminator: 7)
!881 = !DILocation(line: 138, column: 295, scope: !428)
!882 = !DILocation(line: 138, column: 295, scope: !883)
!883 = !DILexicalBlockFile(scope: !428, file: !7, discriminator: 8)
!884 = !DILocation(line: 138, column: 295, scope: !885)
!885 = !DILexicalBlockFile(scope: !428, file: !7, discriminator: 9)
!886 = !DILocation(line: 138, column: 308, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !7, discriminator: 10)
!888 = !DILexicalBlockFile(scope: !396, file: !7, discriminator: 3)
!889 = !DILocation(line: 138, column: 308, scope: !426)
!890 = !DILocation(line: 138, column: 308, scope: !891)
!891 = !DILexicalBlockFile(scope: !426, file: !7, discriminator: 11)
!892 = !DILocation(line: 139, column: 5, scope: !396)
!893 = !DILocation(line: 139, column: 10, scope: !894)
!894 = !DILexicalBlockFile(scope: !431, file: !7, discriminator: 1)
!895 = !DILocation(line: 139, column: 20, scope: !431)
!896 = !DILocation(line: 139, column: 51, scope: !431)
!897 = !DILocation(line: 139, column: 59, scope: !434)
!898 = !DILocation(line: 139, column: 75, scope: !434)
!899 = !DILocation(line: 139, column: 59, scope: !431)
!900 = !DILocation(line: 139, column: 90, scope: !901)
!901 = !DILexicalBlockFile(scope: !434, file: !7, discriminator: 2)
!902 = !DILocation(line: 139, column: 95, scope: !903)
!903 = !DILexicalBlockFile(scope: !433, file: !7, discriminator: 4)
!904 = !DILocation(line: 139, column: 105, scope: !433)
!905 = !DILocation(line: 139, column: 135, scope: !433)
!906 = !DILocation(line: 139, column: 161, scope: !907)
!907 = distinct !DILexicalBlock(scope: !433, file: !7, line: 139, column: 158)
!908 = !DILocation(line: 139, column: 178, scope: !907)
!909 = !DILocation(line: 139, column: 158, scope: !907)
!910 = !DILocation(line: 139, column: 188, scope: !907)
!911 = !DILocation(line: 139, column: 158, scope: !433)
!912 = !DILocation(line: 139, column: 158, scope: !913)
!913 = !DILexicalBlockFile(scope: !433, file: !7, discriminator: 5)
!914 = !DILocation(line: 139, column: 219, scope: !915)
!915 = !DILexicalBlockFile(scope: !907, file: !7, discriminator: 6)
!916 = !DILocation(line: 139, column: 237, scope: !907)
!917 = !DILocation(line: 139, column: 247, scope: !907)
!918 = !DILocation(line: 139, column: 272, scope: !907)
!919 = !DILocation(line: 139, column: 203, scope: !907)
!920 = !DILocation(line: 139, column: 291, scope: !921)
!921 = !DILexicalBlockFile(scope: !434, file: !7, discriminator: 7)
!922 = !DILocation(line: 139, column: 291, scope: !433)
!923 = !DILocation(line: 139, column: 291, scope: !924)
!924 = !DILexicalBlockFile(scope: !433, file: !7, discriminator: 8)
!925 = !DILocation(line: 139, column: 291, scope: !926)
!926 = !DILexicalBlockFile(scope: !433, file: !7, discriminator: 9)
!927 = !DILocation(line: 139, column: 304, scope: !887)
!928 = !DILocation(line: 139, column: 304, scope: !431)
!929 = !DILocation(line: 139, column: 304, scope: !930)
!930 = !DILexicalBlockFile(scope: !431, file: !7, discriminator: 11)
!931 = !DILocation(line: 140, column: 5, scope: !396)
!932 = !DILocation(line: 140, column: 10, scope: !933)
!933 = !DILexicalBlockFile(scope: !436, file: !7, discriminator: 1)
!934 = !DILocation(line: 140, column: 20, scope: !436)
!935 = !DILocation(line: 140, column: 51, scope: !436)
!936 = !DILocation(line: 140, column: 62, scope: !439)
!937 = !DILocation(line: 140, column: 78, scope: !439)
!938 = !DILocation(line: 140, column: 62, scope: !436)
!939 = !DILocation(line: 140, column: 93, scope: !940)
!940 = !DILexicalBlockFile(scope: !439, file: !7, discriminator: 2)
!941 = !DILocation(line: 140, column: 98, scope: !942)
!942 = !DILexicalBlockFile(scope: !438, file: !7, discriminator: 4)
!943 = !DILocation(line: 140, column: 108, scope: !438)
!944 = !DILocation(line: 140, column: 138, scope: !438)
!945 = !DILocation(line: 140, column: 164, scope: !946)
!946 = distinct !DILexicalBlock(scope: !438, file: !7, line: 140, column: 161)
!947 = !DILocation(line: 140, column: 181, scope: !946)
!948 = !DILocation(line: 140, column: 161, scope: !946)
!949 = !DILocation(line: 140, column: 191, scope: !946)
!950 = !DILocation(line: 140, column: 161, scope: !438)
!951 = !DILocation(line: 140, column: 161, scope: !952)
!952 = !DILexicalBlockFile(scope: !438, file: !7, discriminator: 5)
!953 = !DILocation(line: 140, column: 222, scope: !954)
!954 = !DILexicalBlockFile(scope: !946, file: !7, discriminator: 6)
!955 = !DILocation(line: 140, column: 240, scope: !946)
!956 = !DILocation(line: 140, column: 250, scope: !946)
!957 = !DILocation(line: 140, column: 275, scope: !946)
!958 = !DILocation(line: 140, column: 206, scope: !946)
!959 = !DILocation(line: 140, column: 294, scope: !960)
!960 = !DILexicalBlockFile(scope: !439, file: !7, discriminator: 7)
!961 = !DILocation(line: 140, column: 294, scope: !438)
!962 = !DILocation(line: 140, column: 294, scope: !963)
!963 = !DILexicalBlockFile(scope: !438, file: !7, discriminator: 8)
!964 = !DILocation(line: 140, column: 294, scope: !965)
!965 = !DILexicalBlockFile(scope: !438, file: !7, discriminator: 9)
!966 = !DILocation(line: 140, column: 307, scope: !887)
!967 = !DILocation(line: 140, column: 307, scope: !436)
!968 = !DILocation(line: 140, column: 307, scope: !969)
!969 = !DILexicalBlockFile(scope: !436, file: !7, discriminator: 11)
!970 = !DILocation(line: 141, column: 5, scope: !396)
!971 = !DILocation(line: 141, column: 10, scope: !972)
!972 = !DILexicalBlockFile(scope: !441, file: !7, discriminator: 1)
!973 = !DILocation(line: 141, column: 20, scope: !441)
!974 = !DILocation(line: 141, column: 51, scope: !441)
!975 = !DILocation(line: 141, column: 67, scope: !444)
!976 = !DILocation(line: 141, column: 83, scope: !444)
!977 = !DILocation(line: 141, column: 67, scope: !441)
!978 = !DILocation(line: 141, column: 98, scope: !979)
!979 = !DILexicalBlockFile(scope: !444, file: !7, discriminator: 2)
!980 = !DILocation(line: 141, column: 103, scope: !981)
!981 = !DILexicalBlockFile(scope: !443, file: !7, discriminator: 4)
!982 = !DILocation(line: 141, column: 113, scope: !443)
!983 = !DILocation(line: 141, column: 143, scope: !443)
!984 = !DILocation(line: 141, column: 169, scope: !985)
!985 = distinct !DILexicalBlock(scope: !443, file: !7, line: 141, column: 166)
!986 = !DILocation(line: 141, column: 186, scope: !985)
!987 = !DILocation(line: 141, column: 166, scope: !985)
!988 = !DILocation(line: 141, column: 196, scope: !985)
!989 = !DILocation(line: 141, column: 166, scope: !443)
!990 = !DILocation(line: 141, column: 166, scope: !991)
!991 = !DILexicalBlockFile(scope: !443, file: !7, discriminator: 5)
!992 = !DILocation(line: 141, column: 227, scope: !993)
!993 = !DILexicalBlockFile(scope: !985, file: !7, discriminator: 6)
!994 = !DILocation(line: 141, column: 245, scope: !985)
!995 = !DILocation(line: 141, column: 255, scope: !985)
!996 = !DILocation(line: 141, column: 280, scope: !985)
!997 = !DILocation(line: 141, column: 211, scope: !985)
!998 = !DILocation(line: 141, column: 299, scope: !999)
!999 = !DILexicalBlockFile(scope: !444, file: !7, discriminator: 7)
!1000 = !DILocation(line: 141, column: 299, scope: !443)
!1001 = !DILocation(line: 141, column: 299, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !443, file: !7, discriminator: 8)
!1003 = !DILocation(line: 141, column: 299, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !443, file: !7, discriminator: 9)
!1005 = !DILocation(line: 141, column: 312, scope: !887)
!1006 = !DILocation(line: 141, column: 312, scope: !441)
!1007 = !DILocation(line: 141, column: 312, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !441, file: !7, discriminator: 11)
!1009 = !DILocation(line: 142, column: 18, scope: !396)
!1010 = !DILocation(line: 142, column: 5, scope: !396)
!1011 = !DILocation(line: 144, column: 12, scope: !396)
!1012 = !DILocation(line: 144, column: 5, scope: !396)
!1013 = !DILocation(line: 145, column: 1, scope: !396)
!1014 = !DILocation(line: 149, column: 40, scope: !445)
!1015 = !DILocation(line: 149, column: 54, scope: !445)
!1016 = !DILocation(line: 149, column: 67, scope: !445)
!1017 = !DILocation(line: 151, column: 5, scope: !445)
!1018 = !DILocation(line: 151, column: 14, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 1)
!1020 = !DILocation(line: 151, column: 18, scope: !454)
!1021 = !DILocation(line: 151, column: 14, scope: !454)
!1022 = !DILocation(line: 151, column: 14, scope: !455)
!1023 = !DILocation(line: 151, column: 29, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !453, file: !7, discriminator: 2)
!1025 = !DILocation(line: 151, column: 33, scope: !453)
!1026 = !DILocation(line: 151, column: 40, scope: !453)
!1027 = !DILocation(line: 151, column: 59, scope: !453)
!1028 = !DILocation(line: 151, column: 63, scope: !453)
!1029 = !DILocation(line: 151, column: 73, scope: !453)
!1030 = !DILocation(line: 151, column: 83, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !453, file: !7, line: 151, column: 83)
!1032 = !DILocation(line: 151, column: 83, scope: !453)
!1033 = !DILocation(line: 151, column: 96, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1031, file: !7, discriminator: 4)
!1035 = !DILocation(line: 151, column: 89, scope: !1031)
!1036 = !DILocation(line: 151, column: 102, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 5)
!1038 = !DILocation(line: 151, column: 102, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1040, file: !7, discriminator: 7)
!1040 = !DILexicalBlockFile(scope: !454, file: !7, discriminator: 6)
!1041 = !DILocation(line: 151, column: 102, scope: !453)
!1042 = !DILocation(line: 151, column: 104, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1044, file: !7, discriminator: 8)
!1044 = !DILexicalBlockFile(scope: !455, file: !7, discriminator: 3)
!1045 = !DILocation(line: 152, column: 5, scope: !445)
!1046 = !DILocation(line: 153, column: 1, scope: !445)
!1047 = !DILocation(line: 157, column: 37, scope: !456)
!1048 = !DILocation(line: 159, column: 5, scope: !456)
!1049 = !DILocation(line: 159, column: 10, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !462, file: !7, discriminator: 1)
!1051 = !DILocation(line: 159, column: 20, scope: !462)
!1052 = !DILocation(line: 159, column: 43, scope: !462)
!1053 = !DILocation(line: 159, column: 47, scope: !462)
!1054 = !DILocation(line: 159, column: 61, scope: !466)
!1055 = !DILocation(line: 159, column: 69, scope: !466)
!1056 = !DILocation(line: 159, column: 61, scope: !462)
!1057 = !DILocation(line: 159, column: 87, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !465, file: !7, discriminator: 2)
!1059 = !DILocation(line: 159, column: 91, scope: !465)
!1060 = !DILocation(line: 159, column: 100, scope: !465)
!1061 = !DILocation(line: 159, column: 114, scope: !465)
!1062 = !DILocation(line: 159, column: 119, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !464, file: !7, discriminator: 4)
!1064 = !DILocation(line: 159, column: 129, scope: !464)
!1065 = !DILocation(line: 159, column: 159, scope: !464)
!1066 = !DILocation(line: 159, column: 177, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !464, file: !7, line: 159, column: 174)
!1068 = !DILocation(line: 159, column: 194, scope: !1067)
!1069 = !DILocation(line: 159, column: 174, scope: !1067)
!1070 = !DILocation(line: 159, column: 204, scope: !1067)
!1071 = !DILocation(line: 159, column: 174, scope: !464)
!1072 = !DILocation(line: 159, column: 174, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !464, file: !7, discriminator: 5)
!1074 = !DILocation(line: 159, column: 235, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1067, file: !7, discriminator: 6)
!1076 = !DILocation(line: 159, column: 253, scope: !1067)
!1077 = !DILocation(line: 159, column: 263, scope: !1067)
!1078 = !DILocation(line: 159, column: 288, scope: !1067)
!1079 = !DILocation(line: 159, column: 219, scope: !1067)
!1080 = !DILocation(line: 159, column: 307, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !465, file: !7, discriminator: 7)
!1082 = !DILocation(line: 159, column: 307, scope: !464)
!1083 = !DILocation(line: 159, column: 307, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !464, file: !7, discriminator: 8)
!1085 = !DILocation(line: 159, column: 320, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !465, file: !7, discriminator: 9)
!1087 = !DILocation(line: 159, column: 322, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !7, discriminator: 10)
!1089 = !DILexicalBlockFile(scope: !456, file: !7, discriminator: 3)
!1090 = !DILocation(line: 159, column: 322, scope: !462)
!1091 = !DILocation(line: 160, column: 5, scope: !456)
!1092 = !DILocation(line: 165, column: 33, scope: !467)
!1093 = !DILocation(line: 165, column: 49, scope: !467)
!1094 = !DILocation(line: 165, column: 60, scope: !467)
!1095 = !DILocation(line: 167, column: 29, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !467, file: !7, line: 167, column: 9)
!1097 = !DILocation(line: 167, column: 9, scope: !1096)
!1098 = !DILocation(line: 167, column: 67, scope: !1096)
!1099 = !DILocation(line: 168, column: 33, scope: !1096)
!1100 = !DILocation(line: 168, column: 13, scope: !1096)
!1101 = !DILocation(line: 167, column: 9, scope: !467)
!1102 = !DILocation(line: 169, column: 60, scope: !1096)
!1103 = !DILocation(line: 169, column: 38, scope: !1096)
!1104 = !DILocation(line: 169, column: 67, scope: !1096)
!1105 = !DILocation(line: 170, column: 59, scope: !1096)
!1106 = !DILocation(line: 170, column: 37, scope: !1096)
!1107 = !DILocation(line: 170, column: 67, scope: !1096)
!1108 = !DILocation(line: 170, column: 76, scope: !1096)
!1109 = !DILocation(line: 169, column: 16, scope: !1096)
!1110 = !DILocation(line: 169, column: 9, scope: !1096)
!1111 = !DILocation(line: 171, column: 61, scope: !467)
!1112 = !DILocation(line: 172, column: 5, scope: !467)
!1113 = !DILocation(line: 173, column: 1, scope: !467)
!1114 = !DILocation(line: 41, column: 36, scope: !481)
!1115 = !DILocation(line: 41, column: 50, scope: !481)
!1116 = !DILocation(line: 41, column: 66, scope: !481)
!1117 = !DILocation(line: 44, column: 9, scope: !490)
!1118 = !DILocation(line: 44, column: 14, scope: !490)
!1119 = !DILocation(line: 44, column: 9, scope: !481)
!1120 = !DILocation(line: 45, column: 9, scope: !489)
!1121 = !DILocation(line: 45, column: 20, scope: !489)
!1122 = !DILocation(line: 45, column: 45, scope: !489)
!1123 = !DILocation(line: 45, column: 31, scope: !489)
!1124 = !{!546, !546, i64 0}
!1125 = !DILocation(line: 46, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !489, file: !7, line: 46, column: 13)
!1127 = !DILocation(line: 46, column: 22, scope: !1126)
!1128 = !DILocation(line: 46, column: 13, scope: !489)
!1129 = !DILocation(line: 47, column: 13, scope: !1126)
!1130 = !DILocation(line: 48, column: 18, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !7, line: 48, column: 18)
!1132 = !DILocation(line: 48, column: 27, scope: !1131)
!1133 = !DILocation(line: 48, column: 18, scope: !1126)
!1134 = !DILocation(line: 49, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !7, line: 48, column: 32)
!1136 = !DILocation(line: 49, column: 13, scope: !1135)
!1137 = !DILocation(line: 50, column: 13, scope: !1135)
!1138 = !DILocation(line: 52, column: 5, scope: !490)
!1139 = !DILocation(line: 52, column: 5, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !490, file: !7, discriminator: 1)
!1141 = !DILocation(line: 52, column: 5, scope: !489)
!1142 = !DILocation(line: 53, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !481, file: !7, line: 53, column: 9)
!1144 = !DILocation(line: 53, column: 14, scope: !1143)
!1145 = !DILocation(line: 53, column: 9, scope: !481)
!1146 = !DILocation(line: 54, column: 9, scope: !1143)
!1147 = !DILocation(line: 55, column: 26, scope: !481)
!1148 = !DILocation(line: 55, column: 30, scope: !481)
!1149 = !DILocation(line: 55, column: 39, scope: !481)
!1150 = !DILocation(line: 55, column: 12, scope: !481)
!1151 = !DILocation(line: 55, column: 5, scope: !481)
!1152 = !DILocation(line: 56, column: 1, scope: !481)
!1153 = !DILocation(line: 22, column: 29, scope: !491)
!1154 = !DILocation(line: 22, column: 45, scope: !491)
!1155 = !DILocation(line: 22, column: 61, scope: !491)
!1156 = !DILocation(line: 24, column: 5, scope: !491)
!1157 = !DILocation(line: 24, column: 15, scope: !491)
!1158 = !DILocation(line: 27, column: 12, scope: !491)
!1159 = !DILocation(line: 27, column: 18, scope: !491)
!1160 = !{!574, !530, i64 304}
!1161 = !DILocation(line: 27, column: 27, scope: !491)
!1162 = !DILocation(line: 27, column: 10, scope: !491)
!1163 = !DILocation(line: 28, column: 9, scope: !503)
!1164 = !DILocation(line: 28, column: 14, scope: !503)
!1165 = !DILocation(line: 28, column: 9, scope: !491)
!1166 = !DILocation(line: 29, column: 9, scope: !502)
!1167 = !DILocation(line: 29, column: 29, scope: !502)
!1168 = !DILocation(line: 29, column: 56, scope: !502)
!1169 = !DILocation(line: 29, column: 34, scope: !502)
!1170 = !DILocation(line: 30, column: 23, scope: !502)
!1171 = !DILocation(line: 30, column: 9, scope: !502)
!1172 = !DILocation(line: 30, column: 13, scope: !502)
!1173 = !DILocation(line: 30, column: 21, scope: !502)
!1174 = !DILocation(line: 31, column: 13, scope: !507)
!1175 = !DILocation(line: 31, column: 17, scope: !507)
!1176 = !DILocation(line: 31, column: 25, scope: !507)
!1177 = !DILocation(line: 31, column: 13, scope: !502)
!1178 = !DILocation(line: 32, column: 13, scope: !506)
!1179 = !DILocation(line: 32, column: 18, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !505, file: !7, discriminator: 1)
!1181 = !DILocation(line: 32, column: 28, scope: !505)
!1182 = !DILocation(line: 32, column: 58, scope: !505)
!1183 = !DILocation(line: 32, column: 45, scope: !505)
!1184 = !DILocation(line: 32, column: 71, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !505, file: !7, line: 32, column: 68)
!1186 = !DILocation(line: 32, column: 88, scope: !1185)
!1187 = !DILocation(line: 32, column: 68, scope: !1185)
!1188 = !DILocation(line: 32, column: 98, scope: !1185)
!1189 = !DILocation(line: 32, column: 68, scope: !505)
!1190 = !DILocation(line: 32, column: 68, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !505, file: !7, discriminator: 2)
!1192 = !DILocation(line: 32, column: 129, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1185, file: !7, discriminator: 3)
!1194 = !DILocation(line: 32, column: 147, scope: !1185)
!1195 = !DILocation(line: 32, column: 157, scope: !1185)
!1196 = !DILocation(line: 32, column: 182, scope: !1185)
!1197 = !DILocation(line: 32, column: 113, scope: !1185)
!1198 = !DILocation(line: 32, column: 201, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !506, file: !7, discriminator: 4)
!1200 = !DILocation(line: 32, column: 201, scope: !505)
!1201 = !DILocation(line: 32, column: 201, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !505, file: !7, discriminator: 5)
!1203 = !DILocation(line: 33, column: 13, scope: !506)
!1204 = !DILocation(line: 35, column: 5, scope: !503)
!1205 = !DILocation(line: 35, column: 5, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !503, file: !7, discriminator: 1)
!1207 = !DILocation(line: 35, column: 5, scope: !502)
!1208 = !DILocation(line: 36, column: 12, scope: !491)
!1209 = !DILocation(line: 36, column: 5, scope: !491)
!1210 = !DILocation(line: 37, column: 1, scope: !491)
!1211 = !DILocation(line: 249, column: 28, scope: !377)
!1212 = !DILocation(line: 251, column: 5, scope: !377)
!1213 = !DILocation(line: 251, column: 15, scope: !377)
!1214 = !DILocation(line: 251, column: 20, scope: !377)
!1215 = !DILocation(line: 252, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !377, file: !7, line: 252, column: 9)
!1217 = !DILocation(line: 252, column: 12, scope: !1216)
!1218 = !DILocation(line: 252, column: 9, scope: !377)
!1219 = !DILocation(line: 253, column: 9, scope: !1216)
!1220 = !DILocation(line: 255, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !377, file: !7, line: 255, column: 9)
!1222 = !DILocation(line: 255, column: 14, scope: !1221)
!1223 = !DILocation(line: 255, column: 9, scope: !377)
!1224 = !DILocation(line: 256, column: 16, scope: !1221)
!1225 = !DILocation(line: 256, column: 9, scope: !1221)
!1226 = !DILocation(line: 257, column: 46, scope: !384)
!1227 = !DILocation(line: 257, column: 24, scope: !384)
!1228 = !DILocation(line: 257, column: 51, scope: !384)
!1229 = !DILocation(line: 257, column: 60, scope: !384)
!1230 = !DILocation(line: 257, column: 9, scope: !384)
!1231 = !DILocation(line: 257, column: 66, scope: !384)
!1232 = !DILocation(line: 257, column: 9, scope: !377)
!1233 = !DILocation(line: 258, column: 9, scope: !383)
!1234 = !DILocation(line: 258, column: 14, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !382, file: !7, discriminator: 1)
!1236 = !DILocation(line: 258, column: 24, scope: !382)
!1237 = !DILocation(line: 258, column: 54, scope: !382)
!1238 = !DILocation(line: 258, column: 67, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !382, file: !7, line: 258, column: 64)
!1240 = !DILocation(line: 258, column: 84, scope: !1239)
!1241 = !DILocation(line: 258, column: 64, scope: !1239)
!1242 = !DILocation(line: 258, column: 94, scope: !1239)
!1243 = !DILocation(line: 258, column: 64, scope: !382)
!1244 = !DILocation(line: 258, column: 64, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !382, file: !7, discriminator: 2)
!1246 = !DILocation(line: 258, column: 125, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1239, file: !7, discriminator: 3)
!1248 = !DILocation(line: 258, column: 143, scope: !1239)
!1249 = !DILocation(line: 258, column: 153, scope: !1239)
!1250 = !DILocation(line: 258, column: 178, scope: !1239)
!1251 = !DILocation(line: 258, column: 109, scope: !1239)
!1252 = !DILocation(line: 258, column: 197, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !383, file: !7, discriminator: 4)
!1254 = !DILocation(line: 258, column: 197, scope: !382)
!1255 = !DILocation(line: 258, column: 197, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !382, file: !7, discriminator: 5)
!1257 = !DILocation(line: 259, column: 9, scope: !383)
!1258 = !DILocation(line: 262, column: 24, scope: !377)
!1259 = !DILocation(line: 262, column: 5, scope: !377)
!1260 = !DILocation(line: 263, column: 1, scope: !377)
!1261 = !DILocation(line: 179, column: 38, scope: !472)
!1262 = !DILocation(line: 181, column: 5, scope: !472)
!1263 = !DILocation(line: 181, column: 15, scope: !472)
!1264 = !DILocation(line: 181, column: 24, scope: !472)
!1265 = !DILocation(line: 181, column: 31, scope: !472)
!1266 = !DILocation(line: 183, column: 10, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !472, file: !7, line: 183, column: 9)
!1268 = !DILocation(line: 183, column: 9, scope: !472)
!1269 = !DILocation(line: 184, column: 9, scope: !1267)
!1270 = !DILocation(line: 186, column: 56, scope: !472)
!1271 = !DILocation(line: 186, column: 44, scope: !472)
!1272 = !DILocation(line: 186, column: 62, scope: !472)
!1273 = !DILocation(line: 186, column: 30, scope: !472)
!1274 = !DILocation(line: 186, column: 72, scope: !472)
!1275 = !DILocation(line: 186, column: 78, scope: !472)
!1276 = !DILocation(line: 186, column: 82, scope: !472)
!1277 = !DILocation(line: 186, column: 14, scope: !472)
!1278 = !DILocation(line: 186, column: 12, scope: !472)
!1279 = !DILocation(line: 187, column: 5, scope: !472)
!1280 = !DILocation(line: 187, column: 10, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !480, file: !7, discriminator: 1)
!1282 = !DILocation(line: 187, column: 20, scope: !480)
!1283 = !DILocation(line: 187, column: 50, scope: !480)
!1284 = !DILocation(line: 187, column: 65, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !480, file: !7, line: 187, column: 62)
!1286 = !DILocation(line: 187, column: 82, scope: !1285)
!1287 = !DILocation(line: 187, column: 62, scope: !1285)
!1288 = !DILocation(line: 187, column: 92, scope: !1285)
!1289 = !DILocation(line: 187, column: 62, scope: !480)
!1290 = !DILocation(line: 187, column: 62, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !480, file: !7, discriminator: 2)
!1292 = !DILocation(line: 187, column: 123, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1285, file: !7, discriminator: 3)
!1294 = !DILocation(line: 187, column: 141, scope: !1285)
!1295 = !DILocation(line: 187, column: 151, scope: !1285)
!1296 = !DILocation(line: 187, column: 176, scope: !1285)
!1297 = !DILocation(line: 187, column: 107, scope: !1285)
!1298 = !DILocation(line: 187, column: 195, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !472, file: !7, discriminator: 4)
!1300 = !DILocation(line: 187, column: 195, scope: !480)
!1301 = !DILocation(line: 187, column: 195, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !480, file: !7, discriminator: 5)
!1303 = !DILocation(line: 188, column: 12, scope: !472)
!1304 = !DILocation(line: 188, column: 5, scope: !472)
!1305 = !DILocation(line: 189, column: 1, scope: !472)
