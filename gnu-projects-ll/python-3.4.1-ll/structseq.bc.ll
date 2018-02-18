; ModuleID = './structseq.bc'
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
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 31
  %1 = load %struct._object*, %struct._object** %tp_dict, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %1, %struct._Py_Identifier* @PyId_n_fields)
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call)
  store i64 %call1, i64* %size, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %3 = load i64, i64* %size, align 8
  %call2 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* %2, i64 %3)
  %4 = bitcast %struct.PyVarObject* %call2 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %4, %struct.PyTupleObject** %obj, align 8
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8
  %cmp = icmp eq %struct.PyTupleObject* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 31
  %7 = load %struct._object*, %struct._object** %tp_dict3, align 8
  %call4 = call %struct._object* @_PyDict_GetItemId(%struct._object* %7, %struct._Py_Identifier* @PyId_n_sequence_fields)
  %call5 = call i64 @PyLong_AsLong(%struct._object* %call4)
  %8 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8
  %9 = bitcast %struct.PyTupleObject* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  store i64 %call5, i64* %ob_size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %size, align 8
  %cmp6 = icmp slt i64 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %12
  store %struct._object* null, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj, align 8
  %16 = bitcast %struct.PyTupleObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define void @PyStructSequence_SetItem(%struct._object* %op, i64 %i, %struct._object* %v) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load i64, i64* %i.addr, align 8
  %2 = load %struct._object*, %struct._object** %op.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %1
  store %struct._object* %0, %struct._object** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyStructSequence_GetItem(%struct._object* %op, i64 %i) #0 {
entry:
  %op.addr = alloca %struct._object*, align 8
  %i.addr = alloca i64, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load %struct._object*, %struct._object** %op.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %2, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %0
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8
  ret %struct._object* %3
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8
  store i32 0, i32* %n_unnamed_members, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %fields = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %1, i32 0, i32 2
  %2 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields, align 8
  %arrayidx = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %2, i64 %idxprom
  %name = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %fields2 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %5, i32 0, i32 2
  %6 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields2, align 8
  %arrayidx3 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %6, i64 %idxprom1
  %name4 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx3, i32 0, i32 0
  %7 = load i8*, i8** %name4, align 8
  %8 = load i8*, i8** @PyStructSequence_UnnamedField, align 8
  %cmp5 = icmp eq i8* %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %n_unnamed_members, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %n_unnamed_members, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc6 = add i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %n_members, align 4
  %12 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %13 = bitcast %struct._typeobject* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct._typeobject* @_struct_sequence_template to i8*), i64 400, i32 8, i1 false)
  %14 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_base = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 30
  store %struct._typeobject* @PyTuple_Type, %struct._typeobject** %tp_base, align 8
  %15 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %name7 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %15, i32 0, i32 0
  %16 = load i8*, i8** %name7, align 8
  %17 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1
  store i8* %16, i8** %tp_name, align 8
  %18 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %doc = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %18, i32 0, i32 1
  %19 = load i8*, i8** %doc, align 8
  %20 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_doc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 20
  store i8* %19, i8** %tp_doc, align 8
  %21 = load i32, i32* %n_members, align 4
  %22 = load i32, i32* %n_unnamed_members, align 4
  %sub = sub i32 %21, %22
  %add = add i32 %sub, 1
  %conv = sext i32 %add to i64
  %cmp8 = icmp ugt i64 %conv, 230584300921369395
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %23 = load i32, i32* %n_members, align 4
  %24 = load i32, i32* %n_unnamed_members, align 4
  %sub10 = sub i32 %23, %24
  %add11 = add i32 %sub10, 1
  %conv12 = sext i32 %add11 to i64
  %mul = mul i64 %conv12, 40
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %25 = bitcast i8* %call to %struct.PyMemberDef*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.PyMemberDef* [ null, %cond.true ], [ %25, %cond.false ]
  store %struct.PyMemberDef* %cond, %struct.PyMemberDef** %members, align 8
  %26 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %cmp13 = icmp eq %struct.PyMemberDef* %26, null
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %cond.end
  %call16 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.55, %if.end.17
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n_members, align 4
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %for.body.21, label %for.end.57

for.body.21:                                      ; preds = %for.cond.18
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %fields23 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %30, i32 0, i32 2
  %31 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields23, align 8
  %arrayidx24 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %31, i64 %idxprom22
  %name25 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx24, i32 0, i32 0
  %32 = load i8*, i8** %name25, align 8
  %33 = load i8*, i8** @PyStructSequence_UnnamedField, align 8
  %cmp26 = icmp eq i8* %32, %33
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body.21
  br label %for.inc.55

