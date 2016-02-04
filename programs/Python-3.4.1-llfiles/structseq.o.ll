; ModuleID = 'structseq.o.bc'
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
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [14 x i8] c"unnamed field\00", align 1
@PyStructSequence_UnnamedField = global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), align 8
@PyId_n_fields = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* null }, align 8
@PyId_n_sequence_fields = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8
@_struct_sequence_template = internal unnamed_addr constant %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* null, i64 24, i64 8, void (%struct._object*)* bitcast (void (%struct.PyTupleObject*)* @structseq_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyTupleObject*)* @structseq_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @structseq_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @structseq_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
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
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !380, metadata !619), !dbg !620
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 31, !dbg !621
  %0 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !621, !tbaa !622
  %call = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %0, %struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !621
  %call1 = tail call i64 @PyLong_AsLong(%struct._object* %call) #2, !dbg !621
  tail call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !382, metadata !619), !dbg !631
  %call2 = tail call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %type, i64 %call1) #2, !dbg !632
  %cmp = icmp eq %struct.PyVarObject* %call2, null, !dbg !633
  br i1 %cmp, label %cleanup, label %if.end, !dbg !635

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !636, !tbaa !622
  %call4 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId_n_sequence_fields) #2, !dbg !636
  %call5 = tail call i64 @PyLong_AsLong(%struct._object* %call4) #2, !dbg !636
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call2, i64 0, i32 1, !dbg !637
  store i64 %call5, i64* %ob_size, align 8, !dbg !638, !tbaa !639
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !383, metadata !619), !dbg !640
  %cmp6.20 = icmp sgt i64 %call1, 0, !dbg !641
  br i1 %cmp6.20, label %for.body.lr.ph, label %for.end, !dbg !644

for.body.lr.ph:                                   ; preds = %if.end
  %scevgep = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call2, i64 1, !dbg !644
  %scevgep22 = bitcast %struct.PyVarObject* %scevgep to i8*
  %2 = shl i64 %call1, 3, !dbg !644
  call void @llvm.memset.p0i8.i64(i8* %scevgep22, i8 0, i64 %2, i32 8, i1 false), !dbg !645
  br label %for.end, !dbg !644

for.end:                                          ; preds = %for.body.lr.ph, %if.end
  %3 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call2, i64 0, i32 0, !dbg !646
  br label %cleanup, !dbg !647

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct._object* [ %3, %for.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !648
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
define void @PyStructSequence_SetItem(%struct._object* nocapture %op, i64 %i, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !388, metadata !619), !dbg !649
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !389, metadata !619), !dbg !650
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !390, metadata !619), !dbg !651
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !652
  %0 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !652
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %0, i64 0, i64 %i, !dbg !652
  store %struct._object* %v, %struct._object** %arrayidx, align 8, !dbg !652, !tbaa !653
  ret void, !dbg !654
}

; Function Attrs: nounwind readonly uwtable
define %struct._object* @PyStructSequence_GetItem(%struct._object* nocapture readonly %op, i64 %i) #4 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !393, metadata !619), !dbg !655
  tail call void @llvm.dbg.value(metadata i64 %i, i64 0, metadata !394, metadata !619), !dbg !656
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, i32 1, !dbg !657
  %0 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !657
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %0, i64 0, i64 %i, !dbg !657
  %1 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !657, !tbaa !653
  ret %struct._object* %1, !dbg !658
}

; Function Attrs: nounwind uwtable
define i32 @PyStructSequence_InitType2(%struct._typeobject* %type, %struct.PyStructSequence_Desc* nocapture readonly %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !412, metadata !619), !dbg !659
  tail call void @llvm.dbg.value(metadata %struct.PyStructSequence_Desc* %desc, i64 0, metadata !413, metadata !619), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !417, metadata !619), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !418, metadata !619), !dbg !662
  %fields = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %desc, i64 0, i32 2, !dbg !663
  %0 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields, align 8, !dbg !663, !tbaa !666
  %name.269 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %0, i64 0, i32 0, !dbg !668
  %1 = load i8*, i8** %name.269, align 8, !dbg !668, !tbaa !669
  %cmp.270 = icmp eq i8* %1, null, !dbg !671
  br i1 %cmp.270, label %for.end, label %for.body.lr.ph, !dbg !672

for.body.lr.ph:                                   ; preds = %entry
  %2 = load i8*, i8** @PyStructSequence_UnnamedField, align 8, !dbg !673, !tbaa !653
  br label %for.body, !dbg !672

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i8* [ %1, %for.body.lr.ph ], [ %4, %for.body ]
  %n_unnamed_members.0272 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.n_unnamed_members.0, %for.body ]
  %i.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.body ]
  %cmp5 = icmp eq i8* %3, %2, !dbg !675
  %inc = zext i1 %cmp5 to i32, !dbg !676
  %inc.n_unnamed_members.0 = add i32 %inc, %n_unnamed_members.0272, !dbg !676
  %inc6 = add i32 %i.0271, 1, !dbg !677
  tail call void @llvm.dbg.value(metadata i32 %inc6, i64 0, metadata !418, metadata !619), !dbg !662
  %idxprom = sext i32 %inc6 to i64, !dbg !678
  %name = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %0, i64 %idxprom, i32 0, !dbg !668
  %4 = load i8*, i8** %name, align 8, !dbg !668, !tbaa !669
  %cmp = icmp eq i8* %4, null, !dbg !671
  br i1 %cmp, label %for.end.loopexit, label %for.body, !dbg !672

for.end.loopexit:                                 ; preds = %for.body
  %idxprom.lcssa281 = phi i64 [ %idxprom, %for.body ]
  %inc6.lcssa = phi i32 [ %inc6, %for.body ]
  %inc.n_unnamed_members.0.lcssa = phi i32 [ %inc.n_unnamed_members.0, %for.body ]
  br label %for.end, !dbg !679

for.end:                                          ; preds = %for.end.loopexit, %entry
  %idxprom.lcssa = phi i64 [ 0, %entry ], [ %idxprom.lcssa281, %for.end.loopexit ]
  %n_unnamed_members.0.lcssa = phi i32 [ 0, %entry ], [ %inc.n_unnamed_members.0.lcssa, %for.end.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %inc6.lcssa, %for.end.loopexit ]
  tail call void @llvm.dbg.value(metadata i32 %inc6, i64 0, metadata !416, metadata !619), !dbg !679
  %5 = bitcast %struct._typeobject* %type to i8*, !dbg !680
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct._typeobject* @_struct_sequence_template to i8*), i64 400, i32 8, i1 false), !dbg !680
  %tp_base = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 30, !dbg !681
  store %struct._typeobject* @PyTuple_Type, %struct._typeobject** %tp_base, align 8, !dbg !682, !tbaa !683
  %6 = bitcast %struct.PyStructSequence_Desc* %desc to i64*, !dbg !684
  %7 = load i64, i64* %6, align 8, !dbg !684, !tbaa !685
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 1, !dbg !686
  %8 = bitcast i8** %tp_name to i64*, !dbg !687
  store i64 %7, i64* %8, align 8, !dbg !687, !tbaa !688
  %doc = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %desc, i64 0, i32 1, !dbg !689
  %9 = bitcast i8** %doc to i64*, !dbg !689
  %10 = load i64, i64* %9, align 8, !dbg !689, !tbaa !690
  %tp_doc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 20, !dbg !691
  %11 = bitcast i8** %tp_doc to i64*, !dbg !692
  store i64 %10, i64* %11, align 8, !dbg !692, !tbaa !693
  %sub = sub i32 %i.0.lcssa, %n_unnamed_members.0.lcssa, !dbg !694
  %add = add i32 %sub, 1, !dbg !694
  %cmp8 = icmp slt i32 %add, 0, !dbg !694
  br i1 %cmp8, label %if.then.15, label %cond.end, !dbg !694

cond.end:                                         ; preds = %for.end
  %conv = sext i32 %add to i64, !dbg !694
  %mul = mul nsw i64 %conv, 40, !dbg !695
  %call = tail call i8* @PyMem_Malloc(i64 %mul) #2, !dbg !695
  %12 = bitcast i8* %call to %struct.PyMemberDef*, !dbg !695
  tail call void @llvm.dbg.value(metadata %struct.PyMemberDef* %12, i64 0, metadata !415, metadata !619), !dbg !697
  %cmp13 = icmp eq i8* %call, null, !dbg !698
  br i1 %cmp13, label %if.then.15, label %for.cond.18.preheader, !dbg !700

for.cond.18.preheader:                            ; preds = %cond.end
  %cmp19.266 = icmp sgt i32 %i.0.lcssa, 0, !dbg !701
  br i1 %cmp19.266, label %for.body.21.lr.ph, label %for.end.57, !dbg !704

for.body.21.lr.ph:                                ; preds = %for.cond.18.preheader
  %.pre = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields, align 8, !dbg !705, !tbaa !666
  br label %for.body.21, !dbg !704

if.then.15:                                       ; preds = %for.end, %cond.end
  %call16 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !708
  br label %cleanup, !dbg !710

for.body.21:                                      ; preds = %for.inc.55, %for.body.21.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.21.lr.ph ], [ %indvars.iv.next, %for.inc.55 ]
  %k.0267 = phi i32 [ 0, %for.body.21.lr.ph ], [ %k.1, %for.inc.55 ]
  %name25 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %.pre, i64 %indvars.iv, i32 0, !dbg !711
  %13 = load i8*, i8** %name25, align 8, !dbg !711, !tbaa !669
  %14 = load i8*, i8** @PyStructSequence_UnnamedField, align 8, !dbg !712, !tbaa !653
  %cmp26 = icmp eq i8* %13, %14, !dbg !713
  br i1 %cmp26, label %for.inc.55, label %if.end.29, !dbg !714

if.end.29:                                        ; preds = %for.body.21
  %idxprom34 = sext i32 %k.0267 to i64, !dbg !715
  %name36 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom34, i32 0, !dbg !716
  store i8* %13, i8** %name36, align 8, !dbg !717, !tbaa !718
  %type39 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom34, i32 1, !dbg !720
  store i32 6, i32* %type39, align 4, !dbg !721, !tbaa !722
  %mul41 = shl nsw i64 %indvars.iv, 3, !dbg !723
  %add42 = add nuw nsw i64 %mul41, 24, !dbg !724
  %offset = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom34, i32 2, !dbg !725
  store i64 %add42, i64* %offset, align 8, !dbg !726, !tbaa !727
  %flags = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom34, i32 3, !dbg !728
  store i32 1, i32* %flags, align 4, !dbg !729, !tbaa !730
  %doc50 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %.pre, i64 %indvars.iv, i32 1, !dbg !731
  %15 = bitcast i8** %doc50 to i64*, !dbg !731
  %16 = load i64, i64* %15, align 8, !dbg !731, !tbaa !732
  %doc53 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom34, i32 4, !dbg !733
  %17 = bitcast i8** %doc53 to i64*, !dbg !734
  store i64 %16, i64* %17, align 8, !dbg !734, !tbaa !735
  %inc54 = add i32 %k.0267, 1, !dbg !736
  tail call void @llvm.dbg.value(metadata i32 %inc54, i64 0, metadata !419, metadata !619), !dbg !737
  br label %for.inc.55, !dbg !738

for.inc.55:                                       ; preds = %for.body.21, %if.end.29
  %k.1 = phi i32 [ %k.0267, %for.body.21 ], [ %inc54, %if.end.29 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !704
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !704
  %exitcond = icmp eq i32 %lftr.wideiv, %i.0.lcssa, !dbg !704
  br i1 %exitcond, label %for.end.57.loopexit, label %for.body.21, !dbg !704

for.end.57.loopexit:                              ; preds = %for.inc.55
  %k.1.lcssa = phi i32 [ %k.1, %for.inc.55 ]
  br label %for.end.57, !dbg !739

for.end.57:                                       ; preds = %for.end.57.loopexit, %for.cond.18.preheader
  %k.0.lcssa = phi i32 [ 0, %for.cond.18.preheader ], [ %k.1.lcssa, %for.end.57.loopexit ]
  %idxprom58 = sext i32 %k.0.lcssa to i64, !dbg !739
  %name60 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %12, i64 %idxprom58, i32 0, !dbg !740
  store i8* null, i8** %name60, align 8, !dbg !741, !tbaa !718
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 28, !dbg !742
  %18 = bitcast %struct.PyMemberDef** %tp_members to i8**, !dbg !743
  store i8* %call, i8** %18, align 8, !dbg !743, !tbaa !744
  %call61 = tail call i32 @PyType_Ready(%struct._typeobject* %type) #2, !dbg !745
  %cmp62 = icmp slt i32 %call61, 0, !dbg !747
  br i1 %cmp62, label %cleanup, label %if.end.65, !dbg !748

if.end.65:                                        ; preds = %for.end.57
  %ob_refcnt = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 0, i32 0, i32 0, !dbg !749
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !749, !tbaa !750
  %inc66 = add i64 %19, 1, !dbg !749
  store i64 %inc66, i64* %ob_refcnt, align 8, !dbg !749, !tbaa !750
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 31, !dbg !751
  %20 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !751, !tbaa !622
  tail call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !414, metadata !619), !dbg !752
  %n_in_sequence = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %desc, i64 0, i32 3, !dbg !753
  %21 = load i32, i32* %n_in_sequence, align 4, !dbg !753, !tbaa !755
  %conv67 = sext i32 %21 to i64, !dbg !753
  %call68 = tail call %struct._object* @PyLong_FromLong(i64 %conv67) #2, !dbg !753
  tail call void @llvm.dbg.value(metadata %struct._object* %call68, i64 0, metadata !420, metadata !619), !dbg !756
  %cmp69 = icmp eq %struct._object* %call68, null, !dbg !757
  br i1 %cmp69, label %cleanup, label %if.end.72, !dbg !759

if.end.72:                                        ; preds = %if.end.65
  %call73 = tail call i32 @PyDict_SetItemString(%struct._object* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @visible_length_key, i64 0, i64 0), %struct._object* %call68) #2, !dbg !760
  %cmp74 = icmp slt i32 %call73, 0, !dbg !760
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %call68, i64 0, i32 0, !dbg !762
  %22 = load i64, i64* %ob_refcnt78, align 8, !dbg !762, !tbaa !750
  %dec = add i64 %22, -1, !dbg !762
  store i64 %dec, i64* %ob_refcnt78, align 8, !dbg !762, !tbaa !750
  %cmp79 = icmp eq i64 %dec, 0, !dbg !762
  br i1 %cmp74, label %do.body.77, label %do.body.84, !dbg !759

do.body.77:                                       ; preds = %if.end.72
  tail call void @llvm.dbg.value(metadata %struct._object* %call68, i64 0, metadata !421, metadata !619), !dbg !764
  br i1 %cmp79, label %if.else, label %cleanup, !dbg !766

if.else:                                          ; preds = %do.body.77
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call68, i64 0, i32 1, !dbg !767
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !767, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !767
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !767, !tbaa !770
  tail call void %24(%struct._object* %call68) #2, !dbg !767
  br label %cleanup

