; ModuleID = 'irs-onlybc/_bisectmodule.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }

@_bisectmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([266 x i8], [266 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @bisect_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"_bisect\00", align 1
@module_doc = internal global [266 x i8] c"Bisection algorithms.\0A\0AThis module provides support for maintaining a list in sorted order without\0Ahaving to sort the list after each insertion. For long lists of items with\0Aexpensive comparison operations, this can be an improvement over the more\0Acommon approach.\0A\00", align 16
@bisect_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([387 x i8], [387 x i8]* @bisect_right_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @bisect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @insort_right_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_right to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @insort_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_left to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([386 x i8], [386 x i8]* @bisect_left_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_left to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([253 x i8], [253 x i8]* @insort_left_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"bisect_right\00", align 1
@bisect_right_doc = internal global [387 x i8] c"bisect_right(a, x[, lo[, hi]]) -> index\0A\0AReturn the index where to insert item x in list a, assuming a is sorted.\0A\0AThe return value i is such that all e in a[:i] have e <= x, and all e in\0Aa[i:] have e > x.  So if x already appears in the list, i points just\0Abeyond the rightmost x already there\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"bisect\00", align 1
@bisect_doc = internal global [27 x i8] c"Alias for bisect_right().\0A\00", align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"insort_right\00", align 1
@insort_right_doc = internal global [256 x i8] c"insort_right(a, x[, lo[, hi]])\0A\0AInsert item x in list a, and keep it sorted assuming a is sorted.\0A\0AIf x is already in a, insert it to the right of the rightmost x.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"insort\00", align 1
@insort_doc = internal global [27 x i8] c"Alias for insort_right().\0A\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"bisect_left\00", align 1
@bisect_left_doc = internal global [386 x i8] c"bisect_left(a, x[, lo[, hi]]) -> index\0A\0AReturn the index where to insert item x in list a, assuming a is sorted.\0A\0AThe return value i is such that all e in a[:i] have e < x, and all e in\0Aa[i:] have e >= x.  So if x already appears in the list, i points just\0Abefore the leftmost x already there.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@.str.6 = private unnamed_addr constant [12 x i8] c"insort_left\00", align 1
@insort_left_doc = internal global [253 x i8] c"insort_left(a, x[, lo[, hi]])\0A\0AInsert item x in list a, and keep it sorted assuming a is sorted.\0A\0AIf x is already in a, insert it to the left of the leftmost x.\0A\0AOptional args lo (default 0) and hi (default len(a)) bound the\0Aslice of a to be searched.\0A\00", align 16
@bisect_right.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"OO|nn:bisect_right\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"lo must be non-negative\00", align 1
@insort_right.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [19 x i8] c"OO|nn:insort_right\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@PyId_insert = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._object* null }, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c"nO\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@bisect_left.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.16 = private unnamed_addr constant [18 x i8] c"OO|nn:bisect_left\00", align 1
@insort_left.keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"OO|nn:insort_left\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__bisect() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_bisectmodule, i32 1013), !dbg !496
  ret %struct._object* %call, !dbg !497
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bisect_right(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !350, metadata !502), !dbg !503
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !351, metadata !502), !dbg !504
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !352, metadata !502), !dbg !505
  %0 = bitcast %struct._object** %list to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !506
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !353, metadata !502), !dbg !507
  %1 = bitcast %struct._object** %item to i8*, !dbg !506
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !506
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !354, metadata !502), !dbg !508
  %2 = bitcast i64* %lo to i8*, !dbg !509
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !509
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !355, metadata !502), !dbg !510
  store i64 0, i64* %lo, align 8, !dbg !510, !tbaa !511
  %3 = bitcast i64* %hi to i8*, !dbg !513
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !513
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !356, metadata !502), !dbg !514
  store i64 -1, i64* %hi, align 8, !dbg !514, !tbaa !511
  %4 = bitcast i64* %index to i8*, !dbg !515
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !515
  call void @llvm.dbg.declare(metadata i64* %index, metadata !357, metadata !502), !dbg !516
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !517, !tbaa !498
  %6 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !519, !tbaa !498
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @bisect_right.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi), !dbg !520
  %tobool = icmp ne i32 %call, 0, !dbg !520
  br i1 %tobool, label %if.end, label %if.then, !dbg !521

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !522

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %list, align 8, !dbg !523, !tbaa !498
  %8 = load %struct._object*, %struct._object** %item, align 8, !dbg !524, !tbaa !498
  %9 = load i64, i64* %lo, align 8, !dbg !525, !tbaa !511
  %10 = load i64, i64* %hi, align 8, !dbg !526, !tbaa !511
  %call1 = call i64 @internal_bisect_right(%struct._object* %7, %struct._object* %8, i64 %9, i64 %10), !dbg !527
  store i64 %call1, i64* %index, align 8, !dbg !528, !tbaa !511
  %11 = load i64, i64* %index, align 8, !dbg !529, !tbaa !511
  %cmp = icmp slt i64 %11, 0, !dbg !531
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !532

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !533
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !533

if.end.3:                                         ; preds = %if.end
  %12 = load i64, i64* %index, align 8, !dbg !534, !tbaa !511
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %12), !dbg !535
  store %struct._object* %call4, %struct._object** %retval, !dbg !536
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !536

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast i64* %index to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !537
  %14 = bitcast i64* %hi to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !537
  %15 = bitcast i64* %lo to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !537
  %16 = bitcast %struct._object** %item to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !537
  %17 = bitcast %struct._object** %list to i8*, !dbg !537
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !537
  %18 = load %struct._object*, %struct._object** %retval, !dbg !537
  ret %struct._object* %18, !dbg !537
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insort_right(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !374, metadata !502), !dbg !538
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !375, metadata !502), !dbg !539
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !376, metadata !502), !dbg !540
  %0 = bitcast %struct._object** %list to i8*, !dbg !541
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !541
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !377, metadata !502), !dbg !542
  %1 = bitcast %struct._object** %item to i8*, !dbg !541
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !541
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !378, metadata !502), !dbg !543
  %2 = bitcast %struct._object** %result to i8*, !dbg !541
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !541
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !379, metadata !502), !dbg !544
  %3 = bitcast i64* %lo to i8*, !dbg !545
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !545
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !380, metadata !502), !dbg !546
  store i64 0, i64* %lo, align 8, !dbg !546, !tbaa !511
  %4 = bitcast i64* %hi to i8*, !dbg !547
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !547
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !381, metadata !502), !dbg !548
  store i64 -1, i64* %hi, align 8, !dbg !548, !tbaa !511
  %5 = bitcast i64* %index to i8*, !dbg !549
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !549
  call void @llvm.dbg.declare(metadata i64* %index, metadata !382, metadata !502), !dbg !550
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !551, !tbaa !498
  %7 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !553, !tbaa !498
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @insort_right.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi), !dbg !554
  %tobool = icmp ne i32 %call, 0, !dbg !554
  br i1 %tobool, label %if.end, label %if.then, !dbg !555

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !556
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !556

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %list, align 8, !dbg !557, !tbaa !498
  %9 = load %struct._object*, %struct._object** %item, align 8, !dbg !558, !tbaa !498
  %10 = load i64, i64* %lo, align 8, !dbg !559, !tbaa !511
  %11 = load i64, i64* %hi, align 8, !dbg !560, !tbaa !511
  %call1 = call i64 @internal_bisect_right(%struct._object* %8, %struct._object* %9, i64 %10, i64 %11), !dbg !561
  store i64 %call1, i64* %index, align 8, !dbg !562, !tbaa !511
  %12 = load i64, i64* %index, align 8, !dbg !563, !tbaa !511
  %cmp = icmp slt i64 %12, 0, !dbg !565
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !566

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !567
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !567

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %list, align 8, !dbg !568, !tbaa !498
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !569
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !569, !tbaa !570
  %cmp4 = icmp eq %struct._typeobject* %14, @PyList_Type, !dbg !572
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !573

if.then.5:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %list, align 8, !dbg !574, !tbaa !498
  %16 = load i64, i64* %index, align 8, !dbg !577, !tbaa !511
  %17 = load %struct._object*, %struct._object** %item, align 8, !dbg !578, !tbaa !498
  %call6 = call i32 @PyList_Insert(%struct._object* %15, i64 %16, %struct._object* %17), !dbg !579
  %cmp7 = icmp slt i32 %call6, 0, !dbg !580
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !581

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval, !dbg !582
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !582

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.19, !dbg !583

if.else:                                          ; preds = %if.end.3
  %18 = load %struct._object*, %struct._object** %list, align 8, !dbg !584, !tbaa !498
  %19 = load i64, i64* %index, align 8, !dbg !585, !tbaa !511
  %20 = load %struct._object*, %struct._object** %item, align 8, !dbg !586, !tbaa !498
  %call10 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %18, %struct._Py_Identifier* @PyId_insert, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i64 %19, %struct._object* %20), !dbg !587
  store %struct._object* %call10, %struct._object** %result, align 8, !dbg !588, !tbaa !498
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !589, !tbaa !498
  %cmp11 = icmp eq %struct._object* %21, null, !dbg !591
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !592

if.then.12:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !593
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !593

if.end.13:                                        ; preds = %if.else
  br label %do.body, !dbg !594

do.body:                                          ; preds = %if.end.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !595
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !595
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !383, metadata !502), !dbg !597
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !598, !tbaa !498
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !597, !tbaa !498
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !599, !tbaa !498
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !601
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !602, !tbaa !603
  %dec = add i64 %25, -1, !dbg !602
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !602, !tbaa !603
  %cmp14 = icmp ne i64 %dec, 0, !dbg !604
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !605

