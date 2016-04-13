; ModuleID = 'irs-onlybc/microprotocols.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, {}*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, {}*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque

@psyco_adapters = common global %struct._object* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"adapters\00", align 1
@pysqlite_PrepareProtocolType = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"__adapt__\00", align 1
@pysqlite_microprotocols_adapt.PyId___adapt__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"__conform__\00", align 1
@pysqlite_microprotocols_adapt.PyId___conform__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._object* null }, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"can't adapt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"O|OO\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_microprotocols_init(%struct._object* %dict) #0 {
entry:
  %retval = alloca i32, align 4
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !354, metadata !523), !dbg !524
  %call = call %struct._object* @PyDict_New(), !dbg !525
  store %struct._object* %call, %struct._object** @psyco_adapters, align 8, !dbg !527, !tbaa !519
  %cmp = icmp eq %struct._object* %call, null, !dbg !528
  br i1 %cmp, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !530
  br label %return, !dbg !530

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !532, !tbaa !519
  %1 = load %struct._object*, %struct._object** @psyco_adapters, align 8, !dbg !533, !tbaa !519
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* %1), !dbg !534
  store i32 %call1, i32* %retval, !dbg !535
  br label %return, !dbg !535

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, !dbg !536
  ret i32 %2, !dbg !536
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._object* @PyDict_New() #2

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define i32 @pysqlite_microprotocols_add(%struct._typeobject* %type, %struct._object* %proto, %struct._object* %cast) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._typeobject*, align 8
  %proto.addr = alloca %struct._object*, align 8
  %cast.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !361, metadata !523), !dbg !537
  store %struct._object* %proto, %struct._object** %proto.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %proto.addr, metadata !362, metadata !523), !dbg !538
  store %struct._object* %cast, %struct._object** %cast.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %cast.addr, metadata !363, metadata !523), !dbg !539
  %0 = bitcast %struct._object** %key to i8*, !dbg !540
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !540
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !364, metadata !523), !dbg !541
  %1 = bitcast i32* %rc to i8*, !dbg !542
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !542
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !365, metadata !523), !dbg !543
  %2 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !544, !tbaa !519
  %cmp = icmp eq %struct._object* %2, null, !dbg !546
  br i1 %cmp, label %if.then, label %if.end, !dbg !547

if.then:                                          ; preds = %entry
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object** %proto.addr, align 8, !dbg !548, !tbaa !519
  br label %if.end, !dbg !550

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !551, !tbaa !519
  %4 = bitcast %struct._typeobject* %3 to %struct._object*, !dbg !552
  %5 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !553, !tbaa !519
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* %4, %struct._object* %5), !dbg !554
  store %struct._object* %call, %struct._object** %key, align 8, !dbg !555, !tbaa !519
  %6 = load %struct._object*, %struct._object** %key, align 8, !dbg !556, !tbaa !519
  %tobool = icmp ne %struct._object* %6, null, !dbg !556
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !558

if.then.1:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !559
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !559

if.end.2:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @psyco_adapters, align 8, !dbg !561, !tbaa !519
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !562, !tbaa !519
  %9 = load %struct._object*, %struct._object** %cast.addr, align 8, !dbg !563, !tbaa !519
  %call3 = call i32 @PyDict_SetItem(%struct._object* %7, %struct._object* %8, %struct._object* %9), !dbg !564
  store i32 %call3, i32* %rc, align 4, !dbg !565, !tbaa !566
  br label %do.body, !dbg !568

do.body:                                          ; preds = %if.end.2
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !569
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !569
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !366, metadata !523), !dbg !571
  %11 = load %struct._object*, %struct._object** %key, align 8, !dbg !572, !tbaa !519
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !571, !tbaa !519
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !573, !tbaa !519
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !575
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !576, !tbaa !577
  %dec = add i64 %13, -1, !dbg !576
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !576, !tbaa !577
  %cmp4 = icmp ne i64 %dec, 0, !dbg !580
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !581

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !582

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !584, !tbaa !519
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !586
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !586, !tbaa !587
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !588
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !588, !tbaa !589
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !592, !tbaa !519
  call void %16(%struct._object* %17), !dbg !593
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !594
  call void @llvm.lifetime.end(i64 8, i8* %18) #3, !dbg !594
  br label %do.cond, !dbg !596

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !597

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %rc, align 4, !dbg !599, !tbaa !566
  store i32 %19, i32* %retval, !dbg !600
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !600

cleanup:                                          ; preds = %do.end, %if.then.1
  %20 = bitcast i32* %rc to i8*, !dbg !601
  call void @llvm.lifetime.end(i64 4, i8* %20) #3, !dbg !601
  %21 = bitcast %struct._object** %key to i8*, !dbg !601
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !601
  %22 = load i32, i32* %retval, !dbg !601
  ret i32 %22, !dbg !601
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %obj, %struct._object* %proto, %struct._object* %alt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %proto.addr = alloca %struct._object*, align 8
  %alt.addr = alloca %struct._object*, align 8
  %adapter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %adapted = alloca %struct._object*, align 8
  %adapted12 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %adapted43 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !370, metadata !523), !dbg !602
  store %struct._object* %proto, %struct._object** %proto.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %proto.addr, metadata !371, metadata !523), !dbg !603
  store %struct._object* %alt, %struct._object** %alt.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %alt.addr, metadata !372, metadata !523), !dbg !604
  %0 = bitcast %struct._object** %adapter to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !605
  call void @llvm.dbg.declare(metadata %struct._object** %adapter, metadata !373, metadata !523), !dbg !606
  %1 = bitcast %struct._object** %key to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !605
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !374, metadata !523), !dbg !607
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !608, !tbaa !519
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !609
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !609, !tbaa !587
  %4 = bitcast %struct._typeobject* %3 to %struct._object*, !dbg !610
  %5 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !611, !tbaa !519
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* %4, %struct._object* %5), !dbg !612
  store %struct._object* %call, %struct._object** %key, align 8, !dbg !613, !tbaa !519
  %6 = load %struct._object*, %struct._object** %key, align 8, !dbg !614, !tbaa !519
  %tobool = icmp ne %struct._object* %6, null, !dbg !614
  br i1 %tobool, label %if.end, label %if.then, !dbg !616

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !617
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75, !dbg !617

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** @psyco_adapters, align 8, !dbg !619, !tbaa !519
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !620, !tbaa !519
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %7, %struct._object* %8), !dbg !621
  store %struct._object* %call1, %struct._object** %adapter, align 8, !dbg !622, !tbaa !519
  br label %do.body, !dbg !623