do.body.84:                                       ; preds = %if.end.72
  tail call void @llvm.dbg.value(metadata %struct._object* %call68, i64 0, metadata !426, metadata !619), !dbg !771
  br i1 %cmp79, label %if.else.91, label %if.end.94, !dbg !773

if.else.91:                                       ; preds = %do.body.84
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %call68, i64 0, i32 1, !dbg !774
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !774, !tbaa !769
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !774
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !774, !tbaa !770
  tail call void %26(%struct._object* %call68) #2, !dbg !774
  br label %if.end.94

if.end.94:                                        ; preds = %do.body.84, %if.else.91
  %call101 = tail call %struct._object* @PyLong_FromLong(i64 %idxprom.lcssa) #2, !dbg !777
  tail call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !420, metadata !619), !dbg !756
  %cmp102 = icmp eq %struct._object* %call101, null, !dbg !779
  br i1 %cmp102, label %cleanup, label %if.end.105, !dbg !781

if.end.105:                                       ; preds = %if.end.94
  %call106 = tail call i32 @PyDict_SetItemString(%struct._object* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @real_length_key, i64 0, i64 0), %struct._object* %call101) #2, !dbg !782
  %cmp107 = icmp slt i32 %call106, 0, !dbg !782
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 0, !dbg !784
  %27 = load i64, i64* %ob_refcnt112, align 8, !dbg !784, !tbaa !750
  %dec113 = add i64 %27, -1, !dbg !784
  store i64 %dec113, i64* %ob_refcnt112, align 8, !dbg !784, !tbaa !750
  %cmp114 = icmp eq i64 %dec113, 0, !dbg !784
  br i1 %cmp107, label %do.body.110, label %do.body.124, !dbg !781

do.body.110:                                      ; preds = %if.end.105
  tail call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !428, metadata !619), !dbg !786
  br i1 %cmp114, label %if.else.117, label %cleanup, !dbg !788

if.else.117:                                      ; preds = %do.body.110
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 1, !dbg !789
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !789, !tbaa !769
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !789
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !789, !tbaa !770
  tail call void %29(%struct._object* %call101) #2, !dbg !789
  br label %cleanup

do.body.124:                                      ; preds = %if.end.105
  tail call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !433, metadata !619), !dbg !791
  br i1 %cmp114, label %if.else.131, label %if.end.134, !dbg !793

if.else.131:                                      ; preds = %do.body.124
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 1, !dbg !794
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8, !dbg !794, !tbaa !769
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !794
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8, !dbg !794, !tbaa !770
  tail call void %31(%struct._object* %call101) #2, !dbg !794
  br label %if.end.134

if.end.134:                                       ; preds = %do.body.124, %if.else.131
  %conv140 = sext i32 %n_unnamed_members.0.lcssa to i64, !dbg !797
  %call141 = tail call %struct._object* @PyLong_FromLong(i64 %conv140) #2, !dbg !797
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !420, metadata !619), !dbg !756
  %cmp142 = icmp eq %struct._object* %call141, null, !dbg !799
  br i1 %cmp142, label %cleanup, label %if.end.145, !dbg !801

if.end.145:                                       ; preds = %if.end.134
  %call146 = tail call i32 @PyDict_SetItemString(%struct._object* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @unnamed_fields_key, i64 0, i64 0), %struct._object* %call141) #2, !dbg !802
  %cmp147 = icmp slt i32 %call146, 0, !dbg !802
  %ob_refcnt152 = getelementptr inbounds %struct._object, %struct._object* %call141, i64 0, i32 0, !dbg !804
  %32 = load i64, i64* %ob_refcnt152, align 8, !dbg !804, !tbaa !750
  %dec153 = add i64 %32, -1, !dbg !804
  store i64 %dec153, i64* %ob_refcnt152, align 8, !dbg !804, !tbaa !750
  %cmp154 = icmp eq i64 %dec153, 0, !dbg !804
  br i1 %cmp147, label %do.body.150, label %do.body.164, !dbg !801

do.body.150:                                      ; preds = %if.end.145
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !435, metadata !619), !dbg !806
  br i1 %cmp154, label %if.else.157, label %cleanup, !dbg !808

if.else.157:                                      ; preds = %do.body.150
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %call141, i64 0, i32 1, !dbg !809
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8, !dbg !809, !tbaa !769
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !809
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8, !dbg !809, !tbaa !770
  tail call void %34(%struct._object* %call141) #2, !dbg !809
  br label %cleanup

do.body.164:                                      ; preds = %if.end.145
  tail call void @llvm.dbg.value(metadata %struct._object* %call141, i64 0, metadata !440, metadata !619), !dbg !811
  br i1 %cmp154, label %if.else.171, label %cleanup, !dbg !813

if.else.171:                                      ; preds = %do.body.164
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %call141, i64 0, i32 1, !dbg !814
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !814, !tbaa !769
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 4, !dbg !814
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !814, !tbaa !770
  tail call void %36(%struct._object* %call141) #2, !dbg !814
  br label %cleanup

cleanup:                                          ; preds = %if.else.171, %do.body.164, %if.else.157, %do.body.150, %if.end.134, %if.else.117, %do.body.110, %if.end.94, %if.else, %do.body.77, %if.end.65, %for.end.57, %if.then.15
  %retval.0 = phi i32 [ -1, %if.then.15 ], [ -1, %for.end.57 ], [ -1, %if.end.65 ], [ -1, %do.body.77 ], [ -1, %if.else ], [ -1, %if.end.94 ], [ -1, %do.body.110 ], [ -1, %if.else.117 ], [ -1, %if.end.134 ], [ -1, %do.body.150 ], [ -1, %if.else.157 ], [ 0, %do.body.164 ], [ 0, %if.else.171 ]
  ret i32 %retval.0, !dbg !817
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @PyStructSequence_InitType(%struct._typeobject* %type, %struct.PyStructSequence_Desc* nocapture readonly %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !446, metadata !619), !dbg !818
  tail call void @llvm.dbg.value(metadata %struct.PyStructSequence_Desc* %desc, i64 0, metadata !447, metadata !619), !dbg !819
  %call = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* %type, %struct.PyStructSequence_Desc* %desc), !dbg !820
  ret void, !dbg !821
}

; Function Attrs: nounwind uwtable
define %struct._typeobject* @PyStructSequence_NewType(%struct.PyStructSequence_Desc* nocapture readonly %desc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyStructSequence_Desc* %desc, i64 0, metadata !452, metadata !619), !dbg !822
  %call = tail call %struct._object* @PyType_GenericAlloc(%struct._typeobject* nonnull @PyType_Type, i64 0) #2, !dbg !823
  %0 = bitcast %struct._object* %call to %struct._typeobject*, !dbg !824
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %0, i64 0, metadata !453, metadata !619), !dbg !825
  %cmp = icmp eq %struct._object* %call, null, !dbg !826
  br i1 %cmp, label %cleanup, label %if.end, !dbg !828

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* %0, %struct.PyStructSequence_Desc* %desc), !dbg !829
  %cmp2 = icmp slt i32 %call1, 0, !dbg !830
  br i1 %cmp2, label %do.body, label %cleanup, !dbg !831

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !454, metadata !619), !dbg !832
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !834
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !834, !tbaa !750
  %dec = add i64 %1, -1, !dbg !834
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !834, !tbaa !750
  %cmp4 = icmp eq i64 %dec, 0, !dbg !834
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !836

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !837
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !837, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !837
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !837, !tbaa !770
  tail call void %3(%struct._object* %call) #2, !dbg !837
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else, %do.body, %entry
  %retval.0 = phi %struct._typeobject* [ null, %entry ], [ null, %do.body ], [ null, %if.else ], [ %0, %if.end ]
  ret %struct._typeobject* %retval.0, !dbg !839
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @_PyStructSequence_Init() #0 {
entry:
  %call = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyId_n_sequence_fields) #2, !dbg !840
  %cmp = icmp eq %struct._object* %call, null, !dbg !842
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !843

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !844
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !846
  br i1 %cmp2, label %return, label %lor.lhs.false.3, !dbg !847

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyId_n_unnamed_fields) #2, !dbg !848
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !849
  %. = sext i1 %cmp5 to i32, !dbg !850
  ret i32 %., !dbg !850

return:                                           ; preds = %entry, %lor.lhs.false
  ret i32 -1, !dbg !851
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #3

; Function Attrs: nounwind uwtable
define internal void @structseq_dealloc(%struct.PyTupleObject* %obj) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %obj, i64 0, metadata !465, metadata !619), !dbg !852
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %obj, i64 0, i32 0, i32 0, i32 1, !dbg !853
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !853, !tbaa !769
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 31, !dbg !853
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !853, !tbaa !622
  %call = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !853
  %call1 = tail call i64 @PyLong_AsLong(%struct._object* %call) #2, !dbg !853
  tail call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !467, metadata !619), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !466, metadata !619), !dbg !855
  %cmp.21 = icmp sgt i64 %call1, 0, !dbg !856
  br i1 %cmp.21, label %do.body.preheader, label %for.end, !dbg !857

do.body.preheader:                                ; preds = %entry
  br label %do.body, !dbg !858

do.body:                                          ; preds = %do.body.preheader, %if.end.7
  %i.022 = phi i64 [ %inc, %if.end.7 ], [ 0, %do.body.preheader ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %obj, i64 0, i32 1, i64 %i.022, !dbg !858
  %2 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !858, !tbaa !653
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !468, metadata !619), !dbg !858
  %cmp2 = icmp eq %struct._object* %2, null, !dbg !860
  br i1 %cmp2, label %if.end.7, label %do.body.3, !dbg !861

do.body.3:                                        ; preds = %do.body
  tail call void @llvm.dbg.value(metadata %struct._object* %2, i64 0, metadata !473, metadata !619), !dbg !862
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 0, !dbg !864
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !864, !tbaa !750
  %dec = add i64 %3, -1, !dbg !864
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !864, !tbaa !750
  %cmp4 = icmp eq i64 %dec, 0, !dbg !864
  br i1 %cmp4, label %if.else, label %if.end.7, !dbg !866

if.else:                                          ; preds = %do.body.3
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !867
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !867, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !867
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !867, !tbaa !770
  tail call void %5(%struct._object* %2) #2, !dbg !867
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %do.body.3, %do.body
  %inc = add nuw nsw i64 %i.022, 1, !dbg !869
  tail call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !466, metadata !619), !dbg !855
  %exitcond = icmp eq i64 %inc, %call1, !dbg !857
  br i1 %exitcond, label %for.end.loopexit, label %do.body, !dbg !857

for.end.loopexit:                                 ; preds = %if.end.7
  br label %for.end, !dbg !870

for.end:                                          ; preds = %for.end.loopexit, %entry
  %6 = bitcast %struct.PyTupleObject* %obj to i8*, !dbg !870
  tail call void @PyObject_GC_Del(i8* %6) #2, !dbg !871
  ret void, !dbg !872
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_repr(%struct.PyTupleObject* nocapture readonly %obj) #0 {
entry:
  %buf = alloca [512 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %obj, i64 0, metadata !480, metadata !619), !dbg !873
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %obj, i64 0, i32 0, i32 0, i32 1, !dbg !874
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !874, !tbaa !769
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %0, i64 0, metadata !481, metadata !619), !dbg !875
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !483, metadata !619), !dbg !876
  %1 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i64 0, i64 0, !dbg !877
  call void @llvm.lifetime.start(i64 512, i8* %1) #2, !dbg !877
  tail call void @llvm.dbg.declare(metadata [512 x i8]* %buf, metadata !485, metadata !619), !dbg !878
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !490, metadata !619), !dbg !879
  %arrayidx = getelementptr [512 x i8], [512 x i8]* %buf, i64 0, i64 507, !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %arrayidx, i64 0, metadata !489, metadata !619), !dbg !881
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !882
  %2 = load i8*, i8** %tp_name, align 8, !dbg !882, !tbaa !688
  %call = tail call i64 @strlen(i8* %2) #7, !dbg !883
  %cmp = icmp ugt i64 %call, 100, !dbg !884
  %.call = select i1 %cmp, i64 100, i64 %call, !dbg !883
  tail call void @llvm.dbg.value(metadata i64 %.call, i64 0, metadata !484, metadata !619), !dbg !885
  %call4 = call i8* @strncpy(i8* %1, i8* %2, i64 %.call) #2, !dbg !886
  %add.ptr = getelementptr [512 x i8], [512 x i8]* %buf, i64 0, i64 %.call, !dbg !887
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !490, metadata !619), !dbg !879
  store i8 40, i8* %add.ptr, align 1, !dbg !888, !tbaa !889
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !482, metadata !619), !dbg !890
  %pbuf.0.168 = getelementptr i8, i8* %add.ptr, i64 1, !dbg !891
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %obj, i64 0, i32 0, i32 1, !dbg !892
  %3 = load i64, i64* %ob_size, align 8, !dbg !892, !tbaa !639
  %cmp5.169 = icmp sgt i64 %3, 0, !dbg !893
  br i1 %cmp5.169, label %for.body.lr.ph, label %for.end, !dbg !894

for.body.lr.ph:                                   ; preds = %entry
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 28, !dbg !895
  br label %for.body, !dbg !894

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %conv173 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %4 = phi i8* [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr43, %for.inc ]
  %pbuf.0172 = phi i8* [ %pbuf.0.168, %for.body.lr.ph ], [ %pbuf.0, %for.inc ]
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %5 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !895, !tbaa !744
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %5, i64 %conv173, i32 0, !dbg !896
  %6 = load i8*, i8** %name, align 8, !dbg !896, !tbaa !718
  call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !496, metadata !619), !dbg !897
  %cmp8 = icmp eq i8* %6, null, !dbg !898
  br i1 %cmp8, label %if.then, label %if.end, !dbg !900

if.then:                                          ; preds = %for.body
  %i.0171.lcssa = phi i32 [ %i.0171, %for.body ]
  %7 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !901, !tbaa !653
  %8 = load i8*, i8** %tp_name, align 8, !dbg !903, !tbaa !688
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %i.0171.lcssa, i8* %8) #2, !dbg !904
  br label %cleanup.84, !dbg !905

if.end:                                           ; preds = %for.body
  %arrayidx13 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %obj, i64 0, i32 1, i64 %conv173, !dbg !906
  %9 = load %struct._object*, %struct._object** %arrayidx13, align 8, !dbg !906, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !491, metadata !619), !dbg !907
  %call14 = call %struct._object* @PyObject_Repr(%struct._object* %9) #2, !dbg !908
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !495, metadata !619), !dbg !909
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !910
  br i1 %cmp15, label %cleanup.84.loopexit, label %if.end.18, !dbg !912

if.end.18:                                        ; preds = %if.end
  %call19 = call i8* @PyUnicode_AsUTF8(%struct._object* %call14) #2, !dbg !913
  call void @llvm.dbg.value(metadata i8* %call19, i64 0, metadata !497, metadata !619), !dbg !914
  %cmp20 = icmp eq i8* %call19, null, !dbg !915
  br i1 %cmp20, label %do.body, label %if.end.28, !dbg !916