if.then.15:                                       ; preds = %do.body
  br label %if.end.18, !dbg !606

if.else.16:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !608, !tbaa !498
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !610
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !610, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !611
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !611, !tbaa !612
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !616, !tbaa !498
  call void %28(%struct._object* %29), !dbg !617
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !618
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !618
  br label %do.cond, !dbg !620

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !621

do.end:                                           ; preds = %do.cond
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end.9
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !623, !tbaa !603
  %inc = add i64 %31, 1, !dbg !623
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !623, !tbaa !603
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !624
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !624

cleanup:                                          ; preds = %if.end.19, %if.then.12, %if.then.8, %if.then.2, %if.then
  %32 = bitcast i64* %index to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !625
  %33 = bitcast i64* %hi to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !625
  %34 = bitcast i64* %lo to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !625
  %35 = bitcast %struct._object** %result to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !625
  %36 = bitcast %struct._object** %item to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !625
  %37 = bitcast %struct._object** %list to i8*, !dbg !625
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !625
  %38 = load %struct._object*, %struct._object** %retval, !dbg !625
  ret %struct._object* %38, !dbg !625
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bisect_left(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !389, metadata !502), !dbg !626
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !390, metadata !502), !dbg !627
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !391, metadata !502), !dbg !628
  %0 = bitcast %struct._object** %list to i8*, !dbg !629
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !629
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !392, metadata !502), !dbg !630
  %1 = bitcast %struct._object** %item to i8*, !dbg !629
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !629
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !393, metadata !502), !dbg !631
  %2 = bitcast i64* %lo to i8*, !dbg !632
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !632
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !394, metadata !502), !dbg !633
  store i64 0, i64* %lo, align 8, !dbg !633, !tbaa !511
  %3 = bitcast i64* %hi to i8*, !dbg !634
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !634
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !395, metadata !502), !dbg !635
  store i64 -1, i64* %hi, align 8, !dbg !635, !tbaa !511
  %4 = bitcast i64* %index to i8*, !dbg !636
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %index, metadata !396, metadata !502), !dbg !637
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !638, !tbaa !498
  %6 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !640, !tbaa !498
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @bisect_left.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi), !dbg !641
  %tobool = icmp ne i32 %call, 0, !dbg !641
  br i1 %tobool, label %if.end, label %if.then, !dbg !642

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !643
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !643

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %list, align 8, !dbg !644, !tbaa !498
  %8 = load %struct._object*, %struct._object** %item, align 8, !dbg !645, !tbaa !498
  %9 = load i64, i64* %lo, align 8, !dbg !646, !tbaa !511
  %10 = load i64, i64* %hi, align 8, !dbg !647, !tbaa !511
  %call1 = call i64 @internal_bisect_left(%struct._object* %7, %struct._object* %8, i64 %9, i64 %10), !dbg !648
  store i64 %call1, i64* %index, align 8, !dbg !649, !tbaa !511
  %11 = load i64, i64* %index, align 8, !dbg !650, !tbaa !511
  %cmp = icmp slt i64 %11, 0, !dbg !652
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !653

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !654
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !654

if.end.3:                                         ; preds = %if.end
  %12 = load i64, i64* %index, align 8, !dbg !655, !tbaa !511
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %12), !dbg !656
  store %struct._object* %call4, %struct._object** %retval, !dbg !657
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !657

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %13 = bitcast i64* %index to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !658
  %14 = bitcast i64* %hi to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !658
  %15 = bitcast i64* %lo to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !658
  %16 = bitcast %struct._object** %item to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !658
  %17 = bitcast %struct._object** %list to i8*, !dbg !658
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !658
  %18 = load %struct._object*, %struct._object** %retval, !dbg !658
  ret %struct._object* %18, !dbg !658
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @insort_left(%struct._object* %self, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !411, metadata !502), !dbg !659
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !412, metadata !502), !dbg !660
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !413, metadata !502), !dbg !661
  %0 = bitcast %struct._object** %list to i8*, !dbg !662
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !662
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !414, metadata !502), !dbg !663
  %1 = bitcast %struct._object** %item to i8*, !dbg !662
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !662
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !415, metadata !502), !dbg !664
  %2 = bitcast %struct._object** %result to i8*, !dbg !662
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !662
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !416, metadata !502), !dbg !665
  %3 = bitcast i64* %lo to i8*, !dbg !666
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !666
  call void @llvm.dbg.declare(metadata i64* %lo, metadata !417, metadata !502), !dbg !667
  store i64 0, i64* %lo, align 8, !dbg !667, !tbaa !511
  %4 = bitcast i64* %hi to i8*, !dbg !668
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !668
  call void @llvm.dbg.declare(metadata i64* %hi, metadata !418, metadata !502), !dbg !669
  store i64 -1, i64* %hi, align 8, !dbg !669, !tbaa !511
  %5 = bitcast i64* %index to i8*, !dbg !670
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !670
  call void @llvm.dbg.declare(metadata i64* %index, metadata !419, metadata !502), !dbg !671
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !672, !tbaa !498
  %7 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !674, !tbaa !498
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @insort_left.keywords, i32 0, i32 0), %struct._object** %list, %struct._object** %item, i64* %lo, i64* %hi), !dbg !675
  %tobool = icmp ne i32 %call, 0, !dbg !675
  br i1 %tobool, label %if.end, label %if.then, !dbg !676

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !677
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !677

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** %list, align 8, !dbg !678, !tbaa !498
  %9 = load %struct._object*, %struct._object** %item, align 8, !dbg !679, !tbaa !498
  %10 = load i64, i64* %lo, align 8, !dbg !680, !tbaa !511
  %11 = load i64, i64* %hi, align 8, !dbg !681, !tbaa !511
  %call1 = call i64 @internal_bisect_left(%struct._object* %8, %struct._object* %9, i64 %10, i64 %11), !dbg !682
  store i64 %call1, i64* %index, align 8, !dbg !683, !tbaa !511
  %12 = load i64, i64* %index, align 8, !dbg !684, !tbaa !511
  %cmp = icmp slt i64 %12, 0, !dbg !686
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !687

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !688

if.end.3:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %list, align 8, !dbg !689, !tbaa !498
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !690
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !690, !tbaa !570
  %cmp4 = icmp eq %struct._typeobject* %14, @PyList_Type, !dbg !691
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !692

if.then.5:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %list, align 8, !dbg !693, !tbaa !498
  %16 = load i64, i64* %index, align 8, !dbg !696, !tbaa !511
  %17 = load %struct._object*, %struct._object** %item, align 8, !dbg !697, !tbaa !498
  %call6 = call i32 @PyList_Insert(%struct._object* %15, i64 %16, %struct._object* %17), !dbg !698
  %cmp7 = icmp slt i32 %call6, 0, !dbg !699
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !700

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval, !dbg !701
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !701

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.19, !dbg !702

if.else:                                          ; preds = %if.end.3
  %18 = load %struct._object*, %struct._object** %list, align 8, !dbg !703, !tbaa !498
  %19 = load i64, i64* %index, align 8, !dbg !704, !tbaa !511
  %20 = load %struct._object*, %struct._object** %item, align 8, !dbg !705, !tbaa !498
  %call10 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %18, %struct._Py_Identifier* @PyId_insert, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i64 %19, %struct._object* %20), !dbg !706
  store %struct._object* %call10, %struct._object** %result, align 8, !dbg !707, !tbaa !498
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !708, !tbaa !498
  %cmp11 = icmp eq %struct._object* %21, null, !dbg !710
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !711

if.then.12:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !712
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !712

if.end.13:                                        ; preds = %if.else
  br label %do.body, !dbg !713

do.body:                                          ; preds = %if.end.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 8, i8* %22) #3, !dbg !714
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !420, metadata !502), !dbg !716
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !717, !tbaa !498
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !716, !tbaa !498
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !718, !tbaa !498
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !720
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !721, !tbaa !603
  %dec = add i64 %25, -1, !dbg !721
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !721, !tbaa !603
  %cmp14 = icmp ne i64 %dec, 0, !dbg !722
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !723

if.then.15:                                       ; preds = %do.body
  br label %if.end.18, !dbg !724

if.else.16:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !726, !tbaa !498
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !728
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !728, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !729
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !729, !tbaa !612
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !730, !tbaa !498
  call void %28(%struct._object* %29), !dbg !731
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !732
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !732
  br label %do.cond, !dbg !734

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !735

do.end:                                           ; preds = %do.cond
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %if.end.9
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !737, !tbaa !603
  %inc = add i64 %31, 1, !dbg !737
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !737, !tbaa !603
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !738
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !738