do.body:                                          ; preds = %if.end
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !624
  call void @llvm.lifetime.start(i64 8, i8* %9) #3, !dbg !624
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !375, metadata !523), !dbg !626
  %10 = load %struct._object*, %struct._object** %key, align 8, !dbg !627, !tbaa !519
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !626, !tbaa !519
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !628, !tbaa !519
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !630
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !631, !tbaa !577
  %dec = add i64 %12, -1, !dbg !631
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !631, !tbaa !577
  %cmp = icmp ne i64 %dec, 0, !dbg !632
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !633

if.then.2:                                        ; preds = %do.body
  br label %if.end.4, !dbg !634

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !636, !tbaa !519
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !638
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !638, !tbaa !587
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !639
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !639, !tbaa !589
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !640, !tbaa !519
  call void %15(%struct._object* %16), !dbg !641
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !642
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !642
  br label %do.cond, !dbg !644

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !645

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** %adapter, align 8, !dbg !647, !tbaa !519
  %tobool5 = icmp ne %struct._object* %18, null, !dbg !647
  br i1 %tobool5, label %if.then.6, label %if.end.8, !dbg !648

if.then.6:                                        ; preds = %do.end
  %19 = bitcast %struct._object** %adapted to i8*, !dbg !649
  call void @llvm.lifetime.start(i64 8, i8* %19) #3, !dbg !649
  call void @llvm.dbg.declare(metadata %struct._object** %adapted, metadata !377, metadata !523), !dbg !650
  %20 = load %struct._object*, %struct._object** %adapter, align 8, !dbg !651, !tbaa !519
  %21 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !652, !tbaa !519
  %call7 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %20, %struct._object* %21, i8* null), !dbg !653
  store %struct._object* %call7, %struct._object** %adapted, align 8, !dbg !650, !tbaa !519
  %22 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !654, !tbaa !519
  store %struct._object* %22, %struct._object** %retval, !dbg !655
  store i32 1, i32* %cleanup.dest.slot
  %23 = bitcast %struct._object** %adapted to i8*, !dbg !656
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !656
  br label %cleanup.75

if.end.8:                                         ; preds = %do.end
  %24 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !657, !tbaa !519
  %call9 = call i32 @PyObject_HasAttrString(%struct._object* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !658
  %tobool10 = icmp ne i32 %call9, 0, !dbg !658
  br i1 %tobool10, label %if.then.11, label %if.end.39, !dbg !659

if.then.11:                                       ; preds = %if.end.8
  %25 = bitcast %struct._object** %adapted12 to i8*, !dbg !660
  call void @llvm.lifetime.start(i64 8, i8* %25) #3, !dbg !660
  call void @llvm.dbg.declare(metadata %struct._object** %adapted12, metadata !380, metadata !523), !dbg !661
  %26 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !662, !tbaa !519
  %27 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !663, !tbaa !519
  %call13 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %26, %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___adapt__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._object* %27), !dbg !664
  store %struct._object* %call13, %struct._object** %adapted12, align 8, !dbg !661, !tbaa !519
  %28 = load %struct._object*, %struct._object** %adapted12, align 8, !dbg !665, !tbaa !519
  %tobool14 = icmp ne %struct._object* %28, null, !dbg !665
  br i1 %tobool14, label %if.then.15, label %if.end.32, !dbg !666

if.then.15:                                       ; preds = %if.then.11
  %29 = load %struct._object*, %struct._object** %adapted12, align 8, !dbg !667, !tbaa !519
  %cmp16 = icmp ne %struct._object* %29, @_Py_NoneStruct, !dbg !668
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !669

if.then.17:                                       ; preds = %if.then.15
  %30 = load %struct._object*, %struct._object** %adapted12, align 8, !dbg !670, !tbaa !519
  store %struct._object* %30, %struct._object** %retval, !dbg !672
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !672

if.else.18:                                       ; preds = %if.then.15
  br label %do.body.19, !dbg !673

do.body.19:                                       ; preds = %if.else.18
  %31 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !674
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !674
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !383, metadata !523), !dbg !676
  %32 = load %struct._object*, %struct._object** %adapted12, align 8, !dbg !677, !tbaa !519
  store %struct._object* %32, %struct._object** %_py_decref_tmp20, align 8, !dbg !676, !tbaa !519
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !678, !tbaa !519
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !680
  %34 = load i64, i64* %ob_refcnt21, align 8, !dbg !681, !tbaa !577
  %dec22 = add i64 %34, -1, !dbg !681
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !681, !tbaa !577
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !682
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !683

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !684

if.else.25:                                       ; preds = %do.body.19
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !686, !tbaa !519
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !688
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !688, !tbaa !587
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !689
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !689, !tbaa !589
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !690, !tbaa !519
  call void %37(%struct._object* %38), !dbg !691
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %39 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !692
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !692
  br label %do.cond.29, !dbg !694

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !695

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30
  br label %if.end.32, !dbg !697

if.end.32:                                        ; preds = %if.end.31, %if.then.11
  %call33 = call %struct._object* @PyErr_Occurred(), !dbg !698
  %tobool34 = icmp ne %struct._object* %call33, null, !dbg !698
  br i1 %tobool34, label %land.lhs.true, label %if.end.38, !dbg !700

land.lhs.true:                                    ; preds = %if.end.32
  %40 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !701, !tbaa !519
  %call35 = call i32 @PyErr_ExceptionMatches(%struct._object* %40), !dbg !703
  %tobool36 = icmp ne i32 %call35, 0, !dbg !703
  br i1 %tobool36, label %if.end.38, label %if.then.37, !dbg !704

if.then.37:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !705
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !705

if.end.38:                                        ; preds = %land.lhs.true, %if.end.32
  store i32 0, i32* %cleanup.dest.slot, !dbg !706
  br label %cleanup, !dbg !706

cleanup:                                          ; preds = %if.end.38, %if.then.37, %if.then.17
  %41 = bitcast %struct._object** %adapted12 to i8*, !dbg !707
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !707
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39, !dbg !709

if.end.39:                                        ; preds = %cleanup.cont, %if.end.8
  %42 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !710, !tbaa !519
  %call40 = call i32 @PyObject_HasAttrString(%struct._object* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)), !dbg !711
  %tobool41 = icmp ne i32 %call40, 0, !dbg !711
  br i1 %tobool41, label %if.then.42, label %if.end.74, !dbg !712

