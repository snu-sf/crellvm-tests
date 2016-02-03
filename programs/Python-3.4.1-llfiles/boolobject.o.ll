; ModuleID = 'boolobject.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
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

@_Py_TrueStruct = global %struct._longobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyBool_Type }, i64 1 }, [1 x i32] [i32 1] }, align 8
@_Py_FalseStruct = global %struct._longobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyBool_Type }, i64 0 }, [1 x i32] zeroinitializer }, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@bool_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @bool_and, %struct._object* (%struct._object*, %struct._object*)* @bool_xor, %struct._object* (%struct._object*, %struct._object*)* @bool_or, %struct._object* (%struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@bool_doc = internal global [223 x i8] c"bool(x) -> bool\0A\0AReturns True when the argument x is true, False otherwise.\0AThe builtins True and False are the only two instances of the class bool.\0AThe class bool is a subclass of the class int, and cannot be subclassed.\00", align 16
@PyLong_Type = external global %struct._typeobject, align 8
@PyBool_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* null, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* @bool_repr, %struct.PyNumberMethods* @bool_as_number, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @bool_repr, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @bool_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @PyLong_Type, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bool_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@true_str = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@false_str = internal unnamed_addr global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@bool_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"|O:bool\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyBool_FromLong(i64 %ok) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %ok, i64 0, metadata !348, metadata !406), !dbg !407
  %tobool = icmp eq i64 %ok, 0, !dbg !408
  %. = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0)
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %., i64 0, i32 0, !dbg !410
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !410, !tbaa !411
  %inc = add i64 %0, 1, !dbg !410
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !410, !tbaa !411
  ret %struct._object* %., !dbg !417
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_repr(%struct._object* readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !352, metadata !406), !dbg !418
  %cmp = icmp eq %struct._object* %self, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !419
  br i1 %cmp, label %if.then, label %if.else, !dbg !421

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @true_str, align 8, !dbg !422, !tbaa !423
  %tobool = icmp eq %struct._object* %0, null, !dbg !422
  br i1 %tobool, label %cond.false, label %if.then.8, !dbg !422

cond.false:                                       ; preds = %if.then
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #1, !dbg !424
  store %struct._object* %call, %struct._object** @true_str, align 8, !dbg !425, !tbaa !423
  br label %do.body, !dbg !422

if.else:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @false_str, align 8, !dbg !426, !tbaa !423
  %tobool1 = icmp eq %struct._object* %1, null, !dbg !426
  br i1 %tobool1, label %cond.false.3, label %if.then.8, !dbg !426

cond.false.3:                                     ; preds = %if.else
  %call4 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #1, !dbg !427
  store %struct._object* %call4, %struct._object** @false_str, align 8, !dbg !428, !tbaa !423
  br label %do.body, !dbg !426

do.body:                                          ; preds = %cond.false.3, %cond.false
  %s.0 = phi %struct._object* [ %call, %cond.false ], [ %call4, %cond.false.3 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %s.0, i64 0, metadata !354, metadata !406), !dbg !429
  %cmp7 = icmp eq %struct._object* %s.0, null, !dbg !431
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !433

if.then.8:                                        ; preds = %if.else, %if.then, %do.body
  %s.015 = phi %struct._object* [ %s.0, %do.body ], [ %1, %if.else ], [ %0, %if.then ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %s.015, i64 0, i32 0, !dbg !434
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !434, !tbaa !411
  %inc = add i64 %2, 1, !dbg !434
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !434, !tbaa !411
  br label %if.end.9, !dbg !434

if.end.9:                                         ; preds = %do.body, %if.then.8
  %s.016 = phi %struct._object* [ null, %do.body ], [ %s.015, %if.then.8 ]
  ret %struct._object* %s.016, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %x = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !374, metadata !406), !dbg !437
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !375, metadata !406), !dbg !438
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !376, metadata !406), !dbg !439
  %0 = bitcast %struct._object** %x to i8*, !dbg !440
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !440
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !377, metadata !406), !dbg !441
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object** %x, align 8, !dbg !441, !tbaa !423
  tail call void @llvm.dbg.value(metadata %struct._object** %x, i64 0, metadata !377, metadata !406), !dbg !441
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @bool_new.kwlist, i64 0, i64 0), %struct._object** nonnull %x) #1, !dbg !442
  %tobool = icmp eq i32 %call, 0, !dbg !442
  br i1 %tobool, label %cleanup, label %if.end, !dbg !444

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %x, i64 0, metadata !377, metadata !406), !dbg !441
  %1 = load %struct._object*, %struct._object** %x, align 8, !dbg !445, !tbaa !423
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %1) #1, !dbg !446
  %cmp = icmp slt i32 %call1, 0, !dbg !447
  br i1 %cmp, label %cleanup, label %if.end.4, !dbg !449

