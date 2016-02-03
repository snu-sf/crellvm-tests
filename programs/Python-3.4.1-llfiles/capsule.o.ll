; ModuleID = 'capsule.o.bc'
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

@PyExc_ValueError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [39 x i8] c"PyCapsule_New called with null pointer\00", align 1
@PyCapsule_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* @capsule_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @capsule_repr, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 0, i8* getelementptr inbounds ([417 x i8], [417 x i8]* @PyCapsule_Type__doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"PyCapsule_GetPointer called with invalid PyCapsule object\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"PyCapsule_GetPointer called with incorrect name\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"PyCapsule_GetName called with invalid PyCapsule object\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"PyCapsule_GetDestructor called with invalid PyCapsule object\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"PyCapsule_GetContext called with invalid PyCapsule object\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"PyCapsule_SetPointer called with null pointer\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"PyCapsule_SetPointer called with invalid PyCapsule object\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"PyCapsule_SetName called with invalid PyCapsule object\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"PyCapsule_SetDestructor called with invalid PyCapsule object\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"PyCapsule_SetContext called with invalid PyCapsule object\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [46 x i8] c"PyCapsule_Import could not import module \22%s\22\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [35 x i8] c"PyCapsule_Import \22%s\22 is not valid\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"PyCapsule\00", align 1
@PyCapsule_Type__doc__ = internal global [417 x i8] c"Capsule objects let you wrap a C \22void *\22 pointer in a Python\0Aobject.  They're a way of passing data through the Python interpreter\0Awithout creating your own custom type.\0A\0ACapsules are used for communication between extension modules.\0AThey provide a way for an extension module to export a C interface\0Ato other extension modules, so that extension modules can use the\0APython import mechanism to link to one another.\0A\00", align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"<capsule object %s%s%s at %p>\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyCapsule_New(i8* %pointer, i8* %name, void (%struct._object*)* %destructor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %pointer, i64 0, metadata !359, metadata !478), !dbg !479
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !360, metadata !478), !dbg !480
  tail call void @llvm.dbg.value(metadata void (%struct._object*)* %destructor, i64 0, metadata !361, metadata !478), !dbg !481
  %tobool = icmp eq i8* %pointer, null, !dbg !482
  br i1 %tobool, label %if.then, label %if.end, !dbg !484

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !485, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #4, !dbg !491
  br label %cleanup, !dbg !492

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCapsule_Type, i64 0, i32 2), align 8, !dbg !493, !tbaa !494
  %call = tail call i8* @PyObject_Malloc(i64 %1) #4, !dbg !493
  %2 = bitcast i8* %call to %struct._object*, !dbg !493
  %call1 = tail call %struct._object* @PyObject_Init(%struct._object* %2, %struct._typeobject* nonnull @PyCapsule_Type) #4, !dbg !493
  %cmp = icmp eq %struct._object* %call1, null, !dbg !500
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !502

if.end.3:                                         ; preds = %if.end
  %pointer4 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, !dbg !503
  %3 = bitcast %struct._object* %pointer4 to i8**, !dbg !503
  store i8* %pointer, i8** %3, align 8, !dbg !504, !tbaa !505
  %name5 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 1, !dbg !507
  %4 = bitcast %struct._typeobject** %name5 to i8**, !dbg !507
  store i8* %name, i8** %4, align 8, !dbg !508, !tbaa !509
  %context = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !510
  %5 = bitcast %struct._object* %context to i8**, !dbg !510
  store i8* null, i8** %5, align 8, !dbg !511, !tbaa !512
  %destructor6 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, i32 1, !dbg !513
  %6 = bitcast %struct._typeobject** %destructor6 to void (%struct._object*)**, !dbg !513
  store void (%struct._object*)* %destructor, void (%struct._object*)** %6, align 8, !dbg !514, !tbaa !515
  br label %cleanup, !dbg !516

cleanup:                                          ; preds = %if.end, %if.end.3, %if.then
  %retval.0 = phi %struct._object* [ %call1, %if.end.3 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !517
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind readonly uwtable
define i32 @PyCapsule_IsValid(%struct._object* readonly %o, i8* readonly %name) #2 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !367, metadata !478), !dbg !518
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !368, metadata !478), !dbg !519
  %cmp = icmp eq %struct._object* %o, null, !dbg !520
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !521

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !522
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !522, !tbaa !523
  %cmp1 = icmp eq %struct._typeobject* %0, @PyCapsule_Type, !dbg !522
  br i1 %cmp1, label %land.lhs.true.2, label %land.end, !dbg !524

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %pointer = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !525
  %1 = bitcast %struct._object* %pointer to i8**, !dbg !525
  %2 = load i8*, i8** %1, align 8, !dbg !525, !tbaa !505
  %cmp3 = icmp eq i8* %2, null, !dbg !526
  br i1 %cmp3, label %land.end, label %land.rhs, !dbg !527

land.rhs:                                         ; preds = %land.lhs.true.2
  %name4 = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, i32 1, !dbg !528
  %3 = bitcast %struct._typeobject** %name4 to i8**, !dbg !528
  %4 = load i8*, i8** %3, align 8, !dbg !528, !tbaa !509
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !447, metadata !478) #4, !dbg !529
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !448, metadata !478) #4, !dbg !531
  %tobool.i = icmp ne i8* %4, null, !dbg !532
  %tobool1.i = icmp ne i8* %name, null, !dbg !534
  %or.cond.i = and i1 %tobool1.i, %tobool.i, !dbg !536
  br i1 %or.cond.i, label %if.end.i, label %if.then.i, !dbg !536

if.then.i:                                        ; preds = %land.rhs
  %cmp.i = icmp eq i8* %4, %name, !dbg !537
  br label %land.end, !dbg !539

if.end.i:                                         ; preds = %land.rhs
  %call.i = tail call i32 @strcmp(i8* %4, i8* %name) #4, !dbg !540
  %lnot.i = icmp eq i32 %call.i, 0, !dbg !541
  br label %land.end, !dbg !542

land.end:                                         ; preds = %if.end.i, %if.then.i, %land.lhs.true.2, %entry, %land.lhs.true
  %5 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp.i, %if.then.i ], [ %lnot.i, %if.end.i ]
  %land.ext = zext i1 %5 to i32, !dbg !543
  ret i32 %land.ext, !dbg !545
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetPointer(%struct._object* readonly %o, i8* readonly %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !374, metadata !478), !dbg !546
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !375, metadata !478), !dbg !547
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !548
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !551
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !553

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !554
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !554, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !554
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !556

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !557
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !557
  %3 = load i8*, i8** %2, align 8, !dbg !558, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !559
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !560

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !561, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !563
  br label %cleanup, !dbg !564

if.end:                                           ; preds = %lor.lhs.false.1.i
  %name1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, i32 1, !dbg !565
  %5 = bitcast %struct._typeobject** %name1 to i8**, !dbg !565
  %6 = load i8*, i8** %5, align 8, !dbg !565, !tbaa !509
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !447, metadata !478) #4, !dbg !567
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !448, metadata !478) #4, !dbg !569
  %tobool.i.9 = icmp ne i8* %name, null, !dbg !570
  %tobool1.i = icmp ne i8* %6, null, !dbg !571
  %or.cond.i = and i1 %tobool.i.9, %tobool1.i, !dbg !572
  br i1 %or.cond.i, label %name_matches.exit, label %if.then.i.11, !dbg !572

if.then.i.11:                                     ; preds = %if.end
  %cmp.i.10 = icmp eq i8* %6, %name, !dbg !573
  br i1 %cmp.i.10, label %cleanup, label %if.then.4, !dbg !574

name_matches.exit:                                ; preds = %if.end
  %call.i = tail call i32 @strcmp(i8* %name, i8* %6) #4, !dbg !575
  %lnot.i = icmp eq i32 %call.i, 0, !dbg !576
  br i1 %lnot.i, label %cleanup, label %if.then.4, !dbg !574

if.then.4:                                        ; preds = %if.then.i.11, %name_matches.exit
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !577, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !579
  br label %cleanup, !dbg !580

cleanup:                                          ; preds = %name_matches.exit, %if.then.i.11, %_is_legal_capsule.exit.thread, %if.then.4
  %retval.0 = phi i8* [ null, %if.then.4 ], [ null, %_is_legal_capsule.exit.thread ], [ %3, %if.then.i.11 ], [ %3, %name_matches.exit ]
  ret i8* %retval.0, !dbg !581
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetName(%struct._object* readonly %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !381, metadata !478), !dbg !582
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !583
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !586
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !587

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !588
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !588, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !588
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !589

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !590
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !590
  %3 = load i8*, i8** %2, align 8, !dbg !590, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !591
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !592

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !593, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !594
  br label %cleanup, !dbg !595