if.end.29:                                        ; preds = %for.body.21
  %34 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %fields31 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %35, i32 0, i32 2
  %36 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields31, align 8
  %arrayidx32 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %36, i64 %idxprom30
  %name33 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx32, i32 0, i32 0
  %37 = load i8*, i8** %name33, align 8
  %38 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx35 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %39, i64 %idxprom34
  %name36 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx35, i32 0, i32 0
  store i8* %37, i8** %name36, align 8
  %40 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx38 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %41, i64 %idxprom37
  %type39 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx38, i32 0, i32 1
  store i32 6, i32* %type39, align 4
  %42 = load i32, i32* %i, align 4
  %conv40 = sext i32 %42 to i64
  %mul41 = mul i64 %conv40, 8
  %add42 = add i64 24, %mul41
  %43 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx44 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %44, i64 %idxprom43
  %offset = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx44, i32 0, i32 2
  store i64 %add42, i64* %offset, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx46 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %46, i64 %idxprom45
  %flags = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx46, i32 0, i32 3
  store i32 1, i32* %flags, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %fields48 = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %48, i32 0, i32 2
  %49 = load %struct.PyStructSequence_Field*, %struct.PyStructSequence_Field** %fields48, align 8
  %arrayidx49 = getelementptr %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %49, i64 %idxprom47
  %doc50 = getelementptr inbounds %struct.PyStructSequence_Field, %struct.PyStructSequence_Field* %arrayidx49, i32 0, i32 1
  %50 = load i8*, i8** %doc50, align 8
  %51 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %51 to i64
  %52 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx52 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %52, i64 %idxprom51
  %doc53 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx52, i32 0, i32 4
  store i8* %50, i8** %doc53, align 8
  %53 = load i32, i32* %k, align 4
  %inc54 = add i32 %53, 1
  store i32 %inc54, i32* %k, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.29, %if.then.28
  %54 = load i32, i32* %i, align 4
  %inc56 = add i32 %54, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.18

for.end.57:                                       ; preds = %for.cond.18
  %55 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %arrayidx59 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %56, i64 %idxprom58
  %name60 = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx59, i32 0, i32 0
  store i8* null, i8** %name60, align 8
  %57 = load %struct.PyMemberDef*, %struct.PyMemberDef** %members, align 8
  %58 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 28
  store %struct.PyMemberDef* %57, %struct.PyMemberDef** %tp_members, align 8
  %59 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call61 = call i32 @PyType_Ready(%struct._typeobject* %59)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.end.57
  store i32 -1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %for.end.57
  %60 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %61 = bitcast %struct._typeobject* %60 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt, align 8
  %inc66 = add i64 %62, 1
  store i64 %inc66, i64* %ob_refcnt, align 8
  %63 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 31
  %64 = load %struct._object*, %struct._object** %tp_dict, align 8
  store %struct._object* %64, %struct._object** %dict, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.65
  %65 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %n_in_sequence = getelementptr inbounds %struct.PyStructSequence_Desc, %struct.PyStructSequence_Desc* %65, i32 0, i32 3
  %66 = load i32, i32* %n_in_sequence, align 4
  %conv67 = sext i32 %66 to i64
  %call68 = call %struct._object* @PyLong_FromLong(i64 %conv67)
  store %struct._object* %call68, %struct._object** %v, align 8
  %67 = load %struct._object*, %struct._object** %v, align 8
  %cmp69 = icmp eq %struct._object* %67, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %do.body
  %68 = load %struct._object*, %struct._object** %dict, align 8
  %69 = load %struct._object*, %struct._object** %v, align 8
  %call73 = call i32 @PyDict_SetItemString(%struct._object* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @visible_length_key, i32 0, i32 0), %struct._object* %69)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.end.72
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %70 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt78, align 8
  %dec = add i64 %72, -1
  store i64 %dec, i64* %ob_refcnt78, align 8
  %cmp79 = icmp ne i64 %dec, 0
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %do.body.77
  br label %if.end.82

if.else:                                          ; preds = %do.body.77
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %75(%struct._object* %76)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.81
  br label %do.end

do.end:                                           ; preds = %if.end.82
  store i32 -1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.72
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.83
  %77 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp85, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %79, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.84
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %82(%struct._object* %83)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %84 = load i32, i32* %n_members, align 4
  %conv98 = sext i32 %84 to i64
  %call99 = call %struct._object* @PyLong_FromLong(i64 %conv98)
  store %struct._object* %call99, %struct._object** %v, align 8
  %85 = load %struct._object*, %struct._object** %v, align 8
  %cmp100 = icmp eq %struct._object* %85, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %do.body.97
  store i32 -1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %do.body.97
  %86 = load %struct._object*, %struct._object** %dict, align 8
  %87 = load %struct._object*, %struct._object** %v, align 8
  %call104 = call i32 @PyDict_SetItemString(%struct._object* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @real_length_key, i32 0, i32 0), %struct._object* %87)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %if.end.103
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %88 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp109, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %90, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %93(%struct._object* %94)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  store i32 -1, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.103
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.120
  %95 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %95, %struct._object** %_py_decref_tmp122, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %97, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.body.121
  br label %if.end.131

