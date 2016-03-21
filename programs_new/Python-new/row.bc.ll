; ModuleID = 'irs-onlybc/row.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Row = type { %struct._object, %struct._object*, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@.str = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@pysqlite_CursorType = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"instance of cursor required for first argument\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"tuple required for second argument\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"No item with that key\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"slices not implemented, yet\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Index must be int or string\00", align 1
@pysqlite_row_as_mapping = global %struct.PyMappingMethods { i64 (%struct._object*)* bitcast (i64 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_length to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._Row*, %struct._object*)* @pysqlite_row_subscript to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* null }, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"sqlite3.Row\00", align 1
@pysqlite_row_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_keys to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@pysqlite_RowType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct._Row*)* @pysqlite_row_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* bitcast (i32 (%struct._Row*, %struct._IO_FILE*, i32)* @pysqlite_row_print to i32 (%struct._object*, %struct._IO_FILE*, i32)*), %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct._Row*)* @pysqlite_row_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* bitcast (%struct._object* (%struct._Row*, %struct._object*, i32)* @pysqlite_row_richcompare to %struct._object* (%struct._object*, %struct._object*, i32)*), i64 0, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._Row*)* @pysqlite_iter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @pysqlite_row_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Returns the keys of the row.\00", align 1

; Function Attrs: nounwind uwtable
define void @pysqlite_row_dealloc(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !373, metadata !590), !dbg !591
  br label %do.body, !dbg !592

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !593
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !593
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !374, metadata !590), !dbg !595
  %1 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !596, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %1, i32 0, i32 1, !dbg !597
  %2 = load %struct._object*, %struct._object** %data, align 8, !dbg !597, !tbaa !598
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8, !dbg !595, !tbaa !586
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !602, !tbaa !586
  %cmp = icmp ne %struct._object* %3, null, !dbg !603
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !604

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !605

do.body.1:                                        ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !607
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !607
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !376, metadata !590), !dbg !609
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !610, !tbaa !586
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !609, !tbaa !586
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !611, !tbaa !586
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !613
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !614, !tbaa !615
  %dec = add i64 %7, -1, !dbg !614
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !614, !tbaa !615
  %cmp2 = icmp ne i64 %dec, 0, !dbg !616
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !617

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !618

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !620, !tbaa !586
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !622
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !622, !tbaa !623
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !624
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !624, !tbaa !625
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !629, !tbaa !586
  call void %10(%struct._object* %11), !dbg !630
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !631
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !631
  br label %do.cond, !dbg !633

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !634

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !636

if.end.4:                                         ; preds = %do.end, %do.body
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !638
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !638
  br label %do.end.6, !dbg !641

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !642

do.body.7:                                        ; preds = %do.end.6
  %14 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !643
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !379, metadata !590), !dbg !645
  %15 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !646, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %15, i32 0, i32 2, !dbg !647
  %16 = load %struct._object*, %struct._object** %description, align 8, !dbg !647, !tbaa !648
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !645, !tbaa !586
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !649, !tbaa !586
  %cmp9 = icmp ne %struct._object* %17, null, !dbg !650
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !651

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !652

do.body.11:                                       ; preds = %if.then.10
  %18 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !654
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !654
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !381, metadata !590), !dbg !656
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !657, !tbaa !586
  store %struct._object* %19, %struct._object** %_py_decref_tmp12, align 8, !dbg !656, !tbaa !586
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !658, !tbaa !586
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !660
  %21 = load i64, i64* %ob_refcnt13, align 8, !dbg !661, !tbaa !615
  %dec14 = add i64 %21, -1, !dbg !661
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !661, !tbaa !615
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !662
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !663

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !664

if.else.17:                                       ; preds = %do.body.11
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !666, !tbaa !586
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !668
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !668, !tbaa !623
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !669
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !669, !tbaa !625
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !670, !tbaa !586
  call void %24(%struct._object* %25), !dbg !671
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %26 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !672
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !672
  br label %do.cond.21, !dbg !674

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !675

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !677

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %27 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !679
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !679
  br label %do.end.25, !dbg !680

do.end.25:                                        ; preds = %if.end.23
  %28 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !681, !tbaa !586
  %29 = bitcast %struct._Row* %28 to %struct._object*, !dbg !682
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !683
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !683, !tbaa !623
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 38, !dbg !684
  %31 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !684, !tbaa !685
  %32 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !686, !tbaa !586
  %33 = bitcast %struct._Row* %32 to %struct._object*, !dbg !687
  %34 = bitcast %struct._object* %33 to i8*, !dbg !687
  call void %31(i8* %34), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pysqlite_row_init(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %cursor = alloca %struct.pysqlite_Cursor*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !388, metadata !590), !dbg !690
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !389, metadata !590), !dbg !691
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !390, metadata !590), !dbg !692
  %0 = bitcast %struct._object** %data to i8*, !dbg !693
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !693
  call void @llvm.dbg.declare(metadata %struct._object** %data, metadata !391, metadata !590), !dbg !694
  %1 = bitcast %struct.pysqlite_Cursor** %cursor to i8*, !dbg !695
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !695
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %cursor, metadata !392, metadata !590), !dbg !696
  %2 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !697, !tbaa !586
  %data1 = getelementptr inbounds %struct._Row, %struct._Row* %2, i32 0, i32 1, !dbg !698
  store %struct._object* null, %struct._object** %data1, align 8, !dbg !699, !tbaa !598
  %3 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !700, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %3, i32 0, i32 2, !dbg !701
  store %struct._object* null, %struct._object** %description, align 8, !dbg !702, !tbaa !648
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !703, !tbaa !586
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct.pysqlite_Cursor** %cursor, %struct._object** %data), !dbg !705
  %tobool = icmp ne i32 %call, 0, !dbg !705
  br i1 %tobool, label %if.end, label %if.then, !dbg !706

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !707
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !707

if.end:                                           ; preds = %entry
  %5 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !709, !tbaa !586
  %6 = bitcast %struct.pysqlite_Cursor* %5 to %struct._object*, !dbg !711
  %call2 = call i32 @PyObject_IsInstance(%struct._object* %6, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0)), !dbg !712
  %tobool3 = icmp ne i32 %call2, 0, !dbg !712
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !713

if.then.4:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !714, !tbaa !586
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0)), !dbg !716
  store i32 -1, i32* %retval, !dbg !717
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !717

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %data, align 8, !dbg !718, !tbaa !586
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !720
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !720, !tbaa !623
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !721
  %10 = load i64, i64* %tp_flags, align 8, !dbg !721, !tbaa !722
  %and = and i64 %10, 67108864, !dbg !723
  %cmp = icmp ne i64 %and, 0, !dbg !724
  br i1 %cmp, label %if.end.7, label %if.then.6, !dbg !725

if.then.6:                                        ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !726, !tbaa !586
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0)), !dbg !728
  store i32 -1, i32* %retval, !dbg !729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !729

if.end.7:                                         ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %data, align 8, !dbg !730, !tbaa !586
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !731
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !732, !tbaa !615
  %inc = add i64 %13, 1, !dbg !732
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !732, !tbaa !615
  %14 = load %struct._object*, %struct._object** %data, align 8, !dbg !733, !tbaa !586
  %15 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !734, !tbaa !586
  %data8 = getelementptr inbounds %struct._Row, %struct._Row* %15, i32 0, i32 1, !dbg !735
  store %struct._object* %14, %struct._object** %data8, align 8, !dbg !736, !tbaa !598
  %16 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !737, !tbaa !586
  %description9 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %16, i32 0, i32 2, !dbg !738
  %17 = load %struct._object*, %struct._object** %description9, align 8, !dbg !738, !tbaa !739
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !741
  %18 = load i64, i64* %ob_refcnt10, align 8, !dbg !742, !tbaa !615
  %inc11 = add i64 %18, 1, !dbg !742
  store i64 %inc11, i64* %ob_refcnt10, align 8, !dbg !742, !tbaa !615
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !743, !tbaa !586
  %description12 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 2, !dbg !744
  %20 = load %struct._object*, %struct._object** %description12, align 8, !dbg !744, !tbaa !739
  %21 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !745, !tbaa !586
  %description13 = getelementptr inbounds %struct._Row, %struct._Row* %21, i32 0, i32 2, !dbg !746
  store %struct._object* %20, %struct._object** %description13, align 8, !dbg !747, !tbaa !648
  store i32 0, i32* %retval, !dbg !748
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !748

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.4, %if.then
  %22 = bitcast %struct.pysqlite_Cursor** %cursor to i8*, !dbg !749
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !749
  %23 = bitcast %struct._object** %data to i8*, !dbg !749
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !749
  %24 = load i32, i32* %retval, !dbg !749
  ret i32 %24, !dbg !749
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @PyObject_IsInstance(%struct._object*, %struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_row_subscript(%struct._Row* %self, %struct._object* %idx) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %idx.addr = alloca %struct._object*, align 8
  %_idx = alloca i64, align 8
  %key = alloca i8*, align 8
  %nitems = alloca i64, align 8
  %i = alloca i64, align 8
  %compare_key = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %item = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %obj = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !494, metadata !590), !dbg !750
  store %struct._object* %idx, %struct._object** %idx.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %idx.addr, metadata !495, metadata !590), !dbg !751
  %0 = bitcast i64* %_idx to i8*, !dbg !752
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !752
  call void @llvm.dbg.declare(metadata i64* %_idx, metadata !496, metadata !590), !dbg !753
  %1 = bitcast i8** %key to i8*, !dbg !754
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !754
  call void @llvm.dbg.declare(metadata i8** %key, metadata !497, metadata !590), !dbg !755
  %2 = bitcast i64* %nitems to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !756
  call void @llvm.dbg.declare(metadata i64* %nitems, metadata !498, metadata !590), !dbg !757
  %3 = bitcast i64* %i to i8*, !dbg !756
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !756
  call void @llvm.dbg.declare(metadata i64* %i, metadata !499, metadata !590), !dbg !758
  %4 = bitcast i8** %compare_key to i8*, !dbg !759
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !759
  call void @llvm.dbg.declare(metadata i8** %compare_key, metadata !500, metadata !590), !dbg !760
  %5 = bitcast i8** %p1 to i8*, !dbg !761
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !761
  call void @llvm.dbg.declare(metadata i8** %p1, metadata !501, metadata !590), !dbg !762
  %6 = bitcast i8** %p2 to i8*, !dbg !763
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !763
  call void @llvm.dbg.declare(metadata i8** %p2, metadata !502, metadata !590), !dbg !764
  %7 = bitcast %struct._object** %item to i8*, !dbg !765
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !765
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !503, metadata !590), !dbg !766
  %8 = load %struct._object*, %struct._object** %idx.addr, align 8, !dbg !767, !tbaa !586
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !768
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !768, !tbaa !623
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !769
  %10 = load i64, i64* %tp_flags, align 8, !dbg !769, !tbaa !722
  %and = and i64 %10, 16777216, !dbg !770
  %cmp = icmp ne i64 %and, 0, !dbg !771
  br i1 %cmp, label %if.then, label %if.else, !dbg !772

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %idx.addr, align 8, !dbg !773, !tbaa !586
  %call = call i64 @PyLong_AsLong(%struct._object* %11), !dbg !774
  store i64 %call, i64* %_idx, align 8, !dbg !775, !tbaa !776
  %12 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !777, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %12, i32 0, i32 1, !dbg !778
  %13 = load %struct._object*, %struct._object** %data, align 8, !dbg !778, !tbaa !598
  %14 = load i64, i64* %_idx, align 8, !dbg !779, !tbaa !776
  %call1 = call %struct._object* @PyTuple_GetItem(%struct._object* %13, i64 %14), !dbg !780
  store %struct._object* %call1, %struct._object** %item, align 8, !dbg !781, !tbaa !586
  br label %do.body, !dbg !782