if.end:                                           ; preds = %lor.lhs.false.1.i
  %name = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, i32 1, !dbg !596
  %5 = bitcast %struct._typeobject** %name to i8**, !dbg !596
  %6 = load i8*, i8** %5, align 8, !dbg !596, !tbaa !509
  br label %cleanup, !dbg !597

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi i8* [ %6, %if.end ], [ null, %_is_legal_capsule.exit.thread ]
  ret i8* %retval.0, !dbg !598
}

; Function Attrs: nounwind uwtable
define void (%struct._object*)* @PyCapsule_GetDestructor(%struct._object* readonly %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !387, metadata !478), !dbg !599
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !600
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !603
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !604

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !605
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !605, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !605
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !606

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !607
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !607
  %3 = load i8*, i8** %2, align 8, !dbg !607, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !608
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !609

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !610, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !611
  br label %cleanup, !dbg !612

if.end:                                           ; preds = %lor.lhs.false.1.i
  %destructor = getelementptr inbounds %struct._object, %struct._object* %o, i64 2, i32 1, !dbg !613
  %5 = bitcast %struct._typeobject** %destructor to void (%struct._object*)**, !dbg !613
  %6 = load void (%struct._object*)*, void (%struct._object*)** %5, align 8, !dbg !613, !tbaa !515
  br label %cleanup, !dbg !614

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi void (%struct._object*)* [ %6, %if.end ], [ null, %_is_legal_capsule.exit.thread ]
  ret void (%struct._object*)* %retval.0, !dbg !615
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetContext(%struct._object* readonly %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !393, metadata !478), !dbg !616
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !617
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !620
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !621

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !622
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !622, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !622
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !623

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !624
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !624
  %3 = load i8*, i8** %2, align 8, !dbg !624, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !625
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !626

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !627, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !628
  br label %cleanup, !dbg !629

if.end:                                           ; preds = %lor.lhs.false.1.i
  %context = getelementptr inbounds %struct._object, %struct._object* %o, i64 2, !dbg !630
  %5 = bitcast %struct._object* %context to i8**, !dbg !630
  %6 = load i8*, i8** %5, align 8, !dbg !630, !tbaa !512
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi i8* [ %6, %if.end ], [ null, %_is_legal_capsule.exit.thread ]
  ret i8* %retval.0, !dbg !632
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetPointer(%struct._object* %o, i8* %pointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !397, metadata !478), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* %pointer, i64 0, metadata !398, metadata !478), !dbg !634
  %tobool = icmp eq i8* %pointer, null, !dbg !635
  br i1 %tobool, label %if.then, label %if.end, !dbg !637

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !638, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !640
  br label %cleanup, !dbg !641

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !642
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !645
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !646

lor.lhs.false.i:                                  ; preds = %if.end
  %1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !647
  %2 = load %struct._typeobject*, %struct._typeobject** %1, align 8, !dbg !647, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %2, @PyCapsule_Type, !dbg !647
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !648

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !649
  %3 = bitcast %struct._object* %pointer.i to i8**, !dbg !649
  %4 = load i8*, i8** %3, align 8, !dbg !649, !tbaa !505
  %cmp2.i = icmp eq i8* %4, null, !dbg !650
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end.3, !dbg !651

_is_legal_capsule.exit.thread:                    ; preds = %if.end, %lor.lhs.false.i, %lor.lhs.false.1.i
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !652, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !653
  br label %cleanup, !dbg !654

if.end.3:                                         ; preds = %lor.lhs.false.1.i
  store i8* %pointer, i8** %3, align 8, !dbg !655, !tbaa !505
  br label %cleanup, !dbg !656

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end.3, %if.then
  %retval.0 = phi i32 [ 0, %if.end.3 ], [ -1, %if.then ], [ -1, %_is_legal_capsule.exit.thread ]
  ret i32 %retval.0, !dbg !657
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetName(%struct._object* %o, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !402, metadata !478), !dbg !658
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !403, metadata !478), !dbg !659
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !660
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !663
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !664

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !665
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !665, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !665
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !666

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !667
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !667
  %3 = load i8*, i8** %2, align 8, !dbg !667, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !668
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !669

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !670, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !671
  br label %cleanup, !dbg !672

if.end:                                           ; preds = %lor.lhs.false.1.i
  %name1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, i32 1, !dbg !673
  %5 = bitcast %struct._typeobject** %name1 to i8**, !dbg !673
  store i8* %name, i8** %5, align 8, !dbg !674, !tbaa !509
  br label %cleanup, !dbg !675

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %_is_legal_capsule.exit.thread ]
  ret i32 %retval.0, !dbg !676
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetDestructor(%struct._object* %o, void (%struct._object*)* %destructor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !409, metadata !478), !dbg !677
  tail call void @llvm.dbg.value(metadata void (%struct._object*)* %destructor, i64 0, metadata !410, metadata !478), !dbg !678
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !679
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !682
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !683

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !684
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !684, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !684
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !685

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !686
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !686
  %3 = load i8*, i8** %2, align 8, !dbg !686, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !687
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !688

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !689, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !690
  br label %cleanup, !dbg !691

if.end:                                           ; preds = %lor.lhs.false.1.i
  %destructor1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 2, i32 1, !dbg !692
  %5 = bitcast %struct._typeobject** %destructor1 to void (%struct._object*)**, !dbg !692
  store void (%struct._object*)* %destructor, void (%struct._object*)** %5, align 8, !dbg !693, !tbaa !515
  br label %cleanup, !dbg !694

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %_is_legal_capsule.exit.thread ]
  ret i32 %retval.0, !dbg !695
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetContext(%struct._object* %o, i8* %context) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !414, metadata !478), !dbg !696
  tail call void @llvm.dbg.value(metadata i8* %context, i64 0, metadata !415, metadata !478), !dbg !697
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !457, metadata !478) #4, !dbg !698
  %tobool.i = icmp eq %struct._object* %o, null, !dbg !701
  br i1 %tobool.i, label %_is_legal_capsule.exit.thread, label %lor.lhs.false.i, !dbg !702

lor.lhs.false.i:                                  ; preds = %entry
  %0 = getelementptr inbounds %struct._object, %struct._object* %o, i64 0, i32 1, !dbg !703
  %1 = load %struct._typeobject*, %struct._typeobject** %0, align 8, !dbg !703, !tbaa !523
  %cmp.i = icmp eq %struct._typeobject* %1, @PyCapsule_Type, !dbg !703
  br i1 %cmp.i, label %lor.lhs.false.1.i, label %_is_legal_capsule.exit.thread, !dbg !704

lor.lhs.false.1.i:                                ; preds = %lor.lhs.false.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, !dbg !705
  %2 = bitcast %struct._object* %pointer.i to i8**, !dbg !705
  %3 = load i8*, i8** %2, align 8, !dbg !705, !tbaa !505
  %cmp2.i = icmp eq i8* %3, null, !dbg !706
  br i1 %cmp2.i, label %_is_legal_capsule.exit.thread, label %if.end, !dbg !707

_is_legal_capsule.exit.thread:                    ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false.1.i
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !708, !tbaa !487
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !709
  br label %cleanup, !dbg !710

if.end:                                           ; preds = %lor.lhs.false.1.i
  %context1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 2, !dbg !711
  %5 = bitcast %struct._object* %context1 to i8**, !dbg !711
  store i8* %context, i8** %5, align 8, !dbg !712, !tbaa !512
  br label %cleanup, !dbg !713

cleanup:                                          ; preds = %_is_legal_capsule.exit.thread, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %_is_legal_capsule.exit.thread ]
  ret i32 %retval.0, !dbg !714
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_Import(i8* %name, i32 %no_block) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !421, metadata !478), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %no_block, i64 0, metadata !422, metadata !478), !dbg !716
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !423, metadata !478), !dbg !717
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !424, metadata !478), !dbg !718
  %call = tail call i64 @strlen(i8* %name) #6, !dbg !719
  %add = add i64 %call, 1, !dbg !720
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !426, metadata !478), !dbg !721
  %call1 = tail call i8* @PyMem_Malloc(i64 %add) #4, !dbg !722
  tail call void @llvm.dbg.value(metadata i8* %call1, i64 0, metadata !427, metadata !478), !dbg !723
  %tobool = icmp eq i8* %call1, null, !dbg !724
  br i1 %tobool, label %cleanup.54, label %while.body.lr.ph, !dbg !726

