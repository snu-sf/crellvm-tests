; ModuleID = 'programs_new/Python-new/structseq.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@.str = private unnamed_addr constant [14 x i8] c"unnamed field\00", align 1
@PyStructSequence_UnnamedField = global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), align 8
@PyId_n_fields = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* null }, align 8
@PyId_n_sequence_fields = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8
@_struct_sequence_template = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* null, i64 24, i64 8, void (%struct._object*)* bitcast (void (%struct.PyTupleObject*)* @structseq_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @structseq_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @structseq_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @structseq_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@visible_length_key = internal global [18 x i8] c"n_sequence_fields\00", align 16
@real_length_key = internal global [9 x i8] c"n_fields\00", align 1
@unnamed_fields_key = internal global [17 x i8] c"n_unnamed_fields\00", align 16
@PyType_Type = external global %struct._typeobject, align 8
@PyId_n_unnamed_fields = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct._object* null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"n_fields\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"n_sequence_fields\00", align 1
@structseq_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @structseq_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@PyExc_SystemError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"In structseq_repr(), member %d name is NULL for type %.500s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(O(OO))\00", align 1
@structseq_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"O|O:structseq\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"constructor requires a sequence\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"%.500s() takes a dict as second arg, if any\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"%.500s() takes an at least %zd-sequence (%zd-sequence given)\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"%.500s() takes an at most %zd-sequence (%zd-sequence given)\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"%.500s() takes a %zd-sequence (%zd-sequence given)\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"n_unnamed_fields\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyStructSequence_New(%struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %obj = alloca %struct.PyTupleObject*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !381, metadata !624), !dbg !625
  %0 = bitcast %struct.PyTupleObject** %obj to i8*, !dbg !626
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !626
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %obj, metadata !382, metadata !624), !dbg !627
  %1 = bitcast i64* %size to i8*, !dbg !628
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !628
  call void @llvm.dbg.declare(metadata i64* %size, metadata !383, metadata !624), !dbg !629
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !630, !tbaa !620
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 31, !dbg !631
  %3 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !631, !tbaa !632
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %3, %struct._Py_Identifier* @PyId_n_fields), !dbg !638
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call), !dbg !639
  store i64 %call1, i64* %size, align 8, !dbg !629, !tbaa !640
  %4 = bitcast i64* %i to i8*, !dbg !628
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !628
  call void @llvm.dbg.declare(metadata i64* %i, metadata !384, metadata !624), !dbg !641
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !642, !tbaa !620
  %6 = load i64, i64* %size, align 8, !dbg !643, !tbaa !640
  %call2 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %5, i64 %6), !dbg !644
  %7 = bitcast %struct.PyVarObject* %call2 to %struct.PyTupleObject*, !dbg !645
  store %struct.PyTupleObject* %7, %struct.PyTupleObject** %obj, align 8, !dbg !646, !tbaa !620
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8, !dbg !647, !tbaa !620
  %cmp = icmp eq %struct.PyTupleObject* %8, null, !dbg !649
  br i1 %cmp, label %if.then, label %if.end, !dbg !650

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !651
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !651

if.end:                                           ; preds = %entry
  %9 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !652, !tbaa !620
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 31, !dbg !653
  %10 = load %struct._object*, %struct._object** %tp_dict3, align 8, !dbg !653, !tbaa !632
  %call4 = call %struct._object* @_PyDict_GetItemId(%struct._object* %10, %struct._Py_Identifier* @PyId_n_sequence_fields), !dbg !654
  %call5 = call i64 @PyLong_AsLong(%struct._object* %call4), !dbg !655
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8, !dbg !656, !tbaa !620
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*, !dbg !657
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !658
  store i64 %call5, i64* %ob_size, align 8, !dbg !659, !tbaa !660
  store i64 0, i64* %i, align 8, !dbg !661, !tbaa !640
  br label %for.cond, !dbg !663

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8, !dbg !664, !tbaa !640
  %14 = load i64, i64* %size, align 8, !dbg !668, !tbaa !640
  %cmp6 = icmp slt i64 %13, %14, !dbg !669
  br i1 %cmp6, label %for.body, label %for.end, !dbg !670

for.body:                                         ; preds = %for.cond
  %15 = load i64, i64* %i, align 8, !dbg !671, !tbaa !640
  %16 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8, !dbg !672, !tbaa !620
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1, !dbg !673
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %15, !dbg !672
  store %struct._object* null, %struct._object** %arrayidx, align 8, !dbg !674, !tbaa !620
  br label %for.inc, !dbg !672

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8, !dbg !675, !tbaa !640
  %inc = add i64 %17, 1, !dbg !675
  store i64 %inc, i64* %i, align 8, !dbg !675, !tbaa !640
  br label %for.cond, !dbg !676

for.end:                                          ; preds = %for.cond
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8, !dbg !677, !tbaa !620
  %19 = bitcast %struct.PyTupleObject* %18 to %struct._object*, !dbg !678
  store %struct._object* %19, %struct._object** %retval, !dbg !679
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !679

cleanup:                                          ; preds = %for.end, %if.then
  %20 = bitcast i64* %i to i8*, !dbg !680
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !680
  %21 = bitcast i64* %size to i8*, !dbg !680
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !680
  %22 = bitcast %struct.PyTupleObject** %obj to i8*, !dbg !680
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !680
  %23 = load %struct._object*, %struct._object** %retval, !dbg !680
  ret %struct._object* %23, !dbg !680
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyStructSequence_SetItem(%struct._object* %op, i64 %i, %struct._object* %v) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !389, metadata !624), !dbg !681
  store i64 %i, i64* %i.addr, align 8, !tbaa !640
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !390, metadata !624), !dbg !682
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !391, metadata !624), !dbg !683
  %0 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !684, !tbaa !620
  %1 = load i64, i64* %i.addr, align 8, !dbg !685, !tbaa !640
  %2 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !686, !tbaa !620
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*, !dbg !687
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1, !dbg !688
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %1, !dbg !689
  store %struct._object* %0, %struct._object** %arrayidx, align 8, !dbg !690, !tbaa !620
  ret void, !dbg !691
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyStructSequence_GetItem(%struct._object* %op, i64 %i) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !394, metadata !624), !dbg !692
  store i64 %i, i64* %i.addr, align 8, !tbaa !640
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !395, metadata !624), !dbg !693
  %0 = load i64, i64* %i.addr, align 8, !dbg !694, !tbaa !640
  %1 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !695, !tbaa !620
  %2 = bitcast %struct._object* %1 to %struct.PyTupleObject*, !dbg !696
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %2, i32 0, i32 1, !dbg !697
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %0, !dbg !698
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !698, !tbaa !620
  ret %struct._object* %3, !dbg !699
}

; Function Attrs: nounwind uwtable
define i32 @PyStructSequence_InitType2(%struct._typeobject* %type, %struct.PyStructSequence_Desc* %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._typeobject*, align 8
  %desc.addr = alloca %struct.PyStructSequence_Desc*, align 8
  %dict = alloca %struct._object*, align 8
  %members = alloca %struct.PyMemberDef*, align 8
  %n_members = alloca i32, align 4
  %n_unnamed_members = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_decref_tmp151 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !413, metadata !624), !dbg !700
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyStructSequence_Desc** %desc.addr, metadata !414, metadata !624), !dbg !701
  %0 = bitcast %struct._object** %dict to i8*, !dbg !702
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !702
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !415, metadata !624), !dbg !703
  %1 = bitcast %struct.PyMemberDef** %members to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !704
  call void @llvm.dbg.declare(metadata %struct.PyMemberDef** %members, metadata !416, metadata !624), !dbg !705
  %2 = bitcast i32* %n_members to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !706
  call void @llvm.dbg.declare(metadata i32* %n_members, metadata !417, metadata !624), !dbg !707
  %3 = bitcast i32* %n_unnamed_members to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !706
  call void @llvm.dbg.declare(metadata i32* %n_unnamed_members, metadata !418, metadata !624), !dbg !708
  %4 = bitcast i32* %i to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !706
  call void @llvm.dbg.declare(metadata i32* %i, metadata !419, metadata !624), !dbg !709
  %5 = bitcast i32* %k to i8*, !dbg !706
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !706
  call void @llvm.dbg.declare(metadata i32* %k, metadata !420, metadata !624), !dbg !710
  %6 = bitcast %struct._object** %v to i8*, !dbg !711
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !711
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !421, metadata !624), !dbg !712
  store i32 0, i32* %n_unnamed_members, align 4, !dbg !713, !tbaa !714
  store i32 0, i32* %i, align 4, !dbg !715, !tbaa !714
  br label %for.cond, !dbg !717

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !718, !tbaa !714
  %idxprom = sext i32 %7 to i64, !dbg !722
  %8 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !722, !tbaa !620
  %fields = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %8, i32 0, i32 2, !dbg !723
  %9 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields, align 8, !dbg !723, !tbaa !724
  %arrayidx = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %9, i64 %idxprom, !dbg !722
  %name = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx, i32 0, i32 0, !dbg !726
  %10 = load i8*, i8** %name, align 8, !dbg !726, !tbaa !727
  %cmp = icmp ne i8* %10, null, !dbg !729
  br i1 %cmp, label %for.body, label %for.end, !dbg !730

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !731, !tbaa !714
  %idxprom1 = sext i32 %11 to i64, !dbg !733
  %12 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !733, !tbaa !620
  %fields2 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %12, i32 0, i32 2, !dbg !734
  %13 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields2, align 8, !dbg !734, !tbaa !724
  %arrayidx3 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %13, i64 %idxprom1, !dbg !733
  %name4 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx3, i32 0, i32 0, !dbg !735
  %14 = load i8*, i8** %name4, align 8, !dbg !735, !tbaa !727
  %15 = load i8*, i8** @PyStructSequence_UnnamedField, align 8, !dbg !736, !tbaa !620
  %cmp5 = icmp eq i8* %14, %15, !dbg !737
  br i1 %cmp5, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %n_unnamed_members, align 4, !dbg !739, !tbaa !714
  %inc = add i32 %16, 1, !dbg !739
  store i32 %inc, i32* %n_unnamed_members, align 4, !dbg !739, !tbaa !714
  br label %if.end, !dbg !740

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !743, !tbaa !714
  %inc6 = add i32 %17, 1, !dbg !743
  store i32 %inc6, i32* %i, align 4, !dbg !743, !tbaa !714
  br label %for.cond, !dbg !744

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %i, align 4, !dbg !745, !tbaa !714
  store i32 %18, i32* %n_members, align 4, !dbg !746, !tbaa !714
  %19 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !747, !tbaa !620
  %20 = bitcast %struct._typeobject* %19 to i8*, !dbg !748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast (%struct._typeobject* @_struct_sequence_template to i8*), i64 400, i32 8, i1 false), !dbg !748
  %21 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !749, !tbaa !620
  %tp_base = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 30, !dbg !750
  store %struct._typeobject* @PyTuple_Type, %struct._typeobject** %tp_base, align 8, !dbg !751, !tbaa !752
  %22 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !753, !tbaa !620
  %name7 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %22, i32 0, i32 0, !dbg !754
  %23 = load i8*, i8** %name7, align 8, !dbg !754, !tbaa !755
  %24 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !756, !tbaa !620
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 1, !dbg !757
  store i8* %23, i8** %tp_name, align 8, !dbg !758, !tbaa !759
  %25 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !760, !tbaa !620
  %doc = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %25, i32 0, i32 1, !dbg !761
  %26 = load i8*, i8** %doc, align 8, !dbg !761, !tbaa !762
  %27 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !763, !tbaa !620
  %tp_doc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 20, !dbg !764
  store i8* %26, i8** %tp_doc, align 8, !dbg !765, !tbaa !766
  %28 = load i32, i32* %n_members, align 4, !dbg !767, !tbaa !714
  %29 = load i32, i32* %n_unnamed_members, align 4, !dbg !768, !tbaa !714
  %sub = sub i32 %28, %29, !dbg !769
  %add = add i32 %sub, 1, !dbg !770
  %conv = sext i32 %add to i64, !dbg !771
  %cmp8 = icmp ugt i64 %conv, 230584300921369395, !dbg !772
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !773

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !774

cond.false:                                       ; preds = %for.end
  %30 = load i32, i32* %n_members, align 4, !dbg !776, !tbaa !714
  %31 = load i32, i32* %n_unnamed_members, align 4, !dbg !778, !tbaa !714
  %sub10 = sub i32 %30, %31, !dbg !779
  %add11 = add i32 %sub10, 1, !dbg !780
  %conv12 = sext i32 %add11 to i64, !dbg !781
  %mul = mul i64 %conv12, 40, !dbg !782
  %call = call i8* @PyMem_Malloc(i64 %mul), !dbg !783
  %32 = bitcast i8* %call to %struct.PyMemberDef*, !dbg !784
  br label %cond.end, !dbg !773

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.PyMemberDef* [ null, %cond.true ], [ %32, %cond.false ], !dbg !773
  store %struct.PyMemberDef* %cond, %struct.PyMemberDef** %members, align 8, !dbg !785, !tbaa !620
  %33 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !788, !tbaa !620
  %cmp13 = icmp eq %struct.PyMemberDef* %33, null, !dbg !790
  br i1 %cmp13, label %if.then.15, label %if.end.17, !dbg !791

if.then.15:                                       ; preds = %cond.end
  %call16 = call %struct._object* @PyErr_NoMemory(), !dbg !792
  store i32 -1, i32* %retval, !dbg !794
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !794

if.end.17:                                        ; preds = %cond.end
  store i32 0, i32* %k, align 4, !dbg !795, !tbaa !714
  store i32 0, i32* %i, align 4, !dbg !797, !tbaa !714
  br label %for.cond.18, !dbg !798

for.cond.18:                                      ; preds = %for.inc.55, %if.end.17
  %34 = load i32, i32* %i, align 4, !dbg !799, !tbaa !714
  %35 = load i32, i32* %n_members, align 4, !dbg !803, !tbaa !714
  %cmp19 = icmp slt i32 %34, %35, !dbg !804
  br i1 %cmp19, label %for.body.21, label %for.end.57, !dbg !805

for.body.21:                                      ; preds = %for.cond.18
  %36 = load i32, i32* %i, align 4, !dbg !806, !tbaa !714
  %idxprom22 = sext i32 %36 to i64, !dbg !809
  %37 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !809, !tbaa !620
  %fields23 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %37, i32 0, i32 2, !dbg !810
  %38 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields23, align 8, !dbg !810, !tbaa !724
  %arrayidx24 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %38, i64 %idxprom22, !dbg !809
  %name25 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx24, i32 0, i32 0, !dbg !811
  %39 = load i8*, i8** %name25, align 8, !dbg !811, !tbaa !727
  %40 = load i8*, i8** @PyStructSequence_UnnamedField, align 8, !dbg !812, !tbaa !620
  %cmp26 = icmp eq i8* %39, %40, !dbg !813
  br i1 %cmp26, label %if.then.28, label %if.end.29, !dbg !814

if.then.28:                                       ; preds = %for.body.21
  br label %for.inc.55, !dbg !815

if.end.29:                                        ; preds = %for.body.21
  %41 = load i32, i32* %i, align 4, !dbg !816, !tbaa !714
  %idxprom30 = sext i32 %41 to i64, !dbg !817
  %42 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !817, !tbaa !620
  %fields31 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %42, i32 0, i32 2, !dbg !818
  %43 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields31, align 8, !dbg !818, !tbaa !724
  %arrayidx32 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %43, i64 %idxprom30, !dbg !817
  %name33 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx32, i32 0, i32 0, !dbg !819
  %44 = load i8*, i8** %name33, align 8, !dbg !819, !tbaa !727
  %45 = load i32, i32* %k, align 4, !dbg !820, !tbaa !714
  %idxprom34 = sext i32 %45 to i64, !dbg !821
  %46 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !821, !tbaa !620
  %arrayidx35 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %46, i64 %idxprom34, !dbg !821
  %name36 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx35, i32 0, i32 0, !dbg !822
  store i8* %44, i8** %name36, align 8, !dbg !823, !tbaa !824
  %47 = load i32, i32* %k, align 4, !dbg !826, !tbaa !714
  %idxprom37 = sext i32 %47 to i64, !dbg !827
  %48 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !827, !tbaa !620
  %arrayidx38 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %48, i64 %idxprom37, !dbg !827
  %type39 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx38, i32 0, i32 1, !dbg !828
  store i32 6, i32* %type39, align 4, !dbg !829, !tbaa !830
  %49 = load i32, i32* %i, align 4, !dbg !831, !tbaa !714
  %conv40 = sext i32 %49 to i64, !dbg !831
  %mul41 = mul i64 %conv40, 8, !dbg !832
  %add42 = add i64 24, %mul41, !dbg !833
  %50 = load i32, i32* %k, align 4, !dbg !834, !tbaa !714
  %idxprom43 = sext i32 %50 to i64, !dbg !835
  %51 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !835, !tbaa !620
  %arrayidx44 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %51, i64 %idxprom43, !dbg !835
  %offset = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx44, i32 0, i32 2, !dbg !836
  store i64 %add42, i64* %offset, align 8, !dbg !837, !tbaa !838
  %52 = load i32, i32* %k, align 4, !dbg !839, !tbaa !714
  %idxprom45 = sext i32 %52 to i64, !dbg !840
  %53 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !840, !tbaa !620
  %arrayidx46 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %53, i64 %idxprom45, !dbg !840
  %flags = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx46, i32 0, i32 3, !dbg !841
  store i32 1, i32* %flags, align 4, !dbg !842, !tbaa !843
  %54 = load i32, i32* %i, align 4, !dbg !844, !tbaa !714
  %idxprom47 = sext i32 %54 to i64, !dbg !845
  %55 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !845, !tbaa !620
  %fields48 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %55, i32 0, i32 2, !dbg !846
  %56 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields48, align 8, !dbg !846, !tbaa !724
  %arrayidx49 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %56, i64 %idxprom47, !dbg !845
  %doc50 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx49, i32 0, i32 1, !dbg !847
  %57 = load i8*, i8** %doc50, align 8, !dbg !847, !tbaa !848
  %58 = load i32, i32* %k, align 4, !dbg !849, !tbaa !714
  %idxprom51 = sext i32 %58 to i64, !dbg !850
  %59 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !850, !tbaa !620
  %arrayidx52 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %59, i64 %idxprom51, !dbg !850
  %doc53 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx52, i32 0, i32 4, !dbg !851
  store i8* %57, i8** %doc53, align 8, !dbg !852, !tbaa !853
  %60 = load i32, i32* %k, align 4, !dbg !854, !tbaa !714
  %inc54 = add i32 %60, 1, !dbg !854
  store i32 %inc54, i32* %k, align 4, !dbg !854, !tbaa !714
  br label %for.inc.55, !dbg !855

for.inc.55:                                       ; preds = %if.end.29, %if.then.28
  %61 = load i32, i32* %i, align 4, !dbg !856, !tbaa !714
  %inc56 = add i32 %61, 1, !dbg !856
  store i32 %inc56, i32* %i, align 4, !dbg !856, !tbaa !714
  br label %for.cond.18, !dbg !857

for.end.57:                                       ; preds = %for.cond.18
  %62 = load i32, i32* %k, align 4, !dbg !858, !tbaa !714
  %idxprom58 = sext i32 %62 to i64, !dbg !859
  %63 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !859, !tbaa !620
  %arrayidx59 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %63, i64 %idxprom58, !dbg !859
  %name60 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx59, i32 0, i32 0, !dbg !860
  store i8* null, i8** %name60, align 8, !dbg !861, !tbaa !824
  %64 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8, !dbg !862, !tbaa !620
  %65 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !863, !tbaa !620
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 28, !dbg !864
  store %struct.PyMemberDef* %64, %struct.PyMemberDef** %tp_members, align 8, !dbg !865, !tbaa !866
  %66 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !867, !tbaa !620
  %call61 = call i32 @PyType_Ready(%struct._typeobject* %66), !dbg !869
  %cmp62 = icmp slt i32 %call61, 0, !dbg !870
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !871

if.then.64:                                       ; preds = %for.end.57
  store i32 -1, i32* %retval, !dbg !872
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !872

if.end.65:                                        ; preds = %for.end.57
  %67 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !873, !tbaa !620
  %68 = bitcast %struct._typeobject* %67 to %struct._object*, !dbg !874
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !875
  %69 = load i64, i64* %ob_refcnt, align 8, !dbg !876, !tbaa !877
  %inc66 = add i64 %69, 1, !dbg !876
  store i64 %inc66, i64* %ob_refcnt, align 8, !dbg !876, !tbaa !877
  %70 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !878, !tbaa !620
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 31, !dbg !879
  %71 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !879, !tbaa !632
  store %struct._object* %71, %struct._object** %dict, align 8, !dbg !880, !tbaa !620
  br label %do.body, !dbg !881

do.body:                                          ; preds = %if.end.65
  %72 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !882, !tbaa !620
  %n_in_sequence = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %72, i32 0, i32 3, !dbg !884
  %73 = load i32, i32* %n_in_sequence, align 4, !dbg !884, !tbaa !885
  %conv67 = sext i32 %73 to i64, !dbg !886
  %call68 = call %struct._object* @PyLong_FromLong(i64 %conv67), !dbg !887
  store %struct._object* %call68, %struct._object** %v, align 8, !dbg !888, !tbaa !620
  %74 = load %struct._object*, %struct._object** %v, align 8, !dbg !889, !tbaa !620
  %cmp69 = icmp eq %struct._object* %74, null, !dbg !891
  br i1 %cmp69, label %if.then.71, label %if.end.72, !dbg !892

if.then.71:                                       ; preds = %do.body
  store i32 -1, i32* %retval, !dbg !893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !895

if.end.72:                                        ; preds = %do.body
  %75 = load %struct._object*, %struct._object** %dict, align 8, !dbg !896, !tbaa !620
  %76 = load %struct._object*, %struct._object** %v, align 8, !dbg !898, !tbaa !620
  %call73 = call i32 @PyDict_SetItemString(%struct._object* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @visible_length_key, i32 0, i32 0), %struct._object* %76), !dbg !899
  %cmp74 = icmp slt i32 %call73, 0, !dbg !900
  br i1 %cmp74, label %if.then.76, label %if.end.83, !dbg !901

if.then.76:                                       ; preds = %if.end.72
  br label %do.body.77, !dbg !902

do.body.77:                                       ; preds = %if.then.76
  %77 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !904
  call void @llvm.lifetime.start(i64 8, i8* %77) #2, !dbg !904
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !422, metadata !624), !dbg !906
  %78 = load %struct._object*, %struct._object** %v, align 8, !dbg !907, !tbaa !620
  store %struct._object* %78, %struct._object** %_py_decref_tmp, align 8, !dbg !906, !tbaa !620
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !908, !tbaa !620
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !910
  %80 = load i64, i64* %ob_refcnt78, align 8, !dbg !911, !tbaa !877
  %dec = add i64 %80, -1, !dbg !911
  store i64 %dec, i64* %ob_refcnt78, align 8, !dbg !911, !tbaa !877
  %cmp79 = icmp ne i64 %dec, 0, !dbg !912
  br i1 %cmp79, label %if.then.81, label %if.else, !dbg !913

if.then.81:                                       ; preds = %do.body.77
  br label %if.end.82, !dbg !914

if.else:                                          ; preds = %do.body.77
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !916, !tbaa !620
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !918
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !918, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !920
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !920, !tbaa !921
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !922, !tbaa !620
  call void %83(%struct._object* %84), !dbg !923
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.81
  %85 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !924
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !924
  br label %do.cond, !dbg !926

do.cond:                                          ; preds = %if.end.82
  br label %do.end, !dbg !927

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !929
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !931

if.end.83:                                        ; preds = %if.end.72
  br label %do.body.84, !dbg !932

do.body.84:                                       ; preds = %if.end.83
  %86 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !934
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !934
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !427, metadata !624), !dbg !936
  %87 = load %struct._object*, %struct._object** %v, align 8, !dbg !937, !tbaa !620
  store %struct._object* %87, %struct._object** %_py_decref_tmp85, align 8, !dbg !936, !tbaa !620
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !938, !tbaa !620
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !940
  %89 = load i64, i64* %ob_refcnt86, align 8, !dbg !941, !tbaa !877
  %dec87 = add i64 %89, -1, !dbg !941
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !941, !tbaa !877
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !942
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !943

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94, !dbg !944

if.else.91:                                       ; preds = %do.body.84
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !946, !tbaa !620
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !948
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !948, !tbaa !919
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !949
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !949, !tbaa !921
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !950, !tbaa !620
  call void %92(%struct._object* %93), !dbg !951
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %94 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !952
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !952
  br label %do.cond.95, !dbg !954

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !955

do.end.96:                                        ; preds = %do.cond.95
  br label %do.cond.97, !dbg !957

do.cond.97:                                       ; preds = %do.end.96
  br label %do.end.98, !dbg !959

do.end.98:                                        ; preds = %do.cond.97
  br label %do.body.99, !dbg !961

do.body.99:                                       ; preds = %do.end.98
  %95 = load i32, i32* %n_members, align 4, !dbg !962, !tbaa !714
  %conv100 = sext i32 %95 to i64, !dbg !964
  %call101 = call %struct._object* @PyLong_FromLong(i64 %conv100), !dbg !965
  store %struct._object* %call101, %struct._object** %v, align 8, !dbg !966, !tbaa !620
  %96 = load %struct._object*, %struct._object** %v, align 8, !dbg !967, !tbaa !620
  %cmp102 = icmp eq %struct._object* %96, null, !dbg !969
  br i1 %cmp102, label %if.then.104, label %if.end.105, !dbg !970

if.then.104:                                      ; preds = %do.body.99
  store i32 -1, i32* %retval, !dbg !971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !973

if.end.105:                                       ; preds = %do.body.99
  %97 = load %struct._object*, %struct._object** %dict, align 8, !dbg !974, !tbaa !620
  %98 = load %struct._object*, %struct._object** %v, align 8, !dbg !976, !tbaa !620
  %call106 = call i32 @PyDict_SetItemString(%struct._object* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @real_length_key, i32 0, i32 0), %struct._object* %98), !dbg !977
  %cmp107 = icmp slt i32 %call106, 0, !dbg !978
  br i1 %cmp107, label %if.then.109, label %if.end.123, !dbg !979

if.then.109:                                      ; preds = %if.end.105
  br label %do.body.110, !dbg !980

do.body.110:                                      ; preds = %if.then.109
  %99 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !982
  call void @llvm.lifetime.start(i64 8, i8* %99) #2, !dbg !982
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp111, metadata !429, metadata !624), !dbg !984
  %100 = load %struct._object*, %struct._object** %v, align 8, !dbg !985, !tbaa !620
  store %struct._object* %100, %struct._object** %_py_decref_tmp111, align 8, !dbg !984, !tbaa !620
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !986, !tbaa !620
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0, !dbg !988
  %102 = load i64, i64* %ob_refcnt112, align 8, !dbg !989, !tbaa !877
  %dec113 = add i64 %102, -1, !dbg !989
  store i64 %dec113, i64* %ob_refcnt112, align 8, !dbg !989, !tbaa !877
  %cmp114 = icmp ne i64 %dec113, 0, !dbg !990
  br i1 %cmp114, label %if.then.116, label %if.else.117, !dbg !991

if.then.116:                                      ; preds = %do.body.110
  br label %if.end.120, !dbg !992

if.else.117:                                      ; preds = %do.body.110
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !994, !tbaa !620
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1, !dbg !996
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !996, !tbaa !919
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4, !dbg !997
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !997, !tbaa !921
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !998, !tbaa !620
  call void %105(%struct._object* %106), !dbg !999
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  %107 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !1000
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !1000
  br label %do.cond.121, !dbg !1002

do.cond.121:                                      ; preds = %if.end.120
  br label %do.end.122, !dbg !1003

do.end.122:                                       ; preds = %do.cond.121
  store i32 -1, i32* %retval, !dbg !1005
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1007

if.end.123:                                       ; preds = %if.end.105
  br label %do.body.124, !dbg !1008