if.else.128:                                      ; preds = %do.body.121
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i32 0, i32 4
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %100(%struct._object* %101)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.127
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %102 = load i32, i32* %n_unnamed_members, align 4
  %conv135 = sext i32 %102 to i64
  %call136 = call %struct._object* @PyLong_FromLong(i64 %conv135)
  store %struct._object* %call136, %struct._object** %v, align 8
  %103 = load %struct._object*, %struct._object** %v, align 8
  %cmp137 = icmp eq %struct._object* %103, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.body.134
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %do.body.134
  %104 = load %struct._object*, %struct._object** %dict, align 8
  %105 = load %struct._object*, %struct._object** %v, align 8
  %call141 = call i32 @PyDict_SetItemString(%struct._object* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @unnamed_fields_key, i32 0, i32 0), %struct._object* %105)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.157

if.then.144:                                      ; preds = %if.end.140
  br label %do.body.145

do.body.145:                                      ; preds = %if.then.144
  %106 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp146, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt147, align 8
  %dec148 = add i64 %108, -1
  store i64 %dec148, i64* %ob_refcnt147, align 8
  %cmp149 = icmp ne i64 %dec148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.152

if.then.151:                                      ; preds = %do.body.145
  br label %if.end.155

if.else.152:                                      ; preds = %do.body.145
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  call void %111(%struct._object* %112)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.151
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  store i32 -1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.end.140
  br label %do.body.158

do.body.158:                                      ; preds = %if.end.157
  %113 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp159, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %115, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.158
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.158
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %118(%struct._object* %119)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %do.end.170

do.end.170:                                       ; preds = %do.end.169
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.170, %do.end.156, %if.then.139, %do.end.119, %if.then.102, %do.end, %if.then.71, %if.then.64, %if.then.15
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @PyStructSequence_InitType(%struct._typeobject* %type, %struct.PyStructSequence_Desc* %desc) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %desc.addr = alloca %struct.PyStructSequence_Desc*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %call = call i32 @PyStructSequence_InitType2(%struct._typeobject* %0, %struct.PyStructSequence_Desc* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._typeobject* @PyStructSequence_NewType(%struct.PyStructSequence_Desc* %desc) #0 {
entry:
  %retval = alloca %struct._typeobject*, align 8
  %desc.addr = alloca %struct.PyStructSequence_Desc*, align 8
  %result = alloca %struct._typeobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStructSequence_Desc* %desc, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %call = call %struct._object* @PyType_GenericAlloc(%struct._typeobject* @PyType_Type, i64 0)
  %0 = bitcast %struct._object* %call to %struct._typeobject*
  store %struct._typeobject* %0, %struct._typeobject** %result, align 8
  %1 = load %struct._typeobject*, %struct._typeobject** %result, align 8
  %cmp = icmp eq %struct._typeobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._typeobject* null, %struct._typeobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %result, align 8
  %3 = load %struct.PyStructSequence_Desc*, %struct.PyStructSequence_Desc** %desc.addr, align 8
  %call1 = call i32 @PyStructSequence_InitType2(%struct._typeobject* %2, %struct.PyStructSequence_Desc* %3)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._typeobject*, %struct._typeobject** %result, align 8
  %5 = bitcast %struct._typeobject* %4 to %struct._object*
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._typeobject* null, %struct._typeobject** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load %struct._typeobject*, %struct._typeobject** %result, align 8
  store %struct._typeobject* %12, %struct._typeobject** %retval
  br label %return

return:                                           ; preds = %if.end.7, %do.end, %if.then
  %13 = load %struct._typeobject*, %struct._typeobject** %retval
  ret %struct._typeobject* %13
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @_PyStructSequence_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_sequence_fields)
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_fields)
  %cmp2 = icmp eq %struct._object* %call1, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %call4 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyId_n_unnamed_fields)
  %cmp5 = icmp eq %struct._object* %call4, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #1