do.body:                                          ; preds = %if.then
  %15 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !783
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !783
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !504, metadata !590), !dbg !785
  %16 = load %struct._object*, %struct._object** %item, align 8, !dbg !786, !tbaa !586
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8, !dbg !785, !tbaa !586
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !787, !tbaa !586
  %cmp2 = icmp ne %struct._object* %17, null, !dbg !789
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !790

if.then.3:                                        ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !791, !tbaa !586
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !793
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !794, !tbaa !615
  %inc = add i64 %19, 1, !dbg !794
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !794, !tbaa !615
  br label %if.end, !dbg !795

if.end:                                           ; preds = %if.then.3, %do.body
  %20 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !796
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !796
  br label %do.cond, !dbg !799

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !800

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %item, align 8, !dbg !802, !tbaa !586
  store %struct._object* %21, %struct._object** %retval, !dbg !803
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !803

if.else:                                          ; preds = %entry
  %22 = load %struct._object*, %struct._object** %idx.addr, align 8, !dbg !804, !tbaa !586
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !805
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !805, !tbaa !623
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19, !dbg !806
  %24 = load i64, i64* %tp_flags5, align 8, !dbg !806, !tbaa !722
  %and6 = and i64 %24, 268435456, !dbg !807
  %cmp7 = icmp ne i64 %and6, 0, !dbg !808
  br i1 %cmp7, label %if.then.8, label %if.else.49, !dbg !809

if.then.8:                                        ; preds = %if.else
  %25 = load %struct._object*, %struct._object** %idx.addr, align 8, !dbg !810, !tbaa !586
  %call9 = call i8* @PyUnicode_AsUTF8(%struct._object* %25), !dbg !811
  store i8* %call9, i8** %key, align 8, !dbg !812, !tbaa !586
  %26 = load i8*, i8** %key, align 8, !dbg !813, !tbaa !586
  %cmp10 = icmp eq i8* %26, null, !dbg !815
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !816

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval, !dbg !817
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !817

if.end.12:                                        ; preds = %if.then.8
  %27 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !818, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %27, i32 0, i32 2, !dbg !819
  %28 = load %struct._object*, %struct._object** %description, align 8, !dbg !819, !tbaa !648
  %call13 = call i64 @PyTuple_Size(%struct._object* %28), !dbg !820
  store i64 %call13, i64* %nitems, align 8, !dbg !821, !tbaa !776
  store i64 0, i64* %i, align 8, !dbg !822, !tbaa !776
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.inc, %if.end.12
  %29 = load i64, i64* %i, align 8, !dbg !824, !tbaa !776
  %30 = load i64, i64* %nitems, align 8, !dbg !827, !tbaa !776
  %cmp14 = icmp slt i64 %29, %30, !dbg !828
  br i1 %cmp14, label %for.body, label %for.end, !dbg !829

for.body:                                         ; preds = %for.cond
  %31 = bitcast %struct._object** %obj to i8*, !dbg !830
  call void @llvm.lifetime.start(i64 8, i8* %31) #2, !dbg !830
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !508, metadata !590), !dbg !831
  %32 = load i64, i64* %i, align 8, !dbg !832, !tbaa !776
  %33 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !833, !tbaa !586
  %description15 = getelementptr inbounds %struct._Row, %struct._Row* %33, i32 0, i32 2, !dbg !834
  %34 = load %struct._object*, %struct._object** %description15, align 8, !dbg !834, !tbaa !648
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*, !dbg !835
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1, !dbg !836
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %32, !dbg !837
  %36 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !837, !tbaa !586
  store %struct._object* %36, %struct._object** %obj, align 8, !dbg !838, !tbaa !586
  %37 = load %struct._object*, %struct._object** %obj, align 8, !dbg !839, !tbaa !586
  %38 = bitcast %struct._object* %37 to %struct.PyTupleObject*, !dbg !840
  %ob_item16 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %38, i32 0, i32 1, !dbg !841
  %arrayidx17 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item16, i32 0, i64 0, !dbg !842
  %39 = load %struct._object*, %struct._object** %arrayidx17, align 8, !dbg !842, !tbaa !586
  store %struct._object* %39, %struct._object** %obj, align 8, !dbg !843, !tbaa !586
  %40 = load %struct._object*, %struct._object** %obj, align 8, !dbg !844, !tbaa !586
  %call18 = call i8* @PyUnicode_AsUTF8(%struct._object* %40), !dbg !845
  store i8* %call18, i8** %compare_key, align 8, !dbg !846, !tbaa !586
  %41 = load i8*, i8** %compare_key, align 8, !dbg !847, !tbaa !586
  %tobool = icmp ne i8* %41, null, !dbg !847
  br i1 %tobool, label %if.end.20, label %if.then.19, !dbg !849

if.then.19:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval, !dbg !850
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !850

if.end.20:                                        ; preds = %for.body
  %42 = load i8*, i8** %key, align 8, !dbg !852, !tbaa !586
  store i8* %42, i8** %p1, align 8, !dbg !853, !tbaa !586
  %43 = load i8*, i8** %compare_key, align 8, !dbg !854, !tbaa !586
  store i8* %43, i8** %p2, align 8, !dbg !855, !tbaa !586
  br label %while.cond, !dbg !856

while.cond:                                       ; preds = %if.end.34, %if.end.20
  br label %while.body, !dbg !857

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %p1, align 8, !dbg !860, !tbaa !586
  %45 = load i8, i8* %44, align 1, !dbg !863, !tbaa !864
  %conv = sext i8 %45 to i32, !dbg !863
  %cmp21 = icmp eq i32 %conv, 0, !dbg !865
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false, !dbg !866

lor.lhs.false:                                    ; preds = %while.body
  %46 = load i8*, i8** %p2, align 8, !dbg !867, !tbaa !586
  %47 = load i8, i8* %46, align 1, !dbg !869, !tbaa !864
  %conv23 = sext i8 %47 to i32, !dbg !869
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !870
  br i1 %cmp24, label %if.then.26, label %if.end.27, !dbg !871

if.then.26:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !872

if.end.27:                                        ; preds = %lor.lhs.false
  %48 = load i8*, i8** %p1, align 8, !dbg !874, !tbaa !586
  %49 = load i8, i8* %48, align 1, !dbg !876, !tbaa !864
  %conv28 = sext i8 %49 to i32, !dbg !876
  %or = or i32 %conv28, 32, !dbg !877
  %50 = load i8*, i8** %p2, align 8, !dbg !878, !tbaa !586
  %51 = load i8, i8* %50, align 1, !dbg !879, !tbaa !864
  %conv29 = sext i8 %51 to i32, !dbg !879
  %or30 = or i32 %conv29, 32, !dbg !880
  %cmp31 = icmp ne i32 %or, %or30, !dbg !881
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !882

if.then.33:                                       ; preds = %if.end.27
  br label %while.end, !dbg !883

if.end.34:                                        ; preds = %if.end.27
  %52 = load i8*, i8** %p1, align 8, !dbg !885, !tbaa !586
  %incdec.ptr = getelementptr i8, i8* %52, i32 1, !dbg !885
  store i8* %incdec.ptr, i8** %p1, align 8, !dbg !885, !tbaa !586
  %53 = load i8*, i8** %p2, align 8, !dbg !886, !tbaa !586
  %incdec.ptr35 = getelementptr i8, i8* %53, i32 1, !dbg !886
  store i8* %incdec.ptr35, i8** %p2, align 8, !dbg !886, !tbaa !586
  br label %while.cond, !dbg !856

while.end:                                        ; preds = %if.then.33, %if.then.26
  %54 = load i8*, i8** %p1, align 8, !dbg !887, !tbaa !586
  %55 = load i8, i8* %54, align 1, !dbg !889, !tbaa !864
  %conv36 = sext i8 %55 to i32, !dbg !889
  %cmp37 = icmp eq i32 %conv36, 0, !dbg !890
  br i1 %cmp37, label %land.lhs.true, label %if.end.47, !dbg !891

land.lhs.true:                                    ; preds = %while.end
  %56 = load i8*, i8** %p2, align 8, !dbg !892, !tbaa !586
  %57 = load i8, i8* %56, align 1, !dbg !894, !tbaa !864
  %conv39 = sext i8 %57 to i32, !dbg !894
  %cmp40 = icmp eq i32 %conv39, 0, !dbg !895
  br i1 %cmp40, label %if.then.42, label %if.end.47, !dbg !896

if.then.42:                                       ; preds = %land.lhs.true
  %58 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !897, !tbaa !586
  %data43 = getelementptr inbounds %struct._Row, %struct._Row* %58, i32 0, i32 1, !dbg !899
  %59 = load %struct._object*, %struct._object** %data43, align 8, !dbg !899, !tbaa !598
  %60 = load i64, i64* %i, align 8, !dbg !900, !tbaa !776
  %call44 = call %struct._object* @PyTuple_GetItem(%struct._object* %59, i64 %60), !dbg !901
  store %struct._object* %call44, %struct._object** %item, align 8, !dbg !902, !tbaa !586
  %61 = load %struct._object*, %struct._object** %item, align 8, !dbg !903, !tbaa !586
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !904
  %62 = load i64, i64* %ob_refcnt45, align 8, !dbg !905, !tbaa !615
  %inc46 = add i64 %62, 1, !dbg !905
  store i64 %inc46, i64* %ob_refcnt45, align 8, !dbg !905, !tbaa !615
  %63 = load %struct._object*, %struct._object** %item, align 8, !dbg !906, !tbaa !586
  store %struct._object* %63, %struct._object** %retval, !dbg !907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !907

if.end.47:                                        ; preds = %land.lhs.true, %while.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !908
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %if.end.47, %if.then.42, %if.then.19
  %64 = bitcast %struct._object** %obj to i8*, !dbg !909
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !909
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !910

for.inc:                                          ; preds = %cleanup.cont
  %65 = load i64, i64* %i, align 8, !dbg !911, !tbaa !776
  %inc48 = add i64 %65, 1, !dbg !911
  store i64 %inc48, i64* %i, align 8, !dbg !911, !tbaa !776
  br label %for.cond, !dbg !912

for.end:                                          ; preds = %for.cond
  %66 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !913, !tbaa !586
  call void @PyErr_SetString(%struct._object* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)), !dbg !914
  store %struct._object* null, %struct._object** %retval, !dbg !915
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !915

if.else.49:                                       ; preds = %if.else
  %67 = load %struct._object*, %struct._object** %idx.addr, align 8, !dbg !916, !tbaa !586
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !918
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8, !dbg !918, !tbaa !623
  %cmp51 = icmp eq %struct._typeobject* %68, @PySlice_Type, !dbg !919
  br i1 %cmp51, label %if.then.53, label %if.else.54, !dbg !920

if.then.53:                                       ; preds = %if.else.49
  %69 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !921, !tbaa !586
  call void @PyErr_SetString(%struct._object* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)), !dbg !923
  store %struct._object* null, %struct._object** %retval, !dbg !924
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !924