do.body.124:                                      ; preds = %if.end.123
  %108 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !1010
  call void @llvm.lifetime.start(i64 8, i8* %108) #2, !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp125, metadata !434, metadata !624), !dbg !1012
  %109 = load %struct._object*, %struct._object** %v, align 8, !dbg !1013, !tbaa !620
  store %struct._object* %109, %struct._object** %_py_decref_tmp125, align 8, !dbg !1012, !tbaa !620
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !1014, !tbaa !620
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0, !dbg !1016
  %111 = load i64, i64* %ob_refcnt126, align 8, !dbg !1017, !tbaa !877
  %dec127 = add i64 %111, -1, !dbg !1017
  store i64 %dec127, i64* %ob_refcnt126, align 8, !dbg !1017, !tbaa !877
  %cmp128 = icmp ne i64 %dec127, 0, !dbg !1018
  br i1 %cmp128, label %if.then.130, label %if.else.131, !dbg !1019

if.then.130:                                      ; preds = %do.body.124
  br label %if.end.134, !dbg !1020

if.else.131:                                      ; preds = %do.body.124
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !1022, !tbaa !620
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1, !dbg !1024
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8, !dbg !1024, !tbaa !919
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4, !dbg !1025
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8, !dbg !1025, !tbaa !921
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !1026, !tbaa !620
  call void %114(%struct._object* %115), !dbg !1027
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  %116 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !1028
  call void @llvm.lifetime.end(i64 8, i8* %116) #2, !dbg !1028
  br label %do.cond.135, !dbg !1030

do.cond.135:                                      ; preds = %if.end.134
  br label %do.end.136, !dbg !1031

do.end.136:                                       ; preds = %do.cond.135
  br label %do.cond.137, !dbg !1033

do.cond.137:                                      ; preds = %do.end.136
  br label %do.end.138, !dbg !1035

do.end.138:                                       ; preds = %do.cond.137
  br label %do.body.139, !dbg !1037

do.body.139:                                      ; preds = %do.end.138
  %117 = load i32, i32* %n_unnamed_members, align 4, !dbg !1038, !tbaa !714
  %conv140 = sext i32 %117 to i64, !dbg !1040
  %call141 = call %struct._object* @PyLong_FromLong(i64 %conv140), !dbg !1041
  store %struct._object* %call141, %struct._object** %v, align 8, !dbg !1042, !tbaa !620
  %118 = load %struct._object*, %struct._object** %v, align 8, !dbg !1043, !tbaa !620
  %cmp142 = icmp eq %struct._object* %118, null, !dbg !1045
  br i1 %cmp142, label %if.then.144, label %if.end.145, !dbg !1046

if.then.144:                                      ; preds = %do.body.139
  store i32 -1, i32* %retval, !dbg !1047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1049

if.end.145:                                       ; preds = %do.body.139
  %119 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1050, !tbaa !620
  %120 = load %struct._object*, %struct._object** %v, align 8, !dbg !1052, !tbaa !620
  %call146 = call i32 @PyDict_SetItemString(%struct._object* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @unnamed_fields_key, i32 0, i32 0), %struct._object* %120), !dbg !1053
  %cmp147 = icmp slt i32 %call146, 0, !dbg !1054
  br i1 %cmp147, label %if.then.149, label %if.end.163, !dbg !1055

if.then.149:                                      ; preds = %if.end.145
  br label %do.body.150, !dbg !1056

do.body.150:                                      ; preds = %if.then.149
  %121 = bitcast %struct._object** %_py_decref_tmp151 to i8*, !dbg !1058
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !1058
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp151, metadata !436, metadata !624), !dbg !1060
  %122 = load %struct._object*, %struct._object** %v, align 8, !dbg !1061, !tbaa !620
  store %struct._object* %122, %struct._object** %_py_decref_tmp151, align 8, !dbg !1060, !tbaa !620
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8, !dbg !1062, !tbaa !620
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0, !dbg !1064
  %124 = load i64, i64* %ob_refcnt152, align 8, !dbg !1065, !tbaa !877
  %dec153 = add i64 %124, -1, !dbg !1065
  store i64 %dec153, i64* %ob_refcnt152, align 8, !dbg !1065, !tbaa !877
  %cmp154 = icmp ne i64 %dec153, 0, !dbg !1066
  br i1 %cmp154, label %if.then.156, label %if.else.157, !dbg !1067

if.then.156:                                      ; preds = %do.body.150
  br label %if.end.160, !dbg !1068

if.else.157:                                      ; preds = %do.body.150
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8, !dbg !1070, !tbaa !620
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1, !dbg !1072
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !1072, !tbaa !919
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4, !dbg !1073
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8, !dbg !1073, !tbaa !921
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp151, align 8, !dbg !1074, !tbaa !620
  call void %127(%struct._object* %128), !dbg !1075
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  %129 = bitcast %struct._object** %_py_decref_tmp151 to i8*, !dbg !1076
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !1076
  br label %do.cond.161, !dbg !1078

do.cond.161:                                      ; preds = %if.end.160
  br label %do.end.162, !dbg !1079

do.end.162:                                       ; preds = %do.cond.161
  store i32 -1, i32* %retval, !dbg !1081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1083

if.end.163:                                       ; preds = %if.end.145
  br label %do.body.164, !dbg !1084

do.body.164:                                      ; preds = %if.end.163
  %130 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !1086
  call void @llvm.lifetime.start(i64 8, i8* %130) #2, !dbg !1086
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp165, metadata !441, metadata !624), !dbg !1088
  %131 = load %struct._object*, %struct._object** %v, align 8, !dbg !1089, !tbaa !620
  store %struct._object* %131, %struct._object** %_py_decref_tmp165, align 8, !dbg !1088, !tbaa !620
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !1090, !tbaa !620
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0, !dbg !1092
  %133 = load i64, i64* %ob_refcnt166, align 8, !dbg !1093, !tbaa !877
  %dec167 = add i64 %133, -1, !dbg !1093
  store i64 %dec167, i64* %ob_refcnt166, align 8, !dbg !1093, !tbaa !877
  %cmp168 = icmp ne i64 %dec167, 0, !dbg !1094
  br i1 %cmp168, label %if.then.170, label %if.else.171, !dbg !1095

if.then.170:                                      ; preds = %do.body.164
  br label %if.end.174, !dbg !1096

if.else.171:                                      ; preds = %do.body.164
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !1098, !tbaa !620
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1, !dbg !1100
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !1100, !tbaa !919
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4, !dbg !1101
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !1101, !tbaa !921
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8, !dbg !1102, !tbaa !620
  call void %136(%struct._object* %137), !dbg !1103
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  %138 = bitcast %struct._object** %_py_decref_tmp165 to i8*, !dbg !1104
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1104
  br label %do.cond.175, !dbg !1106

do.cond.175:                                      ; preds = %if.end.174
  br label %do.end.176, !dbg !1107

do.end.176:                                       ; preds = %do.cond.175
  br label %do.cond.177, !dbg !1109

do.cond.177:                                      ; preds = %do.end.176
  br label %do.end.178, !dbg !1111

do.end.178:                                       ; preds = %do.cond.177
  store i32 0, i32* %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1113

cleanup:                                          ; preds = %do.end.178, %do.end.162, %if.then.144, %do.end.122, %if.then.104, %do.end, %if.then.71, %if.then.64, %if.then.15
  %139 = bitcast %struct._object** %v to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %139) #2, !dbg !1114
  %140 = bitcast i32* %k to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %140) #2, !dbg !1114
  %141 = bitcast i32* %i to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %141) #2, !dbg !1114
  %142 = bitcast i32* %n_unnamed_members to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %142) #2, !dbg !1114
  %143 = bitcast i32* %n_members to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %143) #2, !dbg !1114
  %144 = bitcast %struct.PyMemberDef** %members to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !1114
  %145 = bitcast %struct._object** %dict to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1114
  %146 = load i32, i32* %retval, !dbg !1114
  ret i32 %146, !dbg !1114
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyStructSequence_InitType(%struct._typeobject* %type, %struct.PyStructSequence_Desc* %desc) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %desc.addr = alloca %struct.PyStructSequence_Desc*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !447, metadata !624), !dbg !1115
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyStructSequence_Desc** %desc.addr, metadata !448, metadata !624), !dbg !1116
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1117, !tbaa !620
  %1 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !1118, !tbaa !620
  %call = call i32 @PyStructSequence_InitType2(%struct._typeobject* %0, %struct.PyStructSequence_Desc* %1), !dbg !1119
  ret void, !dbg !1120
}

; Function Attrs: nounwind uwtable
define %struct._typeobject* @PyStructSequence_NewType(%struct.PyStructSequence_Desc* %desc) #0 {
entry:
  %retval = alloca %struct._typeobject*, align 8
  %desc.addr = alloca %struct.PyStructSequence_Desc*, align 8
  %result = alloca %struct._typeobject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyStructSequence_Desc** %desc.addr, metadata !453, metadata !624), !dbg !1121
  %0 = bitcast %struct._typeobject** %result to i8*, !dbg !1122
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1122
  call void @llvm.dbg.declare(metadata %struct._typeobject** %result, metadata !454, metadata !624), !dbg !1123
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* @PyType_Type, i64 0), !dbg !1124
  %1 = bitcast %struct._object* %call to %struct._typeobject*, !dbg !1125
  store %struct._typeobject* %1, %struct._typeobject** %result, align 8, !dbg !1126, !tbaa !620
  %2 = load %struct._typeobject*, %struct._typeobject** %result, align 8, !dbg !1127, !tbaa !620
  %cmp = icmp eq %struct._typeobject* %2, null, !dbg !1129
  br i1 %cmp, label %if.then, label %if.end, !dbg !1130

if.then:                                          ; preds = %entry
  store %struct._typeobject* null, %struct._typeobject** %retval, !dbg !1131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1131

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %result, align 8, !dbg !1132, !tbaa !620
  %4 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8, !dbg !1133, !tbaa !620
  %call1 = call i32 @PyStructSequence_InitType2(%struct._typeobject* %3, %struct.PyStructSequence_Desc* %4), !dbg !1134
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1135
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !1136

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !1137

do.body:                                          ; preds = %if.then.3
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1138
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1138
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !455, metadata !624), !dbg !1140
  %6 = load %struct._typeobject*, %struct._typeobject** %result, align 8, !dbg !1141, !tbaa !620
  %7 = bitcast %struct._typeobject* %6 to %struct._object*, !dbg !1142
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1140, !tbaa !620
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1143, !tbaa !620
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1145
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1146, !tbaa !877
  %dec = add i64 %9, -1, !dbg !1146
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1146, !tbaa !877
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1147
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1148

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !1149

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1151, !tbaa !620
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1153
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1153, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1154
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1154, !tbaa !921
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1155, !tbaa !620
  call void %12(%struct._object* %13), !dbg !1156
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1157
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1157
  br label %do.cond, !dbg !1159

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1160

do.end:                                           ; preds = %do.cond
  store %struct._typeobject* null, %struct._typeobject** %retval, !dbg !1162
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1162

if.end.7:                                         ; preds = %if.end
  %15 = load %struct._typeobject*, %struct._typeobject** %result, align 8, !dbg !1163, !tbaa !620
  store %struct._typeobject* %15, %struct._typeobject** %retval, !dbg !1164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end.7, %do.end, %if.then
  %16 = bitcast %struct._typeobject** %result to i8*, !dbg !1165
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1165
  %17 = load %struct._typeobject*, %struct._typeobject** %retval, !dbg !1165
  ret %struct._typeobject* %17, !dbg !1165
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @_PyStructSequence_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_sequence_fields), !dbg !1166
  %cmp = icmp eq %struct._object* %call, null, !dbg !1168
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1169

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_fields), !dbg !1170
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1172
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3, !dbg !1173

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_unnamed_fields), !dbg !1174
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1175
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1176

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, !dbg !1177
  br label %return, !dbg !1177

if.end:                                           ; preds = %lor.lhs.false.3
  store i32 0, i32* %retval, !dbg !1178
  br label %return, !dbg !1178

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, !dbg !1179
  ret i32 %0, !dbg !1179
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #3

; Function Attrs: nounwind uwtable
define internal void @structseq_dealloc(%struct.PyTupleObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %obj, %struct.PyTupleObject** %obj.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %obj.addr, metadata !466, metadata !624), !dbg !1180
  %0 = bitcast i64* %i to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1181
  call void @llvm.dbg.declare(metadata i64* %i, metadata !467, metadata !624), !dbg !1182
  %1 = bitcast i64* %size to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1181
  call void @llvm.dbg.declare(metadata i64* %size, metadata !468, metadata !624), !dbg !1183
  %2 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1184, !tbaa !620
  %3 = bitcast %struct.PyTupleObject* %2 to %struct._object*, !dbg !1185
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1186
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1186, !tbaa !919
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 31, !dbg !1187
  %5 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1187, !tbaa !632
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %5, %struct._Py_Identifier* @PyId_n_fields), !dbg !1188
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call), !dbg !1189
  store i64 %call1, i64* %size, align 8, !dbg !1190, !tbaa !640
  store i64 0, i64* %i, align 8, !dbg !1191, !tbaa !640
  br label %for.cond, !dbg !1192

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, i64* %i, align 8, !dbg !1193, !tbaa !640
  %7 = load i64, i64* %size, align 8, !dbg !1196, !tbaa !640
  %cmp = icmp slt i64 %6, %7, !dbg !1197
  br i1 %cmp, label %for.body, label %for.end, !dbg !1198

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1199

do.body:                                          ; preds = %for.body
  %8 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1200
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1200
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !469, metadata !624), !dbg !1202
  %9 = load i64, i64* %i, align 8, !dbg !1203, !tbaa !640
  %10 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1204, !tbaa !620
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %10, i32 0, i32 1, !dbg !1205
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %9, !dbg !1204
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1204, !tbaa !620
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1202, !tbaa !620
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1206, !tbaa !620
  %cmp2 = icmp ne %struct._object* %12, null, !dbg !1207
  br i1 %cmp2, label %if.then, label %if.end.7, !dbg !1208

if.then:                                          ; preds = %do.body
  br label %do.body.3, !dbg !1209

do.body.3:                                        ; preds = %if.then
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1211
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1211
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !474, metadata !624), !dbg !1213
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1214, !tbaa !620
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1213, !tbaa !620
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1215, !tbaa !620
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1217
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1218, !tbaa !877
  %dec = add i64 %16, -1, !dbg !1218
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1218, !tbaa !877
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1219
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1220

if.then.5:                                        ; preds = %do.body.3
  br label %if.end, !dbg !1221

if.else:                                          ; preds = %do.body.3
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1223, !tbaa !620
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1225
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !1225, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1226
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1226, !tbaa !921
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1227, !tbaa !620
  call void %19(%struct._object* %20), !dbg !1228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1229
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1229
  br label %do.cond, !dbg !1231

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1232

do.end:                                           ; preds = %do.cond
  br label %if.end.7, !dbg !1234

if.end.7:                                         ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1236
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1236
  br label %do.cond.8, !dbg !1239

do.cond.8:                                        ; preds = %if.end.7
  br label %do.end.9, !dbg !1240

do.end.9:                                         ; preds = %do.cond.8
  br label %for.inc, !dbg !1242

for.inc:                                          ; preds = %do.end.9
  %23 = load i64, i64* %i, align 8, !dbg !1243, !tbaa !640
  %inc = add i64 %23, 1, !dbg !1243
  store i64 %inc, i64* %i, align 8, !dbg !1243, !tbaa !640
  br label %for.cond, !dbg !1244

for.end:                                          ; preds = %for.cond
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1245, !tbaa !620
  %25 = bitcast %struct.PyTupleObject* %24 to i8*, !dbg !1245
  call void @PyObject_GC_Del(i8* %25), !dbg !1246
  %26 = bitcast i64* %size to i8*, !dbg !1247
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1247
  %27 = bitcast i64* %i to i8*, !dbg !1247
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1247
  ret void, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_repr(%struct.PyTupleObject* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct.PyTupleObject*, align 8
  %typ = alloca %struct._typeobject*, align 8
  %i = alloca i32, align 4
  %removelast = alloca i32, align 4
  %len = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %endofbuf = alloca i8*, align 8
  %pbuf = alloca i8*, align 8
  %val = alloca %struct._object*, align 8
  %repr = alloca %struct._object*, align 8
  %cname = alloca i8*, align 8
  %crepr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %obj, %struct.PyTupleObject** %obj.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %obj.addr, metadata !481, metadata !624), !dbg !1248
  %0 = bitcast %struct._typeobject** %typ to i8*, !dbg !1249
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1249
  call void @llvm.dbg.declare(metadata %struct._typeobject** %typ, metadata !482, metadata !624), !dbg !1250
  %1 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1251, !tbaa !620
  %2 = bitcast %struct.PyTupleObject* %1 to %struct._object*, !dbg !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !1253
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1253, !tbaa !919
  store %struct._typeobject* %3, %struct._typeobject** %typ, align 8, !dbg !1250, !tbaa !620
  %4 = bitcast i32* %i to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1254
  call void @llvm.dbg.declare(metadata i32* %i, metadata !483, metadata !624), !dbg !1255
  %5 = bitcast i32* %removelast to i8*, !dbg !1254
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1254
  call void @llvm.dbg.declare(metadata i32* %removelast, metadata !484, metadata !624), !dbg !1256
  store i32 0, i32* %removelast, align 4, !dbg !1256, !tbaa !714
  %6 = bitcast i64* %len to i8*, !dbg !1257
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1257
  call void @llvm.dbg.declare(metadata i64* %len, metadata !485, metadata !624), !dbg !1258
  %7 = bitcast [512 x i8]* %buf to i8*, !dbg !1259
  call void @llvm.lifetime.start(i64 512, i8* %7) #2, !dbg !1259
  call void @llvm.dbg.declare(metadata [512 x i8]* %buf, metadata !486, metadata !624), !dbg !1260
  %8 = bitcast i8** %endofbuf to i8*, !dbg !1261
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1261
  call void @llvm.dbg.declare(metadata i8** %endofbuf, metadata !490, metadata !624), !dbg !1262
  %9 = bitcast i8** %pbuf to i8*, !dbg !1261
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1261
  call void @llvm.dbg.declare(metadata i8** %pbuf, metadata !491, metadata !624), !dbg !1263
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !1264
  store i8* %arraydecay, i8** %pbuf, align 8, !dbg !1263, !tbaa !620
  %arrayidx = getelementptr [512 x i8], [512 x i8]* %buf, i32 0, i64 507, !dbg !1265
  store i8* %arrayidx, i8** %endofbuf, align 8, !dbg !1266, !tbaa !620
  %10 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !1267, !tbaa !620
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !1268
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1268, !tbaa !759
  %call = call i64 @strlen(i8* %11) #6, !dbg !1269
  %cmp = icmp ugt i64 %call, 100, !dbg !1270
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1269

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1271

cond.false:                                       ; preds = %entry
  %12 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !1273, !tbaa !620
  %tp_name1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1, !dbg !1274
  %13 = load i8*, i8** %tp_name1, align 8, !dbg !1274, !tbaa !759
  %call2 = call i64 @strlen(i8* %13) #6, !dbg !1275
  br label %cond.end, !dbg !1269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 100, %cond.true ], [ %call2, %cond.false ], !dbg !1269
  store i64 %cond, i64* %len, align 8, !dbg !1276, !tbaa !640
  %14 = load i8*, i8** %pbuf, align 8, !dbg !1279, !tbaa !620
  %15 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !1280, !tbaa !620
  %tp_name3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1, !dbg !1281
  %16 = load i8*, i8** %tp_name3, align 8, !dbg !1281, !tbaa !759
  %17 = load i64, i64* %len, align 8, !dbg !1282, !tbaa !640
  %call4 = call i8* @strncpy(i8* %14, i8* %16, i64 %17) #2, !dbg !1283
  %18 = load i64, i64* %len, align 8, !dbg !1284, !tbaa !640
  %19 = load i8*, i8** %pbuf, align 8, !dbg !1285, !tbaa !620
  %add.ptr = getelementptr i8, i8* %19, i64 %18, !dbg !1285
  store i8* %add.ptr, i8** %pbuf, align 8, !dbg !1285, !tbaa !620
  %20 = load i8*, i8** %pbuf, align 8, !dbg !1286, !tbaa !620
  %incdec.ptr = getelementptr i8, i8* %20, i32 1, !dbg !1286
  store i8* %incdec.ptr, i8** %pbuf, align 8, !dbg !1286, !tbaa !620
  store i8 40, i8* %20, align 1, !dbg !1287, !tbaa !1288
  store i32 0, i32* %i, align 4, !dbg !1289, !tbaa !714
  br label %for.cond, !dbg !1290

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load i32, i32* %i, align 4, !dbg !1291, !tbaa !714
  %conv = sext i32 %21 to i64, !dbg !1291
  %22 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1294, !tbaa !620
  %23 = bitcast %struct.PyTupleObject* %22 to %struct.PyVarObject*, !dbg !1295
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !1296
  %24 = load i64, i64* %ob_size, align 8, !dbg !1296, !tbaa !660
  %cmp5 = icmp slt i64 %conv, %24, !dbg !1297
  br i1 %cmp5, label %for.body, label %for.end, !dbg !1298

for.body:                                         ; preds = %for.cond
  %25 = bitcast %struct._object** %val to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct._object** %val, metadata !492, metadata !624), !dbg !1300
  %26 = bitcast %struct._object** %repr to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct._object** %repr, metadata !496, metadata !624), !dbg !1301
  %27 = bitcast i8** %cname to i8*, !dbg !1302
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !1302
  call void @llvm.dbg.declare(metadata i8** %cname, metadata !497, metadata !624), !dbg !1303
  %28 = bitcast i8** %crepr to i8*, !dbg !1302
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !1302
  call void @llvm.dbg.declare(metadata i8** %crepr, metadata !498, metadata !624), !dbg !1304
  %29 = load i32, i32* %i, align 4, !dbg !1305, !tbaa !714
  %idxprom = sext i32 %29 to i64, !dbg !1306
  %30 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !1306, !tbaa !620
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 28, !dbg !1307
  %31 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !1307, !tbaa !866
  %arrayidx7 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %31, i64 %idxprom, !dbg !1306
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx7, i32 0, i32 0, !dbg !1308
  %32 = load i8*, i8** %name, align 8, !dbg !1308, !tbaa !824
  store i8* %32, i8** %cname, align 8, !dbg !1309, !tbaa !620
  %33 = load i8*, i8** %cname, align 8, !dbg !1310, !tbaa !620
  %cmp8 = icmp eq i8* %33, null, !dbg !1312
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1313

if.then:                                          ; preds = %for.body
  %34 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1314, !tbaa !620
  %35 = load i32, i32* %i, align 4, !dbg !1316, !tbaa !714
  %36 = load %struct._typeobject*, %struct._typeobject** %typ, align 8, !dbg !1317, !tbaa !620
  %tp_name10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 1, !dbg !1318
  %37 = load i8*, i8** %tp_name10, align 8, !dbg !1318, !tbaa !759
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i32 %35, i8* %37), !dbg !1319
  store %struct._object* null, %struct._object** %retval, !dbg !1320
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1320

if.end:                                           ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !dbg !1321, !tbaa !714
  %idxprom12 = sext i32 %38 to i64, !dbg !1322
  %39 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8, !dbg !1323, !tbaa !620
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1, !dbg !1324
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom12, !dbg !1322
  %40 = load %struct._object*, %struct._object** %arrayidx13, align 8, !dbg !1322, !tbaa !620
  store %struct._object* %40, %struct._object** %val, align 8, !dbg !1325, !tbaa !620
  %41 = load %struct._object*, %struct._object** %val, align 8, !dbg !1326, !tbaa !620
  %call14 = call %struct._object* @PyObject_Repr(%struct._object* %41), !dbg !1327
  store %struct._object* %call14, %struct._object** %repr, align 8, !dbg !1328, !tbaa !620
  %42 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1329, !tbaa !620
  %cmp15 = icmp eq %struct._object* %42, null, !dbg !1331
  br i1 %cmp15, label %if.then.17, label %if.end.18, !dbg !1332

if.then.17:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1333
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1333

if.end.18:                                        ; preds = %if.end
  %43 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1334, !tbaa !620
  %call19 = call i8* @PyUnicode_AsUTF8(%struct._object* %43), !dbg !1335
  store i8* %call19, i8** %crepr, align 8, !dbg !1336, !tbaa !620
  %44 = load i8*, i8** %crepr, align 8, !dbg !1337, !tbaa !620
  %cmp20 = icmp eq i8* %44, null, !dbg !1338
  br i1 %cmp20, label %if.then.22, label %if.end.28, !dbg !1339

if.then.22:                                       ; preds = %if.end.18
  br label %do.body, !dbg !1340

do.body:                                          ; preds = %if.then.22
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1341
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1341
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !499, metadata !624), !dbg !1343
  %46 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1344, !tbaa !620
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !1343, !tbaa !620
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1345, !tbaa !620
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1347
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !1348, !tbaa !877
  %dec = add i64 %48, -1, !dbg !1348
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1348, !tbaa !877
  %cmp23 = icmp ne i64 %dec, 0, !dbg !1349
  br i1 %cmp23, label %if.then.25, label %if.else, !dbg !1350

if.then.25:                                       ; preds = %do.body
  br label %if.end.27, !dbg !1351

if.else:                                          ; preds = %do.body
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1353, !tbaa !620
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !1355
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1355, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !1356
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1356, !tbaa !921
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1357, !tbaa !620
  call void %51(%struct._object* %52), !dbg !1358
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1359
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1359
  br label %do.cond, !dbg !1361

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !1362

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1364
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1364

if.end.28:                                        ; preds = %if.end.18
  %54 = load i8*, i8** %cname, align 8, !dbg !1365, !tbaa !620
  %call29 = call i64 @strlen(i8* %54) #6, !dbg !1366
  %55 = load i8*, i8** %crepr, align 8, !dbg !1367, !tbaa !620
  %call30 = call i64 @strlen(i8* %55) #6, !dbg !1368
  %add = add i64 %call29, %call30, !dbg !1369
  %add31 = add i64 %add, 3, !dbg !1370
  store i64 %add31, i64* %len, align 8, !dbg !1371, !tbaa !640
  %56 = load i8*, i8** %pbuf, align 8, !dbg !1372, !tbaa !620
  %57 = load i64, i64* %len, align 8, !dbg !1373, !tbaa !640
  %add.ptr32 = getelementptr i8, i8* %56, i64 %57, !dbg !1374
  %58 = load i8*, i8** %endofbuf, align 8, !dbg !1375, !tbaa !620
  %cmp33 = icmp ule i8* %add.ptr32, %58, !dbg !1376
  br i1 %cmp33, label %if.then.35, label %if.else.58, !dbg !1377