if.end.4:                                         ; preds = %if.end
  %tobool.i = icmp eq i32 %call1, 0, !dbg !450
  %..i = select i1 %tobool.i, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !452
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %..i, i64 0, i32 0, !dbg !453
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !453, !tbaa !411
  %inc.i = add i64 %2, 1, !dbg !453
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !453, !tbaa !411
  br label %cleanup, !dbg !454

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi %struct._object* [ %..i, %if.end.4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !455
  ret %struct._object* %retval.0, !dbg !455
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_and(%struct._object* %a, %struct._object* %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !358, metadata !406), !dbg !456
  tail call void @llvm.dbg.value(metadata %struct._object* %b, i64 0, metadata !359, metadata !406), !dbg !457
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %a, i64 0, i32 1, !dbg !458
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !458, !tbaa !460
  %cmp = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !458
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !461

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %b, i64 0, i32 1, !dbg !462
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !462, !tbaa !460
  %cmp2 = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !462
  br i1 %cmp2, label %if.end, label %if.then, !dbg !464

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i64 0, i32 10), align 8, !dbg !465, !tbaa !466
  %nb_and = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %2, i64 0, i32 13, !dbg !470
  %3 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_and, align 8, !dbg !470, !tbaa !471
  %call = tail call %struct._object* %3(%struct._object* %a, %struct._object* %b) #1, !dbg !473
  br label %return, !dbg !474

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq %struct._object* %a, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !475
  %cmp4 = icmp eq %struct._object* %b, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !476
  %tobool.i.demorgan = and i1 %cmp3, %cmp4, !dbg !477
  %..i = select i1 %tobool.i.demorgan, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !479
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %..i, i64 0, i32 0, !dbg !480
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !480, !tbaa !411
  %inc.i = add i64 %4, 1, !dbg !480
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !480, !tbaa !411
  br label %return, !dbg !481

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %..i, %if.end ], [ %call, %if.then ]
  ret %struct._object* %retval.0, !dbg !482
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_xor(%struct._object* %a, %struct._object* %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !362, metadata !406), !dbg !483
  tail call void @llvm.dbg.value(metadata %struct._object* %b, i64 0, metadata !363, metadata !406), !dbg !484
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %a, i64 0, i32 1, !dbg !485
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !485, !tbaa !460
  %cmp = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !485
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !487

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %b, i64 0, i32 1, !dbg !488
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !488, !tbaa !460
  %cmp2 = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !488
  br i1 %cmp2, label %if.end, label %if.then, !dbg !490

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i64 0, i32 10), align 8, !dbg !491, !tbaa !466
  %nb_xor = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %2, i64 0, i32 14, !dbg !492
  %3 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_xor, align 8, !dbg !492, !tbaa !493
  %call = tail call %struct._object* %3(%struct._object* %a, %struct._object* %b) #1, !dbg !494
  br label %return, !dbg !495

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq %struct._object* %a, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !496
  %cmp4 = icmp eq %struct._object* %b, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !497
  %xor12 = xor i1 %cmp3, %cmp4, !dbg !498
  %..i = select i1 %xor12, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !499
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %..i, i64 0, i32 0, !dbg !500
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !500, !tbaa !411
  %inc.i = add i64 %4, 1, !dbg !500
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !500, !tbaa !411
  br label %return, !dbg !502

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %..i, %if.end ], [ %call, %if.then ]
  ret %struct._object* %retval.0, !dbg !503
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_or(%struct._object* %a, %struct._object* %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !366, metadata !406), !dbg !504
  tail call void @llvm.dbg.value(metadata %struct._object* %b, i64 0, metadata !367, metadata !406), !dbg !505
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %a, i64 0, i32 1, !dbg !506
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !506, !tbaa !460
  %cmp = icmp eq %struct._typeobject* %0, @PyBool_Type, !dbg !506
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !508