cleanup:                                          ; preds = %if.end.19, %if.then.12, %if.then.8, %if.then.2, %if.then
  %32 = bitcast i64* %index to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !739
  %33 = bitcast i64* %hi to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !739
  %34 = bitcast i64* %lo to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !739
  %35 = bitcast %struct._object** %result to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !739
  %36 = bitcast %struct._object** %item to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !739
  %37 = bitcast %struct._object** %list to i8*, !dbg !739
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !739
  %38 = load %struct._object*, %struct._object** %retval, !dbg !739
  ret %struct._object* %38, !dbg !739
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @internal_bisect_right(%struct._object* %list, %struct._object* %item, i64 %lo, i64 %hi) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %litem = alloca %struct._object*, align 8
  %mid = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %list.addr, metadata !362, metadata !502), !dbg !740
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !363, metadata !502), !dbg !741
  store i64 %lo, i64* %lo.addr, align 8, !tbaa !511
  call void @llvm.dbg.declare(metadata i64* %lo.addr, metadata !364, metadata !502), !dbg !742
  store i64 %hi, i64* %hi.addr, align 8, !tbaa !511
  call void @llvm.dbg.declare(metadata i64* %hi.addr, metadata !365, metadata !502), !dbg !743
  %0 = bitcast %struct._object** %litem to i8*, !dbg !744
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !744
  call void @llvm.dbg.declare(metadata %struct._object** %litem, metadata !366, metadata !502), !dbg !745
  %1 = bitcast i64* %mid to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !746
  call void @llvm.dbg.declare(metadata i64* %mid, metadata !367, metadata !502), !dbg !747
  %2 = bitcast i64* %res to i8*, !dbg !746
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !746
  call void @llvm.dbg.declare(metadata i64* %res, metadata !368, metadata !502), !dbg !748
  %3 = load i64, i64* %lo.addr, align 8, !dbg !749, !tbaa !511
  %cmp = icmp slt i64 %3, 0, !dbg !751
  br i1 %cmp, label %if.then, label %if.end, !dbg !752

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !753, !tbaa !498
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)), !dbg !755
  store i64 -1, i64* %retval, !dbg !756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !756

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %hi.addr, align 8, !dbg !757, !tbaa !511
  %cmp1 = icmp eq i64 %5, -1, !dbg !759
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !760

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %list.addr, align 8, !dbg !761, !tbaa !498
  %call = call i64 @PySequence_Size(%struct._object* %6), !dbg !763
  store i64 %call, i64* %hi.addr, align 8, !dbg !764, !tbaa !511
  %7 = load i64, i64* %hi.addr, align 8, !dbg !765, !tbaa !511
  %cmp3 = icmp slt i64 %7, 0, !dbg !767
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !768

if.then.4:                                        ; preds = %if.then.2
  store i64 -1, i64* %retval, !dbg !769
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !769

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6, !dbg !770

if.end.6:                                         ; preds = %if.end.5, %if.end
  br label %while.cond, !dbg !771

while.cond:                                       ; preds = %if.end.24, %if.end.6
  %8 = load i64, i64* %lo.addr, align 8, !dbg !772, !tbaa !511
  %9 = load i64, i64* %hi.addr, align 8, !dbg !775, !tbaa !511
  %cmp7 = icmp slt i64 %8, %9, !dbg !776
  br i1 %cmp7, label %while.body, label %while.end, !dbg !771

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %lo.addr, align 8, !dbg !777, !tbaa !511
  %11 = load i64, i64* %hi.addr, align 8, !dbg !778, !tbaa !511
  %add = add i64 %10, %11, !dbg !779
  %div = udiv i64 %add, 2, !dbg !780
  store i64 %div, i64* %mid, align 8, !dbg !781, !tbaa !511
  %12 = load %struct._object*, %struct._object** %list.addr, align 8, !dbg !782, !tbaa !498
  %13 = load i64, i64* %mid, align 8, !dbg !783, !tbaa !511
  %call8 = call %struct._object* @PySequence_GetItem(%struct._object* %12, i64 %13), !dbg !784
  store %struct._object* %call8, %struct._object** %litem, align 8, !dbg !785, !tbaa !498
  %14 = load %struct._object*, %struct._object** %litem, align 8, !dbg !786, !tbaa !498
  %cmp9 = icmp eq %struct._object* %14, null, !dbg !788
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !789

if.then.10:                                       ; preds = %while.body
  store i64 -1, i64* %retval, !dbg !790
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !790

if.end.11:                                        ; preds = %while.body
  %15 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !791, !tbaa !498
  %16 = load %struct._object*, %struct._object** %litem, align 8, !dbg !792, !tbaa !498
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %16, i32 0), !dbg !793
  %conv = sext i32 %call12 to i64, !dbg !793
  store i64 %conv, i64* %res, align 8, !dbg !794, !tbaa !511
  br label %do.body, !dbg !795

do.body:                                          ; preds = %if.end.11
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !796
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !796
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !369, metadata !502), !dbg !798
  %18 = load %struct._object*, %struct._object** %litem, align 8, !dbg !799, !tbaa !498
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !798, !tbaa !498
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !800, !tbaa !498
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !802
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !803, !tbaa !603
  %dec = add i64 %20, -1, !dbg !803
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !803, !tbaa !603
  %cmp13 = icmp ne i64 %dec, 0, !dbg !804
  br i1 %cmp13, label %if.then.15, label %if.else, !dbg !805

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !806

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !808, !tbaa !498
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !810
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !810, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !811
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !811, !tbaa !612
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !812, !tbaa !498
  call void %23(%struct._object* %24), !dbg !813
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !814
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !814
  br label %do.cond, !dbg !816

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !817

do.end:                                           ; preds = %do.cond
  %26 = load i64, i64* %res, align 8, !dbg !819, !tbaa !511
  %cmp17 = icmp slt i64 %26, 0, !dbg !821
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !822

if.then.19:                                       ; preds = %do.end
  store i64 -1, i64* %retval, !dbg !823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !823

if.end.20:                                        ; preds = %do.end
  %27 = load i64, i64* %res, align 8, !dbg !824, !tbaa !511
  %tobool = icmp ne i64 %27, 0, !dbg !824
  br i1 %tobool, label %if.then.21, label %if.else.22, !dbg !826

if.then.21:                                       ; preds = %if.end.20
  %28 = load i64, i64* %mid, align 8, !dbg !827, !tbaa !511
  store i64 %28, i64* %hi.addr, align 8, !dbg !828, !tbaa !511
  br label %if.end.24, !dbg !829

if.else.22:                                       ; preds = %if.end.20
  %29 = load i64, i64* %mid, align 8, !dbg !830, !tbaa !511
  %add23 = add i64 %29, 1, !dbg !831
  store i64 %add23, i64* %lo.addr, align 8, !dbg !832, !tbaa !511
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %while.cond, !dbg !771

while.end:                                        ; preds = %while.cond
  %30 = load i64, i64* %lo.addr, align 8, !dbg !833, !tbaa !511
  store i64 %30, i64* %retval, !dbg !834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !834

cleanup:                                          ; preds = %while.end, %if.then.19, %if.then.10, %if.then.4, %if.then
  %31 = bitcast i64* %res to i8*, !dbg !835
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !835
  %32 = bitcast i64* %mid to i8*, !dbg !835
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !835
  %33 = bitcast %struct._object** %litem to i8*, !dbg !835
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !835
  %34 = load i64, i64* %retval, !dbg !835
  ret i64 %34, !dbg !835
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PySequence_Size(%struct._object*) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare i32 @PyList_Insert(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @internal_bisect_left(%struct._object* %list, %struct._object* %item, i64 %lo, i64 %hi) #0 {
entry:
  %retval = alloca i64, align 8
  %list.addr = alloca %struct._object*, align 8
  %item.addr = alloca %struct._object*, align 8
  %lo.addr = alloca i64, align 8
  %hi.addr = alloca i64, align 8
  %litem = alloca %struct._object*, align 8
  %mid = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %list, %struct._object** %list.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %list.addr, metadata !399, metadata !502), !dbg !836
  store %struct._object* %item, %struct._object** %item.addr, align 8, !tbaa !498
  call void @llvm.dbg.declare(metadata %struct._object** %item.addr, metadata !400, metadata !502), !dbg !837
  store i64 %lo, i64* %lo.addr, align 8, !tbaa !511
  call void @llvm.dbg.declare(metadata i64* %lo.addr, metadata !401, metadata !502), !dbg !838
  store i64 %hi, i64* %hi.addr, align 8, !tbaa !511
  call void @llvm.dbg.declare(metadata i64* %hi.addr, metadata !402, metadata !502), !dbg !839
  %0 = bitcast %struct._object** %litem to i8*, !dbg !840
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !840
  call void @llvm.dbg.declare(metadata %struct._object** %litem, metadata !403, metadata !502), !dbg !841
  %1 = bitcast i64* %mid to i8*, !dbg !842
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !842
  call void @llvm.dbg.declare(metadata i64* %mid, metadata !404, metadata !502), !dbg !843
  %2 = bitcast i64* %res to i8*, !dbg !842
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !842
  call void @llvm.dbg.declare(metadata i64* %res, metadata !405, metadata !502), !dbg !844
  %3 = load i64, i64* %lo.addr, align 8, !dbg !845, !tbaa !511
  %cmp = icmp slt i64 %3, 0, !dbg !847
  br i1 %cmp, label %if.then, label %if.end, !dbg !848

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !849, !tbaa !498
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0)), !dbg !851
  store i64 -1, i64* %retval, !dbg !852
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !852

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %hi.addr, align 8, !dbg !853, !tbaa !511
  %cmp1 = icmp eq i64 %5, -1, !dbg !855
  br i1 %cmp1, label %if.then.2, label %if.end.6, !dbg !856

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %list.addr, align 8, !dbg !857, !tbaa !498
  %call = call i64 @PySequence_Size(%struct._object* %6), !dbg !859
  store i64 %call, i64* %hi.addr, align 8, !dbg !860, !tbaa !511
  %7 = load i64, i64* %hi.addr, align 8, !dbg !861, !tbaa !511
  %cmp3 = icmp slt i64 %7, 0, !dbg !863
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !864

if.then.4:                                        ; preds = %if.then.2
  store i64 -1, i64* %retval, !dbg !865
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !865

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6, !dbg !866

if.end.6:                                         ; preds = %if.end.5, %if.end
  br label %while.cond, !dbg !867

