; ModuleID = 'programs_new/Python-new/xxlimited.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type opaque
%struct.PyType_Slot = type { i32, i8* }
%struct.PyType_Spec = type { i8*, i32, i32, i32, %struct.PyType_Slot* }
%struct._object = type { i64, %struct._typeobject* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.XxoObject = type { %struct._object, %struct._object* }

@PyBaseObject_Type = external global %struct._typeobject, align 1
@Null_Type_slots = internal global [4 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 48, i8* null }, %struct.PyType_Slot { i32 65, i8* null }, %struct.PyType_Slot { i32 67, i8* bitcast (%struct._object* (%struct._object*, %struct._object*, i32)* @null_richcompare to i8*) }, %struct.PyType_Slot zeroinitializer], align 16
@PyUnicode_Type = external global %struct._typeobject, align 1
@Str_Type_slots = internal global [2 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 48, i8* null }, %struct.PyType_Slot zeroinitializer], align 16
@Xxo_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 24, i32 0, i32 262144, %struct.PyType_Slot* getelementptr inbounds ([6 x %struct.PyType_Slot], [6 x %struct.PyType_Slot]* @Xxo_Type_slots, i32 0, i32 0) }, align 8
@Xxo_Type = internal global %struct._object* null, align 8
@xxmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @xx_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@ErrorObject = internal global %struct._object* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"xxlimited.error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@Str_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 263168, %struct.PyType_Slot* getelementptr inbounds ([2 x %struct.PyType_Slot], [2 x %struct.PyType_Slot]* @Str_Type_slots, i32 0, i32 0) }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"Str\00", align 1
@Null_Type_spec = internal global %struct.PyType_Spec { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i32 263168, %struct.PyType_Slot* getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"xxlimited.Xxo\00", align 1
@Xxo_Type_slots = internal global [6 x %struct.PyType_Slot] [%struct.PyType_Slot { i32 56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyType_Slot { i32 52, i8* bitcast (void (%struct.XxoObject*)* @Xxo_dealloc to i8*) }, %struct.PyType_Slot { i32 58, i8* bitcast (%struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_getattro to i8*) }, %struct.PyType_Slot { i32 68, i8* bitcast (i32 (%struct.XxoObject*, i8*, %struct._object*)* @Xxo_setattr to i8*) }, %struct.PyType_Slot { i32 64, i8* bitcast ([2 x %struct.PyMethodDef]* @Xxo_methods to i8*) }, %struct.PyType_Slot zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"The Xxo type\00", align 1
@Xxo_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_demo to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"delete non-existing Xxo attribute\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"demo() -> None\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"|O:demo\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"xxlimited\00", align 1
@module_doc = internal global [48 x i8] c"This is a template module just for instruction.\00", align 16
@xx_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_roj, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_foo, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @xx_foo_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xx_new, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"roj\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"roj(a,b) -> None\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@xx_foo_doc = internal global [37 x i8] c"foo(i,j)\0A\0AReturn the sum of i and j.\00", align 16
@.str.14 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"new() -> new Xx object\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"O#:roj\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"ll:foo\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c":new\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"xxlimited.Str\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"xxlimited.Null\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_xxlimited() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !211
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !211
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !39, metadata !212), !dbg !213
  store %struct._object* null, %struct._object** %m, align 8, !dbg !213, !tbaa !214
  %1 = bitcast %struct._object** %o to i8*, !dbg !218
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !218
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !40, metadata !212), !dbg !219
  store i8* bitcast (%struct._typeobject* @PyBaseObject_Type to i8*), i8** getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i64 0, i32 1), align 8, !dbg !220, !tbaa !221
  store i8* bitcast (%struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew to i8*), i8** getelementptr inbounds ([4 x %struct.PyType_Slot], [4 x %struct.PyType_Slot]* @Null_Type_slots, i32 0, i64 1, i32 1), align 8, !dbg !224, !tbaa !221
  store i8* bitcast (%struct._typeobject* @PyUnicode_Type to i8*), i8** getelementptr inbounds ([2 x %struct.PyType_Slot], [2 x %struct.PyType_Slot]* @Str_Type_slots, i32 0, i64 0, i32 1), align 8, !dbg !225, !tbaa !221
  %call = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Xxo_Type_spec), !dbg !226
  store %struct._object* %call, %struct._object** @Xxo_Type, align 8, !dbg !227, !tbaa !214
  %2 = load %struct._object*, %struct._object** @Xxo_Type, align 8, !dbg !228, !tbaa !214
  %cmp = icmp eq %struct._object* %2, null, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  br label %fail, !dbg !232

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @xxmodule, i32 3), !dbg !233
  store %struct._object* %call1, %struct._object** %m, align 8, !dbg !234, !tbaa !214
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !235, !tbaa !214
  %cmp2 = icmp eq %struct._object* %3, null, !dbg !237
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !238

if.then.3:                                        ; preds = %if.end
  br label %fail, !dbg !239

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @ErrorObject, align 8, !dbg !240, !tbaa !214
  %cmp5 = icmp eq %struct._object* %4, null, !dbg !242
  br i1 %cmp5, label %if.then.6, label %if.end.11, !dbg !243

if.then.6:                                        ; preds = %if.end.4
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !244
  store %struct._object* %call7, %struct._object** @ErrorObject, align 8, !dbg !246, !tbaa !214
  %5 = load %struct._object*, %struct._object** @ErrorObject, align 8, !dbg !247, !tbaa !214
  %cmp8 = icmp eq %struct._object* %5, null, !dbg !249
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !250

if.then.9:                                        ; preds = %if.then.6
  br label %fail, !dbg !251

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11, !dbg !252

if.end.11:                                        ; preds = %if.end.10, %if.end.4
  %6 = load %struct._object*, %struct._object** @ErrorObject, align 8, !dbg !253, !tbaa !214
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !254
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !255, !tbaa !256
  %inc = add i64 %7, 1, !dbg !255
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !255, !tbaa !256
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !259, !tbaa !214
  %9 = load %struct._object*, %struct._object** @ErrorObject, align 8, !dbg !260, !tbaa !214
  %call12 = call i32 @PyModule_AddObject(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %9), !dbg !261
  %call13 = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Str_Type_spec), !dbg !262
  store %struct._object* %call13, %struct._object** %o, align 8, !dbg !263, !tbaa !214
  %10 = load %struct._object*, %struct._object** %o, align 8, !dbg !264, !tbaa !214
  %cmp14 = icmp eq %struct._object* %10, null, !dbg !266
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !267

if.then.15:                                       ; preds = %if.end.11
  br label %fail, !dbg !268

if.end.16:                                        ; preds = %if.end.11
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !269, !tbaa !214
  %12 = load %struct._object*, %struct._object** %o, align 8, !dbg !270, !tbaa !214
  %call17 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), %struct._object* %12), !dbg !271
  %call18 = call %struct._object* @PyType_FromSpec(%struct.PyType_Spec* @Null_Type_spec), !dbg !272
  store %struct._object* %call18, %struct._object** %o, align 8, !dbg !273, !tbaa !214
  %13 = load %struct._object*, %struct._object** %o, align 8, !dbg !274, !tbaa !214
  %cmp19 = icmp eq %struct._object* %13, null, !dbg !276
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !277

if.then.20:                                       ; preds = %if.end.16
  br label %fail, !dbg !278

if.end.21:                                        ; preds = %if.end.16
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !279, !tbaa !214
  %15 = load %struct._object*, %struct._object** %o, align 8, !dbg !280, !tbaa !214
  %call22 = call i32 @PyModule_AddObject(%struct._object* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._object* %15), !dbg !281
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !282, !tbaa !214
  store %struct._object* %16, %struct._object** %retval, !dbg !283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !283

