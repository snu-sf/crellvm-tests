; ModuleID = 'irs-onlybc/cache.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }

@pysqlite_NodeType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct._pysqlite_Node*)* @pysqlite_node_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"O|i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%S <- %S -> %S\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"sqlite3Node\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sqlite3.Cache\00", align 1
@cache_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_get to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_display to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@pysqlite_CacheType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.pysqlite_Cache*)* @pysqlite_cache_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @cache_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.pysqlite_Cache*, %struct._object*, %struct._object*)* @pysqlite_cache_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Gets an entry from the cache or calls the factory function to produce one.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"For debugging only.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._pysqlite_Node* @pysqlite_new_node(%struct._object* %key, %struct._object* %data) #0 {
entry:
  %retval = alloca %struct._pysqlite_Node*, align 8
  %key.addr = alloca %struct._object*, align 8
  %data.addr = alloca %struct._object*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %key, %struct._object** %key.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %key.addr, metadata !361, metadata !466), !dbg !467
  store %struct._object* %data, %struct._object** %data.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %data.addr, metadata !362, metadata !466), !dbg !468
  %0 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !469
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !469
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %node, metadata !363, metadata !466), !dbg !470
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_NodeType, i32 0, i32 36), align 8, !dbg !471, !tbaa !472
  %call = call %struct._object* %1(%struct._typeobject* @pysqlite_NodeType, i64 0), !dbg !478
  %2 = bitcast %struct._object* %call to %struct._pysqlite_Node*, !dbg !479
  store %struct._pysqlite_Node* %2, %struct._pysqlite_Node** %node, align 8, !dbg !480, !tbaa !462
  %3 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !481, !tbaa !462
  %tobool = icmp ne %struct._pysqlite_Node* %3, null, !dbg !481
  br i1 %tobool, label %if.end, label %if.then, !dbg !483

if.then:                                          ; preds = %entry
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %retval, !dbg !484
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !484

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !486, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !487
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !488, !tbaa !489
  %inc = add i64 %5, 1, !dbg !488
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !488, !tbaa !489
  %6 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !490, !tbaa !462
  %7 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !491, !tbaa !462
  %key1 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %7, i32 0, i32 1, !dbg !492
  store %struct._object* %6, %struct._object** %key1, align 8, !dbg !493, !tbaa !494
  %8 = load %struct._object*, %struct._object** %data.addr, align 8, !dbg !496, !tbaa !462
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !497
  %9 = load i64, i64* %ob_refcnt2, align 8, !dbg !498, !tbaa !489
  %inc3 = add i64 %9, 1, !dbg !498
  store i64 %inc3, i64* %ob_refcnt2, align 8, !dbg !498, !tbaa !489
  %10 = load %struct._object*, %struct._object** %data.addr, align 8, !dbg !499, !tbaa !462
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !500, !tbaa !462
  %data4 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %11, i32 0, i32 2, !dbg !501
  store %struct._object* %10, %struct._object** %data4, align 8, !dbg !502, !tbaa !503
  %12 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !504, !tbaa !462
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %12, i32 0, i32 4, !dbg !505
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %prev, align 8, !dbg !506, !tbaa !507
  %13 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !508, !tbaa !462
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %13, i32 0, i32 5, !dbg !509
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %next, align 8, !dbg !510, !tbaa !511
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !512, !tbaa !462
  store %struct._pysqlite_Node* %14, %struct._pysqlite_Node** %retval, !dbg !513
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !513

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !514
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !514
  %16 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %retval, !dbg !514
  ret %struct._pysqlite_Node* %16, !dbg !514
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @pysqlite_node_dealloc(%struct._pysqlite_Node* %self) #0 {
entry:
  %self.addr = alloca %struct._pysqlite_Node*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp2 = alloca %struct._object*, align 8
  store %struct._pysqlite_Node* %self, %struct._pysqlite_Node** %self.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %self.addr, metadata !368, metadata !466), !dbg !515
  br label %do.body, !dbg !516

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !517
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !517
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !369, metadata !466), !dbg !519
  %1 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8, !dbg !520, !tbaa !462
  %key = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %1, i32 0, i32 1, !dbg !521
  %2 = load %struct._object*, %struct._object** %key, align 8, !dbg !521, !tbaa !494
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8, !dbg !519, !tbaa !462
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !522, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !524
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !525, !tbaa !489
  %dec = add i64 %4, -1, !dbg !525
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !525, !tbaa !489
  %cmp = icmp ne i64 %dec, 0, !dbg !526
  br i1 %cmp, label %if.then, label %if.else, !dbg !527

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !528

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !530, !tbaa !462
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !532
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !532, !tbaa !533
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4, !dbg !534
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !534, !tbaa !535
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !536, !tbaa !462
  call void %7(%struct._object* %8), !dbg !537
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !538
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !538
  br label %do.end, !dbg !540

do.end:                                           ; preds = %if.end
  br label %do.body.1, !dbg !541

do.body.1:                                        ; preds = %do.end
  %10 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !542
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !542
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp2, metadata !371, metadata !466), !dbg !544
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8, !dbg !545, !tbaa !462
  %data = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %11, i32 0, i32 2, !dbg !546
  %12 = load %struct._object*, %struct._object** %data, align 8, !dbg !546, !tbaa !503
  store %struct._object* %12, %struct._object** %_py_decref_tmp2, align 8, !dbg !544, !tbaa !462
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !547, !tbaa !462
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !549
  %14 = load i64, i64* %ob_refcnt3, align 8, !dbg !550, !tbaa !489
  %dec4 = add i64 %14, -1, !dbg !550
  store i64 %dec4, i64* %ob_refcnt3, align 8, !dbg !550, !tbaa !489
  %cmp5 = icmp ne i64 %dec4, 0, !dbg !551
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !552

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10, !dbg !553

if.else.7:                                        ; preds = %do.body.1
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !555, !tbaa !462
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !557
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !557, !tbaa !533
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !558
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8, !dbg !558, !tbaa !535
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8, !dbg !559, !tbaa !462
  call void %17(%struct._object* %18), !dbg !560
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  %19 = bitcast %struct._object** %_py_decref_tmp2 to i8*, !dbg !561
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !561
  br label %do.end.11, !dbg !562

do.end.11:                                        ; preds = %if.end.10
  %20 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8, !dbg !563, !tbaa !462
  %21 = bitcast %struct._pysqlite_Node* %20 to %struct._object*, !dbg !564
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !565
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !565, !tbaa !533
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 38, !dbg !566
  %23 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !566, !tbaa !567
  %24 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8, !dbg !568, !tbaa !462
  %25 = bitcast %struct._pysqlite_Node* %24 to %struct._object*, !dbg !569
  %26 = bitcast %struct._object* %25 to i8*, !dbg !569
  call void %23(i8* %26), !dbg !570
  ret void, !dbg !571
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cache_init(%struct.pysqlite_Cache* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cache** %self.addr, metadata !388, metadata !466), !dbg !572
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !389, metadata !466), !dbg !573
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !390, metadata !466), !dbg !574
  %0 = bitcast %struct._object** %factory to i8*, !dbg !575
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !575
  call void @llvm.dbg.declare(metadata %struct._object** %factory, metadata !391, metadata !466), !dbg !576
  %1 = bitcast i32* %size to i8*, !dbg !577
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !577
  call void @llvm.dbg.declare(metadata i32* %size, metadata !392, metadata !466), !dbg !578
  store i32 10, i32* %size, align 4, !dbg !578, !tbaa !579
  %2 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !580, !tbaa !462
  %factory1 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %2, i32 0, i32 3, !dbg !581
  store %struct._object* null, %struct._object** %factory1, align 8, !dbg !582, !tbaa !583
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !585, !tbaa !462
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct._object** %factory, i32* %size), !dbg !587
  %tobool = icmp ne i32 %call, 0, !dbg !587
  br i1 %tobool, label %if.end, label %if.then, !dbg !588

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !589
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !589

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %size, align 4, !dbg !591, !tbaa !579
  %cmp = icmp slt i32 %4, 5, !dbg !593
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !594

if.then.2:                                        ; preds = %if.end
  store i32 5, i32* %size, align 4, !dbg !595, !tbaa !579
  br label %if.end.3, !dbg !597

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %size, align 4, !dbg !598, !tbaa !579
  %6 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !599, !tbaa !462
  %size4 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %6, i32 0, i32 1, !dbg !600
  store i32 %5, i32* %size4, align 4, !dbg !601, !tbaa !602
  %7 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !603, !tbaa !462
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %7, i32 0, i32 4, !dbg !604
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %first, align 8, !dbg !605, !tbaa !606
  %8 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !607, !tbaa !462
  %last = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %8, i32 0, i32 5, !dbg !608
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %last, align 8, !dbg !609, !tbaa !610
  %call5 = call %struct._object* @PyDict_New(), !dbg !611
  %9 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !612, !tbaa !462
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %9, i32 0, i32 2, !dbg !613
  store %struct._object* %call5, %struct._object** %mapping, align 8, !dbg !614, !tbaa !615
  %10 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !616, !tbaa !462
  %mapping6 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %10, i32 0, i32 2, !dbg !618
  %11 = load %struct._object*, %struct._object** %mapping6, align 8, !dbg !618, !tbaa !615
  %tobool7 = icmp ne %struct._object* %11, null, !dbg !616
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !619

if.then.8:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval, !dbg !620
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !620

if.end.9:                                         ; preds = %if.end.3
  %12 = load %struct._object*, %struct._object** %factory, align 8, !dbg !622, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !623
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !624, !tbaa !489
  %inc = add i64 %13, 1, !dbg !624
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !624, !tbaa !489
  %14 = load %struct._object*, %struct._object** %factory, align 8, !dbg !625, !tbaa !462
  %15 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !626, !tbaa !462
  %factory10 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %15, i32 0, i32 3, !dbg !627
  store %struct._object* %14, %struct._object** %factory10, align 8, !dbg !628, !tbaa !583
  %16 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !629, !tbaa !462
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %16, i32 0, i32 6, !dbg !630
  store i32 1, i32* %decref_factory, align 4, !dbg !631, !tbaa !632
  store i32 0, i32* %retval, !dbg !633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !633

cleanup:                                          ; preds = %if.end.9, %if.then.8, %if.then
  %17 = bitcast i32* %size to i8*, !dbg !634
  call void @llvm.lifetime.end(i64 4, i8* %17) #2, !dbg !634
  %18 = bitcast %struct._object** %factory to i8*, !dbg !634
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !634
  %19 = load i32, i32* %retval, !dbg !634
  ret i32 %19, !dbg !634
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyDict_New() #3

; Function Attrs: nounwind uwtable
define void @pysqlite_cache_dealloc(%struct.pysqlite_Cache* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %delete_node = alloca %struct._pysqlite_Node*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cache** %self.addr, metadata !397, metadata !466), !dbg !635
  %0 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !636
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !636
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %node, metadata !398, metadata !466), !dbg !637
  %1 = bitcast %struct._pysqlite_Node** %delete_node to i8*, !dbg !638
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !638
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %delete_node, metadata !399, metadata !466), !dbg !639
  %2 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !640, !tbaa !462
  %factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %2, i32 0, i32 3, !dbg !642
  %3 = load %struct._object*, %struct._object** %factory, align 8, !dbg !642, !tbaa !583
  %tobool = icmp ne %struct._object* %3, null, !dbg !640
  br i1 %tobool, label %if.end, label %if.then, !dbg !643

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !644

if.end:                                           ; preds = %entry
  %4 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !646, !tbaa !462
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %4, i32 0, i32 4, !dbg !647
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8, !dbg !647, !tbaa !606
  store %struct._pysqlite_Node* %5, %struct._pysqlite_Node** %node, align 8, !dbg !648, !tbaa !462
  br label %while.cond, !dbg !649

while.cond:                                       ; preds = %do.end, %if.end
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !650, !tbaa !462
  %tobool1 = icmp ne %struct._pysqlite_Node* %6, null, !dbg !649
  br i1 %tobool1, label %while.body, label %while.end, !dbg !649

while.body:                                       ; preds = %while.cond
  %7 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !653, !tbaa !462
  store %struct._pysqlite_Node* %7, %struct._pysqlite_Node** %delete_node, align 8, !dbg !654, !tbaa !462
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !655, !tbaa !462
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %8, i32 0, i32 5, !dbg !656
  %9 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8, !dbg !656, !tbaa !511
  store %struct._pysqlite_Node* %9, %struct._pysqlite_Node** %node, align 8, !dbg !657, !tbaa !462
  br label %do.body, !dbg !658

do.body:                                          ; preds = %while.body
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !659
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !400, metadata !466), !dbg !661
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %delete_node, align 8, !dbg !662, !tbaa !462
  %12 = bitcast %struct._pysqlite_Node* %11 to %struct._object*, !dbg !663
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !661, !tbaa !462
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !664, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !666
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !667, !tbaa !489
  %dec = add i64 %14, -1, !dbg !667
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !667, !tbaa !489
  %cmp = icmp ne i64 %dec, 0, !dbg !668
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !669

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !670

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !672, !tbaa !462
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !674
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !674, !tbaa !533
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !675
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !675, !tbaa !535
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !676, !tbaa !462
  call void %17(%struct._object* %18), !dbg !677
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !678
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !678
  br label %do.cond, !dbg !680

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !681

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !649

