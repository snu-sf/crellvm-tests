; ModuleID = 'irs-onlybc/boolobject.bc'
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
@true_str = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@false_str = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@bool_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"|O:bool\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyBool_FromLong(i64 %ok) #0 {
entry:
  %ok.addr = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  store i64 %ok, i64* %ok.addr, align 8, !tbaa !407
  call void @llvm.dbg.declare(metadata i64* %ok.addr, metadata !349, metadata !411), !dbg !412
  %0 = bitcast %struct._object** %result to i8*, !dbg !413
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !413
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !350, metadata !411), !dbg !414
  %1 = load i64, i64* %ok.addr, align 8, !dbg !415, !tbaa !407
  %tobool = icmp ne i64 %1, 0, !dbg !415
  br i1 %tobool, label %if.then, label %if.else, !dbg !417

if.then:                                          ; preds = %entry
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !418, !tbaa !419
  br label %if.end, !dbg !421

if.else:                                          ; preds = %entry
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !422, !tbaa !419
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct._object*, %struct._object** %result, align 8, !dbg !423, !tbaa !419
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !424
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !425, !tbaa !426
  %inc = add i64 %3, 1, !dbg !425
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !425, !tbaa !426
  %4 = load %struct._object*, %struct._object** %result, align 8, !dbg !428, !tbaa !419
  %5 = bitcast %struct._object** %result to i8*, !dbg !429
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !429
  ret %struct._object* %4, !dbg !430
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_repr(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %s = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !353, metadata !411), !dbg !431
  %0 = bitcast %struct._object** %s to i8*, !dbg !432
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !432
  call void @llvm.dbg.declare(metadata %struct._object** %s, metadata !354, metadata !411), !dbg !433
  %1 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !434, !tbaa !419
  %cmp = icmp eq %struct._object* %1, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !436
  br i1 %cmp, label %if.then, label %if.else, !dbg !437

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @true_str, align 8, !dbg !438, !tbaa !419
  %tobool = icmp ne %struct._object* %2, null, !dbg !438
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !438

cond.true:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @true_str, align 8, !dbg !439, !tbaa !419
  br label %cond.end, !dbg !438

cond.false:                                       ; preds = %if.then
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !441
  store %struct._object* %call, %struct._object** @true_str, align 8, !dbg !442, !tbaa !419
  br label %cond.end, !dbg !438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %call, %cond.false ], !dbg !438
  store %struct._object* %cond, %struct._object** %s, align 8, !dbg !443, !tbaa !419
  br label %if.end, !dbg !446

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @false_str, align 8, !dbg !447, !tbaa !419
  %tobool1 = icmp ne %struct._object* %4, null, !dbg !447
  br i1 %tobool1, label %cond.true.2, label %cond.false.3, !dbg !447

cond.true.2:                                      ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @false_str, align 8, !dbg !448, !tbaa !419
  br label %cond.end.5, !dbg !447

cond.false.3:                                     ; preds = %if.else
  %call4 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)), !dbg !449
  store %struct._object* %call4, %struct._object** @false_str, align 8, !dbg !450, !tbaa !419
  br label %cond.end.5, !dbg !447

cond.end.5:                                       ; preds = %cond.false.3, %cond.true.2
  %cond6 = phi %struct._object* [ %5, %cond.true.2 ], [ %call4, %cond.false.3 ], !dbg !447
  store %struct._object* %cond6, %struct._object** %s, align 8, !dbg !451, !tbaa !419
  br label %if.end

if.end:                                           ; preds = %cond.end.5, %cond.end
  br label %do.body, !dbg !452

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !453
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !453
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !355, metadata !411), !dbg !455
  %7 = load %struct._object*, %struct._object** %s, align 8, !dbg !456, !tbaa !419
  store %struct._object* %7, %struct._object** %_py_xincref_tmp, align 8, !dbg !455, !tbaa !419
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !457, !tbaa !419
  %cmp7 = icmp ne %struct._object* %8, null, !dbg !459
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !460

if.then.8:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !461, !tbaa !419
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !463
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !464, !tbaa !426
  %inc = add i64 %10, 1, !dbg !464
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !464, !tbaa !426
  br label %if.end.9, !dbg !465

if.end.9:                                         ; preds = %if.then.8, %do.body
  %11 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !466
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !466
  br label %do.cond, !dbg !469

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !470