if.then.35:                                       ; preds = %if.end.28
  %59 = load i8*, i8** %pbuf, align 8, !dbg !1378, !tbaa !620
  %60 = load i8*, i8** %cname, align 8, !dbg !1379, !tbaa !620
  %call36 = call i8* @strcpy(i8* %59, i8* %60) #2, !dbg !1380
  %61 = load i8*, i8** %cname, align 8, !dbg !1381, !tbaa !620
  %call37 = call i64 @strlen(i8* %61) #6, !dbg !1382
  %62 = load i8*, i8** %pbuf, align 8, !dbg !1383, !tbaa !620
  %add.ptr38 = getelementptr i8, i8* %62, i64 %call37, !dbg !1383
  store i8* %add.ptr38, i8** %pbuf, align 8, !dbg !1383, !tbaa !620
  %63 = load i8*, i8** %pbuf, align 8, !dbg !1384, !tbaa !620
  %incdec.ptr39 = getelementptr i8, i8* %63, i32 1, !dbg !1384
  store i8* %incdec.ptr39, i8** %pbuf, align 8, !dbg !1384, !tbaa !620
  store i8 61, i8* %63, align 1, !dbg !1385, !tbaa !1288
  %64 = load i8*, i8** %pbuf, align 8, !dbg !1386, !tbaa !620
  %65 = load i8*, i8** %crepr, align 8, !dbg !1387, !tbaa !620
  %call40 = call i8* @strcpy(i8* %64, i8* %65) #2, !dbg !1388
  %66 = load i8*, i8** %crepr, align 8, !dbg !1389, !tbaa !620
  %call41 = call i64 @strlen(i8* %66) #6, !dbg !1390
  %67 = load i8*, i8** %pbuf, align 8, !dbg !1391, !tbaa !620
  %add.ptr42 = getelementptr i8, i8* %67, i64 %call41, !dbg !1391
  store i8* %add.ptr42, i8** %pbuf, align 8, !dbg !1391, !tbaa !620
  %68 = load i8*, i8** %pbuf, align 8, !dbg !1392, !tbaa !620
  %incdec.ptr43 = getelementptr i8, i8* %68, i32 1, !dbg !1392
  store i8* %incdec.ptr43, i8** %pbuf, align 8, !dbg !1392, !tbaa !620
  store i8 44, i8* %68, align 1, !dbg !1393, !tbaa !1288
  %69 = load i8*, i8** %pbuf, align 8, !dbg !1394, !tbaa !620
  %incdec.ptr44 = getelementptr i8, i8* %69, i32 1, !dbg !1394
  store i8* %incdec.ptr44, i8** %pbuf, align 8, !dbg !1394, !tbaa !620
  store i8 32, i8* %69, align 1, !dbg !1395, !tbaa !1288
  store i32 1, i32* %removelast, align 4, !dbg !1396, !tbaa !714
  br label %do.body.45, !dbg !1397

do.body.45:                                       ; preds = %if.then.35
  %70 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1398
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !1398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !503, metadata !624), !dbg !1400
  %71 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1401, !tbaa !620
  store %struct._object* %71, %struct._object** %_py_decref_tmp46, align 8, !dbg !1400, !tbaa !620
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1402, !tbaa !620
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !1404
  %73 = load i64, i64* %ob_refcnt47, align 8, !dbg !1405, !tbaa !877
  %dec48 = add i64 %73, -1, !dbg !1405
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1405, !tbaa !877
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !1406
  br i1 %cmp49, label %if.then.51, label %if.else.52, !dbg !1407

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55, !dbg !1408

if.else.52:                                       ; preds = %do.body.45
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1410, !tbaa !620
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !1412
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !1412, !tbaa !919
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !1413
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !1413, !tbaa !921
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1414, !tbaa !620
  call void %76(%struct._object* %77), !dbg !1415
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  %78 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1416
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !1416
  br label %do.cond.56, !dbg !1418

do.cond.56:                                       ; preds = %if.end.55
  br label %do.end.57, !dbg !1419

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.74, !dbg !1421

if.else.58:                                       ; preds = %if.end.28
  %79 = load i8*, i8** %pbuf, align 8, !dbg !1422, !tbaa !620
  %call59 = call i8* @strcpy(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #2, !dbg !1423
  %80 = load i8*, i8** %pbuf, align 8, !dbg !1424, !tbaa !620
  %add.ptr60 = getelementptr i8, i8* %80, i64 3, !dbg !1424
  store i8* %add.ptr60, i8** %pbuf, align 8, !dbg !1424, !tbaa !620
  store i32 0, i32* %removelast, align 4, !dbg !1425, !tbaa !714
  br label %do.body.61, !dbg !1426

do.body.61:                                       ; preds = %if.else.58
  %81 = bitcast %struct._object** %_py_decref_tmp62 to i8*, !dbg !1427
  call void @llvm.lifetime.start(i64 8, i8* %81) #2, !dbg !1427
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp62, metadata !507, metadata !624), !dbg !1429
  %82 = load %struct._object*, %struct._object** %repr, align 8, !dbg !1430, !tbaa !620
  store %struct._object* %82, %struct._object** %_py_decref_tmp62, align 8, !dbg !1429, !tbaa !620
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !1431, !tbaa !620
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0, !dbg !1433
  %84 = load i64, i64* %ob_refcnt63, align 8, !dbg !1434, !tbaa !877
  %dec64 = add i64 %84, -1, !dbg !1434
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !1434, !tbaa !877
  %cmp65 = icmp ne i64 %dec64, 0, !dbg !1435
  br i1 %cmp65, label %if.then.67, label %if.else.68, !dbg !1436

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71, !dbg !1437

if.else.68:                                       ; preds = %do.body.61
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !1439, !tbaa !620
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1, !dbg !1441
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !1441, !tbaa !919
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4, !dbg !1442
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !1442, !tbaa !921
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8, !dbg !1443, !tbaa !620
  call void %87(%struct._object* %88), !dbg !1444
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  %89 = bitcast %struct._object** %_py_decref_tmp62 to i8*, !dbg !1445
  call void @llvm.lifetime.end(i64 8, i8* %89) #2, !dbg !1445
  br label %do.cond.72, !dbg !1447

do.cond.72:                                       ; preds = %if.end.71
  br label %do.end.73, !dbg !1448

do.end.73:                                        ; preds = %do.cond.72
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1450

if.end.74:                                        ; preds = %do.end.57
  store i32 0, i32* %cleanup.dest.slot, !dbg !1451
  br label %cleanup, !dbg !1451

cleanup:                                          ; preds = %if.end.74, %do.end.73, %do.end, %if.then.17, %if.then
  %90 = bitcast i8** %crepr to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !1452
  %91 = bitcast i8** %cname to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1452
  %92 = bitcast %struct._object** %repr to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !1452
  %93 = bitcast %struct._object** %val to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !1452
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 2
  br i1 %SwitchLeaf2, label %for.end, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !1453

for.inc:                                          ; preds = %cleanup.cont
  %94 = load i32, i32* %i, align 4, !dbg !1454, !tbaa !714
  %inc = add i32 %94, 1, !dbg !1454
  store i32 %inc, i32* %i, align 4, !dbg !1454, !tbaa !714
  br label %for.cond, !dbg !1455

for.end:                                          ; preds = %LeafBlock.1, %for.cond
  %95 = load i32, i32* %removelast, align 4, !dbg !1456, !tbaa !714
  %tobool = icmp ne i32 %95, 0, !dbg !1456
  br i1 %tobool, label %if.then.78, label %if.end.80, !dbg !1458

if.then.78:                                       ; preds = %for.end
  %96 = load i8*, i8** %pbuf, align 8, !dbg !1459, !tbaa !620
  %add.ptr79 = getelementptr i8, i8* %96, i64 -2, !dbg !1459
  store i8* %add.ptr79, i8** %pbuf, align 8, !dbg !1459, !tbaa !620
  br label %if.end.80, !dbg !1461

if.end.80:                                        ; preds = %if.then.78, %for.end
  %97 = load i8*, i8** %pbuf, align 8, !dbg !1462, !tbaa !620
  %incdec.ptr81 = getelementptr i8, i8* %97, i32 1, !dbg !1462
  store i8* %incdec.ptr81, i8** %pbuf, align 8, !dbg !1462, !tbaa !620
  store i8 41, i8* %97, align 1, !dbg !1463, !tbaa !1288
  %98 = load i8*, i8** %pbuf, align 8, !dbg !1464, !tbaa !620
  store i8 0, i8* %98, align 1, !dbg !1465, !tbaa !1288
  %arraydecay82 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0, !dbg !1466
  %call83 = call %struct._object* @PyUnicode_FromString(i8* %arraydecay82), !dbg !1467
  store %struct._object* %call83, %struct._object** %retval, !dbg !1468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.84, !dbg !1468

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.84

cleanup.84:                                       ; preds = %NewDefault, %if.end.80
  %99 = bitcast i8** %pbuf to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !1469
  %100 = bitcast i8** %endofbuf to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !1469
  %101 = bitcast [512 x i8]* %buf to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 512, i8* %101) #2, !dbg !1469
  %102 = bitcast i64* %len to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !1469
  %103 = bitcast i32* %removelast to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 4, i8* %103) #2, !dbg !1469
  %104 = bitcast i32* %i to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 4, i8* %104) #2, !dbg !1469
  %105 = bitcast %struct._typeobject** %typ to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !1469
  %106 = load %struct._object*, %struct._object** %retval, !dbg !1469
  ret %struct._object* %106, !dbg !1469
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %ob = alloca %struct._object*, align 8
  %res = alloca %struct.PyTupleObject*, align 8
  %len = alloca i64, align 8
  %min_len = alloca i64, align 8
  %max_len = alloca i64, align 8
  %i = alloca i64, align 8
  %n_unnamed_fields = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !542, metadata !624), !dbg !1470
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !543, metadata !624), !dbg !1471
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !544, metadata !624), !dbg !1472
  %0 = bitcast %struct._object** %arg to i8*, !dbg !1473
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1473
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !545, metadata !624), !dbg !1474
  store %struct._object* null, %struct._object** %arg, align 8, !dbg !1474, !tbaa !620
  %1 = bitcast %struct._object** %dict to i8*, !dbg !1475
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !546, metadata !624), !dbg !1476
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !1476, !tbaa !620
  %2 = bitcast %struct._object** %ob to i8*, !dbg !1477
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1477
  call void @llvm.dbg.declare(metadata %struct._object** %ob, metadata !547, metadata !624), !dbg !1478
  %3 = bitcast %struct.PyTupleObject** %res to i8*, !dbg !1479
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1479
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %res, metadata !548, metadata !624), !dbg !1480
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %res, align 8, !dbg !1480, !tbaa !620
  %4 = bitcast i64* %len to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1481
  call void @llvm.dbg.declare(metadata i64* %len, metadata !549, metadata !624), !dbg !1482
  %5 = bitcast i64* %min_len to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1481
  call void @llvm.dbg.declare(metadata i64* %min_len, metadata !550, metadata !624), !dbg !1483
  %6 = bitcast i64* %max_len to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1481
  call void @llvm.dbg.declare(metadata i64* %max_len, metadata !551, metadata !624), !dbg !1484
  %7 = bitcast i64* %i to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1481
  call void @llvm.dbg.declare(metadata i64* %i, metadata !552, metadata !624), !dbg !1485
  %8 = bitcast i64* %n_unnamed_fields to i8*, !dbg !1481
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1481
  call void @llvm.dbg.declare(metadata i64* %n_unnamed_fields, metadata !553, metadata !624), !dbg !1486
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1487, !tbaa !620
  %10 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1489, !tbaa !620
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @structseq_new.kwlist, i32 0, i32 0), %struct._object** %arg, %struct._object** %dict), !dbg !1490
  %tobool = icmp ne i32 %call, 0, !dbg !1490
  br i1 %tobool, label %if.end, label %if.then, !dbg !1491

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1492

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1493, !tbaa !620
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)), !dbg !1494
  store %struct._object* %call1, %struct._object** %arg, align 8, !dbg !1495, !tbaa !620
  %12 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1496, !tbaa !620
  %tobool2 = icmp ne %struct._object* %12, null, !dbg !1496
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !1498

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1499
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1499

if.end.4:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1501, !tbaa !620
  %tobool5 = icmp ne %struct._object* %13, null, !dbg !1501
  br i1 %tobool5, label %land.lhs.true, label %if.end.12, !dbg !1502

land.lhs.true:                                    ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1503, !tbaa !620
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1505
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1505, !tbaa !919
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19, !dbg !1506
  %16 = load i64, i64* %tp_flags, align 8, !dbg !1506, !tbaa !1507
  %and = and i64 %16, 536870912, !dbg !1508
  %cmp = icmp ne i64 %and, 0, !dbg !1509
  br i1 %cmp, label %if.end.12, label %if.then.6, !dbg !1510

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1511, !tbaa !620
  %18 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1512, !tbaa !620
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 1, !dbg !1513
  %19 = load i8*, i8** %tp_name, align 8, !dbg !1513, !tbaa !759
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* %19), !dbg !1514
  br label %do.body, !dbg !1515

do.body:                                          ; preds = %if.then.6
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1516
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1516
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !554, metadata !624), !dbg !1518
  %21 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1519, !tbaa !620
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !1518, !tbaa !620
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1520, !tbaa !620
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1522
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !1523, !tbaa !877
  %dec = add i64 %23, -1, !dbg !1523
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1523, !tbaa !877
  %cmp8 = icmp ne i64 %dec, 0, !dbg !1524
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1525

if.then.9:                                        ; preds = %do.body
  br label %if.end.11, !dbg !1526

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1528, !tbaa !620
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1530
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1530, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1531
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1531, !tbaa !921
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1532, !tbaa !620
  call void %26(%struct._object* %27), !dbg !1533
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1534
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1534
  br label %do.cond, !dbg !1536

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1537

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1539

if.end.12:                                        ; preds = %land.lhs.true, %if.end.4
  %29 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1540, !tbaa !620
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !1541
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !1541, !tbaa !919
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19, !dbg !1542
  %31 = load i64, i64* %tp_flags14, align 8, !dbg !1542, !tbaa !1507
  %and15 = and i64 %31, 33554432, !dbg !1543
  %cmp16 = icmp ne i64 %and15, 0, !dbg !1544
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !1545

cond.true:                                        ; preds = %if.end.12
  %32 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1546, !tbaa !620
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*, !dbg !1548
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1, !dbg !1549
  %34 = load i64, i64* %ob_size, align 8, !dbg !1549, !tbaa !660
  br label %cond.end, !dbg !1545

cond.false:                                       ; preds = %if.end.12
  %35 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1550, !tbaa !620
  %36 = bitcast %struct._object* %35 to %struct.PyVarObject*, !dbg !1552
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %36, i32 0, i32 1, !dbg !1553
  %37 = load i64, i64* %ob_size17, align 8, !dbg !1553, !tbaa !660
  br label %cond.end, !dbg !1545

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %37, %cond.false ], !dbg !1545
  store i64 %cond, i64* %len, align 8, !dbg !1554, !tbaa !640
  %38 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1557, !tbaa !620
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 31, !dbg !1558
  %39 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1558, !tbaa !632
  %call18 = call %struct._object* @_PyDict_GetItemId(%struct._object* %39, %struct._Py_Identifier* @PyId_n_sequence_fields), !dbg !1559
  %call19 = call i64 @PyLong_AsLong(%struct._object* %call18), !dbg !1560
  store i64 %call19, i64* %min_len, align 8, !dbg !1561, !tbaa !640
  %40 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1562, !tbaa !620
  %tp_dict20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 31, !dbg !1563
  %41 = load %struct._object*, %struct._object** %tp_dict20, align 8, !dbg !1563, !tbaa !632
  %call21 = call %struct._object* @_PyDict_GetItemId(%struct._object* %41, %struct._Py_Identifier* @PyId_n_fields), !dbg !1564
  %call22 = call i64 @PyLong_AsLong(%struct._object* %call21), !dbg !1565
  store i64 %call22, i64* %max_len, align 8, !dbg !1566, !tbaa !640
  %42 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1567, !tbaa !620
  %tp_dict23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 31, !dbg !1568
  %43 = load %struct._object*, %struct._object** %tp_dict23, align 8, !dbg !1568, !tbaa !632
  %call24 = call %struct._object* @_PyDict_GetItemId(%struct._object* %43, %struct._Py_Identifier* @PyId_n_unnamed_fields), !dbg !1569
  %call25 = call i64 @PyLong_AsLong(%struct._object* %call24), !dbg !1570
  store i64 %call25, i64* %n_unnamed_fields, align 8, !dbg !1571, !tbaa !640
  %44 = load i64, i64* %min_len, align 8, !dbg !1572, !tbaa !640
  %45 = load i64, i64* %max_len, align 8, !dbg !1573, !tbaa !640
  %cmp26 = icmp ne i64 %44, %45, !dbg !1574
  br i1 %cmp26, label %if.then.27, label %if.else.62, !dbg !1575

if.then.27:                                       ; preds = %cond.end
  %46 = load i64, i64* %len, align 8, !dbg !1576, !tbaa !640
  %47 = load i64, i64* %min_len, align 8, !dbg !1577, !tbaa !640
  %cmp28 = icmp slt i64 %46, %47, !dbg !1578
  br i1 %cmp28, label %if.then.29, label %if.end.44, !dbg !1579

if.then.29:                                       ; preds = %if.then.27
  %48 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1580, !tbaa !620
  %49 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1581, !tbaa !620
  %tp_name30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 1, !dbg !1582
  %50 = load i8*, i8** %tp_name30, align 8, !dbg !1582, !tbaa !759
  %51 = load i64, i64* %min_len, align 8, !dbg !1583, !tbaa !640
  %52 = load i64, i64* %len, align 8, !dbg !1584, !tbaa !640
  %call31 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i32 0, i32 0), i8* %50, i64 %51, i64 %52), !dbg !1585
  br label %do.body.32, !dbg !1586

do.body.32:                                       ; preds = %if.then.29
  %53 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !1587
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !1587
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp33, metadata !558, metadata !624), !dbg !1589
  %54 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1590, !tbaa !620
  store %struct._object* %54, %struct._object** %_py_decref_tmp33, align 8, !dbg !1589, !tbaa !620
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1591, !tbaa !620
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !1593
  %56 = load i64, i64* %ob_refcnt34, align 8, !dbg !1594, !tbaa !877
  %dec35 = add i64 %56, -1, !dbg !1594
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1594, !tbaa !877
  %cmp36 = icmp ne i64 %dec35, 0, !dbg !1595
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !1596

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41, !dbg !1597

if.else.38:                                       ; preds = %do.body.32
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1599, !tbaa !620
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !1601
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1601, !tbaa !919
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !1602
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1602, !tbaa !921
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8, !dbg !1603, !tbaa !620
  call void %59(%struct._object* %60), !dbg !1604
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  %61 = bitcast %struct._object** %_py_decref_tmp33 to i8*, !dbg !1605
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !1605
  br label %do.cond.42, !dbg !1607

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !1608

do.end.43:                                        ; preds = %do.cond.42
  store %struct._object* null, %struct._object** %retval, !dbg !1610
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1610

if.end.44:                                        ; preds = %if.then.27
  %62 = load i64, i64* %len, align 8, !dbg !1611, !tbaa !640
  %63 = load i64, i64* %max_len, align 8, !dbg !1612, !tbaa !640
  %cmp45 = icmp sgt i64 %62, %63, !dbg !1613
  br i1 %cmp45, label %if.then.46, label %if.end.61, !dbg !1614

if.then.46:                                       ; preds = %if.end.44
  %64 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1615, !tbaa !620
  %65 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1616, !tbaa !620
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 1, !dbg !1617
  %66 = load i8*, i8** %tp_name47, align 8, !dbg !1617, !tbaa !759
  %67 = load i64, i64* %max_len, align 8, !dbg !1618, !tbaa !640
  %68 = load i64, i64* %len, align 8, !dbg !1619, !tbaa !640
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i8* %66, i64 %67, i64 %68), !dbg !1620
  br label %do.body.49, !dbg !1621

do.body.49:                                       ; preds = %if.then.46
  %69 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1622
  call void @llvm.lifetime.start(i64 8, i8* %69) #2, !dbg !1622
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !564, metadata !624), !dbg !1624
  %70 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1625, !tbaa !620
  store %struct._object* %70, %struct._object** %_py_decref_tmp50, align 8, !dbg !1624, !tbaa !620
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1626, !tbaa !620
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !1628
  %72 = load i64, i64* %ob_refcnt51, align 8, !dbg !1629, !tbaa !877
  %dec52 = add i64 %72, -1, !dbg !1629
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1629, !tbaa !877
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !1630
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !1631

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !1632

if.else.55:                                       ; preds = %do.body.49
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1634, !tbaa !620
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !1636
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1636, !tbaa !919
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !1637
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1637, !tbaa !921
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1638, !tbaa !620
  call void %75(%struct._object* %76), !dbg !1639
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %77 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1640
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !1640
  br label %do.cond.59, !dbg !1642

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1643

do.end.60:                                        ; preds = %do.cond.59
  store %struct._object* null, %struct._object** %retval, !dbg !1645
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1645

if.end.61:                                        ; preds = %if.end.44
  br label %if.end.80, !dbg !1646

if.else.62:                                       ; preds = %cond.end
  %78 = load i64, i64* %len, align 8, !dbg !1647, !tbaa !640
  %79 = load i64, i64* %min_len, align 8, !dbg !1648, !tbaa !640
  %cmp63 = icmp ne i64 %78, %79, !dbg !1649
  br i1 %cmp63, label %if.then.64, label %if.end.79, !dbg !1650

if.then.64:                                       ; preds = %if.else.62
  %80 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1651, !tbaa !620
  %81 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1652, !tbaa !620
  %tp_name65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 1, !dbg !1653
  %82 = load i8*, i8** %tp_name65, align 8, !dbg !1653, !tbaa !759
  %83 = load i64, i64* %min_len, align 8, !dbg !1654, !tbaa !640
  %84 = load i64, i64* %len, align 8, !dbg !1655, !tbaa !640
  %call66 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i8* %82, i64 %83, i64 %84), !dbg !1656
  br label %do.body.67, !dbg !1657

do.body.67:                                       ; preds = %if.then.64
  %85 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1658
  call void @llvm.lifetime.start(i64 8, i8* %85) #2, !dbg !1658
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !568, metadata !624), !dbg !1660
  %86 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1661, !tbaa !620
  store %struct._object* %86, %struct._object** %_py_decref_tmp68, align 8, !dbg !1660, !tbaa !620
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1662, !tbaa !620
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0, !dbg !1664
  %88 = load i64, i64* %ob_refcnt69, align 8, !dbg !1665, !tbaa !877
  %dec70 = add i64 %88, -1, !dbg !1665
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1665, !tbaa !877
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !1666
  br i1 %cmp71, label %if.then.72, label %if.else.73, !dbg !1667

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76, !dbg !1668

if.else.73:                                       ; preds = %do.body.67
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1670, !tbaa !620
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1, !dbg !1672
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !1672, !tbaa !919
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4, !dbg !1673
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !1673, !tbaa !921
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1674, !tbaa !620
  call void %91(%struct._object* %92), !dbg !1675
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  %93 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1676
  call void @llvm.lifetime.end(i64 8, i8* %93) #2, !dbg !1676
  br label %do.cond.77, !dbg !1678

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !1679

do.end.78:                                        ; preds = %do.cond.77
  store %struct._object* null, %struct._object** %retval, !dbg !1681
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1681

if.end.79:                                        ; preds = %if.else.62
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.61
  %94 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1682, !tbaa !620
  %call81 = call %struct._object* @PyStructSequence_New(%struct._typeobject* %94), !dbg !1683
  %95 = bitcast %struct._object* %call81 to %struct.PyTupleObject*, !dbg !1684
  store %struct.PyTupleObject* %95, %struct.PyTupleObject** %res, align 8, !dbg !1685, !tbaa !620
  %96 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8, !dbg !1686, !tbaa !620
  %cmp82 = icmp eq %struct.PyTupleObject* %96, null, !dbg !1687
  br i1 %cmp82, label %if.then.83, label %if.end.96, !dbg !1688

if.then.83:                                       ; preds = %if.end.80
  br label %do.body.84, !dbg !1689

do.body.84:                                       ; preds = %if.then.83
  %97 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !1690
  call void @llvm.lifetime.start(i64 8, i8* %97) #2, !dbg !1690
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !573, metadata !624), !dbg !1692
  %98 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1693, !tbaa !620
  store %struct._object* %98, %struct._object** %_py_decref_tmp85, align 8, !dbg !1692, !tbaa !620
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1694, !tbaa !620
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !1696
  %100 = load i64, i64* %ob_refcnt86, align 8, !dbg !1697, !tbaa !877
  %dec87 = add i64 %100, -1, !dbg !1697
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !1697, !tbaa !877
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !1698
  br i1 %cmp88, label %if.then.89, label %if.else.90, !dbg !1699

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93, !dbg !1700

if.else.90:                                       ; preds = %do.body.84
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1702, !tbaa !620
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !1704
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8, !dbg !1704, !tbaa !919
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !1705
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8, !dbg !1705, !tbaa !921
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1706, !tbaa !620
  call void %103(%struct._object* %104), !dbg !1707
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  %105 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !1708
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !1708
  br label %do.cond.94, !dbg !1710

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95, !dbg !1711

do.end.95:                                        ; preds = %do.cond.94
  store %struct._object* null, %struct._object** %retval, !dbg !1713
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1713

if.end.96:                                        ; preds = %if.end.80
  store i64 0, i64* %i, align 8, !dbg !1714, !tbaa !640
  br label %for.cond, !dbg !1715

for.cond:                                         ; preds = %for.inc, %if.end.96
  %106 = load i64, i64* %i, align 8, !dbg !1716, !tbaa !640
  %107 = load i64, i64* %len, align 8, !dbg !1719, !tbaa !640
  %cmp97 = icmp slt i64 %106, %107, !dbg !1720
  br i1 %cmp97, label %for.body, label %for.end, !dbg !1721

for.body:                                         ; preds = %for.cond
  %108 = bitcast %struct._object** %v to i8*, !dbg !1722
  call void @llvm.lifetime.start(i64 8, i8* %108) #2, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !577, metadata !624), !dbg !1723
  %109 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1724, !tbaa !620
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1, !dbg !1725
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !1725, !tbaa !919
  %tp_flags99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 19, !dbg !1726
  %111 = load i64, i64* %tp_flags99, align 8, !dbg !1726, !tbaa !1507
  %and100 = and i64 %111, 33554432, !dbg !1727
  %cmp101 = icmp ne i64 %and100, 0, !dbg !1728
  br i1 %cmp101, label %cond.true.102, label %cond.false.103, !dbg !1729

cond.true.102:                                    ; preds = %for.body
  %112 = load i64, i64* %i, align 8, !dbg !1730, !tbaa !640
  %113 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1732, !tbaa !620
  %114 = bitcast %struct._object* %113 to %struct.PyListObject*, !dbg !1733
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %114, i32 0, i32 1, !dbg !1734
  %115 = load %struct._object**, %struct._object*** %ob_item, align 8, !dbg !1734, !tbaa !1735
  %arrayidx = getelementptr %struct._object*, %struct._object** %115, i64 %112, !dbg !1737
  %116 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1737, !tbaa !620
  br label %cond.end.106, !dbg !1729

cond.false.103:                                   ; preds = %for.body
  %117 = load i64, i64* %i, align 8, !dbg !1738, !tbaa !640
  %118 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1740, !tbaa !620
  %119 = bitcast %struct._object* %118 to %struct.PyTupleObject*, !dbg !1741
  %ob_item104 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %119, i32 0, i32 1, !dbg !1742
  %arrayidx105 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item104, i32 0, i64 %117, !dbg !1743
  %120 = load %struct._object*, %struct._object** %arrayidx105, align 8, !dbg !1743, !tbaa !620
  br label %cond.end.106, !dbg !1729

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.102
  %cond107 = phi %struct._object* [ %116, %cond.true.102 ], [ %120, %cond.false.103 ], !dbg !1729
  store %struct._object* %cond107, %struct._object** %v, align 8, !dbg !1744, !tbaa !620
  %121 = load %struct._object*, %struct._object** %v, align 8, !dbg !1747, !tbaa !620
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0, !dbg !1748
  %122 = load i64, i64* %ob_refcnt108, align 8, !dbg !1749, !tbaa !877
  %inc = add i64 %122, 1, !dbg !1749
  store i64 %inc, i64* %ob_refcnt108, align 8, !dbg !1749, !tbaa !877
  %123 = load %struct._object*, %struct._object** %v, align 8, !dbg !1750, !tbaa !620
  %124 = load i64, i64* %i, align 8, !dbg !1751, !tbaa !640
  %125 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8, !dbg !1752, !tbaa !620
  %ob_item109 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %125, i32 0, i32 1, !dbg !1753
  %arrayidx110 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item109, i32 0, i64 %124, !dbg !1752
  store %struct._object* %123, %struct._object** %arrayidx110, align 8, !dbg !1754, !tbaa !620
  %126 = bitcast %struct._object** %v to i8*, !dbg !1755
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !1755
  br label %for.inc, !dbg !1756