if.then.42:                                       ; preds = %if.end.39
  %43 = bitcast %struct._object** %adapted43 to i8*, !dbg !713
  call void @llvm.lifetime.start(i64 8, i8* %43) #3, !dbg !713
  call void @llvm.dbg.declare(metadata %struct._object** %adapted43, metadata !389, metadata !523), !dbg !714
  %44 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !715, !tbaa !519
  %45 = load %struct._object*, %struct._object** %proto.addr, align 8, !dbg !716, !tbaa !519
  %call44 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %44, %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___conform__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._object* %45), !dbg !717
  store %struct._object* %call44, %struct._object** %adapted43, align 8, !dbg !714, !tbaa !519
  %46 = load %struct._object*, %struct._object** %adapted43, align 8, !dbg !718, !tbaa !519
  %tobool45 = icmp ne %struct._object* %46, null, !dbg !718
  br i1 %tobool45, label %if.then.46, label %if.end.63, !dbg !719

if.then.46:                                       ; preds = %if.then.42
  %47 = load %struct._object*, %struct._object** %adapted43, align 8, !dbg !720, !tbaa !519
  %cmp47 = icmp ne %struct._object* %47, @_Py_NoneStruct, !dbg !721
  br i1 %cmp47, label %if.then.48, label %if.else.49, !dbg !722

if.then.48:                                       ; preds = %if.then.46
  %48 = load %struct._object*, %struct._object** %adapted43, align 8, !dbg !723, !tbaa !519
  store %struct._object* %48, %struct._object** %retval, !dbg !725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71, !dbg !725

if.else.49:                                       ; preds = %if.then.46
  br label %do.body.50, !dbg !726

do.body.50:                                       ; preds = %if.else.49
  %49 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !727
  call void @llvm.lifetime.start(i64 8, i8* %49) #3, !dbg !727
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp51, metadata !392, metadata !523), !dbg !729
  %50 = load %struct._object*, %struct._object** %adapted43, align 8, !dbg !730, !tbaa !519
  store %struct._object* %50, %struct._object** %_py_decref_tmp51, align 8, !dbg !729, !tbaa !519
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !731, !tbaa !519
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !733
  %52 = load i64, i64* %ob_refcnt52, align 8, !dbg !734, !tbaa !577
  %dec53 = add i64 %52, -1, !dbg !734
  store i64 %dec53, i64* %ob_refcnt52, align 8, !dbg !734, !tbaa !577
  %cmp54 = icmp ne i64 %dec53, 0, !dbg !735
  br i1 %cmp54, label %if.then.55, label %if.else.56, !dbg !736

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59, !dbg !737

if.else.56:                                       ; preds = %do.body.50
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !739, !tbaa !519
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !741
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !741, !tbaa !587
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !742
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !742, !tbaa !589
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8, !dbg !743, !tbaa !519
  call void %55(%struct._object* %56), !dbg !744
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %57 = bitcast %struct._object** %_py_decref_tmp51 to i8*, !dbg !745
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !745
  br label %do.cond.60, !dbg !747

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !748

do.end.61:                                        ; preds = %do.cond.60
  br label %if.end.62

if.end.62:                                        ; preds = %do.end.61
  br label %if.end.63, !dbg !750

if.end.63:                                        ; preds = %if.end.62, %if.then.42
  %call64 = call %struct._object* @PyErr_Occurred(), !dbg !751
  %tobool65 = icmp ne %struct._object* %call64, null, !dbg !751
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.70, !dbg !753

land.lhs.true.66:                                 ; preds = %if.end.63
  %58 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !754, !tbaa !519
  %call67 = call i32 @PyErr_ExceptionMatches(%struct._object* %58), !dbg !756
  %tobool68 = icmp ne i32 %call67, 0, !dbg !756
  br i1 %tobool68, label %if.end.70, label %if.then.69, !dbg !757

if.then.69:                                       ; preds = %land.lhs.true.66
  store %struct._object* null, %struct._object** %retval, !dbg !758
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.71, !dbg !758

if.end.70:                                        ; preds = %land.lhs.true.66, %if.end.63
  store i32 0, i32* %cleanup.dest.slot, !dbg !760
  br label %cleanup.71, !dbg !760

cleanup.71:                                       ; preds = %if.end.70, %if.then.69, %if.then.48
  %59 = bitcast %struct._object** %adapted43 to i8*, !dbg !761
  call void @llvm.lifetime.end(i64 8, i8* %59) #3, !dbg !761
  %cleanup.dest.72 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.72, label %cleanup.75 [
    i32 0, label %cleanup.cont.73
  ]

cleanup.cont.73:                                  ; preds = %cleanup.71
  br label %if.end.74, !dbg !763

if.end.74:                                        ; preds = %cleanup.cont.73, %if.end.39
  %60 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !764, !tbaa !519
  call void @PyErr_SetString(%struct._object* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)), !dbg !765
  store %struct._object* null, %struct._object** %retval, !dbg !766
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75, !dbg !766