do.body:                                          ; preds = %if.end.18
  %call14.lcssa248 = phi %struct._object* [ %call14, %if.end.18 ]
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !498, metadata !619), !dbg !917
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call14.lcssa248, i64 0, i32 0, !dbg !919
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !919, !tbaa !750
  %dec = add i64 %10, -1, !dbg !919
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !919, !tbaa !750
  %cmp23 = icmp eq i64 %dec, 0, !dbg !919
  br i1 %cmp23, label %if.else, label %cleanup.84, !dbg !921

if.else:                                          ; preds = %do.body
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %call14.lcssa248, i64 0, i32 1, !dbg !922
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !922, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !922
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !922, !tbaa !770
  call void %12(%struct._object* %call14.lcssa248) #2, !dbg !922
  br label %cleanup.84

if.end.28:                                        ; preds = %if.end.18
  %13 = getelementptr i8, i8* %4, i64 1, !dbg !891
  %call29 = call i64 @strlen(i8* %6) #7, !dbg !924
  %call30 = call i64 @strlen(i8* %call19) #7, !dbg !925
  %add = add i64 %call29, 3, !dbg !926
  %add31 = add i64 %add, %call30, !dbg !927
  call void @llvm.dbg.value(metadata i64 %add31, i64 0, metadata !484, metadata !619), !dbg !885
  %add.ptr32 = getelementptr i8, i8* %13, i64 %add31, !dbg !928
  %cmp33 = icmp ugt i8* %add.ptr32, %arrayidx, !dbg !929
  br i1 %cmp33, label %if.else.58, label %if.then.35, !dbg !930

if.then.35:                                       ; preds = %if.end.28
  %14 = getelementptr i8, i8* %4, i64 1, !dbg !891
  %call36 = call i8* @strcpy(i8* %pbuf.0172, i8* %6) #2, !dbg !931
  %call37 = call i64 @strlen(i8* %6) #7, !dbg !932
  %add.ptr38 = getelementptr i8, i8* %14, i64 %call37, !dbg !933
  call void @llvm.dbg.value(metadata i8* %add.ptr38, i64 0, metadata !490, metadata !619), !dbg !879
  %incdec.ptr39 = getelementptr i8, i8* %add.ptr38, i64 1, !dbg !934
  call void @llvm.dbg.value(metadata i8* %incdec.ptr39, i64 0, metadata !490, metadata !619), !dbg !879
  store i8 61, i8* %add.ptr38, align 1, !dbg !935, !tbaa !889
  %call40 = call i8* @strcpy(i8* %incdec.ptr39, i8* %call19) #2, !dbg !936
  %call41 = call i64 @strlen(i8* %call19) #7, !dbg !937
  %add.ptr42 = getelementptr i8, i8* %incdec.ptr39, i64 %call41, !dbg !938
  call void @llvm.dbg.value(metadata i8* %add.ptr42, i64 0, metadata !490, metadata !619), !dbg !879
  %incdec.ptr43 = getelementptr i8, i8* %add.ptr42, i64 1, !dbg !939
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43, i64 0, metadata !490, metadata !619), !dbg !879
  store i8 44, i8* %add.ptr42, align 1, !dbg !940, !tbaa !889
  store i8 32, i8* %incdec.ptr43, align 1, !dbg !941, !tbaa !889
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !483, metadata !619), !dbg !876
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !502, metadata !619), !dbg !942
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 0, !dbg !944
  %15 = load i64, i64* %ob_refcnt47, align 8, !dbg !944, !tbaa !750
  %dec48 = add i64 %15, -1, !dbg !944
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !944, !tbaa !750
  %cmp49 = icmp eq i64 %dec48, 0, !dbg !944
  br i1 %cmp49, label %if.else.52, label %for.inc, !dbg !946

if.else.52:                                       ; preds = %if.then.35
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 1, !dbg !947
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8, !dbg !947, !tbaa !769
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !947
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8, !dbg !947, !tbaa !770
  call void %17(%struct._object* %call14) #2, !dbg !947
  br label %for.inc

if.else.58:                                       ; preds = %if.end.28
  %call14.lcssa249 = phi %struct._object* [ %call14, %if.end.28 ]
  %pbuf.0172.lcssa242 = phi i8* [ %pbuf.0172, %if.end.28 ]
  %.lcssa238 = phi i8* [ %4, %if.end.28 ]
  %18 = bitcast i8* %pbuf.0172.lcssa242 to i32*, !dbg !949
  store i32 3026478, i32* %18, align 1, !dbg !949
  %add.ptr60 = getelementptr i8, i8* %.lcssa238, i64 4, !dbg !950
  call void @llvm.dbg.value(metadata i8* %add.ptr60, i64 0, metadata !490, metadata !619), !dbg !879
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !483, metadata !619), !dbg !876
  call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !506, metadata !619), !dbg !951
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %call14.lcssa249, i64 0, i32 0, !dbg !953
  %19 = load i64, i64* %ob_refcnt63, align 8, !dbg !953, !tbaa !750
  %dec64 = add i64 %19, -1, !dbg !953
  store i64 %dec64, i64* %ob_refcnt63, align 8, !dbg !953, !tbaa !750
  %cmp65 = icmp eq i64 %dec64, 0, !dbg !953
  br i1 %cmp65, label %if.else.68, label %for.end, !dbg !955

if.else.68:                                       ; preds = %if.else.58
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %call14.lcssa249, i64 0, i32 1, !dbg !956
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !956, !tbaa !769
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !956
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !956, !tbaa !770
  call void %21(%struct._object* %call14.lcssa249) #2, !dbg !956
  br label %for.end

for.inc:                                          ; preds = %if.then.35, %if.else.52
  %inc = add i32 %i.0171, 1, !dbg !958
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !482, metadata !619), !dbg !890
  %pbuf.0 = getelementptr i8, i8* %incdec.ptr43, i64 1, !dbg !891
  %conv = sext i32 %inc to i64, !dbg !959
  %22 = load i64, i64* %ob_size, align 8, !dbg !892, !tbaa !639
  %cmp5 = icmp slt i64 %conv, %22, !dbg !893
  br i1 %cmp5, label %for.body, label %for.end.loopexit, !dbg !894

for.end.loopexit:                                 ; preds = %for.inc
  %pbuf.0.lcssa = phi i8* [ %pbuf.0, %for.inc ]
  br label %for.end, !dbg !962

for.end:                                          ; preds = %for.end.loopexit, %entry, %if.else.58, %if.else.68
  %pbuf.2 = phi i8* [ %add.ptr60, %if.else.58 ], [ %add.ptr60, %if.else.68 ], [ %pbuf.0.168, %entry ], [ %pbuf.0.lcssa, %for.end.loopexit ]
  %removelast.2 = phi i1 [ true, %if.else.58 ], [ true, %if.else.68 ], [ true, %entry ], [ false, %for.end.loopexit ]
  %add.ptr79 = getelementptr i8, i8* %pbuf.2, i64 -2, !dbg !962
  call void @llvm.dbg.value(metadata i8* %add.ptr79, i64 0, metadata !490, metadata !619), !dbg !879
  %pbuf.2.add.ptr79 = select i1 %removelast.2, i8* %pbuf.2, i8* %add.ptr79, !dbg !965
  %incdec.ptr81 = getelementptr i8, i8* %pbuf.2.add.ptr79, i64 1, !dbg !966
  call void @llvm.dbg.value(metadata i8* %incdec.ptr81, i64 0, metadata !490, metadata !619), !dbg !879
  store i8 41, i8* %pbuf.2.add.ptr79, align 1, !dbg !967, !tbaa !889
  store i8 0, i8* %incdec.ptr81, align 1, !dbg !968, !tbaa !889
  %call83 = call %struct._object* @PyUnicode_FromString(i8* %1) #2, !dbg !969
  br label %cleanup.84, !dbg !970

cleanup.84.loopexit:                              ; preds = %if.end
  br label %cleanup.84, !dbg !971

cleanup.84:                                       ; preds = %cleanup.84.loopexit, %if.else, %do.body, %if.then, %for.end
  %retval.2 = phi %struct._object* [ %call83, %for.end ], [ null, %if.then ], [ null, %do.body ], [ null, %if.else ], [ null, %cleanup.84.loopexit ]
  call void @llvm.lifetime.end(i64 512, i8* %1) #2, !dbg !971
  ret %struct._object* %retval.2, !dbg !971
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %arg = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !541, metadata !619), !dbg !972
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !542, metadata !619), !dbg !973
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !543, metadata !619), !dbg !974
  %0 = bitcast %struct._object** %arg to i8*, !dbg !975
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !975
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !544, metadata !619), !dbg !976
  store %struct._object* null, %struct._object** %arg, align 8, !dbg !976, !tbaa !653
  %1 = bitcast %struct._object** %dict to i8*, !dbg !977
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !977
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !545, metadata !619), !dbg !978
  store %struct._object* null, %struct._object** %dict, align 8, !dbg !978, !tbaa !653
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* null, i64 0, metadata !547, metadata !619), !dbg !979
  tail call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  tail call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !545, metadata !619), !dbg !978
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @structseq_new.kwlist, i64 0, i64 0), %struct._object** nonnull %arg, %struct._object** nonnull %dict) #2, !dbg !980
  %tobool = icmp eq i32 %call, 0, !dbg !980
  br i1 %tobool, label %cleanup, label %if.end, !dbg !982

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %2 = load %struct._object*, %struct._object** %arg, align 8, !dbg !983, !tbaa !653
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !984
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !544, metadata !619), !dbg !976
  store %struct._object* %call1, %struct._object** %arg, align 8, !dbg !985, !tbaa !653
  %tobool2 = icmp eq %struct._object* %call1, null, !dbg !986
  br i1 %tobool2, label %cleanup, label %if.end.4, !dbg !988

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !545, metadata !619), !dbg !978
  %3 = load %struct._object*, %struct._object** %dict, align 8, !dbg !989, !tbaa !653
  %tobool5 = icmp eq %struct._object* %3, null, !dbg !989
  br i1 %tobool5, label %if.end.12, label %land.lhs.true, !dbg !990

land.lhs.true:                                    ; preds = %if.end.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !991
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !991, !tbaa !769
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !991
  %5 = load i64, i64* %tp_flags, align 8, !dbg !991, !tbaa !993
  %and = and i64 %5, 536870912, !dbg !991
  %cmp = icmp eq i64 %and, 0, !dbg !991
  br i1 %cmp, label %if.then.6, label %if.end.12, !dbg !994

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !995, !tbaa !653
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 1, !dbg !996
  %7 = load i8*, i8** %tp_name, align 8, !dbg !996, !tbaa !688
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* %7) #2, !dbg !997
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %8 = load %struct._object*, %struct._object** %arg, align 8, !dbg !998, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !553, metadata !619), !dbg !998
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1000
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1000, !tbaa !750
  %dec = add i64 %9, -1, !dbg !1000
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1000, !tbaa !750
  %cmp8 = icmp eq i64 %dec, 0, !dbg !1000
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !1002

if.else:                                          ; preds = %if.then.6
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1003
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1003, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1003
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1003, !tbaa !770
  call void %11(%struct._object* %8) #2, !dbg !1003
  br label %cleanup

if.end.12:                                        ; preds = %land.lhs.true, %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %12 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, i32 0, !dbg !1005
  %13 = load i64, i64* %12, align 8, !dbg !1005, !tbaa !639
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !548, metadata !619), !dbg !1007
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 31, !dbg !1008
  %14 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1008, !tbaa !622
  %call18 = call %struct._object* @_PyDict_GetItemId(%struct._object* %14, %struct._Py_Identifier* nonnull @PyId_n_sequence_fields) #2, !dbg !1008
  %call19 = call i64 @PyLong_AsLong(%struct._object* %call18) #2, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %call19, i64 0, metadata !549, metadata !619), !dbg !1009
  %15 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1010, !tbaa !622
  %call21 = call %struct._object* @_PyDict_GetItemId(%struct._object* %15, %struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !1010
  %call22 = call i64 @PyLong_AsLong(%struct._object* %call21) #2, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %call22, i64 0, metadata !550, metadata !619), !dbg !1011
  %16 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1012, !tbaa !622
  %call24 = call %struct._object* @_PyDict_GetItemId(%struct._object* %16, %struct._Py_Identifier* nonnull @PyId_n_unnamed_fields) #2, !dbg !1012
  %call25 = call i64 @PyLong_AsLong(%struct._object* %call24) #2, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %call25, i64 0, metadata !552, metadata !619), !dbg !1013
  %cmp26 = icmp eq i64 %call19, %call22, !dbg !1014
  br i1 %cmp26, label %if.else.62, label %if.then.27, !dbg !1015

if.then.27:                                       ; preds = %if.end.12
  %cmp28 = icmp slt i64 %13, %call19, !dbg !1016
  br i1 %cmp28, label %if.then.29, label %if.end.44, !dbg !1017

if.then.29:                                       ; preds = %if.then.27
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1018, !tbaa !653
  %tp_name30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 1, !dbg !1019
  %18 = load i8*, i8** %tp_name30, align 8, !dbg !1019, !tbaa !688
  %call31 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i8* %18, i64 %call19, i64 %13) #2, !dbg !1020
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %19 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1021, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !557, metadata !619), !dbg !1021
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 0, !dbg !1023
  %20 = load i64, i64* %ob_refcnt34, align 8, !dbg !1023, !tbaa !750
  %dec35 = add i64 %20, -1, !dbg !1023
  store i64 %dec35, i64* %ob_refcnt34, align 8, !dbg !1023, !tbaa !750
  %cmp36 = icmp eq i64 %dec35, 0, !dbg !1023
  br i1 %cmp36, label %if.else.38, label %cleanup, !dbg !1025

if.else.38:                                       ; preds = %if.then.29
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !1026
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8, !dbg !1026, !tbaa !769
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !1026
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8, !dbg !1026, !tbaa !770
  call void %22(%struct._object* %19) #2, !dbg !1026
  br label %cleanup

if.end.44:                                        ; preds = %if.then.27
  %cmp45 = icmp sgt i64 %13, %call22, !dbg !1028
  br i1 %cmp45, label %if.then.46, label %if.end.80, !dbg !1029

if.then.46:                                       ; preds = %if.end.44
  %23 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1030, !tbaa !653
  %tp_name47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 1, !dbg !1031
  %24 = load i8*, i8** %tp_name47, align 8, !dbg !1031, !tbaa !688
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i8* %24, i64 %call22, i64 %13) #2, !dbg !1032
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %25 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1033, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !563, metadata !619), !dbg !1033
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !1035
  %26 = load i64, i64* %ob_refcnt51, align 8, !dbg !1035, !tbaa !750
  %dec52 = add i64 %26, -1, !dbg !1035
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1035, !tbaa !750
  %cmp53 = icmp eq i64 %dec52, 0, !dbg !1035
  br i1 %cmp53, label %if.else.55, label %cleanup, !dbg !1037