fail:                                             ; preds = %if.then.20, %if.then.15, %if.then.9, %if.then.3, %if.then
  br label %do.body, !dbg !284

do.body:                                          ; preds = %fail
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !285
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !285
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !41, metadata !212), !dbg !287
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !288, !tbaa !214
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !287, !tbaa !214
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !289, !tbaa !214
  %cmp23 = icmp ne %struct._object* %19, null, !dbg !290
  br i1 %cmp23, label %if.then.24, label %if.end.30, !dbg !291

if.then.24:                                       ; preds = %do.body
  br label %do.body.25, !dbg !292

do.body.25:                                       ; preds = %if.then.24
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !294
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !294
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !43, metadata !212), !dbg !296
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !297, !tbaa !214
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !296, !tbaa !214
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !298, !tbaa !214
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !300
  %23 = load i64, i64* %ob_refcnt26, align 8, !dbg !301, !tbaa !256
  %dec = add i64 %23, -1, !dbg !301
  store i64 %dec, i64* %ob_refcnt26, align 8, !dbg !301, !tbaa !256
  %cmp27 = icmp ne i64 %dec, 0, !dbg !302
  br i1 %cmp27, label %if.then.28, label %if.else, !dbg !303

if.then.28:                                       ; preds = %do.body.25
  br label %if.end.29, !dbg !304

if.else:                                          ; preds = %do.body.25
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !306, !tbaa !214
  call void @_Py_Dealloc(%struct._object* %24), !dbg !308
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !309
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !309
  br label %do.cond, !dbg !311

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !312

do.end:                                           ; preds = %do.cond
  br label %if.end.30, !dbg !314

if.end.30:                                        ; preds = %do.end, %do.body
  %26 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !316
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !316
  br label %do.cond.31, !dbg !319

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !320

do.end.32:                                        ; preds = %do.cond.31
  store %struct._object* null, %struct._object** %retval, !dbg !322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !322

cleanup:                                          ; preds = %do.end.32, %if.end.21
  %27 = bitcast %struct._object** %o to i8*, !dbg !323
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !323
  %28 = bitcast %struct._object** %m to i8*, !dbg !323
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !323
  %29 = load %struct._object*, %struct._object** %retval, !dbg !323
  ret %struct._object* %29, !dbg !323
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyType_FromSpec(%struct.PyType_Spec*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare void @_Py_Dealloc(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @null_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !51, metadata !212), !dbg !324
  store %struct._object* %other, %struct._object** %other.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %other.addr, metadata !52, metadata !212), !dbg !325
  store i32 %op, i32* %op.addr, align 4, !tbaa !326
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !53, metadata !212), !dbg !327
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !328, !tbaa !256
  %inc = add i64 %0, 1, !dbg !328
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !328, !tbaa !256
  ret %struct._object* @_Py_NotImplementedStruct, !dbg !329
}

; Function Attrs: nounwind uwtable
define internal void @Xxo_dealloc(%struct.XxoObject* %self) #0 {
entry:
  %self.addr = alloca %struct.XxoObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %self.addr, metadata !58, metadata !212), !dbg !330
  br label %do.body, !dbg !331

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !332
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !332
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !59, metadata !212), !dbg !334
  %1 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !335, !tbaa !214
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %1, i32 0, i32 1, !dbg !336
  %2 = load %struct._object*, %struct._object** %x_attr, align 8, !dbg !336, !tbaa !337
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !334, !tbaa !214
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !339, !tbaa !214
  %cmp = icmp ne %struct._object* %3, null, !dbg !340
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !341

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !342

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !344
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !344
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !61, metadata !212), !dbg !346
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !347, !tbaa !214
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !346, !tbaa !214
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !348, !tbaa !214
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !350
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !351, !tbaa !256
  %dec = add i64 %7, -1, !dbg !351
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !351, !tbaa !256
  %cmp2 = icmp ne i64 %dec, 0, !dbg !352
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !353

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !354

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !356, !tbaa !214
  call void @_Py_Dealloc(%struct._object* %8), !dbg !358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !359
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !359
  br label %do.cond, !dbg !361

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !362

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !364

if.end.4:                                         ; preds = %do.end, %do.body
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !366
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !366
  br label %do.end.6, !dbg !369

do.end.6:                                         ; preds = %if.end.4
  %11 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !370, !tbaa !214
  %12 = bitcast %struct.XxoObject* %11 to %struct._object*, !dbg !371
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !372
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !372, !tbaa !373
  %call = call i8* @PyType_GetSlot(%struct._typeobject* %13, i32 74), !dbg !374
  %14 = bitcast i8* %call to void (i8*)*, !dbg !375
  %15 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !376, !tbaa !214
  %16 = bitcast %struct.XxoObject* %15 to i8*, !dbg !376
  call void %14(i8* %16), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @Xxo_getattro(%struct.XxoObject* %self, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.XxoObject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %self.addr, metadata !68, metadata !212), !dbg !379
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !69, metadata !212), !dbg !380
  %0 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !381, !tbaa !214
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %0, i32 0, i32 1, !dbg !382
  %1 = load %struct._object*, %struct._object** %x_attr, align 8, !dbg !382, !tbaa !337
  %cmp = icmp ne %struct._object* %1, null, !dbg !383
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !384

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._object** %v to i8*, !dbg !385
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !385
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !70, metadata !212), !dbg !386
  %3 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !387, !tbaa !214
  %x_attr1 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %3, i32 0, i32 1, !dbg !388
  %4 = load %struct._object*, %struct._object** %x_attr1, align 8, !dbg !388, !tbaa !337
  %5 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !389, !tbaa !214
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %5), !dbg !390
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !386, !tbaa !214
  %6 = load %struct._object*, %struct._object** %v, align 8, !dbg !391, !tbaa !214
  %cmp2 = icmp ne %struct._object* %6, null, !dbg !393
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !394

if.then.3:                                        ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %v, align 8, !dbg !395, !tbaa !214
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !397
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !398, !tbaa !256
  %inc = add i64 %8, 1, !dbg !398
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !398, !tbaa !256
  %9 = load %struct._object*, %struct._object** %v, align 8, !dbg !399, !tbaa !214
  store %struct._object* %9, %struct._object** %retval, !dbg !400
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !400

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !401
  br label %cleanup, !dbg !401

cleanup:                                          ; preds = %if.end, %if.then.3
  %10 = bitcast %struct._object** %v to i8*, !dbg !402
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !402
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.4, !dbg !404

if.end.4:                                         ; preds = %cleanup.cont, %entry
  %11 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !405, !tbaa !214
  %12 = bitcast %struct.XxoObject* %11 to %struct._object*, !dbg !406
  %13 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !407, !tbaa !214
  %call5 = call %struct._object* @PyObject_GenericGetAttr(%struct._object* %12, %struct._object* %13), !dbg !408
  store %struct._object* %call5, %struct._object** %retval, !dbg !409
  br label %return, !dbg !409

return:                                           ; preds = %LeafBlock, %if.end.4
  %14 = load %struct._object*, %struct._object** %retval, !dbg !410
  ret %struct._object* %14, !dbg !410
}

