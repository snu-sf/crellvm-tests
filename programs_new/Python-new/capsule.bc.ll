; ModuleID = 'programs_new/Python-new/capsule.bc.ll'
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
%struct.PyCapsule = type { %struct._object, i8*, i8*, i8*, void (%struct._object*)* }

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
  %retval = alloca %struct._object*, align 8
  %pointer.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %destructor.addr = alloca void (%struct._object*)*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pointer, i8** %pointer.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %pointer.addr, metadata !360, metadata !483), !dbg !484
  store i8* %name, i8** %name.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !361, metadata !483), !dbg !485
  store void (%struct._object*)* %destructor, void (%struct._object*)** %destructor.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata void (%struct._object*)** %destructor.addr, metadata !362, metadata !483), !dbg !486
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !487
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !487
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !363, metadata !483), !dbg !488
  %1 = load i8*, i8** %pointer.addr, align 8, !dbg !489, !tbaa !479
  %tobool = icmp ne i8* %1, null, !dbg !489
  br i1 %tobool, label %if.end, label %if.then, !dbg !491

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !492, !tbaa !479
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)), !dbg !494
  store %struct._object* null, %struct._object** %retval, !dbg !495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !495

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCapsule_Type, i32 0, i32 2), align 8, !dbg !496, !tbaa !497
  %call = call i8* @PyObject_Malloc(i64 %3), !dbg !503
  %4 = bitcast i8* %call to %struct._object*, !dbg !504
  %call1 = call %struct._object* @PyObject_Init(%struct._object* %4, %struct._typeobject* @PyCapsule_Type), !dbg !505
  %5 = bitcast %struct._object* %call1 to %struct.PyCapsule*, !dbg !506
  store %struct.PyCapsule* %5, %struct.PyCapsule** %capsule, align 8, !dbg !507, !tbaa !479
  %6 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !508, !tbaa !479
  %cmp = icmp eq %struct.PyCapsule* %6, null, !dbg !510
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !511

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !512
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !512

if.end.3:                                         ; preds = %if.end
  %7 = load i8*, i8** %pointer.addr, align 8, !dbg !514, !tbaa !479
  %8 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !515, !tbaa !479
  %pointer4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %8, i32 0, i32 1, !dbg !516
  store i8* %7, i8** %pointer4, align 8, !dbg !517, !tbaa !518
  %9 = load i8*, i8** %name.addr, align 8, !dbg !520, !tbaa !479
  %10 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !521, !tbaa !479
  %name5 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %10, i32 0, i32 2, !dbg !522
  store i8* %9, i8** %name5, align 8, !dbg !523, !tbaa !524
  %11 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !525, !tbaa !479
  %context = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %11, i32 0, i32 3, !dbg !526
  store i8* null, i8** %context, align 8, !dbg !527, !tbaa !528
  %12 = load void (%struct._object*)*, void (%struct._object*)** %destructor.addr, align 8, !dbg !529, !tbaa !479
  %13 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !530, !tbaa !479
  %destructor6 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %13, i32 0, i32 4, !dbg !531
  store void (%struct._object*)* %12, void (%struct._object*)** %destructor6, align 8, !dbg !532, !tbaa !533
  %14 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !534, !tbaa !479
  %15 = bitcast %struct.PyCapsule* %14 to %struct._object*, !dbg !535
  store %struct._object* %15, %struct._object** %retval, !dbg !536
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !536

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %16 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !537
  %17 = load %struct._object*, %struct._object** %retval, !dbg !537
  ret %struct._object* %17, !dbg !537
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #3

declare i8* @PyObject_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_IsValid(%struct._object* %o, i8* %name) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !368, metadata !483), !dbg !538
  store i8* %name, i8** %name.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !369, metadata !483), !dbg !539
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !540
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !540
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !370, metadata !483), !dbg !541
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !542, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !543
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !541, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !544, !tbaa !479
  %cmp = icmp ne %struct.PyCapsule* %3, null, !dbg !545
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !546

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !547, !tbaa !479
  %5 = bitcast %struct.PyCapsule* %4 to %struct._object*, !dbg !548
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !549
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !549, !tbaa !550
  %cmp1 = icmp eq %struct._typeobject* %6, @PyCapsule_Type, !dbg !551
  br i1 %cmp1, label %land.lhs.true.2, label %land.end, !dbg !552

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !553, !tbaa !479
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %7, i32 0, i32 1, !dbg !554
  %8 = load i8*, i8** %pointer, align 8, !dbg !554, !tbaa !518
  %cmp3 = icmp ne i8* %8, null, !dbg !555
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !556

land.rhs:                                         ; preds = %land.lhs.true.2
  %9 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !557, !tbaa !479
  %name4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %9, i32 0, i32 2, !dbg !558
  %10 = load i8*, i8** %name4, align 8, !dbg !558, !tbaa !524
  %11 = load i8*, i8** %name.addr, align 8, !dbg !559, !tbaa !479
  %call = call i32 @name_matches(i8* %10, i8* %11), !dbg !560
  %tobool = icmp ne i32 %call, 0, !dbg !556
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %12 to i32, !dbg !561
  %13 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !563
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !563
  ret i32 %land.ext, !dbg !564
}

; Function Attrs: nounwind uwtable
define internal i32 @name_matches(i8* %name1, i8* %name2) #0 {
entry:
  %retval = alloca i32, align 4
  %name1.addr = alloca i8*, align 8
  %name2.addr = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %name1, i8** %name1.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name1.addr, metadata !448, metadata !483), !dbg !565
  store i8* %name2, i8** %name2.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name2.addr, metadata !449, metadata !483), !dbg !566
  %0 = load i8*, i8** %name1.addr, align 8, !dbg !567, !tbaa !479
  %tobool = icmp ne i8* %0, null, !dbg !567
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !569

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %name2.addr, align 8, !dbg !570, !tbaa !479
  %tobool1 = icmp ne i8* %1, null, !dbg !570
  br i1 %tobool1, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %name1.addr, align 8, !dbg !573, !tbaa !479
  %3 = load i8*, i8** %name2.addr, align 8, !dbg !575, !tbaa !479
  %cmp = icmp eq i8* %2, %3, !dbg !576
  %conv = zext i1 %cmp to i32, !dbg !576
  store i32 %conv, i32* %retval, !dbg !577
  br label %return, !dbg !577

if.end:                                           ; preds = %lor.lhs.false
  %4 = bitcast i64* %__s1_len to i8*, !dbg !578
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !578
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !450, metadata !483), !dbg !579
  %5 = bitcast i64* %__s2_len to i8*, !dbg !578
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !578
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !452, metadata !483), !dbg !580
  %6 = load i8*, i8** %name1.addr, align 8, !dbg !581, !tbaa !479
  %7 = load i8*, i8** %name2.addr, align 8, !dbg !582, !tbaa !479
  %call = call i32 @strcmp(i8* %6, i8* %7) #2, !dbg !583
  store i32 %call, i32* %tmp, !dbg !578, !tbaa !584
  %8 = bitcast i64* %__s2_len to i8*, !dbg !585
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !585
  %9 = bitcast i64* %__s1_len to i8*, !dbg !585
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !585
  %10 = load i32, i32* %tmp, !dbg !586, !tbaa !584
  %tobool2 = icmp ne i32 %10, 0, !dbg !587
  %lnot = xor i1 %tobool2, true, !dbg !587
  %lnot.ext = zext i1 %lnot to i32, !dbg !587
  store i32 %lnot.ext, i32* %retval, !dbg !588
  br label %return, !dbg !588

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, !dbg !589
  ret i32 %11, !dbg !589
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetPointer(%struct._object* %o, i8* %name) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !375, metadata !483), !dbg !590
  store i8* %name, i8** %name.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !376, metadata !483), !dbg !591
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !592
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !592
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !377, metadata !483), !dbg !593
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !594, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !595
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !593, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !596, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0)), !dbg !598
  %tobool = icmp ne i32 %call, 0, !dbg !598
  br i1 %tobool, label %if.end, label %if.then, !dbg !599

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !600
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !600

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !602, !tbaa !479
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !604, !tbaa !479
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 2, !dbg !605
  %6 = load i8*, i8** %name1, align 8, !dbg !605, !tbaa !524
  %call2 = call i32 @name_matches(i8* %4, i8* %6), !dbg !606
  %tobool3 = icmp ne i32 %call2, 0, !dbg !606
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !607

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !608, !tbaa !479
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)), !dbg !610
  store i8* null, i8** %retval, !dbg !611
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !611

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !612, !tbaa !479
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %8, i32 0, i32 1, !dbg !613
  %9 = load i8*, i8** %pointer, align 8, !dbg !613, !tbaa !518
  store i8* %9, i8** %retval, !dbg !614
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !614

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %10 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !615
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !615
  %11 = load i8*, i8** %retval, !dbg !615
  ret i8* %11, !dbg !615
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_legal_capsule(%struct.PyCapsule* %capsule, i8* %invalid_capsule) #0 {
entry:
  %retval = alloca i32, align 4
  %capsule.addr = alloca %struct.PyCapsule*, align 8
  %invalid_capsule.addr = alloca i8*, align 8
  store %struct.PyCapsule* %capsule, %struct.PyCapsule** %capsule.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule.addr, metadata !457, metadata !483), !dbg !616
  store i8* %invalid_capsule, i8** %invalid_capsule.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %invalid_capsule.addr, metadata !458, metadata !483), !dbg !617
  %0 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8, !dbg !618, !tbaa !479
  %tobool = icmp ne %struct.PyCapsule* %0, null, !dbg !618
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !620

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8, !dbg !621, !tbaa !479
  %2 = bitcast %struct.PyCapsule* %1 to %struct._object*, !dbg !623
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !624
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !624, !tbaa !550
  %cmp = icmp eq %struct._typeobject* %3, @PyCapsule_Type, !dbg !625
  br i1 %cmp, label %lor.lhs.false.1, label %if.then, !dbg !626

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule.addr, align 8, !dbg !627, !tbaa !479
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 1, !dbg !629
  %5 = load i8*, i8** %pointer, align 8, !dbg !629, !tbaa !518
  %cmp2 = icmp eq i8* %5, null, !dbg !630
  br i1 %cmp2, label %if.then, label %if.end, !dbg !631

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !632, !tbaa !479
  %7 = load i8*, i8** %invalid_capsule.addr, align 8, !dbg !634, !tbaa !479
  call void @PyErr_SetString(%struct._object* %6, i8* %7), !dbg !635
  store i32 0, i32* %retval, !dbg !636
  br label %return, !dbg !636