if.else.55:                                       ; preds = %if.then.46
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !1038
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1038, !tbaa !769
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !1038
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1038, !tbaa !770
  call void %28(%struct._object* %25) #2, !dbg !1038
  br label %cleanup

if.else.62:                                       ; preds = %if.end.12
  %cmp63 = icmp eq i64 %13, %call19, !dbg !1040
  br i1 %cmp63, label %if.end.80, label %if.then.64, !dbg !1041

if.then.64:                                       ; preds = %if.else.62
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1042, !tbaa !653
  %tp_name65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 1, !dbg !1043
  %30 = load i8*, i8** %tp_name65, align 8, !dbg !1043, !tbaa !688
  %call66 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i8* %30, i64 %call19, i64 %13) #2, !dbg !1044
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %31 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1045, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %31, i64 0, metadata !567, metadata !619), !dbg !1045
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 0, !dbg !1047
  %32 = load i64, i64* %ob_refcnt69, align 8, !dbg !1047, !tbaa !750
  %dec70 = add i64 %32, -1, !dbg !1047
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1047, !tbaa !750
  %cmp71 = icmp eq i64 %dec70, 0, !dbg !1047
  br i1 %cmp71, label %if.else.73, label %cleanup, !dbg !1049

if.else.73:                                       ; preds = %if.then.64
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %31, i64 0, i32 1, !dbg !1050
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !1050, !tbaa !769
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !1050
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !1050, !tbaa !770
  call void %34(%struct._object* %31) #2, !dbg !1050
  br label %cleanup

if.end.80:                                        ; preds = %if.else.62, %if.end.44
  call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !380, metadata !619) #2, !dbg !1052
  %35 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1054, !tbaa !622
  %call.i = call %struct._object* @_PyDict_GetItemId(%struct._object* %35, %struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !1054
  %call1.i = call i64 @PyLong_AsLong(%struct._object* %call.i) #2, !dbg !1054
  call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !382, metadata !619) #2, !dbg !1055
  %call2.i = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %type, i64 %call1.i) #2, !dbg !1056
  %cmp.i = icmp eq %struct.PyVarObject* %call2.i, null, !dbg !1057
  br i1 %cmp.i, label %do.body.84, label %if.end.i, !dbg !1058

if.end.i:                                         ; preds = %if.end.80
  %36 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1059, !tbaa !622
  %call4.i = call %struct._object* @_PyDict_GetItemId(%struct._object* %36, %struct._Py_Identifier* nonnull @PyId_n_sequence_fields) #2, !dbg !1059
  %call5.i = call i64 @PyLong_AsLong(%struct._object* %call4.i) #2, !dbg !1059
  %ob_size.i = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call2.i, i64 0, i32 1, !dbg !1060
  store i64 %call5.i, i64* %ob_size.i, align 8, !dbg !1061, !tbaa !639
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !383, metadata !619) #2, !dbg !1062
  %cmp6.20.i = icmp sgt i64 %call1.i, 0, !dbg !1063
  br i1 %cmp6.20.i, label %for.body.lr.ph.i, label %for.cond.preheader, !dbg !1064

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %scevgep.i = getelementptr %struct.PyVarObject, %struct.PyVarObject* %call2.i, i64 1, !dbg !1064
  %scevgep22.i = bitcast %struct.PyVarObject* %scevgep.i to i8*, !dbg !1065
  %37 = shl i64 %call1.i, 3, !dbg !1064
  call void @llvm.memset.p0i8.i64(i8* %scevgep22.i, i8 0, i64 %37, i32 8, i1 false) #2, !dbg !1066
  br label %for.cond.preheader, !dbg !1064

for.cond.preheader:                               ; preds = %for.body.lr.ph.i, %if.end.i
  %38 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %call2.i, i64 0, i32 0, !dbg !1067
  %cmp97.210 = icmp sgt i64 %13, 0, !dbg !1068
  br i1 %cmp97.210, label %for.body.lr.ph, label %for.cond.112.preheader, !dbg !1069

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ob_item109 = getelementptr inbounds %struct._object, %struct._object* %38, i64 1, i32 1, !dbg !1070
  %39 = bitcast %struct._typeobject** %ob_item109 to [1 x %struct._object*]*, !dbg !1070
  br label %for.body, !dbg !1069

do.body.84:                                       ; preds = %if.end.80
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %40 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1071, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !572, metadata !619), !dbg !1071
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 0, !dbg !1073
  %41 = load i64, i64* %ob_refcnt86, align 8, !dbg !1073, !tbaa !750
  %dec87 = add i64 %41, -1, !dbg !1073
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !1073, !tbaa !750
  %cmp88 = icmp eq i64 %dec87, 0, !dbg !1073
  br i1 %cmp88, label %if.else.90, label %cleanup, !dbg !1075

if.else.90:                                       ; preds = %do.body.84
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 1, !dbg !1076
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8, !dbg !1076, !tbaa !769
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !1076
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8, !dbg !1076, !tbaa !770
  call void %43(%struct._object* %40) #2, !dbg !1076
  br label %cleanup

for.cond.112.preheader.loopexit:                  ; preds = %cond.end.106
  br label %for.cond.112.preheader, !dbg !1078

for.cond.112.preheader:                           ; preds = %for.cond.112.preheader.loopexit, %for.cond.preheader
  %i.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %13, %for.cond.112.preheader.loopexit ]
  %cmp113.208 = icmp slt i64 %i.0.lcssa, %call22, !dbg !1078
  br i1 %cmp113.208, label %for.body.114.lr.ph, label %do.body.130, !dbg !1081

for.body.114.lr.ph:                               ; preds = %for.cond.112.preheader
  %ob_item125 = getelementptr inbounds %struct._object, %struct._object* %38, i64 1, i32 1, !dbg !1082
  %44 = bitcast %struct._typeobject** %ob_item125 to [1 x %struct._object*]*, !dbg !1082
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 28, !dbg !1084
  br label %for.body.114, !dbg !1081

for.body:                                         ; preds = %cond.end.106, %for.body.lr.ph
  %i.0211 = phi i64 [ 0, %for.body.lr.ph ], [ %inc111, %cond.end.106 ]
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %45 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1086, !tbaa !653
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %45, i64 0, i32 1, !dbg !1086
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !1086, !tbaa !769
  %tp_flags99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i64 0, i32 19, !dbg !1086
  %47 = load i64, i64* %tp_flags99, align 8, !dbg !1086, !tbaa !993
  %and100 = and i64 %47, 33554432, !dbg !1086
  %cmp101 = icmp eq i64 %and100, 0, !dbg !1086
  %ob_item104 = getelementptr inbounds %struct._object, %struct._object* %45, i64 1, i32 1, !dbg !1087
  br i1 %cmp101, label %cond.false.103, label %cond.true.102, !dbg !1086

cond.true.102:                                    ; preds = %for.body
  %48 = bitcast %struct._typeobject** %ob_item104 to %struct._object***, !dbg !1089
  %49 = load %struct._object**, %struct._object*** %48, align 8, !dbg !1089, !tbaa !1091
  %arrayidx = getelementptr %struct._object*, %struct._object** %49, i64 %i.0211, !dbg !1089
  br label %cond.end.106, !dbg !1089

cond.false.103:                                   ; preds = %for.body
  %50 = bitcast %struct._typeobject** %ob_item104 to [1 x %struct._object*]*, !dbg !1087
  %arrayidx105 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %50, i64 0, i64 %i.0211, !dbg !1087
  br label %cond.end.106, !dbg !1087

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.102
  %cond107.in = phi %struct._object** [ %arrayidx, %cond.true.102 ], [ %arrayidx105, %cond.false.103 ]
  %cond107 = load %struct._object*, %struct._object** %cond107.in, align 8, !dbg !1086
  call void @llvm.dbg.value(metadata %struct._object* %cond107, i64 0, metadata !576, metadata !619), !dbg !1093
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %cond107, i64 0, i32 0, !dbg !1094
  %51 = load i64, i64* %ob_refcnt108, align 8, !dbg !1094, !tbaa !750
  %inc = add i64 %51, 1, !dbg !1094
  store i64 %inc, i64* %ob_refcnt108, align 8, !dbg !1094, !tbaa !750
  %arrayidx110 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %39, i64 0, i64 %i.0211, !dbg !1095
  store %struct._object* %cond107, %struct._object** %arrayidx110, align 8, !dbg !1096, !tbaa !653
  %inc111 = add nuw nsw i64 %i.0211, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %inc111, i64 0, metadata !551, metadata !619), !dbg !1098
  %exitcond212 = icmp eq i64 %inc111, %13, !dbg !1069
  br i1 %exitcond212, label %for.cond.112.preheader.loopexit, label %for.body, !dbg !1069

for.body.114:                                     ; preds = %if.end.122, %for.body.114.lr.ph
  %i.1209 = phi i64 [ %i.0.lcssa, %for.body.114.lr.ph ], [ %inc128, %if.end.122 ]
  call void @llvm.dbg.value(metadata %struct._object** %dict, i64 0, metadata !545, metadata !619), !dbg !978
  %52 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1099, !tbaa !653
  %tobool115 = icmp eq %struct._object* %52, null, !dbg !1099
  br i1 %tobool115, label %if.else.121, label %land.lhs.true.116, !dbg !1100

land.lhs.true.116:                                ; preds = %for.body.114
  %sub = sub i64 %i.1209, %call25, !dbg !1101
  %53 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !1084, !tbaa !744
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %53, i64 %sub, i32 0, !dbg !1102
  %54 = load i8*, i8** %name, align 8, !dbg !1102, !tbaa !718
  %call118 = call %struct._object* @PyDict_GetItemString(%struct._object* %52, i8* %54) #2, !dbg !1103
  call void @llvm.dbg.value(metadata %struct._object* %call118, i64 0, metadata !546, metadata !619), !dbg !1104
  %tobool119 = icmp eq %struct._object* %call118, null, !dbg !1105
  br i1 %tobool119, label %if.else.121, label %if.end.122, !dbg !1106

if.else.121:                                      ; preds = %land.lhs.true.116, %for.body.114
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !546, metadata !619), !dbg !1104
  br label %if.end.122

if.end.122:                                       ; preds = %land.lhs.true.116, %if.else.121
  %ob.0 = phi %struct._object* [ %call118, %land.lhs.true.116 ], [ @_Py_NoneStruct, %if.else.121 ]
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %ob.0, i64 0, i32 0, !dbg !1107
  %55 = load i64, i64* %ob_refcnt123, align 8, !dbg !1107, !tbaa !750
  %inc124 = add i64 %55, 1, !dbg !1107
  store i64 %inc124, i64* %ob_refcnt123, align 8, !dbg !1107, !tbaa !750
  %arrayidx126 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %44, i64 0, i64 %i.1209, !dbg !1108
  store %struct._object* %ob.0, %struct._object** %arrayidx126, align 8, !dbg !1109, !tbaa !653
  %inc128 = add nsw i64 %i.1209, 1, !dbg !1110
  call void @llvm.dbg.value(metadata i64 %inc128, i64 0, metadata !551, metadata !619), !dbg !1098
  %exitcond = icmp eq i64 %inc128, %call22, !dbg !1081
  br i1 %exitcond, label %do.body.130.loopexit, label %for.body.114, !dbg !1081

do.body.130.loopexit:                             ; preds = %if.end.122
  br label %do.body.130, !dbg !976

do.body.130:                                      ; preds = %do.body.130.loopexit, %for.cond.112.preheader
  call void @llvm.dbg.value(metadata %struct._object** %arg, i64 0, metadata !544, metadata !619), !dbg !976
  %56 = load %struct._object*, %struct._object** %arg, align 8, !dbg !1111, !tbaa !653
  call void @llvm.dbg.value(metadata %struct._object* %56, i64 0, metadata !580, metadata !619), !dbg !1111
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %56, i64 0, i32 0, !dbg !1113
  %57 = load i64, i64* %ob_refcnt132, align 8, !dbg !1113, !tbaa !750
  %dec133 = add i64 %57, -1, !dbg !1113
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !1113, !tbaa !750
  %cmp134 = icmp eq i64 %dec133, 0, !dbg !1113
  br i1 %cmp134, label %if.else.136, label %cleanup, !dbg !1115

if.else.136:                                      ; preds = %do.body.130
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %56, i64 0, i32 1, !dbg !1116
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8, !dbg !1116, !tbaa !769
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i64 0, i32 4, !dbg !1116
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8, !dbg !1116, !tbaa !770
  call void %59(%struct._object* %56) #2, !dbg !1116
  br label %cleanup

cleanup:                                          ; preds = %if.else.136, %do.body.130, %if.else.90, %do.body.84, %if.else.73, %if.then.64, %if.else.55, %if.then.46, %if.else.38, %if.then.29, %if.else, %if.then.6, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.then.6 ], [ null, %if.else ], [ null, %if.then.29 ], [ null, %if.else.38 ], [ null, %if.then.46 ], [ null, %if.else.55 ], [ null, %if.then.64 ], [ null, %if.else.73 ], [ null, %do.body.84 ], [ null, %if.else.90 ], [ %38, %do.body.130 ], [ %38, %if.else.136 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1118
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1118
  ret %struct._object* %retval.0, !dbg !1118
}

declare void @PyObject_GC_Del(i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #6

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyObject_Repr(%struct._object*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #6

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @structseq_reduce(%struct.PyTupleObject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyTupleObject* %self, i64 0, metadata !511, metadata !619), !dbg !1119
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !512, metadata !619), !dbg !1120
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !513, metadata !619), !dbg !1121
  %ob_type = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 0, i32 1, !dbg !1122
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1122, !tbaa !769
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 31, !dbg !1122
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !1122, !tbaa !622
  %call = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* nonnull @PyId_n_fields) #2, !dbg !1122
  %call1 = tail call i64 @PyLong_AsLong(%struct._object* %call) #2, !dbg !1122
  tail call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !515, metadata !619), !dbg !1123
  %ob_size = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 0, i32 1, !dbg !1124
  %2 = load i64, i64* %ob_size, align 8, !dbg !1124, !tbaa !639
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !516, metadata !619), !dbg !1125
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1126, !tbaa !769
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 31, !dbg !1126
  %4 = load %struct._object*, %struct._object** %tp_dict3, align 8, !dbg !1126, !tbaa !622
  %call4 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %4, %struct._Py_Identifier* nonnull @PyId_n_unnamed_fields) #2, !dbg !1126
  %call5 = tail call i64 @PyLong_AsLong(%struct._object* %call4) #2, !dbg !1126
  tail call void @llvm.dbg.value(metadata i64 %call5, i64 0, metadata !517, metadata !619), !dbg !1127
  %call6 = tail call %struct._object* @PyTuple_New(i64 %2) #2, !dbg !1128
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !512, metadata !619), !dbg !1120
  %tobool = icmp eq %struct._object* %call6, null, !dbg !1129
  br i1 %tobool, label %cleanup.100, label %if.end, !dbg !1131