if.else.54:                                       ; preds = %if.else.49
  %70 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8, !dbg !925, !tbaa !586
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)), !dbg !927
  store %struct._object* null, %struct._object** %retval, !dbg !928
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55, !dbg !928

cleanup.55:                                       ; preds = %if.else.54, %if.then.53, %for.end, %cleanup, %if.then.11, %do.end
  %71 = bitcast %struct._object** %item to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !929
  %72 = bitcast i8** %p2 to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !929
  %73 = bitcast i8** %p1 to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %73) #2, !dbg !929
  %74 = bitcast i8** %compare_key to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !929
  %75 = bitcast i64* %i to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !929
  %76 = bitcast i64* %nitems to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !929
  %77 = bitcast i8** %key to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !929
  %78 = bitcast i64* %_idx to i8*, !dbg !929
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !929
  %79 = load %struct._object*, %struct._object** %retval, !dbg !929
  ret %struct._object* %79, !dbg !929
}

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare i64 @PyTuple_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define i64 @pysqlite_row_length(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !518, metadata !590), !dbg !930
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !519, metadata !590), !dbg !931
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !520, metadata !590), !dbg !932
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !933, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1, !dbg !934
  %1 = load %struct._object*, %struct._object** %data, align 8, !dbg !934, !tbaa !598
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*, !dbg !935
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1, !dbg !936
  %3 = load i64, i64* %ob_size, align 8, !dbg !936, !tbaa !937
  ret i64 %3, !dbg !938
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_row_keys(%struct._Row* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %nitems = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !525, metadata !590), !dbg !939
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !526, metadata !590), !dbg !940
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !527, metadata !590), !dbg !941
  %0 = bitcast %struct._object** %list to i8*, !dbg !942
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !942
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !528, metadata !590), !dbg !943
  %1 = bitcast i32* %nitems to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !944
  call void @llvm.dbg.declare(metadata i32* %nitems, metadata !529, metadata !590), !dbg !945
  %2 = bitcast i32* %i to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !944
  call void @llvm.dbg.declare(metadata i32* %i, metadata !530, metadata !590), !dbg !946
  %call = call %struct._object* @PyList_New(i64 0), !dbg !947
  store %struct._object* %call, %struct._object** %list, align 8, !dbg !948, !tbaa !586
  %3 = load %struct._object*, %struct._object** %list, align 8, !dbg !949, !tbaa !586
  %tobool = icmp ne %struct._object* %3, null, !dbg !949
  br i1 %tobool, label %if.end, label %if.then, !dbg !951

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !952
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !952

if.end:                                           ; preds = %entry
  %4 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !954, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %4, i32 0, i32 2, !dbg !955
  %5 = load %struct._object*, %struct._object** %description, align 8, !dbg !955, !tbaa !648
  %call1 = call i64 @PyTuple_Size(%struct._object* %5), !dbg !956
  %conv = trunc i64 %call1 to i32, !dbg !956
  store i32 %conv, i32* %nitems, align 4, !dbg !957, !tbaa !958
  store i32 0, i32* %i, align 4, !dbg !959, !tbaa !958
  br label %for.cond, !dbg !960

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !961, !tbaa !958
  %7 = load i32, i32* %nitems, align 4, !dbg !964, !tbaa !958
  %cmp = icmp slt i32 %6, %7, !dbg !965
  br i1 %cmp, label %for.body, label %for.end, !dbg !966

for.body:                                         ; preds = %for.cond
  %8 = load %struct._object*, %struct._object** %list, align 8, !dbg !967, !tbaa !586
  %9 = load i32, i32* %i, align 4, !dbg !968, !tbaa !958
  %idxprom = sext i32 %9 to i64, !dbg !969
  %10 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !970, !tbaa !586
  %description3 = getelementptr inbounds %struct._Row, %struct._Row* %10, i32 0, i32 2, !dbg !971
  %11 = load %struct._object*, %struct._object** %description3, align 8, !dbg !971, !tbaa !648
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*, !dbg !972
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1, !dbg !973
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !969
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !969, !tbaa !586
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*, !dbg !974
  %ob_item4 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1, !dbg !975
  %arrayidx5 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item4, i32 0, i64 0, !dbg !976
  %15 = load %struct._object*, %struct._object** %arrayidx5, align 8, !dbg !976, !tbaa !586
  %call6 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %15), !dbg !977
  %cmp7 = icmp ne i32 %call6, 0, !dbg !978
  br i1 %cmp7, label %if.then.9, label %if.end.14, !dbg !979

if.then.9:                                        ; preds = %for.body
  br label %do.body, !dbg !980

do.body:                                          ; preds = %if.then.9
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !981
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !981
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !531, metadata !590), !dbg !983
  %17 = load %struct._object*, %struct._object** %list, align 8, !dbg !984, !tbaa !586
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !983, !tbaa !586
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !985, !tbaa !586
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !987
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !988, !tbaa !615
  %dec = add i64 %19, -1, !dbg !988
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !988, !tbaa !615
  %cmp10 = icmp ne i64 %dec, 0, !dbg !989
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !990

if.then.12:                                       ; preds = %do.body
  br label %if.end.13, !dbg !991

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !993, !tbaa !586
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !995
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !995, !tbaa !623
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !996
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !996, !tbaa !625
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !997, !tbaa !586
  call void %22(%struct._object* %23), !dbg !998
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !999
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !999
  br label %do.cond, !dbg !1001

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1002

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1004
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1004

if.end.14:                                        ; preds = %for.body
  br label %for.inc, !dbg !1005

for.inc:                                          ; preds = %if.end.14
  %25 = load i32, i32* %i, align 4, !dbg !1006, !tbaa !958
  %inc = add i32 %25, 1, !dbg !1006
  store i32 %inc, i32* %i, align 4, !dbg !1006, !tbaa !958
  br label %for.cond, !dbg !1007

for.end:                                          ; preds = %for.cond
  %26 = load %struct._object*, %struct._object** %list, align 8, !dbg !1008, !tbaa !586
  store %struct._object* %26, %struct._object** %retval, !dbg !1009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1009

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  %27 = bitcast i32* %i to i8*, !dbg !1010
  call void @llvm.lifetime.end(i64 4, i8* %27) #2, !dbg !1010
  %28 = bitcast i32* %nitems to i8*, !dbg !1010
  call void @llvm.lifetime.end(i64 4, i8* %28) #2, !dbg !1010
  %29 = bitcast %struct._object** %list to i8*, !dbg !1010
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !1010
  %30 = load %struct._object*, %struct._object** %retval, !dbg !1010
  ret %struct._object* %30, !dbg !1010
}

declare %struct._object* @PyList_New(i64) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_row_print(%struct._Row* %self, %struct._IO_FILE* %fp, i32 %flags) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !545, metadata !590), !dbg !1011
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !546, metadata !590), !dbg !1012
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !958
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !547, metadata !590), !dbg !1013
  %0 = load i32 (%struct._object*, %struct._IO_FILE*, i32)*, i32 (%struct._object*, %struct._IO_FILE*, i32)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyTuple_Type, i32 0, i32 5), align 8, !dbg !1014, !tbaa !1015
  %1 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1016, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %1, i32 0, i32 1, !dbg !1017
  %2 = load %struct._object*, %struct._object** %data, align 8, !dbg !1017, !tbaa !598
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1018, !tbaa !586
  %4 = load i32, i32* %flags.addr, align 4, !dbg !1019, !tbaa !958
  %call = call i32 %0(%struct._object* %2, %struct._IO_FILE* %3, i32 %4), !dbg !1020
  ret i32 %call, !dbg !1021
}

; Function Attrs: nounwind uwtable
define internal i64 @pysqlite_row_hash(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !552, metadata !590), !dbg !1022
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1023, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 2, !dbg !1024
  %1 = load %struct._object*, %struct._object** %description, align 8, !dbg !1024, !tbaa !648
  %call = call i64 @PyObject_Hash(%struct._object* %1), !dbg !1025
  %2 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1026, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %2, i32 0, i32 1, !dbg !1027
  %3 = load %struct._object*, %struct._object** %data, align 8, !dbg !1027, !tbaa !598
  %call1 = call i64 @PyObject_Hash(%struct._object* %3), !dbg !1028
  %xor = xor i64 %call, %call1, !dbg !1029
  ret i64 %xor, !dbg !1030
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_row_richcompare(%struct._Row* %self, %struct._object* %_other, i32 %opid) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._Row*, align 8
  %_other.addr = alloca %struct._object*, align 8
  %opid.addr = alloca i32, align 4
  %other = alloca %struct._Row*, align 8
  %res = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !557, metadata !590), !dbg !1031
  store %struct._object* %_other, %struct._object** %_other.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._object** %_other.addr, metadata !558, metadata !590), !dbg !1032
  store i32 %opid, i32* %opid.addr, align 4, !tbaa !958
  call void @llvm.dbg.declare(metadata i32* %opid.addr, metadata !559, metadata !590), !dbg !1033
  %0 = load i32, i32* %opid.addr, align 4, !dbg !1034, !tbaa !958
  %cmp = icmp ne i32 %0, 2, !dbg !1036
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1037

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %opid.addr, align 4, !dbg !1038, !tbaa !958
  %cmp1 = icmp ne i32 %1, 3, !dbg !1040
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1041

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1042, !tbaa !615
  %inc = add i64 %2, 1, !dbg !1042
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1042, !tbaa !615
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1043
  br label %return, !dbg !1043

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._object*, %struct._object** %_other.addr, align 8, !dbg !1044, !tbaa !586
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1045
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1045, !tbaa !623
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @pysqlite_RowType), !dbg !1046
  %tobool = icmp ne i32 %call, 0, !dbg !1046
  br i1 %tobool, label %if.then.2, label %if.end.20, !dbg !1047

if.then.2:                                        ; preds = %if.end
  %5 = bitcast %struct._Row** %other to i8*, !dbg !1048
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1048
  call void @llvm.dbg.declare(metadata %struct._Row** %other, metadata !560, metadata !590), !dbg !1049
  %6 = load %struct._object*, %struct._object** %_other.addr, align 8, !dbg !1050, !tbaa !586
  %7 = bitcast %struct._object* %6 to %struct._Row*, !dbg !1051
  store %struct._Row* %7, %struct._Row** %other, align 8, !dbg !1049, !tbaa !586
  %8 = bitcast %struct._object** %res to i8*, !dbg !1052
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1052
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !563, metadata !590), !dbg !1053
  %9 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1054, !tbaa !586
  %description = getelementptr inbounds %struct._Row, %struct._Row* %9, i32 0, i32 2, !dbg !1055
  %10 = load %struct._object*, %struct._object** %description, align 8, !dbg !1055, !tbaa !648
  %11 = load %struct._Row*, %struct._Row** %other, align 8, !dbg !1056, !tbaa !586
  %description3 = getelementptr inbounds %struct._Row, %struct._Row* %11, i32 0, i32 2, !dbg !1057
  %12 = load %struct._object*, %struct._object** %description3, align 8, !dbg !1057, !tbaa !648
  %13 = load i32, i32* %opid.addr, align 4, !dbg !1058, !tbaa !958
  %call4 = call %struct._object* @PyObject_RichCompare(%struct._object* %10, %struct._object* %12, i32 %13), !dbg !1059
  store %struct._object* %call4, %struct._object** %res, align 8, !dbg !1053, !tbaa !586
  %14 = load i32, i32* %opid.addr, align 4, !dbg !1060, !tbaa !958
  %cmp5 = icmp eq i32 %14, 2, !dbg !1061
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false, !dbg !1062

