; ModuleID = 'irs-onlybc/cellobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyCellObject = type { %struct._object, %struct._object* }

@.str = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Objects/cellobject.c\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@cell_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyCellObject*, i8*)* @cell_get_contents to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyCell_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCellObject*)* @cell_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyCellObject*)* @cell_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyCellObject*, i32 (%struct._object*, i8*)*, i8*)* @cell_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyCellObject*)* @cell_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* @cell_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @cell_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"<cell at %p: empty>\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"<cell at %p: %.80s object at %p>\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"cell_contents\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Cell is empty\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCell_New(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %op = alloca %struct.PyCellObject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !368, metadata !458), !dbg !459
  %0 = bitcast %struct.PyCellObject** %op to i8*, !dbg !460
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !460
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op, metadata !369, metadata !458), !dbg !461
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*)), !dbg !462
  %1 = bitcast %struct._object* %call to %struct.PyCellObject*, !dbg !463
  store %struct.PyCellObject* %1, %struct.PyCellObject** %op, align 8, !dbg !464, !tbaa !454
  %2 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8, !dbg !465, !tbaa !454
  %cmp = icmp eq %struct.PyCellObject* %2, null, !dbg !467
  br i1 %cmp, label %if.then, label %if.end, !dbg !468

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !469
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !469

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !470, !tbaa !454
  %4 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8, !dbg !471, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !472
  store %struct._object* %3, %struct._object** %ob_ref, align 8, !dbg !473, !tbaa !474
  br label %do.body, !dbg !478

do.body:                                          ; preds = %if.end
  %5 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !479
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !479
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !370, metadata !458), !dbg !481
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !482, !tbaa !454
  store %struct._object* %6, %struct._object** %_py_xincref_tmp, align 8, !dbg !481, !tbaa !454
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !483, !tbaa !454
  %cmp1 = icmp ne %struct._object* %7, null, !dbg !485
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !486

if.then.2:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !487, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !489
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !490, !tbaa !491
  %inc = add i64 %9, 1, !dbg !490
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !490, !tbaa !491
  br label %if.end.3, !dbg !492

if.end.3:                                         ; preds = %if.then.2, %do.body
  %10 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !493
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !493
  br label %do.cond, !dbg !496

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !497

do.end:                                           ; preds = %do.cond
  br label %do.body.4, !dbg !499

do.body.4:                                        ; preds = %do.end
  %11 = bitcast %union._gc_head** %g to i8*, !dbg !500
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !500
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !372, metadata !458), !dbg !502
  %12 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8, !dbg !503, !tbaa !454
  %13 = bitcast %struct.PyCellObject* %12 to %union._gc_head*, !dbg !504
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %13, i64 -1, !dbg !505
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !502, !tbaa !454
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !506, !tbaa !454
  %gc = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !508
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !509
  %15 = load i64, i64* %gc_refs, align 8, !dbg !509, !tbaa !510
  %shr = ashr i64 %15, 1, !dbg !512
  %cmp5 = icmp ne i64 %shr, -2, !dbg !513
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !514

if.then.6:                                        ; preds = %do.body.4
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #5, !dbg !515
  unreachable, !dbg !515

if.end.7:                                         ; preds = %do.body.4
  br label %do.body.8, !dbg !517

do.body.8:                                        ; preds = %if.end.7
  %16 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !519, !tbaa !454
  %gc9 = bitcast %union._gc_head* %16 to %struct.anon*, !dbg !522
  %gc_refs10 = getelementptr inbounds %struct.anon, %struct.anon* %gc9, i32 0, i32 2, !dbg !523
  %17 = load i64, i64* %gc_refs10, align 8, !dbg !523, !tbaa !510
  %and = and i64 %17, 1, !dbg !524
  %or = or i64 %and, -6, !dbg !525
  %18 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !526, !tbaa !454
  %gc11 = bitcast %union._gc_head* %18 to %struct.anon*, !dbg !527
  %gc_refs12 = getelementptr inbounds %struct.anon, %struct.anon* %gc11, i32 0, i32 2, !dbg !528
  store i64 %or, i64* %gc_refs12, align 8, !dbg !529, !tbaa !510
  br label %do.cond.13, !dbg !530

do.cond.13:                                       ; preds = %do.body.8
  br label %do.end.14, !dbg !531

do.end.14:                                        ; preds = %do.cond.13
  %19 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !533, !tbaa !454
  %20 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !535, !tbaa !454
  %gc15 = bitcast %union._gc_head* %20 to %struct.anon*, !dbg !536
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc15, i32 0, i32 0, !dbg !537
  store %union._gc_head* %19, %union._gc_head** %gc_next, align 8, !dbg !538, !tbaa !539
  %21 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !540, !tbaa !454
  %gc16 = bitcast %union._gc_head* %21 to %struct.anon*, !dbg !541
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc16, i32 0, i32 1, !dbg !542
  %22 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !542, !tbaa !543
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !544, !tbaa !454
  %gc17 = bitcast %union._gc_head* %23 to %struct.anon*, !dbg !545
  %gc_prev18 = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 1, !dbg !546
  store %union._gc_head* %22, %union._gc_head** %gc_prev18, align 8, !dbg !547, !tbaa !543
  %24 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !548, !tbaa !454
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !549, !tbaa !454
  %gc19 = bitcast %union._gc_head* %25 to %struct.anon*, !dbg !550
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1, !dbg !551
  %26 = load %union._gc_head*, %union._gc_head** %gc_prev20, align 8, !dbg !551, !tbaa !543
  %gc21 = bitcast %union._gc_head* %26 to %struct.anon*, !dbg !552
  %gc_next22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 0, !dbg !553
  store %union._gc_head* %24, %union._gc_head** %gc_next22, align 8, !dbg !554, !tbaa !539
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !555, !tbaa !454
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8, !dbg !556, !tbaa !454
  %gc23 = bitcast %union._gc_head* %28 to %struct.anon*, !dbg !557
  %gc_prev24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 1, !dbg !558
  store %union._gc_head* %27, %union._gc_head** %gc_prev24, align 8, !dbg !559, !tbaa !543
  %29 = bitcast %union._gc_head** %g to i8*, !dbg !560
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !560
  br label %do.cond.25, !dbg !561

do.cond.25:                                       ; preds = %do.end.14
  br label %do.end.26, !dbg !562

do.end.26:                                        ; preds = %do.cond.25
  %30 = load %struct.PyCellObject*, %struct.PyCellObject** %op, align 8, !dbg !564, !tbaa !454
  %31 = bitcast %struct.PyCellObject* %30 to %struct._object*, !dbg !565
  store %struct._object* %31, %struct._object** %retval, !dbg !566
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !566

cleanup:                                          ; preds = %do.end.26, %if.then
  %32 = bitcast %struct.PyCellObject** %op to i8*, !dbg !567
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !567
  %33 = load %struct._object*, %struct._object** %retval, !dbg !567
  ret %struct._object* %33, !dbg !567
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyCell_Get(%struct._object* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !376, metadata !458), !dbg !568
  %0 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !569, !tbaa !454
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !571
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !571, !tbaa !572
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !573
  br i1 %cmp, label %if.end, label %if.then, !dbg !574

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 24), !dbg !575
  store %struct._object* null, %struct._object** %retval, !dbg !577
  br label %return, !dbg !577

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !578

do.body:                                          ; preds = %if.end
  %2 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !579
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !579
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !377, metadata !458), !dbg !581
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !582, !tbaa !454
  %4 = bitcast %struct._object* %3 to %struct.PyCellObject*, !dbg !583
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !584
  %5 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !584, !tbaa !474
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8, !dbg !581, !tbaa !454
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !585, !tbaa !454
  %cmp1 = icmp ne %struct._object* %6, null, !dbg !587
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !588

if.then.2:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !589, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !591
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !592, !tbaa !491
  %inc = add i64 %8, 1, !dbg !592
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !592, !tbaa !491
  br label %if.end.3, !dbg !593

if.end.3:                                         ; preds = %if.then.2, %do.body
  %9 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !594
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !594
  br label %do.end, !dbg !597

do.end:                                           ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !598, !tbaa !454
  %11 = bitcast %struct._object* %10 to %struct.PyCellObject*, !dbg !599
  %ob_ref4 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %11, i32 0, i32 1, !dbg !600
  %12 = load %struct._object*, %struct._object** %ob_ref4, align 8, !dbg !600, !tbaa !474
  store %struct._object* %12, %struct._object** %retval, !dbg !601
  br label %return, !dbg !601

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval, !dbg !602
  ret %struct._object* %13, !dbg !602
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @PyCell_Set(%struct._object* %op, %struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %oldobj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !381, metadata !458), !dbg !603
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !382, metadata !458), !dbg !604
  %0 = bitcast %struct._object** %oldobj to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !605
  call void @llvm.dbg.declare(metadata %struct._object** %oldobj, metadata !383, metadata !458), !dbg !606
  %1 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !607, !tbaa !454
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !609
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !609, !tbaa !572
  %cmp = icmp eq %struct._typeobject* %2, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !610
  br i1 %cmp, label %if.end, label %if.then, !dbg !611

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 36), !dbg !612
  store i32 -1, i32* %retval, !dbg !614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !614

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !615, !tbaa !454
  %4 = bitcast %struct._object* %3 to %struct.PyCellObject*, !dbg !616
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !617
  %5 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !617, !tbaa !474
  store %struct._object* %5, %struct._object** %oldobj, align 8, !dbg !618, !tbaa !454
  br label %do.body, !dbg !619

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !620
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !384, metadata !458), !dbg !622
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !623, !tbaa !454
  store %struct._object* %7, %struct._object** %_py_xincref_tmp, align 8, !dbg !622, !tbaa !454
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !624, !tbaa !454
  %cmp1 = icmp ne %struct._object* %8, null, !dbg !626
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !627

if.then.2:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !628, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !630
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !631, !tbaa !491
  %inc = add i64 %10, 1, !dbg !631
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !631, !tbaa !491
  br label %if.end.3, !dbg !632

if.end.3:                                         ; preds = %if.then.2, %do.body
  %11 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !633
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !633
  br label %do.cond, !dbg !636

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !637

do.end:                                           ; preds = %do.cond
  %12 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !639, !tbaa !454
  %13 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !640, !tbaa !454
  %14 = bitcast %struct._object* %13 to %struct.PyCellObject*, !dbg !641
  %ob_ref4 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %14, i32 0, i32 1, !dbg !642
  store %struct._object* %12, %struct._object** %ob_ref4, align 8, !dbg !643, !tbaa !474
  br label %do.body.5, !dbg !644