if.end:                                           ; preds = %entry
  %call7 = tail call %struct._object* @PyDict_New() #2, !dbg !1132
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !513, metadata !619), !dbg !1121
  %tobool8 = icmp eq %struct._object* %call7, null, !dbg !1133
  br i1 %tobool8, label %do.body.63, label %for.cond.preheader, !dbg !1135

for.cond.preheader:                               ; preds = %if.end
  %cmp.163 = icmp sgt i64 %2, 0, !dbg !1136
  br i1 %cmp.163, label %for.body.lr.ph, label %for.cond.19.preheader, !dbg !1139

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ob_item16 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 1, i32 1, !dbg !1140
  %5 = bitcast %struct._typeobject** %ob_item16 to [1 x %struct._object*]*, !dbg !1140
  br label %for.body, !dbg !1139

for.cond.19.preheader.loopexit:                   ; preds = %for.body
  %inc18.lcssa = phi i32 [ %inc18, %for.body ]
  br label %for.cond.19.preheader, !dbg !1142

for.cond.19.preheader:                            ; preds = %for.cond.19.preheader.loopexit, %for.cond.preheader
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc18.lcssa, %for.cond.19.preheader.loopexit ]
  %conv20.159 = sext i32 %i.0.lcssa to i64, !dbg !1142
  %cmp21.160 = icmp slt i64 %conv20.159, %call1, !dbg !1145
  br i1 %cmp21.160, label %for.body.23.preheader, label %for.end.37, !dbg !1146

for.body.23.preheader:                            ; preds = %for.cond.19.preheader
  br label %for.body.23, !dbg !1147

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %conv165 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.body ]
  %i.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %for.body ]
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %conv165, !dbg !1148
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1148, !tbaa !653
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1148
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1148, !tbaa !750
  %inc = add i64 %7, 1, !dbg !1148
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1148, !tbaa !750
  %8 = ptrtoint %struct._object* %6 to i64, !dbg !1140
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %5, i64 0, i64 %conv165, !dbg !1140
  %9 = bitcast %struct._object** %arrayidx17 to i64*, !dbg !1140
  store i64 %8, i64* %9, align 8, !dbg !1140, !tbaa !653
  %inc18 = add i32 %i.0164, 1, !dbg !1149
  tail call void @llvm.dbg.value(metadata i32 %inc18, i64 0, metadata !518, metadata !619), !dbg !1150
  %conv = sext i32 %inc18 to i64, !dbg !1151
  %cmp = icmp slt i64 %conv, %2, !dbg !1136
  br i1 %cmp, label %for.body, label %for.cond.19.preheader.loopexit, !dbg !1139

for.cond.19:                                      ; preds = %for.body.23
  %conv20 = sext i32 %inc36 to i64, !dbg !1142
  %cmp21 = icmp slt i64 %conv20, %call1, !dbg !1145
  br i1 %cmp21, label %for.body.23, label %for.end.37.loopexit, !dbg !1146

for.body.23:                                      ; preds = %for.body.23.preheader, %for.cond.19
  %conv20162 = phi i64 [ %conv20, %for.cond.19 ], [ %conv20.159, %for.body.23.preheader ]
  %i.1161 = phi i32 [ %inc36, %for.cond.19 ], [ %i.0.lcssa, %for.body.23.preheader ]
  %sub = sub i64 %conv20162, %call5, !dbg !1147
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1154, !tbaa !769
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 28, !dbg !1155
  %11 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8, !dbg !1155, !tbaa !744
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %11, i64 %sub, i32 0, !dbg !1156
  %12 = load i8*, i8** %name, align 8, !dbg !1156, !tbaa !718
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !519, metadata !619), !dbg !1157
  %arrayidx29 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %self, i64 0, i32 1, i64 %conv20162, !dbg !1158
  %13 = load %struct._object*, %struct._object** %arrayidx29, align 8, !dbg !1158, !tbaa !653
  %call30 = tail call i32 @PyDict_SetItemString(%struct._object* %call7, i8* %12, %struct._object* %13) #2, !dbg !1160
  %cmp31 = icmp slt i32 %call30, 0, !dbg !1161
  %inc36 = add i32 %i.1161, 1, !dbg !1162
  tail call void @llvm.dbg.value(metadata i32 %inc36, i64 0, metadata !518, metadata !619), !dbg !1150
  br i1 %cmp31, label %do.body.63.loopexit, label %for.cond.19

for.end.37.loopexit:                              ; preds = %for.cond.19
  br label %for.end.37, !dbg !1163

for.end.37:                                       ; preds = %for.end.37.loopexit, %for.cond.19.preheader
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1163, !tbaa !769
  %call39 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct._typeobject* %14, %struct._object* %call6, %struct._object* %call7) #2, !dbg !1164
  tail call void @llvm.dbg.value(metadata %struct._object* %call39, i64 0, metadata !514, metadata !619), !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !523, metadata !619), !dbg !1166
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1168
  %15 = load i64, i64* %ob_refcnt40, align 8, !dbg !1168, !tbaa !750
  %dec = add i64 %15, -1, !dbg !1168
  store i64 %dec, i64* %ob_refcnt40, align 8, !dbg !1168, !tbaa !750
  %cmp41 = icmp eq i64 %dec, 0, !dbg !1168
  br i1 %cmp41, label %if.else, label %if.end.45, !dbg !1170

if.else:                                          ; preds = %for.end.37
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !1171
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1171, !tbaa !769
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1171
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1171, !tbaa !770
  tail call void %17(%struct._object* %call6) #2, !dbg !1171
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.37, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !525, metadata !619), !dbg !1173
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !1175
  %18 = load i64, i64* %ob_refcnt48, align 8, !dbg !1175, !tbaa !750
  %dec49 = add i64 %18, -1, !dbg !1175
  store i64 %dec49, i64* %ob_refcnt48, align 8, !dbg !1175, !tbaa !750
  %cmp50 = icmp eq i64 %dec49, 0, !dbg !1175
  br i1 %cmp50, label %if.else.53, label %cleanup.100, !dbg !1177

if.else.53:                                       ; preds = %if.end.45
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !1178
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8, !dbg !1178, !tbaa !769
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1178
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8, !dbg !1178, !tbaa !770
  tail call void %20(%struct._object* %call7) #2, !dbg !1178
  br label %cleanup.100

do.body.63.loopexit:                              ; preds = %for.body.23
  br label %do.body.63, !dbg !1180

do.body.63:                                       ; preds = %do.body.63.loopexit, %if.end
  %dict.0156 = phi %struct._object* [ null, %if.end ], [ %call7, %do.body.63.loopexit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !529, metadata !619), !dbg !1180
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1182
  %21 = load i64, i64* %ob_refcnt65, align 8, !dbg !1182, !tbaa !750
  %dec66 = add i64 %21, -1, !dbg !1182
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !1182, !tbaa !750
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !1182
  br i1 %cmp67, label %if.else.70, label %if.end.76, !dbg !1184

if.else.70:                                       ; preds = %do.body.63
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !1185
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !1185, !tbaa !769
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !1185
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !1185, !tbaa !770
  tail call void %23(%struct._object* %call6) #2, !dbg !1185
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %do.body.63
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !532, metadata !619), !dbg !1187
  %cmp81 = icmp eq %struct._object* %dict.0156, null, !dbg !1189
  br i1 %cmp81, label %cleanup.100, label %do.body.84, !dbg !1190

do.body.84:                                       ; preds = %if.end.76
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !534, metadata !619), !dbg !1191
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %dict.0156, i64 0, i32 0, !dbg !1193
  %24 = load i64, i64* %ob_refcnt86, align 8, !dbg !1193, !tbaa !750
  %dec87 = add i64 %24, -1, !dbg !1193
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !1193, !tbaa !750
  %cmp88 = icmp eq i64 %dec87, 0, !dbg !1193
  br i1 %cmp88, label %if.else.91, label %cleanup.100, !dbg !1195

if.else.91:                                       ; preds = %do.body.84
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %dict.0156, i64 0, i32 1, !dbg !1196
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !1196, !tbaa !769
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !1196
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !1196, !tbaa !770
  tail call void %26(%struct._object* %dict.0156) #2, !dbg !1196
  br label %cleanup.100