while.cond:                                       ; preds = %if.end.24, %if.end.6
  %8 = load i64, i64* %lo.addr, align 8, !dbg !868, !tbaa !511
  %9 = load i64, i64* %hi.addr, align 8, !dbg !871, !tbaa !511
  %cmp7 = icmp slt i64 %8, %9, !dbg !872
  br i1 %cmp7, label %while.body, label %while.end, !dbg !867

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %lo.addr, align 8, !dbg !873, !tbaa !511
  %11 = load i64, i64* %hi.addr, align 8, !dbg !874, !tbaa !511
  %add = add i64 %10, %11, !dbg !875
  %div = udiv i64 %add, 2, !dbg !876
  store i64 %div, i64* %mid, align 8, !dbg !877, !tbaa !511
  %12 = load %struct._object*, %struct._object** %list.addr, align 8, !dbg !878, !tbaa !498
  %13 = load i64, i64* %mid, align 8, !dbg !879, !tbaa !511
  %call8 = call %struct._object* @PySequence_GetItem(%struct._object* %12, i64 %13), !dbg !880
  store %struct._object* %call8, %struct._object** %litem, align 8, !dbg !881, !tbaa !498
  %14 = load %struct._object*, %struct._object** %litem, align 8, !dbg !882, !tbaa !498
  %cmp9 = icmp eq %struct._object* %14, null, !dbg !884
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !885

if.then.10:                                       ; preds = %while.body
  store i64 -1, i64* %retval, !dbg !886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !886

if.end.11:                                        ; preds = %while.body
  %15 = load %struct._object*, %struct._object** %litem, align 8, !dbg !887, !tbaa !498
  %16 = load %struct._object*, %struct._object** %item.addr, align 8, !dbg !888, !tbaa !498
  %call12 = call i32 @PyObject_RichCompareBool(%struct._object* %15, %struct._object* %16, i32 0), !dbg !889
  %conv = sext i32 %call12 to i64, !dbg !889
  store i64 %conv, i64* %res, align 8, !dbg !890, !tbaa !511
  br label %do.body, !dbg !891

do.body:                                          ; preds = %if.end.11
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !892
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !892
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !406, metadata !502), !dbg !894
  %18 = load %struct._object*, %struct._object** %litem, align 8, !dbg !895, !tbaa !498
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !894, !tbaa !498
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !896, !tbaa !498
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !898
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !899, !tbaa !603
  %dec = add i64 %20, -1, !dbg !899
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !899, !tbaa !603
  %cmp13 = icmp ne i64 %dec, 0, !dbg !900
  br i1 %cmp13, label %if.then.15, label %if.else, !dbg !901

if.then.15:                                       ; preds = %do.body
  br label %if.end.16, !dbg !902

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !904, !tbaa !498
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !906
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !906, !tbaa !570
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !907
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !907, !tbaa !612
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !908, !tbaa !498
  call void %23(%struct._object* %24), !dbg !909
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !910
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !910
  br label %do.cond, !dbg !912

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !913

do.end:                                           ; preds = %do.cond
  %26 = load i64, i64* %res, align 8, !dbg !915, !tbaa !511
  %cmp17 = icmp slt i64 %26, 0, !dbg !917
  br i1 %cmp17, label %if.then.19, label %if.end.20, !dbg !918

if.then.19:                                       ; preds = %do.end
  store i64 -1, i64* %retval, !dbg !919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !919

if.end.20:                                        ; preds = %do.end
  %27 = load i64, i64* %res, align 8, !dbg !920, !tbaa !511
  %tobool = icmp ne i64 %27, 0, !dbg !920
  br i1 %tobool, label %if.then.21, label %if.else.23, !dbg !922

if.then.21:                                       ; preds = %if.end.20
  %28 = load i64, i64* %mid, align 8, !dbg !923, !tbaa !511
  %add22 = add i64 %28, 1, !dbg !924
  store i64 %add22, i64* %lo.addr, align 8, !dbg !925, !tbaa !511
  br label %if.end.24, !dbg !926

if.else.23:                                       ; preds = %if.end.20
  %29 = load i64, i64* %mid, align 8, !dbg !927, !tbaa !511
  store i64 %29, i64* %hi.addr, align 8, !dbg !928, !tbaa !511
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.21
  br label %while.cond, !dbg !867

while.end:                                        ; preds = %while.cond
  %30 = load i64, i64* %lo.addr, align 8, !dbg !929, !tbaa !511
  store i64 %30, i64* %retval, !dbg !930
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !930