cleanup.75:                                       ; preds = %if.end.74, %cleanup.71, %cleanup, %if.then.6, %if.then
  %61 = bitcast %struct._object** %key to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !767
  %62 = bitcast %struct._object** %adapter to i8*, !dbg !767
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !767
  %63 = load %struct._object*, %struct._object** %retval, !dbg !767
  ret %struct._object* %63, !dbg !767
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #2

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #2

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare %struct._object* @PyErr_Occurred() #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_adapt(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %alt = alloca %struct._object*, align 8
  %proto = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !499, metadata !523), !dbg !768
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !519
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !500, metadata !523), !dbg !769
  %0 = bitcast %struct._object** %obj to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !501, metadata !523), !dbg !771
  %1 = bitcast %struct._object** %alt to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !770
  call void @llvm.dbg.declare(metadata %struct._object** %alt, metadata !502, metadata !523), !dbg !772
  store %struct._object* null, %struct._object** %alt, align 8, !dbg !772, !tbaa !519
  %2 = bitcast %struct._object** %proto to i8*, !dbg !773
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !773
  call void @llvm.dbg.declare(metadata %struct._object** %proto, metadata !503, metadata !523), !dbg !774
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object** %proto, align 8, !dbg !774, !tbaa !519
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !775, !tbaa !519
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object** %obj, %struct._object** %proto, %struct._object** %alt), !dbg !777
  %tobool = icmp ne i32 %call, 0, !dbg !777
  br i1 %tobool, label %if.end, label %if.then, !dbg !778

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !779
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !781

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj, align 8, !dbg !782, !tbaa !519
  %5 = load %struct._object*, %struct._object** %proto, align 8, !dbg !783, !tbaa !519
  %6 = load %struct._object*, %struct._object** %alt, align 8, !dbg !784, !tbaa !519
  %call1 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %4, %struct._object* %5, %struct._object* %6), !dbg !785
  store %struct._object* %call1, %struct._object** %retval, !dbg !786
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !786

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %proto to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !787
  %8 = bitcast %struct._object** %alt to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !787
  %9 = bitcast %struct._object** %obj to i8*, !dbg !787
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !787
  %10 = load %struct._object*, %struct._object** %retval, !dbg !787
  ret %struct._object* %10, !dbg !787
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!515, !516, !517}
!llvm.ident = !{!518}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !350, globals: !504)
!1 = !DIFile(filename: "microprotocols.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
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
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !{!351, !355, !368, !398}
!351 = !DISubprogram(name: "pysqlite_microprotocols_init", scope: !352, file: !352, line: 41, type: !144, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @pysqlite_microprotocols_init, variables: !353)
!352 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/microprotocols.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !{!354}
!354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 1, scope: !351, file: !352, line: 41, type: !5)
!355 = !DISubprogram(name: "pysqlite_microprotocols_add", scope: !352, file: !352, line: 55, type: !356, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._typeobject*, %struct._object*, %struct._object*)* @pysqlite_microprotocols_add, variables: !360)
!356 = !DISubroutineType(types: !357)
!357 = !{!44, !358, !5, !5}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !355, file: !352, line: 55, type: !358)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proto", arg: 2, scope: !355, file: !352, line: 55, type: !5)
!363 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cast", arg: 3, scope: !355, file: !352, line: 55, type: !5)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !355, file: !352, line: 57, type: !5)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !355, file: !352, line: 58, type: !44)
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !367, file: !352, line: 68, type: !5)
!367 = distinct !DILexicalBlock(scope: !355, file: !352, line: 68, column: 8)
!368 = !DISubprogram(name: "pysqlite_microprotocols_adapt", scope: !352, file: !352, line: 76, type: !135, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @pysqlite_microprotocols_adapt, variables: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !377, !380, !383, !389, !392}
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !368, file: !352, line: 76, type: !5)
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proto", arg: 2, scope: !368, file: !352, line: 76, type: !5)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alt", arg: 3, scope: !368, file: !352, line: 76, type: !5)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adapter", scope: !368, file: !352, line: 78, type: !5)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !368, file: !352, line: 78, type: !5)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !376, file: !352, line: 90, type: !5)
!376 = distinct !DILexicalBlock(scope: !368, file: !352, line: 90, column: 8)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adapted", scope: !378, file: !352, line: 92, type: !5)
!378 = distinct !DILexicalBlock(scope: !379, file: !352, line: 91, column: 18)
!379 = distinct !DILexicalBlock(scope: !368, file: !352, line: 91, column: 9)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adapted", scope: !381, file: !352, line: 99, type: !5)
!381 = distinct !DILexicalBlock(scope: !382, file: !352, line: 97, column: 53)
!382 = distinct !DILexicalBlock(scope: !368, file: !352, line: 97, column: 9)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !384, file: !352, line: 105, type: !5)
!384 = distinct !DILexicalBlock(scope: !385, file: !352, line: 105, column: 20)
!385 = distinct !DILexicalBlock(scope: !386, file: !352, line: 104, column: 20)
!386 = distinct !DILexicalBlock(scope: !387, file: !352, line: 102, column: 17)
!387 = distinct !DILexicalBlock(scope: !388, file: !352, line: 101, column: 22)
!388 = distinct !DILexicalBlock(scope: !381, file: !352, line: 101, column: 13)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adapted", scope: !390, file: !352, line: 116, type: !5)
!390 = distinct !DILexicalBlock(scope: !391, file: !352, line: 114, column: 53)
!391 = distinct !DILexicalBlock(scope: !368, file: !352, line: 114, column: 9)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !393, file: !352, line: 122, type: !5)
!393 = distinct !DILexicalBlock(scope: !394, file: !352, line: 122, column: 20)
!394 = distinct !DILexicalBlock(scope: !395, file: !352, line: 121, column: 20)
!395 = distinct !DILexicalBlock(scope: !396, file: !352, line: 119, column: 17)
!396 = distinct !DILexicalBlock(scope: !397, file: !352, line: 118, column: 22)
!397 = distinct !DILexicalBlock(scope: !390, file: !352, line: 118, column: 13)
!398 = !DISubprogram(name: "pysqlite_adapt", scope: !352, file: !352, line: 139, type: !399, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_adapt, variables: !498)
!399 = !DISubroutineType(types: !400)
!400 = !{!5, !401, !5}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cursor", file: !403, line: 52, baseType: !404)
!403 = !DIFile(filename: "Modules/_sqlite/cursor.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 32, size: 896, align: 64, elements: !405)
!405 = !{!406, !407, !471, !472, !473, !474, !475, !476, !477, !492, !493, !494, !495, !496, !497}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !404, file: !403, line: 34, baseType: !6, size: 128, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !404, file: !403, line: 35, baseType: !408, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !410, line: 112, baseType: !411)
!410 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!411 = !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 35, size: 1792, align: 64, elements: !412)
!412 = !{!413, !414, !419, !420, !421, !423, !424, !425, !426, !427, !428, !429, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !411, file: !410, line: 37, baseType: !6, size: 128, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !411, file: !410, line: 38, baseType: !415, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !417, line: 228, baseType: !418)
!417 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !417, line: 228, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !411, file: !410, line: 42, baseType: !31, size: 8, align: 8, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !411, file: !410, line: 46, baseType: !44, size: 32, align: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !411, file: !410, line: 49, baseType: !422, size: 64, align: 64, offset: 256)
!422 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !411, file: !410, line: 53, baseType: !422, size: 64, align: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !411, file: !410, line: 56, baseType: !5, size: 64, align: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !411, file: !410, line: 60, baseType: !52, size: 64, align: 64, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !411, file: !410, line: 64, baseType: !44, size: 32, align: 32, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !411, file: !410, line: 66, baseType: !44, size: 32, align: 32, offset: 544)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !411, file: !410, line: 69, baseType: !17, size: 64, align: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !411, file: !410, line: 71, baseType: !430, size: 64, align: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !432, line: 59, baseType: !433)
!432 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 42, size: 512, align: 64, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !451, !452}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !433, file: !432, line: 44, baseType: !6, size: 128, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !433, file: !432, line: 45, baseType: !44, size: 32, align: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !433, file: !432, line: 48, baseType: !5, size: 64, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !433, file: !432, line: 51, baseType: !5, size: 64, align: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !433, file: !432, line: 53, baseType: !440, size: 64, align: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !432, line: 40, baseType: !442)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !432, line: 32, size: 448, align: 64, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !450}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !442, file: !432, line: 34, baseType: !6, size: 128, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !442, file: !432, line: 35, baseType: !5, size: 64, align: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !442, file: !432, line: 36, baseType: !5, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !432, line: 37, baseType: !17, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !432, line: 38, baseType: !449, size: 64, align: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !432, line: 39, baseType: !449, size: 64, align: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !433, file: !432, line: 54, baseType: !440, size: 64, align: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !433, file: !432, line: 58, baseType: !44, size: 32, align: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !411, file: !410, line: 74, baseType: !5, size: 64, align: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !411, file: !410, line: 75, baseType: !5, size: 64, align: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !411, file: !410, line: 79, baseType: !44, size: 32, align: 32, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !411, file: !410, line: 80, baseType: !44, size: 32, align: 32, offset: 864)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !411, file: !410, line: 82, baseType: !5, size: 64, align: 64, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !411, file: !410, line: 90, baseType: !5, size: 64, align: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !411, file: !410, line: 96, baseType: !5, size: 64, align: 64, offset: 1024)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !411, file: !410, line: 99, baseType: !5, size: 64, align: 64, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !411, file: !410, line: 102, baseType: !5, size: 64, align: 64, offset: 1152)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !411, file: !410, line: 103, baseType: !5, size: 64, align: 64, offset: 1216)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !411, file: !410, line: 104, baseType: !5, size: 64, align: 64, offset: 1280)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !411, file: !410, line: 105, baseType: !5, size: 64, align: 64, offset: 1344)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !411, file: !410, line: 106, baseType: !5, size: 64, align: 64, offset: 1408)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !411, file: !410, line: 107, baseType: !5, size: 64, align: 64, offset: 1472)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !411, file: !410, line: 108, baseType: !5, size: 64, align: 64, offset: 1536)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !411, file: !410, line: 109, baseType: !5, size: 64, align: 64, offset: 1600)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !411, file: !410, line: 110, baseType: !5, size: 64, align: 64, offset: 1664)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !411, file: !410, line: 111, baseType: !5, size: 64, align: 64, offset: 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !404, file: !403, line: 36, baseType: !5, size: 64, align: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "row_cast_map", scope: !404, file: !403, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arraysize", scope: !404, file: !403, line: 38, baseType: !44, size: 32, align: 32, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lastrowid", scope: !404, file: !403, line: 39, baseType: !5, size: 64, align: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rowcount", scope: !404, file: !403, line: 40, baseType: !17, size: 64, align: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !404, file: !403, line: 41, baseType: !5, size: 64, align: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !404, file: !403, line: 42, baseType: !478, size: 64, align: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Statement", file: !480, line: 42, baseType: !481)
!480 = !DIFile(filename: "Modules/_sqlite/statement.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!481 = !DICompositeType(tag: DW_TAG_structure_type, file: !480, line: 34, size: 448, align: 64, elements: !482)
!482 = !{!483, !484, !485, !489, !490, !491}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !481, file: !480, line: 36, baseType: !6, size: 128, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !481, file: !480, line: 37, baseType: !415, size: 64, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !481, file: !480, line: 38, baseType: !486, size: 64, align: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !417, line: 2911, baseType: !488)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !417, line: 2911, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sql", scope: !481, file: !480, line: 39, baseType: !5, size: 64, align: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !481, file: !480, line: 40, baseType: !44, size: 32, align: 32, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !481, file: !480, line: 41, baseType: !5, size: 64, align: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !404, file: !403, line: 43, baseType: !44, size: 32, align: 32, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !404, file: !403, line: 44, baseType: !44, size: 32, align: 32, offset: 672)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !404, file: !403, line: 45, baseType: !44, size: 32, align: 32, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !404, file: !403, line: 46, baseType: !44, size: 32, align: 32, offset: 736)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_row", scope: !404, file: !403, line: 49, baseType: !5, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !404, file: !403, line: 51, baseType: !5, size: 64, align: 64, offset: 832)
!498 = !{!499, !500, !501, !502, !503}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !398, file: !352, line: 139, type: !401)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !398, file: !352, line: 139, type: !5)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !398, file: !352, line: 141, type: !5)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alt", scope: !398, file: !352, line: 141, type: !5)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "proto", scope: !398, file: !352, line: 142, type: !5)
!504 = !{!505, !513, !514}
!505 = !DIGlobalVariable(name: "PyId___adapt__", scope: !368, file: !352, line: 98, type: !506, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___adapt__)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !508)
!508 = !{!509, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !7, line: 141, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !507, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !507, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!513 = !DIGlobalVariable(name: "PyId___conform__", scope: !368, file: !352, line: 115, type: !506, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___conform__)
!514 = !DIGlobalVariable(name: "psyco_adapters", scope: !0, file: !352, line: 36, type: !5, isLocal: false, isDefinition: true, variable: %struct._object** @psyco_adapters)
!515 = !{i32 2, !"Dwarf Version", i32 4}
!516 = !{i32 2, !"Debug Info Version", i32 3}
!517 = !{i32 1, !"PIC Level", i32 2}
!518 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!519 = !{!520, !520, i64 0}
!520 = !{!"any pointer", !521, i64 0}
!521 = !{!"omnipotent char", !522, i64 0}
!522 = !{!"Simple C/C++ TBAA"}
!523 = !DIExpression()
!524 = !DILocation(line: 41, column: 40, scope: !351)
!525 = !DILocation(line: 44, column: 27, scope: !526)
!526 = distinct !DILexicalBlock(scope: !351, file: !352, line: 44, column: 9)
!527 = !DILocation(line: 44, column: 25, scope: !526)
!528 = !DILocation(line: 44, column: 41, scope: !526)
!529 = !DILocation(line: 44, column: 9, scope: !351)
!530 = !DILocation(line: 45, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !352, line: 44, column: 56)
!532 = !DILocation(line: 48, column: 33, scope: !351)
!533 = !DILocation(line: 48, column: 51, scope: !351)
!534 = !DILocation(line: 48, column: 12, scope: !351)
!535 = !DILocation(line: 48, column: 5, scope: !351)
!536 = !DILocation(line: 49, column: 1, scope: !351)
!537 = !DILocation(line: 55, column: 43, scope: !355)
!538 = !DILocation(line: 55, column: 59, scope: !355)
!539 = !DILocation(line: 55, column: 76, scope: !355)
!540 = !DILocation(line: 57, column: 5, scope: !355)
!541 = !DILocation(line: 57, column: 15, scope: !355)
!542 = !DILocation(line: 58, column: 5, scope: !355)
!543 = !DILocation(line: 58, column: 9, scope: !355)
!544 = !DILocation(line: 60, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !355, file: !352, line: 60, column: 9)
!546 = !DILocation(line: 60, column: 15, scope: !545)
!547 = !DILocation(line: 60, column: 9, scope: !355)
!548 = !DILocation(line: 60, column: 36, scope: !549)
!549 = !DILexicalBlockFile(scope: !545, file: !352, discriminator: 1)
!550 = !DILocation(line: 60, column: 30, scope: !545)
!551 = !DILocation(line: 62, column: 44, scope: !355)
!552 = !DILocation(line: 62, column: 33, scope: !355)
!553 = !DILocation(line: 62, column: 50, scope: !355)
!554 = !DILocation(line: 62, column: 11, scope: !355)
!555 = !DILocation(line: 62, column: 9, scope: !355)
!556 = !DILocation(line: 63, column: 10, scope: !557)
!557 = distinct !DILexicalBlock(scope: !355, file: !352, line: 63, column: 9)
!558 = !DILocation(line: 63, column: 9, scope: !355)
!559 = !DILocation(line: 64, column: 9, scope: !560)
!560 = distinct !DILexicalBlock(scope: !557, file: !352, line: 63, column: 15)
!561 = !DILocation(line: 67, column: 25, scope: !355)
!562 = !DILocation(line: 67, column: 41, scope: !355)
!563 = !DILocation(line: 67, column: 46, scope: !355)
!564 = !DILocation(line: 67, column: 10, scope: !355)
!565 = !DILocation(line: 67, column: 8, scope: !355)
!566 = !{!567, !567, i64 0}
!567 = !{!"int", !521, i64 0}
!568 = !DILocation(line: 68, column: 5, scope: !355)
!569 = !DILocation(line: 68, column: 10, scope: !570)
!570 = !DILexicalBlockFile(scope: !367, file: !352, discriminator: 1)
!571 = !DILocation(line: 68, column: 20, scope: !367)
!572 = !DILocation(line: 68, column: 50, scope: !367)
!573 = !DILocation(line: 68, column: 64, scope: !574)
!574 = distinct !DILexicalBlock(scope: !367, file: !352, line: 68, column: 61)
!575 = !DILocation(line: 68, column: 81, scope: !574)
!576 = !DILocation(line: 68, column: 61, scope: !574)
!577 = !{!578, !579, i64 0}
!578 = !{!"_object", !579, i64 0, !520, i64 8}
!579 = !{!"long", !521, i64 0}
!580 = !DILocation(line: 68, column: 91, scope: !574)
!581 = !DILocation(line: 68, column: 61, scope: !367)
!582 = !DILocation(line: 68, column: 61, scope: !583)
!583 = !DILexicalBlockFile(scope: !367, file: !352, discriminator: 2)
!584 = !DILocation(line: 68, column: 122, scope: !585)
!585 = !DILexicalBlockFile(scope: !574, file: !352, discriminator: 3)
!586 = !DILocation(line: 68, column: 140, scope: !574)
!587 = !{!578, !520, i64 8}
!588 = !DILocation(line: 68, column: 150, scope: !574)
!589 = !{!590, !520, i64 48}
!590 = !{!"_typeobject", !591, i64 0, !520, i64 24, !579, i64 32, !579, i64 40, !520, i64 48, !520, i64 56, !520, i64 64, !520, i64 72, !520, i64 80, !520, i64 88, !520, i64 96, !520, i64 104, !520, i64 112, !520, i64 120, !520, i64 128, !520, i64 136, !520, i64 144, !520, i64 152, !520, i64 160, !579, i64 168, !520, i64 176, !520, i64 184, !520, i64 192, !520, i64 200, !579, i64 208, !520, i64 216, !520, i64 224, !520, i64 232, !520, i64 240, !520, i64 248, !520, i64 256, !520, i64 264, !520, i64 272, !520, i64 280, !579, i64 288, !520, i64 296, !520, i64 304, !520, i64 312, !520, i64 320, !520, i64 328, !520, i64 336, !520, i64 344, !520, i64 352, !520, i64 360, !520, i64 368, !520, i64 376, !567, i64 384, !520, i64 392}
!591 = !{!"", !578, i64 0, !579, i64 16}
!592 = !DILocation(line: 68, column: 175, scope: !574)
!593 = !DILocation(line: 68, column: 106, scope: !574)
!594 = !DILocation(line: 68, column: 194, scope: !595)
!595 = !DILexicalBlockFile(scope: !355, file: !352, discriminator: 4)
!596 = !DILocation(line: 68, column: 194, scope: !367)
!597 = !DILocation(line: 68, column: 194, scope: !598)
!598 = !DILexicalBlockFile(scope: !367, file: !352, discriminator: 5)
!599 = !DILocation(line: 70, column: 12, scope: !355)
!600 = !DILocation(line: 70, column: 5, scope: !355)
!601 = !DILocation(line: 71, column: 1, scope: !355)
!602 = !DILocation(line: 76, column: 41, scope: !368)
!603 = !DILocation(line: 76, column: 56, scope: !368)
!604 = !DILocation(line: 76, column: 73, scope: !368)
!605 = !DILocation(line: 78, column: 5, scope: !368)
!606 = !DILocation(line: 78, column: 15, scope: !368)
!607 = !DILocation(line: 78, column: 25, scope: !368)
!608 = !DILocation(line: 85, column: 44, scope: !368)
!609 = !DILocation(line: 85, column: 49, scope: !368)
!610 = !DILocation(line: 85, column: 33, scope: !368)
!611 = !DILocation(line: 85, column: 58, scope: !368)
!612 = !DILocation(line: 85, column: 11, scope: !368)
!613 = !DILocation(line: 85, column: 9, scope: !368)
!614 = !DILocation(line: 86, column: 10, scope: !615)
!615 = distinct !DILexicalBlock(scope: !368, file: !352, line: 86, column: 9)
!616 = !DILocation(line: 86, column: 9, scope: !368)
!617 = !DILocation(line: 87, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !352, line: 86, column: 15)
!619 = !DILocation(line: 89, column: 30, scope: !368)
!620 = !DILocation(line: 89, column: 46, scope: !368)
!621 = !DILocation(line: 89, column: 15, scope: !368)
!622 = !DILocation(line: 89, column: 13, scope: !368)
!623 = !DILocation(line: 90, column: 5, scope: !368)
!624 = !DILocation(line: 90, column: 10, scope: !625)
!625 = !DILexicalBlockFile(scope: !376, file: !352, discriminator: 1)
!626 = !DILocation(line: 90, column: 20, scope: !376)
!627 = !DILocation(line: 90, column: 50, scope: !376)
!628 = !DILocation(line: 90, column: 64, scope: !629)
!629 = distinct !DILexicalBlock(scope: !376, file: !352, line: 90, column: 61)
!630 = !DILocation(line: 90, column: 81, scope: !629)
!631 = !DILocation(line: 90, column: 61, scope: !629)
!632 = !DILocation(line: 90, column: 91, scope: !629)
!633 = !DILocation(line: 90, column: 61, scope: !376)
!634 = !DILocation(line: 90, column: 61, scope: !635)
!635 = !DILexicalBlockFile(scope: !376, file: !352, discriminator: 2)
!636 = !DILocation(line: 90, column: 122, scope: !637)
!637 = !DILexicalBlockFile(scope: !629, file: !352, discriminator: 3)
!638 = !DILocation(line: 90, column: 140, scope: !629)
!639 = !DILocation(line: 90, column: 150, scope: !629)
!640 = !DILocation(line: 90, column: 175, scope: !629)
!641 = !DILocation(line: 90, column: 106, scope: !629)
!642 = !DILocation(line: 90, column: 194, scope: !643)
!643 = !DILexicalBlockFile(scope: !368, file: !352, discriminator: 4)
!644 = !DILocation(line: 90, column: 194, scope: !376)
!645 = !DILocation(line: 90, column: 194, scope: !646)
!646 = !DILexicalBlockFile(scope: !376, file: !352, discriminator: 5)
!647 = !DILocation(line: 91, column: 9, scope: !379)
!648 = !DILocation(line: 91, column: 9, scope: !368)
!649 = !DILocation(line: 92, column: 9, scope: !378)
!650 = !DILocation(line: 92, column: 19, scope: !378)
!651 = !DILocation(line: 92, column: 58, scope: !378)
!652 = !DILocation(line: 92, column: 67, scope: !378)
!653 = !DILocation(line: 92, column: 29, scope: !378)
!654 = !DILocation(line: 93, column: 16, scope: !378)
!655 = !DILocation(line: 93, column: 9, scope: !378)
!656 = !DILocation(line: 94, column: 5, scope: !379)
!657 = !DILocation(line: 97, column: 32, scope: !382)
!658 = !DILocation(line: 97, column: 9, scope: !382)
!659 = !DILocation(line: 97, column: 9, scope: !368)
!660 = !DILocation(line: 99, column: 9, scope: !381)
!661 = !DILocation(line: 99, column: 19, scope: !381)
!662 = !DILocation(line: 99, column: 52, scope: !381)
!663 = !DILocation(line: 99, column: 81, scope: !381)
!664 = !DILocation(line: 99, column: 29, scope: !381)
!665 = !DILocation(line: 101, column: 13, scope: !388)
!666 = !DILocation(line: 101, column: 13, scope: !381)
!667 = !DILocation(line: 102, column: 17, scope: !386)
!668 = !DILocation(line: 102, column: 25, scope: !386)
!669 = !DILocation(line: 102, column: 17, scope: !387)
!670 = !DILocation(line: 103, column: 24, scope: !671)
!671 = distinct !DILexicalBlock(scope: !386, file: !352, line: 102, column: 47)
!672 = !DILocation(line: 103, column: 17, scope: !671)
!673 = !DILocation(line: 105, column: 17, scope: !385)
!674 = !DILocation(line: 105, column: 22, scope: !675)
!675 = !DILexicalBlockFile(scope: !384, file: !352, discriminator: 1)
!676 = !DILocation(line: 105, column: 32, scope: !384)
!677 = !DILocation(line: 105, column: 62, scope: !384)
!678 = !DILocation(line: 105, column: 80, scope: !679)
!679 = distinct !DILexicalBlock(scope: !384, file: !352, line: 105, column: 77)
!680 = !DILocation(line: 105, column: 97, scope: !679)
!681 = !DILocation(line: 105, column: 77, scope: !679)
!682 = !DILocation(line: 105, column: 107, scope: !679)
!683 = !DILocation(line: 105, column: 77, scope: !384)
!684 = !DILocation(line: 105, column: 77, scope: !685)
!685 = !DILexicalBlockFile(scope: !384, file: !352, discriminator: 2)
!686 = !DILocation(line: 105, column: 138, scope: !687)
!687 = !DILexicalBlockFile(scope: !679, file: !352, discriminator: 3)
!688 = !DILocation(line: 105, column: 156, scope: !679)
!689 = !DILocation(line: 105, column: 166, scope: !679)
!690 = !DILocation(line: 105, column: 191, scope: !679)
!691 = !DILocation(line: 105, column: 122, scope: !679)
!692 = !DILocation(line: 105, column: 210, scope: !693)
!693 = !DILexicalBlockFile(scope: !385, file: !352, discriminator: 4)
!694 = !DILocation(line: 105, column: 210, scope: !384)
!695 = !DILocation(line: 105, column: 210, scope: !696)
!696 = !DILexicalBlockFile(scope: !384, file: !352, discriminator: 5)
!697 = !DILocation(line: 107, column: 9, scope: !387)
!698 = !DILocation(line: 109, column: 13, scope: !699)
!699 = distinct !DILexicalBlock(scope: !381, file: !352, line: 109, column: 13)
!700 = !DILocation(line: 109, column: 30, scope: !699)
!701 = !DILocation(line: 109, column: 57, scope: !702)
!702 = !DILexicalBlockFile(scope: !699, file: !352, discriminator: 1)
!703 = !DILocation(line: 109, column: 34, scope: !699)
!704 = !DILocation(line: 109, column: 13, scope: !381)
!705 = !DILocation(line: 110, column: 13, scope: !699)
!706 = !DILocation(line: 111, column: 5, scope: !382)
!707 = !DILocation(line: 111, column: 5, scope: !708)
!708 = !DILexicalBlockFile(scope: !382, file: !352, discriminator: 1)
!709 = !DILocation(line: 111, column: 5, scope: !381)
!710 = !DILocation(line: 114, column: 32, scope: !391)
!711 = !DILocation(line: 114, column: 9, scope: !391)
!712 = !DILocation(line: 114, column: 9, scope: !368)
!713 = !DILocation(line: 116, column: 9, scope: !390)
!714 = !DILocation(line: 116, column: 19, scope: !390)
!715 = !DILocation(line: 116, column: 52, scope: !390)
!716 = !DILocation(line: 116, column: 80, scope: !390)
!717 = !DILocation(line: 116, column: 29, scope: !390)
!718 = !DILocation(line: 118, column: 13, scope: !397)
!719 = !DILocation(line: 118, column: 13, scope: !390)
!720 = !DILocation(line: 119, column: 17, scope: !395)
!721 = !DILocation(line: 119, column: 25, scope: !395)
!722 = !DILocation(line: 119, column: 17, scope: !396)
!723 = !DILocation(line: 120, column: 24, scope: !724)
!724 = distinct !DILexicalBlock(scope: !395, file: !352, line: 119, column: 47)
!725 = !DILocation(line: 120, column: 17, scope: !724)
!726 = !DILocation(line: 122, column: 17, scope: !394)
!727 = !DILocation(line: 122, column: 22, scope: !728)
!728 = !DILexicalBlockFile(scope: !393, file: !352, discriminator: 1)
!729 = !DILocation(line: 122, column: 32, scope: !393)
!730 = !DILocation(line: 122, column: 62, scope: !393)
!731 = !DILocation(line: 122, column: 80, scope: !732)
!732 = distinct !DILexicalBlock(scope: !393, file: !352, line: 122, column: 77)
!733 = !DILocation(line: 122, column: 97, scope: !732)
!734 = !DILocation(line: 122, column: 77, scope: !732)
!735 = !DILocation(line: 122, column: 107, scope: !732)
!736 = !DILocation(line: 122, column: 77, scope: !393)
!737 = !DILocation(line: 122, column: 77, scope: !738)
!738 = !DILexicalBlockFile(scope: !393, file: !352, discriminator: 2)
!739 = !DILocation(line: 122, column: 138, scope: !740)
!740 = !DILexicalBlockFile(scope: !732, file: !352, discriminator: 3)
!741 = !DILocation(line: 122, column: 156, scope: !732)
!742 = !DILocation(line: 122, column: 166, scope: !732)
!743 = !DILocation(line: 122, column: 191, scope: !732)
!744 = !DILocation(line: 122, column: 122, scope: !732)
!745 = !DILocation(line: 122, column: 210, scope: !746)
!746 = !DILexicalBlockFile(scope: !394, file: !352, discriminator: 4)
!747 = !DILocation(line: 122, column: 210, scope: !393)
!748 = !DILocation(line: 122, column: 210, scope: !749)
!749 = !DILexicalBlockFile(scope: !393, file: !352, discriminator: 5)
!750 = !DILocation(line: 124, column: 9, scope: !396)
!751 = !DILocation(line: 126, column: 13, scope: !752)
!752 = distinct !DILexicalBlock(scope: !390, file: !352, line: 126, column: 13)
!753 = !DILocation(line: 126, column: 30, scope: !752)
!754 = !DILocation(line: 126, column: 57, scope: !755)
!755 = !DILexicalBlockFile(scope: !752, file: !352, discriminator: 1)
!756 = !DILocation(line: 126, column: 34, scope: !752)
!757 = !DILocation(line: 126, column: 13, scope: !390)
!758 = !DILocation(line: 127, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !752, file: !352, line: 126, column: 75)
!760 = !DILocation(line: 129, column: 5, scope: !391)
!761 = !DILocation(line: 129, column: 5, scope: !762)
!762 = !DILexicalBlockFile(scope: !391, file: !352, discriminator: 1)
!763 = !DILocation(line: 129, column: 5, scope: !390)
!764 = !DILocation(line: 132, column: 21, scope: !368)
!765 = !DILocation(line: 132, column: 5, scope: !368)
!766 = !DILocation(line: 133, column: 5, scope: !368)
!767 = !DILocation(line: 134, column: 1, scope: !368)
!768 = !DILocation(line: 139, column: 33, scope: !398)
!769 = !DILocation(line: 139, column: 49, scope: !398)
!770 = !DILocation(line: 141, column: 5, scope: !398)
!771 = !DILocation(line: 141, column: 15, scope: !398)
!772 = !DILocation(line: 141, column: 21, scope: !398)
!773 = !DILocation(line: 142, column: 5, scope: !398)
!774 = !DILocation(line: 142, column: 15, scope: !398)
!775 = !DILocation(line: 144, column: 27, scope: !776)
!776 = distinct !DILexicalBlock(scope: !398, file: !352, line: 144, column: 9)
!777 = !DILocation(line: 144, column: 10, scope: !776)
!778 = !DILocation(line: 144, column: 9, scope: !398)
!779 = !DILocation(line: 144, column: 62, scope: !780)
!780 = !DILexicalBlockFile(scope: !776, file: !352, discriminator: 1)
!781 = !DILocation(line: 144, column: 62, scope: !776)
!782 = !DILocation(line: 145, column: 42, scope: !398)
!783 = !DILocation(line: 145, column: 47, scope: !398)
!784 = !DILocation(line: 145, column: 54, scope: !398)
!785 = !DILocation(line: 145, column: 12, scope: !398)
!786 = !DILocation(line: 145, column: 5, scope: !398)
!787 = !DILocation(line: 146, column: 1, scope: !398)