do.body.5:                                        ; preds = %do.end
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !645
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !645
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !386, metadata !458), !dbg !647
  %16 = load %struct._object*, %struct._object** %oldobj, align 8, !dbg !648, !tbaa !454
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8, !dbg !647, !tbaa !454
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !649, !tbaa !454
  %cmp6 = icmp ne %struct._object* %17, null, !dbg !650
  br i1 %cmp6, label %if.then.7, label %if.end.16, !dbg !651

if.then.7:                                        ; preds = %do.body.5
  br label %do.body.8, !dbg !652

do.body.8:                                        ; preds = %if.then.7
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !654
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !388, metadata !458), !dbg !656
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !657, !tbaa !454
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !656, !tbaa !454
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !658, !tbaa !454
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !660
  %21 = load i64, i64* %ob_refcnt9, align 8, !dbg !661, !tbaa !491
  %dec = add i64 %21, -1, !dbg !661
  store i64 %dec, i64* %ob_refcnt9, align 8, !dbg !661, !tbaa !491
  %cmp10 = icmp ne i64 %dec, 0, !dbg !662
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !663

if.then.11:                                       ; preds = %do.body.8
  br label %if.end.13, !dbg !664

if.else:                                          ; preds = %do.body.8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !666, !tbaa !454
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !668
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !668, !tbaa !572
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !669
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !669, !tbaa !670
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !674, !tbaa !454
  call void %24(%struct._object* %25), !dbg !675
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !676
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !676
  br label %do.cond.14, !dbg !678

do.cond.14:                                       ; preds = %if.end.13
  br label %do.end.15, !dbg !679

do.end.15:                                        ; preds = %do.cond.14
  br label %if.end.16, !dbg !681

if.end.16:                                        ; preds = %do.end.15, %do.body.5
  %27 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !683
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !683
  br label %do.cond.17, !dbg !685

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18, !dbg !686

do.end.18:                                        ; preds = %do.cond.17
  store i32 0, i32* %retval, !dbg !688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !688

cleanup:                                          ; preds = %do.end.18, %if.then
  %28 = bitcast %struct._object** %oldobj to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !689
  %29 = load i32, i32* %retval, !dbg !689
  ret i32 %29, !dbg !689
}

; Function Attrs: nounwind uwtable
define internal void @cell_dealloc(%struct.PyCellObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyCellObject*, align 8
  %g = alloca %union._gc_head*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op.addr, metadata !395, metadata !458), !dbg !690
  br label %do.body, !dbg !691

do.body:                                          ; preds = %entry
  %0 = bitcast %union._gc_head** %g to i8*, !dbg !692
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !692
  call void @llvm.dbg.declare(metadata %union._gc_head** %g, metadata !396, metadata !458), !dbg !694
  %1 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !695, !tbaa !454
  %2 = bitcast %struct.PyCellObject* %1 to %union._gc_head*, !dbg !696
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %2, i64 -1, !dbg !697
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8, !dbg !694, !tbaa !454
  br label %do.body.1, !dbg !698

do.body.1:                                        ; preds = %do.body
  %3 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !699, !tbaa !454
  %gc = bitcast %union._gc_head* %3 to %struct.anon*, !dbg !702
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2, !dbg !703
  %4 = load i64, i64* %gc_refs, align 8, !dbg !703, !tbaa !510
  %and = and i64 %4, 1, !dbg !704
  %or = or i64 %and, -4, !dbg !705
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !706, !tbaa !454
  %gc2 = bitcast %union._gc_head* %5 to %struct.anon*, !dbg !707
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2, !dbg !708
  store i64 %or, i64* %gc_refs3, align 8, !dbg !709, !tbaa !510
  br label %do.cond, !dbg !710

do.cond:                                          ; preds = %do.body.1
  br label %do.end, !dbg !711

do.end:                                           ; preds = %do.cond
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !713, !tbaa !454
  %gc4 = bitcast %union._gc_head* %6 to %struct.anon*, !dbg !715
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0, !dbg !716
  %7 = load %union._gc_head*, %union._gc_head** %gc_next, align 8, !dbg !716, !tbaa !539
  %8 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !717, !tbaa !454
  %gc5 = bitcast %union._gc_head* %8 to %struct.anon*, !dbg !718
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1, !dbg !719
  %9 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8, !dbg !719, !tbaa !543
  %gc6 = bitcast %union._gc_head* %9 to %struct.anon*, !dbg !720
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0, !dbg !721
  store %union._gc_head* %7, %union._gc_head** %gc_next7, align 8, !dbg !722, !tbaa !539
  %10 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !723, !tbaa !454
  %gc8 = bitcast %union._gc_head* %10 to %struct.anon*, !dbg !724
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1, !dbg !725
  %11 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8, !dbg !725, !tbaa !543
  %12 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !726, !tbaa !454
  %gc10 = bitcast %union._gc_head* %12 to %struct.anon*, !dbg !727
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0, !dbg !728
  %13 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8, !dbg !728, !tbaa !539
  %gc12 = bitcast %union._gc_head* %13 to %struct.anon*, !dbg !729
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1, !dbg !730
  store %union._gc_head* %11, %union._gc_head** %gc_prev13, align 8, !dbg !731, !tbaa !543
  %14 = load %union._gc_head*, %union._gc_head** %g, align 8, !dbg !732, !tbaa !454
  %gc14 = bitcast %union._gc_head* %14 to %struct.anon*, !dbg !733
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0, !dbg !734
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8, !dbg !735, !tbaa !539
  %15 = bitcast %union._gc_head** %g to i8*, !dbg !736
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !736
  br label %do.end.17, !dbg !737

do.end.17:                                        ; preds = %do.end
  br label %do.body.18, !dbg !738

do.body.18:                                       ; preds = %do.end.17
  %16 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !739
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !739
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !398, metadata !458), !dbg !741
  %17 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !742, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %17, i32 0, i32 1, !dbg !743
  %18 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !743, !tbaa !474
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !741, !tbaa !454
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !744, !tbaa !454
  %cmp = icmp ne %struct._object* %19, null, !dbg !745
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !746

if.then:                                          ; preds = %do.body.18
  br label %do.body.19, !dbg !747

do.body.19:                                       ; preds = %if.then
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !749
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !749
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !400, metadata !458), !dbg !751
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !752, !tbaa !454
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !751, !tbaa !454
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !753, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !755
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !756, !tbaa !491
  %dec = add i64 %23, -1, !dbg !756
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !756, !tbaa !491
  %cmp20 = icmp ne i64 %dec, 0, !dbg !757
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !758

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !759

if.else:                                          ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !761, !tbaa !454
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !763
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !763, !tbaa !572
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !764
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !764, !tbaa !670
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !765, !tbaa !454
  call void %26(%struct._object* %27), !dbg !766
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !767
  br label %do.cond.22, !dbg !769

do.cond.22:                                       ; preds = %if.end
  br label %do.end.23, !dbg !770

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.24, !dbg !772

if.end.24:                                        ; preds = %do.end.23, %do.body.18
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !774
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !774
  br label %do.end.26, !dbg !777

do.end.26:                                        ; preds = %if.end.24
  %30 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !778, !tbaa !454
  %31 = bitcast %struct.PyCellObject* %30 to i8*, !dbg !778
  call void @PyObject_GC_Del(i8* %31), !dbg !779
  ret void, !dbg !780
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_repr(%struct.PyCellObject* %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyCellObject*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op.addr, metadata !407, metadata !458), !dbg !781
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !782, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1, !dbg !784
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !784, !tbaa !474
  %cmp = icmp eq %struct._object* %1, null, !dbg !785
  br i1 %cmp, label %if.then, label %if.end, !dbg !786

if.then:                                          ; preds = %entry
  %2 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !787, !tbaa !454
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), %struct.PyCellObject* %2), !dbg !788
  store %struct._object* %call, %struct._object** %retval, !dbg !789
  br label %return, !dbg !789

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !790, !tbaa !454
  %4 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !791, !tbaa !454
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !792
  %5 = load %struct._object*, %struct._object** %ob_ref1, align 8, !dbg !792, !tbaa !474
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !793
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !793, !tbaa !572
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1, !dbg !794
  %7 = load i8*, i8** %tp_name, align 8, !dbg !794, !tbaa !795
  %8 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !796, !tbaa !454
  %ob_ref2 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %8, i32 0, i32 1, !dbg !797
  %9 = load %struct._object*, %struct._object** %ob_ref2, align 8, !dbg !797, !tbaa !474
  %call3 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), %struct.PyCellObject* %3, i8* %7, %struct._object* %9), !dbg !798
  store %struct._object* %call3, %struct._object** %retval, !dbg !799
  br label %return, !dbg !799

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !800
  ret %struct._object* %10, !dbg !800
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @cell_traverse(%struct.PyCellObject* %op, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.PyCellObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op.addr, metadata !412, metadata !458), !dbg !801
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !413, metadata !458), !dbg !802
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !414, metadata !458), !dbg !803
  br label %do.body, !dbg !804

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !805, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1, !dbg !807
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !807, !tbaa !474
  %tobool = icmp ne %struct._object* %1, null, !dbg !808
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !809

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !810
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !810
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !415, metadata !458), !dbg !812
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !813, !tbaa !454
  %4 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !814, !tbaa !454
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !815
  %5 = load %struct._object*, %struct._object** %ob_ref1, align 8, !dbg !815, !tbaa !474
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !816, !tbaa !454
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !813
  store i32 %call, i32* %vret, align 4, !dbg !812, !tbaa !817
  %7 = load i32, i32* %vret, align 4, !dbg !818, !tbaa !817
  %tobool2 = icmp ne i32 %7, 0, !dbg !818
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !820

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !821, !tbaa !817
  store i32 %8, i32* %retval, !dbg !823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !823

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !824
  br label %cleanup, !dbg !824

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !826
  call void @llvm.lifetime.end(i64 4, i8* %9) #2, !dbg !826
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !829

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !830

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval, !dbg !833
  br label %return, !dbg !833

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, i32* %retval, !dbg !834
  ret i32 %10, !dbg !834

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @cell_clear(%struct.PyCellObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyCellObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op.addr, metadata !423, metadata !458), !dbg !835
  br label %do.body, !dbg !836

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_tmp to i8*, !dbg !837
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !837
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !424, metadata !458), !dbg !839
  %1 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !840, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %1, i32 0, i32 1, !dbg !841
  %2 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !841, !tbaa !474
  store %struct._object* %2, %struct._object** %_py_tmp, align 8, !dbg !839, !tbaa !454
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !842, !tbaa !454
  %cmp = icmp ne %struct._object* %3, null, !dbg !843
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !844