if.end:                                           ; preds = %lor.lhs.false.1
  store i32 1, i32* %retval, !dbg !637
  br label %return, !dbg !637

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, !dbg !638
  ret i32 %8, !dbg !638
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetName(%struct._object* %o) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !382, metadata !483), !dbg !639
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !640
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !640
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !383, metadata !483), !dbg !641
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !642, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !643
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !641, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !644, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0)), !dbg !646
  %tobool = icmp ne i32 %call, 0, !dbg !646
  br i1 %tobool, label %if.end, label %if.then, !dbg !647

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !648
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !648

if.end:                                           ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !650, !tbaa !479
  %name = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 2, !dbg !651
  %5 = load i8*, i8** %name, align 8, !dbg !651, !tbaa !524
  store i8* %5, i8** %retval, !dbg !652
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !652

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !653
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !653
  %7 = load i8*, i8** %retval, !dbg !653
  ret i8* %7, !dbg !653
}

; Function Attrs: nounwind uwtable
define void (%struct._object*)* @PyCapsule_GetDestructor(%struct._object* %o) #0 {
entry:
  %retval = alloca void (%struct._object*)*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !388, metadata !483), !dbg !654
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !655
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !655
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !389, metadata !483), !dbg !656
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !657, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !658
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !656, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !659, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0)), !dbg !661
  %tobool = icmp ne i32 %call, 0, !dbg !661
  br i1 %tobool, label %if.end, label %if.then, !dbg !662

if.then:                                          ; preds = %entry
  store void (%struct._object*)* null, void (%struct._object*)** %retval, !dbg !663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !663

if.end:                                           ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !665, !tbaa !479
  %destructor = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 4, !dbg !666
  %5 = load void (%struct._object*)*, void (%struct._object*)** %destructor, align 8, !dbg !666, !tbaa !533
  store void (%struct._object*)* %5, void (%struct._object*)** %retval, !dbg !667
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !667

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !668
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !668
  %7 = load void (%struct._object*)*, void (%struct._object*)** %retval, !dbg !668
  ret void (%struct._object*)* %7, !dbg !668
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_GetContext(%struct._object* %o) #0 {
entry:
  %retval = alloca i8*, align 8
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !394, metadata !483), !dbg !669
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !670
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !670
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !395, metadata !483), !dbg !671
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !672, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !673
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !671, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !674, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0)), !dbg !676
  %tobool = icmp ne i32 %call, 0, !dbg !676
  br i1 %tobool, label %if.end, label %if.then, !dbg !677

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !678

if.end:                                           ; preds = %entry
  %4 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !680, !tbaa !479
  %context = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %4, i32 0, i32 3, !dbg !681
  %5 = load i8*, i8** %context, align 8, !dbg !681, !tbaa !528
  store i8* %5, i8** %retval, !dbg !682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !682

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !683
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !683
  %7 = load i8*, i8** %retval, !dbg !683
  ret i8* %7, !dbg !683
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetPointer(%struct._object* %o, i8* %pointer) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %pointer.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !398, metadata !483), !dbg !684
  store i8* %pointer, i8** %pointer.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %pointer.addr, metadata !399, metadata !483), !dbg !685
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !686
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !686
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !400, metadata !483), !dbg !687
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !688, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !689
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !687, !tbaa !479
  %3 = load i8*, i8** %pointer.addr, align 8, !dbg !690, !tbaa !479
  %tobool = icmp ne i8* %3, null, !dbg !690
  br i1 %tobool, label %if.end, label %if.then, !dbg !692

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !693, !tbaa !479
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i32 0, i32 0)), !dbg !695
  store i32 -1, i32* %retval, !dbg !696
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !696

if.end:                                           ; preds = %entry
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !697, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %5, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i32 0, i32 0)), !dbg !699
  %tobool1 = icmp ne i32 %call, 0, !dbg !699
  br i1 %tobool1, label %if.end.3, label %if.then.2, !dbg !700

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !701
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !701

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %pointer.addr, align 8, !dbg !703, !tbaa !479
  %7 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !704, !tbaa !479
  %pointer4 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %7, i32 0, i32 1, !dbg !705
  store i8* %6, i8** %pointer4, align 8, !dbg !706, !tbaa !518
  store i32 0, i32* %retval, !dbg !707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !707

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %8 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !708
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !708
  %9 = load i32, i32* %retval, !dbg !708
  ret i32 %9, !dbg !708
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetName(%struct._object* %o, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !403, metadata !483), !dbg !709
  store i8* %name, i8** %name.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !404, metadata !483), !dbg !710
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !711
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !711
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !405, metadata !483), !dbg !712
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !713, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !714
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !712, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !715, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0)), !dbg !717
  %tobool = icmp ne i32 %call, 0, !dbg !717
  br i1 %tobool, label %if.end, label %if.then, !dbg !718

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !719

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !721, !tbaa !479
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !722, !tbaa !479
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 2, !dbg !723
  store i8* %4, i8** %name1, align 8, !dbg !724, !tbaa !524
  store i32 0, i32* %retval, !dbg !725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !725

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !726
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !726
  %7 = load i32, i32* %retval, !dbg !726
  ret i32 %7, !dbg !726
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetDestructor(%struct._object* %o, void (%struct._object*)* %destructor) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %destructor.addr = alloca void (%struct._object*)*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !410, metadata !483), !dbg !727
  store void (%struct._object*)* %destructor, void (%struct._object*)** %destructor.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata void (%struct._object*)** %destructor.addr, metadata !411, metadata !483), !dbg !728
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !729
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !729
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !412, metadata !483), !dbg !730
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !731, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !732
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !730, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !733, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0)), !dbg !735
  %tobool = icmp ne i32 %call, 0, !dbg !735
  br i1 %tobool, label %if.end, label %if.then, !dbg !736

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !737

if.end:                                           ; preds = %entry
  %4 = load void (%struct._object*)*, void (%struct._object*)** %destructor.addr, align 8, !dbg !739, !tbaa !479
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !740, !tbaa !479
  %destructor1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 4, !dbg !741
  store void (%struct._object*)* %4, void (%struct._object*)** %destructor1, align 8, !dbg !742, !tbaa !533
  store i32 0, i32* %retval, !dbg !743
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !743

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !744
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !744
  %7 = load i32, i32* %retval, !dbg !744
  ret i32 %7, !dbg !744
}

; Function Attrs: nounwind uwtable
define i32 @PyCapsule_SetContext(%struct._object* %o, i8* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !415, metadata !483), !dbg !745
  store i8* %context, i8** %context.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !416, metadata !483), !dbg !746
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !747
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !747
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !417, metadata !483), !dbg !748
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !749, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !750
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !748, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !751, !tbaa !479
  %call = call i32 @_is_legal_capsule(%struct.PyCapsule* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i32 0, i32 0)), !dbg !753
  %tobool = icmp ne i32 %call, 0, !dbg !753
  br i1 %tobool, label %if.end, label %if.then, !dbg !754

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !755
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !755

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %context.addr, align 8, !dbg !757, !tbaa !479
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !758, !tbaa !479
  %context1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 3, !dbg !759
  store i8* %4, i8** %context1, align 8, !dbg !760, !tbaa !528
  store i32 0, i32* %retval, !dbg !761
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !761

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !762
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !762
  %7 = load i32, i32* %retval, !dbg !762
  ret i32 %7, !dbg !762
}

; Function Attrs: nounwind uwtable
define i8* @PyCapsule_Import(i8* %name, i32 %no_block) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %no_block.addr = alloca i32, align 4
  %object = alloca %struct._object*, align 8
  %return_value = alloca i8*, align 8
  %trace = alloca i8*, align 8
  %name_length = alloca i64, align 8
  %name_dup = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %dot = alloca i8*, align 8
  %object2 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !422, metadata !483), !dbg !763
  store i32 %no_block, i32* %no_block.addr, align 4, !tbaa !584
  call void @llvm.dbg.declare(metadata i32* %no_block.addr, metadata !423, metadata !483), !dbg !764
  %0 = bitcast %struct._object** %object to i8*, !dbg !765
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !765
  call void @llvm.dbg.declare(metadata %struct._object** %object, metadata !424, metadata !483), !dbg !766
  store %struct._object* null, %struct._object** %object, align 8, !dbg !766, !tbaa !479
  %1 = bitcast i8** %return_value to i8*, !dbg !767
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !767
  call void @llvm.dbg.declare(metadata i8** %return_value, metadata !425, metadata !483), !dbg !768
  store i8* null, i8** %return_value, align 8, !dbg !768, !tbaa !479
  %2 = bitcast i8** %trace to i8*, !dbg !769
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !769
  call void @llvm.dbg.declare(metadata i8** %trace, metadata !426, metadata !483), !dbg !770
  %3 = bitcast i64* %name_length to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !771
  call void @llvm.dbg.declare(metadata i64* %name_length, metadata !427, metadata !483), !dbg !772
  %4 = load i8*, i8** %name.addr, align 8, !dbg !773, !tbaa !479
  %call = call i64 @strlen(i8* %4) #6, !dbg !774
  %add = add i64 %call, 1, !dbg !775
  %mul = mul i64 %add, 1, !dbg !776
  store i64 %mul, i64* %name_length, align 8, !dbg !772, !tbaa !777
  %5 = bitcast i8** %name_dup to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !778
  call void @llvm.dbg.declare(metadata i8** %name_dup, metadata !428, metadata !483), !dbg !779
  %6 = load i64, i64* %name_length, align 8, !dbg !780, !tbaa !777
  %call1 = call i8* @PyMem_Malloc(i64 %6), !dbg !781
  store i8* %call1, i8** %name_dup, align 8, !dbg !779, !tbaa !479
  %7 = load i8*, i8** %name_dup, align 8, !dbg !782, !tbaa !479
  %tobool = icmp ne i8* %7, null, !dbg !782
  br i1 %tobool, label %if.end, label %if.then, !dbg !784

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !785
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54, !dbg !785

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %name_dup, align 8, !dbg !787, !tbaa !479
  %9 = load i8*, i8** %name.addr, align 8, !dbg !788, !tbaa !479
  %10 = load i64, i64* %name_length, align 8, !dbg !789, !tbaa !777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %10, i32 1, i1 false), !dbg !790
  %11 = load i8*, i8** %name_dup, align 8, !dbg !791, !tbaa !479
  store i8* %11, i8** %trace, align 8, !dbg !792, !tbaa !479
  br label %while.cond, !dbg !793

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %12 = load i8*, i8** %trace, align 8, !dbg !794, !tbaa !479
  %tobool2 = icmp ne i8* %12, null, !dbg !793
  br i1 %tobool2, label %while.body, label %while.end, !dbg !793