for.inc:                                          ; preds = %cond.end.106
  %127 = load i64, i64* %i, align 8, !dbg !1757, !tbaa !640
  %inc111 = add i64 %127, 1, !dbg !1757
  store i64 %inc111, i64* %i, align 8, !dbg !1757, !tbaa !640
  br label %for.cond, !dbg !1758

for.end:                                          ; preds = %for.cond
  br label %for.cond.112, !dbg !1759

for.cond.112:                                     ; preds = %for.inc.127, %for.end
  %128 = load i64, i64* %i, align 8, !dbg !1760, !tbaa !640
  %129 = load i64, i64* %max_len, align 8, !dbg !1765, !tbaa !640
  %cmp113 = icmp slt i64 %128, %129, !dbg !1766
  br i1 %cmp113, label %for.body.114, label %for.end.129, !dbg !1767

for.body.114:                                     ; preds = %for.cond.112
  %130 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1768, !tbaa !620
  %tobool115 = icmp ne %struct._object* %130, null, !dbg !1768
  br i1 %tobool115, label %land.lhs.true.116, label %if.else.121, !dbg !1771

land.lhs.true.116:                                ; preds = %for.body.114
  %131 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1772, !tbaa !620
  %132 = load i64, i64* %i, align 8, !dbg !1773, !tbaa !640
  %133 = load i64, i64* %n_unnamed_fields, align 8, !dbg !1774, !tbaa !640
  %sub = sub i64 %132, %133, !dbg !1775
  %134 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1776, !tbaa !620
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 28, !dbg !1777
  %135 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !1777, !tbaa !866
  %arrayidx117 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %135, i64 %sub, !dbg !1776
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx117, i32 0, i32 0, !dbg !1778
  %136 = load i8*, i8** %name, align 8, !dbg !1778, !tbaa !824
  %call118 = call %struct._object* @PyDict_GetItemString(%struct._object* %131, i8* %136), !dbg !1779
  store %struct._object* %call118, %struct._object** %ob, align 8, !dbg !1780, !tbaa !620
  %tobool119 = icmp ne %struct._object* %call118, null, !dbg !1780
  br i1 %tobool119, label %if.then.120, label %if.else.121, !dbg !1781

if.then.120:                                      ; preds = %land.lhs.true.116
  br label %if.end.122, !dbg !1782

if.else.121:                                      ; preds = %land.lhs.true.116, %for.body.114
  store %struct._object* @_Py_NoneStruct, %struct._object** %ob, align 8, !dbg !1784, !tbaa !620
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %137 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1786, !tbaa !620
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0, !dbg !1787
  %138 = load i64, i64* %ob_refcnt123, align 8, !dbg !1788, !tbaa !877
  %inc124 = add i64 %138, 1, !dbg !1788
  store i64 %inc124, i64* %ob_refcnt123, align 8, !dbg !1788, !tbaa !877
  %139 = load %struct._object*, %struct._object** %ob, align 8, !dbg !1789, !tbaa !620
  %140 = load i64, i64* %i, align 8, !dbg !1790, !tbaa !640
  %141 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8, !dbg !1791, !tbaa !620
  %ob_item125 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %141, i32 0, i32 1, !dbg !1792
  %arrayidx126 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item125, i32 0, i64 %140, !dbg !1791
  store %struct._object* %139, %struct._object** %arrayidx126, align 8, !dbg !1793, !tbaa !620
  br label %for.inc.127, !dbg !1794

for.inc.127:                                      ; preds = %if.end.122
  %142 = load i64, i64* %i, align 8, !dbg !1795, !tbaa !640
  %inc128 = add i64 %142, 1, !dbg !1795
  store i64 %inc128, i64* %i, align 8, !dbg !1795, !tbaa !640
  br label %for.cond.112, !dbg !1796

for.end.129:                                      ; preds = %for.cond.112
  br label %do.body.130, !dbg !1797

do.body.130:                                      ; preds = %for.end.129
  %143 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !1798
  call void @llvm.lifetime.start(i64 8, i8* %143) #2, !dbg !1798
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp131, metadata !581, metadata !624), !dbg !1800
  %144 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1801, !tbaa !620
  store %struct._object* %144, %struct._object** %_py_decref_tmp131, align 8, !dbg !1800, !tbaa !620
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1802, !tbaa !620
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0, !dbg !1804
  %146 = load i64, i64* %ob_refcnt132, align 8, !dbg !1805, !tbaa !877
  %dec133 = add i64 %146, -1, !dbg !1805
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !1805, !tbaa !877
  %cmp134 = icmp ne i64 %dec133, 0, !dbg !1806
  br i1 %cmp134, label %if.then.135, label %if.else.136, !dbg !1807

if.then.135:                                      ; preds = %do.body.130
  br label %if.end.139, !dbg !1808

if.else.136:                                      ; preds = %do.body.130
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1810, !tbaa !620
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1, !dbg !1812
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8, !dbg !1812, !tbaa !919
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4, !dbg !1813
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8, !dbg !1813, !tbaa !921
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1814, !tbaa !620
  call void %149(%struct._object* %150), !dbg !1815
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  %151 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !1816
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1816
  br label %do.cond.140, !dbg !1818

do.cond.140:                                      ; preds = %if.end.139
  br label %do.end.141, !dbg !1819

do.end.141:                                       ; preds = %do.cond.140
  %152 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8, !dbg !1821, !tbaa !620
  %153 = bitcast %struct.PyTupleObject* %152 to %struct._object*, !dbg !1822
  store %struct._object* %153, %struct._object** %retval, !dbg !1823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1823

cleanup:                                          ; preds = %do.end.141, %do.end.95, %do.end.78, %do.end.60, %do.end.43, %do.end, %if.then.3, %if.then
  %154 = bitcast i64* %n_unnamed_fields to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %154) #2, !dbg !1824
  %155 = bitcast i64* %i to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %155) #2, !dbg !1824
  %156 = bitcast i64* %max_len to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %156) #2, !dbg !1824
  %157 = bitcast i64* %min_len to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !1824
  %158 = bitcast i64* %len to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %158) #2, !dbg !1824
  %159 = bitcast %struct.PyTupleObject** %res to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %159) #2, !dbg !1824
  %160 = bitcast %struct._object** %ob to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %160) #2, !dbg !1824
  %161 = bitcast %struct._object** %dict to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %161) #2, !dbg !1824
  %162 = bitcast %struct._object** %arg to i8*, !dbg !1824
  call void @llvm.lifetime.end(i64 8, i8* %162) #2, !dbg !1824
  %163 = load %struct._object*, %struct._object** %retval, !dbg !1824
  ret %struct._object* %163, !dbg !1824
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #5

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_reduce(%struct.PyTupleObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyTupleObject*, align 8
  %tup = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n_fields = alloca i64, align 8
  %n_visible_fields = alloca i64, align 8
  %n_unnamed_fields = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_xdecref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8, !tbaa !620
  call void @llvm.dbg.declare(metadata %struct.PyTupleObject** %self.addr, metadata !512, metadata !624), !dbg !1825
  %0 = bitcast %struct._object** %tup to i8*, !dbg !1826
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1826
  call void @llvm.dbg.declare(metadata %struct._object** %tup, metadata !513, metadata !624), !dbg !1827
  store %struct._object* null, %struct._object** %tup, align 8, !dbg !1827, !tbaa !620
  %1 = bitcast %struct._object** %dict to i8*, !dbg !1828
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1828
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !514, metadata !624), !dbg !1829
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !1829, !tbaa !620
  %2 = bitcast %struct._object** %result to i8*, !dbg !1830
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1830
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !515, metadata !624), !dbg !1831
  %3 = bitcast i64* %n_fields to i8*, !dbg !1832
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1832
  call void @llvm.dbg.declare(metadata i64* %n_fields, metadata !516, metadata !624), !dbg !1833
  %4 = bitcast i64* %n_visible_fields to i8*, !dbg !1832
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1832
  call void @llvm.dbg.declare(metadata i64* %n_visible_fields, metadata !517, metadata !624), !dbg !1834
  %5 = bitcast i64* %n_unnamed_fields to i8*, !dbg !1832
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1832
  call void @llvm.dbg.declare(metadata i64* %n_unnamed_fields, metadata !518, metadata !624), !dbg !1835
  %6 = bitcast i32* %i to i8*, !dbg !1836
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1836
  call void @llvm.dbg.declare(metadata i32* %i, metadata !519, metadata !624), !dbg !1837
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1838, !tbaa !620
  %8 = bitcast %struct.PyTupleObject* %7 to %struct._object*, !dbg !1839
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1840
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1840, !tbaa !919
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 31, !dbg !1841
  %10 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1841, !tbaa !632
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %10, %struct._Py_Identifier* @PyId_n_fields), !dbg !1842
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call), !dbg !1843
  store i64 %call1, i64* %n_fields, align 8, !dbg !1844, !tbaa !640
  %11 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1845, !tbaa !620
  %12 = bitcast %struct.PyTupleObject* %11 to %struct.PyVarObject*, !dbg !1846
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1, !dbg !1847
  %13 = load i64, i64* %ob_size, align 8, !dbg !1847, !tbaa !660
  store i64 %13, i64* %n_visible_fields, align 8, !dbg !1848, !tbaa !640
  %14 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1849, !tbaa !620
  %15 = bitcast %struct.PyTupleObject* %14 to %struct._object*, !dbg !1850
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1851
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1851, !tbaa !919
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 31, !dbg !1852
  %17 = load %struct._object*, %struct._object** %tp_dict3, align 8, !dbg !1852, !tbaa !632
  %call4 = call %struct._object* @_PyDict_GetItemId(%struct._object* %17, %struct._Py_Identifier* @PyId_n_unnamed_fields), !dbg !1853
  %call5 = call i64 @PyLong_AsLong(%struct._object* %call4), !dbg !1854
  store i64 %call5, i64* %n_unnamed_fields, align 8, !dbg !1855, !tbaa !640
  %18 = load i64, i64* %n_visible_fields, align 8, !dbg !1856, !tbaa !640
  %call6 = call %struct._object* @PyTuple_New(i64 %18), !dbg !1857
  store %struct._object* %call6, %struct._object** %tup, align 8, !dbg !1858, !tbaa !620
  %19 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1859, !tbaa !620
  %tobool = icmp ne %struct._object* %19, null, !dbg !1859
  br i1 %tobool, label %if.end, label %if.then, !dbg !1861

if.then:                                          ; preds = %entry
  br label %error, !dbg !1862

if.end:                                           ; preds = %entry
  %call7 = call %struct._object* @PyDict_New(), !dbg !1863
  store %struct._object* %call7, %struct._object** %dict, align 8, !dbg !1864, !tbaa !620
  %20 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1865, !tbaa !620
  %tobool8 = icmp ne %struct._object* %20, null, !dbg !1865
  br i1 %tobool8, label %if.end.10, label %if.then.9, !dbg !1867

if.then.9:                                        ; preds = %if.end
  br label %error, !dbg !1868

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1869, !tbaa !714
  br label %for.cond, !dbg !1871

for.cond:                                         ; preds = %for.inc, %if.end.10
  %21 = load i32, i32* %i, align 4, !dbg !1872, !tbaa !714
  %conv = sext i32 %21 to i64, !dbg !1872
  %22 = load i64, i64* %n_visible_fields, align 8, !dbg !1876, !tbaa !640
  %cmp = icmp slt i64 %conv, %22, !dbg !1877
  br i1 %cmp, label %for.body, label %for.end, !dbg !1878

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !dbg !1879, !tbaa !714
  %idxprom = sext i32 %23 to i64, !dbg !1881
  %24 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1881, !tbaa !620
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1, !dbg !1882
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1881
  %25 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1881, !tbaa !620
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1883
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !1884, !tbaa !877
  %inc = add i64 %26, 1, !dbg !1884
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1884, !tbaa !877
  %27 = load i32, i32* %i, align 4, !dbg !1885, !tbaa !714
  %idxprom12 = sext i32 %27 to i64, !dbg !1886
  %28 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1886, !tbaa !620
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1, !dbg !1887
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 %idxprom12, !dbg !1886
  %29 = load %struct._object*, %struct._object** %arrayidx14, align 8, !dbg !1886, !tbaa !620
  %30 = load i32, i32* %i, align 4, !dbg !1888, !tbaa !714
  %idxprom15 = sext i32 %30 to i64, !dbg !1889
  %31 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1890, !tbaa !620
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*, !dbg !1891
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1, !dbg !1892
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 %idxprom15, !dbg !1889
  store %struct._object* %29, %struct._object** %arrayidx17, align 8, !dbg !1893, !tbaa !620
  br label %for.inc, !dbg !1894

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !dbg !1895, !tbaa !714
  %inc18 = add i32 %33, 1, !dbg !1895
  store i32 %inc18, i32* %i, align 4, !dbg !1895, !tbaa !714
  br label %for.cond, !dbg !1896

for.end:                                          ; preds = %for.cond
  br label %for.cond.19, !dbg !1897

for.cond.19:                                      ; preds = %for.inc.35, %for.end
  %34 = load i32, i32* %i, align 4, !dbg !1898, !tbaa !714
  %conv20 = sext i32 %34 to i64, !dbg !1898
  %35 = load i64, i64* %n_fields, align 8, !dbg !1901, !tbaa !640
  %cmp21 = icmp slt i64 %conv20, %35, !dbg !1902
  br i1 %cmp21, label %for.body.23, label %for.end.37, !dbg !1903

for.body.23:                                      ; preds = %for.cond.19
  %36 = bitcast i8** %n to i8*, !dbg !1904
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1904
  call void @llvm.dbg.declare(metadata i8** %n, metadata !520, metadata !624), !dbg !1905
  %37 = load i32, i32* %i, align 4, !dbg !1906, !tbaa !714
  %conv24 = sext i32 %37 to i64, !dbg !1906
  %38 = load i64, i64* %n_unnamed_fields, align 8, !dbg !1907, !tbaa !640
  %sub = sub i64 %conv24, %38, !dbg !1908
  %39 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1909, !tbaa !620
  %40 = bitcast %struct.PyTupleObject* %39 to %struct._object*, !dbg !1910
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1911
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1911, !tbaa !919
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 28, !dbg !1912
  %42 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !1912, !tbaa !866
  %arrayidx26 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %42, i64 %sub, !dbg !1913
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx26, i32 0, i32 0, !dbg !1914
  %43 = load i8*, i8** %name, align 8, !dbg !1914, !tbaa !824
  store i8* %43, i8** %n, align 8, !dbg !1905, !tbaa !620
  %44 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1915, !tbaa !620
  %45 = load i8*, i8** %n, align 8, !dbg !1917, !tbaa !620
  %46 = load i32, i32* %i, align 4, !dbg !1918, !tbaa !714
  %idxprom27 = sext i32 %46 to i64, !dbg !1919
  %47 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1919, !tbaa !620
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1, !dbg !1920
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 %idxprom27, !dbg !1919
  %48 = load %struct._object*, %struct._object** %arrayidx29, align 8, !dbg !1919, !tbaa !620
  %call30 = call i32 @PyDict_SetItemString(%struct._object* %44, i8* %45, %struct._object* %48), !dbg !1921
  %cmp31 = icmp slt i32 %call30, 0, !dbg !1922
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !1923

if.then.33:                                       ; preds = %for.body.23
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1924

if.end.34:                                        ; preds = %for.body.23
  store i32 0, i32* %cleanup.dest.slot, !dbg !1925
  br label %cleanup, !dbg !1925

cleanup:                                          ; preds = %if.end.34, %if.then.33
  %49 = bitcast i8** %n to i8*, !dbg !1926
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1926
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 2
  br i1 %SwitchLeaf2, label %error, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc.35, !dbg !1927

for.inc.35:                                       ; preds = %cleanup.cont
  %50 = load i32, i32* %i, align 4, !dbg !1928, !tbaa !714
  %inc36 = add i32 %50, 1, !dbg !1928
  store i32 %inc36, i32* %i, align 4, !dbg !1928, !tbaa !714
  br label %for.cond.19, !dbg !1929

for.end.37:                                       ; preds = %for.cond.19
  %51 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8, !dbg !1930, !tbaa !620
  %52 = bitcast %struct.PyTupleObject* %51 to %struct._object*, !dbg !1931
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !1932
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !1932, !tbaa !919
  %54 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1933, !tbaa !620
  %55 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1934, !tbaa !620
  %call39 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._typeobject* %53, %struct._object* %54, %struct._object* %55), !dbg !1935
  store %struct._object* %call39, %struct._object** %result, align 8, !dbg !1936, !tbaa !620
  br label %do.body, !dbg !1937

do.body:                                          ; preds = %for.end.37
  %56 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1938
  call void @llvm.lifetime.start(i64 8, i8* %56) #2, !dbg !1938
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !524, metadata !624), !dbg !1940
  %57 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1941, !tbaa !620
  store %struct._object* %57, %struct._object** %_py_decref_tmp, align 8, !dbg !1940, !tbaa !620
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1942, !tbaa !620
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !1944
  %59 = load i64, i64* %ob_refcnt40, align 8, !dbg !1945, !tbaa !877
  %dec = add i64 %59, -1, !dbg !1945
  store i64 %dec, i64* %ob_refcnt40, align 8, !dbg !1945, !tbaa !877
  %cmp41 = icmp ne i64 %dec, 0, !dbg !1946
  br i1 %cmp41, label %if.then.43, label %if.else, !dbg !1947

if.then.43:                                       ; preds = %do.body
  br label %if.end.45, !dbg !1948

if.else:                                          ; preds = %do.body
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1950, !tbaa !620
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !1952
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1952, !tbaa !919
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !1953
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1953, !tbaa !921
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1954, !tbaa !620
  call void %62(%struct._object* %63), !dbg !1955
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.43
  %64 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1956
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !1956
  br label %do.cond, !dbg !1958

do.cond:                                          ; preds = %if.end.45
  br label %do.end, !dbg !1959

do.end:                                           ; preds = %do.cond
  br label %do.body.46, !dbg !1961

do.body.46:                                       ; preds = %do.end
  %65 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !1962
  call void @llvm.lifetime.start(i64 8, i8* %65) #2, !dbg !1962
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp47, metadata !526, metadata !624), !dbg !1964
  %66 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1965, !tbaa !620
  store %struct._object* %66, %struct._object** %_py_decref_tmp47, align 8, !dbg !1964, !tbaa !620
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1966, !tbaa !620
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !1968
  %68 = load i64, i64* %ob_refcnt48, align 8, !dbg !1969, !tbaa !877
  %dec49 = add i64 %68, -1, !dbg !1969
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !1969, !tbaa !877
  %cmp50 = icmp ne i64 %dec49, 0, !dbg !1970
  br i1 %cmp50, label %if.then.52, label %if.else.53, !dbg !1971

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56, !dbg !1972

if.else.53:                                       ; preds = %do.body.46
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1974, !tbaa !620
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !1976
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !1976, !tbaa !919
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !1977
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !1977, !tbaa !921
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8, !dbg !1978, !tbaa !620
  call void %71(%struct._object* %72), !dbg !1979
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  %73 = bitcast %struct._object** %_py_decref_tmp47 to i8*, !dbg !1980
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !1980
  br label %do.cond.57, !dbg !1981

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !1982

do.end.58:                                        ; preds = %do.cond.57
  %74 = load %struct._object*, %struct._object** %result, align 8, !dbg !1984, !tbaa !620
  store %struct._object* %74, %struct._object** %retval, !dbg !1985
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100, !dbg !1985

error:                                            ; preds = %LeafBlock.1, %if.then.9, %if.then
  br label %do.body.59, !dbg !1986

do.body.59:                                       ; preds = %error
  %75 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1987
  call void @llvm.lifetime.start(i64 8, i8* %75) #2, !dbg !1987
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !528, metadata !624), !dbg !1989
  %76 = load %struct._object*, %struct._object** %tup, align 8, !dbg !1990, !tbaa !620
  store %struct._object* %76, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1989, !tbaa !620
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1991, !tbaa !620
  %cmp60 = icmp ne %struct._object* %77, null, !dbg !1992
  br i1 %cmp60, label %if.then.62, label %if.end.76, !dbg !1993

if.then.62:                                       ; preds = %do.body.59
  br label %do.body.63, !dbg !1994

do.body.63:                                       ; preds = %if.then.62
  %78 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 8, i8* %78) #2, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !530, metadata !624), !dbg !1998
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1999, !tbaa !620
  store %struct._object* %79, %struct._object** %_py_decref_tmp64, align 8, !dbg !1998, !tbaa !620
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2000, !tbaa !620
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0, !dbg !2002
  %81 = load i64, i64* %ob_refcnt65, align 8, !dbg !2003, !tbaa !877
  %dec66 = add i64 %81, -1, !dbg !2003
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2003, !tbaa !877
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !2004
  br i1 %cmp67, label %if.then.69, label %if.else.70, !dbg !2005

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73, !dbg !2006

if.else.70:                                       ; preds = %do.body.63
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2008, !tbaa !620
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1, !dbg !2010
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !2010, !tbaa !919
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4, !dbg !2011
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !2011, !tbaa !921
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2012, !tbaa !620
  call void %84(%struct._object* %85), !dbg !2013
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  %86 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2014
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !2014
  br label %do.cond.74, !dbg !2016

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75, !dbg !2017

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76, !dbg !2019

if.end.76:                                        ; preds = %do.end.75, %do.body.59
  %87 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2021
  call void @llvm.lifetime.end(i64 8, i8* %87) #2, !dbg !2021
  br label %do.cond.77, !dbg !2024

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !2025

do.end.78:                                        ; preds = %do.cond.77
  br label %do.body.79, !dbg !2027

do.body.79:                                       ; preds = %do.end.78
  %88 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %88) #2, !dbg !2028
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp80, metadata !533, metadata !624), !dbg !2030
  %89 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2031, !tbaa !620
  store %struct._object* %89, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2030, !tbaa !620
  %90 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2032, !tbaa !620
  %cmp81 = icmp ne %struct._object* %90, null, !dbg !2033
  br i1 %cmp81, label %if.then.83, label %if.end.97, !dbg !2034

if.then.83:                                       ; preds = %do.body.79
  br label %do.body.84, !dbg !2035

do.body.84:                                       ; preds = %if.then.83
  %91 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !2037
  call void @llvm.lifetime.start(i64 8, i8* %91) #2, !dbg !2037
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !535, metadata !624), !dbg !2039
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2040, !tbaa !620
  store %struct._object* %92, %struct._object** %_py_decref_tmp85, align 8, !dbg !2039, !tbaa !620
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !2041, !tbaa !620
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0, !dbg !2043
  %94 = load i64, i64* %ob_refcnt86, align 8, !dbg !2044, !tbaa !877
  %dec87 = add i64 %94, -1, !dbg !2044
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !2044, !tbaa !877
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !2045
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !2046

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94, !dbg !2047

if.else.91:                                       ; preds = %do.body.84
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !2049, !tbaa !620
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1, !dbg !2051
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !2051, !tbaa !919
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4, !dbg !2052
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !2052, !tbaa !921
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !2053, !tbaa !620
  call void %97(%struct._object* %98), !dbg !2054
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %99 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !2055
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !2055
  br label %do.cond.95, !dbg !2057

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !2058

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97, !dbg !2060

if.end.97:                                        ; preds = %do.end.96, %do.body.79
  %100 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !2062
  call void @llvm.lifetime.end(i64 8, i8* %100) #2, !dbg !2062
  br label %do.cond.98, !dbg !2063

do.cond.98:                                       ; preds = %if.end.97
  br label %do.end.99, !dbg !2064

do.end.99:                                        ; preds = %do.cond.98
  store %struct._object* null, %struct._object** %retval, !dbg !2066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100, !dbg !2066

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.100