if.then:                                          ; preds = %do.body
  %4 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !845, !tbaa !454
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %4, i32 0, i32 1, !dbg !847
  store %struct._object* null, %struct._object** %ob_ref1, align 8, !dbg !848, !tbaa !474
  br label %do.body.2, !dbg !849

do.body.2:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !850
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !850
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !426, metadata !458), !dbg !852
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !853, !tbaa !454
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !852, !tbaa !454
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !854, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !856
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !857, !tbaa !491
  %dec = add i64 %8, -1, !dbg !857
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !857, !tbaa !491
  %cmp3 = icmp ne i64 %dec, 0, !dbg !858
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !859

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !860

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !862, !tbaa !454
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !864
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !864, !tbaa !572
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !865
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !865, !tbaa !670
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !866, !tbaa !454
  call void %11(%struct._object* %12), !dbg !867
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !868
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !868
  br label %do.cond, !dbg !870

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !871

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !873

if.end.5:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !875
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !875
  br label %do.end.7, !dbg !878

do.end.7:                                         ; preds = %if.end.5
  ret i32 0, !dbg !879
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_richcompare(%struct._object* %a, %struct._object* %b, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !432, metadata !458), !dbg !880
  store %struct._object* %b, %struct._object** %b.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct._object** %b.addr, metadata !433, metadata !458), !dbg !881
  store i32 %op, i32* %op.addr, align 4, !tbaa !817
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !434, metadata !458), !dbg !882
  %0 = bitcast i32* %result to i8*, !dbg !883
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !883
  call void @llvm.dbg.declare(metadata i32* %result, metadata !435, metadata !458), !dbg !884
  %1 = bitcast %struct._object** %v to i8*, !dbg !885
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !885
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !436, metadata !458), !dbg !886
  %2 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !887, !tbaa !454
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !889
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !889, !tbaa !572
  %cmp = icmp eq %struct._typeobject* %3, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !890
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !891

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !892, !tbaa !454
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !894
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !894, !tbaa !572
  %cmp2 = icmp eq %struct._typeobject* %5, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type to %struct._typeobject*), !dbg !895
  br i1 %cmp2, label %if.end, label %if.then, !dbg !896

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %v, align 8, !dbg !897, !tbaa !454
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !899, !tbaa !454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !900
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !901, !tbaa !491
  %inc = add i64 %7, 1, !dbg !901
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !901, !tbaa !491
  %8 = load %struct._object*, %struct._object** %v, align 8, !dbg !902, !tbaa !454
  store %struct._object* %8, %struct._object** %retval, !dbg !903
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !903

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !904, !tbaa !454
  %10 = bitcast %struct._object* %9 to %struct.PyCellObject*, !dbg !905
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %10, i32 0, i32 1, !dbg !906
  %11 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !906, !tbaa !474
  store %struct._object* %11, %struct._object** %a.addr, align 8, !dbg !907, !tbaa !454
  %12 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !908, !tbaa !454
  %13 = bitcast %struct._object* %12 to %struct.PyCellObject*, !dbg !909
  %ob_ref3 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %13, i32 0, i32 1, !dbg !910
  %14 = load %struct._object*, %struct._object** %ob_ref3, align 8, !dbg !910, !tbaa !474
  store %struct._object* %14, %struct._object** %b.addr, align 8, !dbg !911, !tbaa !454
  %15 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !912, !tbaa !454
  %cmp4 = icmp ne %struct._object* %15, null, !dbg !914
  br i1 %cmp4, label %land.lhs.true, label %if.end.7, !dbg !915

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !916, !tbaa !454
  %cmp5 = icmp ne %struct._object* %16, null, !dbg !918
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !919

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !920, !tbaa !454
  %18 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !921, !tbaa !454
  %19 = load i32, i32* %op.addr, align 4, !dbg !922, !tbaa !817
  %call = call %struct._object* @PyObject_RichCompare(%struct._object* %17, %struct._object* %18, i32 %19), !dbg !923
  store %struct._object* %call, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !924

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %20 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !925, !tbaa !454
  %cmp8 = icmp eq %struct._object* %20, null, !dbg !926
  %conv = zext i1 %cmp8 to i32, !dbg !926
  %21 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !927, !tbaa !454
  %cmp9 = icmp eq %struct._object* %21, null, !dbg !928
  %conv10 = zext i1 %cmp9 to i32, !dbg !928
  %sub = sub i32 %conv, %conv10, !dbg !929
  store i32 %sub, i32* %result, align 4, !dbg !930, !tbaa !817
  %22 = load i32, i32* %op.addr, align 4, !dbg !931, !tbaa !817
  switch i32 %22, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 1, label %sw.bb.17
    i32 5, label %sw.bb.21
    i32 0, label %sw.bb.25
    i32 4, label %sw.bb.29
  ], !dbg !932

sw.bb:                                            ; preds = %if.end.7
  %23 = load i32, i32* %result, align 4, !dbg !933, !tbaa !817
  %cmp11 = icmp eq i32 %23, 0, !dbg !935
  %cond = select i1 %cmp11, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !936
  store %struct._object* %cond, %struct._object** %v, align 8, !dbg !937, !tbaa !454
  br label %sw.epilog, !dbg !938

sw.bb.13:                                         ; preds = %if.end.7
  %24 = load i32, i32* %result, align 4, !dbg !939, !tbaa !817
  %cmp14 = icmp ne i32 %24, 0, !dbg !940
  %cond16 = select i1 %cmp14, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !941
  store %struct._object* %cond16, %struct._object** %v, align 8, !dbg !942, !tbaa !454
  br label %sw.epilog, !dbg !943

sw.bb.17:                                         ; preds = %if.end.7
  %25 = load i32, i32* %result, align 4, !dbg !944, !tbaa !817
  %cmp18 = icmp sle i32 %25, 0, !dbg !945
  %cond20 = select i1 %cmp18, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !946
  store %struct._object* %cond20, %struct._object** %v, align 8, !dbg !947, !tbaa !454
  br label %sw.epilog, !dbg !948

sw.bb.21:                                         ; preds = %if.end.7
  %26 = load i32, i32* %result, align 4, !dbg !949, !tbaa !817
  %cmp22 = icmp sge i32 %26, 0, !dbg !950
  %cond24 = select i1 %cmp22, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !951
  store %struct._object* %cond24, %struct._object** %v, align 8, !dbg !952, !tbaa !454
  br label %sw.epilog, !dbg !953

sw.bb.25:                                         ; preds = %if.end.7
  %27 = load i32, i32* %result, align 4, !dbg !954, !tbaa !817
  %cmp26 = icmp slt i32 %27, 0, !dbg !955
  %cond28 = select i1 %cmp26, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !956
  store %struct._object* %cond28, %struct._object** %v, align 8, !dbg !957, !tbaa !454
  br label %sw.epilog, !dbg !958

sw.bb.29:                                         ; preds = %if.end.7
  %28 = load i32, i32* %result, align 4, !dbg !959, !tbaa !817
  %cmp30 = icmp sgt i32 %28, 0, !dbg !960
  %cond32 = select i1 %cmp30, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !961
  store %struct._object* %cond32, %struct._object** %v, align 8, !dbg !962, !tbaa !454
  br label %sw.epilog, !dbg !963

sw.default:                                       ; preds = %if.end.7
  %call33 = call i32 @PyErr_BadArgument(), !dbg !964
  store %struct._object* null, %struct._object** %retval, !dbg !965
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !965

sw.epilog:                                        ; preds = %sw.bb.29, %sw.bb.25, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb
  %29 = load %struct._object*, %struct._object** %v, align 8, !dbg !966, !tbaa !454
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !967
  %30 = load i64, i64* %ob_refcnt34, align 8, !dbg !968, !tbaa !491
  %inc35 = add i64 %30, 1, !dbg !968
  store i64 %inc35, i64* %ob_refcnt34, align 8, !dbg !968, !tbaa !491
  %31 = load %struct._object*, %struct._object** %v, align 8, !dbg !969, !tbaa !454
  store %struct._object* %31, %struct._object** %retval, !dbg !970
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !970

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then.6, %if.then
  %32 = bitcast %struct._object** %v to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !971
  %33 = bitcast i32* %result to i8*, !dbg !971
  call void @llvm.lifetime.end(i64 4, i8* %33) #2, !dbg !971
  %34 = load %struct._object*, %struct._object** %retval, !dbg !971
  ret %struct._object* %34, !dbg !971
}