while.body:                                       ; preds = %while.cond
  %13 = bitcast i8** %dot to i8*, !dbg !797
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !797
  call void @llvm.dbg.declare(metadata i8** %dot, metadata !429, metadata !483), !dbg !798
  %14 = load i8*, i8** %trace, align 8, !dbg !799, !tbaa !479
  %call3 = call i8* @strchr(i8* %14, i32 46) #2, !dbg !800
  store i8* %call3, i8** %dot, align 8, !dbg !798, !tbaa !479
  %15 = load i8*, i8** %dot, align 8, !dbg !801, !tbaa !479
  %tobool4 = icmp ne i8* %15, null, !dbg !801
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !803

if.then.5:                                        ; preds = %while.body
  %16 = load i8*, i8** %dot, align 8, !dbg !804, !tbaa !479
  %incdec.ptr = getelementptr i8, i8* %16, i32 1, !dbg !804
  store i8* %incdec.ptr, i8** %dot, align 8, !dbg !804, !tbaa !479
  store i8 0, i8* %16, align 1, !dbg !806, !tbaa !807
  br label %if.end.6, !dbg !808

if.end.6:                                         ; preds = %if.then.5, %while.body
  %17 = load %struct._object*, %struct._object** %object, align 8, !dbg !809, !tbaa !479
  %cmp = icmp eq %struct._object* %17, null, !dbg !810
  br i1 %cmp, label %if.then.7, label %if.else.17, !dbg !811

if.then.7:                                        ; preds = %if.end.6
  %18 = load i32, i32* %no_block.addr, align 4, !dbg !812, !tbaa !584
  %tobool8 = icmp ne i32 %18, 0, !dbg !812
  br i1 %tobool8, label %if.then.9, label %if.else, !dbg !815

if.then.9:                                        ; preds = %if.then.7
  %19 = load i8*, i8** %trace, align 8, !dbg !816, !tbaa !479
  %call10 = call %struct._object* @PyImport_ImportModuleNoBlock(i8* %19), !dbg !818
  store %struct._object* %call10, %struct._object** %object, align 8, !dbg !819, !tbaa !479
  br label %if.end.16, !dbg !820

if.else:                                          ; preds = %if.then.7
  %20 = load i8*, i8** %trace, align 8, !dbg !821, !tbaa !479
  %call11 = call %struct._object* @PyImport_ImportModule(i8* %20), !dbg !823
  store %struct._object* %call11, %struct._object** %object, align 8, !dbg !824, !tbaa !479
  %21 = load %struct._object*, %struct._object** %object, align 8, !dbg !825, !tbaa !479
  %tobool12 = icmp ne %struct._object* %21, null, !dbg !825
  br i1 %tobool12, label %if.end.15, label %if.then.13, !dbg !827

if.then.13:                                       ; preds = %if.else
  %22 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !828, !tbaa !479
  %23 = load i8*, i8** %trace, align 8, !dbg !830, !tbaa !479
  %call14 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i8* %23), !dbg !831
  br label %if.end.15, !dbg !832

if.end.15:                                        ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  br label %if.end.23, !dbg !833

if.else.17:                                       ; preds = %if.end.6
  %24 = bitcast %struct._object** %object2 to i8*, !dbg !834
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !834
  call void @llvm.dbg.declare(metadata %struct._object** %object2, metadata !431, metadata !483), !dbg !835
  %25 = load %struct._object*, %struct._object** %object, align 8, !dbg !836, !tbaa !479
  %26 = load i8*, i8** %trace, align 8, !dbg !837, !tbaa !479
  %call18 = call %struct._object* @PyObject_GetAttrString(%struct._object* %25, i8* %26), !dbg !838
  store %struct._object* %call18, %struct._object** %object2, align 8, !dbg !835, !tbaa !479
  br label %do.body, !dbg !839

do.body:                                          ; preds = %if.else.17
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !840
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !840
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !434, metadata !483), !dbg !842
  %28 = load %struct._object*, %struct._object** %object, align 8, !dbg !843, !tbaa !479
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !842, !tbaa !479
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !844, !tbaa !479
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !846
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !847, !tbaa !848
  %dec = add i64 %30, -1, !dbg !847
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !847, !tbaa !848
  %cmp19 = icmp ne i64 %dec, 0, !dbg !849
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !850

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !851

if.else.21:                                       ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !853, !tbaa !479
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !855
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !855, !tbaa !550
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !856
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !856, !tbaa !857
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !858, !tbaa !479
  call void %33(%struct._object* %34), !dbg !859
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !860
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !860
  br label %do.cond, !dbg !862

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !863

do.end:                                           ; preds = %do.cond
  %36 = load %struct._object*, %struct._object** %object2, align 8, !dbg !865, !tbaa !479
  store %struct._object* %36, %struct._object** %object, align 8, !dbg !866, !tbaa !479
  %37 = bitcast %struct._object** %object2 to i8*, !dbg !867
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !867
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %if.end.16
  %38 = load %struct._object*, %struct._object** %object, align 8, !dbg !868, !tbaa !479
  %tobool24 = icmp ne %struct._object* %38, null, !dbg !868
  br i1 %tobool24, label %if.end.26, label %if.then.25, !dbg !870

if.then.25:                                       ; preds = %if.end.23
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !871

if.end.26:                                        ; preds = %if.end.23
  %39 = load i8*, i8** %dot, align 8, !dbg !873, !tbaa !479
  store i8* %39, i8** %trace, align 8, !dbg !874, !tbaa !479
  store i32 0, i32* %cleanup.dest.slot, !dbg !875
  br label %cleanup, !dbg !875

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %40 = bitcast i8** %dot to i8*, !dbg !876
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !876
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 6
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 6
  br i1 %SwitchLeaf2, label %EXIT, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %while.cond, !dbg !793

while.end:                                        ; preds = %while.cond
  %41 = load %struct._object*, %struct._object** %object, align 8, !dbg !877, !tbaa !479
  %42 = load i8*, i8** %name.addr, align 8, !dbg !878, !tbaa !479
  %call27 = call i32 @PyCapsule_IsValid(%struct._object* %41, i8* %42), !dbg !879
  %tobool28 = icmp ne i32 %call27, 0, !dbg !879
  br i1 %tobool28, label %if.then.29, label %if.else.30, !dbg !880

if.then.29:                                       ; preds = %while.end
  %43 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !881
  call void @llvm.lifetime.start(i64 8, i8* %43) #2, !dbg !881
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !436, metadata !483), !dbg !882
  %44 = load %struct._object*, %struct._object** %object, align 8, !dbg !883, !tbaa !479
  %45 = bitcast %struct._object* %44 to %struct.PyCapsule*, !dbg !884
  store %struct.PyCapsule* %45, %struct.PyCapsule** %capsule, align 8, !dbg !882, !tbaa !479
  %46 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !885, !tbaa !479
  %pointer = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %46, i32 0, i32 1, !dbg !886
  %47 = load i8*, i8** %pointer, align 8, !dbg !886, !tbaa !518
  store i8* %47, i8** %return_value, align 8, !dbg !887, !tbaa !479
  %48 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !888
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !888
  br label %if.end.32, !dbg !889

if.else.30:                                       ; preds = %while.end
  %49 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !890, !tbaa !479
  %50 = load i8*, i8** %name.addr, align 8, !dbg !892, !tbaa !479
  %call31 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0), i8* %50), !dbg !893
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %EXIT, !dbg !894

EXIT:                                             ; preds = %LeafBlock.1, %if.end.32
  br label %do.body.33, !dbg !895

do.body.33:                                       ; preds = %EXIT
  %51 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !896
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !896
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !439, metadata !483), !dbg !898
  %52 = load %struct._object*, %struct._object** %object, align 8, !dbg !899, !tbaa !479
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp, align 8, !dbg !898, !tbaa !479
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !900, !tbaa !479
  %cmp34 = icmp ne %struct._object* %53, null, !dbg !901
  br i1 %cmp34, label %if.then.35, label %if.end.48, !dbg !902

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36, !dbg !903