while.end:                                        ; preds = %while.cond
  %20 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !683, !tbaa !462
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %20, i32 0, i32 6, !dbg !684
  %21 = load i32, i32* %decref_factory, align 4, !dbg !684, !tbaa !632
  %tobool4 = icmp ne i32 %21, 0, !dbg !683
  br i1 %tobool4, label %if.then.5, label %if.end.19, !dbg !685

if.then.5:                                        ; preds = %while.end
  br label %do.body.6, !dbg !686

do.body.6:                                        ; preds = %if.then.5
  %22 = bitcast %struct._object** %_py_decref_tmp7 to i8*, !dbg !687
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !687
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp7, metadata !403, metadata !466), !dbg !689
  %23 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !690, !tbaa !462
  %factory8 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %23, i32 0, i32 3, !dbg !691
  %24 = load %struct._object*, %struct._object** %factory8, align 8, !dbg !691, !tbaa !583
  store %struct._object* %24, %struct._object** %_py_decref_tmp7, align 8, !dbg !689, !tbaa !462
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8, !dbg !692, !tbaa !462
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !694
  %26 = load i64, i64* %ob_refcnt9, align 8, !dbg !695, !tbaa !489
  %dec10 = add i64 %26, -1, !dbg !695
  store i64 %dec10, i64* %ob_refcnt9, align 8, !dbg !695, !tbaa !489
  %cmp11 = icmp ne i64 %dec10, 0, !dbg !696
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !697

if.then.12:                                       ; preds = %do.body.6
  br label %if.end.16, !dbg !698

if.else.13:                                       ; preds = %do.body.6
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8, !dbg !700, !tbaa !462
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !702
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !702, !tbaa !533
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !703
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8, !dbg !703, !tbaa !535
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8, !dbg !704, !tbaa !462
  call void %29(%struct._object* %30), !dbg !705
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  %31 = bitcast %struct._object** %_py_decref_tmp7 to i8*, !dbg !706
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !706
  br label %do.cond.17, !dbg !708

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18, !dbg !709

do.end.18:                                        ; preds = %do.cond.17
  br label %if.end.19, !dbg !711

if.end.19:                                        ; preds = %do.end.18, %while.end
  br label %do.body.20, !dbg !712

do.body.20:                                       ; preds = %if.end.19
  %32 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !713
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !713
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !407, metadata !466), !dbg !715
  %33 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !716, !tbaa !462
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %33, i32 0, i32 2, !dbg !717
  %34 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !717, !tbaa !615
  store %struct._object* %34, %struct._object** %_py_decref_tmp21, align 8, !dbg !715, !tbaa !462
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !718, !tbaa !462
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !720
  %36 = load i64, i64* %ob_refcnt22, align 8, !dbg !721, !tbaa !489
  %dec23 = add i64 %36, -1, !dbg !721
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !721, !tbaa !489
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !722
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !723

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !724

if.else.26:                                       ; preds = %do.body.20
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !726, !tbaa !462
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !728
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !728, !tbaa !533
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !729
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !729, !tbaa !535
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !730, !tbaa !462
  call void %39(%struct._object* %40), !dbg !731
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %41 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !732
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !732
  br label %do.cond.30, !dbg !734

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !735

do.end.31:                                        ; preds = %do.cond.30
  %42 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !737, !tbaa !462
  %43 = bitcast %struct.pysqlite_Cache* %42 to %struct._object*, !dbg !738
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !739
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !739, !tbaa !533
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 38, !dbg !740
  %45 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !740, !tbaa !567
  %46 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !741, !tbaa !462
  %47 = bitcast %struct.pysqlite_Cache* %46 to %struct._object*, !dbg !742
  %48 = bitcast %struct._object* %47 to i8*, !dbg !742
  call void %45(i8* %48), !dbg !743
  store i32 0, i32* %cleanup.dest.slot, !dbg !744
  br label %cleanup, !dbg !744

cleanup:                                          ; preds = %do.end.31, %if.then
  %49 = bitcast %struct._pysqlite_Node** %delete_node to i8*, !dbg !745
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !745
  %50 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !745
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !745
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !744

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %ptr = alloca %struct._pysqlite_Node*, align 8
  %data = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cache** %self.addr, metadata !413, metadata !466), !dbg !746
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !414, metadata !466), !dbg !747
  %0 = bitcast %struct._object** %key to i8*, !dbg !748
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !748
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !415, metadata !466), !dbg !749
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !750, !tbaa !462
  store %struct._object* %1, %struct._object** %key, align 8, !dbg !749, !tbaa !462
  %2 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !751
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !751
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %node, metadata !416, metadata !466), !dbg !752
  %3 = bitcast %struct._pysqlite_Node** %ptr to i8*, !dbg !753
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !753
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %ptr, metadata !417, metadata !466), !dbg !754
  %4 = bitcast %struct._object** %data to i8*, !dbg !755
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !755
  call void @llvm.dbg.declare(metadata %struct._object** %data, metadata !418, metadata !466), !dbg !756
  %5 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !757, !tbaa !462
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %5, i32 0, i32 2, !dbg !758
  %6 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !758, !tbaa !615
  %7 = load %struct._object*, %struct._object** %key, align 8, !dbg !759, !tbaa !462
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %7), !dbg !760
  %8 = bitcast %struct._object* %call to %struct._pysqlite_Node*, !dbg !761
  store %struct._pysqlite_Node* %8, %struct._pysqlite_Node** %node, align 8, !dbg !762, !tbaa !462
  %9 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !763, !tbaa !462
  %tobool = icmp ne %struct._pysqlite_Node* %9, null, !dbg !763
  br i1 %tobool, label %if.then, label %if.else.48, !dbg !764

if.then:                                          ; preds = %entry
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !765, !tbaa !462
  %count = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 3, !dbg !768
  %11 = load i64, i64* %count, align 8, !dbg !768, !tbaa !769
  %cmp = icmp slt i64 %11, 9223372036854775807, !dbg !770
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !771

if.then.1:                                        ; preds = %if.then
  %12 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !772, !tbaa !462
  %count2 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %12, i32 0, i32 3, !dbg !774
  %13 = load i64, i64* %count2, align 8, !dbg !775, !tbaa !769
  %inc = add i64 %13, 1, !dbg !775
  store i64 %inc, i64* %count2, align 8, !dbg !775, !tbaa !769
  br label %if.end, !dbg !776

if.end:                                           ; preds = %if.then.1, %if.then
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !777, !tbaa !462
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %14, i32 0, i32 4, !dbg !779
  %15 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev, align 8, !dbg !779, !tbaa !507
  %tobool3 = icmp ne %struct._pysqlite_Node* %15, null, !dbg !777
  br i1 %tobool3, label %land.lhs.true, label %if.end.47, !dbg !780

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !781, !tbaa !462
  %count4 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %16, i32 0, i32 3, !dbg !783
  %17 = load i64, i64* %count4, align 8, !dbg !783, !tbaa !769
  %18 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !784, !tbaa !462
  %prev5 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %18, i32 0, i32 4, !dbg !785
  %19 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev5, align 8, !dbg !785, !tbaa !507
  %count6 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %19, i32 0, i32 3, !dbg !786
  %20 = load i64, i64* %count6, align 8, !dbg !786, !tbaa !769
  %cmp7 = icmp sgt i64 %17, %20, !dbg !787
  br i1 %cmp7, label %if.then.8, label %if.end.47, !dbg !788

if.then.8:                                        ; preds = %land.lhs.true
  %21 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !789, !tbaa !462
  %prev9 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %21, i32 0, i32 4, !dbg !791
  %22 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev9, align 8, !dbg !791, !tbaa !507
  store %struct._pysqlite_Node* %22, %struct._pysqlite_Node** %ptr, align 8, !dbg !792, !tbaa !462
  br label %while.cond, !dbg !793

while.cond:                                       ; preds = %while.body, %if.then.8
  %23 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !794, !tbaa !462
  %prev10 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %23, i32 0, i32 4, !dbg !797
  %24 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev10, align 8, !dbg !797, !tbaa !507
  %tobool11 = icmp ne %struct._pysqlite_Node* %24, null, !dbg !798
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !799

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !800, !tbaa !462
  %count12 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %25, i32 0, i32 3, !dbg !802
  %26 = load i64, i64* %count12, align 8, !dbg !802, !tbaa !769
  %27 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !803, !tbaa !462
  %prev13 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %27, i32 0, i32 4, !dbg !804
  %28 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev13, align 8, !dbg !804, !tbaa !507
  %count14 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %28, i32 0, i32 3, !dbg !805
  %29 = load i64, i64* %count14, align 8, !dbg !805, !tbaa !769
  %cmp15 = icmp sgt i64 %26, %29, !dbg !806
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %30, label %while.body, label %while.end, !dbg !807

while.body:                                       ; preds = %land.end
  %31 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !809, !tbaa !462
  %prev16 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %31, i32 0, i32 4, !dbg !811
  %32 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev16, align 8, !dbg !811, !tbaa !507
  store %struct._pysqlite_Node* %32, %struct._pysqlite_Node** %ptr, align 8, !dbg !812, !tbaa !462
  br label %while.cond, !dbg !793

while.end:                                        ; preds = %land.end
  %33 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !813, !tbaa !462
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %33, i32 0, i32 5, !dbg !815
  %34 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8, !dbg !815, !tbaa !511
  %tobool17 = icmp ne %struct._pysqlite_Node* %34, null, !dbg !813
  br i1 %tobool17, label %if.then.18, label %if.else, !dbg !816

if.then.18:                                       ; preds = %while.end
  %35 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !817, !tbaa !462
  %prev19 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %35, i32 0, i32 4, !dbg !819
  %36 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev19, align 8, !dbg !819, !tbaa !507
  %37 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !820, !tbaa !462
  %next20 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %37, i32 0, i32 5, !dbg !821
  %38 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next20, align 8, !dbg !821, !tbaa !511
  %prev21 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %38, i32 0, i32 4, !dbg !822
  store %struct._pysqlite_Node* %36, %struct._pysqlite_Node** %prev21, align 8, !dbg !823, !tbaa !507
  br label %if.end.23, !dbg !824

if.else:                                          ; preds = %while.end
  %39 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !825, !tbaa !462
  %prev22 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %39, i32 0, i32 4, !dbg !827
  %40 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev22, align 8, !dbg !827, !tbaa !507
  %41 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !828, !tbaa !462
  %last = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %41, i32 0, i32 5, !dbg !829
  store %struct._pysqlite_Node* %40, %struct._pysqlite_Node** %last, align 8, !dbg !830, !tbaa !610
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.18
  %42 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !831, !tbaa !462
  %prev24 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %42, i32 0, i32 4, !dbg !833
  %43 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev24, align 8, !dbg !833, !tbaa !507
  %tobool25 = icmp ne %struct._pysqlite_Node* %43, null, !dbg !831
  br i1 %tobool25, label %if.then.26, label %if.end.30, !dbg !834

if.then.26:                                       ; preds = %if.end.23
  %44 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !835, !tbaa !462
  %next27 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %44, i32 0, i32 5, !dbg !837
  %45 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next27, align 8, !dbg !837, !tbaa !511
  %46 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !838, !tbaa !462
  %prev28 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %46, i32 0, i32 4, !dbg !839
  %47 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev28, align 8, !dbg !839, !tbaa !507
  %next29 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %47, i32 0, i32 5, !dbg !840
  store %struct._pysqlite_Node* %45, %struct._pysqlite_Node** %next29, align 8, !dbg !841, !tbaa !511
  br label %if.end.30, !dbg !842

if.end.30:                                        ; preds = %if.then.26, %if.end.23
  %48 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !843, !tbaa !462
  %prev31 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %48, i32 0, i32 4, !dbg !845
  %49 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev31, align 8, !dbg !845, !tbaa !507
  %tobool32 = icmp ne %struct._pysqlite_Node* %49, null, !dbg !843
  br i1 %tobool32, label %if.then.33, label %if.else.36, !dbg !846

if.then.33:                                       ; preds = %if.end.30
  %50 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !847, !tbaa !462
  %51 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !849, !tbaa !462
  %prev34 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %51, i32 0, i32 4, !dbg !850
  %52 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev34, align 8, !dbg !850, !tbaa !507
  %next35 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %52, i32 0, i32 5, !dbg !851
  store %struct._pysqlite_Node* %50, %struct._pysqlite_Node** %next35, align 8, !dbg !852, !tbaa !511
  br label %if.end.37, !dbg !853

if.else.36:                                       ; preds = %if.end.30
  %53 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !854, !tbaa !462
  %54 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !856, !tbaa !462
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %54, i32 0, i32 4, !dbg !857
  store %struct._pysqlite_Node* %53, %struct._pysqlite_Node** %first, align 8, !dbg !858, !tbaa !606
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.33
  %55 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !859, !tbaa !462
  %56 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !860, !tbaa !462
  %next38 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %56, i32 0, i32 5, !dbg !861
  store %struct._pysqlite_Node* %55, %struct._pysqlite_Node** %next38, align 8, !dbg !862, !tbaa !511
  %57 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !863, !tbaa !462
  %prev39 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %57, i32 0, i32 4, !dbg !864
  %58 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev39, align 8, !dbg !864, !tbaa !507
  %59 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !865, !tbaa !462
  %prev40 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %59, i32 0, i32 4, !dbg !866
  store %struct._pysqlite_Node* %58, %struct._pysqlite_Node** %prev40, align 8, !dbg !867, !tbaa !507
  %60 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !868, !tbaa !462
  %prev41 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %60, i32 0, i32 4, !dbg !870
  %61 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev41, align 8, !dbg !870, !tbaa !507
  %tobool42 = icmp ne %struct._pysqlite_Node* %61, null, !dbg !868
  br i1 %tobool42, label %if.end.45, label %if.then.43, !dbg !871