cleanup.100:                                      ; preds = %NewDefault, %do.end.99, %do.end.58
  %101 = bitcast i32* %i to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 4, i8* %101) #2, !dbg !2067
  %102 = bitcast i64* %n_unnamed_fields to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !2067
  %103 = bitcast i64* %n_visible_fields to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %103) #2, !dbg !2067
  %104 = bitcast i64* %n_fields to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %104) #2, !dbg !2067
  %105 = bitcast %struct._object** %result to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !2067
  %106 = bitcast %struct._object** %dict to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !2067
  %107 = bitcast %struct._object** %tup to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %107) #2, !dbg !2067
  %108 = load %struct._object*, %struct._object** %retval, !dbg !2067
  ret %struct._object* %108, !dbg !2067
}

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyDict_New() #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!617, !618}
!llvm.ident = !{!619}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !375, globals: !583)
!1 = !DIFile(filename: "structseq.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !96, !360, !44, !361, !101, !21, !362, !27, !364, !366}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence", file: !6, line: 35, baseType: !7)
!6 = !DIFile(filename: "Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !8, line: 33, baseType: !9)
!8 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 25, size: 256, align: 64, elements: !10)
!10 = !{!11, !358}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !9, file: !8, line: 26, baseType: !12, size: 192, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !15)
!15 = !{!16, !357}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !14, file: !13, line: 112, baseType: !17, size: 128, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !13, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !26, line: 181, baseType: !27)
!26 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !18, file: !13, line: 108, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !31)
!31 = !{!32, !33, !37, !38, !39, !45, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !305, !323, !324, !325, !327, !329, !330, !332, !337, !342, !347, !348, !349, !350, !351, !352, !353, !354, !356}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !30, file: !13, line: 335, baseType: !12, size: 192, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !30, file: !13, line: 336, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !30, file: !13, line: 337, baseType: !21, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !30, file: !13, line: 337, baseType: !21, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !30, file: !13, line: 341, baseType: !40, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !30, file: !13, line: 342, baseType: !46, size: 64, align: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !44, !51, !50}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 48, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !54, line: 246, size: 1728, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!55 = !{!56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !77, !78, !79, !80, !82, !84, !86, !90, !93, !95, !97, !98, !99, !100, !104, !105}
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
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !26, line: 140, baseType: !27)
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
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !26, line: 141, baseType: !27)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !53, file: !54, line: 303, baseType: !96, size: 64, align: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !53, file: !54, line: 304, baseType: !96, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !53, file: !54, line: 305, baseType: !96, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !53, file: !54, line: 306, baseType: !96, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !53, file: !54, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !53, file: !54, line: 309, baseType: !50, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !53, file: !54, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !30, file: !13, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!44, !44, !58}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !30, file: !13, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!50, !44, !58, !44}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !30, file: !13, line: 345, baseType: !96, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !30, file: !13, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!44, !44}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !30, file: !13, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !13, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!44, !44, !44}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !13, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !13, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !13, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !13, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !13, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!44, !44, !44, !44}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !13, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !13, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !13, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !13, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!50, !44}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !13, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !13, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !13, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !13, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !13, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !13, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !13, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !13, line: 258, baseType: !96, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !13, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !13, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !13, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !13, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !13, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !13, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !13, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !13, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !13, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !13, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !13, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !13, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !13, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !13, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !13, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !13, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !30, file: !13, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !13, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!21, !44}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !13, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !13, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !44, !21}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !13, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !13, line: 285, baseType: !96, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !13, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!50, !44, !21, !44}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !13, line: 287, baseType: !96, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !13, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!50, !44, !44}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !13, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !13, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !30, file: !13, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !13, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !13, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !13, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!50, !44, !44, !44}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !30, file: !13, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !44}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !22, line: 186, baseType: !21)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !30, file: !13, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !30, file: !13, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !30, file: !13, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !30, file: !13, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !30, file: !13, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !13, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!50, !44, !242, !50}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !13, line: 179, baseType: !96, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !13, line: 180, baseType: !44, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !13, line: 181, baseType: !21, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !13, line: 182, baseType: !21, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !13, line: 184, baseType: !50, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !13, line: 185, baseType: !50, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !13, line: 186, baseType: !58, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !13, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !13, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !13, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !13, line: 190, baseType: !96, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !13, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !44, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !30, file: !13, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !30, file: !13, line: 368, baseType: !34, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !30, file: !13, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!50, !44, !270, !96}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!50, !44, !96}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !30, file: !13, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !30, file: !13, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!44, !44, !44, !50}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !30, file: !13, line: 382, baseType: !21, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !30, file: !13, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !30, file: !13, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !30, file: !13, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !34, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !13, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !298, line: 18, size: 320, align: 64, elements: !299)
!298 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !298, line: 19, baseType: !58, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !298, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !297, file: !298, line: 21, baseType: !21, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !298, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !297, file: !298, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !13, line: 391, baseType: !306, size: 64, align: 64, offset: 1984)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !308, line: 11, size: 320, align: 64, elements: !309)
!308 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!309 = !{!310, !311, !316, !321, !322}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !308, line: 12, baseType: !58, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !307, file: !308, line: 13, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !308, line: 8, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!44, !44, !96}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !307, file: !308, line: 14, baseType: !317, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !308, line: 9, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!50, !44, !44, !96}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !307, file: !308, line: 15, baseType: !58, size: 64, align: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !307, file: !308, line: 16, baseType: !96, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !30, file: !13, line: 392, baseType: !29, size: 64, align: 64, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !30, file: !13, line: 393, baseType: !44, size: 64, align: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !30, file: !13, line: 394, baseType: !326, size: 64, align: 64, offset: 2176)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !141)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !30, file: !13, line: 395, baseType: !328, size: 64, align: 64, offset: 2240)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !217)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !30, file: !13, line: 396, baseType: !21, size: 64, align: 64, offset: 2304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !30, file: !13, line: 397, baseType: !331, size: 64, align: 64, offset: 2368)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !217)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !30, file: !13, line: 398, baseType: !333, size: 64, align: 64, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!44, !29, !21}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !30, file: !13, line: 399, baseType: !338, size: 64, align: 64, offset: 2496)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!44, !29, !44, !44}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !30, file: !13, line: 400, baseType: !343, size: 64, align: 64, offset: 2560)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !96}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !30, file: !13, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !30, file: !13, line: 402, baseType: !44, size: 64, align: 64, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !30, file: !13, line: 403, baseType: !44, size: 64, align: 64, offset: 2752)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !30, file: !13, line: 404, baseType: !44, size: 64, align: 64, offset: 2816)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !30, file: !13, line: 405, baseType: !44, size: 64, align: 64, offset: 2880)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !30, file: !13, line: 406, baseType: !44, size: 64, align: 64, offset: 2944)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !30, file: !13, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !30, file: !13, line: 410, baseType: !355, size: 32, align: 32, offset: 3072)
!355 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !30, file: !13, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !14, file: !13, line: 113, baseType: !21, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !9, file: !8, line: 27, baseType: !359, size: 64, align: 64, offset: 192)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, align: 64, elements: !88)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !298, line: 24, baseType: !297)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !13, line: 422, baseType: !30)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !368, line: 40, baseType: !369)
!368 = !DIFile(filename: "Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 23, size: 320, align: 64, elements: !370)
!370 = !{!371, !372, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !369, file: !368, line: 24, baseType: !12, size: 192, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !369, file: !368, line: 26, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !369, file: !368, line: 39, baseType: !21, size: 64, align: 64, offset: 256)
!375 = !{!376, !385, !392, !396, !443, !449, !459, !462, !477, !510, !538}
!376 = !DISubprogram(name: "PyStructSequence_New", scope: !377, file: !377, line: 32, type: !378, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*)* @PyStructSequence_New, variables: !380)
!377 = !DIFile(filename: "Objects/structseq.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!378 = !DISubroutineType(types: !379)
!379 = !{!44, !364}
!380 = !{!381, !382, !383, !384}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !376, file: !377, line: 32, type: !364)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !376, file: !377, line: 34, type: !4)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !376, file: !377, line: 35, type: !21)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !376, file: !377, line: 35, type: !21)
!385 = !DISubprogram(name: "PyStructSequence_SetItem", scope: !377, file: !377, line: 50, type: !386, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i64, %struct._object*)* @PyStructSequence_SetItem, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !44, !21, !44}
!388 = !{!389, !390, !391}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !385, file: !377, line: 50, type: !44)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !385, file: !377, line: 50, type: !21)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !385, file: !377, line: 50, type: !44)
!392 = !DISubprogram(name: "PyStructSequence_GetItem", scope: !377, file: !377, line: 56, type: !191, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64)* @PyStructSequence_GetItem, variables: !393)
!393 = !{!394, !395}
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !392, file: !377, line: 56, type: !44)
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !392, file: !377, line: 56, type: !21)
!396 = !DISubprogram(name: "PyStructSequence_InitType2", scope: !377, file: !377, line: 324, type: !397, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._typeobject*, %struct.PyStructSequence_Desc*)* @PyStructSequence_InitType2, variables: !412)
!397 = !DISubroutineType(types: !398)
!398 = !{!50, !364, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !6, line: 20, baseType: !401)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !6, line: 15, size: 256, align: 64, elements: !402)
!402 = !{!403, !404, !405, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !6, line: 16, baseType: !58, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !401, file: !6, line: 17, baseType: !58, size: 64, align: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !401, file: !6, line: 18, baseType: !406, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !6, line: 10, size: 128, align: 64, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !6, line: 11, baseType: !58, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !407, file: !6, line: 12, baseType: !58, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !401, file: !6, line: 19, baseType: !50, size: 32, align: 32, offset: 192)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !427, !429, !434, !436, !441}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !396, file: !377, line: 324, type: !364)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 2, scope: !396, file: !377, line: 324, type: !399)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !396, file: !377, line: 326, type: !44)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "members", scope: !396, file: !377, line: 327, type: !362)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_members", scope: !396, file: !377, line: 328, type: !50)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_members", scope: !396, file: !377, line: 328, type: !50)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !396, file: !377, line: 328, type: !50)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !396, file: !377, line: 328, type: !50)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !396, file: !377, line: 329, type: !44)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !423, file: !377, line: 388, type: !44)
!423 = distinct !DILexicalBlock(scope: !424, file: !377, line: 388, column: 155)
!424 = distinct !DILexicalBlock(scope: !425, file: !377, line: 388, column: 150)
!425 = distinct !DILexicalBlock(scope: !426, file: !377, line: 388, column: 95)
!426 = distinct !DILexicalBlock(scope: !396, file: !377, line: 388, column: 8)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !377, line: 388, type: !44)
!428 = distinct !DILexicalBlock(scope: !426, file: !377, line: 388, column: 368)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !430, file: !377, line: 389, type: !44)
!430 = distinct !DILexicalBlock(scope: !431, file: !377, line: 389, column: 142)
!431 = distinct !DILexicalBlock(scope: !432, file: !377, line: 389, column: 137)
!432 = distinct !DILexicalBlock(scope: !433, file: !377, line: 389, column: 85)
!433 = distinct !DILexicalBlock(scope: !396, file: !377, line: 389, column: 8)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !435, file: !377, line: 389, type: !44)
!435 = distinct !DILexicalBlock(scope: !433, file: !377, line: 389, column: 355)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !437, file: !377, line: 390, type: !44)
!437 = distinct !DILexicalBlock(scope: !438, file: !377, line: 390, column: 153)
!438 = distinct !DILexicalBlock(scope: !439, file: !377, line: 390, column: 148)
!439 = distinct !DILexicalBlock(scope: !440, file: !377, line: 390, column: 93)
!440 = distinct !DILexicalBlock(scope: !396, file: !377, line: 390, column: 8)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !377, line: 390, type: !44)
!442 = distinct !DILexicalBlock(scope: !440, file: !377, line: 390, column: 366)
!443 = !DISubprogram(name: "PyStructSequence_InitType", scope: !377, file: !377, line: 396, type: !444, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._typeobject*, %struct.PyStructSequence_Desc*)* @PyStructSequence_InitType, variables: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !364, !399}
!446 = !{!447, !448}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !443, file: !377, line: 396, type: !364)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 2, scope: !443, file: !377, line: 396, type: !399)
!449 = !DISubprogram(name: "PyStructSequence_NewType", scope: !377, file: !377, line: 402, type: !450, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, function: %struct._typeobject* (%struct.PyStructSequence_Desc*)* @PyStructSequence_NewType, variables: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!364, !399}
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 1, scope: !449, file: !377, line: 402, type: !399)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !449, file: !377, line: 404, type: !364)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !456, file: !377, line: 410, type: !44)
!456 = distinct !DILexicalBlock(scope: !457, file: !377, line: 410, column: 12)
!457 = distinct !DILexicalBlock(scope: !458, file: !377, line: 409, column: 55)
!458 = distinct !DILexicalBlock(scope: !449, file: !377, line: 409, column: 9)
!459 = !DISubprogram(name: "_PyStructSequence_Init", scope: !377, file: !377, line: 416, type: !460, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyStructSequence_Init, variables: !2)
!460 = !DISubroutineType(types: !461)
!461 = !{!50}
!462 = !DISubprogram(name: "structseq_dealloc", scope: !377, file: !377, line: 62, type: !463, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyTupleObject*)* @structseq_dealloc, variables: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !4}
!465 = !{!466, !467, !468, !469, !474}
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !462, file: !377, line: 62, type: !4)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !462, file: !377, line: 64, type: !21)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !462, file: !377, line: 64, type: !21)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !470, file: !377, line: 68, type: !44)
!470 = distinct !DILexicalBlock(scope: !471, file: !377, line: 68, column: 12)
!471 = distinct !DILexicalBlock(scope: !472, file: !377, line: 67, column: 32)
!472 = distinct !DILexicalBlock(scope: !473, file: !377, line: 67, column: 5)
!473 = distinct !DILexicalBlock(scope: !462, file: !377, line: 67, column: 5)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !377, line: 68, type: !44)
!475 = distinct !DILexicalBlock(scope: !476, file: !377, line: 68, column: 111)
!476 = distinct !DILexicalBlock(scope: !470, file: !377, line: 68, column: 77)
!477 = !DISubprogram(name: "structseq_repr", scope: !377, file: !377, line: 160, type: !478, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @structseq_repr, variables: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!44, !4}
!480 = !{!481, !482, !483, !484, !485, !486, !490, !491, !492, !496, !497, !498, !499, !503, !507}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !477, file: !377, line: 160, type: !4)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !477, file: !377, line: 166, type: !364)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !477, file: !377, line: 167, type: !50)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "removelast", scope: !477, file: !377, line: 167, type: !50)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !477, file: !377, line: 168, type: !21)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !477, file: !377, line: 169, type: !487)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4096, align: 8, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 512)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endofbuf", scope: !477, file: !377, line: 170, type: !58)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !477, file: !377, line: 170, type: !58)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !493, file: !377, line: 183, type: !44)
!493 = distinct !DILexicalBlock(scope: !494, file: !377, line: 182, column: 58)
!494 = distinct !DILexicalBlock(scope: !495, file: !377, line: 182, column: 5)
!495 = distinct !DILexicalBlock(scope: !477, file: !377, line: 182, column: 5)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !493, file: !377, line: 183, type: !44)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cname", scope: !493, file: !377, line: 184, type: !58)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crepr", scope: !493, file: !377, line: 184, type: !58)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !377, line: 198, type: !44)
!500 = distinct !DILexicalBlock(scope: !501, file: !377, line: 198, column: 16)
!501 = distinct !DILexicalBlock(scope: !502, file: !377, line: 197, column: 34)
!502 = distinct !DILexicalBlock(scope: !493, file: !377, line: 197, column: 13)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !377, line: 213, type: !44)
!504 = distinct !DILexicalBlock(scope: !505, file: !377, line: 213, column: 16)
!505 = distinct !DILexicalBlock(scope: !506, file: !377, line: 204, column: 37)
!506 = distinct !DILexicalBlock(scope: !493, file: !377, line: 204, column: 13)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !377, line: 219, type: !44)
!508 = distinct !DILexicalBlock(scope: !509, file: !377, line: 219, column: 16)
!509 = distinct !DILexicalBlock(scope: !506, file: !377, line: 215, column: 14)
!510 = !DISubprogram(name: "structseq_reduce", scope: !377, file: !377, line: 234, type: !478, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @structseq_reduce, variables: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !524, !526, !528, !530, !533, !535}
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !510, file: !377, line: 234, type: !4)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !510, file: !377, line: 236, type: !44)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !510, file: !377, line: 237, type: !44)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !510, file: !377, line: 238, type: !44)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_fields", scope: !510, file: !377, line: 239, type: !21)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_visible_fields", scope: !510, file: !377, line: 239, type: !21)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_fields", scope: !510, file: !377, line: 239, type: !21)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !510, file: !377, line: 240, type: !50)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !521, file: !377, line: 259, type: !58)
!521 = distinct !DILexicalBlock(scope: !522, file: !377, line: 258, column: 31)
!522 = distinct !DILexicalBlock(scope: !523, file: !377, line: 258, column: 5)
!523 = distinct !DILexicalBlock(scope: !510, file: !377, line: 258, column: 5)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !377, line: 266, type: !44)
!525 = distinct !DILexicalBlock(scope: !510, file: !377, line: 266, column: 8)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !377, line: 267, type: !44)
!527 = distinct !DILexicalBlock(scope: !510, file: !377, line: 267, column: 8)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !529, file: !377, line: 272, type: !44)
!529 = distinct !DILexicalBlock(scope: !510, file: !377, line: 272, column: 8)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !531, file: !377, line: 272, type: !44)
!531 = distinct !DILexicalBlock(scope: !532, file: !377, line: 272, column: 95)
!532 = distinct !DILexicalBlock(scope: !529, file: !377, line: 272, column: 61)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !534, file: !377, line: 273, type: !44)
!534 = distinct !DILexicalBlock(scope: !510, file: !377, line: 273, column: 8)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !377, line: 273, type: !44)
!536 = distinct !DILexicalBlock(scope: !537, file: !377, line: 273, column: 96)
!537 = distinct !DILexicalBlock(scope: !534, file: !377, line: 273, column: 62)
!538 = !DISubprogram(name: "structseq_new", scope: !377, file: !377, line: 74, type: !539, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @structseq_new, variables: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!44, !364, !44, !44}
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !558, !564, !568, !573, !577, !581}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !538, file: !377, line: 74, type: !364)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !538, file: !377, line: 74, type: !44)
!544 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !538, file: !377, line: 74, type: !44)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !538, file: !377, line: 76, type: !44)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !538, file: !377, line: 77, type: !44)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !538, file: !377, line: 78, type: !44)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !538, file: !377, line: 79, type: !4)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !538, file: !377, line: 80, type: !21)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_len", scope: !538, file: !377, line: 80, type: !21)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_len", scope: !538, file: !377, line: 80, type: !21)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !538, file: !377, line: 80, type: !21)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_fields", scope: !538, file: !377, line: 80, type: !21)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !555, file: !377, line: 97, type: !44)
!555 = distinct !DILexicalBlock(scope: !556, file: !377, line: 97, column: 12)
!556 = distinct !DILexicalBlock(scope: !557, file: !377, line: 93, column: 87)
!557 = distinct !DILexicalBlock(scope: !538, file: !377, line: 93, column: 9)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !559, file: !377, line: 111, type: !44)
!559 = distinct !DILexicalBlock(scope: !560, file: !377, line: 111, column: 16)
!560 = distinct !DILexicalBlock(scope: !561, file: !377, line: 107, column: 28)
!561 = distinct !DILexicalBlock(scope: !562, file: !377, line: 107, column: 13)
!562 = distinct !DILexicalBlock(scope: !563, file: !377, line: 106, column: 29)
!563 = distinct !DILexicalBlock(scope: !538, file: !377, line: 106, column: 9)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !565, file: !377, line: 119, type: !44)
!565 = distinct !DILexicalBlock(scope: !566, file: !377, line: 119, column: 16)
!566 = distinct !DILexicalBlock(scope: !567, file: !377, line: 115, column: 28)
!567 = distinct !DILexicalBlock(scope: !562, file: !377, line: 115, column: 13)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !569, file: !377, line: 128, type: !44)
!569 = distinct !DILexicalBlock(scope: !570, file: !377, line: 128, column: 16)
!570 = distinct !DILexicalBlock(scope: !571, file: !377, line: 124, column: 29)
!571 = distinct !DILexicalBlock(scope: !572, file: !377, line: 124, column: 13)
!572 = distinct !DILexicalBlock(scope: !563, file: !377, line: 123, column: 10)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !574, file: !377, line: 135, type: !44)
!574 = distinct !DILexicalBlock(scope: !575, file: !377, line: 135, column: 12)
!575 = distinct !DILexicalBlock(scope: !576, file: !377, line: 134, column: 28)
!576 = distinct !DILexicalBlock(scope: !538, file: !377, line: 134, column: 9)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !578, file: !377, line: 139, type: !44)
!578 = distinct !DILexicalBlock(scope: !579, file: !377, line: 138, column: 31)
!579 = distinct !DILexicalBlock(scope: !580, file: !377, line: 138, column: 5)
!580 = distinct !DILexicalBlock(scope: !538, file: !377, line: 138, column: 5)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !377, line: 154, type: !44)
!582 = distinct !DILexicalBlock(scope: !538, file: !377, line: 154, column: 8)
!583 = !{!584, !585, !593, !594, !595, !600, !604, !608, !612, !616}
!584 = !DIGlobalVariable(name: "PyStructSequence_UnnamedField", scope: !0, file: !377, line: 13, type: !58, isLocal: false, isDefinition: true, variable: i8** @PyStructSequence_UnnamedField)
!585 = !DIGlobalVariable(name: "PyId_n_fields", scope: !0, file: !377, line: 15, type: !586, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_fields)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !13, line: 144, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !13, line: 140, size: 192, align: 64, elements: !588)
!588 = !{!589, !591, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !13, line: 141, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !587, file: !13, line: 142, baseType: !34, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !587, file: !13, line: 143, baseType: !44, size: 64, align: 64, offset: 128)
!593 = !DIGlobalVariable(name: "PyId_n_sequence_fields", scope: !0, file: !377, line: 14, type: !586, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_sequence_fields)
!594 = !DIGlobalVariable(name: "_struct_sequence_template", scope: !0, file: !377, line: 282, type: !365, isLocal: true, isDefinition: true, variable: %struct._typeobject* @_struct_sequence_template)
!595 = !DIGlobalVariable(name: "structseq_methods", scope: !0, file: !377, line: 277, type: !596, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @structseq_methods)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 512, align: 64, elements: !598)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!598 = !{!599}
!599 = !DISubrange(count: 2)
!600 = !DIGlobalVariable(name: "kwlist", scope: !538, file: !377, line: 81, type: !601, isLocal: true, isDefinition: true, variable: [3 x i8*]* @structseq_new.kwlist)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, align: 64, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 3)
!604 = !DIGlobalVariable(name: "visible_length_key", scope: !0, file: !377, line: 7, type: !605, isLocal: true, isDefinition: true, variable: [18 x i8]* @visible_length_key)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 144, align: 8, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 18)
!608 = !DIGlobalVariable(name: "real_length_key", scope: !0, file: !377, line: 8, type: !609, isLocal: true, isDefinition: true, variable: [9 x i8]* @real_length_key)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 72, align: 8, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 9)
!612 = !DIGlobalVariable(name: "unnamed_fields_key", scope: !0, file: !377, line: 9, type: !613, isLocal: true, isDefinition: true, variable: [17 x i8]* @unnamed_fields_key)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, align: 8, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 17)
!616 = !DIGlobalVariable(name: "PyId_n_unnamed_fields", scope: !0, file: !377, line: 16, type: !586, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_unnamed_fields)
!617 = !{i32 2, !"Dwarf Version", i32 4}
!618 = !{i32 2, !"Debug Info Version", i32 3}
!619 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!620 = !{!621, !621, i64 0}
!621 = !{!"any pointer", !622, i64 0}
!622 = !{!"omnipotent char", !623, i64 0}
!623 = !{!"Simple C/C++ TBAA"}
!624 = !DIExpression()
!625 = !DILocation(line: 32, column: 36, scope: !376)
!626 = !DILocation(line: 34, column: 5, scope: !376)
!627 = !DILocation(line: 34, column: 23, scope: !376)
!628 = !DILocation(line: 35, column: 5, scope: !376)
!629 = !DILocation(line: 35, column: 16, scope: !376)
!630 = !DILocation(line: 35, column: 57, scope: !376)
!631 = !DILocation(line: 35, column: 64, scope: !376)
!632 = !{!633, !621, i64 264}
!633 = !{!"_typeobject", !634, i64 0, !621, i64 24, !636, i64 32, !636, i64 40, !621, i64 48, !621, i64 56, !621, i64 64, !621, i64 72, !621, i64 80, !621, i64 88, !621, i64 96, !621, i64 104, !621, i64 112, !621, i64 120, !621, i64 128, !621, i64 136, !621, i64 144, !621, i64 152, !621, i64 160, !636, i64 168, !621, i64 176, !621, i64 184, !621, i64 192, !621, i64 200, !636, i64 208, !621, i64 216, !621, i64 224, !621, i64 232, !621, i64 240, !621, i64 248, !621, i64 256, !621, i64 264, !621, i64 272, !621, i64 280, !636, i64 288, !621, i64 296, !621, i64 304, !621, i64 312, !621, i64 320, !621, i64 328, !621, i64 336, !621, i64 344, !621, i64 352, !621, i64 360, !621, i64 368, !621, i64 376, !637, i64 384, !621, i64 392}
!634 = !{!"", !635, i64 0, !636, i64 16}
!635 = !{!"_object", !636, i64 0, !621, i64 8}
!636 = !{!"long", !622, i64 0}
!637 = !{!"int", !622, i64 0}
!638 = !DILocation(line: 35, column: 38, scope: !376)
!639 = !DILocation(line: 35, column: 23, scope: !376)
!640 = !{!636, !636, i64 0}
!641 = !DILocation(line: 35, column: 91, scope: !376)
!642 = !DILocation(line: 37, column: 55, scope: !376)
!643 = !DILocation(line: 37, column: 63, scope: !376)
!644 = !DILocation(line: 37, column: 34, scope: !376)
!645 = !DILocation(line: 37, column: 13, scope: !376)
!646 = !DILocation(line: 37, column: 9, scope: !376)
!647 = !DILocation(line: 38, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !376, file: !377, line: 38, column: 9)
!649 = !DILocation(line: 38, column: 13, scope: !648)
!650 = !DILocation(line: 38, column: 9, scope: !376)
!651 = !DILocation(line: 39, column: 9, scope: !648)
!652 = !DILocation(line: 42, column: 74, scope: !376)
!653 = !DILocation(line: 42, column: 81, scope: !376)
!654 = !DILocation(line: 42, column: 55, scope: !376)
!655 = !DILocation(line: 42, column: 40, scope: !376)
!656 = !DILocation(line: 42, column: 22, scope: !376)
!657 = !DILocation(line: 42, column: 7, scope: !376)
!658 = !DILocation(line: 42, column: 29, scope: !376)
!659 = !DILocation(line: 42, column: 38, scope: !376)
!660 = !{!634, !636, i64 16}
!661 = !DILocation(line: 43, column: 12, scope: !662)
!662 = distinct !DILexicalBlock(scope: !376, file: !377, line: 43, column: 5)
!663 = !DILocation(line: 43, column: 10, scope: !662)
!664 = !DILocation(line: 43, column: 17, scope: !665)
!665 = !DILexicalBlockFile(scope: !666, file: !377, discriminator: 2)
!666 = !DILexicalBlockFile(scope: !667, file: !377, discriminator: 1)
!667 = distinct !DILexicalBlock(scope: !662, file: !377, line: 43, column: 5)
!668 = !DILocation(line: 43, column: 21, scope: !667)
!669 = !DILocation(line: 43, column: 19, scope: !667)
!670 = !DILocation(line: 43, column: 5, scope: !662)
!671 = !DILocation(line: 44, column: 22, scope: !667)
!672 = !DILocation(line: 44, column: 9, scope: !667)
!673 = !DILocation(line: 44, column: 14, scope: !667)
!674 = !DILocation(line: 44, column: 25, scope: !667)
!675 = !DILocation(line: 43, column: 28, scope: !667)
!676 = !DILocation(line: 43, column: 5, scope: !667)
!677 = !DILocation(line: 46, column: 23, scope: !376)
!678 = !DILocation(line: 46, column: 12, scope: !376)
!679 = !DILocation(line: 46, column: 5, scope: !376)
!680 = !DILocation(line: 47, column: 1, scope: !376)
!681 = !DILocation(line: 50, column: 36, scope: !385)
!682 = !DILocation(line: 50, column: 51, scope: !385)
!683 = !DILocation(line: 50, column: 64, scope: !385)
!684 = !DILocation(line: 52, column: 44, scope: !385)
!685 = !DILocation(line: 52, column: 39, scope: !385)
!686 = !DILocation(line: 52, column: 25, scope: !385)
!687 = !DILocation(line: 52, column: 7, scope: !385)
!688 = !DILocation(line: 52, column: 31, scope: !385)
!689 = !DILocation(line: 52, column: 6, scope: !385)
!690 = !DILocation(line: 52, column: 42, scope: !385)
!691 = !DILocation(line: 53, column: 1, scope: !385)
!692 = !DILocation(line: 56, column: 36, scope: !392)
!693 = !DILocation(line: 56, column: 51, scope: !392)
!694 = !DILocation(line: 58, column: 46, scope: !392)
!695 = !DILocation(line: 58, column: 32, scope: !392)
!696 = !DILocation(line: 58, column: 14, scope: !392)
!697 = !DILocation(line: 58, column: 38, scope: !392)
!698 = !DILocation(line: 58, column: 13, scope: !392)
!699 = !DILocation(line: 58, column: 5, scope: !392)
!700 = !DILocation(line: 324, column: 42, scope: !396)
!701 = !DILocation(line: 324, column: 71, scope: !396)
!702 = !DILocation(line: 326, column: 5, scope: !396)
!703 = !DILocation(line: 326, column: 15, scope: !396)
!704 = !DILocation(line: 327, column: 5, scope: !396)
!705 = !DILocation(line: 327, column: 18, scope: !396)
!706 = !DILocation(line: 328, column: 5, scope: !396)
!707 = !DILocation(line: 328, column: 9, scope: !396)
!708 = !DILocation(line: 328, column: 20, scope: !396)
!709 = !DILocation(line: 328, column: 39, scope: !396)
!710 = !DILocation(line: 328, column: 42, scope: !396)
!711 = !DILocation(line: 329, column: 5, scope: !396)
!712 = !DILocation(line: 329, column: 15, scope: !396)
!713 = !DILocation(line: 339, column: 23, scope: !396)
!714 = !{!637, !637, i64 0}
!715 = !DILocation(line: 340, column: 12, scope: !716)
!716 = distinct !DILexicalBlock(scope: !396, file: !377, line: 340, column: 5)
!717 = !DILocation(line: 340, column: 10, scope: !716)
!718 = !DILocation(line: 340, column: 30, scope: !719)
!719 = !DILexicalBlockFile(scope: !720, file: !377, discriminator: 2)
!720 = !DILexicalBlockFile(scope: !721, file: !377, discriminator: 1)
!721 = distinct !DILexicalBlock(scope: !716, file: !377, line: 340, column: 5)
!722 = !DILocation(line: 340, column: 17, scope: !721)
!723 = !DILocation(line: 340, column: 23, scope: !721)
!724 = !{!725, !621, i64 16}
!725 = !{!"PyStructSequence_Desc", !621, i64 0, !621, i64 8, !621, i64 16, !637, i64 24}
!726 = !DILocation(line: 340, column: 33, scope: !721)
!727 = !{!728, !621, i64 0}
!728 = !{!"PyStructSequence_Field", !621, i64 0, !621, i64 8}
!729 = !DILocation(line: 340, column: 38, scope: !721)
!730 = !DILocation(line: 340, column: 5, scope: !716)
!731 = !DILocation(line: 341, column: 26, scope: !732)
!732 = distinct !DILexicalBlock(scope: !721, file: !377, line: 341, column: 13)
!733 = !DILocation(line: 341, column: 13, scope: !732)
!734 = !DILocation(line: 341, column: 19, scope: !732)
!735 = !DILocation(line: 341, column: 29, scope: !732)
!736 = !DILocation(line: 341, column: 37, scope: !732)
!737 = !DILocation(line: 341, column: 34, scope: !732)
!738 = !DILocation(line: 341, column: 13, scope: !721)
!739 = !DILocation(line: 342, column: 30, scope: !732)
!740 = !DILocation(line: 342, column: 13, scope: !732)
!741 = !DILocation(line: 341, column: 37, scope: !742)
!742 = !DILexicalBlockFile(scope: !732, file: !377, discriminator: 1)
!743 = !DILocation(line: 340, column: 53, scope: !721)
!744 = !DILocation(line: 340, column: 5, scope: !721)
!745 = !DILocation(line: 343, column: 17, scope: !396)
!746 = !DILocation(line: 343, column: 15, scope: !396)
!747 = !DILocation(line: 345, column: 12, scope: !396)
!748 = !DILocation(line: 345, column: 5, scope: !396)
!749 = !DILocation(line: 346, column: 5, scope: !396)
!750 = !DILocation(line: 346, column: 11, scope: !396)
!751 = !DILocation(line: 346, column: 19, scope: !396)
!752 = !{!633, !621, i64 256}
!753 = !DILocation(line: 347, column: 21, scope: !396)
!754 = !DILocation(line: 347, column: 27, scope: !396)
!755 = !{!725, !621, i64 0}
!756 = !DILocation(line: 347, column: 5, scope: !396)
!757 = !DILocation(line: 347, column: 11, scope: !396)
!758 = !DILocation(line: 347, column: 19, scope: !396)
!759 = !{!633, !621, i64 24}
!760 = !DILocation(line: 348, column: 20, scope: !396)
!761 = !DILocation(line: 348, column: 26, scope: !396)
!762 = !{!725, !621, i64 8}
!763 = !DILocation(line: 348, column: 5, scope: !396)
!764 = !DILocation(line: 348, column: 11, scope: !396)
!765 = !DILocation(line: 348, column: 18, scope: !396)
!766 = !{!633, !621, i64 176}
!767 = !DILocation(line: 350, column: 27, scope: !396)
!768 = !DILocation(line: 350, column: 37, scope: !396)
!769 = !DILocation(line: 350, column: 36, scope: !396)
!770 = !DILocation(line: 350, column: 54, scope: !396)
!771 = !DILocation(line: 350, column: 18, scope: !396)
!772 = !DILocation(line: 350, column: 58, scope: !396)
!773 = !DILocation(line: 350, column: 17, scope: !396)
!774 = !DILocation(line: 350, column: 17, scope: !775)
!775 = !DILexicalBlockFile(scope: !396, file: !377, discriminator: 1)
!776 = !DILocation(line: 350, column: 162, scope: !777)
!777 = !DILexicalBlockFile(scope: !396, file: !377, discriminator: 2)
!778 = !DILocation(line: 350, column: 172, scope: !396)
!779 = !DILocation(line: 350, column: 171, scope: !396)
!780 = !DILocation(line: 350, column: 189, scope: !396)
!781 = !DILocation(line: 350, column: 161, scope: !396)
!782 = !DILocation(line: 350, column: 193, scope: !396)
!783 = !DILocation(line: 350, column: 148, scope: !396)
!784 = !DILocation(line: 350, column: 132, scope: !396)
!785 = !DILocation(line: 350, column: 13, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !377, discriminator: 4)
!787 = !DILexicalBlockFile(scope: !396, file: !377, discriminator: 3)
!788 = !DILocation(line: 351, column: 9, scope: !789)
!789 = distinct !DILexicalBlock(scope: !396, file: !377, line: 351, column: 9)
!790 = !DILocation(line: 351, column: 17, scope: !789)
!791 = !DILocation(line: 351, column: 9, scope: !396)
!792 = !DILocation(line: 352, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !377, line: 351, column: 32)
!794 = !DILocation(line: 353, column: 9, scope: !793)
!795 = !DILocation(line: 356, column: 16, scope: !796)
!796 = distinct !DILexicalBlock(scope: !396, file: !377, line: 356, column: 5)
!797 = !DILocation(line: 356, column: 12, scope: !796)
!798 = !DILocation(line: 356, column: 10, scope: !796)
!799 = !DILocation(line: 356, column: 21, scope: !800)
!800 = !DILexicalBlockFile(scope: !801, file: !377, discriminator: 2)
!801 = !DILexicalBlockFile(scope: !802, file: !377, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !796, file: !377, line: 356, column: 5)
!803 = !DILocation(line: 356, column: 25, scope: !802)
!804 = !DILocation(line: 356, column: 23, scope: !802)
!805 = !DILocation(line: 356, column: 5, scope: !796)
!806 = !DILocation(line: 357, column: 26, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !377, line: 357, column: 13)
!808 = distinct !DILexicalBlock(scope: !802, file: !377, line: 356, column: 41)
!809 = !DILocation(line: 357, column: 13, scope: !807)
!810 = !DILocation(line: 357, column: 19, scope: !807)
!811 = !DILocation(line: 357, column: 29, scope: !807)
!812 = !DILocation(line: 357, column: 37, scope: !807)
!813 = !DILocation(line: 357, column: 34, scope: !807)
!814 = !DILocation(line: 357, column: 13, scope: !808)
!815 = !DILocation(line: 358, column: 13, scope: !807)
!816 = !DILocation(line: 359, column: 40, scope: !808)
!817 = !DILocation(line: 359, column: 27, scope: !808)
!818 = !DILocation(line: 359, column: 33, scope: !808)
!819 = !DILocation(line: 359, column: 43, scope: !808)
!820 = !DILocation(line: 359, column: 17, scope: !808)
!821 = !DILocation(line: 359, column: 9, scope: !808)
!822 = !DILocation(line: 359, column: 20, scope: !808)
!823 = !DILocation(line: 359, column: 25, scope: !808)
!824 = !{!825, !621, i64 0}
!825 = !{!"PyMemberDef", !621, i64 0, !637, i64 8, !636, i64 16, !637, i64 24, !621, i64 32}
!826 = !DILocation(line: 360, column: 17, scope: !808)
!827 = !DILocation(line: 360, column: 9, scope: !808)
!828 = !DILocation(line: 360, column: 20, scope: !808)
!829 = !DILocation(line: 360, column: 25, scope: !808)
!830 = !{!825, !637, i64 8}
!831 = !DILocation(line: 362, column: 13, scope: !808)
!832 = !DILocation(line: 362, column: 15, scope: !808)
!833 = !DILocation(line: 362, column: 11, scope: !808)
!834 = !DILocation(line: 361, column: 17, scope: !808)
!835 = !DILocation(line: 361, column: 9, scope: !808)
!836 = !DILocation(line: 361, column: 20, scope: !808)
!837 = !DILocation(line: 361, column: 27, scope: !808)
!838 = !{!825, !636, i64 16}
!839 = !DILocation(line: 363, column: 17, scope: !808)
!840 = !DILocation(line: 363, column: 9, scope: !808)
!841 = !DILocation(line: 363, column: 20, scope: !808)
!842 = !DILocation(line: 363, column: 26, scope: !808)
!843 = !{!825, !637, i64 24}
!844 = !DILocation(line: 364, column: 39, scope: !808)
!845 = !DILocation(line: 364, column: 26, scope: !808)
!846 = !DILocation(line: 364, column: 32, scope: !808)
!847 = !DILocation(line: 364, column: 42, scope: !808)
!848 = !{!728, !621, i64 8}
!849 = !DILocation(line: 364, column: 17, scope: !808)
!850 = !DILocation(line: 364, column: 9, scope: !808)
!851 = !DILocation(line: 364, column: 20, scope: !808)
!852 = !DILocation(line: 364, column: 24, scope: !808)
!853 = !{!825, !621, i64 32}
!854 = !DILocation(line: 365, column: 10, scope: !808)
!855 = !DILocation(line: 366, column: 5, scope: !808)
!856 = !DILocation(line: 356, column: 36, scope: !802)
!857 = !DILocation(line: 356, column: 5, scope: !802)
!858 = !DILocation(line: 367, column: 13, scope: !396)
!859 = !DILocation(line: 367, column: 5, scope: !396)
!860 = !DILocation(line: 367, column: 16, scope: !396)
!861 = !DILocation(line: 367, column: 21, scope: !396)
!862 = !DILocation(line: 369, column: 24, scope: !396)
!863 = !DILocation(line: 369, column: 5, scope: !396)
!864 = !DILocation(line: 369, column: 11, scope: !396)
!865 = !DILocation(line: 369, column: 22, scope: !396)
!866 = !{!633, !621, i64 240}
!867 = !DILocation(line: 371, column: 22, scope: !868)
!868 = distinct !DILexicalBlock(scope: !396, file: !377, line: 371, column: 9)
!869 = !DILocation(line: 371, column: 9, scope: !868)
!870 = !DILocation(line: 371, column: 28, scope: !868)
!871 = !DILocation(line: 371, column: 9, scope: !396)
!872 = !DILocation(line: 372, column: 9, scope: !868)
!873 = !DILocation(line: 373, column: 21, scope: !396)
!874 = !DILocation(line: 373, column: 8, scope: !396)
!875 = !DILocation(line: 373, column: 29, scope: !396)
!876 = !DILocation(line: 373, column: 38, scope: !396)
!877 = !{!635, !636, i64 0}
!878 = !DILocation(line: 375, column: 12, scope: !396)
!879 = !DILocation(line: 375, column: 18, scope: !396)
!880 = !DILocation(line: 375, column: 10, scope: !396)
!881 = !DILocation(line: 388, column: 5, scope: !396)
!882 = !DILocation(line: 388, column: 37, scope: !883)
!883 = !DILexicalBlockFile(scope: !426, file: !377, discriminator: 1)
!884 = !DILocation(line: 388, column: 43, scope: !426)
!885 = !{!725, !637, i64 24}
!886 = !DILocation(line: 388, column: 30, scope: !426)
!887 = !DILocation(line: 388, column: 14, scope: !426)
!888 = !DILocation(line: 388, column: 12, scope: !426)
!889 = !DILocation(line: 388, column: 63, scope: !890)
!890 = distinct !DILexicalBlock(scope: !426, file: !377, line: 388, column: 63)
!891 = !DILocation(line: 388, column: 65, scope: !890)
!892 = !DILocation(line: 388, column: 63, scope: !426)
!893 = !DILocation(line: 388, column: 80, scope: !894)
!894 = !DILexicalBlockFile(scope: !890, file: !377, discriminator: 2)
!895 = !DILocation(line: 388, column: 80, scope: !890)
!896 = !DILocation(line: 388, column: 116, scope: !897)
!897 = !DILexicalBlockFile(scope: !425, file: !377, discriminator: 3)
!898 = !DILocation(line: 388, column: 142, scope: !425)
!899 = !DILocation(line: 388, column: 95, scope: !425)
!900 = !DILocation(line: 388, column: 145, scope: !425)
!901 = !DILocation(line: 388, column: 95, scope: !426)
!902 = !DILocation(line: 388, column: 152, scope: !903)
!903 = !DILexicalBlockFile(scope: !424, file: !377, discriminator: 4)
!904 = !DILocation(line: 388, column: 157, scope: !905)
!905 = !DILexicalBlockFile(scope: !423, file: !377, discriminator: 6)
!906 = !DILocation(line: 388, column: 167, scope: !423)
!907 = !DILocation(line: 388, column: 197, scope: !423)
!908 = !DILocation(line: 388, column: 209, scope: !909)
!909 = distinct !DILexicalBlock(scope: !423, file: !377, line: 388, column: 206)
!910 = !DILocation(line: 388, column: 226, scope: !909)
!911 = !DILocation(line: 388, column: 206, scope: !909)
!912 = !DILocation(line: 388, column: 236, scope: !909)
!913 = !DILocation(line: 388, column: 206, scope: !423)
!914 = !DILocation(line: 388, column: 206, scope: !915)
!915 = !DILexicalBlockFile(scope: !423, file: !377, discriminator: 7)
!916 = !DILocation(line: 388, column: 267, scope: !917)
!917 = !DILexicalBlockFile(scope: !909, file: !377, discriminator: 8)
!918 = !DILocation(line: 388, column: 285, scope: !909)
!919 = !{!635, !621, i64 8}
!920 = !DILocation(line: 388, column: 295, scope: !909)
!921 = !{!633, !621, i64 48}
!922 = !DILocation(line: 388, column: 320, scope: !909)
!923 = !DILocation(line: 388, column: 251, scope: !909)
!924 = !DILocation(line: 388, column: 339, scope: !925)
!925 = !DILexicalBlockFile(scope: !424, file: !377, discriminator: 9)
!926 = !DILocation(line: 388, column: 339, scope: !423)
!927 = !DILocation(line: 388, column: 339, scope: !928)
!928 = !DILexicalBlockFile(scope: !423, file: !377, discriminator: 10)
!929 = !DILocation(line: 388, column: 352, scope: !930)
!930 = !DILexicalBlockFile(scope: !424, file: !377, discriminator: 11)
!931 = !DILocation(line: 388, column: 352, scope: !424)
!932 = !DILocation(line: 388, column: 365, scope: !933)
!933 = !DILexicalBlockFile(scope: !426, file: !377, discriminator: 5)
!934 = !DILocation(line: 388, column: 370, scope: !935)
!935 = !DILexicalBlockFile(scope: !428, file: !377, discriminator: 12)
!936 = !DILocation(line: 388, column: 380, scope: !428)
!937 = !DILocation(line: 388, column: 410, scope: !428)
!938 = !DILocation(line: 388, column: 422, scope: !939)
!939 = distinct !DILexicalBlock(scope: !428, file: !377, line: 388, column: 419)
!940 = !DILocation(line: 388, column: 439, scope: !939)
!941 = !DILocation(line: 388, column: 419, scope: !939)
!942 = !DILocation(line: 388, column: 449, scope: !939)
!943 = !DILocation(line: 388, column: 419, scope: !428)
!944 = !DILocation(line: 388, column: 419, scope: !945)
!945 = !DILexicalBlockFile(scope: !428, file: !377, discriminator: 13)
!946 = !DILocation(line: 388, column: 480, scope: !947)
!947 = !DILexicalBlockFile(scope: !939, file: !377, discriminator: 14)
!948 = !DILocation(line: 388, column: 498, scope: !939)
!949 = !DILocation(line: 388, column: 508, scope: !939)
!950 = !DILocation(line: 388, column: 533, scope: !939)
!951 = !DILocation(line: 388, column: 464, scope: !939)
!952 = !DILocation(line: 388, column: 552, scope: !953)
!953 = !DILexicalBlockFile(scope: !426, file: !377, discriminator: 15)
!954 = !DILocation(line: 388, column: 552, scope: !428)
!955 = !DILocation(line: 388, column: 552, scope: !956)
!956 = !DILexicalBlockFile(scope: !428, file: !377, discriminator: 16)
!957 = !DILocation(line: 388, column: 565, scope: !958)
!958 = !DILexicalBlockFile(scope: !426, file: !377, discriminator: 17)
!959 = !DILocation(line: 388, column: 565, scope: !960)
!960 = !DILexicalBlockFile(scope: !426, file: !377, discriminator: 18)
!961 = !DILocation(line: 389, column: 5, scope: !396)
!962 = !DILocation(line: 389, column: 37, scope: !963)
!963 = !DILexicalBlockFile(scope: !433, file: !377, discriminator: 1)
!964 = !DILocation(line: 389, column: 30, scope: !433)
!965 = !DILocation(line: 389, column: 14, scope: !433)
!966 = !DILocation(line: 389, column: 12, scope: !433)
!967 = !DILocation(line: 389, column: 53, scope: !968)
!968 = distinct !DILexicalBlock(scope: !433, file: !377, line: 389, column: 53)
!969 = !DILocation(line: 389, column: 55, scope: !968)
!970 = !DILocation(line: 389, column: 53, scope: !433)
!971 = !DILocation(line: 389, column: 70, scope: !972)
!972 = !DILexicalBlockFile(scope: !968, file: !377, discriminator: 2)
!973 = !DILocation(line: 389, column: 70, scope: !968)
!974 = !DILocation(line: 389, column: 106, scope: !975)
!975 = !DILexicalBlockFile(scope: !432, file: !377, discriminator: 3)
!976 = !DILocation(line: 389, column: 129, scope: !432)
!977 = !DILocation(line: 389, column: 85, scope: !432)
!978 = !DILocation(line: 389, column: 132, scope: !432)
!979 = !DILocation(line: 389, column: 85, scope: !433)
!980 = !DILocation(line: 389, column: 139, scope: !981)
!981 = !DILexicalBlockFile(scope: !431, file: !377, discriminator: 4)
!982 = !DILocation(line: 389, column: 144, scope: !983)
!983 = !DILexicalBlockFile(scope: !430, file: !377, discriminator: 6)
!984 = !DILocation(line: 389, column: 154, scope: !430)
!985 = !DILocation(line: 389, column: 184, scope: !430)
!986 = !DILocation(line: 389, column: 196, scope: !987)
!987 = distinct !DILexicalBlock(scope: !430, file: !377, line: 389, column: 193)
!988 = !DILocation(line: 389, column: 213, scope: !987)
!989 = !DILocation(line: 389, column: 193, scope: !987)
!990 = !DILocation(line: 389, column: 223, scope: !987)
!991 = !DILocation(line: 389, column: 193, scope: !430)
!992 = !DILocation(line: 389, column: 193, scope: !993)
!993 = !DILexicalBlockFile(scope: !430, file: !377, discriminator: 7)
!994 = !DILocation(line: 389, column: 254, scope: !995)
!995 = !DILexicalBlockFile(scope: !987, file: !377, discriminator: 8)
!996 = !DILocation(line: 389, column: 272, scope: !987)
!997 = !DILocation(line: 389, column: 282, scope: !987)
!998 = !DILocation(line: 389, column: 307, scope: !987)
!999 = !DILocation(line: 389, column: 238, scope: !987)
!1000 = !DILocation(line: 389, column: 326, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !431, file: !377, discriminator: 9)
!1002 = !DILocation(line: 389, column: 326, scope: !430)
!1003 = !DILocation(line: 389, column: 326, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !430, file: !377, discriminator: 10)
!1005 = !DILocation(line: 389, column: 339, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !431, file: !377, discriminator: 11)
!1007 = !DILocation(line: 389, column: 339, scope: !431)
!1008 = !DILocation(line: 389, column: 352, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !433, file: !377, discriminator: 5)
!1010 = !DILocation(line: 389, column: 357, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !435, file: !377, discriminator: 12)
!1012 = !DILocation(line: 389, column: 367, scope: !435)
!1013 = !DILocation(line: 389, column: 397, scope: !435)
!1014 = !DILocation(line: 389, column: 409, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !435, file: !377, line: 389, column: 406)
!1016 = !DILocation(line: 389, column: 426, scope: !1015)
!1017 = !DILocation(line: 389, column: 406, scope: !1015)
!1018 = !DILocation(line: 389, column: 436, scope: !1015)
!1019 = !DILocation(line: 389, column: 406, scope: !435)
!1020 = !DILocation(line: 389, column: 406, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !435, file: !377, discriminator: 13)
!1022 = !DILocation(line: 389, column: 467, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1015, file: !377, discriminator: 14)
!1024 = !DILocation(line: 389, column: 485, scope: !1015)
!1025 = !DILocation(line: 389, column: 495, scope: !1015)
!1026 = !DILocation(line: 389, column: 520, scope: !1015)
!1027 = !DILocation(line: 389, column: 451, scope: !1015)
!1028 = !DILocation(line: 389, column: 539, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !433, file: !377, discriminator: 15)
!1030 = !DILocation(line: 389, column: 539, scope: !435)
!1031 = !DILocation(line: 389, column: 539, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !435, file: !377, discriminator: 16)
!1033 = !DILocation(line: 389, column: 552, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !433, file: !377, discriminator: 17)
!1035 = !DILocation(line: 389, column: 552, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !433, file: !377, discriminator: 18)
!1037 = !DILocation(line: 390, column: 5, scope: !396)
!1038 = !DILocation(line: 390, column: 37, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !440, file: !377, discriminator: 1)
!1040 = !DILocation(line: 390, column: 30, scope: !440)
!1041 = !DILocation(line: 390, column: 14, scope: !440)
!1042 = !DILocation(line: 390, column: 12, scope: !440)
!1043 = !DILocation(line: 390, column: 61, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !440, file: !377, line: 390, column: 61)
!1045 = !DILocation(line: 390, column: 63, scope: !1044)
!1046 = !DILocation(line: 390, column: 61, scope: !440)
!1047 = !DILocation(line: 390, column: 78, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1044, file: !377, discriminator: 2)
!1049 = !DILocation(line: 390, column: 78, scope: !1044)
!1050 = !DILocation(line: 390, column: 114, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !439, file: !377, discriminator: 3)
!1052 = !DILocation(line: 390, column: 140, scope: !439)
!1053 = !DILocation(line: 390, column: 93, scope: !439)
!1054 = !DILocation(line: 390, column: 143, scope: !439)
!1055 = !DILocation(line: 390, column: 93, scope: !440)
!1056 = !DILocation(line: 390, column: 150, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !438, file: !377, discriminator: 4)
!1058 = !DILocation(line: 390, column: 155, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !437, file: !377, discriminator: 6)
!1060 = !DILocation(line: 390, column: 165, scope: !437)
!1061 = !DILocation(line: 390, column: 195, scope: !437)
!1062 = !DILocation(line: 390, column: 207, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !437, file: !377, line: 390, column: 204)
!1064 = !DILocation(line: 390, column: 224, scope: !1063)
!1065 = !DILocation(line: 390, column: 204, scope: !1063)
!1066 = !DILocation(line: 390, column: 234, scope: !1063)
!1067 = !DILocation(line: 390, column: 204, scope: !437)
!1068 = !DILocation(line: 390, column: 204, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !437, file: !377, discriminator: 7)
!1070 = !DILocation(line: 390, column: 265, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1063, file: !377, discriminator: 8)
!1072 = !DILocation(line: 390, column: 283, scope: !1063)
!1073 = !DILocation(line: 390, column: 293, scope: !1063)
!1074 = !DILocation(line: 390, column: 318, scope: !1063)
!1075 = !DILocation(line: 390, column: 249, scope: !1063)
!1076 = !DILocation(line: 390, column: 337, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !438, file: !377, discriminator: 9)
!1078 = !DILocation(line: 390, column: 337, scope: !437)
!1079 = !DILocation(line: 390, column: 337, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !437, file: !377, discriminator: 10)
!1081 = !DILocation(line: 390, column: 350, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !438, file: !377, discriminator: 11)
!1083 = !DILocation(line: 390, column: 350, scope: !438)
!1084 = !DILocation(line: 390, column: 363, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !440, file: !377, discriminator: 5)
!1086 = !DILocation(line: 390, column: 368, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !442, file: !377, discriminator: 12)
!1088 = !DILocation(line: 390, column: 378, scope: !442)
!1089 = !DILocation(line: 390, column: 408, scope: !442)
!1090 = !DILocation(line: 390, column: 420, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !442, file: !377, line: 390, column: 417)
!1092 = !DILocation(line: 390, column: 437, scope: !1091)
!1093 = !DILocation(line: 390, column: 417, scope: !1091)
!1094 = !DILocation(line: 390, column: 447, scope: !1091)
!1095 = !DILocation(line: 390, column: 417, scope: !442)
!1096 = !DILocation(line: 390, column: 417, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !442, file: !377, discriminator: 13)
!1098 = !DILocation(line: 390, column: 478, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1091, file: !377, discriminator: 14)
!1100 = !DILocation(line: 390, column: 496, scope: !1091)
!1101 = !DILocation(line: 390, column: 506, scope: !1091)
!1102 = !DILocation(line: 390, column: 531, scope: !1091)
!1103 = !DILocation(line: 390, column: 462, scope: !1091)
!1104 = !DILocation(line: 390, column: 550, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !440, file: !377, discriminator: 15)
!1106 = !DILocation(line: 390, column: 550, scope: !442)
!1107 = !DILocation(line: 390, column: 550, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !442, file: !377, discriminator: 16)
!1109 = !DILocation(line: 390, column: 563, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !440, file: !377, discriminator: 17)
!1111 = !DILocation(line: 390, column: 563, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !440, file: !377, discriminator: 18)
!1113 = !DILocation(line: 392, column: 5, scope: !396)
!1114 = !DILocation(line: 393, column: 1, scope: !396)
!1115 = !DILocation(line: 396, column: 41, scope: !443)
!1116 = !DILocation(line: 396, column: 70, scope: !443)
!1117 = !DILocation(line: 398, column: 38, scope: !443)
!1118 = !DILocation(line: 398, column: 44, scope: !443)
!1119 = !DILocation(line: 398, column: 11, scope: !443)
!1120 = !DILocation(line: 399, column: 1, scope: !443)
!1121 = !DILocation(line: 402, column: 49, scope: !449)
!1122 = !DILocation(line: 404, column: 5, scope: !449)
!1123 = !DILocation(line: 404, column: 19, scope: !449)
!1124 = !DILocation(line: 406, column: 29, scope: !449)
!1125 = !DILocation(line: 406, column: 14, scope: !449)
!1126 = !DILocation(line: 406, column: 12, scope: !449)
!1127 = !DILocation(line: 407, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !449, file: !377, line: 407, column: 9)
!1129 = !DILocation(line: 407, column: 16, scope: !1128)
!1130 = !DILocation(line: 407, column: 9, scope: !449)
!1131 = !DILocation(line: 408, column: 9, scope: !1128)
!1132 = !DILocation(line: 409, column: 36, scope: !458)
!1133 = !DILocation(line: 409, column: 44, scope: !458)
!1134 = !DILocation(line: 409, column: 9, scope: !458)
!1135 = !DILocation(line: 409, column: 50, scope: !458)
!1136 = !DILocation(line: 409, column: 9, scope: !449)
!1137 = !DILocation(line: 410, column: 9, scope: !457)
!1138 = !DILocation(line: 410, column: 14, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !456, file: !377, discriminator: 1)
!1140 = !DILocation(line: 410, column: 24, scope: !456)
!1141 = !DILocation(line: 410, column: 54, scope: !456)
!1142 = !DILocation(line: 410, column: 41, scope: !456)
!1143 = !DILocation(line: 410, column: 71, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !456, file: !377, line: 410, column: 68)
!1145 = !DILocation(line: 410, column: 88, scope: !1144)
!1146 = !DILocation(line: 410, column: 68, scope: !1144)
!1147 = !DILocation(line: 410, column: 98, scope: !1144)
!1148 = !DILocation(line: 410, column: 68, scope: !456)
!1149 = !DILocation(line: 410, column: 68, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !456, file: !377, discriminator: 2)
!1151 = !DILocation(line: 410, column: 129, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1144, file: !377, discriminator: 3)
!1153 = !DILocation(line: 410, column: 147, scope: !1144)
!1154 = !DILocation(line: 410, column: 157, scope: !1144)
!1155 = !DILocation(line: 410, column: 182, scope: !1144)
!1156 = !DILocation(line: 410, column: 113, scope: !1144)
!1157 = !DILocation(line: 410, column: 201, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !457, file: !377, discriminator: 4)
!1159 = !DILocation(line: 410, column: 201, scope: !456)
!1160 = !DILocation(line: 410, column: 201, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !456, file: !377, discriminator: 5)
!1162 = !DILocation(line: 411, column: 9, scope: !457)
!1163 = !DILocation(line: 413, column: 12, scope: !449)
!1164 = !DILocation(line: 413, column: 5, scope: !449)
!1165 = !DILocation(line: 414, column: 1, scope: !449)
!1166 = !DILocation(line: 418, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !459, file: !377, line: 418, column: 9)
!1168 = !DILocation(line: 418, column: 52, scope: !1167)
!1169 = !DILocation(line: 419, column: 9, scope: !1167)
!1170 = !DILocation(line: 419, column: 12, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1167, file: !377, discriminator: 1)
!1172 = !DILocation(line: 419, column: 46, scope: !1167)
!1173 = !DILocation(line: 420, column: 9, scope: !1167)
!1174 = !DILocation(line: 420, column: 12, scope: !1171)
!1175 = !DILocation(line: 420, column: 54, scope: !1167)
!1176 = !DILocation(line: 418, column: 9, scope: !459)
!1177 = !DILocation(line: 421, column: 9, scope: !1167)
!1178 = !DILocation(line: 423, column: 5, scope: !459)
!1179 = !DILocation(line: 424, column: 1, scope: !459)
!1180 = !DILocation(line: 62, column: 37, scope: !462)
!1181 = !DILocation(line: 64, column: 5, scope: !462)
!1182 = !DILocation(line: 64, column: 16, scope: !462)
!1183 = !DILocation(line: 64, column: 19, scope: !462)
!1184 = !DILocation(line: 66, column: 60, scope: !462)
!1185 = !DILocation(line: 66, column: 48, scope: !462)
!1186 = !DILocation(line: 66, column: 67, scope: !462)
!1187 = !DILocation(line: 66, column: 78, scope: !462)
!1188 = !DILocation(line: 66, column: 27, scope: !462)
!1189 = !DILocation(line: 66, column: 12, scope: !462)
!1190 = !DILocation(line: 66, column: 10, scope: !462)
!1191 = !DILocation(line: 67, column: 12, scope: !473)
!1192 = !DILocation(line: 67, column: 10, scope: !473)
!1193 = !DILocation(line: 67, column: 17, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1195, file: !377, discriminator: 2)
!1195 = !DILexicalBlockFile(scope: !472, file: !377, discriminator: 1)
!1196 = !DILocation(line: 67, column: 21, scope: !472)
!1197 = !DILocation(line: 67, column: 19, scope: !472)
!1198 = !DILocation(line: 67, column: 5, scope: !473)
!1199 = !DILocation(line: 68, column: 9, scope: !471)
!1200 = !DILocation(line: 68, column: 14, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !470, file: !377, discriminator: 1)
!1202 = !DILocation(line: 68, column: 24, scope: !470)
!1203 = !DILocation(line: 68, column: 68, scope: !470)
!1204 = !DILocation(line: 68, column: 55, scope: !470)
!1205 = !DILocation(line: 68, column: 60, scope: !470)
!1206 = !DILocation(line: 68, column: 77, scope: !476)
!1207 = !DILocation(line: 68, column: 93, scope: !476)
!1208 = !DILocation(line: 68, column: 77, scope: !470)
!1209 = !DILocation(line: 68, column: 108, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !476, file: !377, discriminator: 2)
!1211 = !DILocation(line: 68, column: 113, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !475, file: !377, discriminator: 4)
!1213 = !DILocation(line: 68, column: 123, scope: !475)
!1214 = !DILocation(line: 68, column: 153, scope: !475)
!1215 = !DILocation(line: 68, column: 179, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !475, file: !377, line: 68, column: 176)
!1217 = !DILocation(line: 68, column: 196, scope: !1216)
!1218 = !DILocation(line: 68, column: 176, scope: !1216)
!1219 = !DILocation(line: 68, column: 206, scope: !1216)
!1220 = !DILocation(line: 68, column: 176, scope: !475)
!1221 = !DILocation(line: 68, column: 176, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !475, file: !377, discriminator: 5)
!1223 = !DILocation(line: 68, column: 237, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1216, file: !377, discriminator: 6)
!1225 = !DILocation(line: 68, column: 255, scope: !1216)
!1226 = !DILocation(line: 68, column: 265, scope: !1216)
!1227 = !DILocation(line: 68, column: 290, scope: !1216)
!1228 = !DILocation(line: 68, column: 221, scope: !1216)
!1229 = !DILocation(line: 68, column: 309, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !476, file: !377, discriminator: 7)
!1231 = !DILocation(line: 68, column: 309, scope: !475)
!1232 = !DILocation(line: 68, column: 309, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !475, file: !377, discriminator: 8)
!1234 = !DILocation(line: 68, column: 309, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !475, file: !377, discriminator: 9)
!1236 = !DILocation(line: 68, column: 322, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !377, discriminator: 10)
!1238 = !DILexicalBlockFile(scope: !471, file: !377, discriminator: 3)
!1239 = !DILocation(line: 68, column: 322, scope: !470)
!1240 = !DILocation(line: 68, column: 322, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !470, file: !377, discriminator: 11)
!1242 = !DILocation(line: 69, column: 5, scope: !471)
!1243 = !DILocation(line: 67, column: 27, scope: !472)
!1244 = !DILocation(line: 67, column: 5, scope: !472)
!1245 = !DILocation(line: 70, column: 21, scope: !462)
!1246 = !DILocation(line: 70, column: 5, scope: !462)
!1247 = !DILocation(line: 71, column: 1, scope: !462)
!1248 = !DILocation(line: 160, column: 34, scope: !477)
!1249 = !DILocation(line: 166, column: 5, scope: !477)
!1250 = !DILocation(line: 166, column: 19, scope: !477)
!1251 = !DILocation(line: 166, column: 39, scope: !477)
!1252 = !DILocation(line: 166, column: 27, scope: !477)
!1253 = !DILocation(line: 166, column: 46, scope: !477)
!1254 = !DILocation(line: 167, column: 5, scope: !477)
!1255 = !DILocation(line: 167, column: 9, scope: !477)
!1256 = !DILocation(line: 167, column: 12, scope: !477)
!1257 = !DILocation(line: 168, column: 5, scope: !477)
!1258 = !DILocation(line: 168, column: 16, scope: !477)
!1259 = !DILocation(line: 169, column: 5, scope: !477)
!1260 = !DILocation(line: 169, column: 10, scope: !477)
!1261 = !DILocation(line: 170, column: 5, scope: !477)
!1262 = !DILocation(line: 170, column: 11, scope: !477)
!1263 = !DILocation(line: 170, column: 22, scope: !477)
!1264 = !DILocation(line: 170, column: 29, scope: !477)
!1265 = !DILocation(line: 173, column: 16, scope: !477)
!1266 = !DILocation(line: 173, column: 13, scope: !477)
!1267 = !DILocation(line: 176, column: 18, scope: !477)
!1268 = !DILocation(line: 176, column: 23, scope: !477)
!1269 = !DILocation(line: 176, column: 11, scope: !477)
!1270 = !DILocation(line: 176, column: 32, scope: !477)
!1271 = !DILocation(line: 176, column: 11, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !477, file: !377, discriminator: 1)
!1273 = !DILocation(line: 177, column: 36, scope: !477)
!1274 = !DILocation(line: 177, column: 41, scope: !477)
!1275 = !DILocation(line: 177, column: 29, scope: !477)
!1276 = !DILocation(line: 176, column: 9, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !377, discriminator: 3)
!1278 = !DILexicalBlockFile(scope: !477, file: !377, discriminator: 2)
!1279 = !DILocation(line: 178, column: 24, scope: !477)
!1280 = !DILocation(line: 178, column: 30, scope: !477)
!1281 = !DILocation(line: 178, column: 35, scope: !477)
!1282 = !DILocation(line: 178, column: 44, scope: !477)
!1283 = !DILocation(line: 178, column: 5, scope: !477)
!1284 = !DILocation(line: 179, column: 13, scope: !477)
!1285 = !DILocation(line: 179, column: 10, scope: !477)
!1286 = !DILocation(line: 180, column: 10, scope: !477)
!1287 = !DILocation(line: 180, column: 13, scope: !477)
!1288 = !{!622, !622, i64 0}
!1289 = !DILocation(line: 182, column: 11, scope: !495)
!1290 = !DILocation(line: 182, column: 10, scope: !495)
!1291 = !DILocation(line: 182, column: 15, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !377, discriminator: 2)
!1293 = !DILexicalBlockFile(scope: !494, file: !377, discriminator: 1)
!1294 = !DILocation(line: 182, column: 36, scope: !494)
!1295 = !DILocation(line: 182, column: 21, scope: !494)
!1296 = !DILocation(line: 182, column: 43, scope: !494)
!1297 = !DILocation(line: 182, column: 17, scope: !494)
!1298 = !DILocation(line: 182, column: 5, scope: !495)
!1299 = !DILocation(line: 183, column: 9, scope: !493)
!1300 = !DILocation(line: 183, column: 19, scope: !493)
!1301 = !DILocation(line: 183, column: 25, scope: !493)
!1302 = !DILocation(line: 184, column: 9, scope: !493)
!1303 = !DILocation(line: 184, column: 15, scope: !493)
!1304 = !DILocation(line: 184, column: 23, scope: !493)
!1305 = !DILocation(line: 186, column: 33, scope: !493)
!1306 = !DILocation(line: 186, column: 17, scope: !493)
!1307 = !DILocation(line: 186, column: 22, scope: !493)
!1308 = !DILocation(line: 186, column: 36, scope: !493)
!1309 = !DILocation(line: 186, column: 15, scope: !493)
!1310 = !DILocation(line: 187, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !493, file: !377, line: 187, column: 13)
!1312 = !DILocation(line: 187, column: 19, scope: !1311)
!1313 = !DILocation(line: 187, column: 13, scope: !493)
!1314 = !DILocation(line: 188, column: 26, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !377, line: 187, column: 34)
!1316 = !DILocation(line: 189, column: 46, scope: !1315)
!1317 = !DILocation(line: 189, column: 49, scope: !1315)
!1318 = !DILocation(line: 189, column: 54, scope: !1315)
!1319 = !DILocation(line: 188, column: 13, scope: !1315)
!1320 = !DILocation(line: 190, column: 13, scope: !1315)
!1321 = !DILocation(line: 192, column: 50, scope: !493)
!1322 = !DILocation(line: 192, column: 16, scope: !493)
!1323 = !DILocation(line: 192, column: 35, scope: !493)
!1324 = !DILocation(line: 192, column: 42, scope: !493)
!1325 = !DILocation(line: 192, column: 13, scope: !493)
!1326 = !DILocation(line: 193, column: 30, scope: !493)
!1327 = !DILocation(line: 193, column: 16, scope: !493)
!1328 = !DILocation(line: 193, column: 14, scope: !493)
!1329 = !DILocation(line: 194, column: 13, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !493, file: !377, line: 194, column: 13)
!1331 = !DILocation(line: 194, column: 18, scope: !1330)
!1332 = !DILocation(line: 194, column: 13, scope: !493)
!1333 = !DILocation(line: 195, column: 13, scope: !1330)
!1334 = !DILocation(line: 196, column: 34, scope: !493)
!1335 = !DILocation(line: 196, column: 17, scope: !493)
!1336 = !DILocation(line: 196, column: 15, scope: !493)
!1337 = !DILocation(line: 197, column: 13, scope: !502)
!1338 = !DILocation(line: 197, column: 19, scope: !502)
!1339 = !DILocation(line: 197, column: 13, scope: !493)
!1340 = !DILocation(line: 198, column: 13, scope: !501)
!1341 = !DILocation(line: 198, column: 18, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !500, file: !377, discriminator: 1)
!1343 = !DILocation(line: 198, column: 28, scope: !500)
!1344 = !DILocation(line: 198, column: 58, scope: !500)
!1345 = !DILocation(line: 198, column: 73, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !500, file: !377, line: 198, column: 70)
!1347 = !DILocation(line: 198, column: 90, scope: !1346)
!1348 = !DILocation(line: 198, column: 70, scope: !1346)
!1349 = !DILocation(line: 198, column: 100, scope: !1346)
!1350 = !DILocation(line: 198, column: 70, scope: !500)
!1351 = !DILocation(line: 198, column: 70, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !500, file: !377, discriminator: 2)
!1353 = !DILocation(line: 198, column: 131, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1346, file: !377, discriminator: 3)
!1355 = !DILocation(line: 198, column: 149, scope: !1346)
!1356 = !DILocation(line: 198, column: 159, scope: !1346)
!1357 = !DILocation(line: 198, column: 184, scope: !1346)
!1358 = !DILocation(line: 198, column: 115, scope: !1346)
!1359 = !DILocation(line: 198, column: 203, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !501, file: !377, discriminator: 4)
!1361 = !DILocation(line: 198, column: 203, scope: !500)
!1362 = !DILocation(line: 198, column: 203, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !500, file: !377, discriminator: 5)
!1364 = !DILocation(line: 199, column: 13, scope: !501)
!1365 = !DILocation(line: 203, column: 22, scope: !493)
!1366 = !DILocation(line: 203, column: 15, scope: !493)
!1367 = !DILocation(line: 203, column: 38, scope: !493)
!1368 = !DILocation(line: 203, column: 31, scope: !493)
!1369 = !DILocation(line: 203, column: 29, scope: !493)
!1370 = !DILocation(line: 203, column: 45, scope: !493)
!1371 = !DILocation(line: 203, column: 13, scope: !493)
!1372 = !DILocation(line: 204, column: 14, scope: !506)
!1373 = !DILocation(line: 204, column: 19, scope: !506)
!1374 = !DILocation(line: 204, column: 18, scope: !506)
!1375 = !DILocation(line: 204, column: 27, scope: !506)
!1376 = !DILocation(line: 204, column: 24, scope: !506)
!1377 = !DILocation(line: 204, column: 13, scope: !493)
!1378 = !DILocation(line: 205, column: 20, scope: !505)
!1379 = !DILocation(line: 205, column: 26, scope: !505)
!1380 = !DILocation(line: 205, column: 13, scope: !505)
!1381 = !DILocation(line: 206, column: 28, scope: !505)
!1382 = !DILocation(line: 206, column: 21, scope: !505)
!1383 = !DILocation(line: 206, column: 18, scope: !505)
!1384 = !DILocation(line: 207, column: 18, scope: !505)
!1385 = !DILocation(line: 207, column: 21, scope: !505)
!1386 = !DILocation(line: 208, column: 20, scope: !505)
!1387 = !DILocation(line: 208, column: 26, scope: !505)
!1388 = !DILocation(line: 208, column: 13, scope: !505)
!1389 = !DILocation(line: 209, column: 28, scope: !505)
!1390 = !DILocation(line: 209, column: 21, scope: !505)
!1391 = !DILocation(line: 209, column: 18, scope: !505)
!1392 = !DILocation(line: 210, column: 18, scope: !505)
!1393 = !DILocation(line: 210, column: 21, scope: !505)
!1394 = !DILocation(line: 211, column: 18, scope: !505)
!1395 = !DILocation(line: 211, column: 21, scope: !505)
!1396 = !DILocation(line: 212, column: 24, scope: !505)
!1397 = !DILocation(line: 213, column: 13, scope: !505)
!1398 = !DILocation(line: 213, column: 18, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !504, file: !377, discriminator: 1)
!1400 = !DILocation(line: 213, column: 28, scope: !504)
!1401 = !DILocation(line: 213, column: 58, scope: !504)
!1402 = !DILocation(line: 213, column: 73, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !504, file: !377, line: 213, column: 70)
!1404 = !DILocation(line: 213, column: 90, scope: !1403)
!1405 = !DILocation(line: 213, column: 70, scope: !1403)
!1406 = !DILocation(line: 213, column: 100, scope: !1403)
!1407 = !DILocation(line: 213, column: 70, scope: !504)
!1408 = !DILocation(line: 213, column: 70, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !504, file: !377, discriminator: 2)
!1410 = !DILocation(line: 213, column: 131, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1403, file: !377, discriminator: 3)
!1412 = !DILocation(line: 213, column: 149, scope: !1403)
!1413 = !DILocation(line: 213, column: 159, scope: !1403)
!1414 = !DILocation(line: 213, column: 184, scope: !1403)
!1415 = !DILocation(line: 213, column: 115, scope: !1403)
!1416 = !DILocation(line: 213, column: 203, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !505, file: !377, discriminator: 4)
!1418 = !DILocation(line: 213, column: 203, scope: !504)
!1419 = !DILocation(line: 213, column: 203, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !504, file: !377, discriminator: 5)
!1421 = !DILocation(line: 214, column: 9, scope: !505)
!1422 = !DILocation(line: 216, column: 20, scope: !509)
!1423 = !DILocation(line: 216, column: 13, scope: !509)
!1424 = !DILocation(line: 217, column: 18, scope: !509)
!1425 = !DILocation(line: 218, column: 24, scope: !509)
!1426 = !DILocation(line: 219, column: 13, scope: !509)
!1427 = !DILocation(line: 219, column: 18, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !508, file: !377, discriminator: 1)
!1429 = !DILocation(line: 219, column: 28, scope: !508)
!1430 = !DILocation(line: 219, column: 58, scope: !508)
!1431 = !DILocation(line: 219, column: 73, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !508, file: !377, line: 219, column: 70)
!1433 = !DILocation(line: 219, column: 90, scope: !1432)
!1434 = !DILocation(line: 219, column: 70, scope: !1432)
!1435 = !DILocation(line: 219, column: 100, scope: !1432)
!1436 = !DILocation(line: 219, column: 70, scope: !508)
!1437 = !DILocation(line: 219, column: 70, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !508, file: !377, discriminator: 2)
!1439 = !DILocation(line: 219, column: 131, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1432, file: !377, discriminator: 3)
!1441 = !DILocation(line: 219, column: 149, scope: !1432)
!1442 = !DILocation(line: 219, column: 159, scope: !1432)
!1443 = !DILocation(line: 219, column: 184, scope: !1432)
!1444 = !DILocation(line: 219, column: 115, scope: !1432)
!1445 = !DILocation(line: 219, column: 203, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !509, file: !377, discriminator: 4)
!1447 = !DILocation(line: 219, column: 203, scope: !508)
!1448 = !DILocation(line: 219, column: 203, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !508, file: !377, discriminator: 5)
!1450 = !DILocation(line: 220, column: 13, scope: !509)
!1451 = !DILocation(line: 222, column: 5, scope: !494)
!1452 = !DILocation(line: 222, column: 5, scope: !1293)
!1453 = !DILocation(line: 222, column: 5, scope: !493)
!1454 = !DILocation(line: 182, column: 54, scope: !494)
!1455 = !DILocation(line: 182, column: 5, scope: !494)
!1456 = !DILocation(line: 223, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !477, file: !377, line: 223, column: 9)
!1458 = !DILocation(line: 223, column: 9, scope: !477)
!1459 = !DILocation(line: 225, column: 13, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !377, line: 223, column: 21)
!1461 = !DILocation(line: 226, column: 5, scope: !1460)
!1462 = !DILocation(line: 227, column: 10, scope: !477)
!1463 = !DILocation(line: 227, column: 13, scope: !477)
!1464 = !DILocation(line: 228, column: 6, scope: !477)
!1465 = !DILocation(line: 228, column: 11, scope: !477)
!1466 = !DILocation(line: 230, column: 33, scope: !477)
!1467 = !DILocation(line: 230, column: 12, scope: !477)
!1468 = !DILocation(line: 230, column: 5, scope: !477)
!1469 = !DILocation(line: 231, column: 1, scope: !477)
!1470 = !DILocation(line: 74, column: 29, scope: !538)
!1471 = !DILocation(line: 74, column: 45, scope: !538)
!1472 = !DILocation(line: 74, column: 61, scope: !538)
!1473 = !DILocation(line: 76, column: 5, scope: !538)
!1474 = !DILocation(line: 76, column: 15, scope: !538)
!1475 = !DILocation(line: 77, column: 5, scope: !538)
!1476 = !DILocation(line: 77, column: 15, scope: !538)
!1477 = !DILocation(line: 78, column: 5, scope: !538)
!1478 = !DILocation(line: 78, column: 15, scope: !538)
!1479 = !DILocation(line: 79, column: 5, scope: !538)
!1480 = !DILocation(line: 79, column: 23, scope: !538)
!1481 = !DILocation(line: 80, column: 5, scope: !538)
!1482 = !DILocation(line: 80, column: 16, scope: !538)
!1483 = !DILocation(line: 80, column: 21, scope: !538)
!1484 = !DILocation(line: 80, column: 30, scope: !538)
!1485 = !DILocation(line: 80, column: 39, scope: !538)
!1486 = !DILocation(line: 80, column: 42, scope: !538)
!1487 = !DILocation(line: 83, column: 38, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !538, file: !377, line: 83, column: 9)
!1489 = !DILocation(line: 83, column: 44, scope: !1488)
!1490 = !DILocation(line: 83, column: 10, scope: !1488)
!1491 = !DILocation(line: 83, column: 9, scope: !538)
!1492 = !DILocation(line: 85, column: 9, scope: !1488)
!1493 = !DILocation(line: 87, column: 27, scope: !538)
!1494 = !DILocation(line: 87, column: 11, scope: !538)
!1495 = !DILocation(line: 87, column: 9, scope: !538)
!1496 = !DILocation(line: 89, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !538, file: !377, line: 89, column: 9)
!1498 = !DILocation(line: 89, column: 9, scope: !538)
!1499 = !DILocation(line: 90, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !377, line: 89, column: 15)
!1501 = !DILocation(line: 93, column: 9, scope: !557)
!1502 = !DILocation(line: 93, column: 14, scope: !557)
!1503 = !DILocation(line: 93, column: 35, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !557, file: !377, discriminator: 1)
!1505 = !DILocation(line: 93, column: 43, scope: !557)
!1506 = !DILocation(line: 93, column: 54, scope: !557)
!1507 = !{!633, !636, i64 168}
!1508 = !DILocation(line: 93, column: 63, scope: !557)
!1509 = !DILocation(line: 93, column: 80, scope: !557)
!1510 = !DILocation(line: 93, column: 9, scope: !538)
!1511 = !DILocation(line: 94, column: 22, scope: !556)
!1512 = !DILocation(line: 96, column: 22, scope: !556)
!1513 = !DILocation(line: 96, column: 28, scope: !556)
!1514 = !DILocation(line: 94, column: 9, scope: !556)
!1515 = !DILocation(line: 97, column: 9, scope: !556)
!1516 = !DILocation(line: 97, column: 14, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !555, file: !377, discriminator: 1)
!1518 = !DILocation(line: 97, column: 24, scope: !555)
!1519 = !DILocation(line: 97, column: 54, scope: !555)
!1520 = !DILocation(line: 97, column: 68, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !555, file: !377, line: 97, column: 65)
!1522 = !DILocation(line: 97, column: 85, scope: !1521)
!1523 = !DILocation(line: 97, column: 65, scope: !1521)
!1524 = !DILocation(line: 97, column: 95, scope: !1521)
!1525 = !DILocation(line: 97, column: 65, scope: !555)
!1526 = !DILocation(line: 97, column: 65, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !555, file: !377, discriminator: 2)
!1528 = !DILocation(line: 97, column: 126, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1521, file: !377, discriminator: 3)
!1530 = !DILocation(line: 97, column: 144, scope: !1521)
!1531 = !DILocation(line: 97, column: 154, scope: !1521)
!1532 = !DILocation(line: 97, column: 179, scope: !1521)
!1533 = !DILocation(line: 97, column: 110, scope: !1521)
!1534 = !DILocation(line: 97, column: 198, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !556, file: !377, discriminator: 4)
!1536 = !DILocation(line: 97, column: 198, scope: !555)
!1537 = !DILocation(line: 97, column: 198, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !555, file: !377, discriminator: 5)
!1539 = !DILocation(line: 98, column: 9, scope: !556)
!1540 = !DILocation(line: 101, column: 29, scope: !538)
!1541 = !DILocation(line: 101, column: 36, scope: !538)
!1542 = !DILocation(line: 101, column: 47, scope: !538)
!1543 = !DILocation(line: 101, column: 56, scope: !538)
!1544 = !DILocation(line: 101, column: 73, scope: !538)
!1545 = !DILocation(line: 101, column: 12, scope: !538)
!1546 = !DILocation(line: 101, column: 98, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !538, file: !377, discriminator: 1)
!1548 = !DILocation(line: 101, column: 83, scope: !538)
!1549 = !DILocation(line: 101, column: 105, scope: !538)
!1550 = !DILocation(line: 101, column: 133, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !538, file: !377, discriminator: 2)
!1552 = !DILocation(line: 101, column: 118, scope: !538)
!1553 = !DILocation(line: 101, column: 140, scope: !538)
!1554 = !DILocation(line: 101, column: 9, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !377, discriminator: 4)
!1556 = !DILexicalBlockFile(scope: !538, file: !377, discriminator: 3)
!1557 = !DILocation(line: 102, column: 49, scope: !538)
!1558 = !DILocation(line: 102, column: 56, scope: !538)
!1559 = !DILocation(line: 102, column: 30, scope: !538)
!1560 = !DILocation(line: 102, column: 15, scope: !538)
!1561 = !DILocation(line: 102, column: 13, scope: !538)
!1562 = !DILocation(line: 103, column: 49, scope: !538)
!1563 = !DILocation(line: 103, column: 56, scope: !538)
!1564 = !DILocation(line: 103, column: 30, scope: !538)
!1565 = !DILocation(line: 103, column: 15, scope: !538)
!1566 = !DILocation(line: 103, column: 13, scope: !538)
!1567 = !DILocation(line: 104, column: 58, scope: !538)
!1568 = !DILocation(line: 104, column: 65, scope: !538)
!1569 = !DILocation(line: 104, column: 39, scope: !538)
!1570 = !DILocation(line: 104, column: 24, scope: !538)
!1571 = !DILocation(line: 104, column: 22, scope: !538)
!1572 = !DILocation(line: 106, column: 9, scope: !563)
!1573 = !DILocation(line: 106, column: 20, scope: !563)
!1574 = !DILocation(line: 106, column: 17, scope: !563)
!1575 = !DILocation(line: 106, column: 9, scope: !538)
!1576 = !DILocation(line: 107, column: 13, scope: !561)
!1577 = !DILocation(line: 107, column: 19, scope: !561)
!1578 = !DILocation(line: 107, column: 17, scope: !561)
!1579 = !DILocation(line: 107, column: 13, scope: !562)
!1580 = !DILocation(line: 108, column: 26, scope: !560)
!1581 = !DILocation(line: 110, column: 17, scope: !560)
!1582 = !DILocation(line: 110, column: 23, scope: !560)
!1583 = !DILocation(line: 110, column: 32, scope: !560)
!1584 = !DILocation(line: 110, column: 41, scope: !560)
!1585 = !DILocation(line: 108, column: 13, scope: !560)
!1586 = !DILocation(line: 111, column: 13, scope: !560)
!1587 = !DILocation(line: 111, column: 18, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !559, file: !377, discriminator: 1)
!1589 = !DILocation(line: 111, column: 28, scope: !559)
!1590 = !DILocation(line: 111, column: 58, scope: !559)
!1591 = !DILocation(line: 111, column: 72, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !559, file: !377, line: 111, column: 69)
!1593 = !DILocation(line: 111, column: 89, scope: !1592)
!1594 = !DILocation(line: 111, column: 69, scope: !1592)
!1595 = !DILocation(line: 111, column: 99, scope: !1592)
!1596 = !DILocation(line: 111, column: 69, scope: !559)
!1597 = !DILocation(line: 111, column: 69, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !559, file: !377, discriminator: 2)
!1599 = !DILocation(line: 111, column: 130, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1592, file: !377, discriminator: 3)
!1601 = !DILocation(line: 111, column: 148, scope: !1592)
!1602 = !DILocation(line: 111, column: 158, scope: !1592)
!1603 = !DILocation(line: 111, column: 183, scope: !1592)
!1604 = !DILocation(line: 111, column: 114, scope: !1592)
!1605 = !DILocation(line: 111, column: 202, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !560, file: !377, discriminator: 4)
!1607 = !DILocation(line: 111, column: 202, scope: !559)
!1608 = !DILocation(line: 111, column: 202, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !559, file: !377, discriminator: 5)
!1610 = !DILocation(line: 112, column: 13, scope: !560)
!1611 = !DILocation(line: 115, column: 13, scope: !567)
!1612 = !DILocation(line: 115, column: 19, scope: !567)
!1613 = !DILocation(line: 115, column: 17, scope: !567)
!1614 = !DILocation(line: 115, column: 13, scope: !562)
!1615 = !DILocation(line: 116, column: 26, scope: !566)
!1616 = !DILocation(line: 118, column: 17, scope: !566)
!1617 = !DILocation(line: 118, column: 23, scope: !566)
!1618 = !DILocation(line: 118, column: 32, scope: !566)
!1619 = !DILocation(line: 118, column: 41, scope: !566)
!1620 = !DILocation(line: 116, column: 13, scope: !566)
!1621 = !DILocation(line: 119, column: 13, scope: !566)
!1622 = !DILocation(line: 119, column: 18, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !565, file: !377, discriminator: 1)
!1624 = !DILocation(line: 119, column: 28, scope: !565)
!1625 = !DILocation(line: 119, column: 58, scope: !565)
!1626 = !DILocation(line: 119, column: 72, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !565, file: !377, line: 119, column: 69)
!1628 = !DILocation(line: 119, column: 89, scope: !1627)
!1629 = !DILocation(line: 119, column: 69, scope: !1627)
!1630 = !DILocation(line: 119, column: 99, scope: !1627)
!1631 = !DILocation(line: 119, column: 69, scope: !565)
!1632 = !DILocation(line: 119, column: 69, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !565, file: !377, discriminator: 2)
!1634 = !DILocation(line: 119, column: 130, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1627, file: !377, discriminator: 3)
!1636 = !DILocation(line: 119, column: 148, scope: !1627)
!1637 = !DILocation(line: 119, column: 158, scope: !1627)
!1638 = !DILocation(line: 119, column: 183, scope: !1627)
!1639 = !DILocation(line: 119, column: 114, scope: !1627)
!1640 = !DILocation(line: 119, column: 202, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !566, file: !377, discriminator: 4)
!1642 = !DILocation(line: 119, column: 202, scope: !565)
!1643 = !DILocation(line: 119, column: 202, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !565, file: !377, discriminator: 5)
!1645 = !DILocation(line: 120, column: 13, scope: !566)
!1646 = !DILocation(line: 122, column: 5, scope: !562)
!1647 = !DILocation(line: 124, column: 13, scope: !571)
!1648 = !DILocation(line: 124, column: 20, scope: !571)
!1649 = !DILocation(line: 124, column: 17, scope: !571)
!1650 = !DILocation(line: 124, column: 13, scope: !572)
!1651 = !DILocation(line: 125, column: 26, scope: !570)
!1652 = !DILocation(line: 127, column: 26, scope: !570)
!1653 = !DILocation(line: 127, column: 32, scope: !570)
!1654 = !DILocation(line: 127, column: 41, scope: !570)
!1655 = !DILocation(line: 127, column: 50, scope: !570)
!1656 = !DILocation(line: 125, column: 13, scope: !570)
!1657 = !DILocation(line: 128, column: 13, scope: !570)
!1658 = !DILocation(line: 128, column: 18, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !569, file: !377, discriminator: 1)
!1660 = !DILocation(line: 128, column: 28, scope: !569)
!1661 = !DILocation(line: 128, column: 58, scope: !569)
!1662 = !DILocation(line: 128, column: 72, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !569, file: !377, line: 128, column: 69)
!1664 = !DILocation(line: 128, column: 89, scope: !1663)
!1665 = !DILocation(line: 128, column: 69, scope: !1663)
!1666 = !DILocation(line: 128, column: 99, scope: !1663)
!1667 = !DILocation(line: 128, column: 69, scope: !569)
!1668 = !DILocation(line: 128, column: 69, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !569, file: !377, discriminator: 2)
!1670 = !DILocation(line: 128, column: 130, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1663, file: !377, discriminator: 3)
!1672 = !DILocation(line: 128, column: 148, scope: !1663)
!1673 = !DILocation(line: 128, column: 158, scope: !1663)
!1674 = !DILocation(line: 128, column: 183, scope: !1663)
!1675 = !DILocation(line: 128, column: 114, scope: !1663)
!1676 = !DILocation(line: 128, column: 202, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !570, file: !377, discriminator: 4)
!1678 = !DILocation(line: 128, column: 202, scope: !569)
!1679 = !DILocation(line: 128, column: 202, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !569, file: !377, discriminator: 5)
!1681 = !DILocation(line: 129, column: 13, scope: !570)
!1682 = !DILocation(line: 133, column: 52, scope: !538)
!1683 = !DILocation(line: 133, column: 31, scope: !538)
!1684 = !DILocation(line: 133, column: 11, scope: !538)
!1685 = !DILocation(line: 133, column: 9, scope: !538)
!1686 = !DILocation(line: 134, column: 9, scope: !576)
!1687 = !DILocation(line: 134, column: 13, scope: !576)
!1688 = !DILocation(line: 134, column: 9, scope: !538)
!1689 = !DILocation(line: 135, column: 9, scope: !575)
!1690 = !DILocation(line: 135, column: 14, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !574, file: !377, discriminator: 1)
!1692 = !DILocation(line: 135, column: 24, scope: !574)
!1693 = !DILocation(line: 135, column: 54, scope: !574)
!1694 = !DILocation(line: 135, column: 68, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !574, file: !377, line: 135, column: 65)
!1696 = !DILocation(line: 135, column: 85, scope: !1695)
!1697 = !DILocation(line: 135, column: 65, scope: !1695)
!1698 = !DILocation(line: 135, column: 95, scope: !1695)
!1699 = !DILocation(line: 135, column: 65, scope: !574)
!1700 = !DILocation(line: 135, column: 65, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !574, file: !377, discriminator: 2)
!1702 = !DILocation(line: 135, column: 126, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1695, file: !377, discriminator: 3)
!1704 = !DILocation(line: 135, column: 144, scope: !1695)
!1705 = !DILocation(line: 135, column: 154, scope: !1695)
!1706 = !DILocation(line: 135, column: 179, scope: !1695)
!1707 = !DILocation(line: 135, column: 110, scope: !1695)
!1708 = !DILocation(line: 135, column: 198, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !575, file: !377, discriminator: 4)
!1710 = !DILocation(line: 135, column: 198, scope: !574)
!1711 = !DILocation(line: 135, column: 198, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !574, file: !377, discriminator: 5)
!1713 = !DILocation(line: 136, column: 9, scope: !575)
!1714 = !DILocation(line: 138, column: 12, scope: !580)
!1715 = !DILocation(line: 138, column: 10, scope: !580)
!1716 = !DILocation(line: 138, column: 17, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1718, file: !377, discriminator: 2)
!1718 = !DILexicalBlockFile(scope: !579, file: !377, discriminator: 1)
!1719 = !DILocation(line: 138, column: 21, scope: !579)
!1720 = !DILocation(line: 138, column: 19, scope: !579)
!1721 = !DILocation(line: 138, column: 5, scope: !580)
!1722 = !DILocation(line: 139, column: 9, scope: !578)
!1723 = !DILocation(line: 139, column: 19, scope: !578)
!1724 = !DILocation(line: 139, column: 41, scope: !578)
!1725 = !DILocation(line: 139, column: 48, scope: !578)
!1726 = !DILocation(line: 139, column: 59, scope: !578)
!1727 = !DILocation(line: 139, column: 68, scope: !578)
!1728 = !DILocation(line: 139, column: 85, scope: !578)
!1729 = !DILocation(line: 139, column: 24, scope: !578)
!1730 = !DILocation(line: 139, column: 127, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !578, file: !377, discriminator: 1)
!1732 = !DILocation(line: 139, column: 112, scope: !578)
!1733 = !DILocation(line: 139, column: 95, scope: !578)
!1734 = !DILocation(line: 139, column: 119, scope: !578)
!1735 = !{!1736, !621, i64 24}
!1736 = !{!"", !634, i64 0, !621, i64 24, !636, i64 32}
!1737 = !DILocation(line: 139, column: 94, scope: !578)
!1738 = !DILocation(line: 139, column: 168, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !578, file: !377, discriminator: 2)
!1740 = !DILocation(line: 139, column: 153, scope: !578)
!1741 = !DILocation(line: 139, column: 135, scope: !578)
!1742 = !DILocation(line: 139, column: 160, scope: !578)
!1743 = !DILocation(line: 139, column: 134, scope: !578)
!1744 = !DILocation(line: 139, column: 19, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1746, file: !377, discriminator: 4)
!1746 = !DILexicalBlockFile(scope: !578, file: !377, discriminator: 3)
!1747 = !DILocation(line: 140, column: 25, scope: !578)
!1748 = !DILocation(line: 140, column: 30, scope: !578)
!1749 = !DILocation(line: 140, column: 39, scope: !578)
!1750 = !DILocation(line: 141, column: 27, scope: !578)
!1751 = !DILocation(line: 141, column: 22, scope: !578)
!1752 = !DILocation(line: 141, column: 9, scope: !578)
!1753 = !DILocation(line: 141, column: 14, scope: !578)
!1754 = !DILocation(line: 141, column: 25, scope: !578)
!1755 = !DILocation(line: 142, column: 5, scope: !579)
!1756 = !DILocation(line: 142, column: 5, scope: !578)
!1757 = !DILocation(line: 138, column: 26, scope: !579)
!1758 = !DILocation(line: 138, column: 5, scope: !579)
!1759 = !DILocation(line: 143, column: 5, scope: !538)
!1760 = !DILocation(line: 143, column: 12, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !1762, file: !377, discriminator: 2)
!1762 = !DILexicalBlockFile(scope: !1763, file: !377, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !377, line: 143, column: 5)
!1764 = distinct !DILexicalBlock(scope: !538, file: !377, line: 143, column: 5)
!1765 = !DILocation(line: 143, column: 16, scope: !1763)
!1766 = !DILocation(line: 143, column: 14, scope: !1763)
!1767 = !DILocation(line: 143, column: 5, scope: !1764)
!1768 = !DILocation(line: 144, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !377, line: 144, column: 13)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !377, line: 143, column: 30)
!1771 = !DILocation(line: 144, column: 18, scope: !1769)
!1772 = !DILocation(line: 145, column: 13, scope: !1769)
!1773 = !DILocation(line: 145, column: 36, scope: !1769)
!1774 = !DILocation(line: 145, column: 38, scope: !1769)
!1775 = !DILocation(line: 145, column: 37, scope: !1769)
!1776 = !DILocation(line: 145, column: 19, scope: !1769)
!1777 = !DILocation(line: 145, column: 25, scope: !1769)
!1778 = !DILocation(line: 145, column: 56, scope: !1769)
!1779 = !DILocation(line: 144, column: 27, scope: !1769)
!1780 = !DILocation(line: 144, column: 25, scope: !1769)
!1781 = !DILocation(line: 144, column: 13, scope: !1770)
!1782 = !DILocation(line: 146, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1769, file: !377, line: 145, column: 64)
!1784 = !DILocation(line: 148, column: 16, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1769, file: !377, line: 147, column: 14)
!1786 = !DILocation(line: 150, column: 25, scope: !1770)
!1787 = !DILocation(line: 150, column: 31, scope: !1770)
!1788 = !DILocation(line: 150, column: 40, scope: !1770)
!1789 = !DILocation(line: 151, column: 27, scope: !1770)
!1790 = !DILocation(line: 151, column: 22, scope: !1770)
!1791 = !DILocation(line: 151, column: 9, scope: !1770)
!1792 = !DILocation(line: 151, column: 14, scope: !1770)
!1793 = !DILocation(line: 151, column: 25, scope: !1770)
!1794 = !DILocation(line: 152, column: 5, scope: !1770)
!1795 = !DILocation(line: 143, column: 25, scope: !1763)
!1796 = !DILocation(line: 143, column: 5, scope: !1763)
!1797 = !DILocation(line: 154, column: 5, scope: !538)
!1798 = !DILocation(line: 154, column: 10, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !582, file: !377, discriminator: 1)
!1800 = !DILocation(line: 154, column: 20, scope: !582)
!1801 = !DILocation(line: 154, column: 50, scope: !582)
!1802 = !DILocation(line: 154, column: 64, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !582, file: !377, line: 154, column: 61)
!1804 = !DILocation(line: 154, column: 81, scope: !1803)
!1805 = !DILocation(line: 154, column: 61, scope: !1803)
!1806 = !DILocation(line: 154, column: 91, scope: !1803)
!1807 = !DILocation(line: 154, column: 61, scope: !582)
!1808 = !DILocation(line: 154, column: 61, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !582, file: !377, discriminator: 2)
!1810 = !DILocation(line: 154, column: 122, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1803, file: !377, discriminator: 3)
!1812 = !DILocation(line: 154, column: 140, scope: !1803)
!1813 = !DILocation(line: 154, column: 150, scope: !1803)
!1814 = !DILocation(line: 154, column: 175, scope: !1803)
!1815 = !DILocation(line: 154, column: 106, scope: !1803)
!1816 = !DILocation(line: 154, column: 194, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !538, file: !377, discriminator: 4)
!1818 = !DILocation(line: 154, column: 194, scope: !582)
!1819 = !DILocation(line: 154, column: 194, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !582, file: !377, discriminator: 5)
!1821 = !DILocation(line: 155, column: 24, scope: !538)
!1822 = !DILocation(line: 155, column: 12, scope: !538)
!1823 = !DILocation(line: 155, column: 5, scope: !538)
!1824 = !DILocation(line: 156, column: 1, scope: !538)
!1825 = !DILocation(line: 234, column: 36, scope: !510)
!1826 = !DILocation(line: 236, column: 5, scope: !510)
!1827 = !DILocation(line: 236, column: 15, scope: !510)
!1828 = !DILocation(line: 237, column: 5, scope: !510)
!1829 = !DILocation(line: 237, column: 15, scope: !510)
!1830 = !DILocation(line: 238, column: 5, scope: !510)
!1831 = !DILocation(line: 238, column: 15, scope: !510)
!1832 = !DILocation(line: 239, column: 5, scope: !510)
!1833 = !DILocation(line: 239, column: 16, scope: !510)
!1834 = !DILocation(line: 239, column: 26, scope: !510)
!1835 = !DILocation(line: 239, column: 44, scope: !510)
!1836 = !DILocation(line: 240, column: 5, scope: !510)
!1837 = !DILocation(line: 240, column: 9, scope: !510)
!1838 = !DILocation(line: 242, column: 64, scope: !510)
!1839 = !DILocation(line: 242, column: 52, scope: !510)
!1840 = !DILocation(line: 242, column: 72, scope: !510)
!1841 = !DILocation(line: 242, column: 83, scope: !510)
!1842 = !DILocation(line: 242, column: 31, scope: !510)
!1843 = !DILocation(line: 242, column: 16, scope: !510)
!1844 = !DILocation(line: 242, column: 14, scope: !510)
!1845 = !DILocation(line: 243, column: 41, scope: !510)
!1846 = !DILocation(line: 243, column: 26, scope: !510)
!1847 = !DILocation(line: 243, column: 49, scope: !510)
!1848 = !DILocation(line: 243, column: 22, scope: !510)
!1849 = !DILocation(line: 244, column: 72, scope: !510)
!1850 = !DILocation(line: 244, column: 60, scope: !510)
!1851 = !DILocation(line: 244, column: 80, scope: !510)
!1852 = !DILocation(line: 244, column: 91, scope: !510)
!1853 = !DILocation(line: 244, column: 39, scope: !510)
!1854 = !DILocation(line: 244, column: 24, scope: !510)
!1855 = !DILocation(line: 244, column: 22, scope: !510)
!1856 = !DILocation(line: 245, column: 23, scope: !510)
!1857 = !DILocation(line: 245, column: 11, scope: !510)
!1858 = !DILocation(line: 245, column: 9, scope: !510)
!1859 = !DILocation(line: 246, column: 10, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !510, file: !377, line: 246, column: 9)
!1861 = !DILocation(line: 246, column: 9, scope: !510)
!1862 = !DILocation(line: 247, column: 9, scope: !1860)
!1863 = !DILocation(line: 249, column: 12, scope: !510)
!1864 = !DILocation(line: 249, column: 10, scope: !510)
!1865 = !DILocation(line: 250, column: 10, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !510, file: !377, line: 250, column: 9)
!1867 = !DILocation(line: 250, column: 9, scope: !510)
!1868 = !DILocation(line: 251, column: 9, scope: !1866)
!1869 = !DILocation(line: 253, column: 12, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !510, file: !377, line: 253, column: 5)
!1871 = !DILocation(line: 253, column: 10, scope: !1870)
!1872 = !DILocation(line: 253, column: 17, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !377, discriminator: 2)
!1874 = !DILexicalBlockFile(scope: !1875, file: !377, discriminator: 1)
!1875 = distinct !DILexicalBlock(scope: !1870, file: !377, line: 253, column: 5)
!1876 = !DILocation(line: 253, column: 21, scope: !1875)
!1877 = !DILocation(line: 253, column: 19, scope: !1875)
!1878 = !DILocation(line: 253, column: 5, scope: !1870)
!1879 = !DILocation(line: 254, column: 39, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !377, line: 253, column: 44)
!1881 = !DILocation(line: 254, column: 25, scope: !1880)
!1882 = !DILocation(line: 254, column: 31, scope: !1880)
!1883 = !DILocation(line: 254, column: 45, scope: !1880)
!1884 = !DILocation(line: 254, column: 54, scope: !1880)
!1885 = !DILocation(line: 255, column: 63, scope: !1880)
!1886 = !DILocation(line: 255, column: 49, scope: !1880)
!1887 = !DILocation(line: 255, column: 55, scope: !1880)
!1888 = !DILocation(line: 255, column: 44, scope: !1880)
!1889 = !DILocation(line: 255, column: 10, scope: !1880)
!1890 = !DILocation(line: 255, column: 29, scope: !1880)
!1891 = !DILocation(line: 255, column: 11, scope: !1880)
!1892 = !DILocation(line: 255, column: 36, scope: !1880)
!1893 = !DILocation(line: 255, column: 47, scope: !1880)
!1894 = !DILocation(line: 256, column: 5, scope: !1880)
!1895 = !DILocation(line: 253, column: 40, scope: !1875)
!1896 = !DILocation(line: 253, column: 5, scope: !1875)
!1897 = !DILocation(line: 258, column: 5, scope: !510)
!1898 = !DILocation(line: 258, column: 12, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1900, file: !377, discriminator: 2)
!1900 = !DILexicalBlockFile(scope: !522, file: !377, discriminator: 1)
!1901 = !DILocation(line: 258, column: 16, scope: !522)
!1902 = !DILocation(line: 258, column: 14, scope: !522)
!1903 = !DILocation(line: 258, column: 5, scope: !523)
!1904 = !DILocation(line: 259, column: 9, scope: !521)
!1905 = !DILocation(line: 259, column: 15, scope: !521)
!1906 = !DILocation(line: 259, column: 62, scope: !521)
!1907 = !DILocation(line: 259, column: 64, scope: !521)
!1908 = !DILocation(line: 259, column: 63, scope: !521)
!1909 = !DILocation(line: 259, column: 33, scope: !521)
!1910 = !DILocation(line: 259, column: 21, scope: !521)
!1911 = !DILocation(line: 259, column: 41, scope: !521)
!1912 = !DILocation(line: 259, column: 51, scope: !521)
!1913 = !DILocation(line: 259, column: 19, scope: !521)
!1914 = !DILocation(line: 259, column: 82, scope: !521)
!1915 = !DILocation(line: 260, column: 34, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !521, file: !377, line: 260, column: 13)
!1917 = !DILocation(line: 260, column: 40, scope: !1916)
!1918 = !DILocation(line: 260, column: 57, scope: !1916)
!1919 = !DILocation(line: 260, column: 43, scope: !1916)
!1920 = !DILocation(line: 260, column: 49, scope: !1916)
!1921 = !DILocation(line: 260, column: 13, scope: !1916)
!1922 = !DILocation(line: 260, column: 61, scope: !1916)
!1923 = !DILocation(line: 260, column: 13, scope: !521)
!1924 = !DILocation(line: 261, column: 13, scope: !1916)
!1925 = !DILocation(line: 262, column: 5, scope: !522)
!1926 = !DILocation(line: 262, column: 5, scope: !1900)
!1927 = !DILocation(line: 262, column: 5, scope: !521)
!1928 = !DILocation(line: 258, column: 27, scope: !522)
!1929 = !DILocation(line: 258, column: 5, scope: !522)
!1930 = !DILocation(line: 264, column: 53, scope: !510)
!1931 = !DILocation(line: 264, column: 41, scope: !510)
!1932 = !DILocation(line: 264, column: 61, scope: !510)
!1933 = !DILocation(line: 264, column: 71, scope: !510)
!1934 = !DILocation(line: 264, column: 76, scope: !510)
!1935 = !DILocation(line: 264, column: 14, scope: !510)
!1936 = !DILocation(line: 264, column: 12, scope: !510)
!1937 = !DILocation(line: 266, column: 5, scope: !510)
!1938 = !DILocation(line: 266, column: 10, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !525, file: !377, discriminator: 1)
!1940 = !DILocation(line: 266, column: 20, scope: !525)
!1941 = !DILocation(line: 266, column: 50, scope: !525)
!1942 = !DILocation(line: 266, column: 64, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !525, file: !377, line: 266, column: 61)
!1944 = !DILocation(line: 266, column: 81, scope: !1943)
!1945 = !DILocation(line: 266, column: 61, scope: !1943)
!1946 = !DILocation(line: 266, column: 91, scope: !1943)
!1947 = !DILocation(line: 266, column: 61, scope: !525)
!1948 = !DILocation(line: 266, column: 61, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !525, file: !377, discriminator: 2)
!1950 = !DILocation(line: 266, column: 122, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1943, file: !377, discriminator: 3)
!1952 = !DILocation(line: 266, column: 140, scope: !1943)
!1953 = !DILocation(line: 266, column: 150, scope: !1943)
!1954 = !DILocation(line: 266, column: 175, scope: !1943)
!1955 = !DILocation(line: 266, column: 106, scope: !1943)
!1956 = !DILocation(line: 266, column: 194, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !510, file: !377, discriminator: 4)
!1958 = !DILocation(line: 266, column: 194, scope: !525)
!1959 = !DILocation(line: 266, column: 194, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !525, file: !377, discriminator: 5)
!1961 = !DILocation(line: 267, column: 5, scope: !510)
!1962 = !DILocation(line: 267, column: 10, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !527, file: !377, discriminator: 1)
!1964 = !DILocation(line: 267, column: 20, scope: !527)
!1965 = !DILocation(line: 267, column: 50, scope: !527)
!1966 = !DILocation(line: 267, column: 65, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !527, file: !377, line: 267, column: 62)
!1968 = !DILocation(line: 267, column: 82, scope: !1967)
!1969 = !DILocation(line: 267, column: 62, scope: !1967)
!1970 = !DILocation(line: 267, column: 92, scope: !1967)
!1971 = !DILocation(line: 267, column: 62, scope: !527)
!1972 = !DILocation(line: 267, column: 62, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !527, file: !377, discriminator: 2)
!1974 = !DILocation(line: 267, column: 123, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1967, file: !377, discriminator: 3)
!1976 = !DILocation(line: 267, column: 141, scope: !1967)
!1977 = !DILocation(line: 267, column: 151, scope: !1967)
!1978 = !DILocation(line: 267, column: 176, scope: !1967)
!1979 = !DILocation(line: 267, column: 107, scope: !1967)
!1980 = !DILocation(line: 267, column: 195, scope: !1957)
!1981 = !DILocation(line: 267, column: 195, scope: !527)
!1982 = !DILocation(line: 267, column: 195, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !527, file: !377, discriminator: 5)
!1984 = !DILocation(line: 269, column: 12, scope: !510)
!1985 = !DILocation(line: 269, column: 5, scope: !510)
!1986 = !DILocation(line: 272, column: 5, scope: !510)
!1987 = !DILocation(line: 272, column: 10, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !529, file: !377, discriminator: 1)
!1989 = !DILocation(line: 272, column: 20, scope: !529)
!1990 = !DILocation(line: 272, column: 51, scope: !529)
!1991 = !DILocation(line: 272, column: 61, scope: !532)
!1992 = !DILocation(line: 272, column: 77, scope: !532)
!1993 = !DILocation(line: 272, column: 61, scope: !529)
!1994 = !DILocation(line: 272, column: 92, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !532, file: !377, discriminator: 2)
!1996 = !DILocation(line: 272, column: 97, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !531, file: !377, discriminator: 4)
!1998 = !DILocation(line: 272, column: 107, scope: !531)
!1999 = !DILocation(line: 272, column: 137, scope: !531)
!2000 = !DILocation(line: 272, column: 163, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !531, file: !377, line: 272, column: 160)
!2002 = !DILocation(line: 272, column: 180, scope: !2001)
!2003 = !DILocation(line: 272, column: 160, scope: !2001)
!2004 = !DILocation(line: 272, column: 190, scope: !2001)
!2005 = !DILocation(line: 272, column: 160, scope: !531)
!2006 = !DILocation(line: 272, column: 160, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !531, file: !377, discriminator: 5)
!2008 = !DILocation(line: 272, column: 221, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2001, file: !377, discriminator: 6)
!2010 = !DILocation(line: 272, column: 239, scope: !2001)
!2011 = !DILocation(line: 272, column: 249, scope: !2001)
!2012 = !DILocation(line: 272, column: 274, scope: !2001)
!2013 = !DILocation(line: 272, column: 205, scope: !2001)
!2014 = !DILocation(line: 272, column: 293, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !532, file: !377, discriminator: 7)
!2016 = !DILocation(line: 272, column: 293, scope: !531)
!2017 = !DILocation(line: 272, column: 293, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !531, file: !377, discriminator: 8)
!2019 = !DILocation(line: 272, column: 293, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !531, file: !377, discriminator: 9)
!2021 = !DILocation(line: 272, column: 306, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2023, file: !377, discriminator: 10)
!2023 = !DILexicalBlockFile(scope: !510, file: !377, discriminator: 3)
!2024 = !DILocation(line: 272, column: 306, scope: !529)
!2025 = !DILocation(line: 272, column: 306, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !529, file: !377, discriminator: 11)
!2027 = !DILocation(line: 273, column: 5, scope: !510)
!2028 = !DILocation(line: 273, column: 10, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !534, file: !377, discriminator: 1)
!2030 = !DILocation(line: 273, column: 20, scope: !534)
!2031 = !DILocation(line: 273, column: 51, scope: !534)
!2032 = !DILocation(line: 273, column: 62, scope: !537)
!2033 = !DILocation(line: 273, column: 78, scope: !537)
!2034 = !DILocation(line: 273, column: 62, scope: !534)
!2035 = !DILocation(line: 273, column: 93, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !537, file: !377, discriminator: 2)
!2037 = !DILocation(line: 273, column: 98, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !536, file: !377, discriminator: 4)
!2039 = !DILocation(line: 273, column: 108, scope: !536)
!2040 = !DILocation(line: 273, column: 138, scope: !536)
!2041 = !DILocation(line: 273, column: 164, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !536, file: !377, line: 273, column: 161)
!2043 = !DILocation(line: 273, column: 181, scope: !2042)
!2044 = !DILocation(line: 273, column: 161, scope: !2042)
!2045 = !DILocation(line: 273, column: 191, scope: !2042)
!2046 = !DILocation(line: 273, column: 161, scope: !536)
!2047 = !DILocation(line: 273, column: 161, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !536, file: !377, discriminator: 5)
!2049 = !DILocation(line: 273, column: 222, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2042, file: !377, discriminator: 6)
!2051 = !DILocation(line: 273, column: 240, scope: !2042)
!2052 = !DILocation(line: 273, column: 250, scope: !2042)
!2053 = !DILocation(line: 273, column: 275, scope: !2042)
!2054 = !DILocation(line: 273, column: 206, scope: !2042)
!2055 = !DILocation(line: 273, column: 294, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !537, file: !377, discriminator: 7)
!2057 = !DILocation(line: 273, column: 294, scope: !536)
!2058 = !DILocation(line: 273, column: 294, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !536, file: !377, discriminator: 8)
!2060 = !DILocation(line: 273, column: 294, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !536, file: !377, discriminator: 9)
!2062 = !DILocation(line: 273, column: 307, scope: !2022)
!2063 = !DILocation(line: 273, column: 307, scope: !534)
!2064 = !DILocation(line: 273, column: 307, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !534, file: !377, discriminator: 11)
!2066 = !DILocation(line: 274, column: 5, scope: !510)
!2067 = !DILocation(line: 275, column: 1, scope: !510)