land.lhs.true.6:                                  ; preds = %if.then.2
  %15 = load %struct._object*, %struct._object** %res, align 8, !dbg !1063, !tbaa !586
  %cmp7 = icmp eq %struct._object* %15, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), !dbg !1065
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false, !dbg !1066

lor.lhs.false:                                    ; preds = %land.lhs.true.6, %if.then.2
  %16 = load i32, i32* %opid.addr, align 4, !dbg !1067, !tbaa !958
  %cmp8 = icmp eq i32 %16, 3, !dbg !1068
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.18, !dbg !1069

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %res, align 8, !dbg !1070, !tbaa !586
  %cmp10 = icmp eq %struct._object* %17, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !1072
  br i1 %cmp10, label %if.then.11, label %if.end.18, !dbg !1073

if.then.11:                                       ; preds = %land.lhs.true.9, %land.lhs.true.6
  br label %do.body, !dbg !1074

do.body:                                          ; preds = %if.then.11
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1075
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1075
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !564, metadata !590), !dbg !1077
  %19 = load %struct._object*, %struct._object** %res, align 8, !dbg !1078, !tbaa !586
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !1077, !tbaa !586
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1079, !tbaa !586
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !1081
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !1082, !tbaa !615
  %dec = add i64 %21, -1, !dbg !1082
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1082, !tbaa !615
  %cmp12 = icmp ne i64 %dec, 0, !dbg !1083
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !1084

if.then.13:                                       ; preds = %do.body
  br label %if.end.15, !dbg !1085

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1087, !tbaa !586
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1089
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1089, !tbaa !623
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !1090
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1090, !tbaa !625
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1091, !tbaa !586
  call void %24(%struct._object* %25), !dbg !1092
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1093
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1093
  br label %do.cond, !dbg !1095

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !1096

do.end:                                           ; preds = %do.cond
  %27 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1098, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %27, i32 0, i32 1, !dbg !1099
  %28 = load %struct._object*, %struct._object** %data, align 8, !dbg !1099, !tbaa !598
  %29 = load %struct._Row*, %struct._Row** %other, align 8, !dbg !1100, !tbaa !586
  %data16 = getelementptr inbounds %struct._Row, %struct._Row* %29, i32 0, i32 1, !dbg !1101
  %30 = load %struct._object*, %struct._object** %data16, align 8, !dbg !1101, !tbaa !598
  %31 = load i32, i32* %opid.addr, align 4, !dbg !1102, !tbaa !958
  %call17 = call %struct._object* @PyObject_RichCompare(%struct._object* %28, %struct._object* %30, i32 %31), !dbg !1103
  store %struct._object* %call17, %struct._object** %retval, !dbg !1104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1104

if.end.18:                                        ; preds = %land.lhs.true.9, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot, !dbg !1105
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end.18, %do.end
  %32 = bitcast %struct._object** %res to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !1106
  %33 = bitcast %struct._Row** %other to i8*, !dbg !1106
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !1106
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.20, !dbg !1108

if.end.20:                                        ; preds = %cleanup.cont, %if.end
  %34 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1109, !tbaa !615
  %inc21 = add i64 %34, 1, !dbg !1109
  store i64 %inc21, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !1109, !tbaa !615
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !1110
  br label %return, !dbg !1110