; Function Attrs: nounwind uwtable
define internal void @structseq_dealloc(%struct.PyTupleObject* %obj) #0 {
entry:
  %obj.addr = alloca %struct.PyTupleObject*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %obj, %struct.PyTupleObject** %obj.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 31
  %3 = load %struct._object*, %struct._object** %tp_dict, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %3, %struct._Py_Identifier* @PyId_n_fields)
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call)
  store i64 %call1, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %size, align 8
  %cmp = icmp slt i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %6
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp2 = icmp ne %struct._object* %9, null
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %do.end.8
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %19 = bitcast %struct.PyTupleObject* %18 to i8*
  call void @PyObject_GC_Del(i8* %19)
  ret void
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %obj, %struct.PyTupleObject** %obj.addr, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  store %struct._typeobject* %2, %struct._typeobject** %typ, align 8
  store i32 0, i32* %removelast, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %pbuf, align 8
  %arrayidx = getelementptr [512 x i8], [512 x i8]* %buf, i32 0, i64 507
  store i8* %arrayidx, i8** %endofbuf, align 8
  %3 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call i64 @strlen(i8* %4) #5
  %cmp = icmp ugt i64 %call, 100
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name1 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name1, align 8
  %call2 = call i64 @strlen(i8* %6) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 100, %cond.true ], [ %call2, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %7 = load i8*, i8** %pbuf, align 8
  %8 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name3, align 8
  %10 = load i64, i64* %len, align 8
  %call4 = call i8* @strncpy(i8* %7, i8* %9, i64 %10) #2
  %11 = load i64, i64* %len, align 8
  %12 = load i8*, i8** %pbuf, align 8
  %add.ptr = getelementptr i8, i8* %12, i64 %11
  store i8* %add.ptr, i8** %pbuf, align 8
  %13 = load i8*, i8** %pbuf, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %pbuf, align 8
  store i8 40, i8* %13, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %15 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %16 = bitcast %struct.PyTupleObject* %15 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %16, i32 0, i32 1
  %17 = load i64, i64* %ob_size, align 8
  %cmp5 = icmp slt i64 %conv, %17
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 28
  %20 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8
  %arrayidx7 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %20, i64 %idxprom
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx7, i32 0, i32 0
  %21 = load i8*, i8** %name, align 8
  store i8* %21, i8** %cname, align 8
  %22 = load i8*, i8** %cname, align 8
  %cmp8 = icmp eq i8* %22, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load %struct._typeobject*, %struct._typeobject** %typ, align 8
  %tp_name10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 1
  %26 = load i8*, i8** %tp_name10, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %23, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0), i32 %24, i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.PyTupleObject*, %struct.PyTupleObject** %obj.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom12
  %29 = load %struct._object*, %struct._object** %arrayidx13, align 8
  store %struct._object* %29, %struct._object** %val, align 8
  %30 = load %struct._object*, %struct._object** %val, align 8
  %call14 = call %struct._object* @PyObject_Repr(%struct._object* %30)
  store %struct._object* %call14, %struct._object** %repr, align 8
  %31 = load %struct._object*, %struct._object** %repr, align 8
  %cmp15 = icmp eq %struct._object* %31, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %32 = load %struct._object*, %struct._object** %repr, align 8
  %call19 = call i8* @PyUnicode_AsUTF8(%struct._object* %32)
  store i8* %call19, i8** %crepr, align 8
  %33 = load i8*, i8** %crepr, align 8
  %cmp20 = icmp eq i8* %33, null
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %34 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %36, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.18
  %41 = load i8*, i8** %cname, align 8
  %call29 = call i64 @strlen(i8* %41) #5
  %42 = load i8*, i8** %crepr, align 8
  %call30 = call i64 @strlen(i8* %42) #5
  %add = add i64 %call29, %call30
  %add31 = add i64 %add, 3
  store i64 %add31, i64* %len, align 8
  %43 = load i8*, i8** %pbuf, align 8
  %44 = load i64, i64* %len, align 8
  %add.ptr32 = getelementptr i8, i8* %43, i64 %44
  %45 = load i8*, i8** %endofbuf, align 8
  %cmp33 = icmp ule i8* %add.ptr32, %45
  br i1 %cmp33, label %if.then.35, label %if.else.57