while.body.lr.ph:                                 ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call1, i8* %name, i64 %add, i32 1, i1 false), !dbg !727
  tail call void @llvm.dbg.value(metadata i8* %call1, i64 0, metadata !425, metadata !478), !dbg !728
  %tobool8 = icmp eq i32 %no_block, 0, !dbg !729
  br i1 %tobool8, label %while.body.us.preheader, label %while.body.preheader, !dbg !732

while.body.preheader:                             ; preds = %while.body.lr.ph
  br label %while.body, !dbg !733

while.body.us.preheader:                          ; preds = %while.body.lr.ph
  br label %while.body.us, !dbg !733

while.body.us:                                    ; preds = %while.body.us.preheader, %while.cond.backedge.us
  %object.0115.us = phi %struct._object* [ %object.0.be.us, %while.cond.backedge.us ], [ null, %while.body.us.preheader ]
  %trace.0114.us = phi i8* [ %dot.0.us, %while.cond.backedge.us ], [ %call1, %while.body.us.preheader ]
  %call3.us = tail call i8* @strchr(i8* %trace.0114.us, i32 46) #4, !dbg !733
  tail call void @llvm.dbg.value(metadata i8* %call3.us, i64 0, metadata !428, metadata !478), !dbg !734
  %tobool4.us = icmp eq i8* %call3.us, null, !dbg !735
  br i1 %tobool4.us, label %if.end.6.us, label %if.then.5.us, !dbg !737

if.then.5.us:                                     ; preds = %while.body.us
  %incdec.ptr.us = getelementptr i8, i8* %call3.us, i64 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, i64 0, metadata !428, metadata !478), !dbg !734
  store i8 0, i8* %call3.us, align 1, !dbg !740, !tbaa !741
  br label %if.end.6.us, !dbg !742

if.end.6.us:                                      ; preds = %if.then.5.us, %while.body.us
  %dot.0.us = phi i8* [ %incdec.ptr.us, %if.then.5.us ], [ null, %while.body.us ]
  %cmp.us = icmp eq %struct._object* %object.0115.us, null, !dbg !743
  br i1 %cmp.us, label %if.else.us, label %if.else.17.us, !dbg !744

if.else.17.us:                                    ; preds = %if.end.6.us
  %call18.us = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %object.0115.us, i8* %trace.0114.us) #4, !dbg !745
  tail call void @llvm.dbg.value(metadata %struct._object* %call18.us, i64 0, metadata !430, metadata !478), !dbg !746
  tail call void @llvm.dbg.value(metadata %struct._object* %object.0.be.us, i64 0, metadata !433, metadata !478), !dbg !747
  %ob_refcnt.us = getelementptr inbounds %struct._object, %struct._object* %object.0115.us, i64 0, i32 0, !dbg !749
  %0 = load i64, i64* %ob_refcnt.us, align 8, !dbg !749, !tbaa !751
  %dec.us = add i64 %0, -1, !dbg !749
  store i64 %dec.us, i64* %ob_refcnt.us, align 8, !dbg !749, !tbaa !751
  %cmp19.us = icmp eq i64 %dec.us, 0, !dbg !749
  br i1 %cmp19.us, label %if.else.21.us, label %if.end.23.us, !dbg !752

if.else.21.us:                                    ; preds = %if.else.17.us
  %ob_type.us = getelementptr inbounds %struct._object, %struct._object* %object.0115.us, i64 0, i32 1, !dbg !753
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.us, align 8, !dbg !753, !tbaa !523
  %tp_dealloc.us = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !753
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.us, align 8, !dbg !753, !tbaa !755
  tail call void %2(%struct._object* %object.0115.us) #4, !dbg !753
  br label %if.end.23.us

if.end.23.us:                                     ; preds = %if.else.21.us, %if.else.17.us
  %tobool24.us = icmp eq %struct._object* %call18.us, null, !dbg !756
  br i1 %tobool24.us, label %if.then.52.loopexit, label %while.cond.backedge.us

if.else.us:                                       ; preds = %if.end.6.us
  %call11.us = tail call %struct._object* @PyImport_ImportModule(i8* %trace.0114.us) #4, !dbg !758
  tail call void @llvm.dbg.value(metadata %struct._object* %call11.us, i64 0, metadata !423, metadata !478), !dbg !717
  %tobool12.us = icmp eq %struct._object* %call11.us, null, !dbg !760
  br i1 %tobool12.us, label %if.end.23.thread, label %while.cond.backedge.us, !dbg !762

while.cond.backedge.us:                           ; preds = %if.else.us, %if.end.23.us
  %object.0.be.us = phi %struct._object* [ %call18.us, %if.end.23.us ], [ %call11.us, %if.else.us ]
  %tobool2.us = icmp eq i8* %dot.0.us, null, !dbg !763
  br i1 %tobool2.us, label %land.lhs.true.i.loopexit, label %while.body.us, !dbg !763

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %object.0115 = phi %struct._object* [ %object.1, %while.cond.backedge ], [ null, %while.body.preheader ]
  %trace.0114 = phi i8* [ %dot.0, %while.cond.backedge ], [ %call1, %while.body.preheader ]
  %call3 = tail call i8* @strchr(i8* %trace.0114, i32 46) #4, !dbg !733
  tail call void @llvm.dbg.value(metadata i8* %call3, i64 0, metadata !428, metadata !478), !dbg !734
  %tobool4 = icmp eq i8* %call3, null, !dbg !735
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !737

if.then.5:                                        ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %call3, i64 1, !dbg !738
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !428, metadata !478), !dbg !734
  store i8 0, i8* %call3, align 1, !dbg !740, !tbaa !741
  br label %if.end.6, !dbg !742

if.end.6:                                         ; preds = %while.body, %if.then.5
  %dot.0 = phi i8* [ %incdec.ptr, %if.then.5 ], [ null, %while.body ]
  %cmp = icmp eq %struct._object* %object.0115, null, !dbg !743
  br i1 %cmp, label %if.then.9, label %if.else.17, !dbg !744

if.then.9:                                        ; preds = %if.end.6
  %call10 = tail call %struct._object* @PyImport_ImportModuleNoBlock(i8* %trace.0114) #4, !dbg !764
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !423, metadata !478), !dbg !717
  br label %if.end.23, !dbg !766

if.end.23.thread:                                 ; preds = %if.else.us
  %trace.0114.us.lcssa139 = phi i8* [ %trace.0114.us, %if.else.us ]
  %3 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !767, !tbaa !487
  %call14 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i8* %trace.0114.us.lcssa139) #4, !dbg !769
  br label %if.then.52

if.else.17:                                       ; preds = %if.end.6
  %call18 = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %object.0115, i8* %trace.0114) #4, !dbg !745
  tail call void @llvm.dbg.value(metadata %struct._object* %call18, i64 0, metadata !430, metadata !478), !dbg !746
  tail call void @llvm.dbg.value(metadata %struct._object* %object.1, i64 0, metadata !433, metadata !478), !dbg !747
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %object.0115, i64 0, i32 0, !dbg !749
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !749, !tbaa !751
  %dec = add i64 %4, -1, !dbg !749
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !749, !tbaa !751
  %cmp19 = icmp eq i64 %dec, 0, !dbg !749
  br i1 %cmp19, label %if.else.21, label %if.end.23, !dbg !752

if.else.21:                                       ; preds = %if.else.17
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %object.0115, i64 0, i32 1, !dbg !753
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !753, !tbaa !523
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !753
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !753, !tbaa !755
  tail call void %6(%struct._object* %object.0115) #4, !dbg !753
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.else.17, %if.then.9
  %object.1 = phi %struct._object* [ %call10, %if.then.9 ], [ %call18, %if.else.17 ], [ %call18, %if.else.21 ]
  %tobool24 = icmp eq %struct._object* %object.1, null, !dbg !756
  br i1 %tobool24, label %if.then.52.loopexit134, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.23
  %tobool2 = icmp eq i8* %dot.0, null, !dbg !763
  br i1 %tobool2, label %land.lhs.true.i.loopexit135, label %while.body, !dbg !763

land.lhs.true.i.loopexit:                         ; preds = %while.cond.backedge.us
  %object.0.be.us.lcssa = phi %struct._object* [ %object.0.be.us, %while.cond.backedge.us ]
  br label %land.lhs.true.i, !dbg !770