declare void @PyObject_GC_Del(i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

declare i32 @PyErr_BadArgument() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @cell_get_contents(%struct.PyCellObject* %op, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %op.addr = alloca %struct.PyCellObject*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct.PyCellObject* %op, %struct.PyCellObject** %op.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata %struct.PyCellObject** %op.addr, metadata !441, metadata !458), !dbg !972
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !454
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !442, metadata !458), !dbg !973
  %0 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !974, !tbaa !454
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %0, i32 0, i32 1, !dbg !976
  %1 = load %struct._object*, %struct._object** %ob_ref, align 8, !dbg !976, !tbaa !474
  %cmp = icmp eq %struct._object* %1, null, !dbg !977
  br i1 %cmp, label %if.then, label %if.end, !dbg !978

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !979, !tbaa !454
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0)), !dbg !981
  store %struct._object* null, %struct._object** %retval, !dbg !982
  br label %return, !dbg !982

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !983, !tbaa !454
  %ob_ref1 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %3, i32 0, i32 1, !dbg !984
  %4 = load %struct._object*, %struct._object** %ob_ref1, align 8, !dbg !984, !tbaa !474
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !985
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !491
  %inc = add i64 %5, 1, !dbg !986
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !986, !tbaa !491
  %6 = load %struct.PyCellObject*, %struct.PyCellObject** %op.addr, align 8, !dbg !987, !tbaa !454
  %ob_ref2 = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %6, i32 0, i32 1, !dbg !988
  %7 = load %struct._object*, %struct._object** %ob_ref2, align 8, !dbg !988, !tbaa !474
  store %struct._object* %7, %struct._object** %retval, !dbg !989
  br label %return, !dbg !989

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval, !dbg !990
  ret %struct._object* %8, !dbg !990
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!451, !452}
!llvm.ident = !{!453}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !364, globals: !443)
!1 = !DIFile(filename: "cellobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !43, !350, !100}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCellObject", file: !6, line: 12, baseType: !7)
!6 = !DIFile(filename: "Include/cellobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 9, size: 192, align: 64, elements: !8)
!8 = !{!9, !349}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 10, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !44, !108, !113, !118, !119, !124, !176, !207, !219, !225, !226, !227, !229, !231, !262, !263, !264, !273, !274, !279, !280, !282, !284, !294, !297, !315, !316, !317, !319, !321, !322, !324, !329, !334, !339, !340, !341, !342, !343, !344, !345, !346, !348}
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
!53 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!54 = !{!55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !76, !77, !78, !79, !81, !83, !85, !89, !92, !94, !96, !97, !98, !99, !103, !104}
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
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !52, file: !53, line: 303, baseType: !95, size: 64, align: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !52, file: !53, line: 304, baseType: !95, size: 64, align: 64, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !52, file: !53, line: 305, baseType: !95, size: 64, align: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !52, file: !53, line: 306, baseType: !95, size: 64, align: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 307, baseType: !100, size: 64, align: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 62, baseType: !102)
!101 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!102 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 309, baseType: !49, size: 32, align: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 311, baseType: !105, size: 160, align: 8, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !109, size: 64, align: 64, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!43, !43, !57}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !114, size: 64, align: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!49, !43, !57, !43}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !95, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !120, size: 64, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!43, !43}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !125, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !127)
!127 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !128)
!128 = !{!129, !134, !135, !136, !137, !138, !143, !145, !146, !147, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !127, file: !11, line: 241, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!43, !43, !43}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !127, file: !11, line: 242, baseType: !130, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !127, file: !11, line: 243, baseType: !130, size: 64, align: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !127, file: !11, line: 244, baseType: !130, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !127, file: !11, line: 245, baseType: !130, size: 64, align: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !127, file: !11, line: 246, baseType: !139, size: 64, align: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!43, !43, !43, !43}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !127, file: !11, line: 247, baseType: !144, size: 64, align: 64, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !121)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !127, file: !11, line: 248, baseType: !144, size: 64, align: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !127, file: !11, line: 249, baseType: !144, size: 64, align: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !127, file: !11, line: 250, baseType: !148, size: 64, align: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!49, !43}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !127, file: !11, line: 251, baseType: !144, size: 64, align: 64, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !127, file: !11, line: 252, baseType: !130, size: 64, align: 64, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !127, file: !11, line: 253, baseType: !130, size: 64, align: 64, offset: 768)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !127, file: !11, line: 254, baseType: !130, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !127, file: !11, line: 255, baseType: !130, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !127, file: !11, line: 256, baseType: !130, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !127, file: !11, line: 257, baseType: !144, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !127, file: !11, line: 258, baseType: !95, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !127, file: !11, line: 259, baseType: !144, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !127, file: !11, line: 261, baseType: !130, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !127, file: !11, line: 262, baseType: !130, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !127, file: !11, line: 263, baseType: !130, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !127, file: !11, line: 264, baseType: !130, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !127, file: !11, line: 265, baseType: !139, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !127, file: !11, line: 266, baseType: !130, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !127, file: !11, line: 267, baseType: !130, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !127, file: !11, line: 268, baseType: !130, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !127, file: !11, line: 269, baseType: !130, size: 64, align: 64, offset: 1728)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !127, file: !11, line: 270, baseType: !130, size: 64, align: 64, offset: 1792)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !127, file: !11, line: 272, baseType: !130, size: 64, align: 64, offset: 1856)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !127, file: !11, line: 273, baseType: !130, size: 64, align: 64, offset: 1920)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !127, file: !11, line: 274, baseType: !130, size: 64, align: 64, offset: 1984)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !127, file: !11, line: 275, baseType: !130, size: 64, align: 64, offset: 2048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !127, file: !11, line: 277, baseType: !144, size: 64, align: 64, offset: 2112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !177, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !180)
!180 = !{!181, !186, !187, !192, !193, !194, !199, !200, !205, !206}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !179, file: !11, line: 281, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!15, !43}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !179, file: !11, line: 282, baseType: !130, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !179, file: !11, line: 283, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!43, !43, !15}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !179, file: !11, line: 284, baseType: !188, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !179, file: !11, line: 285, baseType: !95, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !179, file: !11, line: 286, baseType: !195, size: 64, align: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!49, !43, !15, !43}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !179, file: !11, line: 287, baseType: !95, size: 64, align: 64, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !179, file: !11, line: 288, baseType: !201, size: 64, align: 64, offset: 448)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!49, !43, !43}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !179, file: !11, line: 290, baseType: !130, size: 64, align: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !179, file: !11, line: 291, baseType: !188, size: 64, align: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !208, size: 64, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !210, file: !11, line: 295, baseType: !182, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !210, file: !11, line: 296, baseType: !130, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !210, file: !11, line: 297, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!49, !43, !43, !43}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !220, size: 64, align: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !43}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !139, size: 64, align: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !120, size: 64, align: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !228, size: 64, align: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !131)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !230, size: 64, align: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !216)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !232, size: 64, align: 64, offset: 1280)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !235)
!235 = !{!236, !257}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !234, file: !11, line: 302, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!49, !43, !241, !49}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !243)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !11, line: 179, baseType: !95, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !243, file: !11, line: 180, baseType: !43, size: 64, align: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !243, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !243, file: !11, line: 184, baseType: !49, size: 32, align: 32, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !243, file: !11, line: 185, baseType: !49, size: 32, align: 32, offset: 288)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !243, file: !11, line: 186, baseType: !57, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !243, file: !11, line: 187, baseType: !253, size: 64, align: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !243, file: !11, line: 188, baseType: !253, size: 64, align: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !243, file: !11, line: 189, baseType: !253, size: 64, align: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !243, file: !11, line: 190, baseType: !95, size: 64, align: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !234, file: !11, line: 303, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !43, !241}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !102, size: 64, align: 64, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !265, size: 64, align: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!49, !43, !269, !95}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!49, !43, !95}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !148, size: 64, align: 64, offset: 1536)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !275, size: 64, align: 64, offset: 1600)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!43, !43, !43, !49}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !281, size: 64, align: 64, offset: 1728)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !121)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !283, size: 64, align: 64, offset: 1792)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !121)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !285, size: 64, align: 64, offset: 1856)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !287, line: 40, size: 256, align: 64, elements: !288)
!287 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!288 = !{!289, !290, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !286, file: !287, line: 41, baseType: !33, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !286, file: !287, line: 42, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !287, line: 18, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !286, file: !287, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !286, file: !287, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !295, size: 64, align: 64, offset: 1920)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !11, line: 390, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !298, size: 64, align: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !300, line: 11, size: 320, align: 64, elements: !301)
!300 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!301 = !{!302, !303, !308, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !299, file: !300, line: 12, baseType: !57, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !299, file: !300, line: 13, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !300, line: 8, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!43, !43, !95}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !299, file: !300, line: 14, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !300, line: 9, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!49, !43, !43, !95}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !299, file: !300, line: 15, baseType: !57, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !299, file: !300, line: 16, baseType: !95, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !43, size: 64, align: 64, offset: 2112)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !318, size: 64, align: 64, offset: 2176)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !140)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !320, size: 64, align: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !216)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !323, size: 64, align: 64, offset: 2368)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !325, size: 64, align: 64, offset: 2432)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!43, !23, !15}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !330, size: 64, align: 64, offset: 2496)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!43, !23, !43, !43}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !335, size: 64, align: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !95}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !148, size: 64, align: 64, offset: 2624)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !43, size: 64, align: 64, offset: 2688)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !43, size: 64, align: 64, offset: 2752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !43, size: 64, align: 64, offset: 2816)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !43, size: 64, align: 64, offset: 2880)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !43, size: 64, align: 64, offset: 2944)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !347, size: 32, align: 32, offset: 3072)
!347 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_ref", scope: !7, file: !6, line: 11, baseType: !43, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGC_Head", file: !352, line: 253, baseType: !353)
!352 = !DIFile(filename: "Include/objimpl.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_union_type, name: "_gc_head", file: !352, line: 246, size: 192, align: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !353, file: !352, line: 251, baseType: !356, size: 192, align: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !352, line: 247, size: 192, align: 64, elements: !357)
!357 = !{!358, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gc_next", scope: !356, file: !352, line: 248, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "gc_prev", scope: !356, file: !352, line: 249, baseType: !359, size: 64, align: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "gc_refs", scope: !356, file: !352, line: 250, baseType: !15, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !353, file: !352, line: 252, baseType: !363, size: 64, align: 64)
!363 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!364 = !{!365, !374, !379, !391, !403, !408, !419, !430, !437}
!365 = !DISubprogram(name: "PyCell_New", scope: !366, file: !366, line: 6, type: !122, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCell_New, variables: !367)
!366 = !DIFile(filename: "Objects/cellobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !{!368, !369, !370, !372}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !365, file: !366, line: 6, type: !43)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !365, file: !366, line: 8, type: !4)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !371, file: !366, line: 14, type: !43)
!371 = distinct !DILexicalBlock(scope: !365, file: !366, line: 14, column: 8)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !373, file: !366, line: 16, type: !350)
!373 = distinct !DILexicalBlock(scope: !365, file: !366, line: 16, column: 8)
!374 = !DISubprogram(name: "PyCell_Get", scope: !366, file: !366, line: 21, type: !122, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyCell_Get, variables: !375)
!375 = !{!376, !377}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !374, file: !366, line: 21, type: !43)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !378, file: !366, line: 27, type: !43)
!378 = distinct !DILexicalBlock(scope: !374, file: !366, line: 27, column: 8)
!379 = !DISubprogram(name: "PyCell_Set", scope: !366, file: !366, line: 32, type: !203, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*)* @PyCell_Set, variables: !380)
!380 = !{!381, !382, !383, !384, !386, !388}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !379, file: !366, line: 32, type: !43)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 2, scope: !379, file: !366, line: 32, type: !43)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldobj", scope: !379, file: !366, line: 34, type: !43)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !385, file: !366, line: 40, type: !43)
!385 = distinct !DILexicalBlock(scope: !379, file: !366, line: 40, column: 8)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !387, file: !366, line: 42, type: !43)
!387 = distinct !DILexicalBlock(scope: !379, file: !366, line: 42, column: 8)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !389, file: !366, line: 42, type: !43)
!389 = distinct !DILexicalBlock(scope: !390, file: !366, line: 42, column: 98)
!390 = distinct !DILexicalBlock(scope: !387, file: !366, line: 42, column: 64)
!391 = !DISubprogram(name: "cell_dealloc", scope: !366, file: !366, line: 47, type: !392, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyCellObject*)* @cell_dealloc, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !4}
!394 = !{!395, !396, !398, !400}
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !391, file: !366, line: 47, type: !4)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !397, file: !366, line: 49, type: !350)
!397 = distinct !DILexicalBlock(scope: !391, file: !366, line: 49, column: 8)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !399, file: !366, line: 50, type: !43)
!399 = distinct !DILexicalBlock(scope: !391, file: !366, line: 50, column: 8)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !401, file: !366, line: 50, type: !43)
!401 = distinct !DILexicalBlock(scope: !402, file: !366, line: 50, column: 102)
!402 = distinct !DILexicalBlock(scope: !399, file: !366, line: 50, column: 68)
!403 = !DISubprogram(name: "cell_repr", scope: !366, file: !366, line: 107, type: !404, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCellObject*)* @cell_repr, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!43, !4}
!406 = !{!407}
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !403, file: !366, line: 107, type: !4)
!408 = !DISubprogram(name: "cell_traverse", scope: !366, file: !366, line: 118, type: !409, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCellObject*, i32 (%struct._object*, i8*)*, i8*)* @cell_traverse, variables: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!49, !4, !269, !95}
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !408, file: !366, line: 118, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !408, file: !366, line: 118, type: !269)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !408, file: !366, line: 118, type: !95)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !416, file: !366, line: 120, type: !49)
!416 = distinct !DILexicalBlock(scope: !417, file: !366, line: 120, column: 26)
!417 = distinct !DILexicalBlock(scope: !418, file: !366, line: 120, column: 14)
!418 = distinct !DILexicalBlock(scope: !408, file: !366, line: 120, column: 8)
!419 = !DISubprogram(name: "cell_clear", scope: !366, file: !366, line: 125, type: !420, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCellObject*)* @cell_clear, variables: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!49, !4}
!422 = !{!423, !424, !426}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !419, file: !366, line: 125, type: !4)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !425, file: !366, line: 127, type: !43)
!425 = distinct !DILexicalBlock(scope: !419, file: !366, line: 127, column: 8)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !427, file: !366, line: 127, type: !43)
!427 = distinct !DILexicalBlock(scope: !428, file: !366, line: 127, column: 115)
!428 = distinct !DILexicalBlock(scope: !429, file: !366, line: 127, column: 83)
!429 = distinct !DILexicalBlock(scope: !425, file: !366, line: 127, column: 60)
!430 = !DISubprogram(name: "cell_richcompare", scope: !366, file: !366, line: 57, type: !277, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @cell_richcompare, variables: !431)
!431 = !{!432, !433, !434, !435, !436}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !430, file: !366, line: 57, type: !43)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !430, file: !366, line: 57, type: !43)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !430, file: !366, line: 57, type: !49)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !430, file: !366, line: 59, type: !49)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !430, file: !366, line: 60, type: !43)
!437 = !DISubprogram(name: "cell_get_contents", scope: !366, file: !366, line: 132, type: !438, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyCellObject*, i8*)* @cell_get_contents, variables: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!43, !4, !95}
!440 = !{!441, !442}
!441 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !437, file: !366, line: 132, type: !4)
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !437, file: !366, line: 132, type: !95)
!443 = !{!444, !446}
!444 = !DIGlobalVariable(name: "PyCell_Type", scope: !0, file: !366, line: 148, type: !445, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyCell_Type)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!446 = !DIGlobalVariable(name: "cell_getsetlist", scope: !0, file: !366, line: 143, type: !447, isLocal: true, isDefinition: true, variable: [2 x %struct.PyGetSetDef]* @cell_getsetlist)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 640, align: 64, elements: !449)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !300, line: 17, baseType: !299)
!449 = !{!450}
!450 = !DISubrange(count: 2)
!451 = !{i32 2, !"Dwarf Version", i32 4}
!452 = !{i32 2, !"Debug Info Version", i32 3}
!453 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!454 = !{!455, !455, i64 0}
!455 = !{!"any pointer", !456, i64 0}
!456 = !{!"omnipotent char", !457, i64 0}
!457 = !{!"Simple C/C++ TBAA"}
!458 = !DIExpression()
!459 = !DILocation(line: 6, column: 22, scope: !365)
!460 = !DILocation(line: 8, column: 5, scope: !365)
!461 = !DILocation(line: 8, column: 19, scope: !365)
!462 = !DILocation(line: 10, column: 45, scope: !365)
!463 = !DILocation(line: 10, column: 28, scope: !365)
!464 = !DILocation(line: 10, column: 8, scope: !365)
!465 = !DILocation(line: 11, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !365, file: !366, line: 11, column: 9)
!467 = !DILocation(line: 11, column: 12, scope: !466)
!468 = !DILocation(line: 11, column: 9, scope: !365)
!469 = !DILocation(line: 12, column: 9, scope: !466)
!470 = !DILocation(line: 13, column: 18, scope: !365)
!471 = !DILocation(line: 13, column: 5, scope: !365)
!472 = !DILocation(line: 13, column: 9, scope: !365)
!473 = !DILocation(line: 13, column: 16, scope: !365)
!474 = !{!475, !455, i64 16}
!475 = !{!"", !476, i64 0, !455, i64 16}
!476 = !{!"_object", !477, i64 0, !455, i64 8}
!477 = !{!"long", !456, i64 0}
!478 = !DILocation(line: 14, column: 5, scope: !365)
!479 = !DILocation(line: 14, column: 10, scope: !480)
!480 = !DILexicalBlockFile(scope: !371, file: !366, discriminator: 1)
!481 = !DILocation(line: 14, column: 20, scope: !371)
!482 = !DILocation(line: 14, column: 51, scope: !371)
!483 = !DILocation(line: 14, column: 61, scope: !484)
!484 = distinct !DILexicalBlock(scope: !371, file: !366, line: 14, column: 61)
!485 = !DILocation(line: 14, column: 77, scope: !484)
!486 = !DILocation(line: 14, column: 61, scope: !371)
!487 = !DILocation(line: 14, column: 108, scope: !488)
!488 = !DILexicalBlockFile(scope: !484, file: !366, discriminator: 2)
!489 = !DILocation(line: 14, column: 127, scope: !484)
!490 = !DILocation(line: 14, column: 136, scope: !484)
!491 = !{!476, !477, i64 0}
!492 = !DILocation(line: 14, column: 92, scope: !484)
!493 = !DILocation(line: 14, column: 141, scope: !494)
!494 = !DILexicalBlockFile(scope: !495, file: !366, discriminator: 4)
!495 = !DILexicalBlockFile(scope: !365, file: !366, discriminator: 3)
!496 = !DILocation(line: 14, column: 141, scope: !371)
!497 = !DILocation(line: 14, column: 141, scope: !498)
!498 = !DILexicalBlockFile(scope: !371, file: !366, discriminator: 5)
!499 = !DILocation(line: 16, column: 5, scope: !365)
!500 = !DILocation(line: 16, column: 10, scope: !501)
!501 = !DILexicalBlockFile(scope: !373, file: !366, discriminator: 1)
!502 = !DILocation(line: 16, column: 21, scope: !373)
!503 = !DILocation(line: 16, column: 40, scope: !373)
!504 = !DILocation(line: 16, column: 26, scope: !373)
!505 = !DILocation(line: 16, column: 43, scope: !373)
!506 = !DILocation(line: 16, column: 54, scope: !507)
!507 = distinct !DILexicalBlock(scope: !373, file: !366, line: 16, column: 52)
!508 = !DILocation(line: 16, column: 58, scope: !507)
!509 = !DILocation(line: 16, column: 61, scope: !507)
!510 = !{!511, !477, i64 16}
!511 = !{!"", !455, i64 0, !455, i64 8, !477, i64 16}
!512 = !DILocation(line: 16, column: 69, scope: !507)
!513 = !DILocation(line: 16, column: 77, scope: !507)
!514 = !DILocation(line: 16, column: 52, scope: !373)
!515 = !DILocation(line: 16, column: 86, scope: !516)
!516 = !DILexicalBlockFile(scope: !507, file: !366, discriminator: 2)
!517 = !DILocation(line: 16, column: 130, scope: !518)
!518 = !DILexicalBlockFile(scope: !373, file: !366, discriminator: 3)
!519 = !DILocation(line: 16, column: 155, scope: !520)
!520 = !DILexicalBlockFile(scope: !521, file: !366, discriminator: 4)
!521 = distinct !DILexicalBlock(scope: !373, file: !366, line: 16, column: 133)
!522 = !DILocation(line: 16, column: 159, scope: !521)
!523 = !DILocation(line: 16, column: 162, scope: !521)
!524 = !DILocation(line: 16, column: 170, scope: !521)
!525 = !DILocation(line: 16, column: 197, scope: !521)
!526 = !DILocation(line: 16, column: 136, scope: !521)
!527 = !DILocation(line: 16, column: 140, scope: !521)
!528 = !DILocation(line: 16, column: 143, scope: !521)
!529 = !DILocation(line: 16, column: 151, scope: !521)
!530 = !DILocation(line: 16, column: 226, scope: !521)
!531 = !DILocation(line: 16, column: 226, scope: !532)
!532 = !DILexicalBlockFile(scope: !521, file: !366, discriminator: 5)
!533 = !DILocation(line: 16, column: 255, scope: !534)
!534 = !DILexicalBlockFile(scope: !373, file: !366, discriminator: 6)
!535 = !DILocation(line: 16, column: 239, scope: !373)
!536 = !DILocation(line: 16, column: 242, scope: !373)
!537 = !DILocation(line: 16, column: 245, scope: !373)
!538 = !DILocation(line: 16, column: 253, scope: !373)
!539 = !{!511, !455, i64 0}
!540 = !DILocation(line: 16, column: 290, scope: !373)
!541 = !DILocation(line: 16, column: 309, scope: !373)
!542 = !DILocation(line: 16, column: 312, scope: !373)
!543 = !{!511, !455, i64 8}
!544 = !DILocation(line: 16, column: 274, scope: !373)
!545 = !DILocation(line: 16, column: 277, scope: !373)
!546 = !DILocation(line: 16, column: 280, scope: !373)
!547 = !DILocation(line: 16, column: 288, scope: !373)
!548 = !DILocation(line: 16, column: 349, scope: !373)
!549 = !DILocation(line: 16, column: 321, scope: !373)
!550 = !DILocation(line: 16, column: 324, scope: !373)
!551 = !DILocation(line: 16, column: 327, scope: !373)
!552 = !DILocation(line: 16, column: 336, scope: !373)
!553 = !DILocation(line: 16, column: 339, scope: !373)
!554 = !DILocation(line: 16, column: 347, scope: !373)
!555 = !DILocation(line: 16, column: 384, scope: !373)
!556 = !DILocation(line: 16, column: 352, scope: !373)
!557 = !DILocation(line: 16, column: 371, scope: !373)
!558 = !DILocation(line: 16, column: 374, scope: !373)
!559 = !DILocation(line: 16, column: 382, scope: !373)
!560 = !DILocation(line: 16, column: 387, scope: !365)
!561 = !DILocation(line: 16, column: 387, scope: !373)
!562 = !DILocation(line: 16, column: 387, scope: !563)
!563 = !DILexicalBlockFile(scope: !373, file: !366, discriminator: 7)
!564 = !DILocation(line: 17, column: 24, scope: !365)
!565 = !DILocation(line: 17, column: 12, scope: !365)
!566 = !DILocation(line: 17, column: 5, scope: !365)
!567 = !DILocation(line: 18, column: 1, scope: !365)
!568 = !DILocation(line: 21, column: 22, scope: !374)
!569 = !DILocation(line: 23, column: 25, scope: !570)
!570 = distinct !DILexicalBlock(scope: !374, file: !366, line: 23, column: 9)
!571 = !DILocation(line: 23, column: 31, scope: !570)
!572 = !{!476, !455, i64 8}
!573 = !DILocation(line: 23, column: 40, scope: !570)
!574 = !DILocation(line: 23, column: 9, scope: !374)
!575 = !DILocation(line: 24, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !366, line: 23, column: 58)
!577 = !DILocation(line: 25, column: 9, scope: !576)
!578 = !DILocation(line: 27, column: 5, scope: !374)
!579 = !DILocation(line: 27, column: 10, scope: !580)
!580 = !DILexicalBlockFile(scope: !378, file: !366, discriminator: 1)
!581 = !DILocation(line: 27, column: 20, scope: !378)
!582 = !DILocation(line: 27, column: 67, scope: !378)
!583 = !DILocation(line: 27, column: 52, scope: !378)
!584 = !DILocation(line: 27, column: 72, scope: !378)
!585 = !DILocation(line: 27, column: 85, scope: !586)
!586 = distinct !DILexicalBlock(scope: !378, file: !366, line: 27, column: 85)
!587 = !DILocation(line: 27, column: 101, scope: !586)
!588 = !DILocation(line: 27, column: 85, scope: !378)
!589 = !DILocation(line: 27, column: 132, scope: !590)
!590 = !DILexicalBlockFile(scope: !586, file: !366, discriminator: 2)
!591 = !DILocation(line: 27, column: 151, scope: !586)
!592 = !DILocation(line: 27, column: 160, scope: !586)
!593 = !DILocation(line: 27, column: 116, scope: !586)
!594 = !DILocation(line: 27, column: 165, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !366, discriminator: 4)
!596 = !DILexicalBlockFile(scope: !374, file: !366, discriminator: 3)
!597 = !DILocation(line: 27, column: 165, scope: !378)
!598 = !DILocation(line: 28, column: 31, scope: !374)
!599 = !DILocation(line: 28, column: 14, scope: !374)
!600 = !DILocation(line: 28, column: 37, scope: !374)
!601 = !DILocation(line: 28, column: 5, scope: !374)
!602 = !DILocation(line: 29, column: 1, scope: !374)
!603 = !DILocation(line: 32, column: 22, scope: !379)
!604 = !DILocation(line: 32, column: 36, scope: !379)
!605 = !DILocation(line: 34, column: 5, scope: !379)
!606 = !DILocation(line: 34, column: 15, scope: !379)
!607 = !DILocation(line: 35, column: 25, scope: !608)
!608 = distinct !DILexicalBlock(scope: !379, file: !366, line: 35, column: 9)
!609 = !DILocation(line: 35, column: 31, scope: !608)
!610 = !DILocation(line: 35, column: 40, scope: !608)
!611 = !DILocation(line: 35, column: 9, scope: !379)
!612 = !DILocation(line: 36, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !366, line: 35, column: 58)
!614 = !DILocation(line: 37, column: 9, scope: !613)
!615 = !DILocation(line: 39, column: 33, scope: !379)
!616 = !DILocation(line: 39, column: 16, scope: !379)
!617 = !DILocation(line: 39, column: 39, scope: !379)
!618 = !DILocation(line: 39, column: 12, scope: !379)
!619 = !DILocation(line: 40, column: 5, scope: !379)
!620 = !DILocation(line: 40, column: 10, scope: !621)
!621 = !DILexicalBlockFile(scope: !385, file: !366, discriminator: 1)
!622 = !DILocation(line: 40, column: 20, scope: !385)
!623 = !DILocation(line: 40, column: 51, scope: !385)
!624 = !DILocation(line: 40, column: 61, scope: !625)
!625 = distinct !DILexicalBlock(scope: !385, file: !366, line: 40, column: 61)
!626 = !DILocation(line: 40, column: 77, scope: !625)
!627 = !DILocation(line: 40, column: 61, scope: !385)
!628 = !DILocation(line: 40, column: 108, scope: !629)
!629 = !DILexicalBlockFile(scope: !625, file: !366, discriminator: 2)
!630 = !DILocation(line: 40, column: 127, scope: !625)
!631 = !DILocation(line: 40, column: 136, scope: !625)
!632 = !DILocation(line: 40, column: 92, scope: !625)
!633 = !DILocation(line: 40, column: 141, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !366, discriminator: 4)
!635 = !DILexicalBlockFile(scope: !379, file: !366, discriminator: 3)
!636 = !DILocation(line: 40, column: 141, scope: !385)
!637 = !DILocation(line: 40, column: 141, scope: !638)
!638 = !DILexicalBlockFile(scope: !385, file: !366, discriminator: 5)
!639 = !DILocation(line: 41, column: 39, scope: !379)
!640 = !DILocation(line: 41, column: 24, scope: !379)
!641 = !DILocation(line: 41, column: 7, scope: !379)
!642 = !DILocation(line: 41, column: 30, scope: !379)
!643 = !DILocation(line: 41, column: 37, scope: !379)
!644 = !DILocation(line: 42, column: 5, scope: !379)
!645 = !DILocation(line: 42, column: 10, scope: !646)
!646 = !DILexicalBlockFile(scope: !387, file: !366, discriminator: 1)
!647 = !DILocation(line: 42, column: 20, scope: !387)
!648 = !DILocation(line: 42, column: 51, scope: !387)
!649 = !DILocation(line: 42, column: 64, scope: !390)
!650 = !DILocation(line: 42, column: 80, scope: !390)
!651 = !DILocation(line: 42, column: 64, scope: !387)
!652 = !DILocation(line: 42, column: 95, scope: !653)
!653 = !DILexicalBlockFile(scope: !390, file: !366, discriminator: 2)
!654 = !DILocation(line: 42, column: 100, scope: !655)
!655 = !DILexicalBlockFile(scope: !389, file: !366, discriminator: 4)
!656 = !DILocation(line: 42, column: 110, scope: !389)
!657 = !DILocation(line: 42, column: 140, scope: !389)
!658 = !DILocation(line: 42, column: 166, scope: !659)
!659 = distinct !DILexicalBlock(scope: !389, file: !366, line: 42, column: 163)
!660 = !DILocation(line: 42, column: 183, scope: !659)
!661 = !DILocation(line: 42, column: 163, scope: !659)
!662 = !DILocation(line: 42, column: 193, scope: !659)
!663 = !DILocation(line: 42, column: 163, scope: !389)
!664 = !DILocation(line: 42, column: 163, scope: !665)
!665 = !DILexicalBlockFile(scope: !389, file: !366, discriminator: 5)
!666 = !DILocation(line: 42, column: 224, scope: !667)
!667 = !DILexicalBlockFile(scope: !659, file: !366, discriminator: 6)
!668 = !DILocation(line: 42, column: 242, scope: !659)
!669 = !DILocation(line: 42, column: 252, scope: !659)
!670 = !{!671, !455, i64 48}
!671 = !{!"_typeobject", !672, i64 0, !455, i64 24, !477, i64 32, !477, i64 40, !455, i64 48, !455, i64 56, !455, i64 64, !455, i64 72, !455, i64 80, !455, i64 88, !455, i64 96, !455, i64 104, !455, i64 112, !455, i64 120, !455, i64 128, !455, i64 136, !455, i64 144, !455, i64 152, !455, i64 160, !477, i64 168, !455, i64 176, !455, i64 184, !455, i64 192, !455, i64 200, !477, i64 208, !455, i64 216, !455, i64 224, !455, i64 232, !455, i64 240, !455, i64 248, !455, i64 256, !455, i64 264, !455, i64 272, !455, i64 280, !477, i64 288, !455, i64 296, !455, i64 304, !455, i64 312, !455, i64 320, !455, i64 328, !455, i64 336, !455, i64 344, !455, i64 352, !455, i64 360, !455, i64 368, !455, i64 376, !673, i64 384, !455, i64 392}
!672 = !{!"", !476, i64 0, !477, i64 16}
!673 = !{!"int", !456, i64 0}
!674 = !DILocation(line: 42, column: 277, scope: !659)
!675 = !DILocation(line: 42, column: 208, scope: !659)
!676 = !DILocation(line: 42, column: 296, scope: !677)
!677 = !DILexicalBlockFile(scope: !390, file: !366, discriminator: 7)
!678 = !DILocation(line: 42, column: 296, scope: !389)
!679 = !DILocation(line: 42, column: 296, scope: !680)
!680 = !DILexicalBlockFile(scope: !389, file: !366, discriminator: 8)
!681 = !DILocation(line: 42, column: 296, scope: !682)
!682 = !DILexicalBlockFile(scope: !389, file: !366, discriminator: 9)
!683 = !DILocation(line: 42, column: 309, scope: !684)
!684 = !DILexicalBlockFile(scope: !635, file: !366, discriminator: 10)
!685 = !DILocation(line: 42, column: 309, scope: !387)
!686 = !DILocation(line: 42, column: 309, scope: !687)
!687 = !DILexicalBlockFile(scope: !387, file: !366, discriminator: 11)
!688 = !DILocation(line: 43, column: 5, scope: !379)
!689 = !DILocation(line: 44, column: 1, scope: !379)
!690 = !DILocation(line: 47, column: 28, scope: !391)
!691 = !DILocation(line: 49, column: 5, scope: !391)
!692 = !DILocation(line: 49, column: 10, scope: !693)
!693 = !DILexicalBlockFile(scope: !397, file: !366, discriminator: 1)
!694 = !DILocation(line: 49, column: 21, scope: !397)
!695 = !DILocation(line: 49, column: 40, scope: !397)
!696 = !DILocation(line: 49, column: 26, scope: !397)
!697 = !DILocation(line: 49, column: 43, scope: !397)
!698 = !DILocation(line: 49, column: 62, scope: !397)
!699 = !DILocation(line: 49, column: 87, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !366, discriminator: 2)
!701 = distinct !DILexicalBlock(scope: !397, file: !366, line: 49, column: 65)
!702 = !DILocation(line: 49, column: 91, scope: !701)
!703 = !DILocation(line: 49, column: 94, scope: !701)
!704 = !DILocation(line: 49, column: 102, scope: !701)
!705 = !DILocation(line: 49, column: 129, scope: !701)
!706 = !DILocation(line: 49, column: 68, scope: !701)
!707 = !DILocation(line: 49, column: 72, scope: !701)
!708 = !DILocation(line: 49, column: 75, scope: !701)
!709 = !DILocation(line: 49, column: 83, scope: !701)
!710 = !DILocation(line: 49, column: 158, scope: !701)
!711 = !DILocation(line: 49, column: 158, scope: !712)
!712 = !DILexicalBlockFile(scope: !701, file: !366, discriminator: 3)
!713 = !DILocation(line: 49, column: 199, scope: !714)
!714 = !DILexicalBlockFile(scope: !397, file: !366, discriminator: 4)
!715 = !DILocation(line: 49, column: 202, scope: !397)
!716 = !DILocation(line: 49, column: 205, scope: !397)
!717 = !DILocation(line: 49, column: 171, scope: !397)
!718 = !DILocation(line: 49, column: 174, scope: !397)
!719 = !DILocation(line: 49, column: 177, scope: !397)
!720 = !DILocation(line: 49, column: 186, scope: !397)
!721 = !DILocation(line: 49, column: 189, scope: !397)
!722 = !DILocation(line: 49, column: 197, scope: !397)
!723 = !DILocation(line: 49, column: 242, scope: !397)
!724 = !DILocation(line: 49, column: 245, scope: !397)
!725 = !DILocation(line: 49, column: 248, scope: !397)
!726 = !DILocation(line: 49, column: 214, scope: !397)
!727 = !DILocation(line: 49, column: 217, scope: !397)
!728 = !DILocation(line: 49, column: 220, scope: !397)
!729 = !DILocation(line: 49, column: 229, scope: !397)
!730 = !DILocation(line: 49, column: 232, scope: !397)
!731 = !DILocation(line: 49, column: 240, scope: !397)
!732 = !DILocation(line: 49, column: 257, scope: !397)
!733 = !DILocation(line: 49, column: 260, scope: !397)
!734 = !DILocation(line: 49, column: 263, scope: !397)
!735 = !DILocation(line: 49, column: 271, scope: !397)
!736 = !DILocation(line: 49, column: 285, scope: !391)
!737 = !DILocation(line: 49, column: 285, scope: !397)
!738 = !DILocation(line: 50, column: 5, scope: !391)
!739 = !DILocation(line: 50, column: 10, scope: !740)
!740 = !DILexicalBlockFile(scope: !399, file: !366, discriminator: 1)
!741 = !DILocation(line: 50, column: 20, scope: !399)
!742 = !DILocation(line: 50, column: 51, scope: !399)
!743 = !DILocation(line: 50, column: 55, scope: !399)
!744 = !DILocation(line: 50, column: 68, scope: !402)
!745 = !DILocation(line: 50, column: 84, scope: !402)
!746 = !DILocation(line: 50, column: 68, scope: !399)
!747 = !DILocation(line: 50, column: 99, scope: !748)
!748 = !DILexicalBlockFile(scope: !402, file: !366, discriminator: 2)
!749 = !DILocation(line: 50, column: 104, scope: !750)
!750 = !DILexicalBlockFile(scope: !401, file: !366, discriminator: 4)
!751 = !DILocation(line: 50, column: 114, scope: !401)
!752 = !DILocation(line: 50, column: 144, scope: !401)
!753 = !DILocation(line: 50, column: 170, scope: !754)
!754 = distinct !DILexicalBlock(scope: !401, file: !366, line: 50, column: 167)
!755 = !DILocation(line: 50, column: 187, scope: !754)
!756 = !DILocation(line: 50, column: 167, scope: !754)
!757 = !DILocation(line: 50, column: 197, scope: !754)
!758 = !DILocation(line: 50, column: 167, scope: !401)
!759 = !DILocation(line: 50, column: 167, scope: !760)
!760 = !DILexicalBlockFile(scope: !401, file: !366, discriminator: 5)
!761 = !DILocation(line: 50, column: 228, scope: !762)
!762 = !DILexicalBlockFile(scope: !754, file: !366, discriminator: 6)
!763 = !DILocation(line: 50, column: 246, scope: !754)
!764 = !DILocation(line: 50, column: 256, scope: !754)
!765 = !DILocation(line: 50, column: 281, scope: !754)
!766 = !DILocation(line: 50, column: 212, scope: !754)
!767 = !DILocation(line: 50, column: 300, scope: !768)
!768 = !DILexicalBlockFile(scope: !402, file: !366, discriminator: 7)
!769 = !DILocation(line: 50, column: 300, scope: !401)
!770 = !DILocation(line: 50, column: 300, scope: !771)
!771 = !DILexicalBlockFile(scope: !401, file: !366, discriminator: 8)
!772 = !DILocation(line: 50, column: 300, scope: !773)
!773 = !DILexicalBlockFile(scope: !401, file: !366, discriminator: 9)
!774 = !DILocation(line: 50, column: 313, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !366, discriminator: 10)
!776 = !DILexicalBlockFile(scope: !391, file: !366, discriminator: 3)
!777 = !DILocation(line: 50, column: 313, scope: !399)
!778 = !DILocation(line: 51, column: 21, scope: !391)
!779 = !DILocation(line: 51, column: 5, scope: !391)
!780 = !DILocation(line: 52, column: 1, scope: !391)
!781 = !DILocation(line: 107, column: 25, scope: !403)
!782 = !DILocation(line: 109, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !403, file: !366, line: 109, column: 9)
!784 = !DILocation(line: 109, column: 13, scope: !783)
!785 = !DILocation(line: 109, column: 20, scope: !783)
!786 = !DILocation(line: 109, column: 9, scope: !403)
!787 = !DILocation(line: 110, column: 60, scope: !783)
!788 = !DILocation(line: 110, column: 16, scope: !783)
!789 = !DILocation(line: 110, column: 9, scope: !783)
!790 = !DILocation(line: 113, column: 32, scope: !403)
!791 = !DILocation(line: 113, column: 36, scope: !403)
!792 = !DILocation(line: 113, column: 40, scope: !403)
!793 = !DILocation(line: 113, column: 48, scope: !403)
!794 = !DILocation(line: 113, column: 57, scope: !403)
!795 = !{!671, !455, i64 24}
!796 = !DILocation(line: 114, column: 32, scope: !403)
!797 = !DILocation(line: 114, column: 36, scope: !403)
!798 = !DILocation(line: 112, column: 12, scope: !403)
!799 = !DILocation(line: 112, column: 5, scope: !403)
!800 = !DILocation(line: 115, column: 1, scope: !403)
!801 = !DILocation(line: 118, column: 29, scope: !408)
!802 = !DILocation(line: 118, column: 43, scope: !408)
!803 = !DILocation(line: 118, column: 56, scope: !408)
!804 = !DILocation(line: 120, column: 5, scope: !408)
!805 = !DILocation(line: 120, column: 14, scope: !806)
!806 = !DILexicalBlockFile(scope: !417, file: !366, discriminator: 1)
!807 = !DILocation(line: 120, column: 18, scope: !417)
!808 = !DILocation(line: 120, column: 14, scope: !417)
!809 = !DILocation(line: 120, column: 14, scope: !418)
!810 = !DILocation(line: 120, column: 28, scope: !811)
!811 = !DILexicalBlockFile(scope: !416, file: !366, discriminator: 2)
!812 = !DILocation(line: 120, column: 32, scope: !416)
!813 = !DILocation(line: 120, column: 39, scope: !416)
!814 = !DILocation(line: 120, column: 58, scope: !416)
!815 = !DILocation(line: 120, column: 62, scope: !416)
!816 = !DILocation(line: 120, column: 71, scope: !416)
!817 = !{!673, !673, i64 0}
!818 = !DILocation(line: 120, column: 81, scope: !819)
!819 = distinct !DILexicalBlock(scope: !416, file: !366, line: 120, column: 81)
!820 = !DILocation(line: 120, column: 81, scope: !416)
!821 = !DILocation(line: 120, column: 94, scope: !822)
!822 = !DILexicalBlockFile(scope: !819, file: !366, discriminator: 4)
!823 = !DILocation(line: 120, column: 87, scope: !819)
!824 = !DILocation(line: 120, column: 100, scope: !825)
!825 = !DILexicalBlockFile(scope: !417, file: !366, discriminator: 5)
!826 = !DILocation(line: 120, column: 100, scope: !827)
!827 = !DILexicalBlockFile(scope: !828, file: !366, discriminator: 7)
!828 = !DILexicalBlockFile(scope: !417, file: !366, discriminator: 6)
!829 = !DILocation(line: 120, column: 100, scope: !416)
!830 = !DILocation(line: 120, column: 102, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !366, discriminator: 8)
!832 = !DILexicalBlockFile(scope: !418, file: !366, discriminator: 3)
!833 = !DILocation(line: 121, column: 5, scope: !408)
!834 = !DILocation(line: 122, column: 1, scope: !408)
!835 = !DILocation(line: 125, column: 26, scope: !419)
!836 = !DILocation(line: 127, column: 5, scope: !419)
!837 = !DILocation(line: 127, column: 10, scope: !838)
!838 = !DILexicalBlockFile(scope: !425, file: !366, discriminator: 1)
!839 = !DILocation(line: 127, column: 20, scope: !425)
!840 = !DILocation(line: 127, column: 43, scope: !425)
!841 = !DILocation(line: 127, column: 47, scope: !425)
!842 = !DILocation(line: 127, column: 60, scope: !429)
!843 = !DILocation(line: 127, column: 68, scope: !429)
!844 = !DILocation(line: 127, column: 60, scope: !425)
!845 = !DILocation(line: 127, column: 86, scope: !846)
!846 = !DILexicalBlockFile(scope: !428, file: !366, discriminator: 2)
!847 = !DILocation(line: 127, column: 90, scope: !428)
!848 = !DILocation(line: 127, column: 98, scope: !428)
!849 = !DILocation(line: 127, column: 112, scope: !428)
!850 = !DILocation(line: 127, column: 117, scope: !851)
!851 = !DILexicalBlockFile(scope: !427, file: !366, discriminator: 4)
!852 = !DILocation(line: 127, column: 127, scope: !427)
!853 = !DILocation(line: 127, column: 157, scope: !427)
!854 = !DILocation(line: 127, column: 175, scope: !855)
!855 = distinct !DILexicalBlock(scope: !427, file: !366, line: 127, column: 172)
!856 = !DILocation(line: 127, column: 192, scope: !855)
!857 = !DILocation(line: 127, column: 172, scope: !855)
!858 = !DILocation(line: 127, column: 202, scope: !855)
!859 = !DILocation(line: 127, column: 172, scope: !427)
!860 = !DILocation(line: 127, column: 172, scope: !861)
!861 = !DILexicalBlockFile(scope: !427, file: !366, discriminator: 5)
!862 = !DILocation(line: 127, column: 233, scope: !863)
!863 = !DILexicalBlockFile(scope: !855, file: !366, discriminator: 6)
!864 = !DILocation(line: 127, column: 251, scope: !855)
!865 = !DILocation(line: 127, column: 261, scope: !855)
!866 = !DILocation(line: 127, column: 286, scope: !855)
!867 = !DILocation(line: 127, column: 217, scope: !855)
!868 = !DILocation(line: 127, column: 305, scope: !869)
!869 = !DILexicalBlockFile(scope: !428, file: !366, discriminator: 7)
!870 = !DILocation(line: 127, column: 305, scope: !427)
!871 = !DILocation(line: 127, column: 305, scope: !872)
!872 = !DILexicalBlockFile(scope: !427, file: !366, discriminator: 8)
!873 = !DILocation(line: 127, column: 318, scope: !874)
!874 = !DILexicalBlockFile(scope: !428, file: !366, discriminator: 9)
!875 = !DILocation(line: 127, column: 320, scope: !876)
!876 = !DILexicalBlockFile(scope: !877, file: !366, discriminator: 10)
!877 = !DILexicalBlockFile(scope: !419, file: !366, discriminator: 3)
!878 = !DILocation(line: 127, column: 320, scope: !425)
!879 = !DILocation(line: 128, column: 5, scope: !419)
!880 = !DILocation(line: 57, column: 28, scope: !430)
!881 = !DILocation(line: 57, column: 41, scope: !430)
!882 = !DILocation(line: 57, column: 48, scope: !430)
!883 = !DILocation(line: 59, column: 5, scope: !430)
!884 = !DILocation(line: 59, column: 9, scope: !430)
!885 = !DILocation(line: 60, column: 5, scope: !430)
!886 = !DILocation(line: 60, column: 15, scope: !430)
!887 = !DILocation(line: 66, column: 25, scope: !888)
!888 = distinct !DILexicalBlock(scope: !430, file: !366, line: 66, column: 9)
!889 = !DILocation(line: 66, column: 30, scope: !888)
!890 = !DILocation(line: 66, column: 39, scope: !888)
!891 = !DILocation(line: 66, column: 56, scope: !888)
!892 = !DILocation(line: 66, column: 75, scope: !893)
!893 = !DILexicalBlockFile(scope: !888, file: !366, discriminator: 1)
!894 = !DILocation(line: 66, column: 80, scope: !888)
!895 = !DILocation(line: 66, column: 89, scope: !888)
!896 = !DILocation(line: 66, column: 9, scope: !430)
!897 = !DILocation(line: 67, column: 11, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !366, line: 66, column: 107)
!899 = !DILocation(line: 68, column: 25, scope: !898)
!900 = !DILocation(line: 68, column: 30, scope: !898)
!901 = !DILocation(line: 68, column: 39, scope: !898)
!902 = !DILocation(line: 69, column: 16, scope: !898)
!903 = !DILocation(line: 69, column: 9, scope: !898)
!904 = !DILocation(line: 73, column: 26, scope: !430)
!905 = !DILocation(line: 73, column: 10, scope: !430)
!906 = !DILocation(line: 73, column: 30, scope: !430)
!907 = !DILocation(line: 73, column: 7, scope: !430)
!908 = !DILocation(line: 74, column: 26, scope: !430)
!909 = !DILocation(line: 74, column: 10, scope: !430)
!910 = !DILocation(line: 74, column: 30, scope: !430)
!911 = !DILocation(line: 74, column: 7, scope: !430)
!912 = !DILocation(line: 75, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !430, file: !366, line: 75, column: 9)
!914 = !DILocation(line: 75, column: 11, scope: !913)
!915 = !DILocation(line: 75, column: 25, scope: !913)
!916 = !DILocation(line: 75, column: 28, scope: !917)
!917 = !DILexicalBlockFile(scope: !913, file: !366, discriminator: 1)
!918 = !DILocation(line: 75, column: 30, scope: !913)
!919 = !DILocation(line: 75, column: 9, scope: !430)
!920 = !DILocation(line: 76, column: 37, scope: !913)
!921 = !DILocation(line: 76, column: 40, scope: !913)
!922 = !DILocation(line: 76, column: 43, scope: !913)
!923 = !DILocation(line: 76, column: 16, scope: !913)
!924 = !DILocation(line: 76, column: 9, scope: !913)
!925 = !DILocation(line: 78, column: 15, scope: !430)
!926 = !DILocation(line: 78, column: 17, scope: !430)
!927 = !DILocation(line: 78, column: 35, scope: !430)
!928 = !DILocation(line: 78, column: 37, scope: !430)
!929 = !DILocation(line: 78, column: 32, scope: !430)
!930 = !DILocation(line: 78, column: 12, scope: !430)
!931 = !DILocation(line: 79, column: 13, scope: !430)
!932 = !DILocation(line: 79, column: 5, scope: !430)
!933 = !DILocation(line: 81, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !430, file: !366, line: 79, column: 17)
!935 = !DILocation(line: 81, column: 22, scope: !934)
!936 = !DILocation(line: 81, column: 14, scope: !934)
!937 = !DILocation(line: 81, column: 11, scope: !934)
!938 = !DILocation(line: 82, column: 9, scope: !934)
!939 = !DILocation(line: 84, column: 15, scope: !934)
!940 = !DILocation(line: 84, column: 22, scope: !934)
!941 = !DILocation(line: 84, column: 14, scope: !934)
!942 = !DILocation(line: 84, column: 11, scope: !934)
!943 = !DILocation(line: 85, column: 9, scope: !934)
!944 = !DILocation(line: 87, column: 15, scope: !934)
!945 = !DILocation(line: 87, column: 22, scope: !934)
!946 = !DILocation(line: 87, column: 14, scope: !934)
!947 = !DILocation(line: 87, column: 11, scope: !934)
!948 = !DILocation(line: 88, column: 9, scope: !934)
!949 = !DILocation(line: 90, column: 15, scope: !934)
!950 = !DILocation(line: 90, column: 22, scope: !934)
!951 = !DILocation(line: 90, column: 14, scope: !934)
!952 = !DILocation(line: 90, column: 11, scope: !934)
!953 = !DILocation(line: 91, column: 9, scope: !934)
!954 = !DILocation(line: 93, column: 15, scope: !934)
!955 = !DILocation(line: 93, column: 22, scope: !934)
!956 = !DILocation(line: 93, column: 14, scope: !934)
!957 = !DILocation(line: 93, column: 11, scope: !934)
!958 = !DILocation(line: 94, column: 9, scope: !934)
!959 = !DILocation(line: 96, column: 15, scope: !934)
!960 = !DILocation(line: 96, column: 22, scope: !934)
!961 = !DILocation(line: 96, column: 14, scope: !934)
!962 = !DILocation(line: 96, column: 11, scope: !934)
!963 = !DILocation(line: 97, column: 9, scope: !934)
!964 = !DILocation(line: 99, column: 9, scope: !934)
!965 = !DILocation(line: 100, column: 9, scope: !934)
!966 = !DILocation(line: 102, column: 21, scope: !430)
!967 = !DILocation(line: 102, column: 26, scope: !430)
!968 = !DILocation(line: 102, column: 35, scope: !430)
!969 = !DILocation(line: 103, column: 12, scope: !430)
!970 = !DILocation(line: 103, column: 5, scope: !430)
!971 = !DILocation(line: 104, column: 1, scope: !430)
!972 = !DILocation(line: 132, column: 33, scope: !437)
!973 = !DILocation(line: 132, column: 43, scope: !437)
!974 = !DILocation(line: 134, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !437, file: !366, line: 134, column: 9)
!976 = !DILocation(line: 134, column: 13, scope: !975)
!977 = !DILocation(line: 134, column: 20, scope: !975)
!978 = !DILocation(line: 134, column: 9, scope: !437)
!979 = !DILocation(line: 136, column: 25, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !366, line: 135, column: 5)
!981 = !DILocation(line: 136, column: 9, scope: !980)
!982 = !DILocation(line: 137, column: 9, scope: !980)
!983 = !DILocation(line: 139, column: 21, scope: !437)
!984 = !DILocation(line: 139, column: 25, scope: !437)
!985 = !DILocation(line: 139, column: 35, scope: !437)
!986 = !DILocation(line: 139, column: 44, scope: !437)
!987 = !DILocation(line: 140, column: 12, scope: !437)
!988 = !DILocation(line: 140, column: 16, scope: !437)
!989 = !DILocation(line: 140, column: 5, scope: !437)
!990 = !DILocation(line: 141, column: 1, scope: !437)