if.then.35:                                       ; preds = %if.end.28
  %46 = load i8*, i8** %pbuf, align 8
  %47 = load i8*, i8** %cname, align 8
  %call36 = call i8* @strcpy(i8* %46, i8* %47) #2
  %48 = load i8*, i8** %cname, align 8
  %call37 = call i64 @strlen(i8* %48) #5
  %49 = load i8*, i8** %pbuf, align 8
  %add.ptr38 = getelementptr i8, i8* %49, i64 %call37
  store i8* %add.ptr38, i8** %pbuf, align 8
  %50 = load i8*, i8** %pbuf, align 8
  %incdec.ptr39 = getelementptr i8, i8* %50, i32 1
  store i8* %incdec.ptr39, i8** %pbuf, align 8
  store i8 61, i8* %50, align 1
  %51 = load i8*, i8** %pbuf, align 8
  %52 = load i8*, i8** %crepr, align 8
  %call40 = call i8* @strcpy(i8* %51, i8* %52) #2
  %53 = load i8*, i8** %crepr, align 8
  %call41 = call i64 @strlen(i8* %53) #5
  %54 = load i8*, i8** %pbuf, align 8
  %add.ptr42 = getelementptr i8, i8* %54, i64 %call41
  store i8* %add.ptr42, i8** %pbuf, align 8
  %55 = load i8*, i8** %pbuf, align 8
  %incdec.ptr43 = getelementptr i8, i8* %55, i32 1
  store i8* %incdec.ptr43, i8** %pbuf, align 8
  store i8 44, i8* %55, align 1
  %56 = load i8*, i8** %pbuf, align 8
  %incdec.ptr44 = getelementptr i8, i8* %56, i32 1
  store i8* %incdec.ptr44, i8** %pbuf, align 8
  store i8 32, i8* %56, align 1
  store i32 1, i32* %removelast, align 4
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.35
  %57 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp46, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt47, align 8
  %dec48 = add i64 %59, -1
  store i64 %dec48, i64* %ob_refcnt47, align 8
  %cmp49 = icmp ne i64 %dec48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.45
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.45
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8
  call void %62(%struct._object* %63)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %if.end.72

if.else.57:                                       ; preds = %if.end.28
  %64 = load i8*, i8** %pbuf, align 8
  %call58 = call i8* @strcpy(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #2
  %65 = load i8*, i8** %pbuf, align 8
  %add.ptr59 = getelementptr i8, i8* %65, i64 3
  store i8* %add.ptr59, i8** %pbuf, align 8
  store i32 0, i32* %removelast, align 4
  br label %do.body.60

do.body.60:                                       ; preds = %if.else.57
  %66 = load %struct._object*, %struct._object** %repr, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp61, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %68, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.60
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %71(%struct._object* %72)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %for.end

if.end.72:                                        ; preds = %do.end.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %73 = load i32, i32* %i, align 4
  %inc = add i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %do.end.71, %for.cond
  %74 = load i32, i32* %removelast, align 4
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %for.end
  %75 = load i8*, i8** %pbuf, align 8
  %add.ptr74 = getelementptr i8, i8* %75, i64 -2
  store i8* %add.ptr74, i8** %pbuf, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %for.end
  %76 = load i8*, i8** %pbuf, align 8
  %incdec.ptr76 = getelementptr i8, i8* %76, i32 1
  store i8* %incdec.ptr76, i8** %pbuf, align 8
  store i8 41, i8* %76, align 1
  %77 = load i8*, i8** %pbuf, align 8
  store i8 0, i8* %77, align 1
  %arraydecay77 = getelementptr inbounds [512 x i8], [512 x i8]* %buf, i32 0, i32 0
  %call78 = call %struct._object* @PyUnicode_FromString(i8* %arraydecay77)
  store %struct._object* %call78, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.75, %do.end, %if.then.17, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %arg, align 8
  store %struct._object* null, %struct._object** %dict, align 8
  store %struct.PyTupleObject* null, %struct.PyTupleObject** %res, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @structseq_new.kwlist, i32 0, i32 0), %struct._object** %arg, %struct._object** %dict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %call1 = call %struct._object* @PySequence_Fast(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %arg, align 8
  %3 = load %struct._object*, %struct._object** %arg, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %tobool5 = icmp ne %struct._object* %4, null
  br i1 %tobool5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %dict, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 536870912
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.12, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %9 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* %10)
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %11 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end.4
  %18 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 19
  %20 = load i64, i64* %tp_flags14, align 8
  %and15 = and i64 %20, 33554432
  %cmp16 = icmp ne i64 %and15, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  %21 = load %struct._object*, %struct._object** %arg, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %22, i32 0, i32 1
  %23 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %24 = load %struct._object*, %struct._object** %arg, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %25, i32 0, i32 1
  %26 = load i64, i64* %ob_size17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %23, %cond.true ], [ %26, %cond.false ]
  store i64 %cond, i64* %len, align 8
  %27 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 31
  %28 = load %struct._object*, %struct._object** %tp_dict, align 8
  %call18 = call %struct._object* @_PyDict_GetItemId(%struct._object* %28, %struct._Py_Identifier* @PyId_n_sequence_fields)
  %call19 = call i64 @PyLong_AsLong(%struct._object* %call18)
  store i64 %call19, i64* %min_len, align 8
  %29 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 31
  %30 = load %struct._object*, %struct._object** %tp_dict20, align 8
  %call21 = call %struct._object* @_PyDict_GetItemId(%struct._object* %30, %struct._Py_Identifier* @PyId_n_fields)
  %call22 = call i64 @PyLong_AsLong(%struct._object* %call21)
  store i64 %call22, i64* %max_len, align 8
  %31 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_dict23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 31
  %32 = load %struct._object*, %struct._object** %tp_dict23, align 8
  %call24 = call %struct._object* @_PyDict_GetItemId(%struct._object* %32, %struct._Py_Identifier* @PyId_n_unnamed_fields)
  %call25 = call i64 @PyLong_AsLong(%struct._object* %call24)
  store i64 %call25, i64* %n_unnamed_fields, align 8
  %33 = load i64, i64* %min_len, align 8
  %34 = load i64, i64* %max_len, align 8
  %cmp26 = icmp ne i64 %33, %34
  br i1 %cmp26, label %if.then.27, label %if.else.60