lor.lhs.false:                                    ; preds = %entry
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %b, i64 0, i32 1, !dbg !509
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !509, !tbaa !460
  %cmp2 = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !509
  br i1 %cmp2, label %if.end, label %if.then, !dbg !511

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i64 0, i32 10), align 8, !dbg !512, !tbaa !466
  %nb_or = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %2, i64 0, i32 15, !dbg !513
  %3 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_or, align 8, !dbg !513, !tbaa !514
  %call = tail call %struct._object* %3(%struct._object* %a, %struct._object* %b) #1, !dbg !515
  br label %return, !dbg !516

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp eq %struct._object* %a, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !517
  %conv = zext i1 %cmp3 to i64, !dbg !517
  %cmp4 = icmp eq %struct._object* %b, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !518
  %conv5 = zext i1 %cmp4 to i64, !dbg !518
  %or = or i64 %conv5, %conv, !dbg !519
  tail call void @llvm.dbg.value(metadata i64 %or, i64 0, metadata !348, metadata !406), !dbg !520
  %tobool.i = icmp eq i64 %or, 0, !dbg !522
  %..i = select i1 %tobool.i, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), !dbg !523
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %..i, i64 0, i32 0, !dbg !524
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !524, !tbaa !411
  %inc.i = add i64 %4, 1, !dbg !524
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !524, !tbaa !411
  br label %return, !dbg !525

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %..i, %if.end ], [ %call, %if.then ]
  ret %struct._object* %retval.0, !dbg !526
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!403, !404}
!llvm.ident = !{!405}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !343, globals: !379)
!1 = !DIFile(filename: "Objects/boolobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !7, file: !6, line: 108, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !6, line: 334, size: 3200, align: 64, elements: !20)
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !6, line: 335, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !6, line: 114, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 111, size: 192, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !6, line: 112, baseType: !5, size: 128, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !23, file: !6, line: 113, baseType: !10, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !19, file: !6, line: 336, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !19, file: !6, line: 341, baseType: !34, size: 64, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !6, line: 308, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !19, file: !6, line: 342, baseType: !39, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !6, line: 314, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !4, !44, !43}
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 246, size: 1728, align: 64, elements: !48)
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!48 = !{!49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !75, !77, !79, !83, !86, !88, !90, !91, !92, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 247, baseType: !43, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 252, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 253, baseType: !51, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 254, baseType: !51, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 255, baseType: !51, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 256, baseType: !51, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 257, baseType: !51, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 258, baseType: !51, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 259, baseType: !51, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 261, baseType: !51, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 262, baseType: !51, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 263, baseType: !51, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 265, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 161, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !47, line: 162, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !47, line: 163, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !47, line: 167, baseType: !43, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 267, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 269, baseType: !43, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 273, baseType: !43, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 275, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 140, baseType: !16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 279, baseType: !76, size: 16, align: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 280, baseType: !78, size: 8, align: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 281, baseType: !80, size: 8, align: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 285, baseType: !84, size: 64, align: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 155, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 294, baseType: !87, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 141, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !46, file: !47, line: 303, baseType: !89, size: 64, align: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !46, file: !47, line: 304, baseType: !89, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !46, file: !47, line: 305, baseType: !89, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !46, file: !47, line: 306, baseType: !89, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 309, baseType: !43, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !19, file: !6, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !6, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!4, !4, !51}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !19, file: !6, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !6, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!43, !4, !51, !4}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !19, file: !6, line: 345, baseType: !89, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !19, file: !6, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !6, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !19, file: !6, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !6, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !6, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !6, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !4, !4}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !6, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !6, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !6, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !6, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !6, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !6, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!4, !4, !4, !4}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !6, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !6, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !6, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !6, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !6, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !6, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!43, !4}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !6, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !6, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !6, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !6, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !6, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !6, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !6, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !6, line: 258, baseType: !89, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !6, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !6, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !6, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !6, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !6, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !6, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !6, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !6, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !6, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !6, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !6, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !6, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !6, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !6, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !6, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !6, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !19, file: !6, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !6, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !6, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !6, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!10, !4}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !6, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !6, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !6, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !4, !10}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !6, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !6, line: 285, baseType: !89, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !6, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !6, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!43, !4, !10, !4}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !6, line: 287, baseType: !89, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !6, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !6, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!43, !4, !4}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !6, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !6, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !19, file: !6, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !6, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !6, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !6, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !6, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !6, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!43, !4, !4, !4}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !19, file: !6, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !6, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !4}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !11, line: 186, baseType: !10)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !19, file: !6, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !19, file: !6, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !19, file: !6, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !6, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !19, file: !6, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !6, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !19, file: !6, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !6, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !6, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !6, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!43, !4, !235, !43}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !6, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !6, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !6, line: 179, baseType: !89, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !6, line: 180, baseType: !4, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !6, line: 181, baseType: !10, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !6, line: 182, baseType: !10, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !6, line: 184, baseType: !43, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !6, line: 185, baseType: !43, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !6, line: 186, baseType: !51, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !6, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !6, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !6, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !6, line: 190, baseType: !89, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !6, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !6, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !4, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !19, file: !6, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !19, file: !6, line: 368, baseType: !28, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !19, file: !6, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !6, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!43, !4, !263, !89}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !6, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!43, !4, !89}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !19, file: !6, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !19, file: !6, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !6, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!4, !4, !4, !43}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !19, file: !6, line: 382, baseType: !10, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !19, file: !6, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !6, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !19, file: !6, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !6, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !19, file: !6, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !6, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !51, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!4, !4, !89}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!43, !4, !4, !89}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!4, !18, !10}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!4, !18, !4, !4}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !89}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!343 = !{!344, !350, !356, !360, !364, !368}
!344 = !DISubprogram(name: "PyBool_FromLong", scope: !1, file: !1, line: 28, type: !345, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @PyBool_FromLong, variables: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!4, !16}
!347 = !{!348, !349}
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ok", arg: 1, scope: !344, file: !1, line: 28, type: !16)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !344, file: !1, line: 30, type: !4)
!350 = !DISubprogram(name: "bool_repr", scope: !1, file: !1, line: 12, type: !116, isLocal: true, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @bool_repr, variables: !351)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !350, file: !1, line: 12, type: !4)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !350, file: !1, line: 14, type: !4)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !355, file: !1, line: 22, type: !4)
!355 = distinct !DILexicalBlock(scope: !350, file: !1, line: 22, column: 5)
!356 = !DISubprogram(name: "bool_and", scope: !1, file: !1, line: 60, type: !126, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_and, variables: !357)
!357 = !{!358, !359}
!358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !356, file: !1, line: 60, type: !4)
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !356, file: !1, line: 60, type: !4)
!360 = !DISubprogram(name: "bool_xor", scope: !1, file: !1, line: 76, type: !126, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_xor, variables: !361)
!361 = !{!362, !363}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !360, file: !1, line: 76, type: !4)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !360, file: !1, line: 76, type: !4)
!364 = !DISubprogram(name: "bool_or", scope: !1, file: !1, line: 68, type: !126, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_or, variables: !365)
!365 = !{!366, !367}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !364, file: !1, line: 68, type: !4)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !364, file: !1, line: 68, type: !4)
!368 = !DISubprogram(name: "bool_new", scope: !1, file: !1, line: 43, type: !369, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bool_new, variables: !373)
!369 = !DISubroutineType(types: !370)
!370 = !{!4, !371, !4, !4}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !368, file: !1, line: 43, type: !371)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !368, file: !1, line: 43, type: !4)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !368, file: !1, line: 43, type: !4)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !368, file: !1, line: 46, type: !4)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !368, file: !1, line: 47, type: !16)
!379 = !{!380, !381, !391, !392, !393, !394, !395, !399}
!380 = !DIGlobalVariable(name: "PyBool_Type", scope: !0, file: !1, line: 133, type: !372, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyBool_Type)
!381 = !DIGlobalVariable(name: "_Py_FalseStruct", scope: !0, file: !1, line: 176, type: !382, isLocal: false, isDefinition: true, variable: %struct._longobject* @_Py_FalseStruct)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_longobject", file: !383, line: 89, size: 256, align: 64, elements: !384)
!383 = !DIFile(filename: "Include/longintrepr.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !382, file: !383, line: 90, baseType: !22, size: 192, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_digit", scope: !382, file: !383, line: 91, baseType: !387, size: 32, align: 32, offset: 192)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 32, align: 32, elements: !81)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit", file: !383, line: 49, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !390, line: 51, baseType: !341)
!390 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!391 = !DIGlobalVariable(name: "_Py_TrueStruct", scope: !0, file: !1, line: 181, type: !382, isLocal: false, isDefinition: true, variable: %struct._longobject* @_Py_TrueStruct)
!392 = !DIGlobalVariable(name: "true_str", scope: !0, file: !1, line: 9, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @true_str)
!393 = !DIGlobalVariable(name: "false_str", scope: !0, file: !1, line: 8, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @false_str)
!394 = !DIGlobalVariable(name: "bool_as_number", scope: !0, file: !1, line: 94, type: !120, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @bool_as_number)
!395 = !DIGlobalVariable(name: "bool_doc", scope: !0, file: !1, line: 85, type: !396, isLocal: true, isDefinition: true, variable: [223 x i8]* @bool_doc)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1784, align: 8, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 223)
!399 = !DIGlobalVariable(name: "kwlist", scope: !368, file: !1, line: 45, type: !400, isLocal: true, isDefinition: true, variable: [2 x i8*]* @bool_new.kwlist)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 64, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2)
!403 = !{i32 2, !"Dwarf Version", i32 4}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!406 = !DIExpression()
!407 = !DILocation(line: 28, column: 32, scope: !344)
!408 = !DILocation(line: 32, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !344, file: !1, line: 32, column: 9)
!410 = !DILocation(line: 36, column: 5, scope: !344)
!411 = !{!412, !413, i64 0}
!412 = !{!"_object", !413, i64 0, !416, i64 8}
!413 = !{!"long", !414, i64 0}
!414 = !{!"omnipotent char", !415, i64 0}
!415 = !{!"Simple C/C++ TBAA"}
!416 = !{!"any pointer", !414, i64 0}
!417 = !DILocation(line: 37, column: 5, scope: !344)
!418 = !DILocation(line: 12, column: 21, scope: !350)
!419 = !DILocation(line: 16, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !350, file: !1, line: 16, column: 9)
!421 = !DILocation(line: 16, column: 9, scope: !350)
!422 = !DILocation(line: 17, column: 13, scope: !420)
!423 = !{!416, !416, i64 0}
!424 = !DILocation(line: 18, column: 25, scope: !420)
!425 = !DILocation(line: 18, column: 23, scope: !420)
!426 = !DILocation(line: 20, column: 13, scope: !420)
!427 = !DILocation(line: 21, column: 26, scope: !420)
!428 = !DILocation(line: 21, column: 24, scope: !420)
!429 = !DILocation(line: 22, column: 5, scope: !430)
!430 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 1)
!431 = !DILocation(line: 22, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !355, file: !1, line: 22, column: 5)
!433 = !DILocation(line: 22, column: 5, scope: !355)
!434 = !DILocation(line: 22, column: 5, scope: !435)
!435 = !DILexicalBlockFile(scope: !432, file: !1, discriminator: 2)
!436 = !DILocation(line: 23, column: 5, scope: !350)
!437 = !DILocation(line: 43, column: 24, scope: !368)
!438 = !DILocation(line: 43, column: 40, scope: !368)
!439 = !DILocation(line: 43, column: 56, scope: !368)
!440 = !DILocation(line: 46, column: 5, scope: !368)
!441 = !DILocation(line: 46, column: 15, scope: !368)
!442 = !DILocation(line: 49, column: 10, scope: !443)
!443 = distinct !DILexicalBlock(scope: !368, file: !1, line: 49, column: 9)
!444 = !DILocation(line: 49, column: 9, scope: !368)
!445 = !DILocation(line: 51, column: 26, scope: !368)
!446 = !DILocation(line: 51, column: 10, scope: !368)
!447 = !DILocation(line: 52, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !368, file: !1, line: 52, column: 9)
!449 = !DILocation(line: 52, column: 9, scope: !368)
!450 = !DILocation(line: 32, column: 9, scope: !409, inlinedAt: !451)
!451 = distinct !DILocation(line: 54, column: 12, scope: !368)
!452 = !DILocation(line: 54, column: 12, scope: !368)
!453 = !DILocation(line: 36, column: 5, scope: !344, inlinedAt: !451)
!454 = !DILocation(line: 54, column: 5, scope: !368)
!455 = !DILocation(line: 55, column: 1, scope: !368)
!456 = !DILocation(line: 60, column: 20, scope: !356)
!457 = !DILocation(line: 60, column: 33, scope: !356)
!458 = !DILocation(line: 62, column: 10, scope: !459)
!459 = distinct !DILexicalBlock(scope: !356, file: !1, line: 62, column: 9)
!460 = !{!412, !416, i64 8}
!461 = !DILocation(line: 62, column: 26, scope: !459)
!462 = !DILocation(line: 62, column: 30, scope: !463)
!463 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!464 = !DILocation(line: 62, column: 9, scope: !356)
!465 = !DILocation(line: 63, column: 28, scope: !459)
!466 = !{!467, !416, i64 96}
!467 = !{!"_typeobject", !468, i64 0, !416, i64 24, !413, i64 32, !413, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !416, i64 72, !416, i64 80, !416, i64 88, !416, i64 96, !416, i64 104, !416, i64 112, !416, i64 120, !416, i64 128, !416, i64 136, !416, i64 144, !416, i64 152, !416, i64 160, !413, i64 168, !416, i64 176, !416, i64 184, !416, i64 192, !416, i64 200, !413, i64 208, !416, i64 216, !416, i64 224, !416, i64 232, !416, i64 240, !416, i64 248, !416, i64 256, !416, i64 264, !416, i64 272, !416, i64 280, !413, i64 288, !416, i64 296, !416, i64 304, !416, i64 312, !416, i64 320, !416, i64 328, !416, i64 336, !416, i64 344, !416, i64 352, !416, i64 360, !416, i64 368, !416, i64 376, !469, i64 384, !416, i64 392}
!468 = !{!"", !412, i64 0, !413, i64 16}
!469 = !{!"int", !414, i64 0}
!470 = !DILocation(line: 63, column: 42, scope: !459)
!471 = !{!472, !416, i64 104}
!472 = !{!"", !416, i64 0, !416, i64 8, !416, i64 16, !416, i64 24, !416, i64 32, !416, i64 40, !416, i64 48, !416, i64 56, !416, i64 64, !416, i64 72, !416, i64 80, !416, i64 88, !416, i64 96, !416, i64 104, !416, i64 112, !416, i64 120, !416, i64 128, !416, i64 136, !416, i64 144, !416, i64 152, !416, i64 160, !416, i64 168, !416, i64 176, !416, i64 184, !416, i64 192, !416, i64 200, !416, i64 208, !416, i64 216, !416, i64 224, !416, i64 232, !416, i64 240, !416, i64 248, !416, i64 256, !416, i64 264}
!473 = !DILocation(line: 63, column: 16, scope: !459)
!474 = !DILocation(line: 63, column: 9, scope: !459)
!475 = !DILocation(line: 64, column: 31, scope: !356)
!476 = !DILocation(line: 64, column: 48, scope: !356)
!477 = !DILocation(line: 32, column: 9, scope: !409, inlinedAt: !478)
!478 = distinct !DILocation(line: 64, column: 12, scope: !356)
!479 = !DILocation(line: 64, column: 12, scope: !356)
!480 = !DILocation(line: 36, column: 5, scope: !344, inlinedAt: !478)
!481 = !DILocation(line: 64, column: 5, scope: !356)
!482 = !DILocation(line: 65, column: 1, scope: !356)
!483 = !DILocation(line: 76, column: 20, scope: !360)
!484 = !DILocation(line: 76, column: 33, scope: !360)
!485 = !DILocation(line: 78, column: 10, scope: !486)
!486 = distinct !DILexicalBlock(scope: !360, file: !1, line: 78, column: 9)
!487 = !DILocation(line: 78, column: 26, scope: !486)
!488 = !DILocation(line: 78, column: 30, scope: !489)
!489 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!490 = !DILocation(line: 78, column: 9, scope: !360)
!491 = !DILocation(line: 79, column: 28, scope: !486)
!492 = !DILocation(line: 79, column: 42, scope: !486)
!493 = !{!472, !416, i64 112}
!494 = !DILocation(line: 79, column: 16, scope: !486)
!495 = !DILocation(line: 79, column: 9, scope: !486)
!496 = !DILocation(line: 80, column: 31, scope: !360)
!497 = !DILocation(line: 80, column: 48, scope: !360)
!498 = !DILocation(line: 80, column: 43, scope: !360)
!499 = !DILocation(line: 80, column: 12, scope: !360)
!500 = !DILocation(line: 36, column: 5, scope: !344, inlinedAt: !501)
!501 = distinct !DILocation(line: 80, column: 12, scope: !360)
!502 = !DILocation(line: 80, column: 5, scope: !360)
!503 = !DILocation(line: 81, column: 1, scope: !360)
!504 = !DILocation(line: 68, column: 19, scope: !364)
!505 = !DILocation(line: 68, column: 32, scope: !364)
!506 = !DILocation(line: 70, column: 10, scope: !507)
!507 = distinct !DILexicalBlock(scope: !364, file: !1, line: 70, column: 9)
!508 = !DILocation(line: 70, column: 26, scope: !507)
!509 = !DILocation(line: 70, column: 30, scope: !510)
!510 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!511 = !DILocation(line: 70, column: 9, scope: !364)
!512 = !DILocation(line: 71, column: 28, scope: !507)
!513 = !DILocation(line: 71, column: 42, scope: !507)
!514 = !{!472, !416, i64 120}
!515 = !DILocation(line: 71, column: 16, scope: !507)
!516 = !DILocation(line: 71, column: 9, scope: !507)
!517 = !DILocation(line: 72, column: 31, scope: !364)
!518 = !DILocation(line: 72, column: 48, scope: !364)
!519 = !DILocation(line: 72, column: 43, scope: !364)
!520 = !DILocation(line: 28, column: 32, scope: !344, inlinedAt: !521)
!521 = distinct !DILocation(line: 72, column: 12, scope: !364)
!522 = !DILocation(line: 32, column: 9, scope: !409, inlinedAt: !521)
!523 = !DILocation(line: 72, column: 12, scope: !364)
!524 = !DILocation(line: 36, column: 5, scope: !344, inlinedAt: !521)
!525 = !DILocation(line: 72, column: 5, scope: !364)
!526 = !DILocation(line: 73, column: 1, scope: !364)