if.then.43:                                       ; preds = %if.end.37
  %62 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !872, !tbaa !462
  %63 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !874, !tbaa !462
  %first44 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %63, i32 0, i32 4, !dbg !875
  store %struct._pysqlite_Node* %62, %struct._pysqlite_Node** %first44, align 8, !dbg !876, !tbaa !606
  br label %if.end.45, !dbg !877

if.end.45:                                        ; preds = %if.then.43, %if.end.37
  %64 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !878, !tbaa !462
  %65 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !879, !tbaa !462
  %prev46 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %65, i32 0, i32 4, !dbg !880
  store %struct._pysqlite_Node* %64, %struct._pysqlite_Node** %prev46, align 8, !dbg !881, !tbaa !507
  br label %if.end.47, !dbg !882

if.end.47:                                        ; preds = %if.end.45, %land.lhs.true, %if.end
  br label %if.end.133, !dbg !883

if.else.48:                                       ; preds = %entry
  %66 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !884, !tbaa !462
  %mapping49 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %66, i32 0, i32 2, !dbg !885
  %67 = load %struct._object*, %struct._object** %mapping49, align 8, !dbg !885, !tbaa !615
  %call50 = call i64 @PyDict_Size(%struct._object* %67), !dbg !886
  %68 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !887, !tbaa !462
  %size = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %68, i32 0, i32 1, !dbg !888
  %69 = load i32, i32* %size, align 4, !dbg !888, !tbaa !602
  %conv = sext i32 %69 to i64, !dbg !887
  %cmp51 = icmp eq i64 %call50, %conv, !dbg !889
  br i1 %cmp51, label %if.then.53, label %if.end.81, !dbg !890

if.then.53:                                       ; preds = %if.else.48
  %70 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !891, !tbaa !462
  %last54 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %70, i32 0, i32 5, !dbg !892
  %71 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last54, align 8, !dbg !892, !tbaa !610
  %tobool55 = icmp ne %struct._pysqlite_Node* %71, null, !dbg !891
  br i1 %tobool55, label %if.then.56, label %if.end.80, !dbg !893

if.then.56:                                       ; preds = %if.then.53
  %72 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !894, !tbaa !462
  %last57 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %72, i32 0, i32 5, !dbg !895
  %73 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last57, align 8, !dbg !895, !tbaa !610
  store %struct._pysqlite_Node* %73, %struct._pysqlite_Node** %node, align 8, !dbg !896, !tbaa !462
  %74 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !897, !tbaa !462
  %mapping58 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %74, i32 0, i32 2, !dbg !899
  %75 = load %struct._object*, %struct._object** %mapping58, align 8, !dbg !899, !tbaa !615
  %76 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !900, !tbaa !462
  %last59 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %76, i32 0, i32 5, !dbg !901
  %77 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last59, align 8, !dbg !901, !tbaa !610
  %key60 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %77, i32 0, i32 1, !dbg !902
  %78 = load %struct._object*, %struct._object** %key60, align 8, !dbg !902, !tbaa !494
  %call61 = call i32 @PyDict_DelItem(%struct._object* %75, %struct._object* %78), !dbg !903
  %cmp62 = icmp ne i32 %call61, 0, !dbg !904
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !905

if.then.64:                                       ; preds = %if.then.56
  store %struct._object* null, %struct._object** %retval, !dbg !906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !906

if.end.65:                                        ; preds = %if.then.56
  %79 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !908, !tbaa !462
  %prev66 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %79, i32 0, i32 4, !dbg !910
  %80 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev66, align 8, !dbg !910, !tbaa !507
  %tobool67 = icmp ne %struct._pysqlite_Node* %80, null, !dbg !908
  br i1 %tobool67, label %if.then.68, label %if.end.71, !dbg !911

if.then.68:                                       ; preds = %if.end.65
  %81 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !912, !tbaa !462
  %prev69 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %81, i32 0, i32 4, !dbg !914
  %82 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev69, align 8, !dbg !914, !tbaa !507
  %next70 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %82, i32 0, i32 5, !dbg !915
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %next70, align 8, !dbg !916, !tbaa !511
  br label %if.end.71, !dbg !917

if.end.71:                                        ; preds = %if.then.68, %if.end.65
  %83 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !918, !tbaa !462
  %prev72 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %83, i32 0, i32 4, !dbg !919
  %84 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev72, align 8, !dbg !919, !tbaa !507
  %85 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !920, !tbaa !462
  %last73 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %85, i32 0, i32 5, !dbg !921
  store %struct._pysqlite_Node* %84, %struct._pysqlite_Node** %last73, align 8, !dbg !922, !tbaa !610
  %86 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !923, !tbaa !462
  %prev74 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %86, i32 0, i32 4, !dbg !924
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %prev74, align 8, !dbg !925, !tbaa !507
  br label %do.body, !dbg !926

do.body:                                          ; preds = %if.end.71
  %87 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !927
  call void @llvm.lifetime.start(i64 8, i8* %87) #2, !dbg !927
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !419, metadata !466), !dbg !929
  %88 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !930, !tbaa !462
  %89 = bitcast %struct._pysqlite_Node* %88 to %struct._object*, !dbg !931
  store %struct._object* %89, %struct._object** %_py_decref_tmp, align 8, !dbg !929, !tbaa !462
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !932, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0, !dbg !934
  %91 = load i64, i64* %ob_refcnt, align 8, !dbg !935, !tbaa !489
  %dec = add i64 %91, -1, !dbg !935
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !935, !tbaa !489
  %cmp75 = icmp ne i64 %dec, 0, !dbg !936
  br i1 %cmp75, label %if.then.77, label %if.else.78, !dbg !937

if.then.77:                                       ; preds = %do.body
  br label %if.end.79, !dbg !938

if.else.78:                                       ; preds = %do.body
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !940, !tbaa !462
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1, !dbg !942
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !942, !tbaa !533
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4, !dbg !943
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !943, !tbaa !535
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !944, !tbaa !462
  call void %94(%struct._object* %95), !dbg !945
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  %96 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !946
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !946
  br label %do.cond, !dbg !948

do.cond:                                          ; preds = %if.end.79
  br label %do.end, !dbg !949

do.end:                                           ; preds = %do.cond
  br label %if.end.80, !dbg !951

if.end.80:                                        ; preds = %do.end, %if.then.53
  br label %if.end.81, !dbg !952

if.end.81:                                        ; preds = %if.end.80, %if.else.48
  %97 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !953, !tbaa !462
  %factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %97, i32 0, i32 3, !dbg !954
  %98 = load %struct._object*, %struct._object** %factory, align 8, !dbg !954, !tbaa !583
  %99 = load %struct._object*, %struct._object** %key, align 8, !dbg !955, !tbaa !462
  %call82 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._object* %99), !dbg !956
  store %struct._object* %call82, %struct._object** %data, align 8, !dbg !957, !tbaa !462
  %100 = load %struct._object*, %struct._object** %data, align 8, !dbg !958, !tbaa !462
  %tobool83 = icmp ne %struct._object* %100, null, !dbg !958
  br i1 %tobool83, label %if.end.85, label %if.then.84, !dbg !960

if.then.84:                                       ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval, !dbg !961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !961

if.end.85:                                        ; preds = %if.end.81
  %101 = load %struct._object*, %struct._object** %key, align 8, !dbg !963, !tbaa !462
  %102 = load %struct._object*, %struct._object** %data, align 8, !dbg !964, !tbaa !462
  %call86 = call %struct._pysqlite_Node* @pysqlite_new_node(%struct._object* %101, %struct._object* %102), !dbg !965
  store %struct._pysqlite_Node* %call86, %struct._pysqlite_Node** %node, align 8, !dbg !966, !tbaa !462
  %103 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !967, !tbaa !462
  %tobool87 = icmp ne %struct._pysqlite_Node* %103, null, !dbg !967
  br i1 %tobool87, label %if.end.89, label %if.then.88, !dbg !969

if.then.88:                                       ; preds = %if.end.85
  store %struct._object* null, %struct._object** %retval, !dbg !970
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !970

if.end.89:                                        ; preds = %if.end.85
  %104 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !972, !tbaa !462
  %last90 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %104, i32 0, i32 5, !dbg !973
  %105 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last90, align 8, !dbg !973, !tbaa !610
  %106 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !974, !tbaa !462
  %prev91 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %106, i32 0, i32 4, !dbg !975
  store %struct._pysqlite_Node* %105, %struct._pysqlite_Node** %prev91, align 8, !dbg !976, !tbaa !507
  br label %do.body.92, !dbg !977

do.body.92:                                       ; preds = %if.end.89
  %107 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !978
  call void @llvm.lifetime.start(i64 8, i8* %107) #2, !dbg !978
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !427, metadata !466), !dbg !980
  %108 = load %struct._object*, %struct._object** %data, align 8, !dbg !981, !tbaa !462
  store %struct._object* %108, %struct._object** %_py_decref_tmp93, align 8, !dbg !980, !tbaa !462
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !982, !tbaa !462
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0, !dbg !984
  %110 = load i64, i64* %ob_refcnt94, align 8, !dbg !985, !tbaa !489
  %dec95 = add i64 %110, -1, !dbg !985
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !985, !tbaa !489
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !986
  br i1 %cmp96, label %if.then.98, label %if.else.99, !dbg !987

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102, !dbg !988

if.else.99:                                       ; preds = %do.body.92
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !990, !tbaa !462
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1, !dbg !992
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8, !dbg !992, !tbaa !533
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4, !dbg !993
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8, !dbg !993, !tbaa !535
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !994, !tbaa !462
  call void %113(%struct._object* %114), !dbg !995
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  %115 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !996
  call void @llvm.lifetime.end(i64 8, i8* %115) #2, !dbg !996
  br label %do.cond.103, !dbg !998

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !999

do.end.104:                                       ; preds = %do.cond.103
  %116 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1001, !tbaa !462
  %mapping105 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %116, i32 0, i32 2, !dbg !1002
  %117 = load %struct._object*, %struct._object** %mapping105, align 8, !dbg !1002, !tbaa !615
  %118 = load %struct._object*, %struct._object** %key, align 8, !dbg !1003, !tbaa !462
  %119 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1004, !tbaa !462
  %120 = bitcast %struct._pysqlite_Node* %119 to %struct._object*, !dbg !1005
  %call106 = call i32 @PyDict_SetItem(%struct._object* %117, %struct._object* %118, %struct._object* %120), !dbg !1006
  %cmp107 = icmp ne i32 %call106, 0, !dbg !1007
  br i1 %cmp107, label %if.then.109, label %if.end.123, !dbg !1008

if.then.109:                                      ; preds = %do.end.104
  br label %do.body.110, !dbg !1009

do.body.110:                                      ; preds = %if.then.109
  %121 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !1010
  call void @llvm.lifetime.start(i64 8, i8* %121) #2, !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp111, metadata !429, metadata !466), !dbg !1012
  %122 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1013, !tbaa !462
  %123 = bitcast %struct._pysqlite_Node* %122 to %struct._object*, !dbg !1014
  store %struct._object* %123, %struct._object** %_py_decref_tmp111, align 8, !dbg !1012, !tbaa !462
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !1015, !tbaa !462
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0, !dbg !1017
  %125 = load i64, i64* %ob_refcnt112, align 8, !dbg !1018, !tbaa !489
  %dec113 = add i64 %125, -1, !dbg !1018
  store i64 %dec113, i64* %ob_refcnt112, align 8, !dbg !1018, !tbaa !489
  %cmp114 = icmp ne i64 %dec113, 0, !dbg !1019
  br i1 %cmp114, label %if.then.116, label %if.else.117, !dbg !1020

if.then.116:                                      ; preds = %do.body.110
  br label %if.end.120, !dbg !1021

if.else.117:                                      ; preds = %do.body.110
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !1023, !tbaa !462
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 1, !dbg !1025
  %127 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8, !dbg !1025, !tbaa !533
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %127, i32 0, i32 4, !dbg !1026
  %128 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8, !dbg !1026, !tbaa !535
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8, !dbg !1027, !tbaa !462
  call void %128(%struct._object* %129), !dbg !1028
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  %130 = bitcast %struct._object** %_py_decref_tmp111 to i8*, !dbg !1029
  call void @llvm.lifetime.end(i64 8, i8* %130) #2, !dbg !1029
  br label %do.cond.121, !dbg !1031

do.cond.121:                                      ; preds = %if.end.120
  br label %do.end.122, !dbg !1032

do.end.122:                                       ; preds = %do.cond.121
  store %struct._object* null, %struct._object** %retval, !dbg !1034
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1034