if.then.27:                                       ; preds = %cond.end
  %35 = load i64, i64* %len, align 8
  %36 = load i64, i64* %min_len, align 8
  %cmp28 = icmp slt i64 %35, %36
  br i1 %cmp28, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.then.27
  %37 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %38 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 1
  %39 = load i8*, i8** %tp_name30, align 8
  %40 = load i64, i64* %min_len, align 8
  %41 = load i64, i64* %len, align 8
  %call31 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i32 0, i32 0), i8* %39, i64 %40, i64 %41)
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.29
  %42 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp33, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %44, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %47(%struct._object* %48)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.43:                                        ; preds = %if.then.27
  %49 = load i64, i64* %len, align 8
  %50 = load i64, i64* %max_len, align 8
  %cmp44 = icmp sgt i64 %49, %50
  br i1 %cmp44, label %if.then.45, label %if.end.59

if.then.45:                                       ; preds = %if.end.43
  %51 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %52 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 1
  %53 = load i8*, i8** %tp_name46, align 8
  %54 = load i64, i64* %max_len, align 8
  %55 = load i64, i64* %len, align 8
  %call47 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i8* %53, i64 %54, i64 %55)
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.45
  %56 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp49, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %58, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %61(%struct._object* %62)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.43
  br label %if.end.77

if.else.60:                                       ; preds = %cond.end
  %63 = load i64, i64* %len, align 8
  %64 = load i64, i64* %min_len, align 8
  %cmp61 = icmp ne i64 %63, %64
  br i1 %cmp61, label %if.then.62, label %if.end.76

if.then.62:                                       ; preds = %if.else.60
  %65 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %66 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 1
  %67 = load i8*, i8** %tp_name63, align 8
  %68 = load i64, i64* %min_len, align 8
  %69 = load i64, i64* %len, align 8
  %call64 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i8* %67, i64 %68, i64 %69)
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.62
  %70 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp66, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %72, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %75(%struct._object* %76)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.76:                                        ; preds = %if.else.60
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.59
  %77 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call78 = call %struct._object* @PyStructSequence_New(%struct._typeobject* %77)
  %78 = bitcast %struct._object* %call78 to %struct.PyTupleObject*
  store %struct.PyTupleObject* %78, %struct.PyTupleObject** %res, align 8
  %79 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8
  %cmp79 = icmp eq %struct.PyTupleObject* %79, null
  br i1 %cmp79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %if.end.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %80 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp82, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %82, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %85(%struct._object* %86)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.end.77
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.92
  %87 = load i64, i64* %i, align 8
  %88 = load i64, i64* %len, align 8
  %cmp93 = icmp slt i64 %87, %88
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_flags95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 19
  %91 = load i64, i64* %tp_flags95, align 8
  %and96 = and i64 %91, 33554432
  %cmp97 = icmp ne i64 %and96, 0
  br i1 %cmp97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %for.body
  %92 = load i64, i64* %i, align 8
  %93 = load %struct._object*, %struct._object** %arg, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %94, i32 0, i32 1
  %95 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %95, i64 %92
  %96 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.102