do.body.36:                                       ; preds = %if.then.35
  %54 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !905
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !905
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp37, metadata !441, metadata !483), !dbg !907
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !908, !tbaa !479
  store %struct._object* %55, %struct._object** %_py_decref_tmp37, align 8, !dbg !907, !tbaa !479
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !909, !tbaa !479
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !911
  %57 = load i64, i64* %ob_refcnt38, align 8, !dbg !912, !tbaa !848
  %dec39 = add i64 %57, -1, !dbg !912
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !912, !tbaa !848
  %cmp40 = icmp ne i64 %dec39, 0, !dbg !913
  br i1 %cmp40, label %if.then.41, label %if.else.42, !dbg !914

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45, !dbg !915

if.else.42:                                       ; preds = %do.body.36
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !917, !tbaa !479
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !919
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !919, !tbaa !550
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !920
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !920, !tbaa !857
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !921, !tbaa !479
  call void %60(%struct._object* %61), !dbg !922
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  %62 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !923
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !923
  br label %do.cond.46, !dbg !925

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !926

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end.48, !dbg !928

if.end.48:                                        ; preds = %do.end.47, %do.body.33
  %63 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !930
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !930
  br label %do.cond.49, !dbg !933

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !934

do.end.50:                                        ; preds = %do.cond.49
  %64 = load i8*, i8** %name_dup, align 8, !dbg !936, !tbaa !479
  %tobool51 = icmp ne i8* %64, null, !dbg !936
  br i1 %tobool51, label %if.then.52, label %if.end.53, !dbg !938

if.then.52:                                       ; preds = %do.end.50
  %65 = load i8*, i8** %name_dup, align 8, !dbg !939, !tbaa !479
  call void @PyMem_Free(i8* %65), !dbg !941
  br label %if.end.53, !dbg !942

if.end.53:                                        ; preds = %if.then.52, %do.end.50
  %66 = load i8*, i8** %return_value, align 8, !dbg !943, !tbaa !479
  store i8* %66, i8** %retval, !dbg !944
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54, !dbg !944

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.54

cleanup.54:                                       ; preds = %NewDefault, %if.end.53, %if.then
  %67 = bitcast i8** %name_dup to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !945
  %68 = bitcast i64* %name_length to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !945
  %69 = bitcast i8** %trace to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !945
  %70 = bitcast i8** %return_value to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !945
  %71 = bitcast %struct._object** %object to i8*, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !945
  %72 = load i8*, i8** %retval, !dbg !945
  ret i8* %72, !dbg !945
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @capsule_dealloc(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !461, metadata !483), !dbg !946
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !947
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !947
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !462, metadata !483), !dbg !948
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !949, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !950
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !948, !tbaa !479
  %3 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !951, !tbaa !479
  %destructor = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %3, i32 0, i32 4, !dbg !953
  %4 = load void (%struct._object*)*, void (%struct._object*)** %destructor, align 8, !dbg !953, !tbaa !533
  %tobool = icmp ne void (%struct._object*)* %4, null, !dbg !951
  br i1 %tobool, label %if.then, label %if.end, !dbg !954

if.then:                                          ; preds = %entry
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !955, !tbaa !479
  %destructor1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 4, !dbg !957
  %6 = load void (%struct._object*)*, void (%struct._object*)** %destructor1, align 8, !dbg !957, !tbaa !533
  %7 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !958, !tbaa !479
  call void %6(%struct._object* %7), !dbg !955
  br label %if.end, !dbg !959

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !960, !tbaa !479
  %9 = bitcast %struct._object* %8 to i8*, !dbg !960
  call void @PyObject_Free(i8* %9), !dbg !961
  %10 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !962
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !962
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @capsule_repr(%struct._object* %o) #0 {
entry:
  %o.addr = alloca %struct._object*, align 8
  %capsule = alloca %struct.PyCapsule*, align 8
  %name = alloca i8*, align 8
  %quote = alloca i8*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8, !tbaa !479
  call void @llvm.dbg.declare(metadata %struct._object** %o.addr, metadata !465, metadata !483), !dbg !963
  %0 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !964
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !964
  call void @llvm.dbg.declare(metadata %struct.PyCapsule** %capsule, metadata !466, metadata !483), !dbg !965
  %1 = load %struct._object*, %struct._object** %o.addr, align 8, !dbg !966, !tbaa !479
  %2 = bitcast %struct._object* %1 to %struct.PyCapsule*, !dbg !967
  store %struct.PyCapsule* %2, %struct.PyCapsule** %capsule, align 8, !dbg !965, !tbaa !479
  %3 = bitcast i8** %name to i8*, !dbg !968
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !968
  call void @llvm.dbg.declare(metadata i8** %name, metadata !467, metadata !483), !dbg !969
  %4 = bitcast i8** %quote to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !970
  call void @llvm.dbg.declare(metadata i8** %quote, metadata !468, metadata !483), !dbg !971
  %5 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !972, !tbaa !479
  %name1 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %5, i32 0, i32 2, !dbg !974
  %6 = load i8*, i8** %name1, align 8, !dbg !974, !tbaa !524
  %tobool = icmp ne i8* %6, null, !dbg !972
  br i1 %tobool, label %if.then, label %if.else, !dbg !975

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %quote, align 8, !dbg !976, !tbaa !479
  %7 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !978, !tbaa !479
  %name2 = getelementptr inbounds %struct.PyCapsule, %struct.PyCapsule* %7, i32 0, i32 2, !dbg !979
  %8 = load i8*, i8** %name2, align 8, !dbg !979, !tbaa !524
  store i8* %8, i8** %name, align 8, !dbg !980, !tbaa !479
  br label %if.end, !dbg !981

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), i8** %quote, align 8, !dbg !982, !tbaa !479
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8** %name, align 8, !dbg !984, !tbaa !479
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %quote, align 8, !dbg !985, !tbaa !479
  %10 = load i8*, i8** %name, align 8, !dbg !986, !tbaa !479
  %11 = load i8*, i8** %quote, align 8, !dbg !987, !tbaa !479
  %12 = load %struct.PyCapsule*, %struct.PyCapsule** %capsule, align 8, !dbg !988, !tbaa !479
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i8* %9, i8* %10, i8* %11, %struct.PyCapsule* %12), !dbg !989
  %13 = bitcast i8** %quote to i8*, !dbg !990
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !990
  %14 = bitcast i8** %name to i8*, !dbg !990
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !990
  %15 = bitcast %struct.PyCapsule** %capsule to i8*, !dbg !990
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !990
  ret %struct._object* %call, !dbg !991
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