; Function Attrs: nounwind uwtable
define internal i32 @Xxo_setattr(%struct.XxoObject* %self, i8* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.XxoObject*, align 8
  %name.addr = alloca i8*, align 8
  %v.addr = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %self.addr, metadata !79, metadata !212), !dbg !411
  store i8* %name, i8** %name.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !80, metadata !212), !dbg !412
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !81, metadata !212), !dbg !413
  %0 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !414, !tbaa !214
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %0, i32 0, i32 1, !dbg !416
  %1 = load %struct._object*, %struct._object** %x_attr, align 8, !dbg !416, !tbaa !337
  %cmp = icmp eq %struct._object* %1, null, !dbg !417
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !418

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New(), !dbg !419
  %2 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !421, !tbaa !214
  %x_attr1 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %2, i32 0, i32 1, !dbg !422
  store %struct._object* %call, %struct._object** %x_attr1, align 8, !dbg !423, !tbaa !337
  %3 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !424, !tbaa !214
  %x_attr2 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %3, i32 0, i32 1, !dbg !426
  %4 = load %struct._object*, %struct._object** %x_attr2, align 8, !dbg !426, !tbaa !337
  %cmp3 = icmp eq %struct._object* %4, null, !dbg !427
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !428

if.then.4:                                        ; preds = %if.then
  store i32 -1, i32* %retval, !dbg !429
  br label %return, !dbg !429

if.end:                                           ; preds = %if.then
  br label %if.end.5, !dbg !430

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !431, !tbaa !214
  %cmp6 = icmp eq %struct._object* %5, null, !dbg !432
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !433

if.then.7:                                        ; preds = %if.end.5
  %6 = bitcast i32* %rv to i8*, !dbg !434
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !434
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !82, metadata !212), !dbg !435
  %7 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !436, !tbaa !214
  %x_attr8 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %7, i32 0, i32 1, !dbg !437
  %8 = load %struct._object*, %struct._object** %x_attr8, align 8, !dbg !437, !tbaa !337
  %9 = load i8*, i8** %name.addr, align 8, !dbg !438, !tbaa !214
  %call9 = call i32 @PyDict_DelItemString(%struct._object* %8, i8* %9), !dbg !439
  store i32 %call9, i32* %rv, align 4, !dbg !435, !tbaa !326
  %10 = load i32, i32* %rv, align 4, !dbg !440, !tbaa !326
  %cmp10 = icmp slt i32 %10, 0, !dbg !442
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !443

if.then.11:                                       ; preds = %if.then.7
  %11 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !444, !tbaa !214
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)), !dbg !445
  br label %if.end.12, !dbg !445

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  %12 = load i32, i32* %rv, align 4, !dbg !446, !tbaa !326
  store i32 %12, i32* %retval, !dbg !447
  %13 = bitcast i32* %rv to i8*, !dbg !448
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !448
  br label %return

if.else:                                          ; preds = %if.end.5
  %14 = load %struct.XxoObject*, %struct.XxoObject** %self.addr, align 8, !dbg !449, !tbaa !214
  %x_attr13 = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %14, i32 0, i32 1, !dbg !450
  %15 = load %struct._object*, %struct._object** %x_attr13, align 8, !dbg !450, !tbaa !337
  %16 = load i8*, i8** %name.addr, align 8, !dbg !451, !tbaa !214
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !452, !tbaa !214
  %call14 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* %16, %struct._object* %17), !dbg !453
  store i32 %call14, i32* %retval, !dbg !454
  br label %return, !dbg !454

return:                                           ; preds = %if.else, %if.end.12, %if.then.4
  %18 = load i32, i32* %retval, !dbg !455
  ret i32 %18, !dbg !455
}

declare i8* @PyType_GetSlot(%struct._typeobject*, i32) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

declare i32 @PyDict_DelItemString(%struct._object*, i8*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @Xxo_demo(%struct.XxoObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.XxoObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.XxoObject* %self, %struct.XxoObject** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %self.addr, metadata !87, metadata !212), !dbg !456
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !88, metadata !212), !dbg !457
  %0 = bitcast %struct._object** %o to i8*, !dbg !458
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !458
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !89, metadata !212), !dbg !459
  store %struct._object* null, %struct._object** %o, align 8, !dbg !459, !tbaa !214
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !460, !tbaa !214
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object** %o), !dbg !462
  %tobool = icmp ne i32 %call, 0, !dbg !462
  br i1 %tobool, label %if.end, label %if.then, !dbg !463

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !464
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !464

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o, align 8, !dbg !465, !tbaa !214
  %cmp = icmp ne %struct._object* %2, null, !dbg !467
  br i1 %cmp, label %land.lhs.true, label %if.end.4, !dbg !468

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %o, align 8, !dbg !469, !tbaa !214
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !471
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !471, !tbaa !373
  %call1 = call i64 @PyType_GetFlags(%struct._typeobject* %4), !dbg !472
  %and = and i64 %call1, 268435456, !dbg !473
  %cmp2 = icmp ne i64 %and, 0, !dbg !474
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !475

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** %o, align 8, !dbg !476, !tbaa !214
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !478
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !479, !tbaa !256
  %inc = add i64 %6, 1, !dbg !479
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !479, !tbaa !256
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !480, !tbaa !214
  store %struct._object* %7, %struct._object** %retval, !dbg !481
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !481

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !482, !tbaa !256
  %inc5 = add i64 %8, 1, !dbg !482
  store i64 %inc5, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !482, !tbaa !256
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !483
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !483

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %9 = bitcast %struct._object** %o to i8*, !dbg !484
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !484
  %10 = load %struct._object*, %struct._object** %retval, !dbg !484
  ret %struct._object* %10, !dbg !484
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i64 @PyType_GetFlags(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @xx_roj(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %a = alloca %struct._object*, align 8
  %b = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !94, metadata !212), !dbg !485
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !95, metadata !212), !dbg !486
  %0 = bitcast %struct._object** %a to i8*, !dbg !487
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !487
  call void @llvm.dbg.declare(metadata %struct._object** %a, metadata !96, metadata !212), !dbg !488
  %1 = bitcast i64* %b to i8*, !dbg !489
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !489
  call void @llvm.dbg.declare(metadata i64* %b, metadata !97, metadata !212), !dbg !490
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !491, !tbaa !214
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._object** %a, i64* %b), !dbg !493
  %tobool = icmp ne i32 %call, 0, !dbg !493
  br i1 %tobool, label %if.end, label %if.then, !dbg !494

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !495

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !496, !tbaa !256
  %inc = add i64 %3, 1, !dbg !496
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !496, !tbaa !256
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !497

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %b to i8*, !dbg !498
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !498
  %5 = bitcast %struct._object** %a to i8*, !dbg !498
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !498
  %6 = load %struct._object*, %struct._object** %retval, !dbg !498
  ret %struct._object* %6, !dbg !498
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xx_foo(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !100, metadata !212), !dbg !499
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !101, metadata !212), !dbg !500
  %0 = bitcast i64* %i to i8*, !dbg !501
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !501
  call void @llvm.dbg.declare(metadata i64* %i, metadata !102, metadata !212), !dbg !502
  %1 = bitcast i64* %j to i8*, !dbg !501
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !501
  call void @llvm.dbg.declare(metadata i64* %j, metadata !103, metadata !212), !dbg !503
  %2 = bitcast i64* %res to i8*, !dbg !504
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !504
  call void @llvm.dbg.declare(metadata i64* %res, metadata !104, metadata !212), !dbg !505
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !506, !tbaa !214
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i64* %i, i64* %j), !dbg !508
  %tobool = icmp ne i32 %call, 0, !dbg !508
  br i1 %tobool, label %if.end, label %if.then, !dbg !509

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !510
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !510

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %i, align 8, !dbg !511, !tbaa !512
  %5 = load i64, i64* %j, align 8, !dbg !513, !tbaa !512
  %add = add i64 %4, %5, !dbg !514
  store i64 %add, i64* %res, align 8, !dbg !515, !tbaa !512
  %6 = load i64, i64* %res, align 8, !dbg !516, !tbaa !512
  %call1 = call %struct._object* @PyLong_FromLong(i64 %6), !dbg !517
  store %struct._object* %call1, %struct._object** %retval, !dbg !518
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !518

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i64* %res to i8*, !dbg !519
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !519
  %8 = bitcast i64* %j to i8*, !dbg !519
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !519
  %9 = bitcast i64* %i to i8*, !dbg !519
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !519
  %10 = load %struct._object*, %struct._object** %retval, !dbg !519
  ret %struct._object* %10, !dbg !519
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xx_new(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rv = alloca %struct.XxoObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !107, metadata !212), !dbg !520
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !108, metadata !212), !dbg !521
  %0 = bitcast %struct.XxoObject** %rv to i8*, !dbg !522
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !522
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %rv, metadata !109, metadata !212), !dbg !523
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !524, !tbaa !214
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)), !dbg !526
  %tobool = icmp ne i32 %call, 0, !dbg !526
  br i1 %tobool, label %if.end, label %if.then, !dbg !527

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !528

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !529, !tbaa !214
  %call1 = call %struct.XxoObject* @newXxoObject(%struct._object* %2), !dbg !530
  store %struct.XxoObject* %call1, %struct.XxoObject** %rv, align 8, !dbg !531, !tbaa !214
  %3 = load %struct.XxoObject*, %struct.XxoObject** %rv, align 8, !dbg !532, !tbaa !214
  %cmp = icmp eq %struct.XxoObject* %3, null, !dbg !534
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !535

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !536
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !536

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.XxoObject*, %struct.XxoObject** %rv, align 8, !dbg !537, !tbaa !214
  %5 = bitcast %struct.XxoObject* %4 to %struct._object*, !dbg !538
  store %struct._object* %5, %struct._object** %retval, !dbg !539
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !539

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %6 = bitcast %struct.XxoObject** %rv to i8*, !dbg !540
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !540
  %7 = load %struct._object*, %struct._object** %retval, !dbg !540
  ret %struct._object* %7, !dbg !540
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.XxoObject* @newXxoObject(%struct._object* %arg) #0 {
entry:
  %retval = alloca %struct.XxoObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %self = alloca %struct.XxoObject*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !214
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !114, metadata !212), !dbg !541
  %0 = bitcast %struct.XxoObject** %self to i8*, !dbg !542
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !542
  call void @llvm.dbg.declare(metadata %struct.XxoObject** %self, metadata !115, metadata !212), !dbg !543
  %1 = load %struct._object*, %struct._object** @Xxo_Type, align 8, !dbg !544, !tbaa !214
  %2 = bitcast %struct._object* %1 to %struct._typeobject*, !dbg !545
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %2), !dbg !546
  %3 = bitcast %struct._object* %call to %struct.XxoObject*, !dbg !547
  store %struct.XxoObject* %3, %struct.XxoObject** %self, align 8, !dbg !548, !tbaa !214
  %4 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8, !dbg !549, !tbaa !214
  %cmp = icmp eq %struct.XxoObject* %4, null, !dbg !551
  br i1 %cmp, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %entry
  store %struct.XxoObject* null, %struct.XxoObject** %retval, !dbg !553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !553