if.end.123:                                       ; preds = %do.end.104
  %131 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1035, !tbaa !462
  %last124 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %131, i32 0, i32 5, !dbg !1037
  %132 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last124, align 8, !dbg !1037, !tbaa !610
  %tobool125 = icmp ne %struct._pysqlite_Node* %132, null, !dbg !1035
  br i1 %tobool125, label %if.then.126, label %if.else.129, !dbg !1038

if.then.126:                                      ; preds = %if.end.123
  %133 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1039, !tbaa !462
  %134 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1041, !tbaa !462
  %last127 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %134, i32 0, i32 5, !dbg !1042
  %135 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last127, align 8, !dbg !1042, !tbaa !610
  %next128 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %135, i32 0, i32 5, !dbg !1043
  store %struct._pysqlite_Node* %133, %struct._pysqlite_Node** %next128, align 8, !dbg !1044, !tbaa !511
  br label %if.end.131, !dbg !1045

if.else.129:                                      ; preds = %if.end.123
  %136 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1046, !tbaa !462
  %137 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1048, !tbaa !462
  %first130 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %137, i32 0, i32 4, !dbg !1049
  store %struct._pysqlite_Node* %136, %struct._pysqlite_Node** %first130, align 8, !dbg !1050, !tbaa !606
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.126
  %138 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1051, !tbaa !462
  %139 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1052, !tbaa !462
  %last132 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %139, i32 0, i32 5, !dbg !1053
  store %struct._pysqlite_Node* %138, %struct._pysqlite_Node** %last132, align 8, !dbg !1054, !tbaa !610
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.131, %if.end.47
  %140 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1055, !tbaa !462
  %data134 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %140, i32 0, i32 2, !dbg !1056
  %141 = load %struct._object*, %struct._object** %data134, align 8, !dbg !1056, !tbaa !503
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0, !dbg !1057
  %142 = load i64, i64* %ob_refcnt135, align 8, !dbg !1058, !tbaa !489
  %inc136 = add i64 %142, 1, !dbg !1058
  store i64 %inc136, i64* %ob_refcnt135, align 8, !dbg !1058, !tbaa !489
  %143 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1059, !tbaa !462
  %data137 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %143, i32 0, i32 2, !dbg !1060
  %144 = load %struct._object*, %struct._object** %data137, align 8, !dbg !1060, !tbaa !503
  store %struct._object* %144, %struct._object** %retval, !dbg !1061
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1061

cleanup:                                          ; preds = %if.end.133, %do.end.122, %if.then.88, %if.then.84, %if.then.64
  %145 = bitcast %struct._object** %data to i8*, !dbg !1062
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !1062
  %146 = bitcast %struct._pysqlite_Node** %ptr to i8*, !dbg !1062
  call void @llvm.lifetime.end(i64 8, i8* %146) #2, !dbg !1062
  %147 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !1062
  call void @llvm.lifetime.end(i64 8, i8* %147) #2, !dbg !1062
  %148 = bitcast %struct._object** %key to i8*, !dbg !1062
  call void @llvm.lifetime.end(i64 8, i8* %148) #2, !dbg !1062
  %149 = load %struct._object*, %struct._object** %retval, !dbg !1062
  ret %struct._object* %149, !dbg !1062
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare i64 @PyDict_Size(%struct._object*) #3

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cache_display(%struct.pysqlite_Cache* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ptr = alloca %struct._pysqlite_Node*, align 8
  %prevkey = alloca %struct._object*, align 8
  %nextkey = alloca %struct._object*, align 8
  %display_str = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cache** %self.addr, metadata !435, metadata !466), !dbg !1063
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !462
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !436, metadata !466), !dbg !1064
  %0 = bitcast %struct._pysqlite_Node** %ptr to i8*, !dbg !1065
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1065
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %ptr, metadata !437, metadata !466), !dbg !1066
  %1 = bitcast %struct._object** %prevkey to i8*, !dbg !1067
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1067
  call void @llvm.dbg.declare(metadata %struct._object** %prevkey, metadata !438, metadata !466), !dbg !1068
  %2 = bitcast %struct._object** %nextkey to i8*, !dbg !1069
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1069
  call void @llvm.dbg.declare(metadata %struct._object** %nextkey, metadata !439, metadata !466), !dbg !1070
  %3 = bitcast %struct._object** %display_str to i8*, !dbg !1071
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1071
  call void @llvm.dbg.declare(metadata %struct._object** %display_str, metadata !440, metadata !466), !dbg !1072
  %4 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8, !dbg !1073, !tbaa !462
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %4, i32 0, i32 4, !dbg !1074
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8, !dbg !1074, !tbaa !606
  store %struct._pysqlite_Node* %5, %struct._pysqlite_Node** %ptr, align 8, !dbg !1075, !tbaa !462
  br label %while.cond, !dbg !1076

while.cond:                                       ; preds = %do.end, %entry
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1077, !tbaa !462
  %tobool = icmp ne %struct._pysqlite_Node* %6, null, !dbg !1076
  br i1 %tobool, label %while.body, label %while.end, !dbg !1076

while.body:                                       ; preds = %while.cond
  %7 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1080, !tbaa !462
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %7, i32 0, i32 4, !dbg !1082
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev, align 8, !dbg !1082, !tbaa !507
  %tobool1 = icmp ne %struct._pysqlite_Node* %8, null, !dbg !1080
  br i1 %tobool1, label %if.then, label %if.else, !dbg !1083

if.then:                                          ; preds = %while.body
  %9 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1084, !tbaa !462
  %prev2 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %9, i32 0, i32 4, !dbg !1086
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev2, align 8, !dbg !1086, !tbaa !507
  %key = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 1, !dbg !1087
  %11 = load %struct._object*, %struct._object** %key, align 8, !dbg !1087, !tbaa !494
  store %struct._object* %11, %struct._object** %prevkey, align 8, !dbg !1088, !tbaa !462
  br label %if.end, !dbg !1089

if.else:                                          ; preds = %while.body
  store %struct._object* @_Py_NoneStruct, %struct._object** %prevkey, align 8, !dbg !1090, !tbaa !462
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1092, !tbaa !462
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %12, i32 0, i32 5, !dbg !1094
  %13 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8, !dbg !1094, !tbaa !511
  %tobool3 = icmp ne %struct._pysqlite_Node* %13, null, !dbg !1092
  br i1 %tobool3, label %if.then.4, label %if.else.7, !dbg !1095

if.then.4:                                        ; preds = %if.end
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1096, !tbaa !462
  %next5 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %14, i32 0, i32 5, !dbg !1098
  %15 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next5, align 8, !dbg !1098, !tbaa !511
  %key6 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %15, i32 0, i32 1, !dbg !1099
  %16 = load %struct._object*, %struct._object** %key6, align 8, !dbg !1099, !tbaa !494
  store %struct._object* %16, %struct._object** %nextkey, align 8, !dbg !1100, !tbaa !462
  br label %if.end.8, !dbg !1101

if.else.7:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %nextkey, align 8, !dbg !1102, !tbaa !462
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.4
  %17 = load %struct._object*, %struct._object** %prevkey, align 8, !dbg !1104, !tbaa !462
  %18 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1105, !tbaa !462
  %key9 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %18, i32 0, i32 1, !dbg !1106
  %19 = load %struct._object*, %struct._object** %key9, align 8, !dbg !1106, !tbaa !494
  %20 = load %struct._object*, %struct._object** %nextkey, align 8, !dbg !1107, !tbaa !462
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct._object* %17, %struct._object* %19, %struct._object* %20), !dbg !1108
  store %struct._object* %call, %struct._object** %display_str, align 8, !dbg !1109, !tbaa !462
  %21 = load %struct._object*, %struct._object** %display_str, align 8, !dbg !1110, !tbaa !462
  %tobool10 = icmp ne %struct._object* %21, null, !dbg !1110
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !1112

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1113

if.end.12:                                        ; preds = %if.end.8
  %22 = load %struct._object*, %struct._object** %display_str, align 8, !dbg !1115, !tbaa !462
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1116, !tbaa !462
  %call13 = call i32 @PyObject_Print(%struct._object* %22, %struct._IO_FILE* %23, i32 1), !dbg !1117
  br label %do.body, !dbg !1118

do.body:                                          ; preds = %if.end.12
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !1119
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !441, metadata !466), !dbg !1121
  %25 = load %struct._object*, %struct._object** %display_str, align 8, !dbg !1122, !tbaa !462
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8, !dbg !1121, !tbaa !462
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1123, !tbaa !462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1125
  %27 = load i64, i64* %ob_refcnt, align 8, !dbg !1126, !tbaa !489
  %dec = add i64 %27, -1, !dbg !1126
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1126, !tbaa !489
  %cmp = icmp ne i64 %dec, 0, !dbg !1127
  br i1 %cmp, label %if.then.14, label %if.else.15, !dbg !1128

if.then.14:                                       ; preds = %do.body
  br label %if.end.16, !dbg !1129

if.else.15:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1131, !tbaa !462
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !1133
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1133, !tbaa !533
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !1134
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1134, !tbaa !535
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1135, !tbaa !462
  call void %30(%struct._object* %31), !dbg !1136
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1137
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1137
  br label %do.cond, !dbg !1139

do.cond:                                          ; preds = %if.end.16
  br label %do.end, !dbg !1140

do.end:                                           ; preds = %do.cond
  %33 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8, !dbg !1142, !tbaa !462
  %next17 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %33, i32 0, i32 5, !dbg !1143
  %34 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next17, align 8, !dbg !1143, !tbaa !511
  store %struct._pysqlite_Node* %34, %struct._pysqlite_Node** %ptr, align 8, !dbg !1144, !tbaa !462
  br label %while.cond, !dbg !1076

while.end:                                        ; preds = %while.cond
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1145, !tbaa !489
  %inc = add i64 %35, 1, !dbg !1145
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1145, !tbaa !489
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1146
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1146