declare void @PyObject_Free(i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!476, !477}
!llvm.ident = !{!478}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !355, globals: !469)
!1 = !DIFile(filename: "capsule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !43, !95, !57}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCapsule", file: !6, line: 12, baseType: !7)
!6 = !DIFile(filename: "Objects/capsule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 6, size: 384, align: 64, elements: !8)
!8 = !{!9, !349, !350, !351, !352}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 7, baseType: !10, size: 128, align: 64)
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
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !7, file: !6, line: 8, baseType: !95, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !6, line: 9, baseType: !33, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !7, file: !6, line: 10, baseType: !95, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !7, file: !6, line: 11, baseType: !353, size: 64, align: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCapsule_Destructor", file: !354, line: 23, baseType: !40)
!354 = !DIFile(filename: "Include/pycapsule.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!355 = !{!356, !364, !371, !378, !384, !390, !396, !401, !406, !413, !418, !444, !453, !459, !463}
!356 = !DISubprogram(name: "PyCapsule_New", scope: !6, file: !6, line: 44, type: !357, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, i8*, void (%struct._object*)*)* @PyCapsule_New, variables: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!43, !95, !33, !353}
!359 = !{!360, !361, !362, !363}
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pointer", arg: 1, scope: !356, file: !6, line: 44, type: !95)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !356, file: !6, line: 44, type: !33)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 3, scope: !356, file: !6, line: 44, type: !353)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !356, file: !6, line: 46, type: !4)
!364 = !DISubprogram(name: "PyCapsule_IsValid", scope: !6, file: !6, line: 68, type: !365, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_IsValid, variables: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!49, !43, !33}
!367 = !{!368, !369, !370}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !364, file: !6, line: 68, type: !43)
!369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !364, file: !6, line: 68, type: !33)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !364, file: !6, line: 70, type: !4)
!371 = !DISubprogram(name: "PyCapsule_GetPointer", scope: !6, file: !6, line: 80, type: !372, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*, i8*)* @PyCapsule_GetPointer, variables: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!95, !43, !33}
!374 = !{!375, !376, !377}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !371, file: !6, line: 80, type: !43)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !371, file: !6, line: 80, type: !33)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !371, file: !6, line: 82, type: !4)
!378 = !DISubprogram(name: "PyCapsule_GetName", scope: !6, file: !6, line: 98, type: !379, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyCapsule_GetName, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!33, !43}
!381 = !{!382, !383}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !378, file: !6, line: 98, type: !43)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !378, file: !6, line: 100, type: !4)
!384 = !DISubprogram(name: "PyCapsule_GetDestructor", scope: !6, file: !6, line: 110, type: !385, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* (%struct._object*)* @PyCapsule_GetDestructor, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!353, !43}
!387 = !{!388, !389}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !384, file: !6, line: 110, type: !43)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !384, file: !6, line: 112, type: !4)
!390 = !DISubprogram(name: "PyCapsule_GetContext", scope: !6, file: !6, line: 122, type: !391, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct._object*)* @PyCapsule_GetContext, variables: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!95, !43}
!393 = !{!394, !395}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !390, file: !6, line: 122, type: !43)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !390, file: !6, line: 124, type: !4)
!396 = !DISubprogram(name: "PyCapsule_SetPointer", scope: !6, file: !6, line: 134, type: !271, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetPointer, variables: !397)
!397 = !{!398, !399, !400}
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !396, file: !6, line: 134, type: !43)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pointer", arg: 2, scope: !396, file: !6, line: 134, type: !95)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !396, file: !6, line: 136, type: !4)
!401 = !DISubprogram(name: "PyCapsule_SetName", scope: !6, file: !6, line: 153, type: !365, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetName, variables: !402)
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !401, file: !6, line: 153, type: !43)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !401, file: !6, line: 153, type: !33)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !401, file: !6, line: 155, type: !4)
!406 = !DISubprogram(name: "PyCapsule_SetDestructor", scope: !6, file: !6, line: 167, type: !407, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, void (%struct._object*)*)* @PyCapsule_SetDestructor, variables: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!49, !43, !353}
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !406, file: !6, line: 167, type: !43)
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "destructor", arg: 2, scope: !406, file: !6, line: 167, type: !353)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !406, file: !6, line: 169, type: !4)
!413 = !DISubprogram(name: "PyCapsule_SetContext", scope: !6, file: !6, line: 181, type: !271, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @PyCapsule_SetContext, variables: !414)
!414 = !{!415, !416, !417}
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !413, file: !6, line: 181, type: !43)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 2, scope: !413, file: !6, line: 181, type: !95)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !413, file: !6, line: 183, type: !4)
!418 = !DISubprogram(name: "PyCapsule_Import", scope: !6, file: !6, line: 195, type: !419, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @PyCapsule_Import, variables: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!95, !33, !49}
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !431, !434, !436, !439, !441}
!422 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !418, file: !6, line: 195, type: !33)
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "no_block", arg: 2, scope: !418, file: !6, line: 195, type: !49)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object", scope: !418, file: !6, line: 197, type: !43)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !418, file: !6, line: 198, type: !95)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace", scope: !418, file: !6, line: 199, type: !57)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_length", scope: !418, file: !6, line: 200, type: !100)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_dup", scope: !418, file: !6, line: 201, type: !57)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !430, file: !6, line: 211, type: !57)
!430 = distinct !DILexicalBlock(scope: !418, file: !6, line: 210, column: 19)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "object2", scope: !432, file: !6, line: 226, type: !43)
!432 = distinct !DILexicalBlock(scope: !433, file: !6, line: 225, column: 16)
!433 = distinct !DILexicalBlock(scope: !430, file: !6, line: 216, column: 13)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !6, line: 227, type: !43)
!435 = distinct !DILexicalBlock(scope: !432, file: !6, line: 227, column: 16)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !437, file: !6, line: 239, type: !4)
!437 = distinct !DILexicalBlock(scope: !438, file: !6, line: 238, column: 42)
!438 = distinct !DILexicalBlock(scope: !418, file: !6, line: 238, column: 9)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !440, file: !6, line: 248, type: !43)
!440 = distinct !DILexicalBlock(scope: !418, file: !6, line: 248, column: 8)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !6, line: 248, type: !43)
!442 = distinct !DILexicalBlock(scope: !443, file: !6, line: 248, column: 98)
!443 = distinct !DILexicalBlock(scope: !440, file: !6, line: 248, column: 64)
!444 = !DISubprogram(name: "name_matches", scope: !6, file: !6, line: 32, type: !445, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @name_matches, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!49, !33, !33}
!447 = !{!448, !449, !450, !452}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name1", arg: 1, scope: !444, file: !6, line: 32, type: !33)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name2", arg: 2, scope: !444, file: !6, line: 32, type: !33)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !451, file: !6, line: 38, type: !100)
!451 = distinct !DILexicalBlock(scope: !444, file: !6, line: 38, column: 28)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !451, file: !6, line: 38, type: !100)
!453 = !DISubprogram(name: "_is_legal_capsule", scope: !6, file: !6, line: 17, type: !454, isLocal: true, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyCapsule*, i8*)* @_is_legal_capsule, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!49, !4, !33}
!456 = !{!457, !458}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "capsule", arg: 1, scope: !453, file: !6, line: 17, type: !4)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invalid_capsule", arg: 2, scope: !453, file: !6, line: 17, type: !33)
!459 = !DISubprogram(name: "capsule_dealloc", scope: !6, file: !6, line: 257, type: !41, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @capsule_dealloc, variables: !460)
!460 = !{!461, !462}
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !459, file: !6, line: 257, type: !43)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !459, file: !6, line: 259, type: !4)
!463 = !DISubprogram(name: "capsule_repr", scope: !6, file: !6, line: 268, type: !122, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @capsule_repr, variables: !464)
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "o", arg: 1, scope: !463, file: !6, line: 268, type: !43)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "capsule", scope: !463, file: !6, line: 270, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !463, file: !6, line: 271, type: !33)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "quote", scope: !463, file: !6, line: 272, type: !33)
!469 = !{!470, !472}
!470 = !DIGlobalVariable(name: "PyCapsule_Type", scope: !0, file: !6, line: 299, type: !471, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyCapsule_Type)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!472 = !DIGlobalVariable(name: "PyCapsule_Type__doc__", scope: !0, file: !6, line: 288, type: !473, isLocal: true, isDefinition: true, variable: [417 x i8]* @PyCapsule_Type__doc__)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3336, align: 8, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 417)
!476 = !{i32 2, !"Dwarf Version", i32 4}
!477 = !{i32 2, !"Debug Info Version", i32 3}
!478 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!479 = !{!480, !480, i64 0}
!480 = !{!"any pointer", !481, i64 0}
!481 = !{!"omnipotent char", !482, i64 0}
!482 = !{!"Simple C/C++ TBAA"}
!483 = !DIExpression()
!484 = !DILocation(line: 44, column: 21, scope: !356)
!485 = !DILocation(line: 44, column: 42, scope: !356)
!486 = !DILocation(line: 44, column: 69, scope: !356)
!487 = !DILocation(line: 46, column: 5, scope: !356)
!488 = !DILocation(line: 46, column: 16, scope: !356)
!489 = !DILocation(line: 48, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !356, file: !6, line: 48, column: 9)
!491 = !DILocation(line: 48, column: 9, scope: !356)
!492 = !DILocation(line: 49, column: 25, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !6, line: 48, column: 19)
!494 = !DILocation(line: 49, column: 9, scope: !493)
!495 = !DILocation(line: 50, column: 9, scope: !493)
!496 = !DILocation(line: 53, column: 97, scope: !356)
!497 = !{!498, !501, i64 32}
!498 = !{!"_typeobject", !499, i64 0, !480, i64 24, !501, i64 32, !501, i64 40, !480, i64 48, !480, i64 56, !480, i64 64, !480, i64 72, !480, i64 80, !480, i64 88, !480, i64 96, !480, i64 104, !480, i64 112, !480, i64 120, !480, i64 128, !480, i64 136, !480, i64 144, !480, i64 152, !480, i64 160, !501, i64 168, !480, i64 176, !480, i64 184, !480, i64 192, !480, i64 200, !501, i64 208, !480, i64 216, !480, i64 224, !480, i64 232, !480, i64 240, !480, i64 248, !480, i64 256, !480, i64 264, !480, i64 272, !480, i64 280, !501, i64 288, !480, i64 296, !480, i64 304, !480, i64 312, !480, i64 320, !480, i64 328, !480, i64 336, !480, i64 344, !480, i64 352, !480, i64 360, !480, i64 368, !480, i64 376, !502, i64 384, !480, i64 392}
!499 = !{!"", !500, i64 0, !501, i64 16}
!500 = !{!"_object", !501, i64 0, !480, i64 8}
!501 = !{!"long", !481, i64 0}
!502 = !{!"int", !481, i64 0}
!503 = !DILocation(line: 53, column: 59, scope: !356)
!504 = !DILocation(line: 53, column: 46, scope: !356)
!505 = !DILocation(line: 53, column: 31, scope: !356)
!506 = !DILocation(line: 53, column: 17, scope: !356)
!507 = !DILocation(line: 53, column: 13, scope: !356)
!508 = !DILocation(line: 54, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !356, file: !6, line: 54, column: 9)
!510 = !DILocation(line: 54, column: 17, scope: !509)
!511 = !DILocation(line: 54, column: 9, scope: !356)
!512 = !DILocation(line: 55, column: 9, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !6, line: 54, column: 32)
!514 = !DILocation(line: 58, column: 24, scope: !356)
!515 = !DILocation(line: 58, column: 5, scope: !356)
!516 = !DILocation(line: 58, column: 14, scope: !356)
!517 = !DILocation(line: 58, column: 22, scope: !356)
!518 = !{!519, !480, i64 16}
!519 = !{!"", !500, i64 0, !480, i64 16, !480, i64 24, !480, i64 32, !480, i64 40}
!520 = !DILocation(line: 59, column: 21, scope: !356)
!521 = !DILocation(line: 59, column: 5, scope: !356)
!522 = !DILocation(line: 59, column: 14, scope: !356)
!523 = !DILocation(line: 59, column: 19, scope: !356)
!524 = !{!519, !480, i64 24}
!525 = !DILocation(line: 60, column: 5, scope: !356)
!526 = !DILocation(line: 60, column: 14, scope: !356)
!527 = !DILocation(line: 60, column: 22, scope: !356)
!528 = !{!519, !480, i64 32}
!529 = !DILocation(line: 61, column: 27, scope: !356)
!530 = !DILocation(line: 61, column: 5, scope: !356)
!531 = !DILocation(line: 61, column: 14, scope: !356)
!532 = !DILocation(line: 61, column: 25, scope: !356)
!533 = !{!519, !480, i64 40}
!534 = !DILocation(line: 63, column: 24, scope: !356)
!535 = !DILocation(line: 63, column: 12, scope: !356)
!536 = !DILocation(line: 63, column: 5, scope: !356)
!537 = !DILocation(line: 64, column: 1, scope: !356)
!538 = !DILocation(line: 68, column: 29, scope: !364)
!539 = !DILocation(line: 68, column: 44, scope: !364)
!540 = !DILocation(line: 70, column: 5, scope: !364)
!541 = !DILocation(line: 70, column: 16, scope: !364)
!542 = !DILocation(line: 70, column: 39, scope: !364)
!543 = !DILocation(line: 70, column: 26, scope: !364)
!544 = !DILocation(line: 72, column: 13, scope: !364)
!545 = !DILocation(line: 72, column: 21, scope: !364)
!546 = !DILocation(line: 72, column: 35, scope: !364)
!547 = !DILocation(line: 73, column: 28, scope: !364)
!548 = !DILocation(line: 73, column: 16, scope: !364)
!549 = !DILocation(line: 73, column: 39, scope: !364)
!550 = !{!500, !480, i64 8}
!551 = !DILocation(line: 73, column: 48, scope: !364)
!552 = !DILocation(line: 73, column: 68, scope: !364)
!553 = !DILocation(line: 74, column: 13, scope: !364)
!554 = !DILocation(line: 74, column: 22, scope: !364)
!555 = !DILocation(line: 74, column: 30, scope: !364)
!556 = !DILocation(line: 74, column: 44, scope: !364)
!557 = !DILocation(line: 75, column: 26, scope: !364)
!558 = !DILocation(line: 75, column: 35, scope: !364)
!559 = !DILocation(line: 75, column: 41, scope: !364)
!560 = !DILocation(line: 75, column: 13, scope: !364)
!561 = !DILocation(line: 74, column: 44, scope: !562)
!562 = !DILexicalBlockFile(scope: !364, file: !6, discriminator: 1)
!563 = !DILocation(line: 76, column: 1, scope: !364)
!564 = !DILocation(line: 72, column: 5, scope: !364)
!565 = !DILocation(line: 32, column: 26, scope: !444)
!566 = !DILocation(line: 32, column: 45, scope: !444)
!567 = !DILocation(line: 34, column: 10, scope: !568)
!568 = distinct !DILexicalBlock(scope: !444, file: !6, line: 34, column: 9)
!569 = !DILocation(line: 34, column: 16, scope: !568)
!570 = !DILocation(line: 34, column: 20, scope: !571)
!571 = !DILexicalBlockFile(scope: !568, file: !6, discriminator: 1)
!572 = !DILocation(line: 34, column: 9, scope: !444)
!573 = !DILocation(line: 36, column: 16, scope: !574)
!574 = distinct !DILexicalBlock(scope: !568, file: !6, line: 34, column: 27)
!575 = !DILocation(line: 36, column: 25, scope: !574)
!576 = !DILocation(line: 36, column: 22, scope: !574)
!577 = !DILocation(line: 36, column: 9, scope: !574)
!578 = !DILocation(line: 38, column: 30, scope: !451)
!579 = !DILocation(line: 38, column: 37, scope: !451)
!580 = !DILocation(line: 38, column: 47, scope: !451)
!581 = !DILocation(line: 38, column: 2103, scope: !451)
!582 = !DILocation(line: 38, column: 2110, scope: !451)
!583 = !DILocation(line: 38, column: 2085, scope: !451)
!584 = !{!502, !502, i64 0}
!585 = !DILocation(line: 38, column: 2121, scope: !444)
!586 = !DILocation(line: 38, column: 2121, scope: !451)
!587 = !DILocation(line: 38, column: 12, scope: !444)
!588 = !DILocation(line: 38, column: 5, scope: !444)
!589 = !DILocation(line: 39, column: 1, scope: !444)
!590 = !DILocation(line: 80, column: 32, scope: !371)
!591 = !DILocation(line: 80, column: 47, scope: !371)
!592 = !DILocation(line: 82, column: 5, scope: !371)
!593 = !DILocation(line: 82, column: 16, scope: !371)
!594 = !DILocation(line: 82, column: 39, scope: !371)
!595 = !DILocation(line: 82, column: 26, scope: !371)
!596 = !DILocation(line: 84, column: 29, scope: !597)
!597 = distinct !DILexicalBlock(scope: !371, file: !6, line: 84, column: 9)
!598 = !DILocation(line: 84, column: 11, scope: !597)
!599 = !DILocation(line: 84, column: 9, scope: !371)
!600 = !DILocation(line: 85, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !6, line: 84, column: 104)
!602 = !DILocation(line: 88, column: 23, scope: !603)
!603 = distinct !DILexicalBlock(scope: !371, file: !6, line: 88, column: 9)
!604 = !DILocation(line: 88, column: 29, scope: !603)
!605 = !DILocation(line: 88, column: 38, scope: !603)
!606 = !DILocation(line: 88, column: 10, scope: !603)
!607 = !DILocation(line: 88, column: 9, scope: !371)
!608 = !DILocation(line: 89, column: 25, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !6, line: 88, column: 45)
!610 = !DILocation(line: 89, column: 9, scope: !609)
!611 = !DILocation(line: 90, column: 9, scope: !609)
!612 = !DILocation(line: 93, column: 12, scope: !371)
!613 = !DILocation(line: 93, column: 21, scope: !371)
!614 = !DILocation(line: 93, column: 5, scope: !371)
!615 = !DILocation(line: 94, column: 1, scope: !371)
!616 = !DILocation(line: 17, column: 30, scope: !453)
!617 = !DILocation(line: 17, column: 51, scope: !453)
!618 = !DILocation(line: 19, column: 10, scope: !619)
!619 = distinct !DILexicalBlock(scope: !453, file: !6, line: 19, column: 9)
!620 = !DILocation(line: 19, column: 18, scope: !619)
!621 = !DILocation(line: 19, column: 37, scope: !622)
!622 = !DILexicalBlockFile(scope: !619, file: !6, discriminator: 1)
!623 = !DILocation(line: 19, column: 25, scope: !619)
!624 = !DILocation(line: 19, column: 48, scope: !619)
!625 = !DILocation(line: 19, column: 57, scope: !619)
!626 = !DILocation(line: 19, column: 77, scope: !619)
!627 = !DILocation(line: 19, column: 80, scope: !628)
!628 = !DILexicalBlockFile(scope: !619, file: !6, discriminator: 2)
!629 = !DILocation(line: 19, column: 89, scope: !619)
!630 = !DILocation(line: 19, column: 97, scope: !619)
!631 = !DILocation(line: 19, column: 9, scope: !453)
!632 = !DILocation(line: 20, column: 25, scope: !633)
!633 = distinct !DILexicalBlock(scope: !619, file: !6, line: 19, column: 112)
!634 = !DILocation(line: 20, column: 43, scope: !633)
!635 = !DILocation(line: 20, column: 9, scope: !633)
!636 = !DILocation(line: 21, column: 9, scope: !633)
!637 = !DILocation(line: 23, column: 5, scope: !453)
!638 = !DILocation(line: 24, column: 1, scope: !453)
!639 = !DILocation(line: 98, column: 29, scope: !378)
!640 = !DILocation(line: 100, column: 5, scope: !378)
!641 = !DILocation(line: 100, column: 16, scope: !378)
!642 = !DILocation(line: 100, column: 39, scope: !378)
!643 = !DILocation(line: 100, column: 26, scope: !378)
!644 = !DILocation(line: 102, column: 29, scope: !645)
!645 = distinct !DILexicalBlock(scope: !378, file: !6, line: 102, column: 9)
!646 = !DILocation(line: 102, column: 11, scope: !645)
!647 = !DILocation(line: 102, column: 9, scope: !378)
!648 = !DILocation(line: 103, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !6, line: 102, column: 101)
!650 = !DILocation(line: 105, column: 12, scope: !378)
!651 = !DILocation(line: 105, column: 21, scope: !378)
!652 = !DILocation(line: 105, column: 5, scope: !378)
!653 = !DILocation(line: 106, column: 1, scope: !378)
!654 = !DILocation(line: 110, column: 35, scope: !384)
!655 = !DILocation(line: 112, column: 5, scope: !384)
!656 = !DILocation(line: 112, column: 16, scope: !384)
!657 = !DILocation(line: 112, column: 39, scope: !384)
!658 = !DILocation(line: 112, column: 26, scope: !384)
!659 = !DILocation(line: 114, column: 29, scope: !660)
!660 = distinct !DILexicalBlock(scope: !384, file: !6, line: 114, column: 9)
!661 = !DILocation(line: 114, column: 11, scope: !660)
!662 = !DILocation(line: 114, column: 9, scope: !384)
!663 = !DILocation(line: 115, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !6, line: 114, column: 107)
!665 = !DILocation(line: 117, column: 12, scope: !384)
!666 = !DILocation(line: 117, column: 21, scope: !384)
!667 = !DILocation(line: 117, column: 5, scope: !384)
!668 = !DILocation(line: 118, column: 1, scope: !384)
!669 = !DILocation(line: 122, column: 32, scope: !390)
!670 = !DILocation(line: 124, column: 5, scope: !390)
!671 = !DILocation(line: 124, column: 16, scope: !390)
!672 = !DILocation(line: 124, column: 39, scope: !390)
!673 = !DILocation(line: 124, column: 26, scope: !390)
!674 = !DILocation(line: 126, column: 29, scope: !675)
!675 = distinct !DILexicalBlock(scope: !390, file: !6, line: 126, column: 9)
!676 = !DILocation(line: 126, column: 11, scope: !675)
!677 = !DILocation(line: 126, column: 9, scope: !390)
!678 = !DILocation(line: 127, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !6, line: 126, column: 104)
!680 = !DILocation(line: 129, column: 12, scope: !390)
!681 = !DILocation(line: 129, column: 21, scope: !390)
!682 = !DILocation(line: 129, column: 5, scope: !390)
!683 = !DILocation(line: 130, column: 1, scope: !390)
!684 = !DILocation(line: 134, column: 32, scope: !396)
!685 = !DILocation(line: 134, column: 41, scope: !396)
!686 = !DILocation(line: 136, column: 5, scope: !396)
!687 = !DILocation(line: 136, column: 16, scope: !396)
!688 = !DILocation(line: 136, column: 39, scope: !396)
!689 = !DILocation(line: 136, column: 26, scope: !396)
!690 = !DILocation(line: 138, column: 10, scope: !691)
!691 = distinct !DILexicalBlock(scope: !396, file: !6, line: 138, column: 9)
!692 = !DILocation(line: 138, column: 9, scope: !396)
!693 = !DILocation(line: 139, column: 25, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !6, line: 138, column: 19)
!695 = !DILocation(line: 139, column: 9, scope: !694)
!696 = !DILocation(line: 140, column: 9, scope: !694)
!697 = !DILocation(line: 143, column: 29, scope: !698)
!698 = distinct !DILexicalBlock(scope: !396, file: !6, line: 143, column: 9)
!699 = !DILocation(line: 143, column: 11, scope: !698)
!700 = !DILocation(line: 143, column: 9, scope: !396)
!701 = !DILocation(line: 144, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !6, line: 143, column: 104)
!703 = !DILocation(line: 147, column: 24, scope: !396)
!704 = !DILocation(line: 147, column: 5, scope: !396)
!705 = !DILocation(line: 147, column: 14, scope: !396)
!706 = !DILocation(line: 147, column: 22, scope: !396)
!707 = !DILocation(line: 148, column: 5, scope: !396)
!708 = !DILocation(line: 149, column: 1, scope: !396)
!709 = !DILocation(line: 153, column: 29, scope: !401)
!710 = !DILocation(line: 153, column: 44, scope: !401)
!711 = !DILocation(line: 155, column: 5, scope: !401)
!712 = !DILocation(line: 155, column: 16, scope: !401)
!713 = !DILocation(line: 155, column: 39, scope: !401)
!714 = !DILocation(line: 155, column: 26, scope: !401)
!715 = !DILocation(line: 157, column: 29, scope: !716)
!716 = distinct !DILexicalBlock(scope: !401, file: !6, line: 157, column: 9)
!717 = !DILocation(line: 157, column: 11, scope: !716)
!718 = !DILocation(line: 157, column: 9, scope: !401)
!719 = !DILocation(line: 158, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !716, file: !6, line: 157, column: 101)
!721 = !DILocation(line: 161, column: 21, scope: !401)
!722 = !DILocation(line: 161, column: 5, scope: !401)
!723 = !DILocation(line: 161, column: 14, scope: !401)
!724 = !DILocation(line: 161, column: 19, scope: !401)
!725 = !DILocation(line: 162, column: 5, scope: !401)
!726 = !DILocation(line: 163, column: 1, scope: !401)
!727 = !DILocation(line: 167, column: 35, scope: !406)
!728 = !DILocation(line: 167, column: 59, scope: !406)
!729 = !DILocation(line: 169, column: 5, scope: !406)
!730 = !DILocation(line: 169, column: 16, scope: !406)
!731 = !DILocation(line: 169, column: 39, scope: !406)
!732 = !DILocation(line: 169, column: 26, scope: !406)
!733 = !DILocation(line: 171, column: 29, scope: !734)
!734 = distinct !DILexicalBlock(scope: !406, file: !6, line: 171, column: 9)
!735 = !DILocation(line: 171, column: 11, scope: !734)
!736 = !DILocation(line: 171, column: 9, scope: !406)
!737 = !DILocation(line: 172, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !6, line: 171, column: 107)
!739 = !DILocation(line: 175, column: 27, scope: !406)
!740 = !DILocation(line: 175, column: 5, scope: !406)
!741 = !DILocation(line: 175, column: 14, scope: !406)
!742 = !DILocation(line: 175, column: 25, scope: !406)
!743 = !DILocation(line: 176, column: 5, scope: !406)
!744 = !DILocation(line: 177, column: 1, scope: !406)
!745 = !DILocation(line: 181, column: 32, scope: !413)
!746 = !DILocation(line: 181, column: 41, scope: !413)
!747 = !DILocation(line: 183, column: 5, scope: !413)
!748 = !DILocation(line: 183, column: 16, scope: !413)
!749 = !DILocation(line: 183, column: 39, scope: !413)
!750 = !DILocation(line: 183, column: 26, scope: !413)
!751 = !DILocation(line: 185, column: 29, scope: !752)
!752 = distinct !DILexicalBlock(scope: !413, file: !6, line: 185, column: 9)
!753 = !DILocation(line: 185, column: 11, scope: !752)
!754 = !DILocation(line: 185, column: 9, scope: !413)
!755 = !DILocation(line: 186, column: 9, scope: !756)
!756 = distinct !DILexicalBlock(scope: !752, file: !6, line: 185, column: 104)
!757 = !DILocation(line: 189, column: 24, scope: !413)
!758 = !DILocation(line: 189, column: 5, scope: !413)
!759 = !DILocation(line: 189, column: 14, scope: !413)
!760 = !DILocation(line: 189, column: 22, scope: !413)
!761 = !DILocation(line: 190, column: 5, scope: !413)
!762 = !DILocation(line: 191, column: 1, scope: !413)
!763 = !DILocation(line: 195, column: 30, scope: !418)
!764 = !DILocation(line: 195, column: 40, scope: !418)
!765 = !DILocation(line: 197, column: 5, scope: !418)
!766 = !DILocation(line: 197, column: 15, scope: !418)
!767 = !DILocation(line: 198, column: 5, scope: !418)
!768 = !DILocation(line: 198, column: 11, scope: !418)
!769 = !DILocation(line: 199, column: 5, scope: !418)
!770 = !DILocation(line: 199, column: 11, scope: !418)
!771 = !DILocation(line: 200, column: 5, scope: !418)
!772 = !DILocation(line: 200, column: 12, scope: !418)
!773 = !DILocation(line: 200, column: 34, scope: !418)
!774 = !DILocation(line: 200, column: 27, scope: !418)
!775 = !DILocation(line: 200, column: 40, scope: !418)
!776 = !DILocation(line: 200, column: 45, scope: !418)
!777 = !{!501, !501, i64 0}
!778 = !DILocation(line: 201, column: 5, scope: !418)
!779 = !DILocation(line: 201, column: 11, scope: !418)
!780 = !DILocation(line: 201, column: 43, scope: !418)
!781 = !DILocation(line: 201, column: 30, scope: !418)
!782 = !DILocation(line: 203, column: 10, scope: !783)
!783 = distinct !DILexicalBlock(scope: !418, file: !6, line: 203, column: 9)
!784 = !DILocation(line: 203, column: 9, scope: !418)
!785 = !DILocation(line: 204, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !783, file: !6, line: 203, column: 20)
!787 = !DILocation(line: 207, column: 12, scope: !418)
!788 = !DILocation(line: 207, column: 22, scope: !418)
!789 = !DILocation(line: 207, column: 28, scope: !418)
!790 = !DILocation(line: 207, column: 5, scope: !418)
!791 = !DILocation(line: 209, column: 13, scope: !418)
!792 = !DILocation(line: 209, column: 11, scope: !418)
!793 = !DILocation(line: 210, column: 5, scope: !418)
!794 = !DILocation(line: 210, column: 12, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !6, discriminator: 2)
!796 = !DILexicalBlockFile(scope: !418, file: !6, discriminator: 1)
!797 = !DILocation(line: 211, column: 9, scope: !430)
!798 = !DILocation(line: 211, column: 15, scope: !430)
!799 = !DILocation(line: 211, column: 170, scope: !430)
!800 = !DILocation(line: 211, column: 152, scope: !430)
!801 = !DILocation(line: 212, column: 13, scope: !802)
!802 = distinct !DILexicalBlock(scope: !430, file: !6, line: 212, column: 13)
!803 = !DILocation(line: 212, column: 13, scope: !430)
!804 = !DILocation(line: 213, column: 17, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !6, line: 212, column: 18)
!806 = !DILocation(line: 213, column: 20, scope: !805)
!807 = !{!481, !481, i64 0}
!808 = !DILocation(line: 214, column: 9, scope: !805)
!809 = !DILocation(line: 216, column: 13, scope: !433)
!810 = !DILocation(line: 216, column: 20, scope: !433)
!811 = !DILocation(line: 216, column: 13, scope: !430)
!812 = !DILocation(line: 217, column: 17, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !6, line: 217, column: 17)
!814 = distinct !DILexicalBlock(scope: !433, file: !6, line: 216, column: 35)
!815 = !DILocation(line: 217, column: 17, scope: !814)
!816 = !DILocation(line: 218, column: 55, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !6, line: 217, column: 27)
!818 = !DILocation(line: 218, column: 26, scope: !817)
!819 = !DILocation(line: 218, column: 24, scope: !817)
!820 = !DILocation(line: 219, column: 13, scope: !817)
!821 = !DILocation(line: 220, column: 48, scope: !822)
!822 = distinct !DILexicalBlock(scope: !813, file: !6, line: 219, column: 20)
!823 = !DILocation(line: 220, column: 26, scope: !822)
!824 = !DILocation(line: 220, column: 24, scope: !822)
!825 = !DILocation(line: 221, column: 22, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !6, line: 221, column: 21)
!827 = !DILocation(line: 221, column: 21, scope: !822)
!828 = !DILocation(line: 222, column: 34, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !6, line: 221, column: 30)
!830 = !DILocation(line: 222, column: 104, scope: !829)
!831 = !DILocation(line: 222, column: 21, scope: !829)
!832 = !DILocation(line: 223, column: 17, scope: !829)
!833 = !DILocation(line: 225, column: 9, scope: !814)
!834 = !DILocation(line: 226, column: 13, scope: !432)
!835 = !DILocation(line: 226, column: 23, scope: !432)
!836 = !DILocation(line: 226, column: 56, scope: !432)
!837 = !DILocation(line: 226, column: 64, scope: !432)
!838 = !DILocation(line: 226, column: 33, scope: !432)
!839 = !DILocation(line: 227, column: 13, scope: !432)
!840 = !DILocation(line: 227, column: 18, scope: !841)
!841 = !DILexicalBlockFile(scope: !435, file: !6, discriminator: 1)
!842 = !DILocation(line: 227, column: 28, scope: !435)
!843 = !DILocation(line: 227, column: 58, scope: !435)
!844 = !DILocation(line: 227, column: 75, scope: !845)
!845 = distinct !DILexicalBlock(scope: !435, file: !6, line: 227, column: 72)
!846 = !DILocation(line: 227, column: 92, scope: !845)
!847 = !DILocation(line: 227, column: 72, scope: !845)
!848 = !{!500, !501, i64 0}
!849 = !DILocation(line: 227, column: 102, scope: !845)
!850 = !DILocation(line: 227, column: 72, scope: !435)
!851 = !DILocation(line: 227, column: 72, scope: !852)
!852 = !DILexicalBlockFile(scope: !435, file: !6, discriminator: 2)
!853 = !DILocation(line: 227, column: 133, scope: !854)
!854 = !DILexicalBlockFile(scope: !845, file: !6, discriminator: 3)
!855 = !DILocation(line: 227, column: 151, scope: !845)
!856 = !DILocation(line: 227, column: 161, scope: !845)
!857 = !{!498, !480, i64 48}
!858 = !DILocation(line: 227, column: 186, scope: !845)
!859 = !DILocation(line: 227, column: 117, scope: !845)
!860 = !DILocation(line: 227, column: 205, scope: !861)
!861 = !DILexicalBlockFile(scope: !432, file: !6, discriminator: 4)
!862 = !DILocation(line: 227, column: 205, scope: !435)
!863 = !DILocation(line: 227, column: 205, scope: !864)
!864 = !DILexicalBlockFile(scope: !435, file: !6, discriminator: 5)
!865 = !DILocation(line: 228, column: 22, scope: !432)
!866 = !DILocation(line: 228, column: 20, scope: !432)
!867 = !DILocation(line: 229, column: 9, scope: !433)
!868 = !DILocation(line: 230, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !430, file: !6, line: 230, column: 13)
!870 = !DILocation(line: 230, column: 13, scope: !430)
!871 = !DILocation(line: 231, column: 13, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !6, line: 230, column: 22)
!873 = !DILocation(line: 234, column: 17, scope: !430)
!874 = !DILocation(line: 234, column: 15, scope: !430)
!875 = !DILocation(line: 235, column: 5, scope: !418)
!876 = !DILocation(line: 235, column: 5, scope: !796)
!877 = !DILocation(line: 238, column: 27, scope: !438)
!878 = !DILocation(line: 238, column: 35, scope: !438)
!879 = !DILocation(line: 238, column: 9, scope: !438)
!880 = !DILocation(line: 238, column: 9, scope: !418)
!881 = !DILocation(line: 239, column: 9, scope: !437)
!882 = !DILocation(line: 239, column: 20, scope: !437)
!883 = !DILocation(line: 239, column: 43, scope: !437)
!884 = !DILocation(line: 239, column: 30, scope: !437)
!885 = !DILocation(line: 240, column: 24, scope: !437)
!886 = !DILocation(line: 240, column: 33, scope: !437)
!887 = !DILocation(line: 240, column: 22, scope: !437)
!888 = !DILocation(line: 241, column: 5, scope: !438)
!889 = !DILocation(line: 241, column: 5, scope: !437)
!890 = !DILocation(line: 242, column: 22, scope: !891)
!891 = distinct !DILexicalBlock(scope: !438, file: !6, line: 241, column: 12)
!892 = !DILocation(line: 244, column: 13, scope: !891)
!893 = !DILocation(line: 242, column: 9, scope: !891)
!894 = !DILocation(line: 238, column: 39, scope: !438)
!895 = !DILocation(line: 248, column: 5, scope: !418)
!896 = !DILocation(line: 248, column: 10, scope: !897)
!897 = !DILexicalBlockFile(scope: !440, file: !6, discriminator: 1)
!898 = !DILocation(line: 248, column: 20, scope: !440)
!899 = !DILocation(line: 248, column: 51, scope: !440)
!900 = !DILocation(line: 248, column: 64, scope: !443)
!901 = !DILocation(line: 248, column: 80, scope: !443)
!902 = !DILocation(line: 248, column: 64, scope: !440)
!903 = !DILocation(line: 248, column: 95, scope: !904)
!904 = !DILexicalBlockFile(scope: !443, file: !6, discriminator: 2)
!905 = !DILocation(line: 248, column: 100, scope: !906)
!906 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 4)
!907 = !DILocation(line: 248, column: 110, scope: !442)
!908 = !DILocation(line: 248, column: 140, scope: !442)
!909 = !DILocation(line: 248, column: 166, scope: !910)
!910 = distinct !DILexicalBlock(scope: !442, file: !6, line: 248, column: 163)
!911 = !DILocation(line: 248, column: 183, scope: !910)
!912 = !DILocation(line: 248, column: 163, scope: !910)
!913 = !DILocation(line: 248, column: 193, scope: !910)
!914 = !DILocation(line: 248, column: 163, scope: !442)
!915 = !DILocation(line: 248, column: 163, scope: !916)
!916 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 5)
!917 = !DILocation(line: 248, column: 224, scope: !918)
!918 = !DILexicalBlockFile(scope: !910, file: !6, discriminator: 6)
!919 = !DILocation(line: 248, column: 242, scope: !910)
!920 = !DILocation(line: 248, column: 252, scope: !910)
!921 = !DILocation(line: 248, column: 277, scope: !910)
!922 = !DILocation(line: 248, column: 208, scope: !910)
!923 = !DILocation(line: 248, column: 296, scope: !924)
!924 = !DILexicalBlockFile(scope: !443, file: !6, discriminator: 7)
!925 = !DILocation(line: 248, column: 296, scope: !442)
!926 = !DILocation(line: 248, column: 296, scope: !927)
!927 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 8)
!928 = !DILocation(line: 248, column: 296, scope: !929)
!929 = !DILexicalBlockFile(scope: !442, file: !6, discriminator: 9)
!930 = !DILocation(line: 248, column: 309, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !6, discriminator: 10)
!932 = !DILexicalBlockFile(scope: !418, file: !6, discriminator: 3)
!933 = !DILocation(line: 248, column: 309, scope: !440)
!934 = !DILocation(line: 248, column: 309, scope: !935)
!935 = !DILexicalBlockFile(scope: !440, file: !6, discriminator: 11)
!936 = !DILocation(line: 249, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !418, file: !6, line: 249, column: 9)
!938 = !DILocation(line: 249, column: 9, scope: !418)
!939 = !DILocation(line: 250, column: 20, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !6, line: 249, column: 19)
!941 = !DILocation(line: 250, column: 9, scope: !940)
!942 = !DILocation(line: 251, column: 5, scope: !940)
!943 = !DILocation(line: 252, column: 12, scope: !418)
!944 = !DILocation(line: 252, column: 5, scope: !418)
!945 = !DILocation(line: 253, column: 1, scope: !418)
!946 = !DILocation(line: 257, column: 27, scope: !459)
!947 = !DILocation(line: 259, column: 5, scope: !459)
!948 = !DILocation(line: 259, column: 16, scope: !459)
!949 = !DILocation(line: 259, column: 39, scope: !459)
!950 = !DILocation(line: 259, column: 26, scope: !459)
!951 = !DILocation(line: 260, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !459, file: !6, line: 260, column: 9)
!953 = !DILocation(line: 260, column: 18, scope: !952)
!954 = !DILocation(line: 260, column: 9, scope: !459)
!955 = !DILocation(line: 261, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !6, line: 260, column: 30)
!957 = !DILocation(line: 261, column: 18, scope: !956)
!958 = !DILocation(line: 261, column: 29, scope: !956)
!959 = !DILocation(line: 262, column: 5, scope: !956)
!960 = !DILocation(line: 263, column: 19, scope: !459)
!961 = !DILocation(line: 263, column: 5, scope: !459)
!962 = !DILocation(line: 264, column: 1, scope: !459)
!963 = !DILocation(line: 268, column: 24, scope: !463)
!964 = !DILocation(line: 270, column: 5, scope: !463)
!965 = !DILocation(line: 270, column: 16, scope: !463)
!966 = !DILocation(line: 270, column: 39, scope: !463)
!967 = !DILocation(line: 270, column: 26, scope: !463)
!968 = !DILocation(line: 271, column: 5, scope: !463)
!969 = !DILocation(line: 271, column: 17, scope: !463)
!970 = !DILocation(line: 272, column: 5, scope: !463)
!971 = !DILocation(line: 272, column: 17, scope: !463)
!972 = !DILocation(line: 274, column: 9, scope: !973)
!973 = distinct !DILexicalBlock(scope: !463, file: !6, line: 274, column: 9)
!974 = !DILocation(line: 274, column: 18, scope: !973)
!975 = !DILocation(line: 274, column: 9, scope: !463)
!976 = !DILocation(line: 275, column: 15, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !6, line: 274, column: 24)
!978 = !DILocation(line: 276, column: 16, scope: !977)
!979 = !DILocation(line: 276, column: 25, scope: !977)
!980 = !DILocation(line: 276, column: 14, scope: !977)
!981 = !DILocation(line: 277, column: 5, scope: !977)
!982 = !DILocation(line: 278, column: 15, scope: !983)
!983 = distinct !DILexicalBlock(scope: !973, file: !6, line: 277, column: 12)
!984 = !DILocation(line: 279, column: 14, scope: !983)
!985 = !DILocation(line: 283, column: 9, scope: !463)
!986 = !DILocation(line: 283, column: 16, scope: !463)
!987 = !DILocation(line: 283, column: 22, scope: !463)
!988 = !DILocation(line: 283, column: 29, scope: !463)
!989 = !DILocation(line: 282, column: 12, scope: !463)
!990 = !DILocation(line: 284, column: 1, scope: !463)
!991 = !DILocation(line: 282, column: 5, scope: !463)