do.end:                                           ; preds = %do.cond
  %12 = load %struct._object*, %struct._object** %s, align 8, !dbg !472, !tbaa !419
  %13 = bitcast %struct._object** %s to i8*, !dbg !473
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !473
  ret %struct._object* %12, !dbg !474
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %ok = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !375, metadata !411), !dbg !475
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !376, metadata !411), !dbg !476
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !377, metadata !411), !dbg !477
  %0 = bitcast %struct._object** %x to i8*, !dbg !478
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !478
  call void @llvm.dbg.declare(metadata %struct._object** %x, metadata !378, metadata !411), !dbg !479
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %x, align 8, !dbg !479, !tbaa !419
  %1 = bitcast i64* %ok to i8*, !dbg !480
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !480
  call void @llvm.dbg.declare(metadata i64* %ok, metadata !379, metadata !411), !dbg !481
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !482, !tbaa !419
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !484, !tbaa !419
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @bool_new.kwlist, i32 0, i32 0), %struct._object** %x), !dbg !485
  %tobool = icmp ne i32 %call, 0, !dbg !485
  br i1 %tobool, label %if.end, label %if.then, !dbg !486

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !487

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %x, align 8, !dbg !488, !tbaa !419
  %call1 = call i32 @PyObject_IsTrue(%struct._object* %4), !dbg !489
  %conv = sext i32 %call1 to i64, !dbg !489
  store i64 %conv, i64* %ok, align 8, !dbg !490, !tbaa !407
  %5 = load i64, i64* %ok, align 8, !dbg !491, !tbaa !407
  %cmp = icmp slt i64 %5, 0, !dbg !493
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !494

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !495

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %ok, align 8, !dbg !496, !tbaa !407
  %call5 = call %struct._object* @PyBool_FromLong(i64 %6), !dbg !497
  store %struct._object* %call5, %struct._object** %retval, !dbg !498
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %7 = bitcast i64* %ok to i8*, !dbg !499
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !499
  %8 = bitcast %struct._object** %x to i8*, !dbg !499
  call void @llvm.lifetime.end(i64 8, i8* %8) #2, !dbg !499
  %9 = load %struct._object*, %struct._object** %retval, !dbg !499
  ret %struct._object* %9, !dbg !499
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_and(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !359, metadata !411), !dbg !500
  store %struct._object* %b, %struct._object** %b.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %b.addr, metadata !360, metadata !411), !dbg !501
  %0 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !502, !tbaa !419
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !504
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !504, !tbaa !505
  %cmp = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !506
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !507

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !508, !tbaa !419
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !510
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !510, !tbaa !505
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type, !dbg !511
  br i1 %cmp2, label %if.end, label %if.then, !dbg !512

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 10), align 8, !dbg !513, !tbaa !514
  %nb_and = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %4, i32 0, i32 13, !dbg !518
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_and, align 8, !dbg !518, !tbaa !519
  %6 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !521, !tbaa !419
  %7 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !522, !tbaa !419
  %call = call %struct._object* %5(%struct._object* %6, %struct._object* %7), !dbg !523
  store %struct._object* %call, %struct._object** %retval, !dbg !524
  br label %return, !dbg !524

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !525, !tbaa !419
  %cmp3 = icmp eq %struct._object* %8, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !526
  %conv = zext i1 %cmp3 to i32, !dbg !526
  %9 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !527, !tbaa !419
  %cmp4 = icmp eq %struct._object* %9, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !528
  %conv5 = zext i1 %cmp4 to i32, !dbg !528
  %and = and i32 %conv, %conv5, !dbg !529
  %conv6 = sext i32 %and to i64, !dbg !530
  %call7 = call %struct._object* @PyBool_FromLong(i64 %conv6), !dbg !531
  store %struct._object* %call7, %struct._object** %retval, !dbg !532
  br label %return, !dbg !532

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !533
  ret %struct._object* %10, !dbg !533
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_xor(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !363, metadata !411), !dbg !534
  store %struct._object* %b, %struct._object** %b.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %b.addr, metadata !364, metadata !411), !dbg !535
  %0 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !536, !tbaa !419
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !538
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !538, !tbaa !505
  %cmp = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !539
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !540

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !541, !tbaa !419
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !543
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !543, !tbaa !505
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type, !dbg !544
  br i1 %cmp2, label %if.end, label %if.then, !dbg !545

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 10), align 8, !dbg !546, !tbaa !514
  %nb_xor = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %4, i32 0, i32 14, !dbg !547
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_xor, align 8, !dbg !547, !tbaa !548
  %6 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !549, !tbaa !419
  %7 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !550, !tbaa !419
  %call = call %struct._object* %5(%struct._object* %6, %struct._object* %7), !dbg !551
  store %struct._object* %call, %struct._object** %retval, !dbg !552
  br label %return, !dbg !552

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !553, !tbaa !419
  %cmp3 = icmp eq %struct._object* %8, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !554
  %conv = zext i1 %cmp3 to i32, !dbg !554
  %9 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !555, !tbaa !419
  %cmp4 = icmp eq %struct._object* %9, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !556
  %conv5 = zext i1 %cmp4 to i32, !dbg !556
  %xor = xor i32 %conv, %conv5, !dbg !557
  %conv6 = sext i32 %xor to i64, !dbg !558
  %call7 = call %struct._object* @PyBool_FromLong(i64 %conv6), !dbg !559
  store %struct._object* %call7, %struct._object** %retval, !dbg !560
  br label %return, !dbg !560

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !561
  ret %struct._object* %10, !dbg !561
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @bool_or(%struct._object* %a, %struct._object* %b) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %a.addr = alloca %struct._object*, align 8
  %b.addr = alloca %struct._object*, align 8
  store %struct._object* %a, %struct._object** %a.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %a.addr, metadata !367, metadata !411), !dbg !562
  store %struct._object* %b, %struct._object** %b.addr, align 8, !tbaa !419
  call void @llvm.dbg.declare(metadata %struct._object** %b.addr, metadata !368, metadata !411), !dbg !563
  %0 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !564, !tbaa !419
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !566
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !566, !tbaa !505
  %cmp = icmp eq %struct._typeobject* %1, @PyBool_Type, !dbg !567
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !568

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !569, !tbaa !419
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !571
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !571, !tbaa !505
  %cmp2 = icmp eq %struct._typeobject* %3, @PyBool_Type, !dbg !572
  br i1 %cmp2, label %if.end, label %if.then, !dbg !573

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 10), align 8, !dbg !574, !tbaa !514
  %nb_or = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %4, i32 0, i32 15, !dbg !575
  %5 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_or, align 8, !dbg !575, !tbaa !576
  %6 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !577, !tbaa !419
  %7 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !578, !tbaa !419
  %call = call %struct._object* %5(%struct._object* %6, %struct._object* %7), !dbg !579
  store %struct._object* %call, %struct._object** %retval, !dbg !580
  br label %return, !dbg !580

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %a.addr, align 8, !dbg !581, !tbaa !419
  %cmp3 = icmp eq %struct._object* %8, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !582
  %conv = zext i1 %cmp3 to i32, !dbg !582
  %9 = load %struct._object*, %struct._object** %b.addr, align 8, !dbg !583, !tbaa !419
  %cmp4 = icmp eq %struct._object* %9, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !584
  %conv5 = zext i1 %cmp4 to i32, !dbg !584
  %or = or i32 %conv, %conv5, !dbg !585
  %conv6 = sext i32 %or to i64, !dbg !586
  %call7 = call %struct._object* @PyBool_FromLong(i64 %conv6), !dbg !587
  store %struct._object* %call7, %struct._object** %retval, !dbg !588
  br label %return, !dbg !588

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %retval, !dbg !589
  ret %struct._object* %10, !dbg !589
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!404, !405}
!llvm.ident = !{!406}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !343, globals: !380)
!1 = !DIFile(filename: "boolobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!343 = !{!344, !351, !357, !361, !365, !369}
!344 = !DISubprogram(name: "PyBool_FromLong", scope: !345, file: !345, line: 28, type: !346, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @PyBool_FromLong, variables: !348)
!345 = !DIFile(filename: "Objects/boolobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!346 = !DISubroutineType(types: !347)
!347 = !{!4, !16}
!348 = !{!349, !350}
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ok", arg: 1, scope: !344, file: !345, line: 28, type: !16)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !344, file: !345, line: 30, type: !4)
!351 = !DISubprogram(name: "bool_repr", scope: !345, file: !345, line: 12, type: !116, isLocal: true, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @bool_repr, variables: !352)
!352 = !{!353, !354, !355}
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !351, file: !345, line: 12, type: !4)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !351, file: !345, line: 14, type: !4)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !356, file: !345, line: 22, type: !4)
!356 = distinct !DILexicalBlock(scope: !351, file: !345, line: 22, column: 8)
!357 = !DISubprogram(name: "bool_and", scope: !345, file: !345, line: 60, type: !126, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_and, variables: !358)
!358 = !{!359, !360}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !357, file: !345, line: 60, type: !4)
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !357, file: !345, line: 60, type: !4)
!361 = !DISubprogram(name: "bool_xor", scope: !345, file: !345, line: 76, type: !126, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_xor, variables: !362)
!362 = !{!363, !364}
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !361, file: !345, line: 76, type: !4)
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !361, file: !345, line: 76, type: !4)
!365 = !DISubprogram(name: "bool_or", scope: !345, file: !345, line: 68, type: !126, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @bool_or, variables: !366)
!366 = !{!367, !368}
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !365, file: !345, line: 68, type: !4)
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !365, file: !345, line: 68, type: !4)
!369 = !DISubprogram(name: "bool_new", scope: !345, file: !345, line: 43, type: !370, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @bool_new, variables: !374)
!370 = !DISubroutineType(types: !371)
!371 = !{!4, !372, !4, !4}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !369, file: !345, line: 43, type: !372)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !369, file: !345, line: 43, type: !4)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !369, file: !345, line: 43, type: !4)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !369, file: !345, line: 46, type: !4)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !369, file: !345, line: 47, type: !16)
!380 = !{!381, !382, !392, !393, !394, !395, !396, !400}
!381 = !DIGlobalVariable(name: "PyBool_Type", scope: !0, file: !345, line: 133, type: !373, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyBool_Type)
!382 = !DIGlobalVariable(name: "_Py_FalseStruct", scope: !0, file: !345, line: 176, type: !383, isLocal: false, isDefinition: true, variable: %struct._longobject* @_Py_FalseStruct)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_longobject", file: !384, line: 89, size: 256, align: 64, elements: !385)
!384 = !DIFile(filename: "Include/longintrepr.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !383, file: !384, line: 90, baseType: !22, size: 192, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ob_digit", scope: !383, file: !384, line: 91, baseType: !388, size: 32, align: 32, offset: 192)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 32, align: 32, elements: !81)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit", file: !384, line: 49, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !391, line: 51, baseType: !341)
!391 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!392 = !DIGlobalVariable(name: "_Py_TrueStruct", scope: !0, file: !345, line: 181, type: !383, isLocal: false, isDefinition: true, variable: %struct._longobject* @_Py_TrueStruct)
!393 = !DIGlobalVariable(name: "true_str", scope: !0, file: !345, line: 9, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @true_str)
!394 = !DIGlobalVariable(name: "false_str", scope: !0, file: !345, line: 8, type: !4, isLocal: true, isDefinition: true, variable: %struct._object** @false_str)
!395 = !DIGlobalVariable(name: "bool_as_number", scope: !0, file: !345, line: 94, type: !120, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @bool_as_number)
!396 = !DIGlobalVariable(name: "bool_doc", scope: !0, file: !345, line: 85, type: !397, isLocal: true, isDefinition: true, variable: [223 x i8]* @bool_doc)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1784, align: 8, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 223)
!400 = !DIGlobalVariable(name: "kwlist", scope: !369, file: !345, line: 45, type: !401, isLocal: true, isDefinition: true, variable: [2 x i8*]* @bool_new.kwlist)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, align: 64, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 2)
!404 = !{i32 2, !"Dwarf Version", i32 4}
!405 = !{i32 2, !"Debug Info Version", i32 3}
!406 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!407 = !{!408, !408, i64 0}
!408 = !{!"long", !409, i64 0}
!409 = !{!"omnipotent char", !410, i64 0}
!410 = !{!"Simple C/C++ TBAA"}
!411 = !DIExpression()
!412 = !DILocation(line: 28, column: 32, scope: !344)
!413 = !DILocation(line: 30, column: 5, scope: !344)
!414 = !DILocation(line: 30, column: 15, scope: !344)
!415 = !DILocation(line: 32, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !344, file: !345, line: 32, column: 9)
!417 = !DILocation(line: 32, column: 9, scope: !344)
!418 = !DILocation(line: 33, column: 16, scope: !416)
!419 = !{!420, !420, i64 0}
!420 = !{!"any pointer", !409, i64 0}
!421 = !DILocation(line: 33, column: 9, scope: !416)
!422 = !DILocation(line: 35, column: 16, scope: !416)
!423 = !DILocation(line: 36, column: 21, scope: !344)
!424 = !DILocation(line: 36, column: 31, scope: !344)
!425 = !DILocation(line: 36, column: 40, scope: !344)
!426 = !{!427, !408, i64 0}
!427 = !{!"_object", !408, i64 0, !420, i64 8}
!428 = !DILocation(line: 37, column: 12, scope: !344)
!429 = !DILocation(line: 38, column: 1, scope: !344)
!430 = !DILocation(line: 37, column: 5, scope: !344)
!431 = !DILocation(line: 12, column: 21, scope: !351)
!432 = !DILocation(line: 14, column: 5, scope: !351)
!433 = !DILocation(line: 14, column: 15, scope: !351)
!434 = !DILocation(line: 16, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !351, file: !345, line: 16, column: 9)
!436 = !DILocation(line: 16, column: 14, scope: !435)
!437 = !DILocation(line: 16, column: 9, scope: !351)
!438 = !DILocation(line: 17, column: 13, scope: !435)
!439 = !DILocation(line: 17, column: 24, scope: !440)
!440 = !DILexicalBlockFile(scope: !435, file: !345, discriminator: 1)
!441 = !DILocation(line: 18, column: 25, scope: !435)
!442 = !DILocation(line: 18, column: 23, scope: !435)
!443 = !DILocation(line: 17, column: 11, scope: !444)
!444 = !DILexicalBlockFile(scope: !445, file: !345, discriminator: 3)
!445 = !DILexicalBlockFile(scope: !435, file: !345, discriminator: 2)
!446 = !DILocation(line: 17, column: 9, scope: !435)
!447 = !DILocation(line: 20, column: 13, scope: !435)
!448 = !DILocation(line: 20, column: 25, scope: !440)
!449 = !DILocation(line: 21, column: 26, scope: !435)
!450 = !DILocation(line: 21, column: 24, scope: !435)
!451 = !DILocation(line: 20, column: 11, scope: !444)
!452 = !DILocation(line: 22, column: 5, scope: !351)
!453 = !DILocation(line: 22, column: 10, scope: !454)
!454 = !DILexicalBlockFile(scope: !356, file: !345, discriminator: 1)
!455 = !DILocation(line: 22, column: 20, scope: !356)
!456 = !DILocation(line: 22, column: 51, scope: !356)
!457 = !DILocation(line: 22, column: 59, scope: !458)
!458 = distinct !DILexicalBlock(scope: !356, file: !345, line: 22, column: 59)
!459 = !DILocation(line: 22, column: 75, scope: !458)
!460 = !DILocation(line: 22, column: 59, scope: !356)
!461 = !DILocation(line: 22, column: 106, scope: !462)
!462 = !DILexicalBlockFile(scope: !458, file: !345, discriminator: 2)
!463 = !DILocation(line: 22, column: 125, scope: !458)
!464 = !DILocation(line: 22, column: 134, scope: !458)
!465 = !DILocation(line: 22, column: 90, scope: !458)
!466 = !DILocation(line: 22, column: 139, scope: !467)
!467 = !DILexicalBlockFile(scope: !468, file: !345, discriminator: 4)
!468 = !DILexicalBlockFile(scope: !351, file: !345, discriminator: 3)
!469 = !DILocation(line: 22, column: 139, scope: !356)
!470 = !DILocation(line: 22, column: 139, scope: !471)
!471 = !DILexicalBlockFile(scope: !356, file: !345, discriminator: 5)
!472 = !DILocation(line: 23, column: 12, scope: !351)
!473 = !DILocation(line: 24, column: 1, scope: !351)
!474 = !DILocation(line: 23, column: 5, scope: !351)
!475 = !DILocation(line: 43, column: 24, scope: !369)
!476 = !DILocation(line: 43, column: 40, scope: !369)
!477 = !DILocation(line: 43, column: 56, scope: !369)
!478 = !DILocation(line: 46, column: 5, scope: !369)
!479 = !DILocation(line: 46, column: 15, scope: !369)
!480 = !DILocation(line: 47, column: 5, scope: !369)
!481 = !DILocation(line: 47, column: 10, scope: !369)
!482 = !DILocation(line: 49, column: 38, scope: !483)
!483 = distinct !DILexicalBlock(scope: !369, file: !345, line: 49, column: 9)
!484 = !DILocation(line: 49, column: 44, scope: !483)
!485 = !DILocation(line: 49, column: 10, scope: !483)
!486 = !DILocation(line: 49, column: 9, scope: !369)
!487 = !DILocation(line: 50, column: 9, scope: !483)
!488 = !DILocation(line: 51, column: 26, scope: !369)
!489 = !DILocation(line: 51, column: 10, scope: !369)
!490 = !DILocation(line: 51, column: 8, scope: !369)
!491 = !DILocation(line: 52, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !369, file: !345, line: 52, column: 9)
!493 = !DILocation(line: 52, column: 12, scope: !492)
!494 = !DILocation(line: 52, column: 9, scope: !369)
!495 = !DILocation(line: 53, column: 9, scope: !492)
!496 = !DILocation(line: 54, column: 28, scope: !369)
!497 = !DILocation(line: 54, column: 12, scope: !369)
!498 = !DILocation(line: 54, column: 5, scope: !369)
!499 = !DILocation(line: 55, column: 1, scope: !369)
!500 = !DILocation(line: 60, column: 20, scope: !357)
!501 = !DILocation(line: 60, column: 33, scope: !357)
!502 = !DILocation(line: 62, column: 25, scope: !503)
!503 = distinct !DILexicalBlock(scope: !357, file: !345, line: 62, column: 9)
!504 = !DILocation(line: 62, column: 30, scope: !503)
!505 = !{!427, !420, i64 8}
!506 = !DILocation(line: 62, column: 39, scope: !503)
!507 = !DILocation(line: 62, column: 56, scope: !503)
!508 = !DILocation(line: 62, column: 75, scope: !509)
!509 = !DILexicalBlockFile(scope: !503, file: !345, discriminator: 1)
!510 = !DILocation(line: 62, column: 80, scope: !503)
!511 = !DILocation(line: 62, column: 89, scope: !503)
!512 = !DILocation(line: 62, column: 9, scope: !357)
!513 = !DILocation(line: 63, column: 28, scope: !503)
!514 = !{!515, !420, i64 96}
!515 = !{!"_typeobject", !516, i64 0, !420, i64 24, !408, i64 32, !408, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !408, i64 168, !420, i64 176, !420, i64 184, !420, i64 192, !420, i64 200, !408, i64 208, !420, i64 216, !420, i64 224, !420, i64 232, !420, i64 240, !420, i64 248, !420, i64 256, !420, i64 264, !420, i64 272, !420, i64 280, !408, i64 288, !420, i64 296, !420, i64 304, !420, i64 312, !420, i64 320, !420, i64 328, !420, i64 336, !420, i64 344, !420, i64 352, !420, i64 360, !420, i64 368, !420, i64 376, !517, i64 384, !420, i64 392}
!516 = !{!"", !427, i64 0, !408, i64 16}
!517 = !{!"int", !409, i64 0}
!518 = !DILocation(line: 63, column: 42, scope: !503)
!519 = !{!520, !420, i64 104}
!520 = !{!"", !420, i64 0, !420, i64 8, !420, i64 16, !420, i64 24, !420, i64 32, !420, i64 40, !420, i64 48, !420, i64 56, !420, i64 64, !420, i64 72, !420, i64 80, !420, i64 88, !420, i64 96, !420, i64 104, !420, i64 112, !420, i64 120, !420, i64 128, !420, i64 136, !420, i64 144, !420, i64 152, !420, i64 160, !420, i64 168, !420, i64 176, !420, i64 184, !420, i64 192, !420, i64 200, !420, i64 208, !420, i64 216, !420, i64 224, !420, i64 232, !420, i64 240, !420, i64 248, !420, i64 256, !420, i64 264}
!521 = !DILocation(line: 63, column: 49, scope: !503)
!522 = !DILocation(line: 63, column: 52, scope: !503)
!523 = !DILocation(line: 63, column: 16, scope: !503)
!524 = !DILocation(line: 63, column: 9, scope: !503)
!525 = !DILocation(line: 64, column: 29, scope: !357)
!526 = !DILocation(line: 64, column: 31, scope: !357)
!527 = !DILocation(line: 64, column: 69, scope: !357)
!528 = !DILocation(line: 64, column: 71, scope: !357)
!529 = !DILocation(line: 64, column: 66, scope: !357)
!530 = !DILocation(line: 64, column: 28, scope: !357)
!531 = !DILocation(line: 64, column: 12, scope: !357)
!532 = !DILocation(line: 64, column: 5, scope: !357)
!533 = !DILocation(line: 65, column: 1, scope: !357)
!534 = !DILocation(line: 76, column: 20, scope: !361)
!535 = !DILocation(line: 76, column: 33, scope: !361)
!536 = !DILocation(line: 78, column: 25, scope: !537)
!537 = distinct !DILexicalBlock(scope: !361, file: !345, line: 78, column: 9)
!538 = !DILocation(line: 78, column: 30, scope: !537)
!539 = !DILocation(line: 78, column: 39, scope: !537)
!540 = !DILocation(line: 78, column: 56, scope: !537)
!541 = !DILocation(line: 78, column: 75, scope: !542)
!542 = !DILexicalBlockFile(scope: !537, file: !345, discriminator: 1)
!543 = !DILocation(line: 78, column: 80, scope: !537)
!544 = !DILocation(line: 78, column: 89, scope: !537)
!545 = !DILocation(line: 78, column: 9, scope: !361)
!546 = !DILocation(line: 79, column: 28, scope: !537)
!547 = !DILocation(line: 79, column: 42, scope: !537)
!548 = !{!520, !420, i64 112}
!549 = !DILocation(line: 79, column: 49, scope: !537)
!550 = !DILocation(line: 79, column: 52, scope: !537)
!551 = !DILocation(line: 79, column: 16, scope: !537)
!552 = !DILocation(line: 79, column: 9, scope: !537)
!553 = !DILocation(line: 80, column: 29, scope: !361)
!554 = !DILocation(line: 80, column: 31, scope: !361)
!555 = !DILocation(line: 80, column: 69, scope: !361)
!556 = !DILocation(line: 80, column: 71, scope: !361)
!557 = !DILocation(line: 80, column: 66, scope: !361)
!558 = !DILocation(line: 80, column: 28, scope: !361)
!559 = !DILocation(line: 80, column: 12, scope: !361)
!560 = !DILocation(line: 80, column: 5, scope: !361)
!561 = !DILocation(line: 81, column: 1, scope: !361)
!562 = !DILocation(line: 68, column: 19, scope: !365)
!563 = !DILocation(line: 68, column: 32, scope: !365)
!564 = !DILocation(line: 70, column: 25, scope: !565)
!565 = distinct !DILexicalBlock(scope: !365, file: !345, line: 70, column: 9)
!566 = !DILocation(line: 70, column: 30, scope: !565)
!567 = !DILocation(line: 70, column: 39, scope: !565)
!568 = !DILocation(line: 70, column: 56, scope: !565)
!569 = !DILocation(line: 70, column: 75, scope: !570)
!570 = !DILexicalBlockFile(scope: !565, file: !345, discriminator: 1)
!571 = !DILocation(line: 70, column: 80, scope: !565)
!572 = !DILocation(line: 70, column: 89, scope: !565)
!573 = !DILocation(line: 70, column: 9, scope: !365)
!574 = !DILocation(line: 71, column: 28, scope: !565)
!575 = !DILocation(line: 71, column: 42, scope: !565)
!576 = !{!520, !420, i64 120}
!577 = !DILocation(line: 71, column: 48, scope: !565)
!578 = !DILocation(line: 71, column: 51, scope: !565)
!579 = !DILocation(line: 71, column: 16, scope: !565)
!580 = !DILocation(line: 71, column: 9, scope: !565)
!581 = !DILocation(line: 72, column: 29, scope: !365)
!582 = !DILocation(line: 72, column: 31, scope: !365)
!583 = !DILocation(line: 72, column: 69, scope: !365)
!584 = !DILocation(line: 72, column: 71, scope: !365)
!585 = !DILocation(line: 72, column: 66, scope: !365)
!586 = !DILocation(line: 72, column: 28, scope: !365)
!587 = !DILocation(line: 72, column: 12, scope: !365)
!588 = !DILocation(line: 72, column: 5, scope: !365)
!589 = !DILocation(line: 73, column: 1, scope: !365)