cleanup:                                          ; preds = %while.end, %if.then.11
  %36 = bitcast %struct._object** %display_str to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !1147
  %37 = bitcast %struct._object** %nextkey to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !1147
  %38 = bitcast %struct._object** %prevkey to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1147
  %39 = bitcast %struct._pysqlite_Node** %ptr to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1147
  %40 = load %struct._object*, %struct._object** %retval, !dbg !1147
  ret %struct._object* %40, !dbg !1147
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare i32 @PyObject_Print(%struct._object*, %struct._IO_FILE*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cache_setup_types() #0 {
entry:
  %retval = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %rc to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !448, metadata !466), !dbg !1149
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_NodeType, i32 0, i32 37), align 8, !dbg !1150, !tbaa !1151
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 37), align 8, !dbg !1152, !tbaa !1151
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_NodeType), !dbg !1153
  store i32 %call, i32* %rc, align 4, !dbg !1154, !tbaa !579
  %1 = load i32, i32* %rc, align 4, !dbg !1155, !tbaa !579
  %cmp = icmp slt i32 %1, 0, !dbg !1157
  br i1 %cmp, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rc, align 4, !dbg !1159, !tbaa !579
  store i32 %2, i32* %retval, !dbg !1161
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1161

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_CacheType), !dbg !1162
  store i32 %call1, i32* %rc, align 4, !dbg !1163, !tbaa !579
  %3 = load i32, i32* %rc, align 4, !dbg !1164, !tbaa !579
  store i32 %3, i32* %retval, !dbg !1165
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1165

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %rc to i8*, !dbg !1166
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1166
  %5 = load i32, i32* %retval, !dbg !1166
  ret i32 %5, !dbg !1166
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!458, !459, !460}
!llvm.ident = !{!461}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !355, globals: !449)
!1 = !DIFile(filename: "cache.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !43}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !6, line: 32, size: 448, align: 64, elements: !8)
!8 = !{!9, !349, !350, !351, !352, !354}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !7, file: !6, line: 34, baseType: !10, size: 128, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!287 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!300 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!349 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !6, line: 35, baseType: !43, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 36, baseType: !43, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !7, file: !6, line: 37, baseType: !21, size: 64, align: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !6, line: 38, baseType: !353, size: 64, align: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 39, baseType: !353, size: 64, align: 64, offset: 384)
!355 = !{!356, !364, !373, !393, !409, !433, !444}
!356 = !DISubprogram(name: "pysqlite_new_node", scope: !357, file: !357, line: 28, type: !358, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: %struct._pysqlite_Node* (%struct._object*, %struct._object*)* @pysqlite_new_node, variables: !360)
!357 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/cache.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!358 = !DISubroutineType(types: !359)
!359 = !{!4, !43, !43}
!360 = !{!361, !362, !363}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !356, file: !357, line: 28, type: !43)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !356, file: !357, line: 28, type: !43)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !356, file: !357, line: 30, type: !4)
!364 = !DISubprogram(name: "pysqlite_node_dealloc", scope: !357, file: !357, line: 49, type: !365, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._pysqlite_Node*)* @pysqlite_node_dealloc, variables: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !4}
!367 = !{!368, !369, !371}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !364, file: !357, line: 49, type: !4)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !370, file: !357, line: 51, type: !43)
!370 = distinct !DILexicalBlock(scope: !364, file: !357, line: 51, column: 8)
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !372, file: !357, line: 52, type: !43)
!372 = distinct !DILexicalBlock(scope: !364, file: !357, line: 52, column: 8)
!373 = !DISubprogram(name: "pysqlite_cache_init", scope: !357, file: !357, line: 57, type: !374, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Cache*, %struct._object*, %struct._object*)* @pysqlite_cache_init, variables: !387)
!374 = !DISubroutineType(types: !375)
!375 = !{!49, !376, !43, !43}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !6, line: 59, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 42, size: 512, align: 64, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !378, file: !6, line: 44, baseType: !10, size: 128, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !378, file: !6, line: 45, baseType: !49, size: 32, align: 32, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !378, file: !6, line: 48, baseType: !43, size: 64, align: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !378, file: !6, line: 51, baseType: !43, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !378, file: !6, line: 53, baseType: !4, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !378, file: !6, line: 54, baseType: !4, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !378, file: !6, line: 58, baseType: !49, size: 32, align: 32, offset: 448)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !373, file: !357, line: 57, type: !376)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !373, file: !357, line: 57, type: !43)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !373, file: !357, line: 57, type: !43)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factory", scope: !373, file: !357, line: 59, type: !43)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !373, file: !357, line: 60, type: !49)
!393 = !DISubprogram(name: "pysqlite_cache_dealloc", scope: !357, file: !357, line: 89, type: !394, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Cache*)* @pysqlite_cache_dealloc, variables: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !376}
!396 = !{!397, !398, !399, !400, !403, !407}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !393, file: !357, line: 89, type: !376)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !393, file: !357, line: 91, type: !4)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "delete_node", scope: !393, file: !357, line: 92, type: !4)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !401, file: !357, line: 104, type: !43)
!401 = distinct !DILexicalBlock(scope: !402, file: !357, line: 104, column: 12)
!402 = distinct !DILexicalBlock(scope: !393, file: !357, line: 101, column: 18)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !404, file: !357, line: 108, type: !43)
!404 = distinct !DILexicalBlock(scope: !405, file: !357, line: 108, column: 12)
!405 = distinct !DILexicalBlock(scope: !406, file: !357, line: 107, column: 31)
!406 = distinct !DILexicalBlock(scope: !393, file: !357, line: 107, column: 9)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !408, file: !357, line: 110, type: !43)
!408 = distinct !DILexicalBlock(scope: !393, file: !357, line: 110, column: 8)
!409 = !DISubprogram(name: "pysqlite_cache_get", scope: !357, file: !357, line: 115, type: !410, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_get, variables: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!43, !376, !43}
!412 = !{!413, !414, !415, !416, !417, !418, !419, !427, !429}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !357, line: 115, type: !376)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !357, line: 115, type: !43)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !409, file: !357, line: 117, type: !43)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !409, file: !357, line: 118, type: !4)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !409, file: !357, line: 119, type: !4)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !409, file: !357, line: 120, type: !43)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !420, file: !357, line: 179, type: !43)
!420 = distinct !DILexicalBlock(scope: !421, file: !357, line: 179, column: 20)
!421 = distinct !DILexicalBlock(scope: !422, file: !357, line: 166, column: 29)
!422 = distinct !DILexicalBlock(scope: !423, file: !357, line: 166, column: 17)
!423 = distinct !DILexicalBlock(scope: !424, file: !357, line: 165, column: 55)
!424 = distinct !DILexicalBlock(scope: !425, file: !357, line: 165, column: 13)
!425 = distinct !DILexicalBlock(scope: !426, file: !357, line: 160, column: 12)
!426 = distinct !DILexicalBlock(scope: !409, file: !357, line: 123, column: 9)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !428, file: !357, line: 195, type: !43)
!428 = distinct !DILexicalBlock(scope: !425, file: !357, line: 195, column: 12)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !430, file: !357, line: 198, type: !43)
!430 = distinct !DILexicalBlock(scope: !431, file: !357, line: 198, column: 16)
!431 = distinct !DILexicalBlock(scope: !432, file: !357, line: 197, column: 71)
!432 = distinct !DILexicalBlock(scope: !425, file: !357, line: 197, column: 13)
!433 = !DISubprogram(name: "pysqlite_cache_display", scope: !357, file: !357, line: 214, type: !410, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_display, variables: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441}
!435 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !433, file: !357, line: 214, type: !376)
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !433, file: !357, line: 214, type: !43)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !433, file: !357, line: 216, type: !4)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prevkey", scope: !433, file: !357, line: 217, type: !43)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nextkey", scope: !433, file: !357, line: 218, type: !43)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "display_str", scope: !433, file: !357, line: 219, type: !43)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !357, line: 242, type: !43)
!442 = distinct !DILexicalBlock(scope: !443, file: !357, line: 242, column: 12)
!443 = distinct !DILexicalBlock(scope: !433, file: !357, line: 223, column: 17)
!444 = !DISubprogram(name: "pysqlite_cache_setup_types", scope: !357, file: !357, line: 343, type: !445, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @pysqlite_cache_setup_types, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!49}
!447 = !{!448}
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !444, file: !357, line: 345, type: !49)
!449 = !{!450, !452, !453}
!450 = !DIGlobalVariable(name: "pysqlite_NodeType", scope: !0, file: !357, line: 259, type: !451, isLocal: false, isDefinition: true, variable: %struct._typeobject* @pysqlite_NodeType)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!452 = !DIGlobalVariable(name: "pysqlite_CacheType", scope: !0, file: !357, line: 301, type: !451, isLocal: false, isDefinition: true, variable: %struct._typeobject* @pysqlite_CacheType)
!453 = !DIGlobalVariable(name: "cache_methods", scope: !0, file: !357, line: 251, type: !454, isLocal: true, isDefinition: true, variable: [3 x %struct.PyMethodDef]* @cache_methods)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 768, align: 64, elements: !456)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !287, line: 47, baseType: !286)
!456 = !{!457}
!457 = !DISubrange(count: 3)
!458 = !{i32 2, !"Dwarf Version", i32 4}
!459 = !{i32 2, !"Debug Info Version", i32 3}
!460 = !{i32 1, !"PIC Level", i32 2}
!461 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!462 = !{!463, !463, i64 0}
!463 = !{!"any pointer", !464, i64 0}
!464 = !{!"omnipotent char", !465, i64 0}
!465 = !{!"Simple C/C++ TBAA"}
!466 = !DIExpression()
!467 = !DILocation(line: 28, column: 44, scope: !356)
!468 = !DILocation(line: 28, column: 59, scope: !356)
!469 = !DILocation(line: 30, column: 5, scope: !356)
!470 = !DILocation(line: 30, column: 20, scope: !356)
!471 = !DILocation(line: 32, column: 48, scope: !356)
!472 = !{!473, !463, i64 304}
!473 = !{!"_typeobject", !474, i64 0, !463, i64 24, !476, i64 32, !476, i64 40, !463, i64 48, !463, i64 56, !463, i64 64, !463, i64 72, !463, i64 80, !463, i64 88, !463, i64 96, !463, i64 104, !463, i64 112, !463, i64 120, !463, i64 128, !463, i64 136, !463, i64 144, !463, i64 152, !463, i64 160, !476, i64 168, !463, i64 176, !463, i64 184, !463, i64 192, !463, i64 200, !476, i64 208, !463, i64 216, !463, i64 224, !463, i64 232, !463, i64 240, !463, i64 248, !463, i64 256, !463, i64 264, !463, i64 272, !463, i64 280, !476, i64 288, !463, i64 296, !463, i64 304, !463, i64 312, !463, i64 320, !463, i64 328, !463, i64 336, !463, i64 344, !463, i64 352, !463, i64 360, !463, i64 368, !463, i64 376, !477, i64 384, !463, i64 392}
!474 = !{!"", !475, i64 0, !476, i64 16}
!475 = !{!"_object", !476, i64 0, !463, i64 8}
!476 = !{!"long", !464, i64 0}
!477 = !{!"int", !464, i64 0}
!478 = !DILocation(line: 32, column: 30, scope: !356)
!479 = !DILocation(line: 32, column: 12, scope: !356)
!480 = !DILocation(line: 32, column: 10, scope: !356)
!481 = !DILocation(line: 33, column: 10, scope: !482)
!482 = distinct !DILexicalBlock(scope: !356, file: !357, line: 33, column: 9)
!483 = !DILocation(line: 33, column: 9, scope: !356)
!484 = !DILocation(line: 34, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !357, line: 33, column: 16)
!486 = !DILocation(line: 37, column: 21, scope: !356)
!487 = !DILocation(line: 37, column: 28, scope: !356)
!488 = !DILocation(line: 37, column: 37, scope: !356)
!489 = !{!475, !476, i64 0}
!490 = !DILocation(line: 38, column: 17, scope: !356)
!491 = !DILocation(line: 38, column: 5, scope: !356)
!492 = !DILocation(line: 38, column: 11, scope: !356)
!493 = !DILocation(line: 38, column: 15, scope: !356)
!494 = !{!495, !463, i64 16}
!495 = !{!"_pysqlite_Node", !475, i64 0, !463, i64 16, !463, i64 24, !476, i64 32, !463, i64 40, !463, i64 48}
!496 = !DILocation(line: 40, column: 21, scope: !356)
!497 = !DILocation(line: 40, column: 29, scope: !356)
!498 = !DILocation(line: 40, column: 38, scope: !356)
!499 = !DILocation(line: 41, column: 18, scope: !356)
!500 = !DILocation(line: 41, column: 5, scope: !356)
!501 = !DILocation(line: 41, column: 11, scope: !356)
!502 = !DILocation(line: 41, column: 16, scope: !356)
!503 = !{!495, !463, i64 24}
!504 = !DILocation(line: 43, column: 5, scope: !356)
!505 = !DILocation(line: 43, column: 11, scope: !356)
!506 = !DILocation(line: 43, column: 16, scope: !356)
!507 = !{!495, !463, i64 40}
!508 = !DILocation(line: 44, column: 5, scope: !356)
!509 = !DILocation(line: 44, column: 11, scope: !356)
!510 = !DILocation(line: 44, column: 16, scope: !356)
!511 = !{!495, !463, i64 48}
!512 = !DILocation(line: 46, column: 12, scope: !356)
!513 = !DILocation(line: 46, column: 5, scope: !356)
!514 = !DILocation(line: 47, column: 1, scope: !356)
!515 = !DILocation(line: 49, column: 43, scope: !364)
!516 = !DILocation(line: 51, column: 5, scope: !364)
!517 = !DILocation(line: 51, column: 10, scope: !518)
!518 = !DILexicalBlockFile(scope: !370, file: !357, discriminator: 1)
!519 = !DILocation(line: 51, column: 20, scope: !370)
!520 = !DILocation(line: 51, column: 50, scope: !370)
!521 = !DILocation(line: 51, column: 56, scope: !370)
!522 = !DILocation(line: 51, column: 70, scope: !523)
!523 = distinct !DILexicalBlock(scope: !370, file: !357, line: 51, column: 67)
!524 = !DILocation(line: 51, column: 87, scope: !523)
!525 = !DILocation(line: 51, column: 67, scope: !523)
!526 = !DILocation(line: 51, column: 97, scope: !523)
!527 = !DILocation(line: 51, column: 67, scope: !370)
!528 = !DILocation(line: 51, column: 67, scope: !529)
!529 = !DILexicalBlockFile(scope: !370, file: !357, discriminator: 2)
!530 = !DILocation(line: 51, column: 128, scope: !531)
!531 = !DILexicalBlockFile(scope: !523, file: !357, discriminator: 3)
!532 = !DILocation(line: 51, column: 146, scope: !523)
!533 = !{!475, !463, i64 8}
!534 = !DILocation(line: 51, column: 156, scope: !523)
!535 = !{!473, !463, i64 48}
!536 = !DILocation(line: 51, column: 181, scope: !523)
!537 = !DILocation(line: 51, column: 112, scope: !523)
!538 = !DILocation(line: 51, column: 200, scope: !539)
!539 = !DILexicalBlockFile(scope: !364, file: !357, discriminator: 4)
!540 = !DILocation(line: 51, column: 200, scope: !370)
!541 = !DILocation(line: 52, column: 5, scope: !364)
!542 = !DILocation(line: 52, column: 10, scope: !543)
!543 = !DILexicalBlockFile(scope: !372, file: !357, discriminator: 1)
!544 = !DILocation(line: 52, column: 20, scope: !372)
!545 = !DILocation(line: 52, column: 50, scope: !372)
!546 = !DILocation(line: 52, column: 56, scope: !372)
!547 = !DILocation(line: 52, column: 71, scope: !548)
!548 = distinct !DILexicalBlock(scope: !372, file: !357, line: 52, column: 68)
!549 = !DILocation(line: 52, column: 88, scope: !548)
!550 = !DILocation(line: 52, column: 68, scope: !548)
!551 = !DILocation(line: 52, column: 98, scope: !548)
!552 = !DILocation(line: 52, column: 68, scope: !372)
!553 = !DILocation(line: 52, column: 68, scope: !554)
!554 = !DILexicalBlockFile(scope: !372, file: !357, discriminator: 2)
!555 = !DILocation(line: 52, column: 129, scope: !556)
!556 = !DILexicalBlockFile(scope: !548, file: !357, discriminator: 3)
!557 = !DILocation(line: 52, column: 147, scope: !548)
!558 = !DILocation(line: 52, column: 157, scope: !548)
!559 = !DILocation(line: 52, column: 182, scope: !548)
!560 = !DILocation(line: 52, column: 113, scope: !548)
!561 = !DILocation(line: 52, column: 201, scope: !539)
!562 = !DILocation(line: 52, column: 201, scope: !372)
!563 = !DILocation(line: 54, column: 19, scope: !364)
!564 = !DILocation(line: 54, column: 7, scope: !364)
!565 = !DILocation(line: 54, column: 27, scope: !364)
!566 = !DILocation(line: 54, column: 37, scope: !364)
!567 = !{!473, !463, i64 320}
!568 = !DILocation(line: 54, column: 56, scope: !364)
!569 = !DILocation(line: 54, column: 45, scope: !364)
!570 = !DILocation(line: 54, column: 5, scope: !364)
!571 = !DILocation(line: 55, column: 1, scope: !364)
!572 = !DILocation(line: 57, column: 41, scope: !373)
!573 = !DILocation(line: 57, column: 57, scope: !373)
!574 = !DILocation(line: 57, column: 73, scope: !373)
!575 = !DILocation(line: 59, column: 5, scope: !373)
!576 = !DILocation(line: 59, column: 15, scope: !373)
!577 = !DILocation(line: 60, column: 5, scope: !373)
!578 = !DILocation(line: 60, column: 9, scope: !373)
!579 = !{!477, !477, i64 0}
!580 = !DILocation(line: 62, column: 5, scope: !373)
!581 = !DILocation(line: 62, column: 11, scope: !373)
!582 = !DILocation(line: 62, column: 19, scope: !373)
!583 = !{!584, !463, i64 32}
!584 = !{!"", !475, i64 0, !477, i64 16, !463, i64 24, !463, i64 32, !463, i64 40, !463, i64 48, !477, i64 56}
!585 = !DILocation(line: 64, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !373, file: !357, line: 64, column: 9)
!587 = !DILocation(line: 64, column: 10, scope: !586)
!588 = !DILocation(line: 64, column: 9, scope: !373)
!589 = !DILocation(line: 65, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !357, line: 64, column: 58)
!591 = !DILocation(line: 69, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !373, file: !357, line: 69, column: 9)
!593 = !DILocation(line: 69, column: 14, scope: !592)
!594 = !DILocation(line: 69, column: 9, scope: !373)
!595 = !DILocation(line: 70, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !357, line: 69, column: 19)
!597 = !DILocation(line: 71, column: 5, scope: !596)
!598 = !DILocation(line: 72, column: 18, scope: !373)
!599 = !DILocation(line: 72, column: 5, scope: !373)
!600 = !DILocation(line: 72, column: 11, scope: !373)
!601 = !DILocation(line: 72, column: 16, scope: !373)
!602 = !{!584, !477, i64 16}
!603 = !DILocation(line: 73, column: 5, scope: !373)
!604 = !DILocation(line: 73, column: 11, scope: !373)
!605 = !DILocation(line: 73, column: 17, scope: !373)
!606 = !{!584, !463, i64 40}
!607 = !DILocation(line: 74, column: 5, scope: !373)
!608 = !DILocation(line: 74, column: 11, scope: !373)
!609 = !DILocation(line: 74, column: 16, scope: !373)
!610 = !{!584, !463, i64 48}
!611 = !DILocation(line: 76, column: 21, scope: !373)
!612 = !DILocation(line: 76, column: 5, scope: !373)
!613 = !DILocation(line: 76, column: 11, scope: !373)
!614 = !DILocation(line: 76, column: 19, scope: !373)
!615 = !{!584, !463, i64 24}
!616 = !DILocation(line: 77, column: 10, scope: !617)
!617 = distinct !DILexicalBlock(scope: !373, file: !357, line: 77, column: 9)
!618 = !DILocation(line: 77, column: 16, scope: !617)
!619 = !DILocation(line: 77, column: 9, scope: !373)
!620 = !DILocation(line: 78, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !357, line: 77, column: 25)
!622 = !DILocation(line: 81, column: 21, scope: !373)
!623 = !DILocation(line: 81, column: 32, scope: !373)
!624 = !DILocation(line: 81, column: 41, scope: !373)
!625 = !DILocation(line: 82, column: 21, scope: !373)
!626 = !DILocation(line: 82, column: 5, scope: !373)
!627 = !DILocation(line: 82, column: 11, scope: !373)
!628 = !DILocation(line: 82, column: 19, scope: !373)
!629 = !DILocation(line: 84, column: 5, scope: !373)
!630 = !DILocation(line: 84, column: 11, scope: !373)
!631 = !DILocation(line: 84, column: 26, scope: !373)
!632 = !{!584, !477, i64 56}
!633 = !DILocation(line: 86, column: 5, scope: !373)
!634 = !DILocation(line: 87, column: 1, scope: !373)
!635 = !DILocation(line: 89, column: 45, scope: !393)
!636 = !DILocation(line: 91, column: 5, scope: !393)
!637 = !DILocation(line: 91, column: 20, scope: !393)
!638 = !DILocation(line: 92, column: 5, scope: !393)
!639 = !DILocation(line: 92, column: 20, scope: !393)
!640 = !DILocation(line: 94, column: 10, scope: !641)
!641 = distinct !DILexicalBlock(scope: !393, file: !357, line: 94, column: 9)
!642 = !DILocation(line: 94, column: 16, scope: !641)
!643 = !DILocation(line: 94, column: 9, scope: !393)
!644 = !DILocation(line: 96, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !357, line: 94, column: 25)
!646 = !DILocation(line: 100, column: 12, scope: !393)
!647 = !DILocation(line: 100, column: 18, scope: !393)
!648 = !DILocation(line: 100, column: 10, scope: !393)
!649 = !DILocation(line: 101, column: 5, scope: !393)
!650 = !DILocation(line: 101, column: 12, scope: !651)
!651 = !DILexicalBlockFile(scope: !652, file: !357, discriminator: 2)
!652 = !DILexicalBlockFile(scope: !393, file: !357, discriminator: 1)
!653 = !DILocation(line: 102, column: 23, scope: !402)
!654 = !DILocation(line: 102, column: 21, scope: !402)
!655 = !DILocation(line: 103, column: 16, scope: !402)
!656 = !DILocation(line: 103, column: 22, scope: !402)
!657 = !DILocation(line: 103, column: 14, scope: !402)
!658 = !DILocation(line: 104, column: 9, scope: !402)
!659 = !DILocation(line: 104, column: 14, scope: !660)
!660 = !DILexicalBlockFile(scope: !401, file: !357, discriminator: 1)
!661 = !DILocation(line: 104, column: 24, scope: !401)
!662 = !DILocation(line: 104, column: 54, scope: !401)
!663 = !DILocation(line: 104, column: 41, scope: !401)
!664 = !DILocation(line: 104, column: 76, scope: !665)
!665 = distinct !DILexicalBlock(scope: !401, file: !357, line: 104, column: 73)
!666 = !DILocation(line: 104, column: 93, scope: !665)
!667 = !DILocation(line: 104, column: 73, scope: !665)
!668 = !DILocation(line: 104, column: 103, scope: !665)
!669 = !DILocation(line: 104, column: 73, scope: !401)
!670 = !DILocation(line: 104, column: 73, scope: !671)
!671 = !DILexicalBlockFile(scope: !401, file: !357, discriminator: 2)
!672 = !DILocation(line: 104, column: 134, scope: !673)
!673 = !DILexicalBlockFile(scope: !665, file: !357, discriminator: 3)
!674 = !DILocation(line: 104, column: 152, scope: !665)
!675 = !DILocation(line: 104, column: 162, scope: !665)
!676 = !DILocation(line: 104, column: 187, scope: !665)
!677 = !DILocation(line: 104, column: 118, scope: !665)
!678 = !DILocation(line: 104, column: 206, scope: !679)
!679 = !DILexicalBlockFile(scope: !402, file: !357, discriminator: 4)
!680 = !DILocation(line: 104, column: 206, scope: !401)
!681 = !DILocation(line: 104, column: 206, scope: !682)
!682 = !DILexicalBlockFile(scope: !401, file: !357, discriminator: 5)
!683 = !DILocation(line: 107, column: 9, scope: !406)
!684 = !DILocation(line: 107, column: 15, scope: !406)
!685 = !DILocation(line: 107, column: 9, scope: !393)
!686 = !DILocation(line: 108, column: 9, scope: !405)
!687 = !DILocation(line: 108, column: 14, scope: !688)
!688 = !DILexicalBlockFile(scope: !404, file: !357, discriminator: 1)
!689 = !DILocation(line: 108, column: 24, scope: !404)
!690 = !DILocation(line: 108, column: 54, scope: !404)
!691 = !DILocation(line: 108, column: 60, scope: !404)
!692 = !DILocation(line: 108, column: 78, scope: !693)
!693 = distinct !DILexicalBlock(scope: !404, file: !357, line: 108, column: 75)
!694 = !DILocation(line: 108, column: 95, scope: !693)
!695 = !DILocation(line: 108, column: 75, scope: !693)
!696 = !DILocation(line: 108, column: 105, scope: !693)
!697 = !DILocation(line: 108, column: 75, scope: !404)
!698 = !DILocation(line: 108, column: 75, scope: !699)
!699 = !DILexicalBlockFile(scope: !404, file: !357, discriminator: 2)
!700 = !DILocation(line: 108, column: 136, scope: !701)
!701 = !DILexicalBlockFile(scope: !693, file: !357, discriminator: 3)
!702 = !DILocation(line: 108, column: 154, scope: !693)
!703 = !DILocation(line: 108, column: 164, scope: !693)
!704 = !DILocation(line: 108, column: 189, scope: !693)
!705 = !DILocation(line: 108, column: 120, scope: !693)
!706 = !DILocation(line: 108, column: 208, scope: !707)
!707 = !DILexicalBlockFile(scope: !405, file: !357, discriminator: 4)
!708 = !DILocation(line: 108, column: 208, scope: !404)
!709 = !DILocation(line: 108, column: 208, scope: !710)
!710 = !DILexicalBlockFile(scope: !404, file: !357, discriminator: 5)
!711 = !DILocation(line: 109, column: 5, scope: !405)
!712 = !DILocation(line: 110, column: 5, scope: !393)
!713 = !DILocation(line: 110, column: 10, scope: !714)
!714 = !DILexicalBlockFile(scope: !408, file: !357, discriminator: 1)
!715 = !DILocation(line: 110, column: 20, scope: !408)
!716 = !DILocation(line: 110, column: 50, scope: !408)
!717 = !DILocation(line: 110, column: 56, scope: !408)
!718 = !DILocation(line: 110, column: 74, scope: !719)
!719 = distinct !DILexicalBlock(scope: !408, file: !357, line: 110, column: 71)
!720 = !DILocation(line: 110, column: 91, scope: !719)
!721 = !DILocation(line: 110, column: 71, scope: !719)
!722 = !DILocation(line: 110, column: 101, scope: !719)
!723 = !DILocation(line: 110, column: 71, scope: !408)
!724 = !DILocation(line: 110, column: 71, scope: !725)
!725 = !DILexicalBlockFile(scope: !408, file: !357, discriminator: 2)
!726 = !DILocation(line: 110, column: 132, scope: !727)
!727 = !DILexicalBlockFile(scope: !719, file: !357, discriminator: 3)
!728 = !DILocation(line: 110, column: 150, scope: !719)
!729 = !DILocation(line: 110, column: 160, scope: !719)
!730 = !DILocation(line: 110, column: 185, scope: !719)
!731 = !DILocation(line: 110, column: 116, scope: !719)
!732 = !DILocation(line: 110, column: 204, scope: !733)
!733 = !DILexicalBlockFile(scope: !393, file: !357, discriminator: 4)
!734 = !DILocation(line: 110, column: 204, scope: !408)
!735 = !DILocation(line: 110, column: 204, scope: !736)
!736 = !DILexicalBlockFile(scope: !408, file: !357, discriminator: 5)
!737 = !DILocation(line: 112, column: 19, scope: !393)
!738 = !DILocation(line: 112, column: 7, scope: !393)
!739 = !DILocation(line: 112, column: 27, scope: !393)
!740 = !DILocation(line: 112, column: 37, scope: !393)
!741 = !DILocation(line: 112, column: 56, scope: !393)
!742 = !DILocation(line: 112, column: 45, scope: !393)
!743 = !DILocation(line: 112, column: 5, scope: !393)
!744 = !DILocation(line: 113, column: 1, scope: !393)
!745 = !DILocation(line: 113, column: 1, scope: !652)
!746 = !DILocation(line: 115, column: 46, scope: !409)
!747 = !DILocation(line: 115, column: 62, scope: !409)
!748 = !DILocation(line: 117, column: 5, scope: !409)
!749 = !DILocation(line: 117, column: 15, scope: !409)
!750 = !DILocation(line: 117, column: 21, scope: !409)
!751 = !DILocation(line: 118, column: 5, scope: !409)
!752 = !DILocation(line: 118, column: 20, scope: !409)
!753 = !DILocation(line: 119, column: 5, scope: !409)
!754 = !DILocation(line: 119, column: 20, scope: !409)
!755 = !DILocation(line: 120, column: 5, scope: !409)
!756 = !DILocation(line: 120, column: 15, scope: !409)
!757 = !DILocation(line: 122, column: 43, scope: !409)
!758 = !DILocation(line: 122, column: 49, scope: !409)
!759 = !DILocation(line: 122, column: 58, scope: !409)
!760 = !DILocation(line: 122, column: 28, scope: !409)
!761 = !DILocation(line: 122, column: 12, scope: !409)
!762 = !DILocation(line: 122, column: 10, scope: !409)
!763 = !DILocation(line: 123, column: 9, scope: !426)
!764 = !DILocation(line: 123, column: 9, scope: !409)
!765 = !DILocation(line: 127, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !357, line: 127, column: 13)
!767 = distinct !DILexicalBlock(scope: !426, file: !357, line: 123, column: 15)
!768 = !DILocation(line: 127, column: 19, scope: !766)
!769 = !{!495, !476, i64 32}
!770 = !DILocation(line: 127, column: 25, scope: !766)
!771 = !DILocation(line: 127, column: 13, scope: !767)
!772 = !DILocation(line: 128, column: 13, scope: !773)
!773 = distinct !DILexicalBlock(scope: !766, file: !357, line: 127, column: 49)
!774 = !DILocation(line: 128, column: 19, scope: !773)
!775 = !DILocation(line: 128, column: 24, scope: !773)
!776 = !DILocation(line: 129, column: 9, scope: !773)
!777 = !DILocation(line: 132, column: 13, scope: !778)
!778 = distinct !DILexicalBlock(scope: !767, file: !357, line: 132, column: 13)
!779 = !DILocation(line: 132, column: 19, scope: !778)
!780 = !DILocation(line: 132, column: 24, scope: !778)
!781 = !DILocation(line: 132, column: 27, scope: !782)
!782 = !DILexicalBlockFile(scope: !778, file: !357, discriminator: 1)
!783 = !DILocation(line: 132, column: 33, scope: !778)
!784 = !DILocation(line: 132, column: 41, scope: !778)
!785 = !DILocation(line: 132, column: 47, scope: !778)
!786 = !DILocation(line: 132, column: 53, scope: !778)
!787 = !DILocation(line: 132, column: 39, scope: !778)
!788 = !DILocation(line: 132, column: 13, scope: !767)
!789 = !DILocation(line: 133, column: 19, scope: !790)
!790 = distinct !DILexicalBlock(scope: !778, file: !357, line: 132, column: 60)
!791 = !DILocation(line: 133, column: 25, scope: !790)
!792 = !DILocation(line: 133, column: 17, scope: !790)
!793 = !DILocation(line: 135, column: 13, scope: !790)
!794 = !DILocation(line: 135, column: 20, scope: !795)
!795 = !DILexicalBlockFile(scope: !796, file: !357, discriminator: 4)
!796 = !DILexicalBlockFile(scope: !790, file: !357, discriminator: 1)
!797 = !DILocation(line: 135, column: 25, scope: !790)
!798 = !DILocation(line: 135, column: 20, scope: !790)
!799 = !DILocation(line: 135, column: 30, scope: !790)
!800 = !DILocation(line: 135, column: 33, scope: !801)
!801 = !DILexicalBlockFile(scope: !790, file: !357, discriminator: 2)
!802 = !DILocation(line: 135, column: 39, scope: !790)
!803 = !DILocation(line: 135, column: 47, scope: !790)
!804 = !DILocation(line: 135, column: 52, scope: !790)
!805 = !DILocation(line: 135, column: 58, scope: !790)
!806 = !DILocation(line: 135, column: 45, scope: !790)
!807 = !DILocation(line: 135, column: 13, scope: !808)
!808 = !DILexicalBlockFile(scope: !790, file: !357, discriminator: 3)
!809 = !DILocation(line: 136, column: 23, scope: !810)
!810 = distinct !DILexicalBlock(scope: !790, file: !357, line: 135, column: 65)
!811 = !DILocation(line: 136, column: 28, scope: !810)
!812 = !DILocation(line: 136, column: 21, scope: !810)
!813 = !DILocation(line: 139, column: 17, scope: !814)
!814 = distinct !DILexicalBlock(scope: !790, file: !357, line: 139, column: 17)
!815 = !DILocation(line: 139, column: 23, scope: !814)
!816 = !DILocation(line: 139, column: 17, scope: !790)
!817 = !DILocation(line: 140, column: 36, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !357, line: 139, column: 29)
!819 = !DILocation(line: 140, column: 42, scope: !818)
!820 = !DILocation(line: 140, column: 17, scope: !818)
!821 = !DILocation(line: 140, column: 23, scope: !818)
!822 = !DILocation(line: 140, column: 29, scope: !818)
!823 = !DILocation(line: 140, column: 34, scope: !818)
!824 = !DILocation(line: 141, column: 13, scope: !818)
!825 = !DILocation(line: 142, column: 30, scope: !826)
!826 = distinct !DILexicalBlock(scope: !814, file: !357, line: 141, column: 20)
!827 = !DILocation(line: 142, column: 36, scope: !826)
!828 = !DILocation(line: 142, column: 17, scope: !826)
!829 = !DILocation(line: 142, column: 23, scope: !826)
!830 = !DILocation(line: 142, column: 28, scope: !826)
!831 = !DILocation(line: 144, column: 17, scope: !832)
!832 = distinct !DILexicalBlock(scope: !790, file: !357, line: 144, column: 17)
!833 = !DILocation(line: 144, column: 23, scope: !832)
!834 = !DILocation(line: 144, column: 17, scope: !790)
!835 = !DILocation(line: 145, column: 36, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !357, line: 144, column: 29)
!837 = !DILocation(line: 145, column: 42, scope: !836)
!838 = !DILocation(line: 145, column: 17, scope: !836)
!839 = !DILocation(line: 145, column: 23, scope: !836)
!840 = !DILocation(line: 145, column: 29, scope: !836)
!841 = !DILocation(line: 145, column: 34, scope: !836)
!842 = !DILocation(line: 146, column: 13, scope: !836)
!843 = !DILocation(line: 147, column: 17, scope: !844)
!844 = distinct !DILexicalBlock(scope: !790, file: !357, line: 147, column: 17)
!845 = !DILocation(line: 147, column: 22, scope: !844)
!846 = !DILocation(line: 147, column: 17, scope: !790)
!847 = !DILocation(line: 148, column: 35, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !357, line: 147, column: 28)
!849 = !DILocation(line: 148, column: 17, scope: !848)
!850 = !DILocation(line: 148, column: 22, scope: !848)
!851 = !DILocation(line: 148, column: 28, scope: !848)
!852 = !DILocation(line: 148, column: 33, scope: !848)
!853 = !DILocation(line: 149, column: 13, scope: !848)
!854 = !DILocation(line: 150, column: 31, scope: !855)
!855 = distinct !DILexicalBlock(scope: !844, file: !357, line: 149, column: 20)
!856 = !DILocation(line: 150, column: 17, scope: !855)
!857 = !DILocation(line: 150, column: 23, scope: !855)
!858 = !DILocation(line: 150, column: 29, scope: !855)
!859 = !DILocation(line: 153, column: 26, scope: !790)
!860 = !DILocation(line: 153, column: 13, scope: !790)
!861 = !DILocation(line: 153, column: 19, scope: !790)
!862 = !DILocation(line: 153, column: 24, scope: !790)
!863 = !DILocation(line: 154, column: 26, scope: !790)
!864 = !DILocation(line: 154, column: 31, scope: !790)
!865 = !DILocation(line: 154, column: 13, scope: !790)
!866 = !DILocation(line: 154, column: 19, scope: !790)
!867 = !DILocation(line: 154, column: 24, scope: !790)
!868 = !DILocation(line: 155, column: 18, scope: !869)
!869 = distinct !DILexicalBlock(scope: !790, file: !357, line: 155, column: 17)
!870 = !DILocation(line: 155, column: 24, scope: !869)
!871 = !DILocation(line: 155, column: 17, scope: !790)
!872 = !DILocation(line: 156, column: 31, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !357, line: 155, column: 30)
!874 = !DILocation(line: 156, column: 17, scope: !873)
!875 = !DILocation(line: 156, column: 23, scope: !873)
!876 = !DILocation(line: 156, column: 29, scope: !873)
!877 = !DILocation(line: 157, column: 13, scope: !873)
!878 = !DILocation(line: 158, column: 25, scope: !790)
!879 = !DILocation(line: 158, column: 13, scope: !790)
!880 = !DILocation(line: 158, column: 18, scope: !790)
!881 = !DILocation(line: 158, column: 23, scope: !790)
!882 = !DILocation(line: 159, column: 9, scope: !790)
!883 = !DILocation(line: 160, column: 5, scope: !767)
!884 = !DILocation(line: 165, column: 25, scope: !424)
!885 = !DILocation(line: 165, column: 31, scope: !424)
!886 = !DILocation(line: 165, column: 13, scope: !424)
!887 = !DILocation(line: 165, column: 43, scope: !424)
!888 = !DILocation(line: 165, column: 49, scope: !424)
!889 = !DILocation(line: 165, column: 40, scope: !424)
!890 = !DILocation(line: 165, column: 13, scope: !425)
!891 = !DILocation(line: 166, column: 17, scope: !422)
!892 = !DILocation(line: 166, column: 23, scope: !422)
!893 = !DILocation(line: 166, column: 17, scope: !423)
!894 = !DILocation(line: 167, column: 24, scope: !421)
!895 = !DILocation(line: 167, column: 30, scope: !421)
!896 = !DILocation(line: 167, column: 22, scope: !421)
!897 = !DILocation(line: 169, column: 36, scope: !898)
!898 = distinct !DILexicalBlock(scope: !421, file: !357, line: 169, column: 21)
!899 = !DILocation(line: 169, column: 42, scope: !898)
!900 = !DILocation(line: 169, column: 51, scope: !898)
!901 = !DILocation(line: 169, column: 57, scope: !898)
!902 = !DILocation(line: 169, column: 63, scope: !898)
!903 = !DILocation(line: 169, column: 21, scope: !898)
!904 = !DILocation(line: 169, column: 68, scope: !898)
!905 = !DILocation(line: 169, column: 21, scope: !421)
!906 = !DILocation(line: 170, column: 21, scope: !907)
!907 = distinct !DILexicalBlock(scope: !898, file: !357, line: 169, column: 74)
!908 = !DILocation(line: 173, column: 21, scope: !909)
!909 = distinct !DILexicalBlock(scope: !421, file: !357, line: 173, column: 21)
!910 = !DILocation(line: 173, column: 27, scope: !909)
!911 = !DILocation(line: 173, column: 21, scope: !421)
!912 = !DILocation(line: 174, column: 21, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !357, line: 173, column: 33)
!914 = !DILocation(line: 174, column: 27, scope: !913)
!915 = !DILocation(line: 174, column: 33, scope: !913)
!916 = !DILocation(line: 174, column: 38, scope: !913)
!917 = !DILocation(line: 175, column: 17, scope: !913)
!918 = !DILocation(line: 176, column: 30, scope: !421)
!919 = !DILocation(line: 176, column: 36, scope: !421)
!920 = !DILocation(line: 176, column: 17, scope: !421)
!921 = !DILocation(line: 176, column: 23, scope: !421)
!922 = !DILocation(line: 176, column: 28, scope: !421)
!923 = !DILocation(line: 177, column: 17, scope: !421)
!924 = !DILocation(line: 177, column: 23, scope: !421)
!925 = !DILocation(line: 177, column: 28, scope: !421)
!926 = !DILocation(line: 179, column: 17, scope: !421)
!927 = !DILocation(line: 179, column: 22, scope: !928)
!928 = !DILexicalBlockFile(scope: !420, file: !357, discriminator: 1)
!929 = !DILocation(line: 179, column: 32, scope: !420)
!930 = !DILocation(line: 179, column: 62, scope: !420)
!931 = !DILocation(line: 179, column: 49, scope: !420)
!932 = !DILocation(line: 179, column: 77, scope: !933)
!933 = distinct !DILexicalBlock(scope: !420, file: !357, line: 179, column: 74)
!934 = !DILocation(line: 179, column: 94, scope: !933)
!935 = !DILocation(line: 179, column: 74, scope: !933)
!936 = !DILocation(line: 179, column: 104, scope: !933)
!937 = !DILocation(line: 179, column: 74, scope: !420)
!938 = !DILocation(line: 179, column: 74, scope: !939)
!939 = !DILexicalBlockFile(scope: !420, file: !357, discriminator: 2)
!940 = !DILocation(line: 179, column: 135, scope: !941)
!941 = !DILexicalBlockFile(scope: !933, file: !357, discriminator: 3)
!942 = !DILocation(line: 179, column: 153, scope: !933)
!943 = !DILocation(line: 179, column: 163, scope: !933)
!944 = !DILocation(line: 179, column: 188, scope: !933)
!945 = !DILocation(line: 179, column: 119, scope: !933)
!946 = !DILocation(line: 179, column: 207, scope: !947)
!947 = !DILexicalBlockFile(scope: !421, file: !357, discriminator: 4)
!948 = !DILocation(line: 179, column: 207, scope: !420)
!949 = !DILocation(line: 179, column: 207, scope: !950)
!950 = !DILexicalBlockFile(scope: !420, file: !357, discriminator: 5)
!951 = !DILocation(line: 180, column: 13, scope: !421)
!952 = !DILocation(line: 181, column: 9, scope: !423)
!953 = !DILocation(line: 183, column: 38, scope: !425)
!954 = !DILocation(line: 183, column: 44, scope: !425)
!955 = !DILocation(line: 183, column: 58, scope: !425)
!956 = !DILocation(line: 183, column: 16, scope: !425)
!957 = !DILocation(line: 183, column: 14, scope: !425)
!958 = !DILocation(line: 185, column: 14, scope: !959)
!959 = distinct !DILexicalBlock(scope: !425, file: !357, line: 185, column: 13)
!960 = !DILocation(line: 185, column: 13, scope: !425)
!961 = !DILocation(line: 186, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !357, line: 185, column: 20)
!963 = !DILocation(line: 189, column: 34, scope: !425)
!964 = !DILocation(line: 189, column: 39, scope: !425)
!965 = !DILocation(line: 189, column: 16, scope: !425)
!966 = !DILocation(line: 189, column: 14, scope: !425)
!967 = !DILocation(line: 190, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !425, file: !357, line: 190, column: 13)
!969 = !DILocation(line: 190, column: 13, scope: !425)
!970 = !DILocation(line: 191, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !357, line: 190, column: 20)
!972 = !DILocation(line: 193, column: 22, scope: !425)
!973 = !DILocation(line: 193, column: 28, scope: !425)
!974 = !DILocation(line: 193, column: 9, scope: !425)
!975 = !DILocation(line: 193, column: 15, scope: !425)
!976 = !DILocation(line: 193, column: 20, scope: !425)
!977 = !DILocation(line: 195, column: 9, scope: !425)
!978 = !DILocation(line: 195, column: 14, scope: !979)
!979 = !DILexicalBlockFile(scope: !428, file: !357, discriminator: 1)
!980 = !DILocation(line: 195, column: 24, scope: !428)
!981 = !DILocation(line: 195, column: 54, scope: !428)
!982 = !DILocation(line: 195, column: 69, scope: !983)
!983 = distinct !DILexicalBlock(scope: !428, file: !357, line: 195, column: 66)
!984 = !DILocation(line: 195, column: 86, scope: !983)
!985 = !DILocation(line: 195, column: 66, scope: !983)
!986 = !DILocation(line: 195, column: 96, scope: !983)
!987 = !DILocation(line: 195, column: 66, scope: !428)
!988 = !DILocation(line: 195, column: 66, scope: !989)
!989 = !DILexicalBlockFile(scope: !428, file: !357, discriminator: 2)
!990 = !DILocation(line: 195, column: 127, scope: !991)
!991 = !DILexicalBlockFile(scope: !983, file: !357, discriminator: 3)
!992 = !DILocation(line: 195, column: 145, scope: !983)
!993 = !DILocation(line: 195, column: 155, scope: !983)
!994 = !DILocation(line: 195, column: 180, scope: !983)
!995 = !DILocation(line: 195, column: 111, scope: !983)
!996 = !DILocation(line: 195, column: 199, scope: !997)
!997 = !DILexicalBlockFile(scope: !425, file: !357, discriminator: 4)
!998 = !DILocation(line: 195, column: 199, scope: !428)
!999 = !DILocation(line: 195, column: 199, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !428, file: !357, discriminator: 5)
!1001 = !DILocation(line: 197, column: 28, scope: !432)
!1002 = !DILocation(line: 197, column: 34, scope: !432)
!1003 = !DILocation(line: 197, column: 43, scope: !432)
!1004 = !DILocation(line: 197, column: 59, scope: !432)
!1005 = !DILocation(line: 197, column: 48, scope: !432)
!1006 = !DILocation(line: 197, column: 13, scope: !432)
!1007 = !DILocation(line: 197, column: 65, scope: !432)
!1008 = !DILocation(line: 197, column: 13, scope: !425)
!1009 = !DILocation(line: 198, column: 13, scope: !431)
!1010 = !DILocation(line: 198, column: 18, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !430, file: !357, discriminator: 1)
!1012 = !DILocation(line: 198, column: 28, scope: !430)
!1013 = !DILocation(line: 198, column: 58, scope: !430)
!1014 = !DILocation(line: 198, column: 45, scope: !430)
!1015 = !DILocation(line: 198, column: 73, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !430, file: !357, line: 198, column: 70)
!1017 = !DILocation(line: 198, column: 90, scope: !1016)
!1018 = !DILocation(line: 198, column: 70, scope: !1016)
!1019 = !DILocation(line: 198, column: 100, scope: !1016)
!1020 = !DILocation(line: 198, column: 70, scope: !430)
!1021 = !DILocation(line: 198, column: 70, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !430, file: !357, discriminator: 2)
!1023 = !DILocation(line: 198, column: 131, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1016, file: !357, discriminator: 3)
!1025 = !DILocation(line: 198, column: 149, scope: !1016)
!1026 = !DILocation(line: 198, column: 159, scope: !1016)
!1027 = !DILocation(line: 198, column: 184, scope: !1016)
!1028 = !DILocation(line: 198, column: 115, scope: !1016)
!1029 = !DILocation(line: 198, column: 203, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !431, file: !357, discriminator: 4)
!1031 = !DILocation(line: 198, column: 203, scope: !430)
!1032 = !DILocation(line: 198, column: 203, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !430, file: !357, discriminator: 5)
!1034 = !DILocation(line: 199, column: 13, scope: !431)
!1035 = !DILocation(line: 202, column: 13, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !425, file: !357, line: 202, column: 13)
!1037 = !DILocation(line: 202, column: 19, scope: !1036)
!1038 = !DILocation(line: 202, column: 13, scope: !425)
!1039 = !DILocation(line: 203, column: 32, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !357, line: 202, column: 25)
!1041 = !DILocation(line: 203, column: 13, scope: !1040)
!1042 = !DILocation(line: 203, column: 19, scope: !1040)
!1043 = !DILocation(line: 203, column: 25, scope: !1040)
!1044 = !DILocation(line: 203, column: 30, scope: !1040)
!1045 = !DILocation(line: 204, column: 9, scope: !1040)
!1046 = !DILocation(line: 205, column: 27, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !357, line: 204, column: 16)
!1048 = !DILocation(line: 205, column: 13, scope: !1047)
!1049 = !DILocation(line: 205, column: 19, scope: !1047)
!1050 = !DILocation(line: 205, column: 25, scope: !1047)
!1051 = !DILocation(line: 207, column: 22, scope: !425)
!1052 = !DILocation(line: 207, column: 9, scope: !425)
!1053 = !DILocation(line: 207, column: 15, scope: !425)
!1054 = !DILocation(line: 207, column: 20, scope: !425)
!1055 = !DILocation(line: 210, column: 21, scope: !409)
!1056 = !DILocation(line: 210, column: 27, scope: !409)
!1057 = !DILocation(line: 210, column: 35, scope: !409)
!1058 = !DILocation(line: 210, column: 44, scope: !409)
!1059 = !DILocation(line: 211, column: 12, scope: !409)
!1060 = !DILocation(line: 211, column: 18, scope: !409)
!1061 = !DILocation(line: 211, column: 5, scope: !409)
!1062 = !DILocation(line: 212, column: 1, scope: !409)
!1063 = !DILocation(line: 214, column: 50, scope: !433)
!1064 = !DILocation(line: 214, column: 66, scope: !433)
!1065 = !DILocation(line: 216, column: 5, scope: !433)
!1066 = !DILocation(line: 216, column: 20, scope: !433)
!1067 = !DILocation(line: 217, column: 5, scope: !433)
!1068 = !DILocation(line: 217, column: 15, scope: !433)
!1069 = !DILocation(line: 218, column: 5, scope: !433)
!1070 = !DILocation(line: 218, column: 15, scope: !433)
!1071 = !DILocation(line: 219, column: 5, scope: !433)
!1072 = !DILocation(line: 219, column: 15, scope: !433)
!1073 = !DILocation(line: 221, column: 11, scope: !433)
!1074 = !DILocation(line: 221, column: 17, scope: !433)
!1075 = !DILocation(line: 221, column: 9, scope: !433)
!1076 = !DILocation(line: 223, column: 5, scope: !433)
!1077 = !DILocation(line: 223, column: 12, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !357, discriminator: 2)
!1079 = !DILexicalBlockFile(scope: !433, file: !357, discriminator: 1)
!1080 = !DILocation(line: 224, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !443, file: !357, line: 224, column: 13)
!1082 = !DILocation(line: 224, column: 18, scope: !1081)
!1083 = !DILocation(line: 224, column: 13, scope: !443)
!1084 = !DILocation(line: 225, column: 23, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !357, line: 224, column: 24)
!1086 = !DILocation(line: 225, column: 28, scope: !1085)
!1087 = !DILocation(line: 225, column: 34, scope: !1085)
!1088 = !DILocation(line: 225, column: 21, scope: !1085)
!1089 = !DILocation(line: 226, column: 9, scope: !1085)
!1090 = !DILocation(line: 227, column: 21, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1081, file: !357, line: 226, column: 16)
!1092 = !DILocation(line: 230, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !443, file: !357, line: 230, column: 13)
!1094 = !DILocation(line: 230, column: 18, scope: !1093)
!1095 = !DILocation(line: 230, column: 13, scope: !443)
!1096 = !DILocation(line: 231, column: 23, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !357, line: 230, column: 24)
!1098 = !DILocation(line: 231, column: 28, scope: !1097)
!1099 = !DILocation(line: 231, column: 34, scope: !1097)
!1100 = !DILocation(line: 231, column: 21, scope: !1097)
!1101 = !DILocation(line: 232, column: 9, scope: !1097)
!1102 = !DILocation(line: 233, column: 21, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !357, line: 232, column: 16)
!1104 = !DILocation(line: 237, column: 44, scope: !443)
!1105 = !DILocation(line: 237, column: 53, scope: !443)
!1106 = !DILocation(line: 237, column: 58, scope: !443)
!1107 = !DILocation(line: 237, column: 63, scope: !443)
!1108 = !DILocation(line: 236, column: 23, scope: !443)
!1109 = !DILocation(line: 236, column: 21, scope: !443)
!1110 = !DILocation(line: 238, column: 14, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !443, file: !357, line: 238, column: 13)
!1112 = !DILocation(line: 238, column: 13, scope: !443)
!1113 = !DILocation(line: 239, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !357, line: 238, column: 27)
!1115 = !DILocation(line: 241, column: 24, scope: !443)
!1116 = !DILocation(line: 241, column: 37, scope: !443)
!1117 = !DILocation(line: 241, column: 9, scope: !443)
!1118 = !DILocation(line: 242, column: 9, scope: !443)
!1119 = !DILocation(line: 242, column: 14, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !442, file: !357, discriminator: 1)
!1121 = !DILocation(line: 242, column: 24, scope: !442)
!1122 = !DILocation(line: 242, column: 54, scope: !442)
!1123 = !DILocation(line: 242, column: 76, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !442, file: !357, line: 242, column: 73)
!1125 = !DILocation(line: 242, column: 93, scope: !1124)
!1126 = !DILocation(line: 242, column: 73, scope: !1124)
!1127 = !DILocation(line: 242, column: 103, scope: !1124)
!1128 = !DILocation(line: 242, column: 73, scope: !442)
!1129 = !DILocation(line: 242, column: 73, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !442, file: !357, discriminator: 2)
!1131 = !DILocation(line: 242, column: 134, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1124, file: !357, discriminator: 3)
!1133 = !DILocation(line: 242, column: 152, scope: !1124)
!1134 = !DILocation(line: 242, column: 162, scope: !1124)
!1135 = !DILocation(line: 242, column: 187, scope: !1124)
!1136 = !DILocation(line: 242, column: 118, scope: !1124)
!1137 = !DILocation(line: 242, column: 206, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !443, file: !357, discriminator: 4)
!1139 = !DILocation(line: 242, column: 206, scope: !442)
!1140 = !DILocation(line: 242, column: 206, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !442, file: !357, discriminator: 5)
!1142 = !DILocation(line: 244, column: 15, scope: !443)
!1143 = !DILocation(line: 244, column: 20, scope: !443)
!1144 = !DILocation(line: 244, column: 13, scope: !443)
!1145 = !DILocation(line: 247, column: 51, scope: !433)
!1146 = !DILocation(line: 248, column: 5, scope: !433)
!1147 = !DILocation(line: 249, column: 1, scope: !433)
!1148 = !DILocation(line: 345, column: 5, scope: !444)
!1149 = !DILocation(line: 345, column: 9, scope: !444)
!1150 = !DILocation(line: 347, column: 30, scope: !444)
!1151 = !{!473, !463, i64 312}
!1152 = !DILocation(line: 348, column: 31, scope: !444)
!1153 = !DILocation(line: 350, column: 10, scope: !444)
!1154 = !DILocation(line: 350, column: 8, scope: !444)
!1155 = !DILocation(line: 351, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !444, file: !357, line: 351, column: 9)
!1157 = !DILocation(line: 351, column: 12, scope: !1156)
!1158 = !DILocation(line: 351, column: 9, scope: !444)
!1159 = !DILocation(line: 352, column: 16, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !357, line: 351, column: 17)
!1161 = !DILocation(line: 352, column: 9, scope: !1160)
!1162 = !DILocation(line: 355, column: 10, scope: !444)
!1163 = !DILocation(line: 355, column: 8, scope: !444)
!1164 = !DILocation(line: 356, column: 12, scope: !444)
!1165 = !DILocation(line: 356, column: 5, scope: !444)
!1166 = !DILocation(line: 357, column: 1, scope: !444)