land.lhs.true.i.loopexit135:                      ; preds = %while.cond.backedge
  %object.1.lcssa141 = phi %struct._object* [ %object.1, %while.cond.backedge ]
  br label %land.lhs.true.i, !dbg !770

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.loopexit135, %land.lhs.true.i.loopexit
  %split.ph = phi %struct._object* [ %object.0.be.us.lcssa, %land.lhs.true.i.loopexit ], [ %object.1.lcssa141, %land.lhs.true.i.loopexit135 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %object.1, i64 0, metadata !367, metadata !478) #4, !dbg !770
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !368, metadata !478) #4, !dbg !772
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %split.ph, i64 0, i32 1, !dbg !773
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !773, !tbaa !523
  %cmp1.i = icmp eq %struct._typeobject* %7, @PyCapsule_Type, !dbg !773
  br i1 %cmp1.i, label %land.lhs.true.2.i, label %do.body.33, !dbg !774

land.lhs.true.2.i:                                ; preds = %land.lhs.true.i
  %pointer.i = getelementptr inbounds %struct._object, %struct._object* %split.ph, i64 1, !dbg !775
  %8 = bitcast %struct._object* %pointer.i to i8**, !dbg !775
  %9 = load i8*, i8** %8, align 8, !dbg !776, !tbaa !505
  %cmp3.i = icmp eq i8* %9, null, !dbg !777
  br i1 %cmp3.i, label %do.body.33, label %land.rhs.i, !dbg !778

land.rhs.i:                                       ; preds = %land.lhs.true.2.i
  %name4.i = getelementptr inbounds %struct._object, %struct._object* %split.ph, i64 1, i32 1, !dbg !779
  %10 = bitcast %struct._typeobject** %name4.i to i8**, !dbg !779
  %11 = load i8*, i8** %10, align 8, !dbg !779, !tbaa !509
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !447, metadata !478) #4, !dbg !780
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !448, metadata !478) #4, !dbg !782
  %tobool.i.i = icmp ne i8* %11, null, !dbg !783
  %tobool1.i.i = icmp ne i8* %name, null, !dbg !784
  %or.cond.i.i = and i1 %tobool1.i.i, %tobool.i.i, !dbg !785
  br i1 %or.cond.i.i, label %PyCapsule_IsValid.exit, label %if.then.i.i, !dbg !785

if.then.i.i:                                      ; preds = %land.rhs.i
  %cmp.i.i = icmp eq i8* %11, %name, !dbg !786
  br i1 %cmp.i.i, label %do.body.36, label %do.body.33, !dbg !787

PyCapsule_IsValid.exit:                           ; preds = %land.rhs.i
  %call.i.i = tail call i32 @strcmp(i8* %11, i8* %name) #4, !dbg !788
  %lnot.i.i = icmp eq i32 %call.i.i, 0, !dbg !789
  br i1 %lnot.i.i, label %do.body.36, label %do.body.33, !dbg !787

do.body.33:                                       ; preds = %if.then.i.i, %land.lhs.true.i, %land.lhs.true.2.i, %PyCapsule_IsValid.exit
  %12 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !790, !tbaa !487
  %call31 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %name) #4, !dbg !792
  tail call void @llvm.dbg.value(metadata %struct._object* %object.1, i64 0, metadata !438, metadata !478), !dbg !793
  br label %do.body.36

do.body.36:                                       ; preds = %do.body.33, %PyCapsule_IsValid.exit, %if.then.i.i
  %return_value.0105 = phi i8* [ null, %do.body.33 ], [ %9, %if.then.i.i ], [ %9, %PyCapsule_IsValid.exit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %object.1, i64 0, metadata !440, metadata !478), !dbg !795
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %split.ph, i64 0, i32 0, !dbg !797
  %13 = load i64, i64* %ob_refcnt38, align 8, !dbg !797, !tbaa !751
  %dec39 = add i64 %13, -1, !dbg !797
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !797, !tbaa !751
  %cmp40 = icmp eq i64 %dec39, 0, !dbg !797
  br i1 %cmp40, label %if.else.42, label %if.then.52, !dbg !799

if.else.42:                                       ; preds = %do.body.36
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %split.ph, i64 0, i32 1, !dbg !800
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !800, !tbaa !523
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !800
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !800, !tbaa !755
  tail call void %15(%struct._object* %split.ph) #4, !dbg !800
  br label %if.then.52

if.then.52.loopexit:                              ; preds = %if.end.23.us
  br label %if.then.52, !dbg !802

if.then.52.loopexit134:                           ; preds = %if.end.23
  br label %if.then.52, !dbg !802

if.then.52:                                       ; preds = %if.then.52.loopexit134, %if.then.52.loopexit, %if.end.23.thread, %do.body.36, %if.else.42
  %return_value.0102 = phi i8* [ %return_value.0105, %do.body.36 ], [ %return_value.0105, %if.else.42 ], [ null, %if.end.23.thread ], [ null, %if.then.52.loopexit ], [ null, %if.then.52.loopexit134 ]
  tail call void @PyMem_Free(i8* %call1) #4, !dbg !802
  br label %cleanup.54, !dbg !805