cleanup.100:                                      ; preds = %entry, %if.end.76, %do.body.84, %if.else.91, %if.else.53, %if.end.45
  %retval.0 = phi %struct._object* [ %call39, %if.end.45 ], [ %call39, %if.else.53 ], [ null, %if.else.91 ], [ null, %do.body.84 ], [ null, %if.end.76 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1198
}

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyDict_New() #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!616, !617}
!llvm.ident = !{!618}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !375, globals: !582)
!1 = !DIFile(filename: "Objects/structseq.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !96, !360, !44, !361, !101, !21, !362, !27, !364, !366}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence", file: !6, line: 35, baseType: !7)
!6 = !DIFile(filename: "Include/structseq.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !8, line: 33, baseType: !9)
!8 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 25, size: 256, align: 64, elements: !10)
!10 = !{!11, !358}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !9, file: !8, line: 26, baseType: !12, size: 192, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !14)
!13 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !15)
!15 = !{!16, !357}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !14, file: !13, line: 112, baseType: !17, size: 128, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !19)
!19 = !{!20, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !18, file: !13, line: 107, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !22, line: 177, baseType: !23)
!22 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !24, line: 102, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !26, line: 181, baseType: !27)
!26 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!54 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!102 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !34, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !50, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !30, file: !13, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !298, line: 18, size: 320, align: 64, elements: !299)
!298 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !298, line: 19, baseType: !58, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !298, line: 20, baseType: !50, size: 32, align: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !297, file: !298, line: 21, baseType: !21, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !298, line: 22, baseType: !50, size: 32, align: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !297, file: !298, line: 23, baseType: !58, size: 64, align: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !30, file: !13, line: 391, baseType: !306, size: 64, align: 64, offset: 1984)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !308, line: 11, size: 320, align: 64, elements: !309)
!308 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!368 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 23, size: 320, align: 64, elements: !370)
!370 = !{!371, !372, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !369, file: !368, line: 24, baseType: !12, size: 192, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !369, file: !368, line: 26, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !369, file: !368, line: 39, baseType: !21, size: 64, align: 64, offset: 256)
!375 = !{!376, !384, !391, !395, !442, !448, !458, !461, !476, !509, !537}
!376 = !DISubprogram(name: "PyStructSequence_New", scope: !1, file: !1, line: 32, type: !377, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*)* @PyStructSequence_New, variables: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!44, !364}
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !376, file: !1, line: 32, type: !364)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !376, file: !1, line: 34, type: !4)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !376, file: !1, line: 35, type: !21)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !376, file: !1, line: 35, type: !21)
!384 = !DISubprogram(name: "PyStructSequence_SetItem", scope: !1, file: !1, line: 50, type: !385, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*, i64, %struct._object*)* @PyStructSequence_SetItem, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !44, !21, !44}
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !384, file: !1, line: 50, type: !44)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !384, file: !1, line: 50, type: !21)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !384, file: !1, line: 50, type: !44)
!391 = !DISubprogram(name: "PyStructSequence_GetItem", scope: !1, file: !1, line: 56, type: !191, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64)* @PyStructSequence_GetItem, variables: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !391, file: !1, line: 56, type: !44)
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i", arg: 2, scope: !391, file: !1, line: 56, type: !21)
!395 = !DISubprogram(name: "PyStructSequence_InitType2", scope: !1, file: !1, line: 324, type: !396, isLocal: false, isDefinition: true, scopeLine: 325, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._typeobject*, %struct.PyStructSequence_Desc*)* @PyStructSequence_InitType2, variables: !411)
!396 = !DISubroutineType(types: !397)
!397 = !{!50, !364, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !6, line: 20, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !6, line: 15, size: 256, align: 64, elements: !401)
!401 = !{!402, !403, !404, !410}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !6, line: 16, baseType: !58, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !400, file: !6, line: 17, baseType: !58, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !400, file: !6, line: 18, baseType: !405, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !6, line: 10, size: 128, align: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !6, line: 11, baseType: !58, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !406, file: !6, line: 12, baseType: !58, size: 64, align: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !400, file: !6, line: 19, baseType: !50, size: 32, align: 32, offset: 192)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !426, !428, !433, !435, !440}
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !395, file: !1, line: 324, type: !364)
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 2, scope: !395, file: !1, line: 324, type: !398)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !395, file: !1, line: 326, type: !44)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "members", scope: !395, file: !1, line: 327, type: !362)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_members", scope: !395, file: !1, line: 328, type: !50)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_members", scope: !395, file: !1, line: 328, type: !50)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !395, file: !1, line: 328, type: !50)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !395, file: !1, line: 328, type: !50)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !395, file: !1, line: 329, type: !44)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !422, file: !1, line: 388, type: !44)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 388, column: 5)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 388, column: 5)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 388, column: 5)
!425 = distinct !DILexicalBlock(scope: !395, file: !1, line: 388, column: 5)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !427, file: !1, line: 388, type: !44)
!427 = distinct !DILexicalBlock(scope: !425, file: !1, line: 388, column: 5)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !429, file: !1, line: 389, type: !44)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 389, column: 5)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 389, column: 5)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 389, column: 5)
!432 = distinct !DILexicalBlock(scope: !395, file: !1, line: 389, column: 5)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !1, line: 389, type: !44)
!434 = distinct !DILexicalBlock(scope: !432, file: !1, line: 389, column: 5)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !436, file: !1, line: 390, type: !44)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 390, column: 5)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 390, column: 5)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 390, column: 5)
!439 = distinct !DILexicalBlock(scope: !395, file: !1, line: 390, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 390, type: !44)
!441 = distinct !DILexicalBlock(scope: !439, file: !1, line: 390, column: 5)
!442 = !DISubprogram(name: "PyStructSequence_InitType", scope: !1, file: !1, line: 396, type: !443, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._typeobject*, %struct.PyStructSequence_Desc*)* @PyStructSequence_InitType, variables: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !364, !398}
!445 = !{!446, !447}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !442, file: !1, line: 396, type: !364)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 2, scope: !442, file: !1, line: 396, type: !398)
!448 = !DISubprogram(name: "PyStructSequence_NewType", scope: !1, file: !1, line: 402, type: !449, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, function: %struct._typeobject* (%struct.PyStructSequence_Desc*)* @PyStructSequence_NewType, variables: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!364, !398}
!451 = !{!452, !453, !454}
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "desc", arg: 1, scope: !448, file: !1, line: 402, type: !398)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !448, file: !1, line: 404, type: !364)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !1, line: 410, type: !44)
!455 = distinct !DILexicalBlock(scope: !456, file: !1, line: 410, column: 9)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 409, column: 55)
!457 = distinct !DILexicalBlock(scope: !448, file: !1, line: 409, column: 9)
!458 = !DISubprogram(name: "_PyStructSequence_Init", scope: !1, file: !1, line: 416, type: !459, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyStructSequence_Init, variables: !2)
!459 = !DISubroutineType(types: !460)
!460 = !{!50}
!461 = !DISubprogram(name: "structseq_dealloc", scope: !1, file: !1, line: 62, type: !462, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyTupleObject*)* @structseq_dealloc, variables: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !4}
!464 = !{!465, !466, !467, !468, !473}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !461, file: !1, line: 62, type: !4)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !461, file: !1, line: 64, type: !21)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !461, file: !1, line: 64, type: !21)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !469, file: !1, line: 68, type: !44)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 68, column: 9)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 67, column: 32)
!471 = distinct !DILexicalBlock(scope: !472, file: !1, line: 67, column: 5)
!472 = distinct !DILexicalBlock(scope: !461, file: !1, line: 67, column: 5)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !474, file: !1, line: 68, type: !44)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 68, column: 9)
!475 = distinct !DILexicalBlock(scope: !469, file: !1, line: 68, column: 9)
!476 = !DISubprogram(name: "structseq_repr", scope: !1, file: !1, line: 160, type: !477, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @structseq_repr, variables: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!44, !4}
!479 = !{!480, !481, !482, !483, !484, !485, !489, !490, !491, !495, !496, !497, !498, !502, !506}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !476, file: !1, line: 160, type: !4)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typ", scope: !476, file: !1, line: 166, type: !364)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !476, file: !1, line: 167, type: !50)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "removelast", scope: !476, file: !1, line: 167, type: !50)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !476, file: !1, line: 168, type: !21)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !476, file: !1, line: 169, type: !486)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4096, align: 8, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 512)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endofbuf", scope: !476, file: !1, line: 170, type: !58)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !476, file: !1, line: 170, type: !58)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !492, file: !1, line: 183, type: !44)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 182, column: 43)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 182, column: 5)
!494 = distinct !DILexicalBlock(scope: !476, file: !1, line: 182, column: 5)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "repr", scope: !492, file: !1, line: 183, type: !44)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cname", scope: !492, file: !1, line: 184, type: !58)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crepr", scope: !492, file: !1, line: 184, type: !58)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !499, file: !1, line: 198, type: !44)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 198, column: 13)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 197, column: 28)
!501 = distinct !DILexicalBlock(scope: !492, file: !1, line: 197, column: 13)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !503, file: !1, line: 213, type: !44)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 213, column: 13)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 204, column: 37)
!505 = distinct !DILexicalBlock(scope: !492, file: !1, line: 204, column: 13)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !507, file: !1, line: 219, type: !44)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 219, column: 13)
!508 = distinct !DILexicalBlock(scope: !505, file: !1, line: 215, column: 14)
!509 = !DISubprogram(name: "structseq_reduce", scope: !1, file: !1, line: 234, type: !477, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyTupleObject*)* @structseq_reduce, variables: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !523, !525, !527, !529, !532, !534}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !509, file: !1, line: 234, type: !4)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !509, file: !1, line: 236, type: !44)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !509, file: !1, line: 237, type: !44)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !509, file: !1, line: 238, type: !44)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_fields", scope: !509, file: !1, line: 239, type: !21)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_visible_fields", scope: !509, file: !1, line: 239, type: !21)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_fields", scope: !509, file: !1, line: 239, type: !21)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !509, file: !1, line: 240, type: !50)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !520, file: !1, line: 259, type: !58)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 258, column: 31)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 258, column: 5)
!522 = distinct !DILexicalBlock(scope: !509, file: !1, line: 258, column: 5)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 266, type: !44)
!524 = distinct !DILexicalBlock(scope: !509, file: !1, line: 266, column: 5)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !526, file: !1, line: 267, type: !44)
!526 = distinct !DILexicalBlock(scope: !509, file: !1, line: 267, column: 5)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !528, file: !1, line: 272, type: !44)
!528 = distinct !DILexicalBlock(scope: !509, file: !1, line: 272, column: 5)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !1, line: 272, type: !44)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 272, column: 5)
!531 = distinct !DILexicalBlock(scope: !528, file: !1, line: 272, column: 5)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !533, file: !1, line: 273, type: !44)
!533 = distinct !DILexicalBlock(scope: !509, file: !1, line: 273, column: 5)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !535, file: !1, line: 273, type: !44)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 273, column: 5)
!536 = distinct !DILexicalBlock(scope: !533, file: !1, line: 273, column: 5)
!537 = !DISubprogram(name: "structseq_new", scope: !1, file: !1, line: 74, type: !538, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @structseq_new, variables: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!44, !364, !44, !44}
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !557, !563, !567, !572, !576, !580}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !537, file: !1, line: 74, type: !364)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !537, file: !1, line: 74, type: !44)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !537, file: !1, line: 74, type: !44)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !537, file: !1, line: 76, type: !44)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !537, file: !1, line: 77, type: !44)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ob", scope: !537, file: !1, line: 78, type: !44)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !537, file: !1, line: 79, type: !4)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !537, file: !1, line: 80, type: !21)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_len", scope: !537, file: !1, line: 80, type: !21)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_len", scope: !537, file: !1, line: 80, type: !21)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !537, file: !1, line: 80, type: !21)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_unnamed_fields", scope: !537, file: !1, line: 80, type: !21)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !554, file: !1, line: 97, type: !44)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 97, column: 9)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 93, column: 38)
!556 = distinct !DILexicalBlock(scope: !537, file: !1, line: 93, column: 9)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !1, line: 111, type: !44)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 111, column: 13)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 107, column: 28)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 107, column: 13)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 106, column: 29)
!562 = distinct !DILexicalBlock(scope: !537, file: !1, line: 106, column: 9)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !1, line: 119, type: !44)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 119, column: 13)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 115, column: 28)
!566 = distinct !DILexicalBlock(scope: !561, file: !1, line: 115, column: 13)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !1, line: 128, type: !44)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 128, column: 13)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 124, column: 29)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 124, column: 13)
!571 = distinct !DILexicalBlock(scope: !562, file: !1, line: 123, column: 10)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !573, file: !1, line: 135, type: !44)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 135, column: 9)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 134, column: 22)
!575 = distinct !DILexicalBlock(scope: !537, file: !1, line: 134, column: 9)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !577, file: !1, line: 139, type: !44)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 138, column: 31)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 138, column: 5)
!579 = distinct !DILexicalBlock(scope: !537, file: !1, line: 138, column: 5)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !1, line: 154, type: !44)
!581 = distinct !DILexicalBlock(scope: !537, file: !1, line: 154, column: 5)
!582 = !{!583, !584, !592, !593, !594, !599, !603, !607, !611, !615}
!583 = !DIGlobalVariable(name: "PyStructSequence_UnnamedField", scope: !0, file: !1, line: 13, type: !58, isLocal: false, isDefinition: true, variable: i8** @PyStructSequence_UnnamedField)
!584 = !DIGlobalVariable(name: "PyId_n_fields", scope: !0, file: !1, line: 15, type: !585, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_fields)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !13, line: 144, baseType: !586)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !13, line: 140, size: 192, align: 64, elements: !587)
!587 = !{!588, !590, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !586, file: !13, line: 141, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !586, file: !13, line: 142, baseType: !34, size: 64, align: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !586, file: !13, line: 143, baseType: !44, size: 64, align: 64, offset: 128)
!592 = !DIGlobalVariable(name: "PyId_n_sequence_fields", scope: !0, file: !1, line: 14, type: !585, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_sequence_fields)
!593 = !DIGlobalVariable(name: "_struct_sequence_template", scope: !0, file: !1, line: 282, type: !365, isLocal: true, isDefinition: true, variable: %struct._typeobject* @_struct_sequence_template)
!594 = !DIGlobalVariable(name: "structseq_methods", scope: !0, file: !1, line: 277, type: !595, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @structseq_methods)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, align: 64, elements: !597)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!597 = !{!598}
!598 = !DISubrange(count: 2)
!599 = !DIGlobalVariable(name: "kwlist", scope: !537, file: !1, line: 81, type: !600, isLocal: true, isDefinition: true, variable: [3 x i8*]* @structseq_new.kwlist)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 192, align: 64, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 3)
!603 = !DIGlobalVariable(name: "visible_length_key", scope: !0, file: !1, line: 7, type: !604, isLocal: true, isDefinition: true, variable: [18 x i8]* @visible_length_key)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 144, align: 8, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 18)
!607 = !DIGlobalVariable(name: "real_length_key", scope: !0, file: !1, line: 8, type: !608, isLocal: true, isDefinition: true, variable: [9 x i8]* @real_length_key)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 72, align: 8, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 9)
!611 = !DIGlobalVariable(name: "unnamed_fields_key", scope: !0, file: !1, line: 9, type: !612, isLocal: true, isDefinition: true, variable: [17 x i8]* @unnamed_fields_key)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, align: 8, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 17)
!615 = !DIGlobalVariable(name: "PyId_n_unnamed_fields", scope: !0, file: !1, line: 16, type: !585, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_n_unnamed_fields)
!616 = !{i32 2, !"Dwarf Version", i32 4}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!619 = !DIExpression()
!620 = !DILocation(line: 32, column: 36, scope: !376)
!621 = !DILocation(line: 35, column: 23, scope: !376)
!622 = !{!623, !629, i64 264}
!623 = !{!"_typeobject", !624, i64 0, !629, i64 24, !626, i64 32, !626, i64 40, !629, i64 48, !629, i64 56, !629, i64 64, !629, i64 72, !629, i64 80, !629, i64 88, !629, i64 96, !629, i64 104, !629, i64 112, !629, i64 120, !629, i64 128, !629, i64 136, !629, i64 144, !629, i64 152, !629, i64 160, !626, i64 168, !629, i64 176, !629, i64 184, !629, i64 192, !629, i64 200, !626, i64 208, !629, i64 216, !629, i64 224, !629, i64 232, !629, i64 240, !629, i64 248, !629, i64 256, !629, i64 264, !629, i64 272, !629, i64 280, !626, i64 288, !629, i64 296, !629, i64 304, !629, i64 312, !629, i64 320, !629, i64 328, !629, i64 336, !629, i64 344, !629, i64 352, !629, i64 360, !629, i64 368, !629, i64 376, !630, i64 384, !629, i64 392}
!624 = !{!"", !625, i64 0, !626, i64 16}
!625 = !{!"_object", !626, i64 0, !629, i64 8}
!626 = !{!"long", !627, i64 0}
!627 = !{!"omnipotent char", !628, i64 0}
!628 = !{!"Simple C/C++ TBAA"}
!629 = !{!"any pointer", !627, i64 0}
!630 = !{!"int", !627, i64 0}
!631 = !DILocation(line: 35, column: 16, scope: !376)
!632 = !DILocation(line: 37, column: 11, scope: !376)
!633 = !DILocation(line: 38, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !376, file: !1, line: 38, column: 9)
!635 = !DILocation(line: 38, column: 9, scope: !376)
!636 = !DILocation(line: 42, column: 20, scope: !376)
!637 = !DILocation(line: 42, column: 5, scope: !376)
!638 = !DILocation(line: 42, column: 18, scope: !376)
!639 = !{!624, !626, i64 16}
!640 = !DILocation(line: 35, column: 43, scope: !376)
!641 = !DILocation(line: 43, column: 19, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 43, column: 5)
!643 = distinct !DILexicalBlock(scope: !376, file: !1, line: 43, column: 5)
!644 = !DILocation(line: 43, column: 5, scope: !643)
!645 = !DILocation(line: 44, column: 25, scope: !642)
!646 = !DILocation(line: 46, column: 12, scope: !376)
!647 = !DILocation(line: 46, column: 5, scope: !376)
!648 = !DILocation(line: 47, column: 1, scope: !376)
!649 = !DILocation(line: 50, column: 36, scope: !384)
!650 = !DILocation(line: 50, column: 51, scope: !384)
!651 = !DILocation(line: 50, column: 64, scope: !384)
!652 = !DILocation(line: 52, column: 5, scope: !384)
!653 = !{!629, !629, i64 0}
!654 = !DILocation(line: 53, column: 1, scope: !384)
!655 = !DILocation(line: 56, column: 36, scope: !391)
!656 = !DILocation(line: 56, column: 51, scope: !391)
!657 = !DILocation(line: 58, column: 12, scope: !391)
!658 = !DILocation(line: 58, column: 5, scope: !391)
!659 = !DILocation(line: 324, column: 42, scope: !395)
!660 = !DILocation(line: 324, column: 71, scope: !395)
!661 = !DILocation(line: 328, column: 20, scope: !395)
!662 = !DILocation(line: 328, column: 39, scope: !395)
!663 = !DILocation(line: 340, column: 23, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 340, column: 5)
!665 = distinct !DILexicalBlock(scope: !395, file: !1, line: 340, column: 5)
!666 = !{!667, !629, i64 16}
!667 = !{!"PyStructSequence_Desc", !629, i64 0, !629, i64 8, !629, i64 16, !630, i64 24}
!668 = !DILocation(line: 340, column: 33, scope: !664)
!669 = !{!670, !629, i64 0}
!670 = !{!"PyStructSequence_Field", !629, i64 0, !629, i64 8}
!671 = !DILocation(line: 340, column: 38, scope: !664)
!672 = !DILocation(line: 340, column: 5, scope: !665)
!673 = !DILocation(line: 341, column: 37, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !1, line: 341, column: 13)
!675 = !DILocation(line: 341, column: 34, scope: !674)
!676 = !DILocation(line: 341, column: 13, scope: !664)
!677 = !DILocation(line: 340, column: 47, scope: !664)
!678 = !DILocation(line: 340, column: 17, scope: !664)
!679 = !DILocation(line: 328, column: 9, scope: !395)
!680 = !DILocation(line: 345, column: 5, scope: !395)
!681 = !DILocation(line: 346, column: 11, scope: !395)
!682 = !DILocation(line: 346, column: 19, scope: !395)
!683 = !{!623, !629, i64 256}
!684 = !DILocation(line: 347, column: 27, scope: !395)
!685 = !{!667, !629, i64 0}
!686 = !DILocation(line: 347, column: 11, scope: !395)
!687 = !DILocation(line: 347, column: 19, scope: !395)
!688 = !{!623, !629, i64 24}
!689 = !DILocation(line: 348, column: 26, scope: !395)
!690 = !{!667, !629, i64 8}
!691 = !DILocation(line: 348, column: 11, scope: !395)
!692 = !DILocation(line: 348, column: 18, scope: !395)
!693 = !{!623, !629, i64 176}
!694 = !DILocation(line: 350, column: 15, scope: !395)
!695 = !DILocation(line: 350, column: 15, scope: !696)
!696 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 2)
!697 = !DILocation(line: 327, column: 18, scope: !395)
!698 = !DILocation(line: 351, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !395, file: !1, line: 351, column: 9)
!700 = !DILocation(line: 351, column: 9, scope: !395)
!701 = !DILocation(line: 356, column: 23, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 356, column: 5)
!703 = distinct !DILexicalBlock(scope: !395, file: !1, line: 356, column: 5)
!704 = !DILocation(line: 356, column: 5, scope: !703)
!705 = !DILocation(line: 357, column: 19, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 357, column: 13)
!707 = distinct !DILexicalBlock(scope: !702, file: !1, line: 356, column: 41)
!708 = !DILocation(line: 352, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !1, line: 351, column: 26)
!710 = !DILocation(line: 353, column: 9, scope: !709)
!711 = !DILocation(line: 357, column: 29, scope: !706)
!712 = !DILocation(line: 357, column: 37, scope: !706)
!713 = !DILocation(line: 357, column: 34, scope: !706)
!714 = !DILocation(line: 357, column: 13, scope: !707)
!715 = !DILocation(line: 359, column: 9, scope: !707)
!716 = !DILocation(line: 359, column: 20, scope: !707)
!717 = !DILocation(line: 359, column: 25, scope: !707)
!718 = !{!719, !629, i64 0}
!719 = !{!"PyMemberDef", !629, i64 0, !630, i64 8, !626, i64 16, !630, i64 24, !629, i64 32}
!720 = !DILocation(line: 360, column: 20, scope: !707)
!721 = !DILocation(line: 360, column: 25, scope: !707)
!722 = !{!719, !630, i64 8}
!723 = !DILocation(line: 362, column: 15, scope: !707)
!724 = !DILocation(line: 362, column: 11, scope: !707)
!725 = !DILocation(line: 361, column: 20, scope: !707)
!726 = !DILocation(line: 361, column: 27, scope: !707)
!727 = !{!719, !626, i64 16}
!728 = !DILocation(line: 363, column: 20, scope: !707)
!729 = !DILocation(line: 363, column: 26, scope: !707)
!730 = !{!719, !630, i64 24}
!731 = !DILocation(line: 364, column: 42, scope: !707)
!732 = !{!670, !629, i64 8}
!733 = !DILocation(line: 364, column: 20, scope: !707)
!734 = !DILocation(line: 364, column: 24, scope: !707)
!735 = !{!719, !629, i64 32}
!736 = !DILocation(line: 365, column: 10, scope: !707)
!737 = !DILocation(line: 328, column: 42, scope: !395)
!738 = !DILocation(line: 366, column: 5, scope: !707)
!739 = !DILocation(line: 367, column: 5, scope: !395)
!740 = !DILocation(line: 367, column: 16, scope: !395)
!741 = !DILocation(line: 367, column: 21, scope: !395)
!742 = !DILocation(line: 369, column: 11, scope: !395)
!743 = !DILocation(line: 369, column: 22, scope: !395)
!744 = !{!623, !629, i64 240}
!745 = !DILocation(line: 371, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !395, file: !1, line: 371, column: 9)
!747 = !DILocation(line: 371, column: 28, scope: !746)
!748 = !DILocation(line: 371, column: 9, scope: !395)
!749 = !DILocation(line: 373, column: 5, scope: !395)
!750 = !{!625, !626, i64 0}
!751 = !DILocation(line: 375, column: 18, scope: !395)
!752 = !DILocation(line: 326, column: 15, scope: !395)
!753 = !DILocation(line: 388, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !425, file: !1, discriminator: 1)
!755 = !{!667, !630, i64 24}
!756 = !DILocation(line: 329, column: 15, scope: !395)
!757 = !DILocation(line: 388, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !425, file: !1, line: 388, column: 5)
!759 = !DILocation(line: 388, column: 5, scope: !425)
!760 = !DILocation(line: 388, column: 5, scope: !761)
!761 = !DILexicalBlockFile(scope: !424, file: !1, discriminator: 3)
!762 = !DILocation(line: 388, column: 5, scope: !763)
!763 = distinct !DILexicalBlock(scope: !422, file: !1, line: 388, column: 5)
!764 = !DILocation(line: 388, column: 5, scope: !765)
!765 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 6)
!766 = !DILocation(line: 388, column: 5, scope: !422)
!767 = !DILocation(line: 388, column: 5, scope: !768)
!768 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 8)
!769 = !{!625, !629, i64 8}
!770 = !{!623, !629, i64 48}
!771 = !DILocation(line: 388, column: 5, scope: !772)
!772 = !DILexicalBlockFile(scope: !427, file: !1, discriminator: 12)
!773 = !DILocation(line: 388, column: 5, scope: !427)
!774 = !DILocation(line: 388, column: 5, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !1, discriminator: 14)
!776 = distinct !DILexicalBlock(scope: !427, file: !1, line: 388, column: 5)
!777 = !DILocation(line: 389, column: 5, scope: !778)
!778 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 1)
!779 = !DILocation(line: 389, column: 5, scope: !780)
!780 = distinct !DILexicalBlock(scope: !432, file: !1, line: 389, column: 5)
!781 = !DILocation(line: 389, column: 5, scope: !432)
!782 = !DILocation(line: 389, column: 5, scope: !783)
!783 = !DILexicalBlockFile(scope: !431, file: !1, discriminator: 3)
!784 = !DILocation(line: 389, column: 5, scope: !785)
!785 = distinct !DILexicalBlock(scope: !429, file: !1, line: 389, column: 5)
!786 = !DILocation(line: 389, column: 5, scope: !787)
!787 = !DILexicalBlockFile(scope: !429, file: !1, discriminator: 6)
!788 = !DILocation(line: 389, column: 5, scope: !429)
!789 = !DILocation(line: 389, column: 5, scope: !790)
!790 = !DILexicalBlockFile(scope: !785, file: !1, discriminator: 8)
!791 = !DILocation(line: 389, column: 5, scope: !792)
!792 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 12)
!793 = !DILocation(line: 389, column: 5, scope: !434)
!794 = !DILocation(line: 389, column: 5, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !1, discriminator: 14)
!796 = distinct !DILexicalBlock(scope: !434, file: !1, line: 389, column: 5)
!797 = !DILocation(line: 390, column: 5, scope: !798)
!798 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!799 = !DILocation(line: 390, column: 5, scope: !800)
!800 = distinct !DILexicalBlock(scope: !439, file: !1, line: 390, column: 5)
!801 = !DILocation(line: 390, column: 5, scope: !439)
!802 = !DILocation(line: 390, column: 5, scope: !803)
!803 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 3)
!804 = !DILocation(line: 390, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !436, file: !1, line: 390, column: 5)
!806 = !DILocation(line: 390, column: 5, scope: !807)
!807 = !DILexicalBlockFile(scope: !436, file: !1, discriminator: 6)
!808 = !DILocation(line: 390, column: 5, scope: !436)
!809 = !DILocation(line: 390, column: 5, scope: !810)
!810 = !DILexicalBlockFile(scope: !805, file: !1, discriminator: 8)
!811 = !DILocation(line: 390, column: 5, scope: !812)
!812 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 12)
!813 = !DILocation(line: 390, column: 5, scope: !441)
!814 = !DILocation(line: 390, column: 5, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !1, discriminator: 14)
!816 = distinct !DILexicalBlock(scope: !441, file: !1, line: 390, column: 5)
!817 = !DILocation(line: 393, column: 1, scope: !395)
!818 = !DILocation(line: 396, column: 41, scope: !442)
!819 = !DILocation(line: 396, column: 70, scope: !442)
!820 = !DILocation(line: 398, column: 11, scope: !442)
!821 = !DILocation(line: 399, column: 1, scope: !442)
!822 = !DILocation(line: 402, column: 49, scope: !448)
!823 = !DILocation(line: 406, column: 29, scope: !448)
!824 = !DILocation(line: 406, column: 14, scope: !448)
!825 = !DILocation(line: 404, column: 19, scope: !448)
!826 = !DILocation(line: 407, column: 16, scope: !827)
!827 = distinct !DILexicalBlock(scope: !448, file: !1, line: 407, column: 9)
!828 = !DILocation(line: 407, column: 9, scope: !448)
!829 = !DILocation(line: 409, column: 9, scope: !457)
!830 = !DILocation(line: 409, column: 50, scope: !457)
!831 = !DILocation(line: 409, column: 9, scope: !448)
!832 = !DILocation(line: 410, column: 9, scope: !833)
!833 = !DILexicalBlockFile(scope: !455, file: !1, discriminator: 1)
!834 = !DILocation(line: 410, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !455, file: !1, line: 410, column: 9)
!836 = !DILocation(line: 410, column: 9, scope: !455)
!837 = !DILocation(line: 410, column: 9, scope: !838)
!838 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 3)
!839 = !DILocation(line: 414, column: 1, scope: !448)
!840 = !DILocation(line: 418, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !458, file: !1, line: 418, column: 9)
!842 = !DILocation(line: 418, column: 52, scope: !841)
!843 = !DILocation(line: 419, column: 9, scope: !841)
!844 = !DILocation(line: 419, column: 12, scope: !845)
!845 = !DILexicalBlockFile(scope: !841, file: !1, discriminator: 1)
!846 = !DILocation(line: 419, column: 46, scope: !841)
!847 = !DILocation(line: 420, column: 9, scope: !841)
!848 = !DILocation(line: 420, column: 12, scope: !845)
!849 = !DILocation(line: 420, column: 54, scope: !841)
!850 = !DILocation(line: 418, column: 9, scope: !458)
!851 = !DILocation(line: 424, column: 1, scope: !458)
!852 = !DILocation(line: 62, column: 37, scope: !461)
!853 = !DILocation(line: 66, column: 12, scope: !461)
!854 = !DILocation(line: 64, column: 19, scope: !461)
!855 = !DILocation(line: 64, column: 16, scope: !461)
!856 = !DILocation(line: 67, column: 19, scope: !471)
!857 = !DILocation(line: 67, column: 5, scope: !472)
!858 = !DILocation(line: 68, column: 9, scope: !859)
!859 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 1)
!860 = !DILocation(line: 68, column: 9, scope: !475)
!861 = !DILocation(line: 68, column: 9, scope: !469)
!862 = !DILocation(line: 68, column: 9, scope: !863)
!863 = !DILexicalBlockFile(scope: !474, file: !1, discriminator: 4)
!864 = !DILocation(line: 68, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !474, file: !1, line: 68, column: 9)
!866 = !DILocation(line: 68, column: 9, scope: !474)
!867 = !DILocation(line: 68, column: 9, scope: !868)
!868 = !DILexicalBlockFile(scope: !865, file: !1, discriminator: 6)
!869 = !DILocation(line: 67, column: 27, scope: !471)
!870 = !DILocation(line: 70, column: 21, scope: !461)
!871 = !DILocation(line: 70, column: 5, scope: !461)
!872 = !DILocation(line: 71, column: 1, scope: !461)
!873 = !DILocation(line: 160, column: 34, scope: !476)
!874 = !DILocation(line: 166, column: 25, scope: !476)
!875 = !DILocation(line: 166, column: 19, scope: !476)
!876 = !DILocation(line: 167, column: 12, scope: !476)
!877 = !DILocation(line: 169, column: 5, scope: !476)
!878 = !DILocation(line: 169, column: 10, scope: !476)
!879 = !DILocation(line: 170, column: 22, scope: !476)
!880 = !DILocation(line: 173, column: 16, scope: !476)
!881 = !DILocation(line: 170, column: 11, scope: !476)
!882 = !DILocation(line: 176, column: 23, scope: !476)
!883 = !DILocation(line: 176, column: 11, scope: !476)
!884 = !DILocation(line: 176, column: 32, scope: !476)
!885 = !DILocation(line: 168, column: 16, scope: !476)
!886 = !DILocation(line: 178, column: 5, scope: !476)
!887 = !DILocation(line: 179, column: 10, scope: !476)
!888 = !DILocation(line: 180, column: 13, scope: !476)
!889 = !{!627, !627, i64 0}
!890 = !DILocation(line: 167, column: 9, scope: !476)
!891 = !DILocation(line: 180, column: 10, scope: !476)
!892 = !DILocation(line: 182, column: 19, scope: !493)
!893 = !DILocation(line: 182, column: 17, scope: !493)
!894 = !DILocation(line: 182, column: 5, scope: !494)
!895 = !DILocation(line: 186, column: 22, scope: !492)
!896 = !DILocation(line: 186, column: 36, scope: !492)
!897 = !DILocation(line: 184, column: 15, scope: !492)
!898 = !DILocation(line: 187, column: 19, scope: !899)
!899 = distinct !DILexicalBlock(scope: !492, file: !1, line: 187, column: 13)
!900 = !DILocation(line: 187, column: 13, scope: !492)
!901 = !DILocation(line: 188, column: 26, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !1, line: 187, column: 28)
!903 = !DILocation(line: 189, column: 54, scope: !902)
!904 = !DILocation(line: 188, column: 13, scope: !902)
!905 = !DILocation(line: 190, column: 13, scope: !902)
!906 = !DILocation(line: 192, column: 15, scope: !492)
!907 = !DILocation(line: 183, column: 19, scope: !492)
!908 = !DILocation(line: 193, column: 16, scope: !492)
!909 = !DILocation(line: 183, column: 25, scope: !492)
!910 = !DILocation(line: 194, column: 18, scope: !911)
!911 = distinct !DILexicalBlock(scope: !492, file: !1, line: 194, column: 13)
!912 = !DILocation(line: 194, column: 13, scope: !492)
!913 = !DILocation(line: 196, column: 17, scope: !492)
!914 = !DILocation(line: 184, column: 23, scope: !492)
!915 = !DILocation(line: 197, column: 19, scope: !501)
!916 = !DILocation(line: 197, column: 13, scope: !492)
!917 = !DILocation(line: 198, column: 13, scope: !918)
!918 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 1)
!919 = !DILocation(line: 198, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !499, file: !1, line: 198, column: 13)
!921 = !DILocation(line: 198, column: 13, scope: !499)
!922 = !DILocation(line: 198, column: 13, scope: !923)
!923 = !DILexicalBlockFile(scope: !920, file: !1, discriminator: 3)
!924 = !DILocation(line: 203, column: 15, scope: !492)
!925 = !DILocation(line: 203, column: 31, scope: !492)
!926 = !DILocation(line: 203, column: 29, scope: !492)
!927 = !DILocation(line: 203, column: 45, scope: !492)
!928 = !DILocation(line: 204, column: 18, scope: !505)
!929 = !DILocation(line: 204, column: 24, scope: !505)
!930 = !DILocation(line: 204, column: 13, scope: !492)
!931 = !DILocation(line: 205, column: 13, scope: !504)
!932 = !DILocation(line: 206, column: 21, scope: !504)
!933 = !DILocation(line: 206, column: 18, scope: !504)
!934 = !DILocation(line: 207, column: 18, scope: !504)
!935 = !DILocation(line: 207, column: 21, scope: !504)
!936 = !DILocation(line: 208, column: 13, scope: !504)
!937 = !DILocation(line: 209, column: 21, scope: !504)
!938 = !DILocation(line: 209, column: 18, scope: !504)
!939 = !DILocation(line: 210, column: 18, scope: !504)
!940 = !DILocation(line: 210, column: 21, scope: !504)
!941 = !DILocation(line: 211, column: 21, scope: !504)
!942 = !DILocation(line: 213, column: 13, scope: !943)
!943 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!944 = !DILocation(line: 213, column: 13, scope: !945)
!945 = distinct !DILexicalBlock(scope: !503, file: !1, line: 213, column: 13)
!946 = !DILocation(line: 213, column: 13, scope: !503)
!947 = !DILocation(line: 213, column: 13, scope: !948)
!948 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 3)
!949 = !DILocation(line: 216, column: 13, scope: !508)
!950 = !DILocation(line: 217, column: 18, scope: !508)
!951 = !DILocation(line: 219, column: 13, scope: !952)
!952 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!953 = !DILocation(line: 219, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !507, file: !1, line: 219, column: 13)
!955 = !DILocation(line: 219, column: 13, scope: !507)
!956 = !DILocation(line: 219, column: 13, scope: !957)
!957 = !DILexicalBlockFile(scope: !954, file: !1, discriminator: 3)
!958 = !DILocation(line: 182, column: 39, scope: !493)
!959 = !DILocation(line: 182, column: 15, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !1, discriminator: 2)
!961 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 1)
!962 = !DILocation(line: 225, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 223, column: 21)
!964 = distinct !DILexicalBlock(scope: !476, file: !1, line: 223, column: 9)
!965 = !DILocation(line: 223, column: 9, scope: !476)
!966 = !DILocation(line: 227, column: 10, scope: !476)
!967 = !DILocation(line: 227, column: 13, scope: !476)
!968 = !DILocation(line: 228, column: 11, scope: !476)
!969 = !DILocation(line: 230, column: 12, scope: !476)
!970 = !DILocation(line: 230, column: 5, scope: !476)
!971 = !DILocation(line: 231, column: 1, scope: !476)
!972 = !DILocation(line: 74, column: 29, scope: !537)
!973 = !DILocation(line: 74, column: 45, scope: !537)
!974 = !DILocation(line: 74, column: 61, scope: !537)
!975 = !DILocation(line: 76, column: 5, scope: !537)
!976 = !DILocation(line: 76, column: 15, scope: !537)
!977 = !DILocation(line: 77, column: 5, scope: !537)
!978 = !DILocation(line: 77, column: 15, scope: !537)
!979 = !DILocation(line: 79, column: 23, scope: !537)
!980 = !DILocation(line: 83, column: 10, scope: !981)
!981 = distinct !DILexicalBlock(scope: !537, file: !1, line: 83, column: 9)
!982 = !DILocation(line: 83, column: 9, scope: !537)
!983 = !DILocation(line: 87, column: 27, scope: !537)
!984 = !DILocation(line: 87, column: 11, scope: !537)
!985 = !DILocation(line: 87, column: 9, scope: !537)
!986 = !DILocation(line: 89, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !537, file: !1, line: 89, column: 9)
!988 = !DILocation(line: 89, column: 9, scope: !537)
!989 = !DILocation(line: 93, column: 9, scope: !556)
!990 = !DILocation(line: 93, column: 14, scope: !556)
!991 = !DILocation(line: 93, column: 18, scope: !992)
!992 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 1)
!993 = !{!623, !626, i64 168}
!994 = !DILocation(line: 93, column: 9, scope: !537)
!995 = !DILocation(line: 94, column: 22, scope: !555)
!996 = !DILocation(line: 96, column: 28, scope: !555)
!997 = !DILocation(line: 94, column: 9, scope: !555)
!998 = !DILocation(line: 97, column: 9, scope: !999)
!999 = !DILexicalBlockFile(scope: !554, file: !1, discriminator: 1)
!1000 = !DILocation(line: 97, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !554, file: !1, line: 97, column: 9)
!1002 = !DILocation(line: 97, column: 9, scope: !554)
!1003 = !DILocation(line: 97, column: 9, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1001, file: !1, discriminator: 3)
!1005 = !DILocation(line: 101, column: 11, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !537, file: !1, discriminator: 1)
!1007 = !DILocation(line: 80, column: 16, scope: !537)
!1008 = !DILocation(line: 102, column: 15, scope: !537)
!1009 = !DILocation(line: 80, column: 21, scope: !537)
!1010 = !DILocation(line: 103, column: 15, scope: !537)
!1011 = !DILocation(line: 80, column: 30, scope: !537)
!1012 = !DILocation(line: 104, column: 24, scope: !537)
!1013 = !DILocation(line: 80, column: 42, scope: !537)
!1014 = !DILocation(line: 106, column: 17, scope: !562)
!1015 = !DILocation(line: 106, column: 9, scope: !537)
!1016 = !DILocation(line: 107, column: 17, scope: !560)
!1017 = !DILocation(line: 107, column: 13, scope: !561)
!1018 = !DILocation(line: 108, column: 26, scope: !559)
!1019 = !DILocation(line: 110, column: 23, scope: !559)
!1020 = !DILocation(line: 108, column: 13, scope: !559)
!1021 = !DILocation(line: 111, column: 13, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 1)
!1023 = !DILocation(line: 111, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !558, file: !1, line: 111, column: 13)
!1025 = !DILocation(line: 111, column: 13, scope: !558)
!1026 = !DILocation(line: 111, column: 13, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1024, file: !1, discriminator: 3)
!1028 = !DILocation(line: 115, column: 17, scope: !566)
!1029 = !DILocation(line: 115, column: 13, scope: !561)
!1030 = !DILocation(line: 116, column: 26, scope: !565)
!1031 = !DILocation(line: 118, column: 23, scope: !565)
!1032 = !DILocation(line: 116, column: 13, scope: !565)
!1033 = !DILocation(line: 119, column: 13, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 1)
!1035 = !DILocation(line: 119, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !564, file: !1, line: 119, column: 13)
!1037 = !DILocation(line: 119, column: 13, scope: !564)
!1038 = !DILocation(line: 119, column: 13, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 3)
!1040 = !DILocation(line: 124, column: 17, scope: !570)
!1041 = !DILocation(line: 124, column: 13, scope: !571)
!1042 = !DILocation(line: 125, column: 26, scope: !569)
!1043 = !DILocation(line: 127, column: 32, scope: !569)
!1044 = !DILocation(line: 125, column: 13, scope: !569)
!1045 = !DILocation(line: 128, column: 13, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 1)
!1047 = !DILocation(line: 128, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !568, file: !1, line: 128, column: 13)
!1049 = !DILocation(line: 128, column: 13, scope: !568)
!1050 = !DILocation(line: 128, column: 13, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1048, file: !1, discriminator: 3)
!1052 = !DILocation(line: 32, column: 36, scope: !376, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 133, column: 31, scope: !537)
!1054 = !DILocation(line: 35, column: 23, scope: !376, inlinedAt: !1053)
!1055 = !DILocation(line: 35, column: 16, scope: !376, inlinedAt: !1053)
!1056 = !DILocation(line: 37, column: 11, scope: !376, inlinedAt: !1053)
!1057 = !DILocation(line: 38, column: 13, scope: !634, inlinedAt: !1053)
!1058 = !DILocation(line: 38, column: 9, scope: !376, inlinedAt: !1053)
!1059 = !DILocation(line: 42, column: 20, scope: !376, inlinedAt: !1053)
!1060 = !DILocation(line: 42, column: 5, scope: !376, inlinedAt: !1053)
!1061 = !DILocation(line: 42, column: 18, scope: !376, inlinedAt: !1053)
!1062 = !DILocation(line: 35, column: 43, scope: !376, inlinedAt: !1053)
!1063 = !DILocation(line: 43, column: 19, scope: !642, inlinedAt: !1053)
!1064 = !DILocation(line: 43, column: 5, scope: !643, inlinedAt: !1053)
!1065 = !DILocation(line: 133, column: 31, scope: !537)
!1066 = !DILocation(line: 44, column: 25, scope: !642, inlinedAt: !1053)
!1067 = !DILocation(line: 46, column: 12, scope: !376, inlinedAt: !1053)
!1068 = !DILocation(line: 138, column: 19, scope: !578)
!1069 = !DILocation(line: 138, column: 5, scope: !579)
!1070 = !DILocation(line: 141, column: 14, scope: !577)
!1071 = !DILocation(line: 135, column: 9, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 1)
!1073 = !DILocation(line: 135, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !573, file: !1, line: 135, column: 9)
!1075 = !DILocation(line: 135, column: 9, scope: !573)
!1076 = !DILocation(line: 135, column: 9, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1074, file: !1, discriminator: 3)
!1078 = !DILocation(line: 143, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 143, column: 5)
!1080 = distinct !DILexicalBlock(scope: !537, file: !1, line: 143, column: 5)
!1081 = !DILocation(line: 143, column: 5, scope: !1080)
!1082 = !DILocation(line: 151, column: 14, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 143, column: 30)
!1084 = !DILocation(line: 145, column: 25, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 144, column: 13)
!1086 = !DILocation(line: 139, column: 23, scope: !577)
!1087 = !DILocation(line: 139, column: 23, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!1089 = !DILocation(line: 139, column: 23, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!1091 = !{!1092, !629, i64 24}
!1092 = !{!"", !624, i64 0, !629, i64 24, !626, i64 32}
!1093 = !DILocation(line: 139, column: 19, scope: !577)
!1094 = !DILocation(line: 140, column: 9, scope: !577)
!1095 = !DILocation(line: 141, column: 9, scope: !577)
!1096 = !DILocation(line: 141, column: 25, scope: !577)
!1097 = !DILocation(line: 138, column: 26, scope: !578)
!1098 = !DILocation(line: 80, column: 39, scope: !537)
!1099 = !DILocation(line: 144, column: 13, scope: !1085)
!1100 = !DILocation(line: 144, column: 18, scope: !1085)
!1101 = !DILocation(line: 145, column: 37, scope: !1085)
!1102 = !DILocation(line: 145, column: 56, scope: !1085)
!1103 = !DILocation(line: 144, column: 27, scope: !1085)
!1104 = !DILocation(line: 78, column: 15, scope: !537)
!1105 = !DILocation(line: 144, column: 25, scope: !1085)
!1106 = !DILocation(line: 144, column: 13, scope: !1083)
!1107 = !DILocation(line: 150, column: 9, scope: !1083)
!1108 = !DILocation(line: 151, column: 9, scope: !1083)
!1109 = !DILocation(line: 151, column: 25, scope: !1083)
!1110 = !DILocation(line: 143, column: 25, scope: !1079)
!1111 = !DILocation(line: 154, column: 5, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 1)
!1113 = !DILocation(line: 154, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !581, file: !1, line: 154, column: 5)
!1115 = !DILocation(line: 154, column: 5, scope: !581)
!1116 = !DILocation(line: 154, column: 5, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1114, file: !1, discriminator: 3)
!1118 = !DILocation(line: 156, column: 1, scope: !537)
!1119 = !DILocation(line: 234, column: 36, scope: !509)
!1120 = !DILocation(line: 236, column: 15, scope: !509)
!1121 = !DILocation(line: 237, column: 15, scope: !509)
!1122 = !DILocation(line: 242, column: 16, scope: !509)
!1123 = !DILocation(line: 239, column: 16, scope: !509)
!1124 = !DILocation(line: 243, column: 24, scope: !509)
!1125 = !DILocation(line: 239, column: 26, scope: !509)
!1126 = !DILocation(line: 244, column: 24, scope: !509)
!1127 = !DILocation(line: 239, column: 44, scope: !509)
!1128 = !DILocation(line: 245, column: 11, scope: !509)
!1129 = !DILocation(line: 246, column: 10, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !509, file: !1, line: 246, column: 9)
!1131 = !DILocation(line: 246, column: 9, scope: !509)
!1132 = !DILocation(line: 249, column: 12, scope: !509)
!1133 = !DILocation(line: 250, column: 10, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !509, file: !1, line: 250, column: 9)
!1135 = !DILocation(line: 250, column: 9, scope: !509)
!1136 = !DILocation(line: 253, column: 19, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 253, column: 5)
!1138 = distinct !DILexicalBlock(scope: !509, file: !1, line: 253, column: 5)
!1139 = !DILocation(line: 253, column: 5, scope: !1138)
!1140 = !DILocation(line: 255, column: 9, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 253, column: 44)
!1142 = !DILocation(line: 258, column: 12, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !1, discriminator: 2)
!1144 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 1)
!1145 = !DILocation(line: 258, column: 14, scope: !521)
!1146 = !DILocation(line: 258, column: 5, scope: !522)
!1147 = !DILocation(line: 259, column: 46, scope: !520)
!1148 = !DILocation(line: 254, column: 9, scope: !1141)
!1149 = !DILocation(line: 253, column: 40, scope: !1137)
!1150 = !DILocation(line: 240, column: 9, scope: !509)
!1151 = !DILocation(line: 253, column: 17, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !1, discriminator: 2)
!1153 = !DILexicalBlockFile(scope: !1137, file: !1, discriminator: 1)
!1154 = !DILocation(line: 259, column: 19, scope: !520)
!1155 = !DILocation(line: 259, column: 34, scope: !520)
!1156 = !DILocation(line: 259, column: 65, scope: !520)
!1157 = !DILocation(line: 259, column: 15, scope: !520)
!1158 = !DILocation(line: 260, column: 43, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !520, file: !1, line: 260, column: 13)
!1160 = !DILocation(line: 260, column: 13, scope: !1159)
!1161 = !DILocation(line: 260, column: 61, scope: !1159)
!1162 = !DILocation(line: 258, column: 27, scope: !521)
!1163 = !DILocation(line: 264, column: 39, scope: !509)
!1164 = !DILocation(line: 264, column: 14, scope: !509)
!1165 = !DILocation(line: 238, column: 15, scope: !509)
!1166 = !DILocation(line: 266, column: 5, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 1)
!1168 = !DILocation(line: 266, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !524, file: !1, line: 266, column: 5)
!1170 = !DILocation(line: 266, column: 5, scope: !524)
!1171 = !DILocation(line: 266, column: 5, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 3)
!1173 = !DILocation(line: 267, column: 5, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 1)
!1175 = !DILocation(line: 267, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !526, file: !1, line: 267, column: 5)
!1177 = !DILocation(line: 267, column: 5, scope: !526)
!1178 = !DILocation(line: 267, column: 5, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1176, file: !1, discriminator: 3)
!1180 = !DILocation(line: 272, column: 5, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 4)
!1182 = !DILocation(line: 272, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !530, file: !1, line: 272, column: 5)
!1184 = !DILocation(line: 272, column: 5, scope: !530)
!1185 = !DILocation(line: 272, column: 5, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 6)
!1187 = !DILocation(line: 273, column: 5, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !533, file: !1, discriminator: 1)
!1189 = !DILocation(line: 273, column: 5, scope: !536)
!1190 = !DILocation(line: 273, column: 5, scope: !533)
!1191 = !DILocation(line: 273, column: 5, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 4)
!1193 = !DILocation(line: 273, column: 5, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !535, file: !1, line: 273, column: 5)
!1195 = !DILocation(line: 273, column: 5, scope: !535)
!1196 = !DILocation(line: 273, column: 5, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1194, file: !1, discriminator: 6)
!1198 = !DILocation(line: 275, column: 1, scope: !509)