cond.false.99:                                    ; preds = %for.body
  %97 = load i64, i64* %i, align 8
  %98 = load %struct._object*, %struct._object** %arg, align 8
  %99 = bitcast %struct._object* %98 to %struct.PyTupleObject*
  %ob_item100 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %99, i32 0, i32 1
  %arrayidx101 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item100, i32 0, i64 %97
  %100 = load %struct._object*, %struct._object** %arrayidx101, align 8
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.true.98
  %cond103 = phi %struct._object* [ %96, %cond.true.98 ], [ %100, %cond.false.99 ]
  store %struct._object* %cond103, %struct._object** %v, align 8
  %101 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt104, align 8
  %inc = add i64 %102, 1
  store i64 %inc, i64* %ob_refcnt104, align 8
  %103 = load %struct._object*, %struct._object** %v, align 8
  %104 = load i64, i64* %i, align 8
  %105 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8
  %ob_item105 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %105, i32 0, i32 1
  %arrayidx106 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item105, i32 0, i64 %104
  store %struct._object* %103, %struct._object** %arrayidx106, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.102
  %106 = load i64, i64* %i, align 8
  %inc107 = add i64 %106, 1
  store i64 %inc107, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.123, %for.end
  %107 = load i64, i64* %i, align 8
  %108 = load i64, i64* %max_len, align 8
  %cmp109 = icmp slt i64 %107, %108
  br i1 %cmp109, label %for.body.110, label %for.end.125

for.body.110:                                     ; preds = %for.cond.108
  %109 = load %struct._object*, %struct._object** %dict, align 8
  %tobool111 = icmp ne %struct._object* %109, null
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.117

land.lhs.true.112:                                ; preds = %for.body.110
  %110 = load %struct._object*, %struct._object** %dict, align 8
  %111 = load i64, i64* %i, align 8
  %112 = load i64, i64* %n_unnamed_fields, align 8
  %sub = sub i64 %111, %112
  %113 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 28
  %114 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8
  %arrayidx113 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %114, i64 %sub
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx113, i32 0, i32 0
  %115 = load i8*, i8** %name, align 8
  %call114 = call %struct._object* @PyDict_GetItemString(%struct._object* %110, i8* %115)
  store %struct._object* %call114, %struct._object** %ob, align 8
  %tobool115 = icmp ne %struct._object* %call114, null
  br i1 %tobool115, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.112
  br label %if.end.118

if.else.117:                                      ; preds = %land.lhs.true.112, %for.body.110
  store %struct._object* @_Py_NoneStruct, %struct._object** %ob, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  %116 = load %struct._object*, %struct._object** %ob, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt119, align 8
  %inc120 = add i64 %117, 1
  store i64 %inc120, i64* %ob_refcnt119, align 8
  %118 = load %struct._object*, %struct._object** %ob, align 8
  %119 = load i64, i64* %i, align 8
  %120 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8
  %ob_item121 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %120, i32 0, i32 1
  %arrayidx122 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item121, i32 0, i64 %119
  store %struct._object* %118, %struct._object** %arrayidx122, align 8
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.118
  %121 = load i64, i64* %i, align 8
  %inc124 = add i64 %121, 1
  store i64 %inc124, i64* %i, align 8
  br label %for.cond.108

for.end.125:                                      ; preds = %for.cond.108
  br label %do.body.126

do.body.126:                                      ; preds = %for.end.125
  %122 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %122, %struct._object** %_py_decref_tmp127, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %124, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %do.body.126
  br label %if.end.135

if.else.132:                                      ; preds = %do.body.126
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_dealloc134 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 4
  %127 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc134, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %127(%struct._object* %128)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  %129 = load %struct.PyTupleObject*, %struct.PyTupleObject** %res, align 8
  %130 = bitcast %struct.PyTupleObject* %129 to %struct._object*
  store %struct._object* %130, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.136, %do.end.91, %do.end.75, %do.end.58, %do.end.42, %do.end, %if.then.3, %if.then
  %131 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %131
}

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare %struct._object* @PyUnicode_FromString(i8*) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_xdecref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct.PyTupleObject* %self, %struct.PyTupleObject** %self.addr, align 8
  store %struct._object* null, %struct._object** %tup, align 8
  store %struct._object* null, %struct._object** %dict, align 8
  %0 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %1 = bitcast %struct.PyTupleObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 31
  %3 = load %struct._object*, %struct._object** %tp_dict, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %3, %struct._Py_Identifier* @PyId_n_fields)
  %call1 = call i64 @PyLong_AsLong(%struct._object* %call)
  store i64 %call1, i64* %n_fields, align 8
  %4 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %5 = bitcast %struct.PyTupleObject* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n_visible_fields, align 8
  %7 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %8 = bitcast %struct.PyTupleObject* %7 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %tp_dict3 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 31
  %10 = load %struct._object*, %struct._object** %tp_dict3, align 8
  %call4 = call %struct._object* @_PyDict_GetItemId(%struct._object* %10, %struct._Py_Identifier* @PyId_n_unnamed_fields)
  %call5 = call i64 @PyLong_AsLong(%struct._object* %call4)
  store i64 %call5, i64* %n_unnamed_fields, align 8
  %11 = load i64, i64* %n_visible_fields, align 8
  %call6 = call %struct._object* @PyTuple_New(i64 %11)
  store %struct._object* %call6, %struct._object** %tup, align 8
  %12 = load %struct._object*, %struct._object** %tup, align 8
  %tobool = icmp ne %struct._object* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %call7 = call %struct._object* @PyDict_New()
  store %struct._object* %call7, %struct._object** %dict, align 8
  %13 = load %struct._object*, %struct._object** %dict, align 8
  %tobool8 = icmp ne %struct._object* %13, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  br label %error