cleanup.54:                                       ; preds = %entry, %if.then.52
  %retval.0 = phi i8* [ %return_value.0102, %if.then.52 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !806
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #3

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @capsule_dealloc(%struct._object* %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !460, metadata !478), !dbg !807
  %destructor = getelementptr inbounds %struct._object, %struct._object* %o, i64 2, i32 1, !dbg !808
  %0 = bitcast %struct._typeobject** %destructor to void (%struct._object*)**, !dbg !808
  %1 = load void (%struct._object*)*, void (%struct._object*)** %0, align 8, !dbg !808, !tbaa !515
  %tobool = icmp eq void (%struct._object*)* %1, null, !dbg !810
  br i1 %tobool, label %if.end, label %if.then, !dbg !811

if.then:                                          ; preds = %entry
  tail call void %1(%struct._object* %o) #4, !dbg !812
  br label %if.end, !dbg !814

if.end:                                           ; preds = %entry, %if.then
  %2 = bitcast %struct._object* %o to i8*, !dbg !815
  tail call void @PyObject_Free(i8* %2) #4, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @capsule_repr(%struct._object* %o) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %o, i64 0, metadata !464, metadata !478), !dbg !818
  %name1 = getelementptr inbounds %struct._object, %struct._object* %o, i64 1, i32 1, !dbg !819
  %0 = bitcast %struct._typeobject** %name1 to i8**, !dbg !819
  %1 = load i8*, i8** %0, align 8, !dbg !819, !tbaa !509
  %tobool = icmp eq i8* %1, null, !dbg !821
  %. = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %1
  %.9 = select i1 %tobool, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %.9, i8* %., i8* %.9, %struct._object* %o) #4, !dbg !822
  ret %struct._object* %call, !dbg !823
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!475, !476}
!llvm.ident = !{!477}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !354, globals: !468)
!1 = !DIFile(filename: "Objects/capsule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !42, !94, !56}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCapsule", file: !1, line: 12, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 6, size: 384, align: 64, elements: !7)
!7 = !{!8, !348, !349, !350, !351}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !6, file: !1, line: 7, baseType: !9, size: 128, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !10, line: 109, baseType: !11)
!10 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !10, line: 105, size: 128, align: 64, elements: !12)
!12 = !{!13, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !11, file: !10, line: 107, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !11, file: !10, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !10, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !43, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !296, !314, !315, !316, !318, !320, !321, !323, !328, !333, !338, !339, !340, !341, !342, !343, !344, !345, !347}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !10, line: 335, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !10, line: 114, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 111, size: 192, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !10, line: 112, baseType: !9, size: 128, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !27, file: !10, line: 113, baseType: !14, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !23, file: !10, line: 336, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !23, file: !10, line: 341, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !10, line: 308, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !10, line: 342, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !10, line: 314, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !42, !49, !48}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 246, size: 1728, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!53 = !{!54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !80, !82, !84, !88, !91, !93, !95, !96, !97, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 247, baseType: !48, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 252, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 253, baseType: !56, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 254, baseType: !56, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 255, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 256, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 257, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 258, baseType: !56, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 259, baseType: !56, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 261, baseType: !56, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 262, baseType: !56, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 263, baseType: !56, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 265, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 161, size: 192, align: 64, elements: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !69, file: !52, line: 162, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !69, file: !52, line: 163, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !69, file: !52, line: 167, baseType: !48, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 267, baseType: !73, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 269, baseType: !48, size: 32, align: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 273, baseType: !48, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 275, baseType: !79, size: 64, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 279, baseType: !81, size: 16, align: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 280, baseType: !83, size: 8, align: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 281, baseType: !85, size: 8, align: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 285, baseType: !89, size: 64, align: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 155, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 294, baseType: !92, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !51, file: !52, line: 303, baseType: !94, size: 64, align: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !51, file: !52, line: 304, baseType: !94, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !51, file: !52, line: 305, baseType: !94, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !51, file: !52, line: 306, baseType: !94, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 309, baseType: !48, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !10, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !10, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!42, !42, !56}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !10, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !10, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!48, !42, !56, !42}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !10, line: 345, baseType: !94, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !10, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !10, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!42, !42}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !10, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !10, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !10, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !10, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!42, !42, !42}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !10, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !10, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !10, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !10, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !10, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !10, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!42, !42, !42, !42}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !10, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !10, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !10, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !10, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !10, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !10, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!48, !42}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !10, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !10, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !10, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !10, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !10, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !10, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !10, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !10, line: 258, baseType: !94, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !10, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !10, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !10, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !10, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !10, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !10, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !10, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !10, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !10, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !10, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !10, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !10, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !10, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !10, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !10, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !10, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !10, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !10, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !10, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !10, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!14, !42}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !10, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !10, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !10, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!42, !42, !14}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !10, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !10, line: 285, baseType: !94, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !10, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !10, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!48, !42, !14, !42}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !10, line: 287, baseType: !94, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !10, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !10, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!48, !42, !42}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !10, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !10, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !10, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !10, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !10, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !10, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !10, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !10, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!48, !42, !42, !42}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !10, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !10, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !42}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !15, line: 186, baseType: !14)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !10, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !10, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !10, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !10, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !10, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !10, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !10, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !10, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !10, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !10, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!48, !42, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !10, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !10, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !10, line: 179, baseType: !94, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !10, line: 180, baseType: !42, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !10, line: 181, baseType: !14, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !10, line: 182, baseType: !14, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !10, line: 184, baseType: !48, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !10, line: 185, baseType: !48, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !10, line: 186, baseType: !56, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !10, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !10, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !10, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !10, line: 190, baseType: !94, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !10, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !10, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !42, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !10, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !10, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !10, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !10, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!48, !42, !268, !94}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !10, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!48, !42, !94}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !10, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !10, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !10, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!42, !42, !42, !48}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !10, line: 382, baseType: !14, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !10, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !10, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !10, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !10, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !10, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !32, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !48, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !10, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !10, line: 390, flags: DIFlagFwdDecl)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !10, line: 391, baseType: !297, size: 64, align: 64, offset: 1984)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !299, line: 11, size: 320, align: 64, elements: !300)
!299 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!300 = !{!301, !302, !307, !312, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 12, baseType: !56, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !298, file: !299, line: 13, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !299, line: 8, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!42, !42, !94}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !298, file: !299, line: 14, baseType: !308, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !299, line: 9, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!48, !42, !42, !94}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !298, file: !299, line: 15, baseType: !56, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !298, file: !299, line: 16, baseType: !94, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !10, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !10, line: 393, baseType: !42, size: 64, align: 64, offset: 2112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !10, line: 394, baseType: !317, size: 64, align: 64, offset: 2176)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !10, line: 325, baseType: !139)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !10, line: 395, baseType: !319, size: 64, align: 64, offset: 2240)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !10, line: 326, baseType: !215)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !10, line: 396, baseType: !14, size: 64, align: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !10, line: 397, baseType: !322, size: 64, align: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !10, line: 327, baseType: !215)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !10, line: 398, baseType: !324, size: 64, align: 64, offset: 2432)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !10, line: 329, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!42, !22, !14}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !10, line: 399, baseType: !329, size: 64, align: 64, offset: 2496)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !10, line: 328, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!42, !22, !42, !42}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !10, line: 400, baseType: !334, size: 64, align: 64, offset: 2560)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !10, line: 307, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !94}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !10, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !10, line: 402, baseType: !42, size: 64, align: 64, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !10, line: 403, baseType: !42, size: 64, align: 64, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !10, line: 404, baseType: !42, size: 64, align: 64, offset: 2816)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !10, line: 405, baseType: !42, size: 64, align: 64, offset: 2880)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !10, line: 406, baseType: !42, size: 64, align: 64, offset: 2944)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !10, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !10, line: 410, baseType: !346, size: 32, align: 32, offset: 3072)
!346 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !10, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6, file: !1, line: 8, baseType: !94, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 9, baseType: !32, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6, file: !1, line: 10, baseType: !94, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !6, file: !1, line: 11, baseType: !352, size: 64, align: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCapsule_Destructor", file: !353, line: 23, baseType: !39)
!353 = !DIFile(filename: "Include/pycapsule.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!354 = !{!355, !363, !370, !377, !383, !389, !395, !400, !405, !412, !417, !443, !452, !458, !462}
!355 = !DISubprogram(name: "PyCapsule_New", scope: !1, file: !1, line: 44, type: !356, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, void (%struct._object*)*)* @PyCapsule_New, variables: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!42, !94, !32, !352}
!358 = !{!359, !360, !361, !362}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pointer", arg: 1, scope: !355, file: !1, line: 44, type: !94)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !355, file: !1, line: 44, type: !32)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 3, scope: !355, file: !1, line: 44, type: !352)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !355, file: !1, line: 46, type: !4)
!363 = !DISubprogram(name: "PyCapsule_IsValid", scope: !1, file: !1, line: 68, type: !364, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_IsValid, variables: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!48, !42, !32}
!366 = !{!367, !368, !369}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !363, file: !1, line: 68, type: !42)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !363, file: !1, line: 68, type: !32)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !363, file: !1, line: 70, type: !4)
!370 = !DISubprogram(name: "PyCapsule_GetPointer", scope: !1, file: !1, line: 80, type: !371, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8*)* @PyCapsule_GetPointer, variables: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!94, !42, !32}
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !370, file: !1, line: 80, type: !42)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !370, file: !1, line: 80, type: !32)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !370, file: !1, line: 82, type: !4)
!377 = !DISubprogram(name: "PyCapsule_GetName", scope: !1, file: !1, line: 98, type: !378, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyCapsule_GetName, variables: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!32, !42}
!380 = !{!381, !382}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !377, file: !1, line: 98, type: !42)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !377, file: !1, line: 100, type: !4)
!383 = !DISubprogram(name: "PyCapsule_GetDestructor", scope: !1, file: !1, line: 110, type: !384, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* (%struct._object*)* @PyCapsule_GetDestructor, variables: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!352, !42}
!386 = !{!387, !388}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !383, file: !1, line: 110, type: !42)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !383, file: !1, line: 112, type: !4)
!389 = !DISubprogram(name: "PyCapsule_GetContext", scope: !1, file: !1, line: 122, type: !390, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyCapsule_GetContext, variables: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!94, !42}
!392 = !{!393, !394}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !389, file: !1, line: 122, type: !42)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !389, file: !1, line: 124, type: !4)
!395 = !DISubprogram(name: "PyCapsule_SetPointer", scope: !1, file: !1, line: 134, type: !270, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetPointer, variables: !396)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !395, file: !1, line: 134, type: !42)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pointer", arg: 2, scope: !395, file: !1, line: 134, type: !94)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !395, file: !1, line: 136, type: !4)
!400 = !DISubprogram(name: "PyCapsule_SetName", scope: !1, file: !1, line: 153, type: !364, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetName, variables: !401)
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !400, file: !1, line: 153, type: !42)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !400, file: !1, line: 153, type: !32)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !400, file: !1, line: 155, type: !4)
!405 = !DISubprogram(name: "PyCapsule_SetDestructor", scope: !1, file: !1, line: 167, type: !406, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, void (%struct._object*)*)* @PyCapsule_SetDestructor, variables: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!48, !42, !352}
!408 = !{!409, !410, !411}
!409 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !405, file: !1, line: 167, type: !42)
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 2, scope: !405, file: !1, line: 167, type: !352)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !405, file: !1, line: 169, type: !4)
!412 = !DISubprogram(name: "PyCapsule_SetContext", scope: !1, file: !1, line: 181, type: !270, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetContext, variables: !413)
!413 = !{!414, !415, !416}
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !412, file: !1, line: 181, type: !42)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !412, file: !1, line: 181, type: !94)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !412, file: !1, line: 183, type: !4)
!417 = !DISubprogram(name: "PyCapsule_Import", scope: !1, file: !1, line: 195, type: !418, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @PyCapsule_Import, variables: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!94, !32, !48}
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !430, !433, !435, !438, !440}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !417, file: !1, line: 195, type: !32)
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "no_block", arg: 2, scope: !417, file: !1, line: 195, type: !48)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !417, file: !1, line: 197, type: !42)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !417, file: !1, line: 198, type: !94)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !417, file: !1, line: 199, type: !56)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_length", scope: !417, file: !1, line: 200, type: !99)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_dup", scope: !417, file: !1, line: 201, type: !56)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !429, file: !1, line: 211, type: !56)
!429 = distinct !DILexicalBlock(scope: !417, file: !1, line: 210, column: 19)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object2", scope: !431, file: !1, line: 226, type: !42)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 225, column: 16)
!432 = distinct !DILexicalBlock(scope: !429, file: !1, line: 216, column: 13)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !1, line: 227, type: !42)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 227, column: 13)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !436, file: !1, line: 239, type: !4)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 238, column: 42)
!437 = distinct !DILexicalBlock(scope: !417, file: !1, line: 238, column: 9)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !439, file: !1, line: 248, type: !42)
!439 = distinct !DILexicalBlock(scope: !417, file: !1, line: 248, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 248, type: !42)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 248, column: 5)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 248, column: 5)
!443 = !DISubprogram(name: "name_matches", scope: !1, file: !1, line: 32, type: !444, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, variables: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!48, !32, !32}
!446 = !{!447, !448, !449, !451}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name1", arg: 1, scope: !443, file: !1, line: 32, type: !32)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name2", arg: 2, scope: !443, file: !1, line: 32, type: !32)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !450, file: !1, line: 38, type: !99)
!450 = distinct !DILexicalBlock(scope: !443, file: !1, line: 38, column: 13)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !450, file: !1, line: 38, type: !99)
!452 = !DISubprogram(name: "_is_legal_capsule", scope: !1, file: !1, line: 17, type: !453, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!48, !4, !32}
!455 = !{!456, !457}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "capsule", arg: 1, scope: !452, file: !1, line: 17, type: !4)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invalid_capsule", arg: 2, scope: !452, file: !1, line: 17, type: !32)
!458 = !DISubprogram(name: "capsule_dealloc", scope: !1, file: !1, line: 257, type: !40, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @capsule_dealloc, variables: !459)
!459 = !{!460, !461}
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !458, file: !1, line: 257, type: !42)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !458, file: !1, line: 259, type: !4)
!462 = !DISubprogram(name: "capsule_repr", scope: !1, file: !1, line: 268, type: !121, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @capsule_repr, variables: !463)
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !462, file: !1, line: 268, type: !42)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !462, file: !1, line: 270, type: !4)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !462, file: !1, line: 271, type: !32)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote", scope: !462, file: !1, line: 272, type: !32)
!468 = !{!469, !471}
!469 = !DIGlobalVariable(name: "PyCapsule_Type", scope: !0, file: !1, line: 299, type: !470, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCapsule_Type)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !10, line: 422, baseType: !23)
!471 = !DIGlobalVariable(name: "PyCapsule_Type__doc__", scope: !0, file: !1, line: 288, type: !472, isLocal: true, isDefinition: true, variable: [417 x i8]* @PyCapsule_Type__doc__)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3336, align: 8, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 417)
!475 = !{i32 2, !"Dwarf Version", i32 4}
!476 = !{i32 2, !"Debug Info Version", i32 3}
!477 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!478 = !DIExpression()
!479 = !DILocation(line: 44, column: 21, scope: !355)
!480 = !DILocation(line: 44, column: 42, scope: !355)
!481 = !DILocation(line: 44, column: 69, scope: !355)
!482 = !DILocation(line: 48, column: 10, scope: !483)
!483 = distinct !DILexicalBlock(scope: !355, file: !1, line: 48, column: 9)
!484 = !DILocation(line: 48, column: 9, scope: !355)
!485 = !DILocation(line: 49, column: 25, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 48, column: 19)
!487 = !{!488, !488, i64 0}
!488 = !{!"any pointer", !489, i64 0}
!489 = !{!"omnipotent char", !490, i64 0}
!490 = !{!"Simple C/C++ TBAA"}
!491 = !DILocation(line: 49, column: 9, scope: !486)
!492 = !DILocation(line: 50, column: 9, scope: !486)
!493 = !DILocation(line: 53, column: 15, scope: !355)
!494 = !{!495, !498, i64 32}
!495 = !{!"_typeobject", !496, i64 0, !488, i64 24, !498, i64 32, !498, i64 40, !488, i64 48, !488, i64 56, !488, i64 64, !488, i64 72, !488, i64 80, !488, i64 88, !488, i64 96, !488, i64 104, !488, i64 112, !488, i64 120, !488, i64 128, !488, i64 136, !488, i64 144, !488, i64 152, !488, i64 160, !498, i64 168, !488, i64 176, !488, i64 184, !488, i64 192, !488, i64 200, !498, i64 208, !488, i64 216, !488, i64 224, !488, i64 232, !488, i64 240, !488, i64 248, !488, i64 256, !488, i64 264, !488, i64 272, !488, i64 280, !498, i64 288, !488, i64 296, !488, i64 304, !488, i64 312, !488, i64 320, !488, i64 328, !488, i64 336, !488, i64 344, !488, i64 352, !488, i64 360, !488, i64 368, !488, i64 376, !499, i64 384, !488, i64 392}
!496 = !{!"", !497, i64 0, !498, i64 16}
!497 = !{!"_object", !498, i64 0, !488, i64 8}
!498 = !{!"long", !489, i64 0}
!499 = !{!"int", !489, i64 0}
!500 = !DILocation(line: 54, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !355, file: !1, line: 54, column: 9)
!502 = !DILocation(line: 54, column: 9, scope: !355)
!503 = !DILocation(line: 58, column: 14, scope: !355)
!504 = !DILocation(line: 58, column: 22, scope: !355)
!505 = !{!506, !488, i64 16}
!506 = !{!"", !497, i64 0, !488, i64 16, !488, i64 24, !488, i64 32, !488, i64 40}
!507 = !DILocation(line: 59, column: 14, scope: !355)
!508 = !DILocation(line: 59, column: 19, scope: !355)
!509 = !{!506, !488, i64 24}
!510 = !DILocation(line: 60, column: 14, scope: !355)
!511 = !DILocation(line: 60, column: 22, scope: !355)
!512 = !{!506, !488, i64 32}
!513 = !DILocation(line: 61, column: 14, scope: !355)
!514 = !DILocation(line: 61, column: 25, scope: !355)
!515 = !{!506, !488, i64 40}
!516 = !DILocation(line: 63, column: 5, scope: !355)
!517 = !DILocation(line: 64, column: 1, scope: !355)
!518 = !DILocation(line: 68, column: 29, scope: !363)
!519 = !DILocation(line: 68, column: 44, scope: !363)
!520 = !DILocation(line: 72, column: 21, scope: !363)
!521 = !DILocation(line: 72, column: 29, scope: !363)
!522 = !DILocation(line: 73, column: 13, scope: !363)
!523 = !{!497, !488, i64 8}
!524 = !DILocation(line: 73, column: 43, scope: !363)
!525 = !DILocation(line: 74, column: 22, scope: !363)
!526 = !DILocation(line: 74, column: 30, scope: !363)
!527 = !DILocation(line: 74, column: 38, scope: !363)
!528 = !DILocation(line: 75, column: 35, scope: !363)
!529 = !DILocation(line: 32, column: 26, scope: !443, inlinedAt: !530)
!530 = distinct !DILocation(line: 75, column: 13, scope: !363)
!531 = !DILocation(line: 32, column: 45, scope: !443, inlinedAt: !530)
!532 = !DILocation(line: 34, column: 10, scope: !533, inlinedAt: !530)
!533 = distinct !DILexicalBlock(scope: !443, file: !1, line: 34, column: 9)
!534 = !DILocation(line: 34, column: 20, scope: !535, inlinedAt: !530)
!535 = !DILexicalBlockFile(scope: !533, file: !1, discriminator: 1)
!536 = !DILocation(line: 34, column: 16, scope: !533, inlinedAt: !530)
!537 = !DILocation(line: 36, column: 22, scope: !538, inlinedAt: !530)
!538 = distinct !DILexicalBlock(scope: !533, file: !1, line: 34, column: 27)
!539 = !DILocation(line: 36, column: 9, scope: !538, inlinedAt: !530)
!540 = !DILocation(line: 38, column: 13, scope: !450, inlinedAt: !530)
!541 = !DILocation(line: 38, column: 12, scope: !443, inlinedAt: !530)
!542 = !DILocation(line: 38, column: 5, scope: !443, inlinedAt: !530)
!543 = !DILocation(line: 74, column: 38, scope: !544)
!544 = !DILexicalBlockFile(scope: !363, file: !1, discriminator: 1)
!545 = !DILocation(line: 72, column: 5, scope: !363)
!546 = !DILocation(line: 80, column: 32, scope: !370)
!547 = !DILocation(line: 80, column: 47, scope: !370)
!548 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !549)
!549 = distinct !DILocation(line: 84, column: 10, scope: !550)
!550 = distinct !DILexicalBlock(scope: !370, file: !1, line: 84, column: 9)
!551 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !549)
!552 = distinct !DILexicalBlock(scope: !452, file: !1, line: 19, column: 9)
!553 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !549)
!554 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !549)
!555 = !DILexicalBlockFile(scope: !552, file: !1, discriminator: 1)
!556 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !549)
!557 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !549)
!558 = !DILocation(line: 93, column: 21, scope: !370)
!559 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !549)
!560 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !549)
!561 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !549)
!562 = distinct !DILexicalBlock(scope: !552, file: !1, line: 19, column: 81)
!563 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !549)
!564 = !DILocation(line: 84, column: 9, scope: !370)
!565 = !DILocation(line: 88, column: 38, scope: !566)
!566 = distinct !DILexicalBlock(scope: !370, file: !1, line: 88, column: 9)
!567 = !DILocation(line: 32, column: 26, scope: !443, inlinedAt: !568)
!568 = distinct !DILocation(line: 88, column: 10, scope: !566)
!569 = !DILocation(line: 32, column: 45, scope: !443, inlinedAt: !568)
!570 = !DILocation(line: 34, column: 10, scope: !533, inlinedAt: !568)
!571 = !DILocation(line: 34, column: 20, scope: !535, inlinedAt: !568)
!572 = !DILocation(line: 34, column: 16, scope: !533, inlinedAt: !568)
!573 = !DILocation(line: 36, column: 22, scope: !538, inlinedAt: !568)
!574 = !DILocation(line: 88, column: 9, scope: !370)
!575 = !DILocation(line: 38, column: 13, scope: !450, inlinedAt: !568)
!576 = !DILocation(line: 38, column: 12, scope: !443, inlinedAt: !568)
!577 = !DILocation(line: 89, column: 25, scope: !578)
!578 = distinct !DILexicalBlock(scope: !566, file: !1, line: 88, column: 45)
!579 = !DILocation(line: 89, column: 9, scope: !578)
!580 = !DILocation(line: 90, column: 9, scope: !578)
!581 = !DILocation(line: 94, column: 1, scope: !370)
!582 = !DILocation(line: 98, column: 29, scope: !377)
!583 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !584)
!584 = distinct !DILocation(line: 102, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !377, file: !1, line: 102, column: 9)
!586 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !584)
!587 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !584)
!588 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !584)
!589 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !584)
!590 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !584)
!591 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !584)
!592 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !584)
!593 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !584)
!594 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !584)
!595 = !DILocation(line: 102, column: 9, scope: !377)
!596 = !DILocation(line: 105, column: 21, scope: !377)
!597 = !DILocation(line: 105, column: 5, scope: !377)
!598 = !DILocation(line: 106, column: 1, scope: !377)
!599 = !DILocation(line: 110, column: 35, scope: !383)
!600 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !601)
!601 = distinct !DILocation(line: 114, column: 10, scope: !602)
!602 = distinct !DILexicalBlock(scope: !383, file: !1, line: 114, column: 9)
!603 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !601)
!604 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !601)
!605 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !601)
!606 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !601)
!607 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !601)
!608 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !601)
!609 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !601)
!610 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !601)
!611 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !601)
!612 = !DILocation(line: 114, column: 9, scope: !383)
!613 = !DILocation(line: 117, column: 21, scope: !383)
!614 = !DILocation(line: 117, column: 5, scope: !383)
!615 = !DILocation(line: 118, column: 1, scope: !383)
!616 = !DILocation(line: 122, column: 32, scope: !389)
!617 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !618)
!618 = distinct !DILocation(line: 126, column: 10, scope: !619)
!619 = distinct !DILexicalBlock(scope: !389, file: !1, line: 126, column: 9)
!620 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !618)
!621 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !618)
!622 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !618)
!623 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !618)
!624 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !618)
!625 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !618)
!626 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !618)
!627 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !618)
!628 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !618)
!629 = !DILocation(line: 126, column: 9, scope: !389)
!630 = !DILocation(line: 129, column: 21, scope: !389)
!631 = !DILocation(line: 129, column: 5, scope: !389)
!632 = !DILocation(line: 130, column: 1, scope: !389)
!633 = !DILocation(line: 134, column: 32, scope: !395)
!634 = !DILocation(line: 134, column: 41, scope: !395)
!635 = !DILocation(line: 138, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !395, file: !1, line: 138, column: 9)
!637 = !DILocation(line: 138, column: 9, scope: !395)
!638 = !DILocation(line: 139, column: 25, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !1, line: 138, column: 19)
!640 = !DILocation(line: 139, column: 9, scope: !639)
!641 = !DILocation(line: 140, column: 9, scope: !639)
!642 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !643)
!643 = distinct !DILocation(line: 143, column: 10, scope: !644)
!644 = distinct !DILexicalBlock(scope: !395, file: !1, line: 143, column: 9)
!645 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !643)
!646 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !643)
!647 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !643)
!648 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !643)
!649 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !643)
!650 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !643)
!651 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !643)
!652 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !643)
!653 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !643)
!654 = !DILocation(line: 143, column: 9, scope: !395)
!655 = !DILocation(line: 147, column: 22, scope: !395)
!656 = !DILocation(line: 148, column: 5, scope: !395)
!657 = !DILocation(line: 149, column: 1, scope: !395)
!658 = !DILocation(line: 153, column: 29, scope: !400)
!659 = !DILocation(line: 153, column: 44, scope: !400)
!660 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !661)
!661 = distinct !DILocation(line: 157, column: 10, scope: !662)
!662 = distinct !DILexicalBlock(scope: !400, file: !1, line: 157, column: 9)
!663 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !661)
!664 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !661)
!665 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !661)
!666 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !661)
!667 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !661)
!668 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !661)
!669 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !661)
!670 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !661)
!671 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !661)
!672 = !DILocation(line: 157, column: 9, scope: !400)
!673 = !DILocation(line: 161, column: 14, scope: !400)
!674 = !DILocation(line: 161, column: 19, scope: !400)
!675 = !DILocation(line: 162, column: 5, scope: !400)
!676 = !DILocation(line: 163, column: 1, scope: !400)
!677 = !DILocation(line: 167, column: 35, scope: !405)
!678 = !DILocation(line: 167, column: 59, scope: !405)
!679 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !680)
!680 = distinct !DILocation(line: 171, column: 10, scope: !681)
!681 = distinct !DILexicalBlock(scope: !405, file: !1, line: 171, column: 9)
!682 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !680)
!683 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !680)
!684 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !680)
!685 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !680)
!686 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !680)
!687 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !680)
!688 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !680)
!689 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !680)
!690 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !680)
!691 = !DILocation(line: 171, column: 9, scope: !405)
!692 = !DILocation(line: 175, column: 14, scope: !405)
!693 = !DILocation(line: 175, column: 25, scope: !405)
!694 = !DILocation(line: 176, column: 5, scope: !405)
!695 = !DILocation(line: 177, column: 1, scope: !405)
!696 = !DILocation(line: 181, column: 32, scope: !412)
!697 = !DILocation(line: 181, column: 41, scope: !412)
!698 = !DILocation(line: 17, column: 51, scope: !452, inlinedAt: !699)
!699 = distinct !DILocation(line: 185, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !412, file: !1, line: 185, column: 9)
!701 = !DILocation(line: 19, column: 10, scope: !552, inlinedAt: !699)
!702 = !DILocation(line: 19, column: 18, scope: !552, inlinedAt: !699)
!703 = !DILocation(line: 19, column: 22, scope: !555, inlinedAt: !699)
!704 = !DILocation(line: 19, column: 52, scope: !552, inlinedAt: !699)
!705 = !DILocation(line: 19, column: 64, scope: !552, inlinedAt: !699)
!706 = !DILocation(line: 19, column: 72, scope: !552, inlinedAt: !699)
!707 = !DILocation(line: 19, column: 9, scope: !452, inlinedAt: !699)
!708 = !DILocation(line: 20, column: 25, scope: !562, inlinedAt: !699)
!709 = !DILocation(line: 20, column: 9, scope: !562, inlinedAt: !699)
!710 = !DILocation(line: 185, column: 9, scope: !412)
!711 = !DILocation(line: 189, column: 14, scope: !412)
!712 = !DILocation(line: 189, column: 22, scope: !412)
!713 = !DILocation(line: 190, column: 5, scope: !412)
!714 = !DILocation(line: 191, column: 1, scope: !412)
!715 = !DILocation(line: 195, column: 30, scope: !417)
!716 = !DILocation(line: 195, column: 40, scope: !417)
!717 = !DILocation(line: 197, column: 15, scope: !417)
!718 = !DILocation(line: 198, column: 11, scope: !417)
!719 = !DILocation(line: 200, column: 27, scope: !417)
!720 = !DILocation(line: 200, column: 40, scope: !417)
!721 = !DILocation(line: 200, column: 12, scope: !417)
!722 = !DILocation(line: 201, column: 30, scope: !417)
!723 = !DILocation(line: 201, column: 11, scope: !417)
!724 = !DILocation(line: 203, column: 10, scope: !725)
!725 = distinct !DILexicalBlock(scope: !417, file: !1, line: 203, column: 9)
!726 = !DILocation(line: 203, column: 9, scope: !417)
!727 = !DILocation(line: 207, column: 5, scope: !417)
!728 = !DILocation(line: 199, column: 11, scope: !417)
!729 = !DILocation(line: 217, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 217, column: 17)
!731 = distinct !DILexicalBlock(scope: !432, file: !1, line: 216, column: 29)
!732 = !DILocation(line: 217, column: 17, scope: !731)
!733 = !DILocation(line: 211, column: 21, scope: !429)
!734 = !DILocation(line: 211, column: 15, scope: !429)
!735 = !DILocation(line: 212, column: 13, scope: !736)
!736 = distinct !DILexicalBlock(scope: !429, file: !1, line: 212, column: 13)
!737 = !DILocation(line: 212, column: 13, scope: !429)
!738 = !DILocation(line: 213, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !736, file: !1, line: 212, column: 18)
!740 = !DILocation(line: 213, column: 20, scope: !739)
!741 = !{!489, !489, i64 0}
!742 = !DILocation(line: 214, column: 9, scope: !739)
!743 = !DILocation(line: 216, column: 20, scope: !432)
!744 = !DILocation(line: 216, column: 13, scope: !429)
!745 = !DILocation(line: 226, column: 33, scope: !431)
!746 = !DILocation(line: 226, column: 23, scope: !431)
!747 = !DILocation(line: 227, column: 13, scope: !748)
!748 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 1)
!749 = !DILocation(line: 227, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !434, file: !1, line: 227, column: 13)
!751 = !{!497, !498, i64 0}
!752 = !DILocation(line: 227, column: 13, scope: !434)
!753 = !DILocation(line: 227, column: 13, scope: !754)
!754 = !DILexicalBlockFile(scope: !750, file: !1, discriminator: 3)
!755 = !{!495, !488, i64 48}
!756 = !DILocation(line: 230, column: 14, scope: !757)
!757 = distinct !DILexicalBlock(scope: !429, file: !1, line: 230, column: 13)
!758 = !DILocation(line: 220, column: 26, scope: !759)
!759 = distinct !DILexicalBlock(scope: !730, file: !1, line: 219, column: 20)
!760 = !DILocation(line: 221, column: 22, scope: !761)
!761 = distinct !DILexicalBlock(scope: !759, file: !1, line: 221, column: 21)
!762 = !DILocation(line: 221, column: 21, scope: !759)
!763 = !DILocation(line: 210, column: 5, scope: !417)
!764 = !DILocation(line: 218, column: 26, scope: !765)
!765 = distinct !DILexicalBlock(scope: !730, file: !1, line: 217, column: 27)
!766 = !DILocation(line: 219, column: 13, scope: !765)
!767 = !DILocation(line: 222, column: 34, scope: !768)
!768 = distinct !DILexicalBlock(scope: !761, file: !1, line: 221, column: 30)
!769 = !DILocation(line: 222, column: 21, scope: !768)
!770 = !DILocation(line: 68, column: 29, scope: !363, inlinedAt: !771)
!771 = distinct !DILocation(line: 238, column: 9, scope: !437)
!772 = !DILocation(line: 68, column: 44, scope: !363, inlinedAt: !771)
!773 = !DILocation(line: 73, column: 13, scope: !363, inlinedAt: !771)
!774 = !DILocation(line: 73, column: 43, scope: !363, inlinedAt: !771)
!775 = !DILocation(line: 74, column: 22, scope: !363, inlinedAt: !771)
!776 = !DILocation(line: 240, column: 33, scope: !436)
!777 = !DILocation(line: 74, column: 30, scope: !363, inlinedAt: !771)
!778 = !DILocation(line: 74, column: 38, scope: !363, inlinedAt: !771)
!779 = !DILocation(line: 75, column: 35, scope: !363, inlinedAt: !771)
!780 = !DILocation(line: 32, column: 26, scope: !443, inlinedAt: !781)
!781 = distinct !DILocation(line: 75, column: 13, scope: !363, inlinedAt: !771)
!782 = !DILocation(line: 32, column: 45, scope: !443, inlinedAt: !781)
!783 = !DILocation(line: 34, column: 10, scope: !533, inlinedAt: !781)
!784 = !DILocation(line: 34, column: 20, scope: !535, inlinedAt: !781)
!785 = !DILocation(line: 34, column: 16, scope: !533, inlinedAt: !781)
!786 = !DILocation(line: 36, column: 22, scope: !538, inlinedAt: !781)
!787 = !DILocation(line: 238, column: 9, scope: !417)
!788 = !DILocation(line: 38, column: 13, scope: !450, inlinedAt: !781)
!789 = !DILocation(line: 38, column: 12, scope: !443, inlinedAt: !781)
!790 = !DILocation(line: 242, column: 22, scope: !791)
!791 = distinct !DILexicalBlock(scope: !437, file: !1, line: 241, column: 12)
!792 = !DILocation(line: 242, column: 9, scope: !791)
!793 = !DILocation(line: 248, column: 5, scope: !794)
!794 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!795 = !DILocation(line: 248, column: 5, scope: !796)
!796 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!797 = !DILocation(line: 248, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !441, file: !1, line: 248, column: 5)
!799 = !DILocation(line: 248, column: 5, scope: !441)
!800 = !DILocation(line: 248, column: 5, scope: !801)
!801 = !DILexicalBlockFile(scope: !798, file: !1, discriminator: 6)
!802 = !DILocation(line: 250, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !1, line: 249, column: 19)
!804 = distinct !DILexicalBlock(scope: !417, file: !1, line: 249, column: 9)
!805 = !DILocation(line: 252, column: 5, scope: !417)
!806 = !DILocation(line: 253, column: 1, scope: !417)
!807 = !DILocation(line: 257, column: 27, scope: !458)
!808 = !DILocation(line: 260, column: 18, scope: !809)
!809 = distinct !DILexicalBlock(scope: !458, file: !1, line: 260, column: 9)
!810 = !DILocation(line: 260, column: 9, scope: !809)
!811 = !DILocation(line: 260, column: 9, scope: !458)
!812 = !DILocation(line: 261, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !1, line: 260, column: 30)
!814 = !DILocation(line: 262, column: 5, scope: !813)
!815 = !DILocation(line: 263, column: 18, scope: !458)
!816 = !DILocation(line: 263, column: 5, scope: !458)
!817 = !DILocation(line: 264, column: 1, scope: !458)
!818 = !DILocation(line: 268, column: 24, scope: !462)
!819 = !DILocation(line: 274, column: 18, scope: !820)
!820 = distinct !DILexicalBlock(scope: !462, file: !1, line: 274, column: 9)
!821 = !DILocation(line: 274, column: 9, scope: !820)
!822 = !DILocation(line: 282, column: 12, scope: !462)
!823 = !DILocation(line: 282, column: 5, scope: !462)