if.end:                                           ; preds = %entry
  %5 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8, !dbg !554, !tbaa !214
  %x_attr = getelementptr inbounds %struct.XxoObject, %struct.XxoObject* %5, i32 0, i32 1, !dbg !555
  store %struct._object* null, %struct._object** %x_attr, align 8, !dbg !556, !tbaa !337
  %6 = load %struct.XxoObject*, %struct.XxoObject** %self, align 8, !dbg !557, !tbaa !214
  store %struct.XxoObject* %6, %struct.XxoObject** %retval, !dbg !558
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !558

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.XxoObject** %self to i8*, !dbg !559
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !559
  %8 = load %struct.XxoObject*, %struct.XxoObject** %retval, !dbg !559
  ret %struct.XxoObject* %8, !dbg !559
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!207, !208, !209}
!llvm.ident = !{!210}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !34, globals: !116)
!1 = !DIFile(filename: "xxlimited.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !21, !25, !32}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 108, flags: DIFlagFwdDecl)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !4}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "XxoObject", file: !27, line: 24, baseType: !28)
!27 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/xxlimited.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 21, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !27, line: 22, baseType: !6, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "x_attr", scope: !28, file: !27, line: 23, baseType: !5, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 332, baseType: !20)
!34 = !{!35, !46, !54, !64, !73, !85, !90, !98, !105, !110}
!35 = !DISubprogram(name: "PyInit_xxlimited", scope: !27, file: !27, line: 241, type: !36, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_xxlimited, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!5}
!38 = !{!39, !40, !41, !43}
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !35, file: !27, line: 243, type: !5)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !35, file: !27, line: 244, type: !5)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !42, file: !27, line: 284, type: !5)
!42 = distinct !DILexicalBlock(scope: !35, file: !27, line: 284, column: 8)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !44, file: !27, line: 284, type: !5)
!44 = distinct !DILexicalBlock(scope: !45, file: !27, line: 284, column: 93)
!45 = distinct !DILexicalBlock(scope: !42, file: !27, line: 284, column: 59)
!46 = !DISubprogram(name: "null_richcompare", scope: !27, file: !27, line: 188, type: !47, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @null_richcompare, variables: !50)
!47 = !DISubroutineType(types: !48)
!48 = !{!5, !5, !5, !49}
!49 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !46, file: !27, line: 188, type: !5)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "other", arg: 2, scope: !46, file: !27, line: 188, type: !5)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !46, file: !27, line: 188, type: !49)
!54 = !DISubprogram(name: "Xxo_dealloc", scope: !27, file: !27, line: 44, type: !55, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.XxoObject*)* @Xxo_dealloc, variables: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !25}
!57 = !{!58, !59, !61}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !54, file: !27, line: 44, type: !25)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !60, file: !27, line: 46, type: !5)
!60 = distinct !DILexicalBlock(scope: !54, file: !27, line: 46, column: 8)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !62, file: !27, line: 46, type: !5)
!62 = distinct !DILexicalBlock(scope: !63, file: !27, line: 46, column: 104)
!63 = distinct !DILexicalBlock(scope: !60, file: !27, line: 46, column: 70)
!64 = !DISubprogram(name: "Xxo_getattro", scope: !27, file: !27, line: 72, type: !65, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_getattro, variables: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!5, !25, !5}
!67 = !{!68, !69, !70}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !64, file: !27, line: 72, type: !25)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !64, file: !27, line: 72, type: !5)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !71, file: !27, line: 75, type: !5)
!71 = distinct !DILexicalBlock(scope: !72, file: !27, line: 74, column: 37)
!72 = distinct !DILexicalBlock(scope: !64, file: !27, line: 74, column: 9)
!73 = !DISubprogram(name: "Xxo_setattr", scope: !27, file: !27, line: 85, type: !74, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XxoObject*, i8*, %struct._object*)* @Xxo_setattr, variables: !78)
!74 = !DISubroutineType(types: !75)
!75 = !{!49, !25, !76, !5}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!78 = !{!79, !80, !81, !82}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !73, file: !27, line: 85, type: !25)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !73, file: !27, line: 85, type: !76)
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !73, file: !27, line: 85, type: !5)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !83, file: !27, line: 93, type: !49)
!83 = distinct !DILexicalBlock(scope: !84, file: !27, line: 92, column: 26)
!84 = distinct !DILexicalBlock(scope: !73, file: !27, line: 92, column: 9)
!85 = !DISubprogram(name: "Xxo_demo", scope: !27, file: !27, line: 51, type: !65, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.XxoObject*, %struct._object*)* @Xxo_demo, variables: !86)
!86 = !{!87, !88, !89}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !85, file: !27, line: 51, type: !25)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !85, file: !27, line: 51, type: !5)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !85, file: !27, line: 53, type: !5)
!90 = !DISubprogram(name: "xx_roj", scope: !27, file: !27, line: 159, type: !91, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @xx_roj, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!5, !5, !5}
!93 = !{!94, !95, !96, !97}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !90, file: !27, line: 159, type: !5)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !90, file: !27, line: 159, type: !5)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !90, file: !27, line: 161, type: !5)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !90, file: !27, line: 162, type: !17)
!98 = !DISubprogram(name: "xx_foo", scope: !27, file: !27, line: 130, type: !91, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @xx_foo, variables: !99)
!99 = !{!100, !101, !102, !103, !104}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !98, file: !27, line: 130, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !98, file: !27, line: 130, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !98, file: !27, line: 132, type: !17)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !98, file: !27, line: 132, type: !17)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !98, file: !27, line: 133, type: !17)
!105 = !DISubprogram(name: "xx_new", scope: !27, file: !27, line: 144, type: !91, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @xx_new, variables: !106)
!106 = !{!107, !108, !109}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !105, file: !27, line: 144, type: !5)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !105, file: !27, line: 144, type: !5)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !105, file: !27, line: 146, type: !25)
!110 = !DISubprogram(name: "newXxoObject", scope: !27, file: !27, line: 31, type: !111, isLocal: true, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: %struct.XxoObject* (%struct._object*)* @newXxoObject, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!25, !5}
!113 = !{!114, !115}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !110, file: !27, line: 31, type: !5)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !110, file: !27, line: 33, type: !25)
!116 = !{!117, !118, !119, !128, !132, !145, !149, !161, !195, !199, !201, !205, !206}
!117 = !DIGlobalVariable(name: "ErrorObject", scope: !0, file: !27, line: 19, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @ErrorObject)
!118 = !DIGlobalVariable(name: "Xxo_Type", scope: !0, file: !27, line: 26, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @Xxo_Type)
!119 = !DIGlobalVariable(name: "Null_Type_slots", scope: !0, file: !27, line: 193, type: !120, isLocal: true, isDefinition: true, variable: [4 x %struct.PyType_Slot]* @Null_Type_slots)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, align: 64, elements: !126)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyType_Slot", file: !7, line: 428, baseType: !122)
!122 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 425, size: 128, align: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !122, file: !7, line: 426, baseType: !49, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pfunc", scope: !122, file: !7, line: 427, baseType: !4, size: 64, align: 64, offset: 64)
!126 = !{!127}
!127 = !DISubrange(count: 4)
!128 = !DIGlobalVariable(name: "Str_Type_slots", scope: !0, file: !27, line: 172, type: !129, isLocal: true, isDefinition: true, variable: [2 x %struct.PyType_Slot]* @Str_Type_slots)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, align: 64, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 2)
!132 = !DIGlobalVariable(name: "Xxo_Type_spec", scope: !0, file: !27, line: 112, type: !133, isLocal: true, isDefinition: true, variable: %struct.PyType_Spec* @Xxo_Type_spec)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyType_Spec", file: !7, line: 436, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 430, size: 256, align: 64, elements: !135)
!135 = !{!136, !139, !140, !141, !143}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !7, line: 431, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "basicsize", scope: !134, file: !7, line: 432, baseType: !49, size: 32, align: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !134, file: !7, line: 433, baseType: !49, size: 32, align: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !7, line: 434, baseType: !142, size: 32, align: 32, offset: 128)
!142 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !134, file: !7, line: 435, baseType: !144, size: 64, align: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!145 = !DIGlobalVariable(name: "Xxo_Type_slots", scope: !0, file: !27, line: 103, type: !146, isLocal: true, isDefinition: true, variable: [6 x %struct.PyType_Slot]* @Xxo_Type_slots)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 768, align: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 6)
!149 = !DIGlobalVariable(name: "Xxo_methods", scope: !0, file: !27, line: 65, type: !150, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @Xxo_methods)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 512, align: 64, elements: !130)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !152, line: 47, baseType: !153)
!152 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !152, line: 40, size: 256, align: 64, elements: !154)
!154 = !{!155, !156, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !153, file: !152, line: 41, baseType: !137, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !153, file: !152, line: 42, baseType: !157, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !152, line: 18, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !153, file: !152, line: 43, baseType: !49, size: 32, align: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !153, file: !152, line: 45, baseType: !137, size: 64, align: 64, offset: 192)
!161 = !DIGlobalVariable(name: "xxmodule", scope: !0, file: !27, line: 228, type: !162, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @xxmodule)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !163, line: 47, size: 832, align: 64, elements: !164)
!163 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!164 = !{!165, !174, !175, !176, !177, !179, !184, !193, !194}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !162, file: !163, line: 48, baseType: !166, size: 320, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !163, line: 38, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !163, line: 33, size: 320, align: 64, elements: !168)
!168 = !{!169, !170, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !167, file: !163, line: 34, baseType: !6, size: 128, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !167, file: !163, line: 35, baseType: !171, size: 64, align: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !167, file: !163, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !167, file: !163, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !162, file: !163, line: 49, baseType: !137, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !162, file: !163, line: 50, baseType: !137, size: 64, align: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !162, file: !163, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !162, file: !163, line: 52, baseType: !178, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !162, file: !163, line: 53, baseType: !180, size: 64, align: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!49, !5}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !162, file: !163, line: 54, baseType: !185, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!49, !5, !189, !4}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!49, !5, !4}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !162, file: !163, line: 55, baseType: !180, size: 64, align: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !162, file: !163, line: 56, baseType: !21, size: 64, align: 64, offset: 768)
!195 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !27, line: 222, type: !196, isLocal: true, isDefinition: true, variable: [48 x i8]* @module_doc)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 384, align: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 48)
!199 = !DIGlobalVariable(name: "xx_methods", scope: !0, file: !27, line: 212, type: !200, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @xx_methods)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 1024, align: 64, elements: !126)
!201 = !DIGlobalVariable(name: "xx_foo_doc", scope: !0, file: !27, line: 124, type: !202, isLocal: true, isDefinition: true, variable: [37 x i8]* @xx_foo_doc)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 296, align: 8, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 37)
!205 = !DIGlobalVariable(name: "Str_Type_spec", scope: !0, file: !27, line: 177, type: !133, isLocal: true, isDefinition: true, variable: %struct.PyType_Spec* @Str_Type_spec)
!206 = !DIGlobalVariable(name: "Null_Type_spec", scope: !0, file: !27, line: 200, type: !133, isLocal: true, isDefinition: true, variable: %struct.PyType_Spec* @Null_Type_spec)
!207 = !{i32 2, !"Dwarf Version", i32 4}
!208 = !{i32 2, !"Debug Info Version", i32 3}
!209 = !{i32 1, !"PIC Level", i32 2}
!210 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!211 = !DILocation(line: 243, column: 5, scope: !35)
!212 = !DIExpression()
!213 = !DILocation(line: 243, column: 15, scope: !35)
!214 = !{!215, !215, i64 0}
!215 = !{!"any pointer", !216, i64 0}
!216 = !{!"omnipotent char", !217, i64 0}
!217 = !{!"Simple C/C++ TBAA"}
!218 = !DILocation(line: 244, column: 5, scope: !35)
!219 = !DILocation(line: 244, column: 15, scope: !35)
!220 = !DILocation(line: 249, column: 30, scope: !35)
!221 = !{!222, !215, i64 8}
!222 = !{!"", !223, i64 0, !215, i64 8}
!223 = !{!"int", !216, i64 0}
!224 = !DILocation(line: 250, column: 30, scope: !35)
!225 = !DILocation(line: 251, column: 29, scope: !35)
!226 = !DILocation(line: 253, column: 16, scope: !35)
!227 = !DILocation(line: 253, column: 14, scope: !35)
!228 = !DILocation(line: 254, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !35, file: !27, line: 254, column: 9)
!230 = !DILocation(line: 254, column: 18, scope: !229)
!231 = !DILocation(line: 254, column: 9, scope: !35)
!232 = !DILocation(line: 255, column: 9, scope: !229)
!233 = !DILocation(line: 258, column: 9, scope: !35)
!234 = !DILocation(line: 258, column: 7, scope: !35)
!235 = !DILocation(line: 259, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !35, file: !27, line: 259, column: 9)
!237 = !DILocation(line: 259, column: 11, scope: !236)
!238 = !DILocation(line: 259, column: 9, scope: !35)
!239 = !DILocation(line: 260, column: 9, scope: !236)
!240 = !DILocation(line: 263, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !35, file: !27, line: 263, column: 9)
!242 = !DILocation(line: 263, column: 21, scope: !241)
!243 = !DILocation(line: 263, column: 9, scope: !35)
!244 = !DILocation(line: 264, column: 23, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !27, line: 263, column: 36)
!246 = !DILocation(line: 264, column: 21, scope: !245)
!247 = !DILocation(line: 265, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !27, line: 265, column: 13)
!249 = !DILocation(line: 265, column: 25, scope: !248)
!250 = !DILocation(line: 265, column: 13, scope: !245)
!251 = !DILocation(line: 266, column: 13, scope: !248)
!252 = !DILocation(line: 267, column: 5, scope: !245)
!253 = !DILocation(line: 268, column: 21, scope: !35)
!254 = !DILocation(line: 268, column: 36, scope: !35)
!255 = !DILocation(line: 268, column: 45, scope: !35)
!256 = !{!257, !258, i64 0}
!257 = !{!"_object", !258, i64 0, !215, i64 8}
!258 = !{!"long", !216, i64 0}
!259 = !DILocation(line: 269, column: 24, scope: !35)
!260 = !DILocation(line: 269, column: 36, scope: !35)
!261 = !DILocation(line: 269, column: 5, scope: !35)
!262 = !DILocation(line: 272, column: 9, scope: !35)
!263 = !DILocation(line: 272, column: 7, scope: !35)
!264 = !DILocation(line: 273, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !35, file: !27, line: 273, column: 9)
!266 = !DILocation(line: 273, column: 11, scope: !265)
!267 = !DILocation(line: 273, column: 9, scope: !35)
!268 = !DILocation(line: 274, column: 9, scope: !265)
!269 = !DILocation(line: 275, column: 24, scope: !35)
!270 = !DILocation(line: 275, column: 34, scope: !35)
!271 = !DILocation(line: 275, column: 5, scope: !35)
!272 = !DILocation(line: 278, column: 9, scope: !35)
!273 = !DILocation(line: 278, column: 7, scope: !35)
!274 = !DILocation(line: 279, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !35, file: !27, line: 279, column: 9)
!276 = !DILocation(line: 279, column: 11, scope: !275)
!277 = !DILocation(line: 279, column: 9, scope: !35)
!278 = !DILocation(line: 280, column: 9, scope: !275)
!279 = !DILocation(line: 281, column: 24, scope: !35)
!280 = !DILocation(line: 281, column: 35, scope: !35)
!281 = !DILocation(line: 281, column: 5, scope: !35)
!282 = !DILocation(line: 282, column: 12, scope: !35)
!283 = !DILocation(line: 282, column: 5, scope: !35)
!284 = !DILocation(line: 284, column: 5, scope: !35)
!285 = !DILocation(line: 284, column: 10, scope: !286)
!286 = !DILexicalBlockFile(scope: !42, file: !27, discriminator: 1)
!287 = !DILocation(line: 284, column: 20, scope: !42)
!288 = !DILocation(line: 284, column: 51, scope: !42)
!289 = !DILocation(line: 284, column: 59, scope: !45)
!290 = !DILocation(line: 284, column: 75, scope: !45)
!291 = !DILocation(line: 284, column: 59, scope: !42)
!292 = !DILocation(line: 284, column: 90, scope: !293)
!293 = !DILexicalBlockFile(scope: !45, file: !27, discriminator: 2)
!294 = !DILocation(line: 284, column: 95, scope: !295)
!295 = !DILexicalBlockFile(scope: !44, file: !27, discriminator: 4)
!296 = !DILocation(line: 284, column: 105, scope: !44)
!297 = !DILocation(line: 284, column: 135, scope: !44)
!298 = !DILocation(line: 284, column: 161, scope: !299)
!299 = distinct !DILexicalBlock(scope: !44, file: !27, line: 284, column: 158)
!300 = !DILocation(line: 284, column: 178, scope: !299)
!301 = !DILocation(line: 284, column: 158, scope: !299)
!302 = !DILocation(line: 284, column: 188, scope: !299)
!303 = !DILocation(line: 284, column: 158, scope: !44)
!304 = !DILocation(line: 284, column: 158, scope: !305)
!305 = !DILexicalBlockFile(scope: !44, file: !27, discriminator: 5)
!306 = !DILocation(line: 284, column: 213, scope: !307)
!307 = !DILexicalBlockFile(scope: !299, file: !27, discriminator: 6)
!308 = !DILocation(line: 284, column: 201, scope: !299)
!309 = !DILocation(line: 284, column: 230, scope: !310)
!310 = !DILexicalBlockFile(scope: !45, file: !27, discriminator: 7)
!311 = !DILocation(line: 284, column: 230, scope: !44)
!312 = !DILocation(line: 284, column: 230, scope: !313)
!313 = !DILexicalBlockFile(scope: !44, file: !27, discriminator: 8)
!314 = !DILocation(line: 284, column: 230, scope: !315)
!315 = !DILexicalBlockFile(scope: !44, file: !27, discriminator: 9)
!316 = !DILocation(line: 284, column: 243, scope: !317)
!317 = !DILexicalBlockFile(scope: !318, file: !27, discriminator: 10)
!318 = !DILexicalBlockFile(scope: !35, file: !27, discriminator: 3)
!319 = !DILocation(line: 284, column: 243, scope: !42)
!320 = !DILocation(line: 284, column: 243, scope: !321)
!321 = !DILexicalBlockFile(scope: !42, file: !27, discriminator: 11)
!322 = !DILocation(line: 285, column: 5, scope: !35)
!323 = !DILocation(line: 286, column: 1, scope: !35)
!324 = !DILocation(line: 188, column: 28, scope: !46)
!325 = !DILocation(line: 188, column: 44, scope: !46)
!326 = !{!223, !223, i64 0}
!327 = !DILocation(line: 188, column: 55, scope: !46)
!328 = !DILocation(line: 190, column: 68, scope: !46)
!329 = !DILocation(line: 190, column: 5, scope: !46)
!330 = !DILocation(line: 44, column: 24, scope: !54)
!331 = !DILocation(line: 46, column: 5, scope: !54)
!332 = !DILocation(line: 46, column: 10, scope: !333)
!333 = !DILexicalBlockFile(scope: !60, file: !27, discriminator: 1)
!334 = !DILocation(line: 46, column: 20, scope: !60)
!335 = !DILocation(line: 46, column: 51, scope: !60)
!336 = !DILocation(line: 46, column: 57, scope: !60)
!337 = !{!338, !215, i64 16}
!338 = !{!"", !257, i64 0, !215, i64 16}
!339 = !DILocation(line: 46, column: 70, scope: !63)
!340 = !DILocation(line: 46, column: 86, scope: !63)
!341 = !DILocation(line: 46, column: 70, scope: !60)
!342 = !DILocation(line: 46, column: 101, scope: !343)
!343 = !DILexicalBlockFile(scope: !63, file: !27, discriminator: 2)
!344 = !DILocation(line: 46, column: 106, scope: !345)
!345 = !DILexicalBlockFile(scope: !62, file: !27, discriminator: 4)
!346 = !DILocation(line: 46, column: 116, scope: !62)
!347 = !DILocation(line: 46, column: 146, scope: !62)
!348 = !DILocation(line: 46, column: 172, scope: !349)
!349 = distinct !DILexicalBlock(scope: !62, file: !27, line: 46, column: 169)
!350 = !DILocation(line: 46, column: 189, scope: !349)
!351 = !DILocation(line: 46, column: 169, scope: !349)
!352 = !DILocation(line: 46, column: 199, scope: !349)
!353 = !DILocation(line: 46, column: 169, scope: !62)
!354 = !DILocation(line: 46, column: 169, scope: !355)
!355 = !DILexicalBlockFile(scope: !62, file: !27, discriminator: 5)
!356 = !DILocation(line: 46, column: 224, scope: !357)
!357 = !DILexicalBlockFile(scope: !349, file: !27, discriminator: 6)
!358 = !DILocation(line: 46, column: 212, scope: !349)
!359 = !DILocation(line: 46, column: 241, scope: !360)
!360 = !DILexicalBlockFile(scope: !63, file: !27, discriminator: 7)
!361 = !DILocation(line: 46, column: 241, scope: !62)
!362 = !DILocation(line: 46, column: 241, scope: !363)
!363 = !DILexicalBlockFile(scope: !62, file: !27, discriminator: 8)
!364 = !DILocation(line: 46, column: 241, scope: !365)
!365 = !DILexicalBlockFile(scope: !62, file: !27, discriminator: 9)
!366 = !DILocation(line: 46, column: 254, scope: !367)
!367 = !DILexicalBlockFile(scope: !368, file: !27, discriminator: 10)
!368 = !DILexicalBlockFile(scope: !54, file: !27, discriminator: 3)
!369 = !DILocation(line: 46, column: 254, scope: !60)
!370 = !DILocation(line: 47, column: 45, scope: !54)
!371 = !DILocation(line: 47, column: 33, scope: !54)
!372 = !DILocation(line: 47, column: 53, scope: !54)
!373 = !{!257, !215, i64 8}
!374 = !DILocation(line: 47, column: 16, scope: !54)
!375 = !DILocation(line: 47, column: 6, scope: !54)
!376 = !DILocation(line: 47, column: 68, scope: !54)
!377 = !DILocation(line: 47, column: 5, scope: !54)
!378 = !DILocation(line: 48, column: 1, scope: !54)
!379 = !DILocation(line: 72, column: 25, scope: !64)
!380 = !DILocation(line: 72, column: 41, scope: !64)
!381 = !DILocation(line: 74, column: 9, scope: !72)
!382 = !DILocation(line: 74, column: 15, scope: !72)
!383 = !DILocation(line: 74, column: 22, scope: !72)
!384 = !DILocation(line: 74, column: 9, scope: !64)
!385 = !DILocation(line: 75, column: 9, scope: !71)
!386 = !DILocation(line: 75, column: 19, scope: !71)
!387 = !DILocation(line: 75, column: 38, scope: !71)
!388 = !DILocation(line: 75, column: 44, scope: !71)
!389 = !DILocation(line: 75, column: 52, scope: !71)
!390 = !DILocation(line: 75, column: 23, scope: !71)
!391 = !DILocation(line: 76, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !71, file: !27, line: 76, column: 13)
!393 = !DILocation(line: 76, column: 15, scope: !392)
!394 = !DILocation(line: 76, column: 13, scope: !71)
!395 = !DILocation(line: 77, column: 29, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !27, line: 76, column: 30)
!397 = !DILocation(line: 77, column: 34, scope: !396)
!398 = !DILocation(line: 77, column: 43, scope: !396)
!399 = !DILocation(line: 78, column: 20, scope: !396)
!400 = !DILocation(line: 78, column: 13, scope: !396)
!401 = !DILocation(line: 80, column: 5, scope: !72)
!402 = !DILocation(line: 80, column: 5, scope: !403)
!403 = !DILexicalBlockFile(scope: !72, file: !27, discriminator: 1)
!404 = !DILocation(line: 80, column: 5, scope: !71)
!405 = !DILocation(line: 81, column: 48, scope: !64)
!406 = !DILocation(line: 81, column: 36, scope: !64)
!407 = !DILocation(line: 81, column: 54, scope: !64)
!408 = !DILocation(line: 81, column: 12, scope: !64)
!409 = !DILocation(line: 81, column: 5, scope: !64)
!410 = !DILocation(line: 82, column: 1, scope: !64)
!411 = !DILocation(line: 85, column: 24, scope: !73)
!412 = !DILocation(line: 85, column: 36, scope: !73)
!413 = !DILocation(line: 85, column: 52, scope: !73)
!414 = !DILocation(line: 87, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !73, file: !27, line: 87, column: 9)
!416 = !DILocation(line: 87, column: 15, scope: !415)
!417 = !DILocation(line: 87, column: 22, scope: !415)
!418 = !DILocation(line: 87, column: 9, scope: !73)
!419 = !DILocation(line: 88, column: 24, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !27, line: 87, column: 37)
!421 = !DILocation(line: 88, column: 9, scope: !420)
!422 = !DILocation(line: 88, column: 15, scope: !420)
!423 = !DILocation(line: 88, column: 22, scope: !420)
!424 = !DILocation(line: 89, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !27, line: 89, column: 13)
!426 = !DILocation(line: 89, column: 19, scope: !425)
!427 = !DILocation(line: 89, column: 26, scope: !425)
!428 = !DILocation(line: 89, column: 13, scope: !420)
!429 = !DILocation(line: 90, column: 13, scope: !425)
!430 = !DILocation(line: 91, column: 5, scope: !420)
!431 = !DILocation(line: 92, column: 9, scope: !84)
!432 = !DILocation(line: 92, column: 11, scope: !84)
!433 = !DILocation(line: 92, column: 9, scope: !73)
!434 = !DILocation(line: 93, column: 9, scope: !83)
!435 = !DILocation(line: 93, column: 13, scope: !83)
!436 = !DILocation(line: 93, column: 39, scope: !83)
!437 = !DILocation(line: 93, column: 45, scope: !83)
!438 = !DILocation(line: 93, column: 53, scope: !83)
!439 = !DILocation(line: 93, column: 18, scope: !83)
!440 = !DILocation(line: 94, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !83, file: !27, line: 94, column: 13)
!442 = !DILocation(line: 94, column: 16, scope: !441)
!443 = !DILocation(line: 94, column: 13, scope: !83)
!444 = !DILocation(line: 95, column: 29, scope: !441)
!445 = !DILocation(line: 95, column: 13, scope: !441)
!446 = !DILocation(line: 97, column: 16, scope: !83)
!447 = !DILocation(line: 97, column: 9, scope: !83)
!448 = !DILocation(line: 98, column: 5, scope: !84)
!449 = !DILocation(line: 100, column: 37, scope: !84)
!450 = !DILocation(line: 100, column: 43, scope: !84)
!451 = !DILocation(line: 100, column: 51, scope: !84)
!452 = !DILocation(line: 100, column: 57, scope: !84)
!453 = !DILocation(line: 100, column: 16, scope: !84)
!454 = !DILocation(line: 100, column: 9, scope: !84)
!455 = !DILocation(line: 101, column: 1, scope: !73)
!456 = !DILocation(line: 51, column: 21, scope: !85)
!457 = !DILocation(line: 51, column: 37, scope: !85)
!458 = !DILocation(line: 53, column: 5, scope: !85)
!459 = !DILocation(line: 53, column: 15, scope: !85)
!460 = !DILocation(line: 54, column: 27, scope: !461)
!461 = distinct !DILexicalBlock(scope: !85, file: !27, line: 54, column: 9)
!462 = !DILocation(line: 54, column: 10, scope: !461)
!463 = !DILocation(line: 54, column: 9, scope: !85)
!464 = !DILocation(line: 55, column: 9, scope: !461)
!465 = !DILocation(line: 57, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !85, file: !27, line: 57, column: 9)
!467 = !DILocation(line: 57, column: 11, scope: !466)
!468 = !DILocation(line: 57, column: 25, scope: !466)
!469 = !DILocation(line: 57, column: 60, scope: !470)
!470 = !DILexicalBlockFile(scope: !466, file: !27, discriminator: 1)
!471 = !DILocation(line: 57, column: 65, scope: !466)
!472 = !DILocation(line: 57, column: 30, scope: !466)
!473 = !DILocation(line: 57, column: 75, scope: !466)
!474 = !DILocation(line: 57, column: 92, scope: !466)
!475 = !DILocation(line: 57, column: 9, scope: !85)
!476 = !DILocation(line: 58, column: 25, scope: !477)
!477 = distinct !DILexicalBlock(scope: !466, file: !27, line: 57, column: 99)
!478 = !DILocation(line: 58, column: 30, scope: !477)
!479 = !DILocation(line: 58, column: 39, scope: !477)
!480 = !DILocation(line: 59, column: 16, scope: !477)
!481 = !DILocation(line: 59, column: 9, scope: !477)
!482 = !DILocation(line: 61, column: 51, scope: !85)
!483 = !DILocation(line: 62, column: 5, scope: !85)
!484 = !DILocation(line: 63, column: 1, scope: !85)
!485 = !DILocation(line: 159, column: 18, scope: !90)
!486 = !DILocation(line: 159, column: 34, scope: !90)
!487 = !DILocation(line: 161, column: 5, scope: !90)
!488 = !DILocation(line: 161, column: 15, scope: !90)
!489 = !DILocation(line: 162, column: 5, scope: !90)
!490 = !DILocation(line: 162, column: 10, scope: !90)
!491 = !DILocation(line: 163, column: 27, scope: !492)
!492 = distinct !DILexicalBlock(scope: !90, file: !27, line: 163, column: 9)
!493 = !DILocation(line: 163, column: 10, scope: !492)
!494 = !DILocation(line: 163, column: 9, scope: !90)
!495 = !DILocation(line: 164, column: 9, scope: !492)
!496 = !DILocation(line: 165, column: 51, scope: !90)
!497 = !DILocation(line: 166, column: 5, scope: !90)
!498 = !DILocation(line: 167, column: 1, scope: !90)
!499 = !DILocation(line: 130, column: 18, scope: !98)
!500 = !DILocation(line: 130, column: 34, scope: !98)
!501 = !DILocation(line: 132, column: 5, scope: !98)
!502 = !DILocation(line: 132, column: 10, scope: !98)
!503 = !DILocation(line: 132, column: 13, scope: !98)
!504 = !DILocation(line: 133, column: 5, scope: !98)
!505 = !DILocation(line: 133, column: 10, scope: !98)
!506 = !DILocation(line: 134, column: 27, scope: !507)
!507 = distinct !DILexicalBlock(scope: !98, file: !27, line: 134, column: 9)
!508 = !DILocation(line: 134, column: 10, scope: !507)
!509 = !DILocation(line: 134, column: 9, scope: !98)
!510 = !DILocation(line: 135, column: 9, scope: !507)
!511 = !DILocation(line: 136, column: 11, scope: !98)
!512 = !{!258, !258, i64 0}
!513 = !DILocation(line: 136, column: 13, scope: !98)
!514 = !DILocation(line: 136, column: 12, scope: !98)
!515 = !DILocation(line: 136, column: 9, scope: !98)
!516 = !DILocation(line: 137, column: 28, scope: !98)
!517 = !DILocation(line: 137, column: 12, scope: !98)
!518 = !DILocation(line: 137, column: 5, scope: !98)
!519 = !DILocation(line: 138, column: 1, scope: !98)
!520 = !DILocation(line: 144, column: 18, scope: !105)
!521 = !DILocation(line: 144, column: 34, scope: !105)
!522 = !DILocation(line: 146, column: 5, scope: !105)
!523 = !DILocation(line: 146, column: 16, scope: !105)
!524 = !DILocation(line: 148, column: 27, scope: !525)
!525 = distinct !DILexicalBlock(scope: !105, file: !27, line: 148, column: 9)
!526 = !DILocation(line: 148, column: 10, scope: !525)
!527 = !DILocation(line: 148, column: 9, scope: !105)
!528 = !DILocation(line: 149, column: 9, scope: !525)
!529 = !DILocation(line: 150, column: 23, scope: !105)
!530 = !DILocation(line: 150, column: 10, scope: !105)
!531 = !DILocation(line: 150, column: 8, scope: !105)
!532 = !DILocation(line: 151, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !105, file: !27, line: 151, column: 9)
!534 = !DILocation(line: 151, column: 12, scope: !533)
!535 = !DILocation(line: 151, column: 9, scope: !105)
!536 = !DILocation(line: 152, column: 9, scope: !533)
!537 = !DILocation(line: 153, column: 24, scope: !105)
!538 = !DILocation(line: 153, column: 12, scope: !105)
!539 = !DILocation(line: 153, column: 5, scope: !105)
!540 = !DILocation(line: 154, column: 1, scope: !105)
!541 = !DILocation(line: 31, column: 24, scope: !110)
!542 = !DILocation(line: 33, column: 5, scope: !110)
!543 = !DILocation(line: 33, column: 16, scope: !110)
!544 = !DILocation(line: 34, column: 57, scope: !110)
!545 = !DILocation(line: 34, column: 42, scope: !110)
!546 = !DILocation(line: 34, column: 28, scope: !110)
!547 = !DILocation(line: 34, column: 14, scope: !110)
!548 = !DILocation(line: 34, column: 10, scope: !110)
!549 = !DILocation(line: 35, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !110, file: !27, line: 35, column: 9)
!551 = !DILocation(line: 35, column: 14, scope: !550)
!552 = !DILocation(line: 35, column: 9, scope: !110)
!553 = !DILocation(line: 36, column: 9, scope: !550)
!554 = !DILocation(line: 37, column: 5, scope: !110)
!555 = !DILocation(line: 37, column: 11, scope: !110)
!556 = !DILocation(line: 37, column: 18, scope: !110)
!557 = !DILocation(line: 38, column: 12, scope: !110)
!558 = !DILocation(line: 38, column: 5, scope: !110)
!559 = !DILocation(line: 39, column: 1, scope: !110)