cleanup:                                          ; preds = %while.end, %if.then.19, %if.then.10, %if.then.4, %if.then
  %31 = bitcast i64* %res to i8*, !dbg !931
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !931
  %32 = bitcast i64* %mid to i8*, !dbg !931
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !931
  %33 = bitcast %struct._object** %litem to i8*, !dbg !931
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !931
  %34 = load i64, i64* %retval, !dbg !931
  ret i64 %34, !dbg !931
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!492, !493, !494}
!llvm.ident = !{!495}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !343, globals: !424)
!1 = !DIFile(filename: "_bisectmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 62, baseType: !6)
!5 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !10, line: 109, baseType: !11)
!10 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !10, line: 105, size: 128, align: 64, elements: !12)
!12 = !{!13, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !11, file: !10, line: 107, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !11, file: !10, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !10, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !42, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
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
!41 = !{null, !8}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !10, line: 342, baseType: !43, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !10, line: 314, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !8, !48, !47}
!47 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 246, size: 1728, align: 64, elements: !52)
!51 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!52 = !{!53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !74, !75, !76, !77, !79, !81, !83, !87, !90, !92, !93, !94, !95, !96, !97, !98}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 247, baseType: !47, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 252, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 253, baseType: !55, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 254, baseType: !55, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 255, baseType: !55, size: 64, align: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 256, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 257, baseType: !55, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 258, baseType: !55, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 259, baseType: !55, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 261, baseType: !55, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 262, baseType: !55, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 263, baseType: !55, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 265, baseType: !67, size: 64, align: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 161, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !68, file: !51, line: 162, baseType: !67, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !68, file: !51, line: 163, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !68, file: !51, line: 167, baseType: !47, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 267, baseType: !72, size: 64, align: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 269, baseType: !47, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 273, baseType: !47, size: 32, align: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 275, baseType: !78, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 279, baseType: !80, size: 16, align: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 280, baseType: !82, size: 8, align: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 281, baseType: !84, size: 8, align: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 285, baseType: !88, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 155, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 294, baseType: !91, size: 64, align: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !50, file: !51, line: 303, baseType: !7, size: 64, align: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !50, file: !51, line: 304, baseType: !7, size: 64, align: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !50, file: !51, line: 305, baseType: !7, size: 64, align: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !50, file: !51, line: 306, baseType: !7, size: 64, align: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 307, baseType: !4, size: 64, align: 64, offset: 1472)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 309, baseType: !47, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !10, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !10, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !8, !55}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !10, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !10, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!47, !8, !55, !8}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !10, line: 345, baseType: !7, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !10, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !10, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!8, !8}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !10, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !10, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !10, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !10, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!8, !8, !8}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !10, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !10, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !10, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !10, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !10, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !10, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!8, !8, !8, !8}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !10, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !10, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !10, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !10, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !10, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !10, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!47, !8}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !10, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !10, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !10, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !10, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !10, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !10, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !10, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !10, line: 258, baseType: !7, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !10, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !10, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !10, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !10, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !10, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !10, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !10, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !10, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !10, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !10, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !10, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !10, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !10, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !10, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !10, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !10, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !10, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !10, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !10, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !10, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!14, !8}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !10, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !10, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !10, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!8, !8, !14}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !10, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !10, line: 285, baseType: !7, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !10, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !10, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!47, !8, !14, !8}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !10, line: 287, baseType: !7, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !10, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !10, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!47, !8, !8}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !10, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !10, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !10, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !10, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !10, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !10, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !10, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !10, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!47, !8, !8, !8}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !10, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !10, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !8}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !15, line: 186, baseType: !14)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !10, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !10, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !10, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !10, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !10, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !10, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !10, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !10, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !10, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !10, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!47, !8, !235, !47}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !10, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !10, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !10, line: 179, baseType: !7, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !10, line: 180, baseType: !8, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !10, line: 181, baseType: !14, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !10, line: 182, baseType: !14, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !10, line: 184, baseType: !47, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !10, line: 185, baseType: !47, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !10, line: 186, baseType: !55, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !10, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !10, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !10, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !10, line: 190, baseType: !7, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !10, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !10, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !8, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !10, line: 366, baseType: !6, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !10, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !10, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !10, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!47, !8, !263, !7}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !10, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!47, !8, !7}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !10, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !10, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !10, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!8, !8, !8, !47}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !10, line: 382, baseType: !14, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !10, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !10, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !10, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !10, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !10, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !32, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !47, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !10, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !10, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !10, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !55, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!8, !8, !7}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!47, !8, !8, !7}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !55, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !7, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !10, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !10, line: 393, baseType: !8, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !10, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !10, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !10, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !10, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !10, line: 396, baseType: !14, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !10, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !10, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !10, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !10, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!8, !22, !14}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !10, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !10, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!8, !22, !8, !8}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !10, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !10, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !7}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !10, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !10, line: 402, baseType: !8, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !10, line: 403, baseType: !8, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !10, line: 404, baseType: !8, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !10, line: 405, baseType: !8, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !10, line: 406, baseType: !8, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !10, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !10, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !10, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!343 = !{!344, !348, !358, !372, !387, !397, !409}
!344 = !DISubprogram(name: "PyInit__bisect", scope: !345, file: !345, line: 258, type: !346, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__bisect, variables: !2)
!345 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_bisectmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DISubroutineType(types: !347)
!347 = !{!8}
!348 = !DISubprogram(name: "bisect_right", scope: !345, file: !345, line: 47, type: !135, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_right, variables: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357}
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !348, file: !345, line: 47, type: !8)
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !348, file: !345, line: 47, type: !8)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !348, file: !345, line: 47, type: !8)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !348, file: !345, line: 49, type: !8)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !348, file: !345, line: 49, type: !8)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !348, file: !345, line: 50, type: !14)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !348, file: !345, line: 51, type: !14)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !348, file: !345, line: 52, type: !14)
!358 = !DISubprogram(name: "internal_bisect_right", scope: !345, file: !345, line: 12, type: !359, isLocal: true, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, %struct._object*, i64, i64)* @internal_bisect_right, variables: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!14, !8, !8, !14, !14}
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !358, file: !345, line: 12, type: !8)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !358, file: !345, line: 12, type: !8)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 3, scope: !358, file: !345, line: 12, type: !14)
!365 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 4, scope: !358, file: !345, line: 12, type: !14)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "litem", scope: !358, file: !345, line: 14, type: !8)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mid", scope: !358, file: !345, line: 15, type: !14)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !358, file: !345, line: 15, type: !14)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !370, file: !345, line: 35, type: !8)
!370 = distinct !DILexicalBlock(scope: !371, file: !345, line: 35, column: 12)
!371 = distinct !DILexicalBlock(scope: !358, file: !345, line: 26, column: 21)
!372 = !DISubprogram(name: "insort_right", scope: !345, file: !345, line: 77, type: !135, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_right, variables: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !372, file: !345, line: 77, type: !8)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !372, file: !345, line: 77, type: !8)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !372, file: !345, line: 77, type: !8)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !372, file: !345, line: 79, type: !8)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !372, file: !345, line: 79, type: !8)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !372, file: !345, line: 79, type: !8)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !372, file: !345, line: 80, type: !14)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !372, file: !345, line: 81, type: !14)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !372, file: !345, line: 82, type: !14)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !384, file: !345, line: 98, type: !8)
!384 = distinct !DILexicalBlock(scope: !385, file: !345, line: 98, column: 12)
!385 = distinct !DILexicalBlock(scope: !386, file: !345, line: 94, column: 12)
!386 = distinct !DILexicalBlock(scope: !372, file: !345, line: 91, column: 9)
!387 = !DISubprogram(name: "bisect_left", scope: !345, file: !345, line: 150, type: !135, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @bisect_left, variables: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !387, file: !345, line: 150, type: !8)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !387, file: !345, line: 150, type: !8)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !387, file: !345, line: 150, type: !8)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !387, file: !345, line: 152, type: !8)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !387, file: !345, line: 152, type: !8)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !387, file: !345, line: 153, type: !14)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !387, file: !345, line: 154, type: !14)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !387, file: !345, line: 155, type: !14)
!397 = !DISubprogram(name: "internal_bisect_left", scope: !345, file: !345, line: 115, type: !359, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._object*, %struct._object*, i64, i64)* @internal_bisect_left, variables: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406}
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !397, file: !345, line: 115, type: !8)
!400 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "item", arg: 2, scope: !397, file: !345, line: 115, type: !8)
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lo", arg: 3, scope: !397, file: !345, line: 115, type: !14)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hi", arg: 4, scope: !397, file: !345, line: 115, type: !14)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "litem", scope: !397, file: !345, line: 117, type: !8)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mid", scope: !397, file: !345, line: 118, type: !14)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !397, file: !345, line: 118, type: !14)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !407, file: !345, line: 138, type: !8)
!407 = distinct !DILexicalBlock(scope: !408, file: !345, line: 138, column: 12)
!408 = distinct !DILexicalBlock(scope: !397, file: !345, line: 129, column: 21)
!409 = !DISubprogram(name: "insort_left", scope: !345, file: !345, line: 180, type: !135, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @insort_left, variables: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !345, line: 180, type: !8)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !345, line: 180, type: !8)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !409, file: !345, line: 180, type: !8)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !409, file: !345, line: 182, type: !8)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !409, file: !345, line: 182, type: !8)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !409, file: !345, line: 182, type: !8)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !409, file: !345, line: 183, type: !14)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !409, file: !345, line: 184, type: !14)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !409, file: !345, line: 185, type: !14)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !345, line: 201, type: !8)
!421 = distinct !DILexicalBlock(scope: !422, file: !345, line: 201, column: 12)
!422 = distinct !DILexicalBlock(scope: !423, file: !345, line: 197, column: 12)
!423 = distinct !DILexicalBlock(scope: !409, file: !345, line: 194, column: 9)
!424 = !{!425, !448, !452, !456, !460, !464, !468, !469, !477, !481, !482, !483, !487, !488}
!425 = !DIGlobalVariable(name: "_bisectmodule", scope: !0, file: !345, line: 245, type: !426, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_bisectmodule)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !427, line: 47, size: 832, align: 64, elements: !428)
!427 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!428 = !{!429, !438, !439, !440, !441, !444, !445, !446, !447}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !426, file: !427, line: 48, baseType: !430, size: 320, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !427, line: 38, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !427, line: 33, size: 320, align: 64, elements: !432)
!432 = !{!433, !434, !436, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !431, file: !427, line: 34, baseType: !9, size: 128, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !431, file: !427, line: 35, baseType: !435, size: 64, align: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !431, file: !427, line: 36, baseType: !14, size: 64, align: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !431, file: !427, line: 37, baseType: !8, size: 64, align: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !426, file: !427, line: 49, baseType: !32, size: 64, align: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !426, file: !427, line: 50, baseType: !32, size: 64, align: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !426, file: !427, line: 51, baseType: !14, size: 64, align: 64, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !426, file: !427, line: 52, baseType: !442, size: 64, align: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !426, file: !427, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !426, file: !427, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !426, file: !427, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !426, file: !427, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!448 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !345, line: 236, type: !449, isLocal: true, isDefinition: true, variable: [266 x i8]* @module_doc)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2128, align: 8, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 266)
!452 = !DIGlobalVariable(name: "bisect_methods", scope: !0, file: !345, line: 220, type: !453, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMethodDef]* @bisect_methods)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 1792, align: 64, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 7)
!456 = !DIGlobalVariable(name: "keywords", scope: !348, file: !345, line: 53, type: !457, isLocal: true, isDefinition: true, variable: [5 x i8*]* @bisect_right.keywords)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 320, align: 64, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 5)
!460 = !DIGlobalVariable(name: "bisect_right_doc", scope: !0, file: !345, line: 64, type: !461, isLocal: true, isDefinition: true, variable: [387 x i8]* @bisect_right_doc)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3096, align: 8, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 387)
!464 = !DIGlobalVariable(name: "bisect_doc", scope: !0, file: !345, line: 217, type: !465, isLocal: true, isDefinition: true, variable: [27 x i8]* @bisect_doc)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 216, align: 8, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 27)
!468 = !DIGlobalVariable(name: "keywords", scope: !372, file: !345, line: 83, type: !457, isLocal: true, isDefinition: true, variable: [5 x i8*]* @insort_right.keywords)
!469 = !DIGlobalVariable(name: "PyId_insert", scope: !0, file: !345, line: 9, type: !470, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_insert)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !10, line: 144, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !10, line: 140, size: 192, align: 64, elements: !472)
!472 = !{!473, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !10, line: 141, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !471, file: !10, line: 142, baseType: !32, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !471, file: !10, line: 143, baseType: !8, size: 64, align: 64, offset: 128)
!477 = !DIGlobalVariable(name: "insort_right_doc", scope: !0, file: !345, line: 104, type: !478, isLocal: true, isDefinition: true, variable: [256 x i8]* @insort_right_doc)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, align: 8, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 256)
!481 = !DIGlobalVariable(name: "insort_doc", scope: !0, file: !345, line: 218, type: !465, isLocal: true, isDefinition: true, variable: [27 x i8]* @insort_doc)
!482 = !DIGlobalVariable(name: "keywords", scope: !387, file: !345, line: 156, type: !457, isLocal: true, isDefinition: true, variable: [5 x i8*]* @bisect_left.keywords)
!483 = !DIGlobalVariable(name: "bisect_left_doc", scope: !0, file: !345, line: 167, type: !484, isLocal: true, isDefinition: true, variable: [386 x i8]* @bisect_left_doc)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3088, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 386)
!487 = !DIGlobalVariable(name: "keywords", scope: !409, file: !345, line: 186, type: !457, isLocal: true, isDefinition: true, variable: [5 x i8*]* @insort_left.keywords)
!488 = !DIGlobalVariable(name: "insort_left_doc", scope: !0, file: !345, line: 207, type: !489, isLocal: true, isDefinition: true, variable: [253 x i8]* @insort_left_doc)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2024, align: 8, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 253)
!492 = !{i32 2, !"Dwarf Version", i32 4}
!493 = !{i32 2, !"Debug Info Version", i32 3}
!494 = !{i32 1, !"PIC Level", i32 2}
!495 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!496 = !DILocation(line: 260, column: 12, scope: !344)
!497 = !DILocation(line: 260, column: 5, scope: !344)
!498 = !{!499, !499, i64 0}
!499 = !{!"any pointer", !500, i64 0}
!500 = !{!"omnipotent char", !501, i64 0}
!501 = !{!"Simple C/C++ TBAA"}
!502 = !DIExpression()
!503 = !DILocation(line: 47, column: 24, scope: !348)
!504 = !DILocation(line: 47, column: 40, scope: !348)
!505 = !DILocation(line: 47, column: 56, scope: !348)
!506 = !DILocation(line: 49, column: 5, scope: !348)
!507 = !DILocation(line: 49, column: 15, scope: !348)
!508 = !DILocation(line: 49, column: 22, scope: !348)
!509 = !DILocation(line: 50, column: 5, scope: !348)
!510 = !DILocation(line: 50, column: 16, scope: !348)
!511 = !{!512, !512, i64 0}
!512 = !{!"long", !500, i64 0}
!513 = !DILocation(line: 51, column: 5, scope: !348)
!514 = !DILocation(line: 51, column: 16, scope: !348)
!515 = !DILocation(line: 52, column: 5, scope: !348)
!516 = !DILocation(line: 52, column: 16, scope: !348)
!517 = !DILocation(line: 55, column: 45, scope: !518)
!518 = distinct !DILexicalBlock(scope: !348, file: !345, line: 55, column: 9)
!519 = !DILocation(line: 55, column: 51, scope: !518)
!520 = !DILocation(line: 55, column: 10, scope: !518)
!521 = !DILocation(line: 55, column: 9, scope: !348)
!522 = !DILocation(line: 57, column: 9, scope: !518)
!523 = !DILocation(line: 58, column: 35, scope: !348)
!524 = !DILocation(line: 58, column: 41, scope: !348)
!525 = !DILocation(line: 58, column: 47, scope: !348)
!526 = !DILocation(line: 58, column: 51, scope: !348)
!527 = !DILocation(line: 58, column: 13, scope: !348)
!528 = !DILocation(line: 58, column: 11, scope: !348)
!529 = !DILocation(line: 59, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !348, file: !345, line: 59, column: 9)
!531 = !DILocation(line: 59, column: 15, scope: !530)
!532 = !DILocation(line: 59, column: 9, scope: !348)
!533 = !DILocation(line: 60, column: 9, scope: !530)
!534 = !DILocation(line: 61, column: 31, scope: !348)
!535 = !DILocation(line: 61, column: 12, scope: !348)
!536 = !DILocation(line: 61, column: 5, scope: !348)
!537 = !DILocation(line: 62, column: 1, scope: !348)
!538 = !DILocation(line: 77, column: 24, scope: !372)
!539 = !DILocation(line: 77, column: 40, scope: !372)
!540 = !DILocation(line: 77, column: 56, scope: !372)
!541 = !DILocation(line: 79, column: 5, scope: !372)
!542 = !DILocation(line: 79, column: 15, scope: !372)
!543 = !DILocation(line: 79, column: 22, scope: !372)
!544 = !DILocation(line: 79, column: 29, scope: !372)
!545 = !DILocation(line: 80, column: 5, scope: !372)
!546 = !DILocation(line: 80, column: 16, scope: !372)
!547 = !DILocation(line: 81, column: 5, scope: !372)
!548 = !DILocation(line: 81, column: 16, scope: !372)
!549 = !DILocation(line: 82, column: 5, scope: !372)
!550 = !DILocation(line: 82, column: 16, scope: !372)
!551 = !DILocation(line: 85, column: 45, scope: !552)
!552 = distinct !DILexicalBlock(scope: !372, file: !345, line: 85, column: 9)
!553 = !DILocation(line: 85, column: 51, scope: !552)
!554 = !DILocation(line: 85, column: 10, scope: !552)
!555 = !DILocation(line: 85, column: 9, scope: !372)
!556 = !DILocation(line: 87, column: 9, scope: !552)
!557 = !DILocation(line: 88, column: 35, scope: !372)
!558 = !DILocation(line: 88, column: 41, scope: !372)
!559 = !DILocation(line: 88, column: 47, scope: !372)
!560 = !DILocation(line: 88, column: 51, scope: !372)
!561 = !DILocation(line: 88, column: 13, scope: !372)
!562 = !DILocation(line: 88, column: 11, scope: !372)
!563 = !DILocation(line: 89, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !372, file: !345, line: 89, column: 9)
!565 = !DILocation(line: 89, column: 15, scope: !564)
!566 = !DILocation(line: 89, column: 9, scope: !372)
!567 = !DILocation(line: 90, column: 9, scope: !564)
!568 = !DILocation(line: 91, column: 24, scope: !386)
!569 = !DILocation(line: 91, column: 32, scope: !386)
!570 = !{!571, !499, i64 8}
!571 = !{!"_object", !512, i64 0, !499, i64 8}
!572 = !DILocation(line: 91, column: 41, scope: !386)
!573 = !DILocation(line: 91, column: 9, scope: !372)
!574 = !DILocation(line: 92, column: 27, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !345, line: 92, column: 13)
!576 = distinct !DILexicalBlock(scope: !386, file: !345, line: 91, column: 59)
!577 = !DILocation(line: 92, column: 33, scope: !575)
!578 = !DILocation(line: 92, column: 40, scope: !575)
!579 = !DILocation(line: 92, column: 13, scope: !575)
!580 = !DILocation(line: 92, column: 46, scope: !575)
!581 = !DILocation(line: 92, column: 13, scope: !576)
!582 = !DILocation(line: 93, column: 13, scope: !575)
!583 = !DILocation(line: 94, column: 5, scope: !576)
!584 = !DILocation(line: 95, column: 47, scope: !385)
!585 = !DILocation(line: 95, column: 73, scope: !385)
!586 = !DILocation(line: 95, column: 80, scope: !385)
!587 = !DILocation(line: 95, column: 18, scope: !385)
!588 = !DILocation(line: 95, column: 16, scope: !385)
!589 = !DILocation(line: 96, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !385, file: !345, line: 96, column: 13)
!591 = !DILocation(line: 96, column: 20, scope: !590)
!592 = !DILocation(line: 96, column: 13, scope: !385)
!593 = !DILocation(line: 97, column: 13, scope: !590)
!594 = !DILocation(line: 98, column: 9, scope: !385)
!595 = !DILocation(line: 98, column: 14, scope: !596)
!596 = !DILexicalBlockFile(scope: !384, file: !345, discriminator: 1)
!597 = !DILocation(line: 98, column: 24, scope: !384)
!598 = !DILocation(line: 98, column: 54, scope: !384)
!599 = !DILocation(line: 98, column: 71, scope: !600)
!600 = distinct !DILexicalBlock(scope: !384, file: !345, line: 98, column: 68)
!601 = !DILocation(line: 98, column: 88, scope: !600)
!602 = !DILocation(line: 98, column: 68, scope: !600)
!603 = !{!571, !512, i64 0}
!604 = !DILocation(line: 98, column: 98, scope: !600)
!605 = !DILocation(line: 98, column: 68, scope: !384)
!606 = !DILocation(line: 98, column: 68, scope: !607)
!607 = !DILexicalBlockFile(scope: !384, file: !345, discriminator: 2)
!608 = !DILocation(line: 98, column: 129, scope: !609)
!609 = !DILexicalBlockFile(scope: !600, file: !345, discriminator: 3)
!610 = !DILocation(line: 98, column: 147, scope: !600)
!611 = !DILocation(line: 98, column: 157, scope: !600)
!612 = !{!613, !499, i64 48}
!613 = !{!"_typeobject", !614, i64 0, !499, i64 24, !512, i64 32, !512, i64 40, !499, i64 48, !499, i64 56, !499, i64 64, !499, i64 72, !499, i64 80, !499, i64 88, !499, i64 96, !499, i64 104, !499, i64 112, !499, i64 120, !499, i64 128, !499, i64 136, !499, i64 144, !499, i64 152, !499, i64 160, !512, i64 168, !499, i64 176, !499, i64 184, !499, i64 192, !499, i64 200, !512, i64 208, !499, i64 216, !499, i64 224, !499, i64 232, !499, i64 240, !499, i64 248, !499, i64 256, !499, i64 264, !499, i64 272, !499, i64 280, !512, i64 288, !499, i64 296, !499, i64 304, !499, i64 312, !499, i64 320, !499, i64 328, !499, i64 336, !499, i64 344, !499, i64 352, !499, i64 360, !499, i64 368, !499, i64 376, !615, i64 384, !499, i64 392}
!614 = !{!"", !571, i64 0, !512, i64 16}
!615 = !{!"int", !500, i64 0}
!616 = !DILocation(line: 98, column: 182, scope: !600)
!617 = !DILocation(line: 98, column: 113, scope: !600)
!618 = !DILocation(line: 98, column: 201, scope: !619)
!619 = !DILexicalBlockFile(scope: !385, file: !345, discriminator: 4)
!620 = !DILocation(line: 98, column: 201, scope: !384)
!621 = !DILocation(line: 98, column: 201, scope: !622)
!622 = !DILexicalBlockFile(scope: !384, file: !345, discriminator: 5)
!623 = !DILocation(line: 101, column: 58, scope: !372)
!624 = !DILocation(line: 101, column: 5, scope: !372)
!625 = !DILocation(line: 102, column: 1, scope: !372)
!626 = !DILocation(line: 150, column: 23, scope: !387)
!627 = !DILocation(line: 150, column: 39, scope: !387)
!628 = !DILocation(line: 150, column: 55, scope: !387)
!629 = !DILocation(line: 152, column: 5, scope: !387)
!630 = !DILocation(line: 152, column: 15, scope: !387)
!631 = !DILocation(line: 152, column: 22, scope: !387)
!632 = !DILocation(line: 153, column: 5, scope: !387)
!633 = !DILocation(line: 153, column: 16, scope: !387)
!634 = !DILocation(line: 154, column: 5, scope: !387)
!635 = !DILocation(line: 154, column: 16, scope: !387)
!636 = !DILocation(line: 155, column: 5, scope: !387)
!637 = !DILocation(line: 155, column: 16, scope: !387)
!638 = !DILocation(line: 158, column: 45, scope: !639)
!639 = distinct !DILexicalBlock(scope: !387, file: !345, line: 158, column: 9)
!640 = !DILocation(line: 158, column: 51, scope: !639)
!641 = !DILocation(line: 158, column: 10, scope: !639)
!642 = !DILocation(line: 158, column: 9, scope: !387)
!643 = !DILocation(line: 160, column: 9, scope: !639)
!644 = !DILocation(line: 161, column: 34, scope: !387)
!645 = !DILocation(line: 161, column: 40, scope: !387)
!646 = !DILocation(line: 161, column: 46, scope: !387)
!647 = !DILocation(line: 161, column: 50, scope: !387)
!648 = !DILocation(line: 161, column: 13, scope: !387)
!649 = !DILocation(line: 161, column: 11, scope: !387)
!650 = !DILocation(line: 162, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !387, file: !345, line: 162, column: 9)
!652 = !DILocation(line: 162, column: 15, scope: !651)
!653 = !DILocation(line: 162, column: 9, scope: !387)
!654 = !DILocation(line: 163, column: 9, scope: !651)
!655 = !DILocation(line: 164, column: 31, scope: !387)
!656 = !DILocation(line: 164, column: 12, scope: !387)
!657 = !DILocation(line: 164, column: 5, scope: !387)
!658 = !DILocation(line: 165, column: 1, scope: !387)
!659 = !DILocation(line: 180, column: 23, scope: !409)
!660 = !DILocation(line: 180, column: 39, scope: !409)
!661 = !DILocation(line: 180, column: 55, scope: !409)
!662 = !DILocation(line: 182, column: 5, scope: !409)
!663 = !DILocation(line: 182, column: 15, scope: !409)
!664 = !DILocation(line: 182, column: 22, scope: !409)
!665 = !DILocation(line: 182, column: 29, scope: !409)
!666 = !DILocation(line: 183, column: 5, scope: !409)
!667 = !DILocation(line: 183, column: 16, scope: !409)
!668 = !DILocation(line: 184, column: 5, scope: !409)
!669 = !DILocation(line: 184, column: 16, scope: !409)
!670 = !DILocation(line: 185, column: 5, scope: !409)
!671 = !DILocation(line: 185, column: 16, scope: !409)
!672 = !DILocation(line: 188, column: 45, scope: !673)
!673 = distinct !DILexicalBlock(scope: !409, file: !345, line: 188, column: 9)
!674 = !DILocation(line: 188, column: 51, scope: !673)
!675 = !DILocation(line: 188, column: 10, scope: !673)
!676 = !DILocation(line: 188, column: 9, scope: !409)
!677 = !DILocation(line: 190, column: 9, scope: !673)
!678 = !DILocation(line: 191, column: 34, scope: !409)
!679 = !DILocation(line: 191, column: 40, scope: !409)
!680 = !DILocation(line: 191, column: 46, scope: !409)
!681 = !DILocation(line: 191, column: 50, scope: !409)
!682 = !DILocation(line: 191, column: 13, scope: !409)
!683 = !DILocation(line: 191, column: 11, scope: !409)
!684 = !DILocation(line: 192, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !409, file: !345, line: 192, column: 9)
!686 = !DILocation(line: 192, column: 15, scope: !685)
!687 = !DILocation(line: 192, column: 9, scope: !409)
!688 = !DILocation(line: 193, column: 9, scope: !685)
!689 = !DILocation(line: 194, column: 24, scope: !423)
!690 = !DILocation(line: 194, column: 32, scope: !423)
!691 = !DILocation(line: 194, column: 41, scope: !423)
!692 = !DILocation(line: 194, column: 9, scope: !409)
!693 = !DILocation(line: 195, column: 27, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !345, line: 195, column: 13)
!695 = distinct !DILexicalBlock(scope: !423, file: !345, line: 194, column: 59)
!696 = !DILocation(line: 195, column: 33, scope: !694)
!697 = !DILocation(line: 195, column: 40, scope: !694)
!698 = !DILocation(line: 195, column: 13, scope: !694)
!699 = !DILocation(line: 195, column: 46, scope: !694)
!700 = !DILocation(line: 195, column: 13, scope: !695)
!701 = !DILocation(line: 196, column: 13, scope: !694)
!702 = !DILocation(line: 197, column: 5, scope: !695)
!703 = !DILocation(line: 198, column: 47, scope: !422)
!704 = !DILocation(line: 198, column: 73, scope: !422)
!705 = !DILocation(line: 198, column: 80, scope: !422)
!706 = !DILocation(line: 198, column: 18, scope: !422)
!707 = !DILocation(line: 198, column: 16, scope: !422)
!708 = !DILocation(line: 199, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !422, file: !345, line: 199, column: 13)
!710 = !DILocation(line: 199, column: 20, scope: !709)
!711 = !DILocation(line: 199, column: 13, scope: !422)
!712 = !DILocation(line: 200, column: 13, scope: !709)
!713 = !DILocation(line: 201, column: 9, scope: !422)
!714 = !DILocation(line: 201, column: 14, scope: !715)
!715 = !DILexicalBlockFile(scope: !421, file: !345, discriminator: 1)
!716 = !DILocation(line: 201, column: 24, scope: !421)
!717 = !DILocation(line: 201, column: 54, scope: !421)
!718 = !DILocation(line: 201, column: 71, scope: !719)
!719 = distinct !DILexicalBlock(scope: !421, file: !345, line: 201, column: 68)
!720 = !DILocation(line: 201, column: 88, scope: !719)
!721 = !DILocation(line: 201, column: 68, scope: !719)
!722 = !DILocation(line: 201, column: 98, scope: !719)
!723 = !DILocation(line: 201, column: 68, scope: !421)
!724 = !DILocation(line: 201, column: 68, scope: !725)
!725 = !DILexicalBlockFile(scope: !421, file: !345, discriminator: 2)
!726 = !DILocation(line: 201, column: 129, scope: !727)
!727 = !DILexicalBlockFile(scope: !719, file: !345, discriminator: 3)
!728 = !DILocation(line: 201, column: 147, scope: !719)
!729 = !DILocation(line: 201, column: 157, scope: !719)
!730 = !DILocation(line: 201, column: 182, scope: !719)
!731 = !DILocation(line: 201, column: 113, scope: !719)
!732 = !DILocation(line: 201, column: 201, scope: !733)
!733 = !DILexicalBlockFile(scope: !422, file: !345, discriminator: 4)
!734 = !DILocation(line: 201, column: 201, scope: !421)
!735 = !DILocation(line: 201, column: 201, scope: !736)
!736 = !DILexicalBlockFile(scope: !421, file: !345, discriminator: 5)
!737 = !DILocation(line: 204, column: 58, scope: !409)
!738 = !DILocation(line: 204, column: 5, scope: !409)
!739 = !DILocation(line: 205, column: 1, scope: !409)
!740 = !DILocation(line: 12, column: 33, scope: !358)
!741 = !DILocation(line: 12, column: 49, scope: !358)
!742 = !DILocation(line: 12, column: 66, scope: !358)
!743 = !DILocation(line: 12, column: 81, scope: !358)
!744 = !DILocation(line: 14, column: 5, scope: !358)
!745 = !DILocation(line: 14, column: 15, scope: !358)
!746 = !DILocation(line: 15, column: 5, scope: !358)
!747 = !DILocation(line: 15, column: 16, scope: !358)
!748 = !DILocation(line: 15, column: 21, scope: !358)
!749 = !DILocation(line: 17, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !358, file: !345, line: 17, column: 9)
!751 = !DILocation(line: 17, column: 12, scope: !750)
!752 = !DILocation(line: 17, column: 9, scope: !358)
!753 = !DILocation(line: 18, column: 25, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !345, line: 17, column: 17)
!755 = !DILocation(line: 18, column: 9, scope: !754)
!756 = !DILocation(line: 19, column: 9, scope: !754)
!757 = !DILocation(line: 21, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !358, file: !345, line: 21, column: 9)
!759 = !DILocation(line: 21, column: 12, scope: !758)
!760 = !DILocation(line: 21, column: 9, scope: !358)
!761 = !DILocation(line: 22, column: 30, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !345, line: 21, column: 19)
!763 = !DILocation(line: 22, column: 14, scope: !762)
!764 = !DILocation(line: 22, column: 12, scope: !762)
!765 = !DILocation(line: 23, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !345, line: 23, column: 13)
!767 = !DILocation(line: 23, column: 16, scope: !766)
!768 = !DILocation(line: 23, column: 13, scope: !762)
!769 = !DILocation(line: 24, column: 13, scope: !766)
!770 = !DILocation(line: 25, column: 5, scope: !762)
!771 = !DILocation(line: 26, column: 5, scope: !358)
!772 = !DILocation(line: 26, column: 12, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !345, discriminator: 2)
!774 = !DILexicalBlockFile(scope: !358, file: !345, discriminator: 1)
!775 = !DILocation(line: 26, column: 17, scope: !358)
!776 = !DILocation(line: 26, column: 15, scope: !358)
!777 = !DILocation(line: 30, column: 24, scope: !371)
!778 = !DILocation(line: 30, column: 29, scope: !371)
!779 = !DILocation(line: 30, column: 27, scope: !371)
!780 = !DILocation(line: 30, column: 33, scope: !371)
!781 = !DILocation(line: 30, column: 13, scope: !371)
!782 = !DILocation(line: 31, column: 36, scope: !371)
!783 = !DILocation(line: 31, column: 42, scope: !371)
!784 = !DILocation(line: 31, column: 17, scope: !371)
!785 = !DILocation(line: 31, column: 15, scope: !371)
!786 = !DILocation(line: 32, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !371, file: !345, line: 32, column: 13)
!788 = !DILocation(line: 32, column: 19, scope: !787)
!789 = !DILocation(line: 32, column: 13, scope: !371)
!790 = !DILocation(line: 33, column: 13, scope: !787)
!791 = !DILocation(line: 34, column: 40, scope: !371)
!792 = !DILocation(line: 34, column: 46, scope: !371)
!793 = !DILocation(line: 34, column: 15, scope: !371)
!794 = !DILocation(line: 34, column: 13, scope: !371)
!795 = !DILocation(line: 35, column: 9, scope: !371)
!796 = !DILocation(line: 35, column: 14, scope: !797)
!797 = !DILexicalBlockFile(scope: !370, file: !345, discriminator: 1)
!798 = !DILocation(line: 35, column: 24, scope: !370)
!799 = !DILocation(line: 35, column: 54, scope: !370)
!800 = !DILocation(line: 35, column: 70, scope: !801)
!801 = distinct !DILexicalBlock(scope: !370, file: !345, line: 35, column: 67)
!802 = !DILocation(line: 35, column: 87, scope: !801)
!803 = !DILocation(line: 35, column: 67, scope: !801)
!804 = !DILocation(line: 35, column: 97, scope: !801)
!805 = !DILocation(line: 35, column: 67, scope: !370)
!806 = !DILocation(line: 35, column: 67, scope: !807)
!807 = !DILexicalBlockFile(scope: !370, file: !345, discriminator: 2)
!808 = !DILocation(line: 35, column: 128, scope: !809)
!809 = !DILexicalBlockFile(scope: !801, file: !345, discriminator: 3)
!810 = !DILocation(line: 35, column: 146, scope: !801)
!811 = !DILocation(line: 35, column: 156, scope: !801)
!812 = !DILocation(line: 35, column: 181, scope: !801)
!813 = !DILocation(line: 35, column: 112, scope: !801)
!814 = !DILocation(line: 35, column: 200, scope: !815)
!815 = !DILexicalBlockFile(scope: !371, file: !345, discriminator: 4)
!816 = !DILocation(line: 35, column: 200, scope: !370)
!817 = !DILocation(line: 35, column: 200, scope: !818)
!818 = !DILexicalBlockFile(scope: !370, file: !345, discriminator: 5)
!819 = !DILocation(line: 36, column: 13, scope: !820)
!820 = distinct !DILexicalBlock(scope: !371, file: !345, line: 36, column: 13)
!821 = !DILocation(line: 36, column: 17, scope: !820)
!822 = !DILocation(line: 36, column: 13, scope: !371)
!823 = !DILocation(line: 37, column: 13, scope: !820)
!824 = !DILocation(line: 38, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !371, file: !345, line: 38, column: 13)
!826 = !DILocation(line: 38, column: 13, scope: !371)
!827 = !DILocation(line: 39, column: 18, scope: !825)
!828 = !DILocation(line: 39, column: 16, scope: !825)
!829 = !DILocation(line: 39, column: 13, scope: !825)
!830 = !DILocation(line: 41, column: 18, scope: !825)
!831 = !DILocation(line: 41, column: 22, scope: !825)
!832 = !DILocation(line: 41, column: 16, scope: !825)
!833 = !DILocation(line: 43, column: 12, scope: !358)
!834 = !DILocation(line: 43, column: 5, scope: !358)
!835 = !DILocation(line: 44, column: 1, scope: !358)
!836 = !DILocation(line: 115, column: 32, scope: !397)
!837 = !DILocation(line: 115, column: 48, scope: !397)
!838 = !DILocation(line: 115, column: 65, scope: !397)
!839 = !DILocation(line: 115, column: 80, scope: !397)
!840 = !DILocation(line: 117, column: 5, scope: !397)
!841 = !DILocation(line: 117, column: 15, scope: !397)
!842 = !DILocation(line: 118, column: 5, scope: !397)
!843 = !DILocation(line: 118, column: 16, scope: !397)
!844 = !DILocation(line: 118, column: 21, scope: !397)
!845 = !DILocation(line: 120, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !397, file: !345, line: 120, column: 9)
!847 = !DILocation(line: 120, column: 12, scope: !846)
!848 = !DILocation(line: 120, column: 9, scope: !397)
!849 = !DILocation(line: 121, column: 25, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !345, line: 120, column: 17)
!851 = !DILocation(line: 121, column: 9, scope: !850)
!852 = !DILocation(line: 122, column: 9, scope: !850)
!853 = !DILocation(line: 124, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !397, file: !345, line: 124, column: 9)
!855 = !DILocation(line: 124, column: 12, scope: !854)
!856 = !DILocation(line: 124, column: 9, scope: !397)
!857 = !DILocation(line: 125, column: 30, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !345, line: 124, column: 19)
!859 = !DILocation(line: 125, column: 14, scope: !858)
!860 = !DILocation(line: 125, column: 12, scope: !858)
!861 = !DILocation(line: 126, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !345, line: 126, column: 13)
!863 = !DILocation(line: 126, column: 16, scope: !862)
!864 = !DILocation(line: 126, column: 13, scope: !858)
!865 = !DILocation(line: 127, column: 13, scope: !862)
!866 = !DILocation(line: 128, column: 5, scope: !858)
!867 = !DILocation(line: 129, column: 5, scope: !397)
!868 = !DILocation(line: 129, column: 12, scope: !869)
!869 = !DILexicalBlockFile(scope: !870, file: !345, discriminator: 2)
!870 = !DILexicalBlockFile(scope: !397, file: !345, discriminator: 1)
!871 = !DILocation(line: 129, column: 17, scope: !397)
!872 = !DILocation(line: 129, column: 15, scope: !397)
!873 = !DILocation(line: 133, column: 24, scope: !408)
!874 = !DILocation(line: 133, column: 29, scope: !408)
!875 = !DILocation(line: 133, column: 27, scope: !408)
!876 = !DILocation(line: 133, column: 33, scope: !408)
!877 = !DILocation(line: 133, column: 13, scope: !408)
!878 = !DILocation(line: 134, column: 36, scope: !408)
!879 = !DILocation(line: 134, column: 42, scope: !408)
!880 = !DILocation(line: 134, column: 17, scope: !408)
!881 = !DILocation(line: 134, column: 15, scope: !408)
!882 = !DILocation(line: 135, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !408, file: !345, line: 135, column: 13)
!884 = !DILocation(line: 135, column: 19, scope: !883)
!885 = !DILocation(line: 135, column: 13, scope: !408)
!886 = !DILocation(line: 136, column: 13, scope: !883)
!887 = !DILocation(line: 137, column: 40, scope: !408)
!888 = !DILocation(line: 137, column: 47, scope: !408)
!889 = !DILocation(line: 137, column: 15, scope: !408)
!890 = !DILocation(line: 137, column: 13, scope: !408)
!891 = !DILocation(line: 138, column: 9, scope: !408)
!892 = !DILocation(line: 138, column: 14, scope: !893)
!893 = !DILexicalBlockFile(scope: !407, file: !345, discriminator: 1)
!894 = !DILocation(line: 138, column: 24, scope: !407)
!895 = !DILocation(line: 138, column: 54, scope: !407)
!896 = !DILocation(line: 138, column: 70, scope: !897)
!897 = distinct !DILexicalBlock(scope: !407, file: !345, line: 138, column: 67)
!898 = !DILocation(line: 138, column: 87, scope: !897)
!899 = !DILocation(line: 138, column: 67, scope: !897)
!900 = !DILocation(line: 138, column: 97, scope: !897)
!901 = !DILocation(line: 138, column: 67, scope: !407)
!902 = !DILocation(line: 138, column: 67, scope: !903)
!903 = !DILexicalBlockFile(scope: !407, file: !345, discriminator: 2)
!904 = !DILocation(line: 138, column: 128, scope: !905)
!905 = !DILexicalBlockFile(scope: !897, file: !345, discriminator: 3)
!906 = !DILocation(line: 138, column: 146, scope: !897)
!907 = !DILocation(line: 138, column: 156, scope: !897)
!908 = !DILocation(line: 138, column: 181, scope: !897)
!909 = !DILocation(line: 138, column: 112, scope: !897)
!910 = !DILocation(line: 138, column: 200, scope: !911)
!911 = !DILexicalBlockFile(scope: !408, file: !345, discriminator: 4)
!912 = !DILocation(line: 138, column: 200, scope: !407)
!913 = !DILocation(line: 138, column: 200, scope: !914)
!914 = !DILexicalBlockFile(scope: !407, file: !345, discriminator: 5)
!915 = !DILocation(line: 139, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !408, file: !345, line: 139, column: 13)
!917 = !DILocation(line: 139, column: 17, scope: !916)
!918 = !DILocation(line: 139, column: 13, scope: !408)
!919 = !DILocation(line: 140, column: 13, scope: !916)
!920 = !DILocation(line: 141, column: 13, scope: !921)
!921 = distinct !DILexicalBlock(scope: !408, file: !345, line: 141, column: 13)
!922 = !DILocation(line: 141, column: 13, scope: !408)
!923 = !DILocation(line: 142, column: 18, scope: !921)
!924 = !DILocation(line: 142, column: 22, scope: !921)
!925 = !DILocation(line: 142, column: 16, scope: !921)
!926 = !DILocation(line: 142, column: 13, scope: !921)
!927 = !DILocation(line: 144, column: 18, scope: !921)
!928 = !DILocation(line: 144, column: 16, scope: !921)
!929 = !DILocation(line: 146, column: 12, scope: !397)
!930 = !DILocation(line: 146, column: 5, scope: !397)
!931 = !DILocation(line: 147, column: 1, scope: !397)