if.end.10:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* %n_visible_fields, align 8
  %cmp = icmp slt i64 %conv, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %18 = load %struct._object*, %struct._object** %arrayidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 %idxprom12
  %22 = load %struct._object*, %struct._object** %arrayidx14, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct._object*, %struct._object** %tup, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 %idxprom15
  store %struct._object* %22, %struct._object** %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc18 = add i32 %26, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.35, %for.end
  %27 = load i32, i32* %i, align 4
  %conv20 = sext i32 %27 to i64
  %28 = load i64, i64* %n_fields, align 8
  %cmp21 = icmp slt i64 %conv20, %28
  br i1 %cmp21, label %for.body.23, label %for.end.37

for.body.23:                                      ; preds = %for.cond.19
  %29 = load i32, i32* %i, align 4
  %conv24 = sext i32 %29 to i64
  %30 = load i64, i64* %n_unnamed_fields, align 8
  %sub = sub i64 %conv24, %30
  %31 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %32 = bitcast %struct.PyTupleObject* %31 to %struct._object*
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_members = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 28
  %34 = load %struct.PyMemberDef*, %struct.PyMemberDef** %tp_members, align 8
  %arrayidx26 = getelementptr %struct.PyMemberDef, %struct.PyMemberDef* %34, i64 %sub
  %name = getelementptr inbounds %struct.PyMemberDef, %struct.PyMemberDef* %arrayidx26, i32 0, i32 0
  %35 = load i8*, i8** %name, align 8
  store i8* %35, i8** %n, align 8
  %36 = load %struct._object*, %struct._object** %dict, align 8
  %37 = load i8*, i8** %n, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %39, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 %idxprom27
  %40 = load %struct._object*, %struct._object** %arrayidx29, align 8
  %call30 = call i32 @PyDict_SetItemString(%struct._object* %36, i8* %37, %struct._object* %40)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.23
  br label %error

if.end.34:                                        ; preds = %for.body.23
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %41 = load i32, i32* %i, align 4
  %inc36 = add i32 %41, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.19

for.end.37:                                       ; preds = %for.cond.19
  %42 = load %struct.PyTupleObject*, %struct.PyTupleObject** %self.addr, align 8
  %43 = bitcast %struct.PyTupleObject* %42 to %struct._object*
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %45 = load %struct._object*, %struct._object** %tup, align 8
  %46 = load %struct._object*, %struct._object** %dict, align 8
  %call39 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._typeobject* %44, %struct._object* %45, %struct._object* %46)
  store %struct._object* %call39, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %for.end.37
  %47 = load %struct._object*, %struct._object** %tup, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt40, align 8
  %dec = add i64 %49, -1
  store i64 %dec, i64* %ob_refcnt40, align 8
  %cmp41 = icmp ne i64 %dec, 0
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %do.body
  br label %if.end.45

if.else:                                          ; preds = %do.body
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %52(%struct._object* %53)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.43
  br label %do.end

do.end:                                           ; preds = %if.end.45
  br label %do.body.46

do.body.46:                                       ; preds = %do.end
  %54 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp47, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %56, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.46
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.46
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %59(%struct._object* %60)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  %61 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %61, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.33, %if.then.9, %if.then
  br label %do.body.58

do.body.58:                                       ; preds = %error
  %62 = load %struct._object*, %struct._object** %tup, align 8
  store %struct._object* %62, %struct._object** %_py_xdecref_tmp, align 8
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp59 = icmp ne %struct._object* %63, null
  br i1 %cmp59, label %if.then.61, label %if.end.74

if.then.61:                                       ; preds = %do.body.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp63, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %66, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %69(%struct._object* %70)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %do.end.73, %do.body.58
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  %71 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp77, align 8
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  %cmp78 = icmp ne %struct._object* %72, null
  br i1 %cmp78, label %if.then.80, label %if.end.93

if.then.80:                                       ; preds = %do.body.76
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp77, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp82, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %75, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %78(%struct._object* %79)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92, %do.body.76
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.94, %do.end.57
  %80 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %80
}

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