return:                                           ; preds = %if.end.20, %cleanup, %if.then
  %35 = load %struct._object*, %struct._object** %retval, !dbg !1111
  ret %struct._object* %35, !dbg !1111

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_iter(%struct._Row* %self) #0 {
entry:
  %self.addr = alloca %struct._Row*, align 8
  store %struct._Row* %self, %struct._Row** %self.addr, align 8, !tbaa !586
  call void @llvm.dbg.declare(metadata %struct._Row** %self.addr, metadata !572, metadata !590), !dbg !1112
  %0 = load %struct._Row*, %struct._Row** %self.addr, align 8, !dbg !1113, !tbaa !586
  %data = getelementptr inbounds %struct._Row, %struct._Row* %0, i32 0, i32 1, !dbg !1114
  %1 = load %struct._object*, %struct._object** %data, align 8, !dbg !1114, !tbaa !598
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %1), !dbg !1115
  ret %struct._object* %call, !dbg !1116
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_row_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 37), align 8, !dbg !1117, !tbaa !1118
  store %struct.PyMappingMethods* @pysqlite_row_as_mapping, %struct.PyMappingMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 12), align 8, !dbg !1119, !tbaa !1120
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_RowType), !dbg !1121
  ret i32 %call, !dbg !1122
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare i64 @PyObject_Hash(%struct._object*) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!582, !583, !584}
!llvm.ident = !{!585}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !367, globals: !573)
!1 = !DIFile(filename: "row.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !350, !30, !358, !359}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !7, file: !6, line: 108, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !6, line: 334, size: 3200, align: 64, elements: !20)
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
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
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !51, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !43, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !10, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !43, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !51, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !51, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!4, !4, !89}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!43, !4, !4, !89}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!4, !18, !10}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!4, !18, !4, !4}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !89}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !352, line: 33, baseType: !353)
!352 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 25, size: 256, align: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !353, file: !352, line: 26, baseType: !22, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !353, file: !352, line: 27, baseType: !357, size: 64, align: 64, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, align: 64, elements: !81)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Row", file: !361, line: 33, baseType: !362)
!361 = !DIFile(filename: "Modules/_sqlite/row.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Row", file: !361, line: 28, size: 256, align: 64, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !362, file: !361, line: 30, baseType: !5, size: 128, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !362, file: !361, line: 31, baseType: !4, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !362, file: !361, line: 32, baseType: !4, size: 64, align: 64, offset: 192)
!367 = !{!368, !384, !490, !514, !521, !538, !541, !548, !553, !568}
!368 = !DISubprogram(name: "pysqlite_row_dealloc", scope: !369, file: !369, line: 27, type: !370, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Row*)* @pysqlite_row_dealloc, variables: !372)
!369 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/row.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!370 = !DISubroutineType(types: !371)
!371 = !{null, !359}
!372 = !{!373, !374, !376, !379, !381}
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !368, file: !369, line: 27, type: !359)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !375, file: !369, line: 29, type: !4)
!375 = distinct !DILexicalBlock(scope: !368, file: !369, line: 29, column: 8)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !377, file: !369, line: 29, type: !4)
!377 = distinct !DILexicalBlock(scope: !378, file: !369, line: 29, column: 102)
!378 = distinct !DILexicalBlock(scope: !375, file: !369, line: 29, column: 68)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !380, file: !369, line: 30, type: !4)
!380 = distinct !DILexicalBlock(scope: !368, file: !369, line: 30, column: 8)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !382, file: !369, line: 30, type: !4)
!382 = distinct !DILexicalBlock(scope: !383, file: !369, line: 30, column: 109)
!383 = distinct !DILexicalBlock(scope: !380, file: !369, line: 30, column: 75)
!384 = !DISubprogram(name: "pysqlite_row_init", scope: !369, file: !369, line: 35, type: !385, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_init, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!43, !359, !4, !4}
!387 = !{!388, !389, !390, !391, !392}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !384, file: !369, line: 35, type: !359)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !384, file: !369, line: 35, type: !4)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !384, file: !369, line: 35, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !384, file: !369, line: 37, type: !4)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !384, file: !369, line: 38, type: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cursor", file: !395, line: 52, baseType: !396)
!395 = !DIFile(filename: "Modules/_sqlite/cursor.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!396 = !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 32, size: 896, align: 64, elements: !397)
!397 = !{!398, !399, !463, !464, !465, !466, !467, !468, !469, !484, !485, !486, !487, !488, !489}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !396, file: !395, line: 34, baseType: !5, size: 128, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !396, file: !395, line: 35, baseType: !400, size: 64, align: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !402, line: 112, baseType: !403)
!402 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!403 = !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 35, size: 1792, align: 64, elements: !404)
!404 = !{!405, !406, !411, !412, !413, !415, !416, !417, !418, !419, !420, !421, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !403, file: !402, line: 37, baseType: !5, size: 128, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !403, file: !402, line: 38, baseType: !407, size: 64, align: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !409, line: 228, baseType: !410)
!409 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !409, line: 228, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !403, file: !402, line: 42, baseType: !30, size: 8, align: 8, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !403, file: !402, line: 46, baseType: !43, size: 32, align: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !403, file: !402, line: 49, baseType: !414, size: 64, align: 64, offset: 256)
!414 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !403, file: !402, line: 53, baseType: !414, size: 64, align: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !403, file: !402, line: 56, baseType: !4, size: 64, align: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !403, file: !402, line: 60, baseType: !51, size: 64, align: 64, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !403, file: !402, line: 64, baseType: !43, size: 32, align: 32, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !403, file: !402, line: 66, baseType: !43, size: 32, align: 32, offset: 544)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !403, file: !402, line: 69, baseType: !16, size: 64, align: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !403, file: !402, line: 71, baseType: !422, size: 64, align: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !424, line: 59, baseType: !425)
!424 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!425 = !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 42, size: 512, align: 64, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !443, !444}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !425, file: !424, line: 44, baseType: !5, size: 128, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !425, file: !424, line: 45, baseType: !43, size: 32, align: 32, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !425, file: !424, line: 48, baseType: !4, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !425, file: !424, line: 51, baseType: !4, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !425, file: !424, line: 53, baseType: !432, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !424, line: 40, baseType: !434)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !424, line: 32, size: 448, align: 64, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !434, file: !424, line: 34, baseType: !5, size: 128, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !434, file: !424, line: 35, baseType: !4, size: 64, align: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !424, line: 36, baseType: !4, size: 64, align: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !434, file: !424, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !434, file: !424, line: 38, baseType: !441, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !424, line: 39, baseType: !441, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !425, file: !424, line: 54, baseType: !432, size: 64, align: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !425, file: !424, line: 58, baseType: !43, size: 32, align: 32, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !403, file: !402, line: 74, baseType: !4, size: 64, align: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !403, file: !402, line: 75, baseType: !4, size: 64, align: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !403, file: !402, line: 79, baseType: !43, size: 32, align: 32, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !403, file: !402, line: 80, baseType: !43, size: 32, align: 32, offset: 864)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !403, file: !402, line: 82, baseType: !4, size: 64, align: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !403, file: !402, line: 90, baseType: !4, size: 64, align: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !403, file: !402, line: 96, baseType: !4, size: 64, align: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !403, file: !402, line: 99, baseType: !4, size: 64, align: 64, offset: 1088)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !403, file: !402, line: 102, baseType: !4, size: 64, align: 64, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !403, file: !402, line: 103, baseType: !4, size: 64, align: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !403, file: !402, line: 104, baseType: !4, size: 64, align: 64, offset: 1280)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !403, file: !402, line: 105, baseType: !4, size: 64, align: 64, offset: 1344)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !403, file: !402, line: 106, baseType: !4, size: 64, align: 64, offset: 1408)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !403, file: !402, line: 107, baseType: !4, size: 64, align: 64, offset: 1472)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !403, file: !402, line: 108, baseType: !4, size: 64, align: 64, offset: 1536)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !403, file: !402, line: 109, baseType: !4, size: 64, align: 64, offset: 1600)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !403, file: !402, line: 110, baseType: !4, size: 64, align: 64, offset: 1664)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !403, file: !402, line: 111, baseType: !4, size: 64, align: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !396, file: !395, line: 36, baseType: !4, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "row_cast_map", scope: !396, file: !395, line: 37, baseType: !4, size: 64, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arraysize", scope: !396, file: !395, line: 38, baseType: !43, size: 32, align: 32, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "lastrowid", scope: !396, file: !395, line: 39, baseType: !4, size: 64, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rowcount", scope: !396, file: !395, line: 40, baseType: !16, size: 64, align: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !396, file: !395, line: 41, baseType: !4, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !396, file: !395, line: 42, baseType: !470, size: 64, align: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Statement", file: !472, line: 42, baseType: !473)
!472 = !DIFile(filename: "Modules/_sqlite/statement.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!473 = !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 34, size: 448, align: 64, elements: !474)
!474 = !{!475, !476, !477, !481, !482, !483}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !473, file: !472, line: 36, baseType: !5, size: 128, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !473, file: !472, line: 37, baseType: !407, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !473, file: !472, line: 38, baseType: !478, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !409, line: 2911, baseType: !480)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !409, line: 2911, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sql", scope: !473, file: !472, line: 39, baseType: !4, size: 64, align: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !473, file: !472, line: 40, baseType: !43, size: 32, align: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !473, file: !472, line: 41, baseType: !4, size: 64, align: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !396, file: !395, line: 43, baseType: !43, size: 32, align: 32, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !396, file: !395, line: 44, baseType: !43, size: 32, align: 32, offset: 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !396, file: !395, line: 45, baseType: !43, size: 32, align: 32, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !396, file: !395, line: 46, baseType: !43, size: 32, align: 32, offset: 736)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_row", scope: !396, file: !395, line: 49, baseType: !4, size: 64, align: 64, offset: 768)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !396, file: !395, line: 51, baseType: !4, size: 64, align: 64, offset: 832)
!490 = !DISubprogram(name: "pysqlite_row_subscript", scope: !369, file: !369, line: 66, type: !491, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Row*, %struct._object*)* @pysqlite_row_subscript, variables: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!4, !359, !4}
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !508}
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !490, file: !369, line: 66, type: !359)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idx", arg: 2, scope: !490, file: !369, line: 66, type: !4)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_idx", scope: !490, file: !369, line: 68, type: !16)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !490, file: !369, line: 69, type: !51)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !490, file: !369, line: 70, type: !10)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !490, file: !369, line: 70, type: !10)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compare_key", scope: !490, file: !369, line: 71, type: !51)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p1", scope: !490, file: !369, line: 73, type: !51)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p2", scope: !490, file: !369, line: 74, type: !51)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !490, file: !369, line: 76, type: !4)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !505, file: !369, line: 81, type: !4)
!505 = distinct !DILexicalBlock(scope: !506, file: !369, line: 81, column: 12)
!506 = distinct !DILexicalBlock(scope: !507, file: !369, line: 78, column: 77)
!507 = distinct !DILexicalBlock(scope: !490, file: !369, line: 78, column: 9)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !509, file: !369, line: 91, type: !4)
!509 = distinct !DILexicalBlock(scope: !510, file: !369, line: 90, column: 38)
!510 = distinct !DILexicalBlock(scope: !511, file: !369, line: 90, column: 9)
!511 = distinct !DILexicalBlock(scope: !512, file: !369, line: 90, column: 9)
!512 = distinct !DILexicalBlock(scope: !513, file: !369, line: 83, column: 84)
!513 = distinct !DILexicalBlock(scope: !507, file: !369, line: 83, column: 16)
!514 = !DISubprogram(name: "pysqlite_row_length", scope: !369, file: !369, line: 137, type: !515, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_length, variables: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!10, !359, !4, !4}
!517 = !{!518, !519, !520}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !514, file: !369, line: 137, type: !359)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !514, file: !369, line: 137, type: !4)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !514, file: !369, line: 137, type: !4)
!521 = !DISubprogram(name: "pysqlite_row_keys", scope: !369, file: !369, line: 142, type: !522, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Row*, %struct._object*, %struct._object*)* @pysqlite_row_keys, variables: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!4, !359, !4, !4}
!524 = !{!525, !526, !527, !528, !529, !530, !531}
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !521, file: !369, line: 142, type: !359)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !521, file: !369, line: 142, type: !4)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !521, file: !369, line: 142, type: !4)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !521, file: !369, line: 144, type: !4)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !521, file: !369, line: 145, type: !43)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !521, file: !369, line: 145, type: !43)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !369, line: 155, type: !4)
!532 = distinct !DILexicalBlock(scope: !533, file: !369, line: 155, column: 16)
!533 = distinct !DILexicalBlock(scope: !534, file: !369, line: 154, column: 128)
!534 = distinct !DILexicalBlock(scope: !535, file: !369, line: 154, column: 13)
!535 = distinct !DILexicalBlock(scope: !536, file: !369, line: 153, column: 34)
!536 = distinct !DILexicalBlock(scope: !537, file: !369, line: 153, column: 5)
!537 = distinct !DILexicalBlock(scope: !521, file: !369, line: 153, column: 5)
!538 = !DISubprogram(name: "pysqlite_row_setup_types", scope: !369, file: !369, line: 250, type: !539, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @pysqlite_row_setup_types, variables: !2)
!539 = !DISubroutineType(types: !540)
!540 = !{!43}
!541 = !DISubprogram(name: "pysqlite_row_print", scope: !369, file: !369, line: 163, type: !542, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Row*, %struct._IO_FILE*, i32)* @pysqlite_row_print, variables: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!43, !359, !44, !43}
!544 = !{!545, !546, !547}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !541, file: !369, line: 163, type: !359)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !541, file: !369, line: 163, type: !44)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 3, scope: !541, file: !369, line: 163, type: !43)
!548 = !DISubprogram(name: "pysqlite_row_hash", scope: !369, file: !369, line: 173, type: !549, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._Row*)* @pysqlite_row_hash, variables: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!218, !359}
!551 = !{!552}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !548, file: !369, line: 173, type: !359)
!553 = !DISubprogram(name: "pysqlite_row_richcompare", scope: !369, file: !369, line: 178, type: !554, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Row*, %struct._object*, i32)* @pysqlite_row_richcompare, variables: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!4, !359, !4, !43}
!556 = !{!557, !558, !559, !560, !563, !564}
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !553, file: !369, line: 178, type: !359)
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_other", arg: 2, scope: !553, file: !369, line: 178, type: !4)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opid", arg: 3, scope: !553, file: !369, line: 178, type: !43)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "other", scope: !561, file: !369, line: 184, type: !359)
!561 = distinct !DILexicalBlock(scope: !562, file: !369, line: 183, column: 80)
!562 = distinct !DILexicalBlock(scope: !553, file: !369, line: 183, column: 9)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !561, file: !369, line: 185, type: !4)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !565, file: !369, line: 188, type: !4)
!565 = distinct !DILexicalBlock(scope: !566, file: !369, line: 188, column: 16)
!566 = distinct !DILexicalBlock(scope: !567, file: !369, line: 187, column: 71)
!567 = distinct !DILexicalBlock(scope: !561, file: !369, line: 186, column: 13)
!568 = !DISubprogram(name: "pysqlite_iter", scope: !369, file: !369, line: 168, type: !569, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._Row*)* @pysqlite_iter, variables: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!4, !359}
!571 = !{!572}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !568, file: !369, line: 168, type: !359)
!573 = !{!574, !575, !577}
!574 = !DIGlobalVariable(name: "pysqlite_row_as_mapping", scope: !0, file: !369, line: 195, type: !203, isLocal: false, isDefinition: true, variable: %struct.PyMappingMethods* @pysqlite_row_as_mapping)
!575 = !DIGlobalVariable(name: "pysqlite_RowType", scope: !0, file: !369, line: 208, type: !576, isLocal: false, isDefinition: true, variable: %struct._typeobject* @pysqlite_RowType)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!577 = !DIGlobalVariable(name: "pysqlite_row_methods", scope: !0, file: !369, line: 201, type: !578, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @pysqlite_row_methods)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 512, align: 64, elements: !580)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!580 = !{!581}
!581 = !DISubrange(count: 2)
!582 = !{i32 2, !"Dwarf Version", i32 4}
!583 = !{i32 2, !"Debug Info Version", i32 3}
!584 = !{i32 1, !"PIC Level", i32 2}
!585 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!586 = !{!587, !587, i64 0}
!587 = !{!"any pointer", !588, i64 0}
!588 = !{!"omnipotent char", !589, i64 0}
!589 = !{!"Simple C/C++ TBAA"}
!590 = !DIExpression()
!591 = !DILocation(line: 27, column: 41, scope: !368)
!592 = !DILocation(line: 29, column: 5, scope: !368)
!593 = !DILocation(line: 29, column: 10, scope: !594)
!594 = !DILexicalBlockFile(scope: !375, file: !369, discriminator: 1)
!595 = !DILocation(line: 29, column: 20, scope: !375)
!596 = !DILocation(line: 29, column: 51, scope: !375)
!597 = !DILocation(line: 29, column: 57, scope: !375)
!598 = !{!599, !587, i64 16}
!599 = !{!"_Row", !600, i64 0, !587, i64 16, !587, i64 24}
!600 = !{!"_object", !601, i64 0, !587, i64 8}
!601 = !{!"long", !588, i64 0}
!602 = !DILocation(line: 29, column: 68, scope: !378)
!603 = !DILocation(line: 29, column: 84, scope: !378)
!604 = !DILocation(line: 29, column: 68, scope: !375)
!605 = !DILocation(line: 29, column: 99, scope: !606)
!606 = !DILexicalBlockFile(scope: !378, file: !369, discriminator: 2)
!607 = !DILocation(line: 29, column: 104, scope: !608)
!608 = !DILexicalBlockFile(scope: !377, file: !369, discriminator: 4)
!609 = !DILocation(line: 29, column: 114, scope: !377)
!610 = !DILocation(line: 29, column: 144, scope: !377)
!611 = !DILocation(line: 29, column: 170, scope: !612)
!612 = distinct !DILexicalBlock(scope: !377, file: !369, line: 29, column: 167)
!613 = !DILocation(line: 29, column: 187, scope: !612)
!614 = !DILocation(line: 29, column: 167, scope: !612)
!615 = !{!600, !601, i64 0}
!616 = !DILocation(line: 29, column: 197, scope: !612)
!617 = !DILocation(line: 29, column: 167, scope: !377)
!618 = !DILocation(line: 29, column: 167, scope: !619)
!619 = !DILexicalBlockFile(scope: !377, file: !369, discriminator: 5)
!620 = !DILocation(line: 29, column: 228, scope: !621)
!621 = !DILexicalBlockFile(scope: !612, file: !369, discriminator: 6)
!622 = !DILocation(line: 29, column: 246, scope: !612)
!623 = !{!600, !587, i64 8}
!624 = !DILocation(line: 29, column: 256, scope: !612)
!625 = !{!626, !587, i64 48}
!626 = !{!"_typeobject", !627, i64 0, !587, i64 24, !601, i64 32, !601, i64 40, !587, i64 48, !587, i64 56, !587, i64 64, !587, i64 72, !587, i64 80, !587, i64 88, !587, i64 96, !587, i64 104, !587, i64 112, !587, i64 120, !587, i64 128, !587, i64 136, !587, i64 144, !587, i64 152, !587, i64 160, !601, i64 168, !587, i64 176, !587, i64 184, !587, i64 192, !587, i64 200, !601, i64 208, !587, i64 216, !587, i64 224, !587, i64 232, !587, i64 240, !587, i64 248, !587, i64 256, !587, i64 264, !587, i64 272, !587, i64 280, !601, i64 288, !587, i64 296, !587, i64 304, !587, i64 312, !587, i64 320, !587, i64 328, !587, i64 336, !587, i64 344, !587, i64 352, !587, i64 360, !587, i64 368, !587, i64 376, !628, i64 384, !587, i64 392}
!627 = !{!"", !600, i64 0, !601, i64 16}
!628 = !{!"int", !588, i64 0}
!629 = !DILocation(line: 29, column: 281, scope: !612)
!630 = !DILocation(line: 29, column: 212, scope: !612)
!631 = !DILocation(line: 29, column: 300, scope: !632)
!632 = !DILexicalBlockFile(scope: !378, file: !369, discriminator: 7)
!633 = !DILocation(line: 29, column: 300, scope: !377)
!634 = !DILocation(line: 29, column: 300, scope: !635)
!635 = !DILexicalBlockFile(scope: !377, file: !369, discriminator: 8)
!636 = !DILocation(line: 29, column: 300, scope: !637)
!637 = !DILexicalBlockFile(scope: !377, file: !369, discriminator: 9)
!638 = !DILocation(line: 29, column: 313, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !369, discriminator: 10)
!640 = !DILexicalBlockFile(scope: !368, file: !369, discriminator: 3)
!641 = !DILocation(line: 29, column: 313, scope: !375)
!642 = !DILocation(line: 30, column: 5, scope: !368)
!643 = !DILocation(line: 30, column: 10, scope: !644)
!644 = !DILexicalBlockFile(scope: !380, file: !369, discriminator: 1)
!645 = !DILocation(line: 30, column: 20, scope: !380)
!646 = !DILocation(line: 30, column: 51, scope: !380)
!647 = !DILocation(line: 30, column: 57, scope: !380)
!648 = !{!599, !587, i64 24}
!649 = !DILocation(line: 30, column: 75, scope: !383)
!650 = !DILocation(line: 30, column: 91, scope: !383)
!651 = !DILocation(line: 30, column: 75, scope: !380)
!652 = !DILocation(line: 30, column: 106, scope: !653)
!653 = !DILexicalBlockFile(scope: !383, file: !369, discriminator: 2)
!654 = !DILocation(line: 30, column: 111, scope: !655)
!655 = !DILexicalBlockFile(scope: !382, file: !369, discriminator: 4)
!656 = !DILocation(line: 30, column: 121, scope: !382)
!657 = !DILocation(line: 30, column: 151, scope: !382)
!658 = !DILocation(line: 30, column: 177, scope: !659)
!659 = distinct !DILexicalBlock(scope: !382, file: !369, line: 30, column: 174)
!660 = !DILocation(line: 30, column: 194, scope: !659)
!661 = !DILocation(line: 30, column: 174, scope: !659)
!662 = !DILocation(line: 30, column: 204, scope: !659)
!663 = !DILocation(line: 30, column: 174, scope: !382)
!664 = !DILocation(line: 30, column: 174, scope: !665)
!665 = !DILexicalBlockFile(scope: !382, file: !369, discriminator: 5)
!666 = !DILocation(line: 30, column: 235, scope: !667)
!667 = !DILexicalBlockFile(scope: !659, file: !369, discriminator: 6)
!668 = !DILocation(line: 30, column: 253, scope: !659)
!669 = !DILocation(line: 30, column: 263, scope: !659)
!670 = !DILocation(line: 30, column: 288, scope: !659)
!671 = !DILocation(line: 30, column: 219, scope: !659)
!672 = !DILocation(line: 30, column: 307, scope: !673)
!673 = !DILexicalBlockFile(scope: !383, file: !369, discriminator: 7)
!674 = !DILocation(line: 30, column: 307, scope: !382)
!675 = !DILocation(line: 30, column: 307, scope: !676)
!676 = !DILexicalBlockFile(scope: !382, file: !369, discriminator: 8)
!677 = !DILocation(line: 30, column: 307, scope: !678)
!678 = !DILexicalBlockFile(scope: !382, file: !369, discriminator: 9)
!679 = !DILocation(line: 30, column: 320, scope: !639)
!680 = !DILocation(line: 30, column: 320, scope: !380)
!681 = !DILocation(line: 32, column: 19, scope: !368)
!682 = !DILocation(line: 32, column: 7, scope: !368)
!683 = !DILocation(line: 32, column: 27, scope: !368)
!684 = !DILocation(line: 32, column: 37, scope: !368)
!685 = !{!626, !587, i64 320}
!686 = !DILocation(line: 32, column: 56, scope: !368)
!687 = !DILocation(line: 32, column: 45, scope: !368)
!688 = !DILocation(line: 32, column: 5, scope: !368)
!689 = !DILocation(line: 33, column: 1, scope: !368)
!690 = !DILocation(line: 35, column: 37, scope: !384)
!691 = !DILocation(line: 35, column: 53, scope: !384)
!692 = !DILocation(line: 35, column: 69, scope: !384)
!693 = !DILocation(line: 37, column: 5, scope: !384)
!694 = !DILocation(line: 37, column: 15, scope: !384)
!695 = !DILocation(line: 38, column: 5, scope: !384)
!696 = !DILocation(line: 38, column: 22, scope: !384)
!697 = !DILocation(line: 40, column: 5, scope: !384)
!698 = !DILocation(line: 40, column: 11, scope: !384)
!699 = !DILocation(line: 40, column: 16, scope: !384)
!700 = !DILocation(line: 41, column: 5, scope: !384)
!701 = !DILocation(line: 41, column: 11, scope: !384)
!702 = !DILocation(line: 41, column: 23, scope: !384)
!703 = !DILocation(line: 43, column: 27, scope: !704)
!704 = distinct !DILexicalBlock(scope: !384, file: !369, line: 43, column: 9)
!705 = !DILocation(line: 43, column: 10, scope: !704)
!706 = !DILocation(line: 43, column: 9, scope: !384)
!707 = !DILocation(line: 44, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !369, line: 43, column: 56)
!709 = !DILocation(line: 47, column: 41, scope: !710)
!710 = distinct !DILexicalBlock(scope: !384, file: !369, line: 47, column: 9)
!711 = !DILocation(line: 47, column: 30, scope: !710)
!712 = !DILocation(line: 47, column: 10, scope: !710)
!713 = !DILocation(line: 47, column: 9, scope: !384)
!714 = !DILocation(line: 48, column: 25, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !369, line: 47, column: 83)
!716 = !DILocation(line: 48, column: 9, scope: !715)
!717 = !DILocation(line: 49, column: 9, scope: !715)
!718 = !DILocation(line: 52, column: 27, scope: !719)
!719 = distinct !DILexicalBlock(scope: !384, file: !369, line: 52, column: 9)
!720 = !DILocation(line: 52, column: 35, scope: !719)
!721 = !DILocation(line: 52, column: 46, scope: !719)
!722 = !{!626, !601, i64 168}
!723 = !DILocation(line: 52, column: 55, scope: !719)
!724 = !DILocation(line: 52, column: 72, scope: !719)
!725 = !DILocation(line: 52, column: 9, scope: !384)
!726 = !DILocation(line: 53, column: 25, scope: !727)
!727 = distinct !DILexicalBlock(scope: !719, file: !369, line: 52, column: 79)
!728 = !DILocation(line: 53, column: 9, scope: !727)
!729 = !DILocation(line: 54, column: 9, scope: !727)
!730 = !DILocation(line: 57, column: 21, scope: !384)
!731 = !DILocation(line: 57, column: 29, scope: !384)
!732 = !DILocation(line: 57, column: 38, scope: !384)
!733 = !DILocation(line: 58, column: 18, scope: !384)
!734 = !DILocation(line: 58, column: 5, scope: !384)
!735 = !DILocation(line: 58, column: 11, scope: !384)
!736 = !DILocation(line: 58, column: 16, scope: !384)
!737 = !DILocation(line: 60, column: 21, scope: !384)
!738 = !DILocation(line: 60, column: 29, scope: !384)
!739 = !{!740, !587, i64 24}
!740 = !{!"", !600, i64 0, !587, i64 16, !587, i64 24, !587, i64 32, !628, i64 40, !587, i64 48, !601, i64 56, !587, i64 64, !587, i64 72, !628, i64 80, !628, i64 84, !628, i64 88, !628, i64 92, !587, i64 96, !587, i64 104}
!741 = !DILocation(line: 60, column: 44, scope: !384)
!742 = !DILocation(line: 60, column: 53, scope: !384)
!743 = !DILocation(line: 61, column: 25, scope: !384)
!744 = !DILocation(line: 61, column: 33, scope: !384)
!745 = !DILocation(line: 61, column: 5, scope: !384)
!746 = !DILocation(line: 61, column: 11, scope: !384)
!747 = !DILocation(line: 61, column: 23, scope: !384)
!748 = !DILocation(line: 63, column: 5, scope: !384)
!749 = !DILocation(line: 64, column: 1, scope: !384)
!750 = !DILocation(line: 66, column: 48, scope: !490)
!751 = !DILocation(line: 66, column: 64, scope: !490)
!752 = !DILocation(line: 68, column: 5, scope: !490)
!753 = !DILocation(line: 68, column: 10, scope: !490)
!754 = !DILocation(line: 69, column: 5, scope: !490)
!755 = !DILocation(line: 69, column: 11, scope: !490)
!756 = !DILocation(line: 70, column: 5, scope: !490)
!757 = !DILocation(line: 70, column: 16, scope: !490)
!758 = !DILocation(line: 70, column: 24, scope: !490)
!759 = !DILocation(line: 71, column: 5, scope: !490)
!760 = !DILocation(line: 71, column: 11, scope: !490)
!761 = !DILocation(line: 73, column: 5, scope: !490)
!762 = !DILocation(line: 73, column: 11, scope: !490)
!763 = !DILocation(line: 74, column: 5, scope: !490)
!764 = !DILocation(line: 74, column: 11, scope: !490)
!765 = !DILocation(line: 76, column: 5, scope: !490)
!766 = !DILocation(line: 76, column: 15, scope: !490)
!767 = !DILocation(line: 78, column: 26, scope: !507)
!768 = !DILocation(line: 78, column: 33, scope: !507)
!769 = !DILocation(line: 78, column: 44, scope: !507)
!770 = !DILocation(line: 78, column: 53, scope: !507)
!771 = !DILocation(line: 78, column: 70, scope: !507)
!772 = !DILocation(line: 78, column: 9, scope: !490)
!773 = !DILocation(line: 79, column: 30, scope: !506)
!774 = !DILocation(line: 79, column: 16, scope: !506)
!775 = !DILocation(line: 79, column: 14, scope: !506)
!776 = !{!601, !601, i64 0}
!777 = !DILocation(line: 80, column: 32, scope: !506)
!778 = !DILocation(line: 80, column: 38, scope: !506)
!779 = !DILocation(line: 80, column: 44, scope: !506)
!780 = !DILocation(line: 80, column: 16, scope: !506)
!781 = !DILocation(line: 80, column: 14, scope: !506)
!782 = !DILocation(line: 81, column: 9, scope: !506)
!783 = !DILocation(line: 81, column: 14, scope: !784)
!784 = !DILexicalBlockFile(scope: !505, file: !369, discriminator: 1)
!785 = !DILocation(line: 81, column: 24, scope: !505)
!786 = !DILocation(line: 81, column: 55, scope: !505)
!787 = !DILocation(line: 81, column: 66, scope: !788)
!788 = distinct !DILexicalBlock(scope: !505, file: !369, line: 81, column: 66)
!789 = !DILocation(line: 81, column: 82, scope: !788)
!790 = !DILocation(line: 81, column: 66, scope: !505)
!791 = !DILocation(line: 81, column: 113, scope: !792)
!792 = !DILexicalBlockFile(scope: !788, file: !369, discriminator: 2)
!793 = !DILocation(line: 81, column: 132, scope: !788)
!794 = !DILocation(line: 81, column: 141, scope: !788)
!795 = !DILocation(line: 81, column: 97, scope: !788)
!796 = !DILocation(line: 81, column: 146, scope: !797)
!797 = !DILexicalBlockFile(scope: !798, file: !369, discriminator: 4)
!798 = !DILexicalBlockFile(scope: !506, file: !369, discriminator: 3)
!799 = !DILocation(line: 81, column: 146, scope: !505)
!800 = !DILocation(line: 81, column: 146, scope: !801)
!801 = !DILexicalBlockFile(scope: !505, file: !369, discriminator: 5)
!802 = !DILocation(line: 82, column: 16, scope: !506)
!803 = !DILocation(line: 82, column: 9, scope: !506)
!804 = !DILocation(line: 83, column: 33, scope: !513)
!805 = !DILocation(line: 83, column: 40, scope: !513)
!806 = !DILocation(line: 83, column: 51, scope: !513)
!807 = !DILocation(line: 83, column: 60, scope: !513)
!808 = !DILocation(line: 83, column: 77, scope: !513)
!809 = !DILocation(line: 83, column: 16, scope: !507)
!810 = !DILocation(line: 84, column: 32, scope: !512)
!811 = !DILocation(line: 84, column: 15, scope: !512)
!812 = !DILocation(line: 84, column: 13, scope: !512)
!813 = !DILocation(line: 85, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !512, file: !369, line: 85, column: 13)
!815 = !DILocation(line: 85, column: 17, scope: !814)
!816 = !DILocation(line: 85, column: 13, scope: !512)
!817 = !DILocation(line: 86, column: 13, scope: !814)
!818 = !DILocation(line: 88, column: 31, scope: !512)
!819 = !DILocation(line: 88, column: 37, scope: !512)
!820 = !DILocation(line: 88, column: 18, scope: !512)
!821 = !DILocation(line: 88, column: 16, scope: !512)
!822 = !DILocation(line: 90, column: 16, scope: !511)
!823 = !DILocation(line: 90, column: 14, scope: !511)
!824 = !DILocation(line: 90, column: 21, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !369, discriminator: 2)
!826 = !DILexicalBlockFile(scope: !510, file: !369, discriminator: 1)
!827 = !DILocation(line: 90, column: 25, scope: !510)
!828 = !DILocation(line: 90, column: 23, scope: !510)
!829 = !DILocation(line: 90, column: 9, scope: !511)
!830 = !DILocation(line: 91, column: 13, scope: !509)
!831 = !DILocation(line: 91, column: 23, scope: !509)
!832 = !DILocation(line: 92, column: 68, scope: !509)
!833 = !DILocation(line: 92, column: 39, scope: !509)
!834 = !DILocation(line: 92, column: 45, scope: !509)
!835 = !DILocation(line: 92, column: 21, scope: !509)
!836 = !DILocation(line: 92, column: 60, scope: !509)
!837 = !DILocation(line: 92, column: 20, scope: !509)
!838 = !DILocation(line: 92, column: 17, scope: !509)
!839 = !DILocation(line: 93, column: 39, scope: !509)
!840 = !DILocation(line: 93, column: 21, scope: !509)
!841 = !DILocation(line: 93, column: 46, scope: !509)
!842 = !DILocation(line: 93, column: 20, scope: !509)
!843 = !DILocation(line: 93, column: 17, scope: !509)
!844 = !DILocation(line: 94, column: 44, scope: !509)
!845 = !DILocation(line: 94, column: 27, scope: !509)
!846 = !DILocation(line: 94, column: 25, scope: !509)
!847 = !DILocation(line: 95, column: 18, scope: !848)
!848 = distinct !DILexicalBlock(scope: !509, file: !369, line: 95, column: 17)
!849 = !DILocation(line: 95, column: 17, scope: !509)
!850 = !DILocation(line: 96, column: 17, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !369, line: 95, column: 31)
!852 = !DILocation(line: 99, column: 18, scope: !509)
!853 = !DILocation(line: 99, column: 16, scope: !509)
!854 = !DILocation(line: 100, column: 18, scope: !509)
!855 = !DILocation(line: 100, column: 16, scope: !509)
!856 = !DILocation(line: 102, column: 13, scope: !509)
!857 = !DILocation(line: 102, column: 13, scope: !858)
!858 = !DILexicalBlockFile(scope: !859, file: !369, discriminator: 2)
!859 = !DILexicalBlockFile(scope: !509, file: !369, discriminator: 1)
!860 = !DILocation(line: 103, column: 23, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !369, line: 103, column: 21)
!862 = distinct !DILexicalBlock(scope: !509, file: !369, line: 102, column: 23)
!863 = !DILocation(line: 103, column: 22, scope: !861)
!864 = !{!588, !588, i64 0}
!865 = !DILocation(line: 103, column: 26, scope: !861)
!866 = !DILocation(line: 103, column: 38, scope: !861)
!867 = !DILocation(line: 103, column: 43, scope: !868)
!868 = !DILexicalBlockFile(scope: !861, file: !369, discriminator: 1)
!869 = !DILocation(line: 103, column: 42, scope: !861)
!870 = !DILocation(line: 103, column: 46, scope: !861)
!871 = !DILocation(line: 103, column: 21, scope: !862)
!872 = !DILocation(line: 104, column: 21, scope: !873)
!873 = distinct !DILexicalBlock(scope: !861, file: !369, line: 103, column: 59)
!874 = !DILocation(line: 107, column: 23, scope: !875)
!875 = distinct !DILexicalBlock(scope: !862, file: !369, line: 107, column: 21)
!876 = !DILocation(line: 107, column: 22, scope: !875)
!877 = !DILocation(line: 107, column: 26, scope: !875)
!878 = !DILocation(line: 107, column: 39, scope: !875)
!879 = !DILocation(line: 107, column: 38, scope: !875)
!880 = !DILocation(line: 107, column: 42, scope: !875)
!881 = !DILocation(line: 107, column: 34, scope: !875)
!882 = !DILocation(line: 107, column: 21, scope: !862)
!883 = !DILocation(line: 108, column: 21, scope: !884)
!884 = distinct !DILexicalBlock(scope: !875, file: !369, line: 107, column: 51)
!885 = !DILocation(line: 111, column: 19, scope: !862)
!886 = !DILocation(line: 112, column: 19, scope: !862)
!887 = !DILocation(line: 115, column: 19, scope: !888)
!888 = distinct !DILexicalBlock(scope: !509, file: !369, line: 115, column: 17)
!889 = !DILocation(line: 115, column: 18, scope: !888)
!890 = !DILocation(line: 115, column: 22, scope: !888)
!891 = !DILocation(line: 115, column: 34, scope: !888)
!892 = !DILocation(line: 115, column: 39, scope: !893)
!893 = !DILexicalBlockFile(scope: !888, file: !369, discriminator: 1)
!894 = !DILocation(line: 115, column: 38, scope: !888)
!895 = !DILocation(line: 115, column: 42, scope: !888)
!896 = !DILocation(line: 115, column: 17, scope: !509)
!897 = !DILocation(line: 117, column: 40, scope: !898)
!898 = distinct !DILexicalBlock(scope: !888, file: !369, line: 115, column: 55)
!899 = !DILocation(line: 117, column: 46, scope: !898)
!900 = !DILocation(line: 117, column: 52, scope: !898)
!901 = !DILocation(line: 117, column: 24, scope: !898)
!902 = !DILocation(line: 117, column: 22, scope: !898)
!903 = !DILocation(line: 118, column: 33, scope: !898)
!904 = !DILocation(line: 118, column: 41, scope: !898)
!905 = !DILocation(line: 118, column: 50, scope: !898)
!906 = !DILocation(line: 119, column: 24, scope: !898)
!907 = !DILocation(line: 119, column: 17, scope: !898)
!908 = !DILocation(line: 122, column: 9, scope: !510)
!909 = !DILocation(line: 122, column: 9, scope: !826)
!910 = !DILocation(line: 122, column: 9, scope: !509)
!911 = !DILocation(line: 90, column: 34, scope: !510)
!912 = !DILocation(line: 90, column: 9, scope: !510)
!913 = !DILocation(line: 124, column: 25, scope: !512)
!914 = !DILocation(line: 124, column: 9, scope: !512)
!915 = !DILocation(line: 125, column: 9, scope: !512)
!916 = !DILocation(line: 127, column: 29, scope: !917)
!917 = distinct !DILexicalBlock(scope: !513, file: !369, line: 127, column: 14)
!918 = !DILocation(line: 127, column: 36, scope: !917)
!919 = !DILocation(line: 127, column: 45, scope: !917)
!920 = !DILocation(line: 127, column: 14, scope: !513)
!921 = !DILocation(line: 128, column: 25, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !369, line: 127, column: 64)
!923 = !DILocation(line: 128, column: 9, scope: !922)
!924 = !DILocation(line: 129, column: 9, scope: !922)
!925 = !DILocation(line: 132, column: 25, scope: !926)
!926 = distinct !DILexicalBlock(scope: !917, file: !369, line: 131, column: 10)
!927 = !DILocation(line: 132, column: 9, scope: !926)
!928 = !DILocation(line: 133, column: 9, scope: !926)
!929 = !DILocation(line: 135, column: 1, scope: !490)
!930 = !DILocation(line: 137, column: 46, scope: !514)
!931 = !DILocation(line: 137, column: 62, scope: !514)
!932 = !DILocation(line: 137, column: 78, scope: !514)
!933 = !DILocation(line: 139, column: 29, scope: !514)
!934 = !DILocation(line: 139, column: 35, scope: !514)
!935 = !DILocation(line: 139, column: 14, scope: !514)
!936 = !DILocation(line: 139, column: 43, scope: !514)
!937 = !{!627, !601, i64 16}
!938 = !DILocation(line: 139, column: 5, scope: !514)
!939 = !DILocation(line: 142, column: 43, scope: !521)
!940 = !DILocation(line: 142, column: 59, scope: !521)
!941 = !DILocation(line: 142, column: 75, scope: !521)
!942 = !DILocation(line: 144, column: 5, scope: !521)
!943 = !DILocation(line: 144, column: 15, scope: !521)
!944 = !DILocation(line: 145, column: 5, scope: !521)
!945 = !DILocation(line: 145, column: 9, scope: !521)
!946 = !DILocation(line: 145, column: 17, scope: !521)
!947 = !DILocation(line: 147, column: 12, scope: !521)
!948 = !DILocation(line: 147, column: 10, scope: !521)
!949 = !DILocation(line: 148, column: 10, scope: !950)
!950 = distinct !DILexicalBlock(scope: !521, file: !369, line: 148, column: 9)
!951 = !DILocation(line: 148, column: 9, scope: !521)
!952 = !DILocation(line: 149, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !950, file: !369, line: 148, column: 16)
!954 = !DILocation(line: 151, column: 27, scope: !521)
!955 = !DILocation(line: 151, column: 33, scope: !521)
!956 = !DILocation(line: 151, column: 14, scope: !521)
!957 = !DILocation(line: 151, column: 12, scope: !521)
!958 = !{!628, !628, i64 0}
!959 = !DILocation(line: 153, column: 12, scope: !537)
!960 = !DILocation(line: 153, column: 10, scope: !537)
!961 = !DILocation(line: 153, column: 17, scope: !962)
!962 = !DILexicalBlockFile(scope: !963, file: !369, discriminator: 2)
!963 = !DILexicalBlockFile(scope: !536, file: !369, discriminator: 1)
!964 = !DILocation(line: 153, column: 21, scope: !536)
!965 = !DILocation(line: 153, column: 19, scope: !536)
!966 = !DILocation(line: 153, column: 5, scope: !537)
!967 = !DILocation(line: 154, column: 27, scope: !534)
!968 = !DILocation(line: 154, column: 102, scope: !534)
!969 = !DILocation(line: 154, column: 54, scope: !534)
!970 = !DILocation(line: 154, column: 73, scope: !534)
!971 = !DILocation(line: 154, column: 79, scope: !534)
!972 = !DILocation(line: 154, column: 55, scope: !534)
!973 = !DILocation(line: 154, column: 94, scope: !534)
!974 = !DILocation(line: 154, column: 35, scope: !534)
!975 = !DILocation(line: 154, column: 109, scope: !534)
!976 = !DILocation(line: 154, column: 34, scope: !534)
!977 = !DILocation(line: 154, column: 13, scope: !534)
!978 = !DILocation(line: 154, column: 122, scope: !534)
!979 = !DILocation(line: 154, column: 13, scope: !535)
!980 = !DILocation(line: 155, column: 13, scope: !533)
!981 = !DILocation(line: 155, column: 18, scope: !982)
!982 = !DILexicalBlockFile(scope: !532, file: !369, discriminator: 1)
!983 = !DILocation(line: 155, column: 28, scope: !532)
!984 = !DILocation(line: 155, column: 58, scope: !532)
!985 = !DILocation(line: 155, column: 73, scope: !986)
!986 = distinct !DILexicalBlock(scope: !532, file: !369, line: 155, column: 70)
!987 = !DILocation(line: 155, column: 90, scope: !986)
!988 = !DILocation(line: 155, column: 70, scope: !986)
!989 = !DILocation(line: 155, column: 100, scope: !986)
!990 = !DILocation(line: 155, column: 70, scope: !532)
!991 = !DILocation(line: 155, column: 70, scope: !992)
!992 = !DILexicalBlockFile(scope: !532, file: !369, discriminator: 2)
!993 = !DILocation(line: 155, column: 131, scope: !994)
!994 = !DILexicalBlockFile(scope: !986, file: !369, discriminator: 3)
!995 = !DILocation(line: 155, column: 149, scope: !986)
!996 = !DILocation(line: 155, column: 159, scope: !986)
!997 = !DILocation(line: 155, column: 184, scope: !986)
!998 = !DILocation(line: 155, column: 115, scope: !986)
!999 = !DILocation(line: 155, column: 203, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !533, file: !369, discriminator: 4)
!1001 = !DILocation(line: 155, column: 203, scope: !532)
!1002 = !DILocation(line: 155, column: 203, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !532, file: !369, discriminator: 5)
!1004 = !DILocation(line: 156, column: 13, scope: !533)
!1005 = !DILocation(line: 158, column: 5, scope: !535)
!1006 = !DILocation(line: 153, column: 30, scope: !536)
!1007 = !DILocation(line: 153, column: 5, scope: !536)
!1008 = !DILocation(line: 160, column: 12, scope: !521)
!1009 = !DILocation(line: 160, column: 5, scope: !521)
!1010 = !DILocation(line: 161, column: 1, scope: !521)
!1011 = !DILocation(line: 163, column: 45, scope: !541)
!1012 = !DILocation(line: 163, column: 57, scope: !541)
!1013 = !DILocation(line: 163, column: 65, scope: !541)
!1014 = !DILocation(line: 165, column: 29, scope: !541)
!1015 = !{!626, !587, i64 56}
!1016 = !DILocation(line: 165, column: 38, scope: !541)
!1017 = !DILocation(line: 165, column: 44, scope: !541)
!1018 = !DILocation(line: 165, column: 50, scope: !541)
!1019 = !DILocation(line: 165, column: 54, scope: !541)
!1020 = !DILocation(line: 165, column: 12, scope: !541)
!1021 = !DILocation(line: 165, column: 5, scope: !541)
!1022 = !DILocation(line: 173, column: 50, scope: !548)
!1023 = !DILocation(line: 175, column: 26, scope: !548)
!1024 = !DILocation(line: 175, column: 32, scope: !548)
!1025 = !DILocation(line: 175, column: 12, scope: !548)
!1026 = !DILocation(line: 175, column: 61, scope: !548)
!1027 = !DILocation(line: 175, column: 67, scope: !548)
!1028 = !DILocation(line: 175, column: 47, scope: !548)
!1029 = !DILocation(line: 175, column: 45, scope: !548)
!1030 = !DILocation(line: 175, column: 5, scope: !548)
!1031 = !DILocation(line: 178, column: 57, scope: !553)
!1032 = !DILocation(line: 178, column: 73, scope: !553)
!1033 = !DILocation(line: 178, column: 85, scope: !553)
!1034 = !DILocation(line: 180, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !553, file: !369, line: 180, column: 9)
!1036 = !DILocation(line: 180, column: 14, scope: !1035)
!1037 = !DILocation(line: 180, column: 19, scope: !1035)
!1038 = !DILocation(line: 180, column: 22, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1035, file: !369, discriminator: 1)
!1040 = !DILocation(line: 180, column: 27, scope: !1035)
!1041 = !DILocation(line: 180, column: 9, scope: !553)
!1042 = !DILocation(line: 181, column: 72, scope: !1035)
!1043 = !DILocation(line: 181, column: 9, scope: !1035)
!1044 = !DILocation(line: 183, column: 40, scope: !562)
!1045 = !DILocation(line: 183, column: 50, scope: !562)
!1046 = !DILocation(line: 183, column: 9, scope: !562)
!1047 = !DILocation(line: 183, column: 9, scope: !553)
!1048 = !DILocation(line: 184, column: 9, scope: !561)
!1049 = !DILocation(line: 184, column: 23, scope: !561)
!1050 = !DILocation(line: 184, column: 47, scope: !561)
!1051 = !DILocation(line: 184, column: 31, scope: !561)
!1052 = !DILocation(line: 185, column: 9, scope: !561)
!1053 = !DILocation(line: 185, column: 19, scope: !561)
!1054 = !DILocation(line: 185, column: 46, scope: !561)
!1055 = !DILocation(line: 185, column: 52, scope: !561)
!1056 = !DILocation(line: 185, column: 65, scope: !561)
!1057 = !DILocation(line: 185, column: 72, scope: !561)
!1058 = !DILocation(line: 185, column: 85, scope: !561)
!1059 = !DILocation(line: 185, column: 25, scope: !561)
!1060 = !DILocation(line: 186, column: 14, scope: !567)
!1061 = !DILocation(line: 186, column: 19, scope: !567)
!1062 = !DILocation(line: 186, column: 24, scope: !567)
!1063 = !DILocation(line: 186, column: 27, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !567, file: !369, discriminator: 1)
!1065 = !DILocation(line: 186, column: 31, scope: !567)
!1066 = !DILocation(line: 187, column: 13, scope: !567)
!1067 = !DILocation(line: 187, column: 17, scope: !1064)
!1068 = !DILocation(line: 187, column: 22, scope: !567)
!1069 = !DILocation(line: 187, column: 27, scope: !567)
!1070 = !DILocation(line: 187, column: 30, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !567, file: !369, discriminator: 2)
!1072 = !DILocation(line: 187, column: 34, scope: !567)
!1073 = !DILocation(line: 186, column: 13, scope: !561)
!1074 = !DILocation(line: 188, column: 13, scope: !566)
!1075 = !DILocation(line: 188, column: 18, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !565, file: !369, discriminator: 1)
!1077 = !DILocation(line: 188, column: 28, scope: !565)
!1078 = !DILocation(line: 188, column: 58, scope: !565)
!1079 = !DILocation(line: 188, column: 72, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !565, file: !369, line: 188, column: 69)
!1081 = !DILocation(line: 188, column: 89, scope: !1080)
!1082 = !DILocation(line: 188, column: 69, scope: !1080)
!1083 = !DILocation(line: 188, column: 99, scope: !1080)
!1084 = !DILocation(line: 188, column: 69, scope: !565)
!1085 = !DILocation(line: 188, column: 69, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !565, file: !369, discriminator: 2)
!1087 = !DILocation(line: 188, column: 130, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1080, file: !369, discriminator: 3)
!1089 = !DILocation(line: 188, column: 148, scope: !1080)
!1090 = !DILocation(line: 188, column: 158, scope: !1080)
!1091 = !DILocation(line: 188, column: 183, scope: !1080)
!1092 = !DILocation(line: 188, column: 114, scope: !1080)
!1093 = !DILocation(line: 188, column: 202, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !566, file: !369, discriminator: 4)
!1095 = !DILocation(line: 188, column: 202, scope: !565)
!1096 = !DILocation(line: 188, column: 202, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !565, file: !369, discriminator: 5)
!1098 = !DILocation(line: 189, column: 41, scope: !566)
!1099 = !DILocation(line: 189, column: 47, scope: !566)
!1100 = !DILocation(line: 189, column: 53, scope: !566)
!1101 = !DILocation(line: 189, column: 60, scope: !566)
!1102 = !DILocation(line: 189, column: 66, scope: !566)
!1103 = !DILocation(line: 189, column: 20, scope: !566)
!1104 = !DILocation(line: 189, column: 13, scope: !566)
!1105 = !DILocation(line: 191, column: 5, scope: !562)
!1106 = !DILocation(line: 191, column: 5, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !562, file: !369, discriminator: 1)
!1108 = !DILocation(line: 191, column: 5, scope: !561)
!1109 = !DILocation(line: 192, column: 68, scope: !553)
!1110 = !DILocation(line: 192, column: 5, scope: !553)
!1111 = !DILocation(line: 193, column: 1, scope: !553)
!1112 = !DILocation(line: 168, column: 46, scope: !568)
!1113 = !DILocation(line: 170, column: 29, scope: !568)
!1114 = !DILocation(line: 170, column: 35, scope: !568)
!1115 = !DILocation(line: 170, column: 12, scope: !568)
!1116 = !DILocation(line: 170, column: 5, scope: !568)
!1117 = !DILocation(line: 252, column: 29, scope: !538)
!1118 = !{!626, !587, i64 312}
!1119 = !DILocation(line: 253, column: 36, scope: !538)
!1120 = !{!626, !587, i64 112}
!1121 = !DILocation(line: 254, column: 12, scope: !538)
!1122 = !DILocation(line: 254, column: 5, scope: !538)
