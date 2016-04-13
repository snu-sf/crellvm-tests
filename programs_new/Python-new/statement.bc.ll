; ModuleID = 'irs-onlybc/statement.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3 = type opaque
%struct.sqlite3_stmt = type opaque
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@_Py_NoneStruct = external global %struct._object, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [33 x i8] c"string longer than INT_MAX bytes\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"could not convert BLOB to buffer\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"BLOB longer than INT_MAX bytes\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyList_Type = external global %struct._typeobject, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"Incorrect number of bindings supplied. The current statement uses %d, and there are %zd supplied.\00", align 1
@pysqlite_PrepareProtocolType = external global %struct._typeobject, align 8
@pysqlite_InterfaceError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"Error binding parameter %d - probably unsupported type.\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"Binding %d has no name, but you supplied a dictionary (which has only names).\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"You did not supply a value for binding %d.\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Error binding parameter :%s - probably unsupported type.\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"parameters are of unsupported type\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"sqlite3.Statement\00", align 1
@pysqlite_StatementType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.pysqlite_Statement*)* @pysqlite_statement_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 48, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@pysqlite_BaseTypeAdapted = external global i32, align 4
@PyByteArray_Type = external global %struct._typeobject, align 8

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_create(%struct.pysqlite_Statement* %self, %struct.pysqlite_Connection* %connection, %struct._object* %sql) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %connection.addr = alloca %struct.pysqlite_Connection*, align 8
  %sql.addr = alloca %struct._object*, align 8
  %tail = alloca i8*, align 8
  %rc = alloca i32, align 4
  %sql_cstr = alloca i8*, align 8
  %sql_cstr_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !467, metadata !681), !dbg !682
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %connection.addr, metadata !468, metadata !681), !dbg !683
  store %struct._object* %sql, %struct._object** %sql.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct._object** %sql.addr, metadata !469, metadata !681), !dbg !684
  %0 = bitcast i8** %tail to i8*, !dbg !685
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !685
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !470, metadata !681), !dbg !686
  %1 = bitcast i32* %rc to i8*, !dbg !687
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !687
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !471, metadata !681), !dbg !688
  %2 = bitcast i8** %sql_cstr to i8*, !dbg !689
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !689
  call void @llvm.dbg.declare(metadata i8** %sql_cstr, metadata !472, metadata !681), !dbg !690
  %3 = bitcast i64* %sql_cstr_len to i8*, !dbg !691
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !691
  call void @llvm.dbg.declare(metadata i64* %sql_cstr_len, metadata !473, metadata !681), !dbg !692
  %4 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !693, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %4, i32 0, i32 2, !dbg !694
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st, align 8, !dbg !695, !tbaa !696
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !701, !tbaa !677
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 4, !dbg !702
  store i32 0, i32* %in_use, align 4, !dbg !703, !tbaa !704
  %6 = load %struct._object*, %struct._object** %sql.addr, align 8, !dbg !705, !tbaa !677
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %6, i64* %sql_cstr_len), !dbg !706
  store i8* %call, i8** %sql_cstr, align 8, !dbg !707, !tbaa !677
  %7 = load i8*, i8** %sql_cstr, align 8, !dbg !708, !tbaa !677
  %cmp = icmp eq i8* %7, null, !dbg !710
  br i1 %cmp, label %if.then, label %if.end, !dbg !711

if.then:                                          ; preds = %entry
  store i32 -101, i32* %rc, align 4, !dbg !712, !tbaa !714
  %8 = load i32, i32* %rc, align 4, !dbg !715, !tbaa !714
  store i32 %8, i32* %retval, !dbg !716
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !716

if.end:                                           ; preds = %entry
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !717, !tbaa !677
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 5, !dbg !718
  store %struct._object* null, %struct._object** %in_weakreflist, align 8, !dbg !719, !tbaa !720
  %10 = load %struct._object*, %struct._object** %sql.addr, align 8, !dbg !721, !tbaa !677
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !722
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !723, !tbaa !724
  %inc = add i64 %11, 1, !dbg !723
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !723, !tbaa !724
  %12 = load %struct._object*, %struct._object** %sql.addr, align 8, !dbg !725, !tbaa !677
  %13 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !726, !tbaa !677
  %sql1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %13, i32 0, i32 3, !dbg !727
  store %struct._object* %12, %struct._object** %sql1, align 8, !dbg !728, !tbaa !729
  %14 = bitcast %struct._ts** %_save to i8*, !dbg !730
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !730
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !474, metadata !681), !dbg !731
  %call2 = call %struct._ts* @PyEval_SaveThread(), !dbg !732
  store %struct._ts* %call2, %struct._ts** %_save, align 8, !dbg !733, !tbaa !677
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8, !dbg !734, !tbaa !677
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 1, !dbg !735
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !735, !tbaa !736
  %17 = load i8*, i8** %sql_cstr, align 8, !dbg !739, !tbaa !677
  %18 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !740, !tbaa !677
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %18, i32 0, i32 2, !dbg !741
  %call4 = call i32 @sqlite3_prepare(%struct.sqlite3* %16, i8* %17, i32 -1, %struct.sqlite3_stmt** %st3, i8** %tail), !dbg !742
  store i32 %call4, i32* %rc, align 4, !dbg !743, !tbaa !714
  %19 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !744, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %19), !dbg !745
  %20 = bitcast %struct._ts** %_save to i8*, !dbg !746
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !746
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8, !dbg !747, !tbaa !677
  %db5 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 1, !dbg !748
  %22 = load %struct.sqlite3*, %struct.sqlite3** %db5, align 8, !dbg !748, !tbaa !736
  %23 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !749, !tbaa !677
  %db6 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %23, i32 0, i32 1, !dbg !750
  store %struct.sqlite3* %22, %struct.sqlite3** %db6, align 8, !dbg !751, !tbaa !752
  %24 = load i32, i32* %rc, align 4, !dbg !753, !tbaa !714
  %cmp7 = icmp eq i32 %24, 0, !dbg !755
  br i1 %cmp7, label %land.lhs.true, label %if.end.13, !dbg !756

land.lhs.true:                                    ; preds = %if.end
  %25 = load i8*, i8** %tail, align 8, !dbg !757, !tbaa !677
  %call8 = call i32 @pysqlite_check_remaining_sql(i8* %25), !dbg !759
  %tobool = icmp ne i32 %call8, 0, !dbg !759
  br i1 %tobool, label %if.then.9, label %if.end.13, !dbg !760

if.then.9:                                        ; preds = %land.lhs.true
  %26 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !761, !tbaa !677
  %st10 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %26, i32 0, i32 2, !dbg !763
  %27 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st10, align 8, !dbg !763, !tbaa !696
  %call11 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %27), !dbg !764
  %28 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !765, !tbaa !677
  %st12 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %28, i32 0, i32 2, !dbg !766
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st12, align 8, !dbg !767, !tbaa !696
  store i32 -100, i32* %rc, align 4, !dbg !768, !tbaa !714
  br label %if.end.13, !dbg !769

if.end.13:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %29 = load i32, i32* %rc, align 4, !dbg !770, !tbaa !714
  store i32 %29, i32* %retval, !dbg !771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !771

cleanup:                                          ; preds = %if.end.13, %if.then
  %30 = bitcast i64* %sql_cstr_len to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !772
  %31 = bitcast i8** %sql_cstr to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !772
  %32 = bitcast i32* %rc to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 4, i8* %32) #2, !dbg !772
  %33 = bitcast i8** %tail to i8*, !dbg !772
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !772
  %34 = load i32, i32* %retval, !dbg !772
  ret i32 %34, !dbg !772
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_check_remaining_sql(i8* %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %tail.addr = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %tail, i8** %tail.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata i8** %tail.addr, metadata !666, metadata !681), !dbg !773
  %0 = bitcast i8** %pos to i8*, !dbg !774
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !774
  call void @llvm.dbg.declare(metadata i8** %pos, metadata !667, metadata !681), !dbg !775
  %1 = load i8*, i8** %tail.addr, align 8, !dbg !776, !tbaa !677
  store i8* %1, i8** %pos, align 8, !dbg !775, !tbaa !677
  %2 = bitcast i32* %state to i8*, !dbg !777
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !777
  call void @llvm.dbg.declare(metadata i32* %state, metadata !668, metadata !681), !dbg !778
  store i32 5, i32* %state, align 4, !dbg !778, !tbaa !779
  br label %for.cond, !dbg !780

for.cond:                                         ; preds = %sw.epilog, %entry
  %3 = load i8*, i8** %pos, align 8, !dbg !781, !tbaa !677
  %4 = load i8, i8* %3, align 1, !dbg !785, !tbaa !779
  %conv = sext i8 %4 to i32, !dbg !785
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 45, label %sw.bb.1
    i32 32, label %sw.bb.7
    i32 9, label %sw.bb.7
    i32 10, label %sw.bb.8
    i32 13, label %sw.bb.8
    i32 47, label %sw.bb.13
    i32 42, label %sw.bb.28
  ], !dbg !786

sw.bb:                                            ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !787

sw.bb.1:                                          ; preds = %for.cond
  %5 = load i32, i32* %state, align 4, !dbg !789, !tbaa !779
  %cmp = icmp eq i32 %5, 5, !dbg !791
  br i1 %cmp, label %if.then, label %if.else, !dbg !792

if.then:                                          ; preds = %sw.bb.1
  store i32 0, i32* %state, align 4, !dbg !793, !tbaa !779
  br label %if.end.6, !dbg !795

if.else:                                          ; preds = %sw.bb.1
  %6 = load i32, i32* %state, align 4, !dbg !796, !tbaa !779
  %cmp3 = icmp eq i32 %6, 0, !dbg !798
  br i1 %cmp3, label %if.then.5, label %if.end, !dbg !799

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %state, align 4, !dbg !800, !tbaa !779
  br label %if.end, !dbg !802

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %sw.epilog, !dbg !803

sw.bb.7:                                          ; preds = %for.cond, %for.cond
  br label %sw.epilog, !dbg !804

sw.bb.8:                                          ; preds = %for.cond, %for.cond
  %7 = load i32, i32* %state, align 4, !dbg !805, !tbaa !779
  %cmp9 = icmp eq i32 %7, 1, !dbg !807
  br i1 %cmp9, label %if.then.11, label %if.end.12, !dbg !808

if.then.11:                                       ; preds = %sw.bb.8
  store i32 5, i32* %state, align 4, !dbg !809, !tbaa !779
  br label %if.end.12, !dbg !811

if.end.12:                                        ; preds = %if.then.11, %sw.bb.8
  br label %sw.epilog, !dbg !812

sw.bb.13:                                         ; preds = %for.cond
  %8 = load i32, i32* %state, align 4, !dbg !813, !tbaa !779
  %cmp14 = icmp eq i32 %8, 5, !dbg !815
  br i1 %cmp14, label %if.then.16, label %if.else.17, !dbg !816

if.then.16:                                       ; preds = %sw.bb.13
  store i32 2, i32* %state, align 4, !dbg !817, !tbaa !779
  br label %if.end.27, !dbg !819

if.else.17:                                       ; preds = %sw.bb.13
  %9 = load i32, i32* %state, align 4, !dbg !820, !tbaa !779
  %cmp18 = icmp eq i32 %9, 4, !dbg !822
  br i1 %cmp18, label %if.then.20, label %if.else.21, !dbg !823

if.then.20:                                       ; preds = %if.else.17
  store i32 5, i32* %state, align 4, !dbg !824, !tbaa !779
  br label %if.end.26, !dbg !826

if.else.21:                                       ; preds = %if.else.17
  %10 = load i32, i32* %state, align 4, !dbg !827, !tbaa !779
  %cmp22 = icmp eq i32 %10, 2, !dbg !829
  br i1 %cmp22, label %if.then.24, label %if.end.25, !dbg !830

if.then.24:                                       ; preds = %if.else.21
  store i32 1, i32* %retval, !dbg !831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !831

if.end.25:                                        ; preds = %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.16
  br label %sw.epilog, !dbg !833

sw.bb.28:                                         ; preds = %for.cond
  %11 = load i32, i32* %state, align 4, !dbg !834, !tbaa !779
  %cmp29 = icmp eq i32 %11, 5, !dbg !836
  br i1 %cmp29, label %if.then.31, label %if.else.32, !dbg !837

if.then.31:                                       ; preds = %sw.bb.28
  store i32 1, i32* %retval, !dbg !838
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !838

if.else.32:                                       ; preds = %sw.bb.28
  %12 = load i32, i32* %state, align 4, !dbg !840, !tbaa !779
  %cmp33 = icmp eq i32 %12, 0, !dbg !842
  br i1 %cmp33, label %if.then.35, label %if.else.36, !dbg !843

if.then.35:                                       ; preds = %if.else.32
  store i32 1, i32* %retval, !dbg !844
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !844

if.else.36:                                       ; preds = %if.else.32
  %13 = load i32, i32* %state, align 4, !dbg !846, !tbaa !779
  %cmp37 = icmp eq i32 %13, 2, !dbg !848
  br i1 %cmp37, label %if.then.39, label %if.else.40, !dbg !849

if.then.39:                                       ; preds = %if.else.36
  store i32 3, i32* %state, align 4, !dbg !850, !tbaa !779
  br label %if.end.45, !dbg !852

if.else.40:                                       ; preds = %if.else.36
  %14 = load i32, i32* %state, align 4, !dbg !853, !tbaa !779
  %cmp41 = icmp eq i32 %14, 3, !dbg !855
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !856

if.then.43:                                       ; preds = %if.else.40
  store i32 4, i32* %state, align 4, !dbg !857, !tbaa !779
  br label %if.end.44, !dbg !859

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %sw.epilog, !dbg !860

sw.default:                                       ; preds = %for.cond
  %15 = load i32, i32* %state, align 4, !dbg !861, !tbaa !779
  %cmp48 = icmp eq i32 %15, 4, !dbg !863
  br i1 %cmp48, label %if.then.50, label %if.else.51, !dbg !864

if.then.50:                                       ; preds = %sw.default
  store i32 3, i32* %state, align 4, !dbg !865, !tbaa !779
  br label %if.end.62, !dbg !867

if.else.51:                                       ; preds = %sw.default
  %16 = load i32, i32* %state, align 4, !dbg !868, !tbaa !779
  %cmp52 = icmp eq i32 %16, 1, !dbg !870
  br i1 %cmp52, label %if.then.54, label %if.else.55, !dbg !871

if.then.54:                                       ; preds = %if.else.51
  br label %if.end.61, !dbg !872

if.else.55:                                       ; preds = %if.else.51
  %17 = load i32, i32* %state, align 4, !dbg !874, !tbaa !779
  %cmp56 = icmp eq i32 %17, 3, !dbg !876
  br i1 %cmp56, label %if.then.58, label %if.else.59, !dbg !877

if.then.58:                                       ; preds = %if.else.55
  br label %if.end.60, !dbg !878

if.else.59:                                       ; preds = %if.else.55
  store i32 1, i32* %retval, !dbg !880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !880

if.end.60:                                        ; preds = %if.then.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  br label %sw.epilog, !dbg !882

sw.epilog:                                        ; preds = %if.end.62, %if.end.47, %if.end.27, %if.end.12, %sw.bb.7, %if.end.6
  %18 = load i8*, i8** %pos, align 8, !dbg !883, !tbaa !677
  %incdec.ptr = getelementptr i8, i8* %18, i32 1, !dbg !883
  store i8* %incdec.ptr, i8** %pos, align 8, !dbg !883, !tbaa !677
  br label %for.cond, !dbg !884

cleanup:                                          ; preds = %if.else.59, %if.then.35, %if.then.31, %if.then.24, %sw.bb
  %19 = bitcast i32* %state to i8*, !dbg !885
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !885
  %20 = bitcast i8** %pos to i8*, !dbg !885
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !885
  %21 = load i32, i32* %retval, !dbg !885
  ret i32 %21, !dbg !885
}

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_bind_parameter(%struct.pysqlite_Statement* %self, i32 %pos, %struct._object* %parameter) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %pos.addr = alloca i32, align 4
  %parameter.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %string = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %paramtype = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !538, metadata !681), !dbg !886
  store i32 %pos, i32* %pos.addr, align 4, !tbaa !714
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !539, metadata !681), !dbg !887
  store %struct._object* %parameter, %struct._object** %parameter.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct._object** %parameter.addr, metadata !540, metadata !681), !dbg !888
  %0 = bitcast i32* %rc to i8*, !dbg !889
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !889
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !541, metadata !681), !dbg !890
  store i32 0, i32* %rc, align 4, !dbg !890, !tbaa !714
  %1 = bitcast i8** %buffer to i8*, !dbg !891
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !891
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !542, metadata !681), !dbg !892
  %2 = bitcast i8** %string to i8*, !dbg !893
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !893
  call void @llvm.dbg.declare(metadata i8** %string, metadata !543, metadata !681), !dbg !894
  %3 = bitcast i64* %buflen to i8*, !dbg !895
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !895
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !544, metadata !681), !dbg !896
  %4 = bitcast i32* %paramtype to i8*, !dbg !897
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !897
  call void @llvm.dbg.declare(metadata i32* %paramtype, metadata !545, metadata !681), !dbg !898
  %5 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !899, !tbaa !677
  %cmp = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !901
  br i1 %cmp, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %entry
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !903, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %6, i32 0, i32 2, !dbg !905
  %7 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !905, !tbaa !696
  %8 = load i32, i32* %pos.addr, align 4, !dbg !906, !tbaa !714
  %call = call i32 @sqlite3_bind_null(%struct.sqlite3_stmt* %7, i32 %8), !dbg !907
  store i32 %call, i32* %rc, align 4, !dbg !908, !tbaa !714
  br label %final, !dbg !909

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !910, !tbaa !677
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !912
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !912, !tbaa !913
  %cmp1 = icmp eq %struct._typeobject* %10, @PyLong_Type, !dbg !914
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !915

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %paramtype, align 4, !dbg !916, !tbaa !779
  br label %if.end.40, !dbg !918

if.else:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !919, !tbaa !677
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !921
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !921, !tbaa !913
  %cmp4 = icmp eq %struct._typeobject* %12, @PyFloat_Type, !dbg !922
  br i1 %cmp4, label %if.then.5, label %if.else.6, !dbg !923

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %paramtype, align 4, !dbg !924, !tbaa !779
  br label %if.end.39, !dbg !926

if.else.6:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !927, !tbaa !677
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !929
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !929, !tbaa !913
  %cmp8 = icmp eq %struct._typeobject* %14, @PyUnicode_Type, !dbg !930
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !931

if.then.9:                                        ; preds = %if.else.6
  store i32 2, i32* %paramtype, align 4, !dbg !932, !tbaa !779
  br label %if.end.38, !dbg !934

if.else.10:                                       ; preds = %if.else.6
  %15 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !935, !tbaa !677
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !937
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !937, !tbaa !913
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19, !dbg !938
  %17 = load i64, i64* %tp_flags, align 8, !dbg !938, !tbaa !939
  %and = and i64 %17, 16777216, !dbg !942
  %cmp12 = icmp ne i64 %and, 0, !dbg !943
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !944

if.then.13:                                       ; preds = %if.else.10
  store i32 0, i32* %paramtype, align 4, !dbg !945, !tbaa !779
  br label %if.end.37, !dbg !947

if.else.14:                                       ; preds = %if.else.10
  %18 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !948, !tbaa !677
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !950
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !950, !tbaa !913
  %cmp16 = icmp eq %struct._typeobject* %19, @PyFloat_Type, !dbg !951
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false, !dbg !952

lor.lhs.false:                                    ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !953, !tbaa !677
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !955
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !955, !tbaa !913
  %call18 = call i32 @PyType_IsSubtype(%struct._typeobject* %21, %struct._typeobject* @PyFloat_Type), !dbg !956
  %tobool = icmp ne i32 %call18, 0, !dbg !956
  br i1 %tobool, label %if.then.19, label %if.else.20, !dbg !957

if.then.19:                                       ; preds = %lor.lhs.false, %if.else.14
  store i32 1, i32* %paramtype, align 4, !dbg !958, !tbaa !779
  br label %if.end.36, !dbg !960

if.else.20:                                       ; preds = %lor.lhs.false
  %22 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !961, !tbaa !677
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !963
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !963, !tbaa !913
  %tp_flags22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 19, !dbg !964
  %24 = load i64, i64* %tp_flags22, align 8, !dbg !964, !tbaa !939
  %and23 = and i64 %24, 268435456, !dbg !965
  %cmp24 = icmp ne i64 %and23, 0, !dbg !966
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !967

if.then.25:                                       ; preds = %if.else.20
  store i32 2, i32* %paramtype, align 4, !dbg !968, !tbaa !779
  br label %if.end.35, !dbg !970

if.else.26:                                       ; preds = %if.else.20
  %25 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !971, !tbaa !677
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !973
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !973, !tbaa !913
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 18, !dbg !974
  %27 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !974, !tbaa !975
  %cmp28 = icmp ne %struct.PyBufferProcs* %27, null, !dbg !976
  br i1 %cmp28, label %land.lhs.true, label %if.else.33, !dbg !977

land.lhs.true:                                    ; preds = %if.else.26
  %28 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !978, !tbaa !677
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !980
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !980, !tbaa !913
  %tp_as_buffer30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 18, !dbg !981
  %30 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer30, align 8, !dbg !981, !tbaa !975
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %30, i32 0, i32 0, !dbg !982
  %31 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !982, !tbaa !983
  %cmp31 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %31, null, !dbg !985
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !986

if.then.32:                                       ; preds = %land.lhs.true
  store i32 3, i32* %paramtype, align 4, !dbg !987, !tbaa !779
  br label %if.end.34, !dbg !989

if.else.33:                                       ; preds = %land.lhs.true, %if.else.26
  store i32 4, i32* %paramtype, align 4, !dbg !990, !tbaa !779
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.25
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.19
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.13
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.9
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.5
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.2
  %32 = load i32, i32* %paramtype, align 4, !dbg !992, !tbaa !779
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.55
    i32 3, label %sw.bb.65
    i32 4, label %sw.bb.78
  ], !dbg !993

sw.bb:                                            ; preds = %if.end.40
  %33 = bitcast i64* %value to i8*, !dbg !994
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !994
  call void @llvm.dbg.declare(metadata i64* %value, metadata !547, metadata !681), !dbg !995
  %34 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !996, !tbaa !677
  %call41 = call i64 @_pysqlite_long_as_int64(%struct._object* %34), !dbg !997
  store i64 %call41, i64* %value, align 8, !dbg !995, !tbaa !998
  %35 = load i64, i64* %value, align 8, !dbg !1000, !tbaa !998
  %cmp42 = icmp eq i64 %35, -1, !dbg !1002
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.47, !dbg !1003

land.lhs.true.43:                                 ; preds = %sw.bb
  %call44 = call %struct._object* @PyErr_Occurred(), !dbg !1004
  %tobool45 = icmp ne %struct._object* %call44, null, !dbg !1004
  br i1 %tobool45, label %if.then.46, label %if.else.47, !dbg !1006

if.then.46:                                       ; preds = %land.lhs.true.43
  store i32 -1, i32* %rc, align 4, !dbg !1007, !tbaa !714
  br label %if.end.50, !dbg !1008

if.else.47:                                       ; preds = %land.lhs.true.43, %sw.bb
  %36 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1009, !tbaa !677
  %st48 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %36, i32 0, i32 2, !dbg !1010
  %37 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st48, align 8, !dbg !1010, !tbaa !696
  %38 = load i32, i32* %pos.addr, align 4, !dbg !1011, !tbaa !714
  %39 = load i64, i64* %value, align 8, !dbg !1012, !tbaa !998
  %call49 = call i32 @sqlite3_bind_int64(%struct.sqlite3_stmt* %37, i32 %38, i64 %39), !dbg !1013
  store i32 %call49, i32* %rc, align 4, !dbg !1014, !tbaa !714
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %40 = bitcast i64* %value to i8*, !dbg !1015
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !1015
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.40
  %41 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1016, !tbaa !677
  %st52 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %41, i32 0, i32 2, !dbg !1017
  %42 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st52, align 8, !dbg !1017, !tbaa !696
  %43 = load i32, i32* %pos.addr, align 4, !dbg !1018, !tbaa !714
  %44 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !1019, !tbaa !677
  %call53 = call double @PyFloat_AsDouble(%struct._object* %44), !dbg !1020
  %call54 = call i32 @sqlite3_bind_double(%struct.sqlite3_stmt* %42, i32 %43, double %call53), !dbg !1021
  store i32 %call54, i32* %rc, align 4, !dbg !1022, !tbaa !714
  br label %sw.epilog, !dbg !1023

sw.bb.55:                                         ; preds = %if.end.40
  %45 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !1024, !tbaa !677
  %call56 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %45, i64* %buflen), !dbg !1025
  store i8* %call56, i8** %string, align 8, !dbg !1026, !tbaa !677
  %46 = load i8*, i8** %string, align 8, !dbg !1027, !tbaa !677
  %cmp57 = icmp eq i8* %46, null, !dbg !1029
  br i1 %cmp57, label %if.then.58, label %if.end.59, !dbg !1030

if.then.58:                                       ; preds = %sw.bb.55
  store i32 -1, i32* %retval, !dbg !1031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1031

if.end.59:                                        ; preds = %sw.bb.55
  %47 = load i64, i64* %buflen, align 8, !dbg !1032, !tbaa !1034
  %cmp60 = icmp sgt i64 %47, 2147483647, !dbg !1035
  br i1 %cmp60, label %if.then.61, label %if.end.62, !dbg !1036

if.then.61:                                       ; preds = %if.end.59
  %48 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1037, !tbaa !677
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)), !dbg !1039
  store i32 -1, i32* %retval, !dbg !1040
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1040

if.end.62:                                        ; preds = %if.end.59
  %49 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1041, !tbaa !677
  %st63 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %49, i32 0, i32 2, !dbg !1042
  %50 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st63, align 8, !dbg !1042, !tbaa !696
  %51 = load i32, i32* %pos.addr, align 4, !dbg !1043, !tbaa !714
  %52 = load i8*, i8** %string, align 8, !dbg !1044, !tbaa !677
  %53 = load i64, i64* %buflen, align 8, !dbg !1045, !tbaa !1034
  %conv = trunc i64 %53 to i32, !dbg !1046
  %call64 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %50, i32 %51, i8* %52, i32 %conv, void (i8*)* inttoptr (i64 -1 to void (i8*)*)), !dbg !1047
  store i32 %call64, i32* %rc, align 4, !dbg !1048, !tbaa !714
  br label %sw.epilog, !dbg !1049

sw.bb.65:                                         ; preds = %if.end.40
  %54 = load %struct._object*, %struct._object** %parameter.addr, align 8, !dbg !1050, !tbaa !677
  %call66 = call i32 @PyObject_AsCharBuffer(%struct._object* %54, i8** %buffer, i64* %buflen), !dbg !1052
  %cmp67 = icmp ne i32 %call66, 0, !dbg !1053
  br i1 %cmp67, label %if.then.69, label %if.end.70, !dbg !1054

if.then.69:                                       ; preds = %sw.bb.65
  %55 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1055, !tbaa !677
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)), !dbg !1057
  store i32 -1, i32* %retval, !dbg !1058
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1058

if.end.70:                                        ; preds = %sw.bb.65
  %56 = load i64, i64* %buflen, align 8, !dbg !1059, !tbaa !1034
  %cmp71 = icmp sgt i64 %56, 2147483647, !dbg !1061
  br i1 %cmp71, label %if.then.73, label %if.end.74, !dbg !1062

if.then.73:                                       ; preds = %if.end.70
  %57 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1063, !tbaa !677
  call void @PyErr_SetString(%struct._object* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)), !dbg !1065
  store i32 -1, i32* %retval, !dbg !1066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1066

if.end.74:                                        ; preds = %if.end.70
  %58 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1067, !tbaa !677
  %st75 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %58, i32 0, i32 2, !dbg !1068
  %59 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st75, align 8, !dbg !1068, !tbaa !696
  %60 = load i32, i32* %pos.addr, align 4, !dbg !1069, !tbaa !714
  %61 = load i8*, i8** %buffer, align 8, !dbg !1070, !tbaa !677
  %62 = load i64, i64* %buflen, align 8, !dbg !1071, !tbaa !1034
  %conv76 = trunc i64 %62 to i32, !dbg !1071
  %call77 = call i32 @sqlite3_bind_blob(%struct.sqlite3_stmt* %59, i32 %60, i8* %61, i32 %conv76, void (i8*)* inttoptr (i64 -1 to void (i8*)*)), !dbg !1072
  store i32 %call77, i32* %rc, align 4, !dbg !1073, !tbaa !714
  br label %sw.epilog, !dbg !1074

sw.bb.78:                                         ; preds = %if.end.40
  store i32 -1, i32* %rc, align 4, !dbg !1075, !tbaa !714
  br label %sw.epilog, !dbg !1076

sw.epilog:                                        ; preds = %sw.bb.78, %if.end.40, %if.end.74, %if.end.62, %sw.bb.51, %if.end.50
  br label %final, !dbg !1077

final:                                            ; preds = %sw.epilog, %if.then
  %63 = load i32, i32* %rc, align 4, !dbg !1079, !tbaa !714
  store i32 %63, i32* %retval, !dbg !1080
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1080

cleanup:                                          ; preds = %final, %if.then.73, %if.then.69, %if.then.61, %if.then.58
  %64 = bitcast i32* %paramtype to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 4, i8* %64) #2, !dbg !1081
  %65 = bitcast i64* %buflen to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !1081
  %66 = bitcast i8** %string to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !1081
  %67 = bitcast i8** %buffer to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !1081
  %68 = bitcast i32* %rc to i8*, !dbg !1081
  call void @llvm.lifetime.end(i64 4, i8* %68) #2, !dbg !1081
  %69 = load i32, i32* %retval, !dbg !1081
  ret i32 %69, !dbg !1081
}

declare i32 @sqlite3_bind_null(%struct.sqlite3_stmt*, i32) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare i64 @_pysqlite_long_as_int64(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @sqlite3_bind_int64(%struct.sqlite3_stmt*, i32, i64) #3

declare i32 @sqlite3_bind_double(%struct.sqlite3_stmt*, i32, double) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i32 @sqlite3_bind_text(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #3

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #3

declare i32 @sqlite3_bind_blob(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #3

; Function Attrs: nounwind uwtable
define void @pysqlite_statement_bind_parameters(%struct.pysqlite_Statement* %self, %struct._object* %parameters) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %parameters.addr = alloca %struct._object*, align 8
  %current_param = alloca %struct._object*, align 8
  %adapted = alloca %struct._object*, align 8
  %binding_name = alloca i8*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %num_params_needed = alloca i32, align 4
  %num_params = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_save115 = alloca %struct._ts*, align 8
  %_py_xincref_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp153 = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !556, metadata !681), !dbg !1082
  store %struct._object* %parameters, %struct._object** %parameters.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct._object** %parameters.addr, metadata !557, metadata !681), !dbg !1083
  %0 = bitcast %struct._object** %current_param to i8*, !dbg !1084
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1084
  call void @llvm.dbg.declare(metadata %struct._object** %current_param, metadata !558, metadata !681), !dbg !1085
  %1 = bitcast %struct._object** %adapted to i8*, !dbg !1086
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1086
  call void @llvm.dbg.declare(metadata %struct._object** %adapted, metadata !559, metadata !681), !dbg !1087
  %2 = bitcast i8** %binding_name to i8*, !dbg !1088
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1088
  call void @llvm.dbg.declare(metadata i8** %binding_name, metadata !560, metadata !681), !dbg !1089
  %3 = bitcast i32* %i to i8*, !dbg !1090
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1090
  call void @llvm.dbg.declare(metadata i32* %i, metadata !561, metadata !681), !dbg !1091
  %4 = bitcast i32* %rc to i8*, !dbg !1092
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !562, metadata !681), !dbg !1093
  %5 = bitcast i32* %num_params_needed to i8*, !dbg !1094
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1094
  call void @llvm.dbg.declare(metadata i32* %num_params_needed, metadata !563, metadata !681), !dbg !1095
  %6 = bitcast i64* %num_params to i8*, !dbg !1096
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1096
  call void @llvm.dbg.declare(metadata i64* %num_params, metadata !564, metadata !681), !dbg !1097
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !1098
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1098
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !565, metadata !681), !dbg !1099
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1100
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1101, !tbaa !677
  %8 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1102, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %8, i32 0, i32 2, !dbg !1103
  %9 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1103, !tbaa !696
  %call1 = call i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt* %9), !dbg !1104
  store i32 %call1, i32* %num_params_needed, align 4, !dbg !1105, !tbaa !714
  %10 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1106, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %10), !dbg !1107
  %11 = bitcast %struct._ts** %_save to i8*, !dbg !1108
  call void @llvm.lifetime.end(i64 8, i8* %11) #2, !dbg !1108
  %12 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1109, !tbaa !677
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1110
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1110, !tbaa !913
  %cmp = icmp eq %struct._typeobject* %13, @PyTuple_Type, !dbg !1111
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1112

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1113, !tbaa !677
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !1115
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !1115, !tbaa !913
  %cmp3 = icmp eq %struct._typeobject* %15, @PyList_Type, !dbg !1116
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4, !dbg !1117

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %16 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1118, !tbaa !677
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1120
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8, !dbg !1120, !tbaa !913
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19, !dbg !1121
  %18 = load i64, i64* %tp_flags, align 8, !dbg !1121, !tbaa !939
  %and = and i64 %18, 536870912, !dbg !1122
  %cmp6 = icmp ne i64 %and, 0, !dbg !1123
  br i1 %cmp6, label %if.else.104, label %land.lhs.true, !dbg !1124

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %19 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1125, !tbaa !677
  %call7 = call i32 @PySequence_Check(%struct._object* %19), !dbg !1127
  %tobool = icmp ne i32 %call7, 0, !dbg !1127
  br i1 %tobool, label %if.then, label %if.else.104, !dbg !1128

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %20 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1129, !tbaa !677
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !1131
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1131, !tbaa !913
  %cmp9 = icmp eq %struct._typeobject* %21, @PyTuple_Type, !dbg !1132
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1133

if.then.10:                                       ; preds = %if.then
  %22 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1134, !tbaa !677
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*, !dbg !1136
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1, !dbg !1137
  %24 = load i64, i64* %ob_size, align 8, !dbg !1137, !tbaa !1138
  store i64 %24, i64* %num_params, align 8, !dbg !1139, !tbaa !1034
  br label %if.end.17, !dbg !1140

if.else:                                          ; preds = %if.then
  %25 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1141, !tbaa !677
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1143
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1143, !tbaa !913
  %cmp12 = icmp eq %struct._typeobject* %26, @PyList_Type, !dbg !1144
  br i1 %cmp12, label %if.then.13, label %if.else.15, !dbg !1145

if.then.13:                                       ; preds = %if.else
  %27 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1146, !tbaa !677
  %28 = bitcast %struct._object* %27 to %struct.PyVarObject*, !dbg !1148
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1, !dbg !1149
  %29 = load i64, i64* %ob_size14, align 8, !dbg !1149, !tbaa !1138
  store i64 %29, i64* %num_params, align 8, !dbg !1150, !tbaa !1034
  br label %if.end, !dbg !1151

if.else.15:                                       ; preds = %if.else
  %30 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1152, !tbaa !677
  %call16 = call i64 @PySequence_Size(%struct._object* %30), !dbg !1154
  store i64 %call16, i64* %num_params, align 8, !dbg !1155, !tbaa !1034
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.10
  %31 = load i64, i64* %num_params, align 8, !dbg !1156, !tbaa !1034
  %32 = load i32, i32* %num_params_needed, align 4, !dbg !1158, !tbaa !714
  %conv = sext i32 %32 to i64, !dbg !1158
  %cmp18 = icmp ne i64 %31, %conv, !dbg !1159
  br i1 %cmp18, label %if.then.20, label %if.end.22, !dbg !1160

if.then.20:                                       ; preds = %if.end.17
  %33 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !1161, !tbaa !677
  %34 = load i32, i32* %num_params_needed, align 4, !dbg !1163, !tbaa !714
  %35 = load i64, i64* %num_params, align 8, !dbg !1164, !tbaa !1034
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %33, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i32 0, i32 0), i32 %34, i64 %35), !dbg !1165
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1166

if.end.22:                                        ; preds = %if.end.17
  store i32 0, i32* %i, align 4, !dbg !1167, !tbaa !714
  br label %for.cond, !dbg !1168

for.cond:                                         ; preds = %for.inc, %if.end.22
  %36 = load i32, i32* %i, align 4, !dbg !1169, !tbaa !714
  %conv23 = sext i32 %36 to i64, !dbg !1169
  %37 = load i64, i64* %num_params, align 8, !dbg !1172, !tbaa !1034
  %cmp24 = icmp slt i64 %conv23, %37, !dbg !1173
  br i1 %cmp24, label %for.body, label %for.end, !dbg !1174

for.body:                                         ; preds = %for.cond
  %38 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1175, !tbaa !677
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1176
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1176, !tbaa !913
  %cmp27 = icmp eq %struct._typeobject* %39, @PyTuple_Type, !dbg !1177
  br i1 %cmp27, label %if.then.29, label %if.else.34, !dbg !1178

if.then.29:                                       ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !dbg !1179, !tbaa !714
  %idxprom = sext i32 %40 to i64, !dbg !1180
  %41 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1181, !tbaa !677
  %42 = bitcast %struct._object* %41 to %struct.PyTupleObject*, !dbg !1182
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %42, i32 0, i32 1, !dbg !1183
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1180
  %43 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1180, !tbaa !677
  store %struct._object* %43, %struct._object** %current_param, align 8, !dbg !1184, !tbaa !677
  br label %do.body, !dbg !1185

do.body:                                          ; preds = %if.then.29
  %44 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1186
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !1186
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !567, metadata !681), !dbg !1188
  %45 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1189, !tbaa !677
  store %struct._object* %45, %struct._object** %_py_xincref_tmp, align 8, !dbg !1188, !tbaa !677
  %46 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1190, !tbaa !677
  %cmp30 = icmp ne %struct._object* %46, null, !dbg !1192
  br i1 %cmp30, label %if.then.32, label %if.end.33, !dbg !1193

if.then.32:                                       ; preds = %do.body
  %47 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1194, !tbaa !677
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1196
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !1197, !tbaa !724
  %inc = add i64 %48, 1, !dbg !1197
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1197, !tbaa !724
  br label %if.end.33, !dbg !1198

if.end.33:                                        ; preds = %if.then.32, %do.body
  %49 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1199
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !1199
  br label %do.cond, !dbg !1202

do.cond:                                          ; preds = %if.end.33
  br label %do.end, !dbg !1203

do.end:                                           ; preds = %do.cond
  br label %if.end.56, !dbg !1205

if.else.34:                                       ; preds = %for.body
  %50 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1206, !tbaa !677
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !1207
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8, !dbg !1207, !tbaa !913
  %cmp36 = icmp eq %struct._typeobject* %51, @PyList_Type, !dbg !1208
  br i1 %cmp36, label %if.then.38, label %if.else.52, !dbg !1209

if.then.38:                                       ; preds = %if.else.34
  %52 = load i32, i32* %i, align 4, !dbg !1210, !tbaa !714
  %idxprom39 = sext i32 %52 to i64, !dbg !1211
  %53 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1212, !tbaa !677
  %54 = bitcast %struct._object* %53 to %struct.PyListObject*, !dbg !1213
  %ob_item40 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %54, i32 0, i32 1, !dbg !1214
  %55 = load %struct._object**, %struct._object*** %ob_item40, align 8, !dbg !1214, !tbaa !1215
  %arrayidx41 = getelementptr %struct._object*, %struct._object** %55, i64 %idxprom39, !dbg !1211
  %56 = load %struct._object*, %struct._object** %arrayidx41, align 8, !dbg !1211, !tbaa !677
  store %struct._object* %56, %struct._object** %current_param, align 8, !dbg !1217, !tbaa !677
  br label %do.body.42, !dbg !1218

do.body.42:                                       ; preds = %if.then.38
  %57 = bitcast %struct._object** %_py_xincref_tmp43 to i8*, !dbg !1219
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !1219
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp43, metadata !576, metadata !681), !dbg !1221
  %58 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1222, !tbaa !677
  store %struct._object* %58, %struct._object** %_py_xincref_tmp43, align 8, !dbg !1221, !tbaa !677
  %59 = load %struct._object*, %struct._object** %_py_xincref_tmp43, align 8, !dbg !1223, !tbaa !677
  %cmp44 = icmp ne %struct._object* %59, null, !dbg !1225
  br i1 %cmp44, label %if.then.46, label %if.end.49, !dbg !1226

if.then.46:                                       ; preds = %do.body.42
  %60 = load %struct._object*, %struct._object** %_py_xincref_tmp43, align 8, !dbg !1227, !tbaa !677
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !1229
  %61 = load i64, i64* %ob_refcnt47, align 8, !dbg !1230, !tbaa !724
  %inc48 = add i64 %61, 1, !dbg !1230
  store i64 %inc48, i64* %ob_refcnt47, align 8, !dbg !1230, !tbaa !724
  br label %if.end.49, !dbg !1231

if.end.49:                                        ; preds = %if.then.46, %do.body.42
  %62 = bitcast %struct._object** %_py_xincref_tmp43 to i8*, !dbg !1232
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !1232
  br label %do.cond.50, !dbg !1235

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51, !dbg !1236

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.55, !dbg !1238

if.else.52:                                       ; preds = %if.else.34
  %63 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1239, !tbaa !677
  %64 = load i32, i32* %i, align 4, !dbg !1241, !tbaa !714
  %conv53 = sext i32 %64 to i64, !dbg !1241
  %call54 = call %struct._object* @PySequence_GetItem(%struct._object* %63, i64 %conv53), !dbg !1242
  store %struct._object* %call54, %struct._object** %current_param, align 8, !dbg !1243, !tbaa !677
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %do.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %do.end
  %65 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1244, !tbaa !677
  %tobool57 = icmp ne %struct._object* %65, null, !dbg !1244
  br i1 %tobool57, label %if.end.59, label %if.then.58, !dbg !1246

if.then.58:                                       ; preds = %if.end.56
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1247

if.end.59:                                        ; preds = %if.end.56
  %66 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1249, !tbaa !677
  %call60 = call i32 @_need_adapt(%struct._object* %66), !dbg !1250
  %tobool61 = icmp ne i32 %call60, 0, !dbg !1250
  br i1 %tobool61, label %if.else.63, label %if.then.62, !dbg !1251

if.then.62:                                       ; preds = %if.end.59
  %67 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1252, !tbaa !677
  store %struct._object* %67, %struct._object** %adapted, align 8, !dbg !1254, !tbaa !677
  br label %if.end.79, !dbg !1255

if.else.63:                                       ; preds = %if.end.59
  %68 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1256, !tbaa !677
  %call64 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %68, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* null), !dbg !1257
  store %struct._object* %call64, %struct._object** %adapted, align 8, !dbg !1258, !tbaa !677
  %69 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1259, !tbaa !677
  %tobool65 = icmp ne %struct._object* %69, null, !dbg !1259
  br i1 %tobool65, label %if.then.66, label %if.else.77, !dbg !1260

if.then.66:                                       ; preds = %if.else.63
  br label %do.body.67, !dbg !1261

do.body.67:                                       ; preds = %if.then.66
  %70 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !1262
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !580, metadata !681), !dbg !1264
  %71 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1265, !tbaa !677
  store %struct._object* %71, %struct._object** %_py_decref_tmp, align 8, !dbg !1264, !tbaa !677
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1266, !tbaa !677
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !1268
  %73 = load i64, i64* %ob_refcnt68, align 8, !dbg !1269, !tbaa !724
  %dec = add i64 %73, -1, !dbg !1269
  store i64 %dec, i64* %ob_refcnt68, align 8, !dbg !1269, !tbaa !724
  %cmp69 = icmp ne i64 %dec, 0, !dbg !1270
  br i1 %cmp69, label %if.then.71, label %if.else.72, !dbg !1271

if.then.71:                                       ; preds = %do.body.67
  br label %if.end.74, !dbg !1272

if.else.72:                                       ; preds = %do.body.67
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1274, !tbaa !677
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !1276
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8, !dbg !1276, !tbaa !913
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !1277
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1277, !tbaa !1278
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1279, !tbaa !677
  call void %76(%struct._object* %77), !dbg !1280
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.71
  %78 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1281
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !1281
  br label %do.cond.75, !dbg !1283

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !1284

do.end.76:                                        ; preds = %do.cond.75
  br label %if.end.78, !dbg !1286

if.else.77:                                       ; preds = %if.else.63
  call void @PyErr_Clear(), !dbg !1287
  %79 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1289, !tbaa !677
  store %struct._object* %79, %struct._object** %adapted, align 8, !dbg !1290, !tbaa !677
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %do.end.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.62
  %80 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1291, !tbaa !677
  %81 = load i32, i32* %i, align 4, !dbg !1292, !tbaa !714
  %add = add i32 %81, 1, !dbg !1293
  %82 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1294, !tbaa !677
  %call80 = call i32 @pysqlite_statement_bind_parameter(%struct.pysqlite_Statement* %80, i32 %add, %struct._object* %82), !dbg !1295
  store i32 %call80, i32* %rc, align 4, !dbg !1296, !tbaa !714
  br label %do.body.81, !dbg !1297

do.body.81:                                       ; preds = %if.end.79
  %83 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %83) #2, !dbg !1298
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !586, metadata !681), !dbg !1300
  %84 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1301, !tbaa !677
  store %struct._object* %84, %struct._object** %_py_decref_tmp82, align 8, !dbg !1300, !tbaa !677
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !1302, !tbaa !677
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1304
  %86 = load i64, i64* %ob_refcnt83, align 8, !dbg !1305, !tbaa !724
  %dec84 = add i64 %86, -1, !dbg !1305
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !1305, !tbaa !724
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !1306
  br i1 %cmp85, label %if.then.87, label %if.else.88, !dbg !1307

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91, !dbg !1308

if.else.88:                                       ; preds = %do.body.81
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !1310, !tbaa !677
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !1312
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !1312, !tbaa !913
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !1313
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !1313, !tbaa !1278
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !1314, !tbaa !677
  call void %89(%struct._object* %90), !dbg !1315
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  %91 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !1316
  call void @llvm.lifetime.end(i64 8, i8* %91) #2, !dbg !1316
  br label %do.cond.92, !dbg !1318

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !1319

do.end.93:                                        ; preds = %do.cond.92
  %92 = load i32, i32* %rc, align 4, !dbg !1321, !tbaa !714
  %cmp94 = icmp ne i32 %92, 0, !dbg !1323
  br i1 %cmp94, label %if.then.96, label %if.end.102, !dbg !1324

if.then.96:                                       ; preds = %do.end.93
  %call97 = call %struct._object* @PyErr_Occurred(), !dbg !1325
  %tobool98 = icmp ne %struct._object* %call97, null, !dbg !1325
  br i1 %tobool98, label %if.end.101, label %if.then.99, !dbg !1328

if.then.99:                                       ; preds = %if.then.96
  %93 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !1329, !tbaa !677
  %94 = load i32, i32* %i, align 4, !dbg !1331, !tbaa !714
  %call100 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i32 0, i32 0), i32 %94), !dbg !1332
  br label %if.end.101, !dbg !1333

if.end.101:                                       ; preds = %if.then.99, %if.then.96
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1334

if.end.102:                                       ; preds = %do.end.93
  br label %for.inc, !dbg !1335

for.inc:                                          ; preds = %if.end.102
  %95 = load i32, i32* %i, align 4, !dbg !1336, !tbaa !714
  %inc103 = add i32 %95, 1, !dbg !1336
  store i32 %inc103, i32* %i, align 4, !dbg !1336, !tbaa !714
  br label %for.cond, !dbg !1337

for.end:                                          ; preds = %for.cond
  br label %if.end.196, !dbg !1338

if.else.104:                                      ; preds = %land.lhs.true, %lor.lhs.false.4
  %96 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1339, !tbaa !677
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1, !dbg !1340
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8, !dbg !1340, !tbaa !913
  %tp_flags106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 19, !dbg !1341
  %98 = load i64, i64* %tp_flags106, align 8, !dbg !1341, !tbaa !939
  %and107 = and i64 %98, 536870912, !dbg !1342
  %cmp108 = icmp ne i64 %and107, 0, !dbg !1343
  br i1 %cmp108, label %if.then.110, label %if.else.194, !dbg !1344

if.then.110:                                      ; preds = %if.else.104
  store i32 1, i32* %i, align 4, !dbg !1345, !tbaa !714
  br label %for.cond.111, !dbg !1346

for.cond.111:                                     ; preds = %for.inc.191, %if.then.110
  %99 = load i32, i32* %i, align 4, !dbg !1347, !tbaa !714
  %100 = load i32, i32* %num_params_needed, align 4, !dbg !1350, !tbaa !714
  %cmp112 = icmp sle i32 %99, %100, !dbg !1351
  br i1 %cmp112, label %for.body.114, label %for.end.193, !dbg !1352

for.body.114:                                     ; preds = %for.cond.111
  %101 = bitcast %struct._ts** %_save115 to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %101) #2, !dbg !1353
  call void @llvm.dbg.declare(metadata %struct._ts** %_save115, metadata !588, metadata !681), !dbg !1354
  %call116 = call %struct._ts* @PyEval_SaveThread(), !dbg !1355
  store %struct._ts* %call116, %struct._ts** %_save115, align 8, !dbg !1356, !tbaa !677
  %102 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1357, !tbaa !677
  %st117 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %102, i32 0, i32 2, !dbg !1358
  %103 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st117, align 8, !dbg !1358, !tbaa !696
  %104 = load i32, i32* %i, align 4, !dbg !1359, !tbaa !714
  %call118 = call i8* @sqlite3_bind_parameter_name(%struct.sqlite3_stmt* %103, i32 %104), !dbg !1360
  store i8* %call118, i8** %binding_name, align 8, !dbg !1361, !tbaa !677
  %105 = load %struct._ts*, %struct._ts** %_save115, align 8, !dbg !1362, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %105), !dbg !1363
  %106 = bitcast %struct._ts** %_save115 to i8*, !dbg !1364
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !1364
  %107 = load i8*, i8** %binding_name, align 8, !dbg !1365, !tbaa !677
  %tobool119 = icmp ne i8* %107, null, !dbg !1365
  br i1 %tobool119, label %if.end.122, label %if.then.120, !dbg !1367

if.then.120:                                      ; preds = %for.body.114
  %108 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !1368, !tbaa !677
  %109 = load i32, i32* %i, align 4, !dbg !1370, !tbaa !714
  %call121 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %108, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i32 0, i32 0), i32 %109), !dbg !1371
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1372

if.end.122:                                       ; preds = %for.body.114
  %110 = load i8*, i8** %binding_name, align 8, !dbg !1373, !tbaa !677
  %incdec.ptr = getelementptr i8, i8* %110, i32 1, !dbg !1373
  store i8* %incdec.ptr, i8** %binding_name, align 8, !dbg !1373, !tbaa !677
  %111 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1374, !tbaa !677
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1, !dbg !1375
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8, !dbg !1375, !tbaa !913
  %cmp124 = icmp eq %struct._typeobject* %112, @PyDict_Type, !dbg !1376
  br i1 %cmp124, label %if.then.126, label %if.else.138, !dbg !1377

if.then.126:                                      ; preds = %if.end.122
  %113 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1378, !tbaa !677
  %114 = load i8*, i8** %binding_name, align 8, !dbg !1379, !tbaa !677
  %call127 = call %struct._object* @PyDict_GetItemString(%struct._object* %113, i8* %114), !dbg !1380
  store %struct._object* %call127, %struct._object** %current_param, align 8, !dbg !1381, !tbaa !677
  br label %do.body.128, !dbg !1382

do.body.128:                                      ; preds = %if.then.126
  %115 = bitcast %struct._object** %_py_xincref_tmp129 to i8*, !dbg !1383
  call void @llvm.lifetime.start(i64 8, i8* %115) #2, !dbg !1383
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp129, metadata !595, metadata !681), !dbg !1385
  %116 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1386, !tbaa !677
  store %struct._object* %116, %struct._object** %_py_xincref_tmp129, align 8, !dbg !1385, !tbaa !677
  %117 = load %struct._object*, %struct._object** %_py_xincref_tmp129, align 8, !dbg !1387, !tbaa !677
  %cmp130 = icmp ne %struct._object* %117, null, !dbg !1389
  br i1 %cmp130, label %if.then.132, label %if.end.135, !dbg !1390

if.then.132:                                      ; preds = %do.body.128
  %118 = load %struct._object*, %struct._object** %_py_xincref_tmp129, align 8, !dbg !1391, !tbaa !677
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0, !dbg !1393
  %119 = load i64, i64* %ob_refcnt133, align 8, !dbg !1394, !tbaa !724
  %inc134 = add i64 %119, 1, !dbg !1394
  store i64 %inc134, i64* %ob_refcnt133, align 8, !dbg !1394, !tbaa !724
  br label %if.end.135, !dbg !1395

if.end.135:                                       ; preds = %if.then.132, %do.body.128
  %120 = bitcast %struct._object** %_py_xincref_tmp129 to i8*, !dbg !1396
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !1396
  br label %do.cond.136, !dbg !1399

do.cond.136:                                      ; preds = %if.end.135
  br label %do.end.137, !dbg !1400

do.end.137:                                       ; preds = %do.cond.136
  br label %if.end.140, !dbg !1402

if.else.138:                                      ; preds = %if.end.122
  %121 = load %struct._object*, %struct._object** %parameters.addr, align 8, !dbg !1403, !tbaa !677
  %122 = load i8*, i8** %binding_name, align 8, !dbg !1405, !tbaa !677
  %call139 = call %struct._object* @PyMapping_GetItemString(%struct._object* %121, i8* %122), !dbg !1406
  store %struct._object* %call139, %struct._object** %current_param, align 8, !dbg !1407, !tbaa !677
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %do.end.137
  %123 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1408, !tbaa !677
  %tobool141 = icmp ne %struct._object* %123, null, !dbg !1408
  br i1 %tobool141, label %if.end.144, label %if.then.142, !dbg !1410

if.then.142:                                      ; preds = %if.end.140
  %124 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !1411, !tbaa !677
  %125 = load i32, i32* %i, align 4, !dbg !1413, !tbaa !714
  %call143 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %125), !dbg !1414
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1415

if.end.144:                                       ; preds = %if.end.140
  %126 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1416, !tbaa !677
  %call145 = call i32 @_need_adapt(%struct._object* %126), !dbg !1417
  %tobool146 = icmp ne i32 %call145, 0, !dbg !1417
  br i1 %tobool146, label %if.else.148, label %if.then.147, !dbg !1418

if.then.147:                                      ; preds = %if.end.144
  %127 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1419, !tbaa !677
  store %struct._object* %127, %struct._object** %adapted, align 8, !dbg !1421, !tbaa !677
  br label %if.end.167, !dbg !1422

if.else.148:                                      ; preds = %if.end.144
  %128 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1423, !tbaa !677
  %call149 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %128, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* null), !dbg !1424
  store %struct._object* %call149, %struct._object** %adapted, align 8, !dbg !1425, !tbaa !677
  %129 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1426, !tbaa !677
  %tobool150 = icmp ne %struct._object* %129, null, !dbg !1426
  br i1 %tobool150, label %if.then.151, label %if.else.165, !dbg !1427

if.then.151:                                      ; preds = %if.else.148
  br label %do.body.152, !dbg !1428

do.body.152:                                      ; preds = %if.then.151
  %130 = bitcast %struct._object** %_py_decref_tmp153 to i8*, !dbg !1429
  call void @llvm.lifetime.start(i64 8, i8* %130) #2, !dbg !1429
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp153, metadata !599, metadata !681), !dbg !1431
  %131 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1432, !tbaa !677
  store %struct._object* %131, %struct._object** %_py_decref_tmp153, align 8, !dbg !1431, !tbaa !677
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8, !dbg !1433, !tbaa !677
  %ob_refcnt154 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 0, !dbg !1435
  %133 = load i64, i64* %ob_refcnt154, align 8, !dbg !1436, !tbaa !724
  %dec155 = add i64 %133, -1, !dbg !1436
  store i64 %dec155, i64* %ob_refcnt154, align 8, !dbg !1436, !tbaa !724
  %cmp156 = icmp ne i64 %dec155, 0, !dbg !1437
  br i1 %cmp156, label %if.then.158, label %if.else.159, !dbg !1438

if.then.158:                                      ; preds = %do.body.152
  br label %if.end.162, !dbg !1439

if.else.159:                                      ; preds = %do.body.152
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8, !dbg !1441, !tbaa !677
  %ob_type160 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 1, !dbg !1443
  %135 = load %struct._typeobject*, %struct._typeobject** %ob_type160, align 8, !dbg !1443, !tbaa !913
  %tp_dealloc161 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %135, i32 0, i32 4, !dbg !1444
  %136 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc161, align 8, !dbg !1444, !tbaa !1278
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8, !dbg !1445, !tbaa !677
  call void %136(%struct._object* %137), !dbg !1446
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.159, %if.then.158
  %138 = bitcast %struct._object** %_py_decref_tmp153 to i8*, !dbg !1447
  call void @llvm.lifetime.end(i64 8, i8* %138) #2, !dbg !1447
  br label %do.cond.163, !dbg !1449

do.cond.163:                                      ; preds = %if.end.162
  br label %do.end.164, !dbg !1450

do.end.164:                                       ; preds = %do.cond.163
  br label %if.end.166, !dbg !1452

if.else.165:                                      ; preds = %if.else.148
  call void @PyErr_Clear(), !dbg !1453
  %139 = load %struct._object*, %struct._object** %current_param, align 8, !dbg !1455, !tbaa !677
  store %struct._object* %139, %struct._object** %adapted, align 8, !dbg !1456, !tbaa !677
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.165, %do.end.164
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.147
  %140 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1457, !tbaa !677
  %141 = load i32, i32* %i, align 4, !dbg !1458, !tbaa !714
  %142 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1459, !tbaa !677
  %call168 = call i32 @pysqlite_statement_bind_parameter(%struct.pysqlite_Statement* %140, i32 %141, %struct._object* %142), !dbg !1460
  store i32 %call168, i32* %rc, align 4, !dbg !1461, !tbaa !714
  br label %do.body.169, !dbg !1462

do.body.169:                                      ; preds = %if.end.167
  %143 = bitcast %struct._object** %_py_decref_tmp170 to i8*, !dbg !1463
  call void @llvm.lifetime.start(i64 8, i8* %143) #2, !dbg !1463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp170, metadata !605, metadata !681), !dbg !1465
  %144 = load %struct._object*, %struct._object** %adapted, align 8, !dbg !1466, !tbaa !677
  store %struct._object* %144, %struct._object** %_py_decref_tmp170, align 8, !dbg !1465, !tbaa !677
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !1467, !tbaa !677
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0, !dbg !1469
  %146 = load i64, i64* %ob_refcnt171, align 8, !dbg !1470, !tbaa !724
  %dec172 = add i64 %146, -1, !dbg !1470
  store i64 %dec172, i64* %ob_refcnt171, align 8, !dbg !1470, !tbaa !724
  %cmp173 = icmp ne i64 %dec172, 0, !dbg !1471
  br i1 %cmp173, label %if.then.175, label %if.else.176, !dbg !1472

if.then.175:                                      ; preds = %do.body.169
  br label %if.end.179, !dbg !1473

if.else.176:                                      ; preds = %do.body.169
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !1475, !tbaa !677
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1, !dbg !1477
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8, !dbg !1477, !tbaa !913
  %tp_dealloc178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4, !dbg !1478
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178, align 8, !dbg !1478, !tbaa !1278
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !1479, !tbaa !677
  call void %149(%struct._object* %150), !dbg !1480
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.then.175
  %151 = bitcast %struct._object** %_py_decref_tmp170 to i8*, !dbg !1481
  call void @llvm.lifetime.end(i64 8, i8* %151) #2, !dbg !1481
  br label %do.cond.180, !dbg !1483

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181, !dbg !1484

do.end.181:                                       ; preds = %do.cond.180
  %152 = load i32, i32* %rc, align 4, !dbg !1486, !tbaa !714
  %cmp182 = icmp ne i32 %152, 0, !dbg !1488
  br i1 %cmp182, label %if.then.184, label %if.end.190, !dbg !1489

if.then.184:                                      ; preds = %do.end.181
  %call185 = call %struct._object* @PyErr_Occurred(), !dbg !1490
  %tobool186 = icmp ne %struct._object* %call185, null, !dbg !1490
  br i1 %tobool186, label %if.end.189, label %if.then.187, !dbg !1493

if.then.187:                                      ; preds = %if.then.184
  %153 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !1494, !tbaa !677
  %154 = load i8*, i8** %binding_name, align 8, !dbg !1496, !tbaa !677
  %call188 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %153, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i8* %154), !dbg !1497
  br label %if.end.189, !dbg !1498

if.end.189:                                       ; preds = %if.then.187, %if.then.184
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1499

if.end.190:                                       ; preds = %do.end.181
  br label %for.inc.191, !dbg !1500

for.inc.191:                                      ; preds = %if.end.190
  %155 = load i32, i32* %i, align 4, !dbg !1501, !tbaa !714
  %inc192 = add i32 %155, 1, !dbg !1501
  store i32 %inc192, i32* %i, align 4, !dbg !1501, !tbaa !714
  br label %for.cond.111, !dbg !1502

for.end.193:                                      ; preds = %for.cond.111
  br label %if.end.195, !dbg !1503

if.else.194:                                      ; preds = %if.else.104
  %156 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1504, !tbaa !677
  call void @PyErr_SetString(%struct._object* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0)), !dbg !1506
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194, %for.end.193
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1507
  br label %cleanup, !dbg !1507

cleanup:                                          ; preds = %if.end.196, %if.end.189, %if.then.142, %if.then.120, %if.end.101, %if.then.58, %if.then.20
  %157 = bitcast i64* %num_params to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 8, i8* %157) #2, !dbg !1508
  %158 = bitcast i32* %num_params_needed to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %158) #2, !dbg !1508
  %159 = bitcast i32* %rc to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %159) #2, !dbg !1508
  %160 = bitcast i32* %i to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 4, i8* %160) #2, !dbg !1508
  %161 = bitcast i8** %binding_name to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 8, i8* %161) #2, !dbg !1508
  %162 = bitcast %struct._object** %adapted to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 8, i8* %162) #2, !dbg !1508
  %163 = bitcast %struct._object** %current_param to i8*, !dbg !1508
  call void @llvm.lifetime.end(i64 8, i8* %163) #2, !dbg !1508
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1507

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt*) #3

declare i32 @PySequence_Check(%struct._object*) #3

declare i64 @PySequence_Size(%struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @_need_adapt(%struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !661, metadata !681), !dbg !1510
  %0 = load i32, i32* @pysqlite_BaseTypeAdapted, align 4, !dbg !1511, !tbaa !714
  %tobool = icmp ne i32 %0, 0, !dbg !1511
  br i1 %tobool, label %if.then, label %if.end, !dbg !1513

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, !dbg !1514
  br label %return, !dbg !1514

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1516, !tbaa !677
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1518
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1518, !tbaa !913
  %cmp = icmp eq %struct._typeobject* %2, @PyLong_Type, !dbg !1519
  br i1 %cmp, label %if.then.9, label %lor.lhs.false, !dbg !1520

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1521, !tbaa !677
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !1523
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1523, !tbaa !913
  %cmp2 = icmp eq %struct._typeobject* %4, @PyFloat_Type, !dbg !1524
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false.3, !dbg !1525

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1526, !tbaa !677
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1527
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1527, !tbaa !913
  %cmp5 = icmp eq %struct._typeobject* %6, @PyUnicode_Type, !dbg !1528
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6, !dbg !1529

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1530, !tbaa !677
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1532
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1532, !tbaa !913
  %cmp8 = icmp eq %struct._typeobject* %8, @PyByteArray_Type, !dbg !1533
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !1534

if.then.9:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %if.end
  store i32 0, i32* %retval, !dbg !1535
  br label %return, !dbg !1535

if.else:                                          ; preds = %lor.lhs.false.6
  store i32 1, i32* %retval, !dbg !1537
  br label %return, !dbg !1537

return:                                           ; preds = %if.else, %if.then.9, %if.then
  %9 = load i32, i32* %retval, !dbg !1539
  ret i32 %9, !dbg !1539
}

declare %struct._object* @pysqlite_microprotocols_adapt(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_Clear() #3

declare i8* @sqlite3_bind_parameter_name(%struct.sqlite3_stmt*, i32) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare %struct._object* @PyMapping_GetItemString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_recompile(%struct.pysqlite_Statement* %self, %struct._object* %params) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %params.addr = alloca %struct._object*, align 8
  %tail = alloca i8*, align 8
  %rc = alloca i32, align 4
  %sql_cstr = alloca i8*, align 8
  %sql_len = alloca i64, align 8
  %new_st = alloca %struct.sqlite3_stmt*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !611, metadata !681), !dbg !1540
  store %struct._object* %params, %struct._object** %params.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct._object** %params.addr, metadata !612, metadata !681), !dbg !1541
  %0 = bitcast i8** %tail to i8*, !dbg !1542
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !613, metadata !681), !dbg !1543
  %1 = bitcast i32* %rc to i8*, !dbg !1544
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1544
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !614, metadata !681), !dbg !1545
  %2 = bitcast i8** %sql_cstr to i8*, !dbg !1546
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1546
  call void @llvm.dbg.declare(metadata i8** %sql_cstr, metadata !615, metadata !681), !dbg !1547
  %3 = bitcast i64* %sql_len to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1548
  call void @llvm.dbg.declare(metadata i64* %sql_len, metadata !616, metadata !681), !dbg !1549
  %4 = bitcast %struct.sqlite3_stmt** %new_st to i8*, !dbg !1550
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1550
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %new_st, metadata !617, metadata !681), !dbg !1551
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1552, !tbaa !677
  %sql = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 3, !dbg !1553
  %6 = load %struct._object*, %struct._object** %sql, align 8, !dbg !1553, !tbaa !729
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %6, i64* %sql_len), !dbg !1554
  store i8* %call, i8** %sql_cstr, align 8, !dbg !1555, !tbaa !677
  %7 = load i8*, i8** %sql_cstr, align 8, !dbg !1556, !tbaa !677
  %cmp = icmp eq i8* %7, null, !dbg !1558
  br i1 %cmp, label %if.then, label %if.end, !dbg !1559

if.then:                                          ; preds = %entry
  store i32 -101, i32* %rc, align 4, !dbg !1560, !tbaa !714
  %8 = load i32, i32* %rc, align 4, !dbg !1562, !tbaa !714
  store i32 %8, i32* %retval, !dbg !1563
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1563

if.end:                                           ; preds = %entry
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !1564
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1564
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !618, metadata !681), !dbg !1565
  %call1 = call %struct._ts* @PyEval_SaveThread(), !dbg !1566
  store %struct._ts* %call1, %struct._ts** %_save, align 8, !dbg !1567, !tbaa !677
  %10 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1568, !tbaa !677
  %db = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %10, i32 0, i32 1, !dbg !1569
  %11 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !1569, !tbaa !752
  %12 = load i8*, i8** %sql_cstr, align 8, !dbg !1570, !tbaa !677
  %call2 = call i32 @sqlite3_prepare(%struct.sqlite3* %11, i8* %12, i32 -1, %struct.sqlite3_stmt** %new_st, i8** %tail), !dbg !1571
  store i32 %call2, i32* %rc, align 4, !dbg !1572, !tbaa !714
  %13 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1573, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %13), !dbg !1574
  %14 = bitcast %struct._ts** %_save to i8*, !dbg !1575
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1575
  %15 = load i32, i32* %rc, align 4, !dbg !1576, !tbaa !714
  %cmp3 = icmp eq i32 %15, 0, !dbg !1578
  br i1 %cmp3, label %if.then.4, label %if.end.14, !dbg !1579

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1580, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %16, i32 0, i32 2, !dbg !1583
  %17 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1583, !tbaa !696
  %call5 = call i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt* %17), !dbg !1584
  %cmp6 = icmp sgt i32 %call5, 0, !dbg !1585
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !1586

if.then.7:                                        ; preds = %if.then.4
  %18 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1587, !tbaa !677
  %st8 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %18, i32 0, i32 2, !dbg !1589
  %19 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st8, align 8, !dbg !1589, !tbaa !696
  %20 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %new_st, align 8, !dbg !1590, !tbaa !677
  %call9 = call i32 @sqlite3_transfer_bindings(%struct.sqlite3_stmt* %19, %struct.sqlite3_stmt* %20), !dbg !1591
  br label %if.end.10, !dbg !1592

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  %21 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1593, !tbaa !677
  %st11 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %21, i32 0, i32 2, !dbg !1594
  %22 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st11, align 8, !dbg !1594, !tbaa !696
  %call12 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %22), !dbg !1595
  %23 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %new_st, align 8, !dbg !1596, !tbaa !677
  %24 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1597, !tbaa !677
  %st13 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %24, i32 0, i32 2, !dbg !1598
  store %struct.sqlite3_stmt* %23, %struct.sqlite3_stmt** %st13, align 8, !dbg !1599, !tbaa !696
  br label %if.end.14, !dbg !1600

if.end.14:                                        ; preds = %if.end.10, %if.end
  %25 = load i32, i32* %rc, align 4, !dbg !1601, !tbaa !714
  store i32 %25, i32* %retval, !dbg !1602
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1602

cleanup:                                          ; preds = %if.end.14, %if.then
  %26 = bitcast %struct.sqlite3_stmt** %new_st to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !1603
  %27 = bitcast i64* %sql_len to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !1603
  %28 = bitcast i8** %sql_cstr to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !1603
  %29 = bitcast i32* %rc to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !1603
  %30 = bitcast i8** %tail to i8*, !dbg !1603
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1603
  %31 = load i32, i32* %retval, !dbg !1603
  ret i32 %31, !dbg !1603
}

declare i32 @sqlite3_transfer_bindings(%struct.sqlite3_stmt*, %struct.sqlite3_stmt*) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !624, metadata !681), !dbg !1604
  %0 = bitcast i32* %rc to i8*, !dbg !1605
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1605
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !625, metadata !681), !dbg !1606
  store i32 0, i32* %rc, align 4, !dbg !1607, !tbaa !714
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1608, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %1, i32 0, i32 2, !dbg !1609
  %2 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1609, !tbaa !696
  %tobool = icmp ne %struct.sqlite3_stmt* %2, null, !dbg !1608
  br i1 %tobool, label %if.then, label %if.end, !dbg !1610

if.then:                                          ; preds = %entry
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !626, metadata !681), !dbg !1612
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1613
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1614, !tbaa !677
  %4 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1615, !tbaa !677
  %st1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %4, i32 0, i32 2, !dbg !1616
  %5 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st1, align 8, !dbg !1616, !tbaa !696
  %call2 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %5), !dbg !1617
  store i32 %call2, i32* %rc, align 4, !dbg !1618, !tbaa !714
  %6 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1619, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %6), !dbg !1620
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !1621
  call void @llvm.lifetime.end(i64 8, i8* %7) #2, !dbg !1621
  %8 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1622, !tbaa !677
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %8, i32 0, i32 2, !dbg !1623
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st3, align 8, !dbg !1624, !tbaa !696
  br label %if.end, !dbg !1625

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1626, !tbaa !677
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 4, !dbg !1627
  store i32 0, i32* %in_use, align 4, !dbg !1628, !tbaa !704
  %10 = load i32, i32* %rc, align 4, !dbg !1629, !tbaa !714
  %11 = bitcast i32* %rc to i8*, !dbg !1630
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !1630
  ret i32 %10, !dbg !1631
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !632, metadata !681), !dbg !1632
  %0 = bitcast i32* %rc to i8*, !dbg !1633
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1633
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !633, metadata !681), !dbg !1634
  store i32 0, i32* %rc, align 4, !dbg !1635, !tbaa !714
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1636, !tbaa !677
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %1, i32 0, i32 4, !dbg !1637
  %2 = load i32, i32* %in_use, align 4, !dbg !1637, !tbaa !704
  %tobool = icmp ne i32 %2, 0, !dbg !1636
  br i1 %tobool, label %land.lhs.true, label %if.end.6, !dbg !1638

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1639, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %3, i32 0, i32 2, !dbg !1641
  %4 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1641, !tbaa !696
  %tobool1 = icmp ne %struct.sqlite3_stmt* %4, null, !dbg !1642
  br i1 %tobool1, label %if.then, label %if.end.6, !dbg !1643

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast %struct._ts** %_save to i8*, !dbg !1644
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1644
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !634, metadata !681), !dbg !1645
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1646
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1647, !tbaa !677
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1648, !tbaa !677
  %st2 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %6, i32 0, i32 2, !dbg !1649
  %7 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st2, align 8, !dbg !1649, !tbaa !696
  %call3 = call i32 @sqlite3_reset(%struct.sqlite3_stmt* %7), !dbg !1650
  store i32 %call3, i32* %rc, align 4, !dbg !1651, !tbaa !714
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1652, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !1653
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !1654
  %10 = load i32, i32* %rc, align 4, !dbg !1655, !tbaa !714
  %cmp = icmp eq i32 %10, 0, !dbg !1657
  br i1 %cmp, label %if.then.4, label %if.end, !dbg !1658

if.then.4:                                        ; preds = %if.then
  %11 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1659, !tbaa !677
  %in_use5 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %11, i32 0, i32 4, !dbg !1661
  store i32 0, i32* %in_use5, align 4, !dbg !1662, !tbaa !704
  br label %if.end, !dbg !1663

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6, !dbg !1664

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %12 = load i32, i32* %rc, align 4, !dbg !1665, !tbaa !714
  %13 = bitcast i32* %rc to i8*, !dbg !1666
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !1666
  ret i32 %12, !dbg !1667
}

declare i32 @sqlite3_reset(%struct.sqlite3_stmt*) #3

; Function Attrs: nounwind uwtable
define void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !642, metadata !681), !dbg !1668
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1669, !tbaa !677
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 4, !dbg !1670
  store i32 1, i32* %in_use, align 4, !dbg !1671, !tbaa !704
  ret void, !dbg !1672
}

; Function Attrs: nounwind uwtable
define void @pysqlite_statement_dealloc(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8, !tbaa !677
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %self.addr, metadata !645, metadata !681), !dbg !1673
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1674, !tbaa !677
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 2, !dbg !1675
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1675, !tbaa !696
  %tobool = icmp ne %struct.sqlite3_stmt* %1, null, !dbg !1674
  br i1 %tobool, label %if.then, label %if.end, !dbg !1676

if.then:                                          ; preds = %entry
  %2 = bitcast %struct._ts** %_save to i8*, !dbg !1677
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1677
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !646, metadata !681), !dbg !1678
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1679
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1680, !tbaa !677
  %3 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1681, !tbaa !677
  %st1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %3, i32 0, i32 2, !dbg !1682
  %4 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st1, align 8, !dbg !1682, !tbaa !696
  %call2 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %4), !dbg !1683
  %5 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1684, !tbaa !677
  call void @PyEval_RestoreThread(%struct._ts* %5), !dbg !1685
  %6 = bitcast %struct._ts** %_save to i8*, !dbg !1686
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !1686
  br label %if.end, !dbg !1687

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1688, !tbaa !677
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %7, i32 0, i32 2, !dbg !1689
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st3, align 8, !dbg !1690, !tbaa !696
  br label %do.body, !dbg !1691

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1692
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1692
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !650, metadata !681), !dbg !1694
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1695, !tbaa !677
  %sql = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 3, !dbg !1696
  %10 = load %struct._object*, %struct._object** %sql, align 8, !dbg !1696, !tbaa !729
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1694, !tbaa !677
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1697, !tbaa !677
  %cmp = icmp ne %struct._object* %11, null, !dbg !1698
  br i1 %cmp, label %if.then.4, label %if.end.9, !dbg !1699

if.then.4:                                        ; preds = %do.body
  br label %do.body.5, !dbg !1700

do.body.5:                                        ; preds = %if.then.4
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1702
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1702
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !652, metadata !681), !dbg !1704
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1705, !tbaa !677
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !1704, !tbaa !677
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1706, !tbaa !677
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !1708
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !1709, !tbaa !724
  %dec = add i64 %15, -1, !dbg !1709
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1709, !tbaa !724
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1710
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1711

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !1712

if.else:                                          ; preds = %do.body.5
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1714, !tbaa !677
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1716
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1716, !tbaa !913
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !1717
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1717, !tbaa !1278
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1718, !tbaa !677
  call void %18(%struct._object* %19), !dbg !1719
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1720
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !1720
  br label %do.cond, !dbg !1722

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1723

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !1725

if.end.9:                                         ; preds = %do.end, %do.body
  %21 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1727
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1727
  br label %do.end.11, !dbg !1730

do.end.11:                                        ; preds = %if.end.9
  %22 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1731, !tbaa !677
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %22, i32 0, i32 5, !dbg !1733
  %23 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !1733, !tbaa !720
  %cmp12 = icmp ne %struct._object* %23, null, !dbg !1734
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1735

if.then.13:                                       ; preds = %do.end.11
  %24 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1736, !tbaa !677
  %25 = bitcast %struct.pysqlite_Statement* %24 to %struct._object*, !dbg !1738
  call void @PyObject_ClearWeakRefs(%struct._object* %25), !dbg !1739
  br label %if.end.14, !dbg !1740

if.end.14:                                        ; preds = %if.then.13, %do.end.11
  %26 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1741, !tbaa !677
  %27 = bitcast %struct.pysqlite_Statement* %26 to %struct._object*, !dbg !1742
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1743
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !1743, !tbaa !913
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 38, !dbg !1744
  %29 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1744, !tbaa !1745
  %30 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8, !dbg !1746, !tbaa !677
  %31 = bitcast %struct.pysqlite_Statement* %30 to %struct._object*, !dbg !1747
  %32 = bitcast %struct._object* %31 to i8*, !dbg !1747
  call void %29(i8* %32), !dbg !1748
  ret void, !dbg !1749
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 37), align 8, !dbg !1750, !tbaa !1751
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_StatementType), !dbg !1752
  ret i32 %call, !dbg !1753
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!673, !674, !675}
!llvm.ident = !{!676}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !19, subprograms: !386, globals: !670)
!1 = !DIFile(filename: "statement.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/statement.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "TYPE_LONG", value: 0)
!7 = !DIEnumerator(name: "TYPE_FLOAT", value: 1)
!8 = !DIEnumerator(name: "TYPE_UNICODE", value: 2)
!9 = !DIEnumerator(name: "TYPE_BUFFER", value: 3)
!10 = !DIEnumerator(name: "TYPE_UNKNOWN", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 34, size: 32, align: 32, elements: !12)
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "LINECOMMENT_1", value: 0)
!14 = !DIEnumerator(name: "IN_LINECOMMENT", value: 1)
!15 = !DIEnumerator(name: "COMMENTSTART_1", value: 2)
!16 = !DIEnumerator(name: "IN_COMMENT", value: 3)
!17 = !DIEnumerator(name: "COMMENTEND_1", value: 4)
!18 = !DIEnumerator(name: "NORMAL", value: 5)
!19 = !{!20, !21, !60, !366, !368, !369, !377}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !23, line: 109, baseType: !24)
!23 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !23, line: 105, size: 128, align: 64, elements: !25)
!25 = !{!26, !34}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !24, file: !23, line: 107, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !28, line: 177, baseType: !29)
!28 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 102, baseType: !31)
!30 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 181, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!33 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !24, file: !23, line: 108, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !23, line: 334, size: 3200, align: 64, elements: !37)
!37 = !{!38, !44, !48, !49, !50, !55, !118, !123, !128, !129, !134, !186, !217, !229, !235, !236, !237, !239, !241, !272, !273, !274, !283, !284, !289, !290, !292, !294, !304, !314, !332, !333, !334, !336, !338, !339, !341, !346, !351, !356, !357, !358, !359, !360, !361, !362, !363, !365}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !36, file: !23, line: 335, baseType: !39, size: 192, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !23, line: 114, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 111, size: 192, align: 64, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !40, file: !23, line: 112, baseType: !22, size: 128, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !40, file: !23, line: 113, baseType: !27, size: 64, align: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !36, file: !23, line: 336, baseType: !45, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !36, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !36, file: !23, line: 337, baseType: !27, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !36, file: !23, line: 341, baseType: !51, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !23, line: 308, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !21}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !36, file: !23, line: 342, baseType: !56, size: 64, align: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !23, line: 314, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !21, !61, !60}
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 48, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 246, size: 1728, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!65 = !{!66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !87, !88, !89, !90, !92, !94, !96, !100, !103, !105, !106, !107, !108, !109, !113, !114}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 247, baseType: !60, size: 32, align: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 252, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 253, baseType: !68, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 254, baseType: !68, size: 64, align: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 255, baseType: !68, size: 64, align: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 256, baseType: !68, size: 64, align: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 257, baseType: !68, size: 64, align: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 258, baseType: !68, size: 64, align: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 259, baseType: !68, size: 64, align: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 261, baseType: !68, size: 64, align: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 262, baseType: !68, size: 64, align: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 263, baseType: !68, size: 64, align: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 265, baseType: !80, size: 64, align: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 161, size: 192, align: 64, elements: !82)
!82 = !{!83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !81, file: !64, line: 162, baseType: !80, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !81, file: !64, line: 163, baseType: !85, size: 64, align: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !81, file: !64, line: 167, baseType: !60, size: 32, align: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 267, baseType: !85, size: 64, align: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 269, baseType: !60, size: 32, align: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 273, baseType: !60, size: 32, align: 32, offset: 928)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 275, baseType: !91, size: 64, align: 64, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 140, baseType: !33)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 279, baseType: !93, size: 16, align: 16, offset: 1024)
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 280, baseType: !95, size: 8, align: 8, offset: 1040)
!95 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 281, baseType: !97, size: 8, align: 8, offset: 1048)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 1)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 285, baseType: !101, size: 64, align: 64, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 155, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 294, baseType: !104, size: 64, align: 64, offset: 1152)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 141, baseType: !33)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !63, file: !64, line: 303, baseType: !20, size: 64, align: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !63, file: !64, line: 304, baseType: !20, size: 64, align: 64, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !63, file: !64, line: 305, baseType: !20, size: 64, align: 64, offset: 1344)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !63, file: !64, line: 306, baseType: !20, size: 64, align: 64, offset: 1408)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 307, baseType: !110, size: 64, align: 64, offset: 1472)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 62, baseType: !112)
!111 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!112 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 309, baseType: !60, size: 32, align: 32, offset: 1536)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 311, baseType: !115, size: 160, align: 8, offset: 1568)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 20)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !36, file: !23, line: 343, baseType: !119, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !23, line: 316, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!21, !21, !68}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !36, file: !23, line: 344, baseType: !124, size: 64, align: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !23, line: 318, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!60, !21, !68, !21}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !36, file: !23, line: 345, baseType: !20, size: 64, align: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !36, file: !23, line: 346, baseType: !130, size: 64, align: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !23, line: 320, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!21, !21}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !36, file: !23, line: 350, baseType: !135, size: 64, align: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !23, line: 278, baseType: !137)
!137 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 236, size: 2176, align: 64, elements: !138)
!138 = !{!139, !144, !145, !146, !147, !148, !153, !155, !156, !157, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !137, file: !23, line: 241, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !23, line: 166, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!21, !21, !21}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !137, file: !23, line: 242, baseType: !140, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !137, file: !23, line: 243, baseType: !140, size: 64, align: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !137, file: !23, line: 244, baseType: !140, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !137, file: !23, line: 245, baseType: !140, size: 64, align: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !137, file: !23, line: 246, baseType: !149, size: 64, align: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !23, line: 167, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!21, !21, !21, !21}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !137, file: !23, line: 247, baseType: !154, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !23, line: 165, baseType: !131)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !137, file: !23, line: 248, baseType: !154, size: 64, align: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !137, file: !23, line: 249, baseType: !154, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !137, file: !23, line: 250, baseType: !158, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !23, line: 168, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!60, !21}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !137, file: !23, line: 251, baseType: !154, size: 64, align: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !137, file: !23, line: 252, baseType: !140, size: 64, align: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !137, file: !23, line: 253, baseType: !140, size: 64, align: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !137, file: !23, line: 254, baseType: !140, size: 64, align: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !137, file: !23, line: 255, baseType: !140, size: 64, align: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !137, file: !23, line: 256, baseType: !140, size: 64, align: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !137, file: !23, line: 257, baseType: !154, size: 64, align: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !137, file: !23, line: 258, baseType: !20, size: 64, align: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !137, file: !23, line: 259, baseType: !154, size: 64, align: 64, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !137, file: !23, line: 261, baseType: !140, size: 64, align: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !137, file: !23, line: 262, baseType: !140, size: 64, align: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !137, file: !23, line: 263, baseType: !140, size: 64, align: 64, offset: 1344)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !137, file: !23, line: 264, baseType: !140, size: 64, align: 64, offset: 1408)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !137, file: !23, line: 265, baseType: !149, size: 64, align: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !137, file: !23, line: 266, baseType: !140, size: 64, align: 64, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !137, file: !23, line: 267, baseType: !140, size: 64, align: 64, offset: 1600)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !137, file: !23, line: 268, baseType: !140, size: 64, align: 64, offset: 1664)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !137, file: !23, line: 269, baseType: !140, size: 64, align: 64, offset: 1728)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !137, file: !23, line: 270, baseType: !140, size: 64, align: 64, offset: 1792)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !137, file: !23, line: 272, baseType: !140, size: 64, align: 64, offset: 1856)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !137, file: !23, line: 273, baseType: !140, size: 64, align: 64, offset: 1920)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !137, file: !23, line: 274, baseType: !140, size: 64, align: 64, offset: 1984)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !137, file: !23, line: 275, baseType: !140, size: 64, align: 64, offset: 2048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !137, file: !23, line: 277, baseType: !154, size: 64, align: 64, offset: 2112)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !36, file: !23, line: 351, baseType: !187, size: 64, align: 64, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !23, line: 292, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 280, size: 640, align: 64, elements: !190)
!190 = !{!191, !196, !197, !202, !203, !204, !209, !210, !215, !216}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !189, file: !23, line: 281, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !23, line: 169, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!27, !21}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !189, file: !23, line: 282, baseType: !140, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !189, file: !23, line: 283, baseType: !198, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !23, line: 170, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!21, !21, !27}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !189, file: !23, line: 284, baseType: !198, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !189, file: !23, line: 285, baseType: !20, size: 64, align: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !189, file: !23, line: 286, baseType: !205, size: 64, align: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !23, line: 172, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!60, !21, !27, !21}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !189, file: !23, line: 287, baseType: !20, size: 64, align: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !189, file: !23, line: 288, baseType: !211, size: 64, align: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !23, line: 231, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!60, !21, !21}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !189, file: !23, line: 290, baseType: !140, size: 64, align: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !189, file: !23, line: 291, baseType: !198, size: 64, align: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !36, file: !23, line: 352, baseType: !218, size: 64, align: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !23, line: 298, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 294, size: 192, align: 64, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !220, file: !23, line: 295, baseType: !192, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !220, file: !23, line: 296, baseType: !140, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !220, file: !23, line: 297, baseType: !225, size: 64, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !23, line: 174, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!60, !21, !21, !21}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !36, file: !23, line: 356, baseType: !230, size: 64, align: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !23, line: 321, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !21}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !28, line: 186, baseType: !27)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !36, file: !23, line: 357, baseType: !149, size: 64, align: 64, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !36, file: !23, line: 358, baseType: !130, size: 64, align: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !36, file: !23, line: 359, baseType: !238, size: 64, align: 64, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !23, line: 317, baseType: !141)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !36, file: !23, line: 360, baseType: !240, size: 64, align: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !23, line: 319, baseType: !226)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !36, file: !23, line: 363, baseType: !242, size: 64, align: 64, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !23, line: 304, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 301, size: 128, align: 64, elements: !245)
!245 = !{!246, !267}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !244, file: !23, line: 302, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !23, line: 193, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!60, !21, !251, !60}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !23, line: 191, baseType: !253)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !23, line: 178, size: 640, align: 64, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !264, !265, !266}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !23, line: 179, baseType: !20, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !253, file: !23, line: 180, baseType: !21, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !253, file: !23, line: 181, baseType: !27, size: 64, align: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !253, file: !23, line: 182, baseType: !27, size: 64, align: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !253, file: !23, line: 184, baseType: !60, size: 32, align: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !253, file: !23, line: 185, baseType: !60, size: 32, align: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !253, file: !23, line: 186, baseType: !68, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !253, file: !23, line: 187, baseType: !263, size: 64, align: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !253, file: !23, line: 188, baseType: !263, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !253, file: !23, line: 189, baseType: !263, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !253, file: !23, line: 190, baseType: !20, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !244, file: !23, line: 303, baseType: !268, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !23, line: 194, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !21, !251}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !36, file: !23, line: 366, baseType: !112, size: 64, align: 64, offset: 1344)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !36, file: !23, line: 368, baseType: !45, size: 64, align: 64, offset: 1408)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !36, file: !23, line: 372, baseType: !275, size: 64, align: 64, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !23, line: 233, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!60, !21, !279, !20}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !23, line: 232, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!60, !21, !20}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !36, file: !23, line: 375, baseType: !158, size: 64, align: 64, offset: 1536)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !36, file: !23, line: 379, baseType: !285, size: 64, align: 64, offset: 1600)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !23, line: 322, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!21, !21, !21, !60}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !36, file: !23, line: 382, baseType: !27, size: 64, align: 64, offset: 1664)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !36, file: !23, line: 385, baseType: !291, size: 64, align: 64, offset: 1728)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !23, line: 323, baseType: !131)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !36, file: !23, line: 386, baseType: !293, size: 64, align: 64, offset: 1792)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !23, line: 324, baseType: !131)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !36, file: !23, line: 389, baseType: !295, size: 64, align: 64, offset: 1856)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !297, line: 40, size: 256, align: 64, elements: !298)
!297 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!298 = !{!299, !300, !302, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !296, file: !297, line: 41, baseType: !45, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !296, file: !297, line: 42, baseType: !301, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !297, line: 18, baseType: !141)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !296, file: !297, line: 43, baseType: !60, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !296, file: !297, line: 45, baseType: !45, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !36, file: !23, line: 390, baseType: !305, size: 64, align: 64, offset: 1920)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !307, line: 18, size: 320, align: 64, elements: !308)
!307 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!308 = !{!309, !310, !311, !312, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 19, baseType: !68, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !306, file: !307, line: 20, baseType: !60, size: 32, align: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !306, file: !307, line: 21, baseType: !27, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !307, line: 22, baseType: !60, size: 32, align: 32, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !306, file: !307, line: 23, baseType: !68, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !36, file: !23, line: 391, baseType: !315, size: 64, align: 64, offset: 1984)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !317, line: 11, size: 320, align: 64, elements: !318)
!317 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!318 = !{!319, !320, !325, !330, !331}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !317, line: 12, baseType: !68, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !316, file: !317, line: 13, baseType: !321, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !317, line: 8, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!21, !21, !20}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !316, file: !317, line: 14, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !317, line: 9, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!60, !21, !21, !20}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !316, file: !317, line: 15, baseType: !68, size: 64, align: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !316, file: !317, line: 16, baseType: !20, size: 64, align: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !36, file: !23, line: 392, baseType: !35, size: 64, align: 64, offset: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !36, file: !23, line: 393, baseType: !21, size: 64, align: 64, offset: 2112)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !36, file: !23, line: 394, baseType: !335, size: 64, align: 64, offset: 2176)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !23, line: 325, baseType: !150)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !36, file: !23, line: 395, baseType: !337, size: 64, align: 64, offset: 2240)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !23, line: 326, baseType: !226)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !36, file: !23, line: 396, baseType: !27, size: 64, align: 64, offset: 2304)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !36, file: !23, line: 397, baseType: !340, size: 64, align: 64, offset: 2368)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !23, line: 327, baseType: !226)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !36, file: !23, line: 398, baseType: !342, size: 64, align: 64, offset: 2432)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !23, line: 329, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!21, !35, !27}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !36, file: !23, line: 399, baseType: !347, size: 64, align: 64, offset: 2496)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !23, line: 328, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!21, !35, !21, !21}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !36, file: !23, line: 400, baseType: !352, size: 64, align: 64, offset: 2560)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !23, line: 307, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !20}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !36, file: !23, line: 401, baseType: !158, size: 64, align: 64, offset: 2624)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !36, file: !23, line: 402, baseType: !21, size: 64, align: 64, offset: 2688)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !36, file: !23, line: 403, baseType: !21, size: 64, align: 64, offset: 2752)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !36, file: !23, line: 404, baseType: !21, size: 64, align: 64, offset: 2816)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !36, file: !23, line: 405, baseType: !21, size: 64, align: 64, offset: 2880)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !36, file: !23, line: 406, baseType: !21, size: 64, align: 64, offset: 2944)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !36, file: !23, line: 407, baseType: !51, size: 64, align: 64, offset: 3008)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !36, file: !23, line: 410, baseType: !364, size: 32, align: 32, offset: 3072)
!364 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !36, file: !23, line: 412, baseType: !51, size: 64, align: 64, offset: 3136)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_destructor_type", file: !367, line: 4239, baseType: !353)
!367 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !371, line: 33, baseType: !372)
!371 = !DIFile(filename: "./Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!372 = !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 25, size: 256, align: 64, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !372, file: !371, line: 26, baseType: !39, size: 192, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !372, file: !371, line: 27, baseType: !376, size: 64, align: 64, offset: 192)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, align: 64, elements: !98)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !379, line: 40, baseType: !380)
!379 = !DIFile(filename: "./Include/listobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 23, size: 320, align: 64, elements: !381)
!381 = !{!382, !383, !385}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !380, file: !379, line: 24, baseType: !39, size: 192, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !380, file: !379, line: 26, baseType: !384, size: 64, align: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !380, file: !379, line: 39, baseType: !27, size: 64, align: 64, offset: 256)
!386 = !{!387, !534, !552, !607, !620, !630, !638, !643, !655, !659, !662}
!387 = !DISubprogram(name: "pysqlite_statement_create", scope: !4, file: !4, line: 51, type: !388, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Statement*, %struct.pysqlite_Connection*, %struct._object*)* @pysqlite_statement_create, variables: !466)
!388 = !DISubroutineType(types: !389)
!389 = !{!60, !390, !407, !21}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Statement", file: !392, line: 42, baseType: !393)
!392 = !DIFile(filename: "Modules/_sqlite/statement.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!393 = !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 34, size: 448, align: 64, elements: !394)
!394 = !{!395, !396, !400, !404, !405, !406}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !393, file: !392, line: 36, baseType: !22, size: 128, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !393, file: !392, line: 37, baseType: !397, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !367, line: 228, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !367, line: 228, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !393, file: !392, line: 38, baseType: !401, size: 64, align: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !367, line: 2911, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !367, line: 2911, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sql", scope: !393, file: !392, line: 39, baseType: !21, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !393, file: !392, line: 40, baseType: !60, size: 32, align: 32, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !393, file: !392, line: 41, baseType: !21, size: 64, align: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !409, line: 112, baseType: !410)
!409 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!410 = !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 35, size: 1792, align: 64, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !418, !419, !420, !421, !422, !423, !424, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !410, file: !409, line: 37, baseType: !22, size: 128, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !410, file: !409, line: 38, baseType: !397, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !410, file: !409, line: 42, baseType: !47, size: 8, align: 8, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !410, file: !409, line: 46, baseType: !60, size: 32, align: 32, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !410, file: !409, line: 49, baseType: !417, size: 64, align: 64, offset: 256)
!417 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !410, file: !409, line: 53, baseType: !417, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !410, file: !409, line: 56, baseType: !21, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !410, file: !409, line: 60, baseType: !68, size: 64, align: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !410, file: !409, line: 64, baseType: !60, size: 32, align: 32, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !410, file: !409, line: 66, baseType: !60, size: 32, align: 32, offset: 544)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !410, file: !409, line: 69, baseType: !33, size: 64, align: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !410, file: !409, line: 71, baseType: !425, size: 64, align: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !427, line: 59, baseType: !428)
!427 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!428 = !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 42, size: 512, align: 64, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !446, !447}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !428, file: !427, line: 44, baseType: !22, size: 128, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !428, file: !427, line: 45, baseType: !60, size: 32, align: 32, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !428, file: !427, line: 48, baseType: !21, size: 64, align: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !428, file: !427, line: 51, baseType: !21, size: 64, align: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !428, file: !427, line: 53, baseType: !435, size: 64, align: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !427, line: 40, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !427, line: 32, size: 448, align: 64, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !445}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !437, file: !427, line: 34, baseType: !22, size: 128, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !437, file: !427, line: 35, baseType: !21, size: 64, align: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !427, line: 36, baseType: !21, size: 64, align: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !437, file: !427, line: 37, baseType: !33, size: 64, align: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !427, line: 38, baseType: !444, size: 64, align: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !427, line: 39, baseType: !444, size: 64, align: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !428, file: !427, line: 54, baseType: !435, size: 64, align: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !428, file: !427, line: 58, baseType: !60, size: 32, align: 32, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !410, file: !409, line: 74, baseType: !21, size: 64, align: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !410, file: !409, line: 75, baseType: !21, size: 64, align: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !410, file: !409, line: 79, baseType: !60, size: 32, align: 32, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !410, file: !409, line: 80, baseType: !60, size: 32, align: 32, offset: 864)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !410, file: !409, line: 82, baseType: !21, size: 64, align: 64, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !410, file: !409, line: 90, baseType: !21, size: 64, align: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !410, file: !409, line: 96, baseType: !21, size: 64, align: 64, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !410, file: !409, line: 99, baseType: !21, size: 64, align: 64, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !410, file: !409, line: 102, baseType: !21, size: 64, align: 64, offset: 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !410, file: !409, line: 103, baseType: !21, size: 64, align: 64, offset: 1216)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !410, file: !409, line: 104, baseType: !21, size: 64, align: 64, offset: 1280)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !410, file: !409, line: 105, baseType: !21, size: 64, align: 64, offset: 1344)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !410, file: !409, line: 106, baseType: !21, size: 64, align: 64, offset: 1408)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !410, file: !409, line: 107, baseType: !21, size: 64, align: 64, offset: 1472)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !410, file: !409, line: 108, baseType: !21, size: 64, align: 64, offset: 1536)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !410, file: !409, line: 109, baseType: !21, size: 64, align: 64, offset: 1600)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !410, file: !409, line: 110, baseType: !21, size: 64, align: 64, offset: 1664)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !410, file: !409, line: 111, baseType: !21, size: 64, align: 64, offset: 1728)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !387, file: !4, line: 51, type: !390)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "connection", arg: 2, scope: !387, file: !4, line: 51, type: !407)
!469 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sql", arg: 3, scope: !387, file: !4, line: 51, type: !21)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !387, file: !4, line: 53, type: !45)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !387, file: !4, line: 54, type: !60)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sql_cstr", scope: !387, file: !4, line: 55, type: !45)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sql_cstr_len", scope: !387, file: !4, line: 56, type: !27)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !475, file: !4, line: 71, type: !476)
!475 = distinct !DILexicalBlock(scope: !387, file: !4, line: 71, column: 5)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !478, line: 139, baseType: !479)
!478 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !478, line: 69, size: 1536, align: 64, elements: !480)
!480 = !{!481, !483, !484, !504, !507, !508, !509, !510, !511, !512, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !479, file: !478, line: 72, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !479, file: !478, line: 73, baseType: !482, size: 64, align: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !479, file: !478, line: 74, baseType: !485, size: 64, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !478, line: 44, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !478, line: 19, size: 832, align: 64, elements: !488)
!488 = !{!489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !478, line: 21, baseType: !490, size: 64, align: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !487, file: !478, line: 22, baseType: !482, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !487, file: !478, line: 24, baseType: !21, size: 64, align: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !487, file: !478, line: 25, baseType: !21, size: 64, align: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !487, file: !478, line: 26, baseType: !21, size: 64, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !487, file: !478, line: 27, baseType: !21, size: 64, align: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !487, file: !478, line: 28, baseType: !21, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !487, file: !478, line: 30, baseType: !21, size: 64, align: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !487, file: !478, line: 31, baseType: !21, size: 64, align: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !487, file: !478, line: 32, baseType: !21, size: 64, align: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !487, file: !478, line: 33, baseType: !60, size: 32, align: 32, offset: 640)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !487, file: !478, line: 34, baseType: !60, size: 32, align: 32, offset: 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !487, file: !478, line: 37, baseType: !60, size: 32, align: 32, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !487, file: !478, line: 43, baseType: !21, size: 64, align: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !479, file: !478, line: 76, baseType: !505, size: 64, align: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !478, line: 50, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !479, file: !478, line: 77, baseType: !60, size: 32, align: 32, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !479, file: !478, line: 78, baseType: !47, size: 8, align: 8, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !479, file: !478, line: 80, baseType: !47, size: 8, align: 8, offset: 296)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !479, file: !478, line: 85, baseType: !60, size: 32, align: 32, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !479, file: !478, line: 86, baseType: !60, size: 32, align: 32, offset: 352)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !479, file: !478, line: 88, baseType: !513, size: 64, align: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !478, line: 54, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!60, !21, !505, !60, !21}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !479, file: !478, line: 89, baseType: !513, size: 64, align: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !479, file: !478, line: 90, baseType: !21, size: 64, align: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !479, file: !478, line: 91, baseType: !21, size: 64, align: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !479, file: !478, line: 93, baseType: !21, size: 64, align: 64, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !479, file: !478, line: 94, baseType: !21, size: 64, align: 64, offset: 704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !479, file: !478, line: 95, baseType: !21, size: 64, align: 64, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !479, file: !478, line: 97, baseType: !21, size: 64, align: 64, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !479, file: !478, line: 98, baseType: !21, size: 64, align: 64, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !479, file: !478, line: 99, baseType: !21, size: 64, align: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !479, file: !478, line: 101, baseType: !21, size: 64, align: 64, offset: 1024)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !479, file: !478, line: 103, baseType: !60, size: 32, align: 32, offset: 1088)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !479, file: !478, line: 105, baseType: !21, size: 64, align: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !479, file: !478, line: 106, baseType: !33, size: 64, align: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !479, file: !478, line: 108, baseType: !60, size: 32, align: 32, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !479, file: !478, line: 109, baseType: !21, size: 64, align: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !479, file: !478, line: 134, baseType: !353, size: 64, align: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !479, file: !478, line: 135, baseType: !20, size: 64, align: 64, offset: 1472)
!534 = !DISubprogram(name: "pysqlite_statement_bind_parameter", scope: !4, file: !4, line: 90, type: !535, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Statement*, i32, %struct._object*)* @pysqlite_statement_bind_parameter, variables: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!60, !390, !60, !21}
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !547}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !534, file: !4, line: 90, type: !390)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 2, scope: !534, file: !4, line: 90, type: !60)
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parameter", arg: 3, scope: !534, file: !4, line: 90, type: !21)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !534, file: !4, line: 92, type: !60)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !534, file: !4, line: 93, type: !45)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string", scope: !534, file: !4, line: 94, type: !68)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !534, file: !4, line: 95, type: !27)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "paramtype", scope: !534, file: !4, line: 96, type: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "parameter_type", file: !4, line: 49, baseType: !3)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !548, file: !4, line: 123, type: !550)
!548 = distinct !DILexicalBlock(scope: !549, file: !4, line: 122, column: 25)
!549 = distinct !DILexicalBlock(scope: !534, file: !4, line: 121, column: 24)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite_int64", file: !367, line: 253, baseType: !551)
!551 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!552 = !DISubprogram(name: "pysqlite_statement_bind_parameters", scope: !4, file: !4, line: 179, type: !553, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Statement*, %struct._object*)* @pysqlite_statement_bind_parameters, variables: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !390, !21}
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !567, !576, !580, !586, !588, !595, !599, !605}
!556 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !552, file: !4, line: 179, type: !390)
!557 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parameters", arg: 2, scope: !552, file: !4, line: 179, type: !21)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_param", scope: !552, file: !4, line: 181, type: !21)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adapted", scope: !552, file: !4, line: 182, type: !21)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "binding_name", scope: !552, file: !4, line: 183, type: !45)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !552, file: !4, line: 184, type: !60)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !552, file: !4, line: 185, type: !60)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_params_needed", scope: !552, file: !4, line: 186, type: !60)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_params", scope: !552, file: !4, line: 187, type: !27)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !566, file: !4, line: 189, type: !476)
!566 = distinct !DILexicalBlock(scope: !552, file: !4, line: 189, column: 5)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !568, file: !4, line: 212, type: !21)
!568 = distinct !DILexicalBlock(scope: !569, file: !4, line: 212, column: 20)
!569 = distinct !DILexicalBlock(scope: !570, file: !4, line: 210, column: 74)
!570 = distinct !DILexicalBlock(scope: !571, file: !4, line: 210, column: 17)
!571 = distinct !DILexicalBlock(scope: !572, file: !4, line: 209, column: 42)
!572 = distinct !DILexicalBlock(scope: !573, file: !4, line: 209, column: 9)
!573 = distinct !DILexicalBlock(scope: !574, file: !4, line: 209, column: 9)
!574 = distinct !DILexicalBlock(scope: !575, file: !4, line: 193, column: 236)
!575 = distinct !DILexicalBlock(scope: !552, file: !4, line: 193, column: 9)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !577, file: !4, line: 215, type: !21)
!577 = distinct !DILexicalBlock(scope: !578, file: !4, line: 215, column: 20)
!578 = distinct !DILexicalBlock(scope: !579, file: !4, line: 213, column: 80)
!579 = distinct !DILexicalBlock(scope: !570, file: !4, line: 213, column: 24)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !581, file: !4, line: 228, type: !21)
!581 = distinct !DILexicalBlock(scope: !582, file: !4, line: 228, column: 24)
!582 = distinct !DILexicalBlock(scope: !583, file: !4, line: 227, column: 30)
!583 = distinct !DILexicalBlock(scope: !584, file: !4, line: 227, column: 21)
!584 = distinct !DILexicalBlock(scope: !585, file: !4, line: 225, column: 20)
!585 = distinct !DILexicalBlock(scope: !571, file: !4, line: 223, column: 17)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !4, line: 236, type: !21)
!587 = distinct !DILexicalBlock(scope: !571, file: !4, line: 236, column: 16)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !589, file: !4, line: 248, type: !476)
!589 = distinct !DILexicalBlock(scope: !590, file: !4, line: 248, column: 13)
!590 = distinct !DILexicalBlock(scope: !591, file: !4, line: 247, column: 50)
!591 = distinct !DILexicalBlock(scope: !592, file: !4, line: 247, column: 9)
!592 = distinct !DILexicalBlock(scope: !593, file: !4, line: 247, column: 9)
!593 = distinct !DILexicalBlock(scope: !594, file: !4, line: 245, column: 91)
!594 = distinct !DILexicalBlock(scope: !575, file: !4, line: 245, column: 16)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !596, file: !4, line: 259, type: !21)
!596 = distinct !DILexicalBlock(scope: !597, file: !4, line: 259, column: 20)
!597 = distinct !DILexicalBlock(scope: !598, file: !4, line: 257, column: 73)
!598 = distinct !DILexicalBlock(scope: !590, file: !4, line: 257, column: 17)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !4, line: 273, type: !21)
!600 = distinct !DILexicalBlock(scope: !601, file: !4, line: 273, column: 24)
!601 = distinct !DILexicalBlock(scope: !602, file: !4, line: 272, column: 30)
!602 = distinct !DILexicalBlock(scope: !603, file: !4, line: 272, column: 21)
!603 = distinct !DILexicalBlock(scope: !604, file: !4, line: 270, column: 20)
!604 = distinct !DILexicalBlock(scope: !590, file: !4, line: 268, column: 17)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !4, line: 281, type: !21)
!606 = distinct !DILexicalBlock(scope: !590, file: !4, line: 281, column: 16)
!607 = !DISubprogram(name: "pysqlite_statement_recompile", scope: !4, file: !4, line: 295, type: !608, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Statement*, %struct._object*)* @pysqlite_statement_recompile, variables: !610)
!608 = !DISubroutineType(types: !609)
!609 = !{!60, !390, !21}
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618}
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !607, file: !4, line: 295, type: !390)
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "params", arg: 2, scope: !607, file: !4, line: 295, type: !21)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !607, file: !4, line: 297, type: !45)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !607, file: !4, line: 298, type: !60)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sql_cstr", scope: !607, file: !4, line: 299, type: !45)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sql_len", scope: !607, file: !4, line: 300, type: !27)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_st", scope: !607, file: !4, line: 301, type: !401)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !619, file: !4, line: 309, type: !476)
!619 = distinct !DILexicalBlock(scope: !607, file: !4, line: 309, column: 5)
!620 = !DISubprogram(name: "pysqlite_statement_finalize", scope: !4, file: !4, line: 341, type: !621, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Statement*)* @pysqlite_statement_finalize, variables: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!60, !390}
!623 = !{!624, !625, !626}
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !620, file: !4, line: 341, type: !390)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !620, file: !4, line: 343, type: !60)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !627, file: !4, line: 347, type: !476)
!627 = distinct !DILexicalBlock(scope: !628, file: !4, line: 347, column: 9)
!628 = distinct !DILexicalBlock(scope: !629, file: !4, line: 346, column: 19)
!629 = distinct !DILexicalBlock(scope: !620, file: !4, line: 346, column: 9)
!630 = !DISubprogram(name: "pysqlite_statement_reset", scope: !4, file: !4, line: 358, type: !621, isLocal: false, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Statement*)* @pysqlite_statement_reset, variables: !631)
!631 = !{!632, !633, !634}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !630, file: !4, line: 358, type: !390)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !630, file: !4, line: 360, type: !60)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !635, file: !4, line: 365, type: !476)
!635 = distinct !DILexicalBlock(scope: !636, file: !4, line: 365, column: 9)
!636 = distinct !DILexicalBlock(scope: !637, file: !4, line: 364, column: 35)
!637 = distinct !DILexicalBlock(scope: !630, file: !4, line: 364, column: 9)
!638 = !DISubprogram(name: "pysqlite_statement_mark_dirty", scope: !4, file: !4, line: 377, type: !639, isLocal: false, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Statement*)* @pysqlite_statement_mark_dirty, variables: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !390}
!641 = !{!642}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !638, file: !4, line: 377, type: !390)
!643 = !DISubprogram(name: "pysqlite_statement_dealloc", scope: !4, file: !4, line: 382, type: !639, isLocal: false, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Statement*)* @pysqlite_statement_dealloc, variables: !644)
!644 = !{!645, !646, !650, !652}
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !643, file: !4, line: 382, type: !390)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !647, file: !4, line: 385, type: !476)
!647 = distinct !DILexicalBlock(scope: !648, file: !4, line: 385, column: 9)
!648 = distinct !DILexicalBlock(scope: !649, file: !4, line: 384, column: 19)
!649 = distinct !DILexicalBlock(scope: !643, file: !4, line: 384, column: 9)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !651, file: !4, line: 392, type: !21)
!651 = distinct !DILexicalBlock(scope: !643, file: !4, line: 392, column: 8)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !653, file: !4, line: 392, type: !21)
!653 = distinct !DILexicalBlock(scope: !654, file: !4, line: 392, column: 101)
!654 = distinct !DILexicalBlock(scope: !651, file: !4, line: 392, column: 67)
!655 = !DISubprogram(name: "pysqlite_statement_setup_types", scope: !4, file: !4, line: 513, type: !656, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @pysqlite_statement_setup_types, variables: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!60}
!658 = !{}
!659 = !DISubprogram(name: "_need_adapt", scope: !4, file: !4, line: 165, type: !160, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @_need_adapt, variables: !660)
!660 = !{!661}
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !659, file: !4, line: 165, type: !21)
!662 = !DISubprogram(name: "pysqlite_check_remaining_sql", scope: !4, file: !4, line: 409, type: !663, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @pysqlite_check_remaining_sql, variables: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!60, !45}
!665 = !{!666, !667, !668}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tail", arg: 1, scope: !662, file: !4, line: 409, type: !45)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !662, file: !4, line: 411, type: !45)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "state", scope: !662, file: !4, line: 413, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "parse_remaining_sql_state", file: !4, line: 41, baseType: !11)
!670 = !{!671}
!671 = !DIGlobalVariable(name: "pysqlite_StatementType", scope: !0, file: !4, line: 471, type: !672, isLocal: false, isDefinition: true, variable: %struct._typeobject* @pysqlite_StatementType)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !23, line: 422, baseType: !36)
!673 = !{i32 2, !"Dwarf Version", i32 4}
!674 = !{i32 2, !"Debug Info Version", i32 3}
!675 = !{i32 1, !"PIC Level", i32 2}
!676 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!677 = !{!678, !678, i64 0}
!678 = !{!"any pointer", !679, i64 0}
!679 = !{!"omnipotent char", !680, i64 0}
!680 = !{!"Simple C/C++ TBAA"}
!681 = !DIExpression()
!682 = !DILocation(line: 51, column: 51, scope: !387)
!683 = !DILocation(line: 51, column: 78, scope: !387)
!684 = !DILocation(line: 51, column: 100, scope: !387)
!685 = !DILocation(line: 53, column: 5, scope: !387)
!686 = !DILocation(line: 53, column: 17, scope: !387)
!687 = !DILocation(line: 54, column: 5, scope: !387)
!688 = !DILocation(line: 54, column: 9, scope: !387)
!689 = !DILocation(line: 55, column: 5, scope: !387)
!690 = !DILocation(line: 55, column: 17, scope: !387)
!691 = !DILocation(line: 56, column: 5, scope: !387)
!692 = !DILocation(line: 56, column: 16, scope: !387)
!693 = !DILocation(line: 58, column: 5, scope: !387)
!694 = !DILocation(line: 58, column: 11, scope: !387)
!695 = !DILocation(line: 58, column: 14, scope: !387)
!696 = !{!697, !678, i64 24}
!697 = !{!"", !698, i64 0, !678, i64 16, !678, i64 24, !678, i64 32, !700, i64 40, !678, i64 48}
!698 = !{!"_object", !699, i64 0, !678, i64 8}
!699 = !{!"long", !679, i64 0}
!700 = !{!"int", !679, i64 0}
!701 = !DILocation(line: 59, column: 5, scope: !387)
!702 = !DILocation(line: 59, column: 11, scope: !387)
!703 = !DILocation(line: 59, column: 18, scope: !387)
!704 = !{!697, !700, i64 40}
!705 = !DILocation(line: 61, column: 40, scope: !387)
!706 = !DILocation(line: 61, column: 16, scope: !387)
!707 = !DILocation(line: 61, column: 14, scope: !387)
!708 = !DILocation(line: 62, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !387, file: !4, line: 62, column: 9)
!710 = !DILocation(line: 62, column: 18, scope: !709)
!711 = !DILocation(line: 62, column: 9, scope: !387)
!712 = !DILocation(line: 63, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !4, line: 62, column: 33)
!714 = !{!700, !700, i64 0}
!715 = !DILocation(line: 64, column: 16, scope: !713)
!716 = !DILocation(line: 64, column: 9, scope: !713)
!717 = !DILocation(line: 67, column: 5, scope: !387)
!718 = !DILocation(line: 67, column: 11, scope: !387)
!719 = !DILocation(line: 67, column: 26, scope: !387)
!720 = !{!697, !678, i64 48}
!721 = !DILocation(line: 68, column: 21, scope: !387)
!722 = !DILocation(line: 68, column: 28, scope: !387)
!723 = !DILocation(line: 68, column: 37, scope: !387)
!724 = !{!698, !699, i64 0}
!725 = !DILocation(line: 69, column: 17, scope: !387)
!726 = !DILocation(line: 69, column: 5, scope: !387)
!727 = !DILocation(line: 69, column: 11, scope: !387)
!728 = !DILocation(line: 69, column: 15, scope: !387)
!729 = !{!697, !678, i64 32}
!730 = !DILocation(line: 71, column: 7, scope: !475)
!731 = !DILocation(line: 71, column: 22, scope: !475)
!732 = !DILocation(line: 71, column: 37, scope: !475)
!733 = !DILocation(line: 71, column: 35, scope: !475)
!734 = !DILocation(line: 72, column: 26, scope: !475)
!735 = !DILocation(line: 72, column: 38, scope: !475)
!736 = !{!737, !678, i64 16}
!737 = !{!"", !698, i64 0, !678, i64 16, !679, i64 24, !700, i64 28, !738, i64 32, !738, i64 40, !678, i64 48, !678, i64 56, !700, i64 64, !700, i64 68, !699, i64 72, !678, i64 80, !678, i64 88, !678, i64 96, !700, i64 104, !700, i64 108, !678, i64 112, !678, i64 120, !678, i64 128, !678, i64 136, !678, i64 144, !678, i64 152, !678, i64 160, !678, i64 168, !678, i64 176, !678, i64 184, !678, i64 192, !678, i64 200, !678, i64 208, !678, i64 216}
!738 = !{!"double", !679, i64 0}
!739 = !DILocation(line: 73, column: 26, scope: !475)
!740 = !DILocation(line: 75, column: 27, scope: !475)
!741 = !DILocation(line: 75, column: 33, scope: !475)
!742 = !DILocation(line: 72, column: 10, scope: !475)
!743 = !DILocation(line: 72, column: 8, scope: !475)
!744 = !DILocation(line: 77, column: 26, scope: !475)
!745 = !DILocation(line: 77, column: 5, scope: !475)
!746 = !DILocation(line: 77, column: 34, scope: !387)
!747 = !DILocation(line: 79, column: 16, scope: !387)
!748 = !DILocation(line: 79, column: 28, scope: !387)
!749 = !DILocation(line: 79, column: 5, scope: !387)
!750 = !DILocation(line: 79, column: 11, scope: !387)
!751 = !DILocation(line: 79, column: 14, scope: !387)
!752 = !{!697, !678, i64 16}
!753 = !DILocation(line: 81, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !387, file: !4, line: 81, column: 9)
!755 = !DILocation(line: 81, column: 12, scope: !754)
!756 = !DILocation(line: 81, column: 17, scope: !754)
!757 = !DILocation(line: 81, column: 49, scope: !758)
!758 = !DILexicalBlockFile(scope: !754, file: !4, discriminator: 1)
!759 = !DILocation(line: 81, column: 20, scope: !754)
!760 = !DILocation(line: 81, column: 9, scope: !387)
!761 = !DILocation(line: 82, column: 32, scope: !762)
!762 = distinct !DILexicalBlock(scope: !754, file: !4, line: 81, column: 56)
!763 = !DILocation(line: 82, column: 38, scope: !762)
!764 = !DILocation(line: 82, column: 15, scope: !762)
!765 = !DILocation(line: 83, column: 9, scope: !762)
!766 = !DILocation(line: 83, column: 15, scope: !762)
!767 = !DILocation(line: 83, column: 18, scope: !762)
!768 = !DILocation(line: 84, column: 12, scope: !762)
!769 = !DILocation(line: 85, column: 5, scope: !762)
!770 = !DILocation(line: 87, column: 12, scope: !387)
!771 = !DILocation(line: 87, column: 5, scope: !387)
!772 = !DILocation(line: 88, column: 1, scope: !387)
!773 = !DILocation(line: 409, column: 53, scope: !662)
!774 = !DILocation(line: 411, column: 5, scope: !662)
!775 = !DILocation(line: 411, column: 17, scope: !662)
!776 = !DILocation(line: 411, column: 23, scope: !662)
!777 = !DILocation(line: 413, column: 5, scope: !662)
!778 = !DILocation(line: 413, column: 31, scope: !662)
!779 = !{!679, !679, i64 0}
!780 = !DILocation(line: 415, column: 5, scope: !662)
!781 = !DILocation(line: 416, column: 18, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !4, line: 415, column: 14)
!783 = distinct !DILexicalBlock(scope: !784, file: !4, line: 415, column: 5)
!784 = distinct !DILexicalBlock(scope: !662, file: !4, line: 415, column: 5)
!785 = !DILocation(line: 416, column: 17, scope: !782)
!786 = !DILocation(line: 416, column: 9, scope: !782)
!787 = !DILocation(line: 418, column: 17, scope: !788)
!788 = distinct !DILexicalBlock(scope: !782, file: !4, line: 416, column: 23)
!789 = !DILocation(line: 420, column: 21, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !4, line: 420, column: 21)
!791 = !DILocation(line: 420, column: 27, scope: !790)
!792 = !DILocation(line: 420, column: 21, scope: !788)
!793 = !DILocation(line: 421, column: 27, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !4, line: 420, column: 38)
!795 = !DILocation(line: 422, column: 17, scope: !794)
!796 = !DILocation(line: 422, column: 28, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !4, line: 422, column: 28)
!798 = !DILocation(line: 422, column: 34, scope: !797)
!799 = !DILocation(line: 422, column: 28, scope: !790)
!800 = !DILocation(line: 423, column: 27, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !4, line: 422, column: 52)
!802 = !DILocation(line: 424, column: 17, scope: !801)
!803 = !DILocation(line: 425, column: 17, scope: !788)
!804 = !DILocation(line: 428, column: 17, scope: !788)
!805 = !DILocation(line: 431, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !788, file: !4, line: 431, column: 21)
!807 = !DILocation(line: 431, column: 27, scope: !806)
!808 = !DILocation(line: 431, column: 21, scope: !788)
!809 = !DILocation(line: 432, column: 27, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !4, line: 431, column: 46)
!811 = !DILocation(line: 433, column: 17, scope: !810)
!812 = !DILocation(line: 434, column: 17, scope: !788)
!813 = !DILocation(line: 436, column: 21, scope: !814)
!814 = distinct !DILexicalBlock(scope: !788, file: !4, line: 436, column: 21)
!815 = !DILocation(line: 436, column: 27, scope: !814)
!816 = !DILocation(line: 436, column: 21, scope: !788)
!817 = !DILocation(line: 437, column: 27, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !4, line: 436, column: 38)
!819 = !DILocation(line: 438, column: 17, scope: !818)
!820 = !DILocation(line: 438, column: 28, scope: !821)
!821 = distinct !DILexicalBlock(scope: !814, file: !4, line: 438, column: 28)
!822 = !DILocation(line: 438, column: 34, scope: !821)
!823 = !DILocation(line: 438, column: 28, scope: !814)
!824 = !DILocation(line: 439, column: 27, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !4, line: 438, column: 51)
!826 = !DILocation(line: 440, column: 17, scope: !825)
!827 = !DILocation(line: 440, column: 28, scope: !828)
!828 = distinct !DILexicalBlock(scope: !821, file: !4, line: 440, column: 28)
!829 = !DILocation(line: 440, column: 34, scope: !828)
!830 = !DILocation(line: 440, column: 28, scope: !821)
!831 = !DILocation(line: 441, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !4, line: 440, column: 53)
!833 = !DILocation(line: 443, column: 17, scope: !788)
!834 = !DILocation(line: 445, column: 21, scope: !835)
!835 = distinct !DILexicalBlock(scope: !788, file: !4, line: 445, column: 21)
!836 = !DILocation(line: 445, column: 27, scope: !835)
!837 = !DILocation(line: 445, column: 21, scope: !788)
!838 = !DILocation(line: 446, column: 21, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !4, line: 445, column: 38)
!840 = !DILocation(line: 447, column: 28, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !4, line: 447, column: 28)
!842 = !DILocation(line: 447, column: 34, scope: !841)
!843 = !DILocation(line: 447, column: 28, scope: !835)
!844 = !DILocation(line: 448, column: 21, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !4, line: 447, column: 52)
!846 = !DILocation(line: 449, column: 28, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !4, line: 449, column: 28)
!848 = !DILocation(line: 449, column: 34, scope: !847)
!849 = !DILocation(line: 449, column: 28, scope: !841)
!850 = !DILocation(line: 450, column: 27, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !4, line: 449, column: 53)
!852 = !DILocation(line: 451, column: 17, scope: !851)
!853 = !DILocation(line: 451, column: 28, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !4, line: 451, column: 28)
!855 = !DILocation(line: 451, column: 34, scope: !854)
!856 = !DILocation(line: 451, column: 28, scope: !847)
!857 = !DILocation(line: 452, column: 27, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !4, line: 451, column: 49)
!859 = !DILocation(line: 453, column: 17, scope: !858)
!860 = !DILocation(line: 454, column: 17, scope: !788)
!861 = !DILocation(line: 456, column: 21, scope: !862)
!862 = distinct !DILexicalBlock(scope: !788, file: !4, line: 456, column: 21)
!863 = !DILocation(line: 456, column: 27, scope: !862)
!864 = !DILocation(line: 456, column: 21, scope: !788)
!865 = !DILocation(line: 457, column: 27, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !4, line: 456, column: 44)
!867 = !DILocation(line: 458, column: 17, scope: !866)
!868 = !DILocation(line: 458, column: 28, scope: !869)
!869 = distinct !DILexicalBlock(scope: !862, file: !4, line: 458, column: 28)
!870 = !DILocation(line: 458, column: 34, scope: !869)
!871 = !DILocation(line: 458, column: 28, scope: !862)
!872 = !DILocation(line: 459, column: 17, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !4, line: 458, column: 53)
!874 = !DILocation(line: 459, column: 28, scope: !875)
!875 = distinct !DILexicalBlock(scope: !869, file: !4, line: 459, column: 28)
!876 = !DILocation(line: 459, column: 34, scope: !875)
!877 = !DILocation(line: 459, column: 28, scope: !869)
!878 = !DILocation(line: 460, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !4, line: 459, column: 49)
!880 = !DILocation(line: 461, column: 21, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !4, line: 460, column: 24)
!882 = !DILocation(line: 463, column: 9, scope: !788)
!883 = !DILocation(line: 465, column: 12, scope: !782)
!884 = !DILocation(line: 415, column: 5, scope: !783)
!885 = !DILocation(line: 469, column: 1, scope: !662)
!886 = !DILocation(line: 90, column: 59, scope: !534)
!887 = !DILocation(line: 90, column: 69, scope: !534)
!888 = !DILocation(line: 90, column: 84, scope: !534)
!889 = !DILocation(line: 92, column: 5, scope: !534)
!890 = !DILocation(line: 92, column: 9, scope: !534)
!891 = !DILocation(line: 93, column: 5, scope: !534)
!892 = !DILocation(line: 93, column: 17, scope: !534)
!893 = !DILocation(line: 94, column: 5, scope: !534)
!894 = !DILocation(line: 94, column: 11, scope: !534)
!895 = !DILocation(line: 95, column: 5, scope: !534)
!896 = !DILocation(line: 95, column: 16, scope: !534)
!897 = !DILocation(line: 96, column: 5, scope: !534)
!898 = !DILocation(line: 96, column: 20, scope: !534)
!899 = !DILocation(line: 98, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !534, file: !4, line: 98, column: 9)
!901 = !DILocation(line: 98, column: 19, scope: !900)
!902 = !DILocation(line: 98, column: 9, scope: !534)
!903 = !DILocation(line: 99, column: 32, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !4, line: 98, column: 41)
!905 = !DILocation(line: 99, column: 38, scope: !904)
!906 = !DILocation(line: 99, column: 42, scope: !904)
!907 = !DILocation(line: 99, column: 14, scope: !904)
!908 = !DILocation(line: 99, column: 12, scope: !904)
!909 = !DILocation(line: 100, column: 9, scope: !904)
!910 = !DILocation(line: 103, column: 24, scope: !911)
!911 = distinct !DILexicalBlock(scope: !534, file: !4, line: 103, column: 9)
!912 = !DILocation(line: 103, column: 37, scope: !911)
!913 = !{!698, !678, i64 8}
!914 = !DILocation(line: 103, column: 46, scope: !911)
!915 = !DILocation(line: 103, column: 9, scope: !534)
!916 = !DILocation(line: 104, column: 19, scope: !917)
!917 = distinct !DILexicalBlock(scope: !911, file: !4, line: 103, column: 64)
!918 = !DILocation(line: 105, column: 5, scope: !917)
!919 = !DILocation(line: 105, column: 31, scope: !920)
!920 = distinct !DILexicalBlock(scope: !911, file: !4, line: 105, column: 16)
!921 = !DILocation(line: 105, column: 44, scope: !920)
!922 = !DILocation(line: 105, column: 53, scope: !920)
!923 = !DILocation(line: 105, column: 16, scope: !911)
!924 = !DILocation(line: 106, column: 19, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !4, line: 105, column: 72)
!926 = !DILocation(line: 107, column: 5, scope: !925)
!927 = !DILocation(line: 107, column: 31, scope: !928)
!928 = distinct !DILexicalBlock(scope: !920, file: !4, line: 107, column: 16)
!929 = !DILocation(line: 107, column: 44, scope: !928)
!930 = !DILocation(line: 107, column: 53, scope: !928)
!931 = !DILocation(line: 107, column: 16, scope: !920)
!932 = !DILocation(line: 108, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !4, line: 107, column: 74)
!934 = !DILocation(line: 109, column: 5, scope: !933)
!935 = !DILocation(line: 109, column: 33, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !4, line: 109, column: 16)
!937 = !DILocation(line: 109, column: 46, scope: !936)
!938 = !DILocation(line: 109, column: 57, scope: !936)
!939 = !{!940, !699, i64 168}
!940 = !{!"_typeobject", !941, i64 0, !678, i64 24, !699, i64 32, !699, i64 40, !678, i64 48, !678, i64 56, !678, i64 64, !678, i64 72, !678, i64 80, !678, i64 88, !678, i64 96, !678, i64 104, !678, i64 112, !678, i64 120, !678, i64 128, !678, i64 136, !678, i64 144, !678, i64 152, !678, i64 160, !699, i64 168, !678, i64 176, !678, i64 184, !678, i64 192, !678, i64 200, !699, i64 208, !678, i64 216, !678, i64 224, !678, i64 232, !678, i64 240, !678, i64 248, !678, i64 256, !678, i64 264, !678, i64 272, !678, i64 280, !699, i64 288, !678, i64 296, !678, i64 304, !678, i64 312, !678, i64 320, !678, i64 328, !678, i64 336, !678, i64 344, !678, i64 352, !678, i64 360, !678, i64 368, !678, i64 376, !700, i64 384, !678, i64 392}
!941 = !{!"", !698, i64 0, !699, i64 16}
!942 = !DILocation(line: 109, column: 66, scope: !936)
!943 = !DILocation(line: 109, column: 83, scope: !936)
!944 = !DILocation(line: 109, column: 16, scope: !928)
!945 = !DILocation(line: 110, column: 19, scope: !946)
!946 = distinct !DILexicalBlock(scope: !936, file: !4, line: 109, column: 90)
!947 = !DILocation(line: 111, column: 5, scope: !946)
!948 = !DILocation(line: 111, column: 31, scope: !949)
!949 = distinct !DILexicalBlock(scope: !936, file: !4, line: 111, column: 16)
!950 = !DILocation(line: 111, column: 44, scope: !949)
!951 = !DILocation(line: 111, column: 53, scope: !949)
!952 = !DILocation(line: 111, column: 72, scope: !949)
!953 = !DILocation(line: 111, column: 106, scope: !954)
!954 = !DILexicalBlockFile(scope: !949, file: !4, discriminator: 1)
!955 = !DILocation(line: 111, column: 119, scope: !949)
!956 = !DILocation(line: 111, column: 75, scope: !949)
!957 = !DILocation(line: 111, column: 16, scope: !936)
!958 = !DILocation(line: 112, column: 19, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !4, line: 111, column: 148)
!960 = !DILocation(line: 113, column: 5, scope: !959)
!961 = !DILocation(line: 113, column: 33, scope: !962)
!962 = distinct !DILexicalBlock(scope: !949, file: !4, line: 113, column: 16)
!963 = !DILocation(line: 113, column: 46, scope: !962)
!964 = !DILocation(line: 113, column: 57, scope: !962)
!965 = !DILocation(line: 113, column: 66, scope: !962)
!966 = !DILocation(line: 113, column: 83, scope: !962)
!967 = !DILocation(line: 113, column: 16, scope: !949)
!968 = !DILocation(line: 114, column: 19, scope: !969)
!969 = distinct !DILexicalBlock(scope: !962, file: !4, line: 113, column: 90)
!970 = !DILocation(line: 115, column: 5, scope: !969)
!971 = !DILocation(line: 115, column: 19, scope: !972)
!972 = distinct !DILexicalBlock(scope: !962, file: !4, line: 115, column: 16)
!973 = !DILocation(line: 115, column: 31, scope: !972)
!974 = !DILocation(line: 115, column: 40, scope: !972)
!975 = !{!940, !678, i64 160}
!976 = !DILocation(line: 115, column: 53, scope: !972)
!977 = !DILocation(line: 115, column: 68, scope: !972)
!978 = !DILocation(line: 115, column: 73, scope: !979)
!979 = !DILexicalBlockFile(scope: !972, file: !4, discriminator: 1)
!980 = !DILocation(line: 115, column: 85, scope: !972)
!981 = !DILocation(line: 115, column: 94, scope: !972)
!982 = !DILocation(line: 115, column: 108, scope: !972)
!983 = !{!984, !678, i64 0}
!984 = !{!"", !678, i64 0, !678, i64 8}
!985 = !DILocation(line: 115, column: 121, scope: !972)
!986 = !DILocation(line: 115, column: 16, scope: !962)
!987 = !DILocation(line: 116, column: 19, scope: !988)
!988 = distinct !DILexicalBlock(scope: !972, file: !4, line: 115, column: 138)
!989 = !DILocation(line: 117, column: 5, scope: !988)
!990 = !DILocation(line: 118, column: 19, scope: !991)
!991 = distinct !DILexicalBlock(scope: !972, file: !4, line: 117, column: 12)
!992 = !DILocation(line: 121, column: 13, scope: !534)
!993 = !DILocation(line: 121, column: 5, scope: !534)
!994 = !DILocation(line: 123, column: 13, scope: !548)
!995 = !DILocation(line: 123, column: 26, scope: !548)
!996 = !DILocation(line: 123, column: 58, scope: !548)
!997 = !DILocation(line: 123, column: 34, scope: !548)
!998 = !{!999, !999, i64 0}
!999 = !{!"long long", !679, i64 0}
!1000 = !DILocation(line: 124, column: 17, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !548, file: !4, line: 124, column: 17)
!1002 = !DILocation(line: 124, column: 23, scope: !1001)
!1003 = !DILocation(line: 124, column: 29, scope: !1001)
!1004 = !DILocation(line: 124, column: 32, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1001, file: !4, discriminator: 1)
!1006 = !DILocation(line: 124, column: 17, scope: !548)
!1007 = !DILocation(line: 125, column: 20, scope: !1001)
!1008 = !DILocation(line: 125, column: 17, scope: !1001)
!1009 = !DILocation(line: 127, column: 41, scope: !1001)
!1010 = !DILocation(line: 127, column: 47, scope: !1001)
!1011 = !DILocation(line: 127, column: 51, scope: !1001)
!1012 = !DILocation(line: 127, column: 56, scope: !1001)
!1013 = !DILocation(line: 127, column: 22, scope: !1001)
!1014 = !DILocation(line: 127, column: 20, scope: !1001)
!1015 = !DILocation(line: 129, column: 9, scope: !549)
!1016 = !DILocation(line: 131, column: 38, scope: !549)
!1017 = !DILocation(line: 131, column: 44, scope: !549)
!1018 = !DILocation(line: 131, column: 48, scope: !549)
!1019 = !DILocation(line: 131, column: 70, scope: !549)
!1020 = !DILocation(line: 131, column: 53, scope: !549)
!1021 = !DILocation(line: 131, column: 18, scope: !549)
!1022 = !DILocation(line: 131, column: 16, scope: !549)
!1023 = !DILocation(line: 132, column: 13, scope: !549)
!1024 = !DILocation(line: 134, column: 46, scope: !549)
!1025 = !DILocation(line: 134, column: 22, scope: !549)
!1026 = !DILocation(line: 134, column: 20, scope: !549)
!1027 = !DILocation(line: 135, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !549, file: !4, line: 135, column: 17)
!1029 = !DILocation(line: 135, column: 24, scope: !1028)
!1030 = !DILocation(line: 135, column: 17, scope: !549)
!1031 = !DILocation(line: 136, column: 17, scope: !1028)
!1032 = !DILocation(line: 137, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !549, file: !4, line: 137, column: 17)
!1034 = !{!699, !699, i64 0}
!1035 = !DILocation(line: 137, column: 24, scope: !1033)
!1036 = !DILocation(line: 137, column: 17, scope: !549)
!1037 = !DILocation(line: 138, column: 33, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !4, line: 137, column: 38)
!1039 = !DILocation(line: 138, column: 17, scope: !1038)
!1040 = !DILocation(line: 140, column: 17, scope: !1038)
!1041 = !DILocation(line: 142, column: 36, scope: !549)
!1042 = !DILocation(line: 142, column: 42, scope: !549)
!1043 = !DILocation(line: 142, column: 46, scope: !549)
!1044 = !DILocation(line: 142, column: 51, scope: !549)
!1045 = !DILocation(line: 142, column: 64, scope: !549)
!1046 = !DILocation(line: 142, column: 59, scope: !549)
!1047 = !DILocation(line: 142, column: 18, scope: !549)
!1048 = !DILocation(line: 142, column: 16, scope: !549)
!1049 = !DILocation(line: 143, column: 13, scope: !549)
!1050 = !DILocation(line: 145, column: 39, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !549, file: !4, line: 145, column: 17)
!1052 = !DILocation(line: 145, column: 17, scope: !1051)
!1053 = !DILocation(line: 145, column: 68, scope: !1051)
!1054 = !DILocation(line: 145, column: 17, scope: !549)
!1055 = !DILocation(line: 146, column: 33, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !4, line: 145, column: 74)
!1057 = !DILocation(line: 146, column: 17, scope: !1056)
!1058 = !DILocation(line: 147, column: 17, scope: !1056)
!1059 = !DILocation(line: 149, column: 17, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !549, file: !4, line: 149, column: 17)
!1061 = !DILocation(line: 149, column: 24, scope: !1060)
!1062 = !DILocation(line: 149, column: 17, scope: !549)
!1063 = !DILocation(line: 150, column: 33, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !4, line: 149, column: 38)
!1065 = !DILocation(line: 150, column: 17, scope: !1064)
!1066 = !DILocation(line: 152, column: 17, scope: !1064)
!1067 = !DILocation(line: 154, column: 36, scope: !549)
!1068 = !DILocation(line: 154, column: 42, scope: !549)
!1069 = !DILocation(line: 154, column: 46, scope: !549)
!1070 = !DILocation(line: 154, column: 51, scope: !549)
!1071 = !DILocation(line: 154, column: 59, scope: !549)
!1072 = !DILocation(line: 154, column: 18, scope: !549)
!1073 = !DILocation(line: 154, column: 16, scope: !549)
!1074 = !DILocation(line: 155, column: 13, scope: !549)
!1075 = !DILocation(line: 157, column: 16, scope: !549)
!1076 = !DILocation(line: 158, column: 5, scope: !549)
!1077 = !DILocation(line: 158, column: 5, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !549, file: !4, discriminator: 1)
!1079 = !DILocation(line: 161, column: 12, scope: !534)
!1080 = !DILocation(line: 161, column: 5, scope: !534)
!1081 = !DILocation(line: 162, column: 1, scope: !534)
!1082 = !DILocation(line: 179, column: 61, scope: !552)
!1083 = !DILocation(line: 179, column: 77, scope: !552)
!1084 = !DILocation(line: 181, column: 5, scope: !552)
!1085 = !DILocation(line: 181, column: 15, scope: !552)
!1086 = !DILocation(line: 182, column: 5, scope: !552)
!1087 = !DILocation(line: 182, column: 15, scope: !552)
!1088 = !DILocation(line: 183, column: 5, scope: !552)
!1089 = !DILocation(line: 183, column: 17, scope: !552)
!1090 = !DILocation(line: 184, column: 5, scope: !552)
!1091 = !DILocation(line: 184, column: 9, scope: !552)
!1092 = !DILocation(line: 185, column: 5, scope: !552)
!1093 = !DILocation(line: 185, column: 9, scope: !552)
!1094 = !DILocation(line: 186, column: 5, scope: !552)
!1095 = !DILocation(line: 186, column: 9, scope: !552)
!1096 = !DILocation(line: 187, column: 5, scope: !552)
!1097 = !DILocation(line: 187, column: 16, scope: !552)
!1098 = !DILocation(line: 189, column: 7, scope: !566)
!1099 = !DILocation(line: 189, column: 22, scope: !566)
!1100 = !DILocation(line: 189, column: 37, scope: !566)
!1101 = !DILocation(line: 189, column: 35, scope: !566)
!1102 = !DILocation(line: 190, column: 54, scope: !566)
!1103 = !DILocation(line: 190, column: 60, scope: !566)
!1104 = !DILocation(line: 190, column: 25, scope: !566)
!1105 = !DILocation(line: 190, column: 23, scope: !566)
!1106 = !DILocation(line: 191, column: 26, scope: !566)
!1107 = !DILocation(line: 191, column: 5, scope: !566)
!1108 = !DILocation(line: 191, column: 34, scope: !552)
!1109 = !DILocation(line: 193, column: 24, scope: !575)
!1110 = !DILocation(line: 193, column: 38, scope: !575)
!1111 = !DILocation(line: 193, column: 47, scope: !575)
!1112 = !DILocation(line: 193, column: 65, scope: !575)
!1113 = !DILocation(line: 193, column: 83, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !575, file: !4, discriminator: 1)
!1115 = !DILocation(line: 193, column: 97, scope: !575)
!1116 = !DILocation(line: 193, column: 106, scope: !575)
!1117 = !DILocation(line: 193, column: 123, scope: !575)
!1118 = !DILocation(line: 193, column: 145, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !575, file: !4, discriminator: 2)
!1120 = !DILocation(line: 193, column: 159, scope: !575)
!1121 = !DILocation(line: 193, column: 170, scope: !575)
!1122 = !DILocation(line: 193, column: 179, scope: !575)
!1123 = !DILocation(line: 193, column: 196, scope: !575)
!1124 = !DILocation(line: 193, column: 202, scope: !575)
!1125 = !DILocation(line: 193, column: 222, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !575, file: !4, discriminator: 3)
!1127 = !DILocation(line: 193, column: 205, scope: !575)
!1128 = !DILocation(line: 193, column: 9, scope: !552)
!1129 = !DILocation(line: 195, column: 28, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !574, file: !4, line: 195, column: 13)
!1131 = !DILocation(line: 195, column: 42, scope: !1130)
!1132 = !DILocation(line: 195, column: 51, scope: !1130)
!1133 = !DILocation(line: 195, column: 13, scope: !574)
!1134 = !DILocation(line: 196, column: 43, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !4, line: 195, column: 70)
!1136 = !DILocation(line: 196, column: 28, scope: !1135)
!1137 = !DILocation(line: 196, column: 57, scope: !1135)
!1138 = !{!941, !699, i64 16}
!1139 = !DILocation(line: 196, column: 24, scope: !1135)
!1140 = !DILocation(line: 197, column: 9, scope: !1135)
!1141 = !DILocation(line: 197, column: 35, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1130, file: !4, line: 197, column: 20)
!1143 = !DILocation(line: 197, column: 49, scope: !1142)
!1144 = !DILocation(line: 197, column: 58, scope: !1142)
!1145 = !DILocation(line: 197, column: 20, scope: !1130)
!1146 = !DILocation(line: 198, column: 43, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !4, line: 197, column: 76)
!1148 = !DILocation(line: 198, column: 28, scope: !1147)
!1149 = !DILocation(line: 198, column: 57, scope: !1147)
!1150 = !DILocation(line: 198, column: 24, scope: !1147)
!1151 = !DILocation(line: 199, column: 9, scope: !1147)
!1152 = !DILocation(line: 200, column: 42, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1142, file: !4, line: 199, column: 16)
!1154 = !DILocation(line: 200, column: 26, scope: !1153)
!1155 = !DILocation(line: 200, column: 24, scope: !1153)
!1156 = !DILocation(line: 202, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !574, file: !4, line: 202, column: 13)
!1158 = !DILocation(line: 202, column: 27, scope: !1157)
!1159 = !DILocation(line: 202, column: 24, scope: !1157)
!1160 = !DILocation(line: 202, column: 13, scope: !574)
!1161 = !DILocation(line: 203, column: 26, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !4, line: 202, column: 46)
!1163 = !DILocation(line: 206, column: 26, scope: !1162)
!1164 = !DILocation(line: 206, column: 45, scope: !1162)
!1165 = !DILocation(line: 203, column: 13, scope: !1162)
!1166 = !DILocation(line: 207, column: 13, scope: !1162)
!1167 = !DILocation(line: 209, column: 16, scope: !573)
!1168 = !DILocation(line: 209, column: 14, scope: !573)
!1169 = !DILocation(line: 209, column: 21, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !4, discriminator: 2)
!1171 = !DILexicalBlockFile(scope: !572, file: !4, discriminator: 1)
!1172 = !DILocation(line: 209, column: 25, scope: !572)
!1173 = !DILocation(line: 209, column: 23, scope: !572)
!1174 = !DILocation(line: 209, column: 9, scope: !573)
!1175 = !DILocation(line: 210, column: 32, scope: !570)
!1176 = !DILocation(line: 210, column: 46, scope: !570)
!1177 = !DILocation(line: 210, column: 55, scope: !570)
!1178 = !DILocation(line: 210, column: 17, scope: !571)
!1179 = !DILocation(line: 211, column: 75, scope: !569)
!1180 = !DILocation(line: 211, column: 34, scope: !569)
!1181 = !DILocation(line: 211, column: 53, scope: !569)
!1182 = !DILocation(line: 211, column: 35, scope: !569)
!1183 = !DILocation(line: 211, column: 67, scope: !569)
!1184 = !DILocation(line: 211, column: 31, scope: !569)
!1185 = !DILocation(line: 212, column: 17, scope: !569)
!1186 = !DILocation(line: 212, column: 22, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !568, file: !4, discriminator: 1)
!1188 = !DILocation(line: 212, column: 32, scope: !568)
!1189 = !DILocation(line: 212, column: 63, scope: !568)
!1190 = !DILocation(line: 212, column: 83, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !568, file: !4, line: 212, column: 83)
!1192 = !DILocation(line: 212, column: 99, scope: !1191)
!1193 = !DILocation(line: 212, column: 83, scope: !568)
!1194 = !DILocation(line: 212, column: 130, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1191, file: !4, discriminator: 2)
!1196 = !DILocation(line: 212, column: 149, scope: !1191)
!1197 = !DILocation(line: 212, column: 158, scope: !1191)
!1198 = !DILocation(line: 212, column: 114, scope: !1191)
!1199 = !DILocation(line: 212, column: 163, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !4, discriminator: 4)
!1201 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 3)
!1202 = !DILocation(line: 212, column: 163, scope: !568)
!1203 = !DILocation(line: 212, column: 163, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !568, file: !4, discriminator: 5)
!1205 = !DILocation(line: 213, column: 13, scope: !569)
!1206 = !DILocation(line: 213, column: 39, scope: !579)
!1207 = !DILocation(line: 213, column: 53, scope: !579)
!1208 = !DILocation(line: 213, column: 62, scope: !579)
!1209 = !DILocation(line: 213, column: 24, scope: !570)
!1210 = !DILocation(line: 214, column: 74, scope: !578)
!1211 = !DILocation(line: 214, column: 34, scope: !578)
!1212 = !DILocation(line: 214, column: 52, scope: !578)
!1213 = !DILocation(line: 214, column: 35, scope: !578)
!1214 = !DILocation(line: 214, column: 66, scope: !578)
!1215 = !{!1216, !678, i64 24}
!1216 = !{!"", !941, i64 0, !678, i64 24, !699, i64 32}
!1217 = !DILocation(line: 214, column: 31, scope: !578)
!1218 = !DILocation(line: 215, column: 17, scope: !578)
!1219 = !DILocation(line: 215, column: 22, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 1)
!1221 = !DILocation(line: 215, column: 32, scope: !577)
!1222 = !DILocation(line: 215, column: 63, scope: !577)
!1223 = !DILocation(line: 215, column: 83, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !577, file: !4, line: 215, column: 83)
!1225 = !DILocation(line: 215, column: 99, scope: !1224)
!1226 = !DILocation(line: 215, column: 83, scope: !577)
!1227 = !DILocation(line: 215, column: 130, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1224, file: !4, discriminator: 2)
!1229 = !DILocation(line: 215, column: 149, scope: !1224)
!1230 = !DILocation(line: 215, column: 158, scope: !1224)
!1231 = !DILocation(line: 215, column: 114, scope: !1224)
!1232 = !DILocation(line: 215, column: 163, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !4, discriminator: 4)
!1234 = !DILexicalBlockFile(scope: !578, file: !4, discriminator: 3)
!1235 = !DILocation(line: 215, column: 163, scope: !577)
!1236 = !DILocation(line: 215, column: 163, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !577, file: !4, discriminator: 5)
!1238 = !DILocation(line: 216, column: 13, scope: !578)
!1239 = !DILocation(line: 217, column: 52, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !579, file: !4, line: 216, column: 20)
!1241 = !DILocation(line: 217, column: 64, scope: !1240)
!1242 = !DILocation(line: 217, column: 33, scope: !1240)
!1243 = !DILocation(line: 217, column: 31, scope: !1240)
!1244 = !DILocation(line: 219, column: 18, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !571, file: !4, line: 219, column: 17)
!1246 = !DILocation(line: 219, column: 17, scope: !571)
!1247 = !DILocation(line: 220, column: 17, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !4, line: 219, column: 33)
!1249 = !DILocation(line: 223, column: 30, scope: !585)
!1250 = !DILocation(line: 223, column: 18, scope: !585)
!1251 = !DILocation(line: 223, column: 17, scope: !571)
!1252 = !DILocation(line: 224, column: 27, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !585, file: !4, line: 223, column: 46)
!1254 = !DILocation(line: 224, column: 25, scope: !1253)
!1255 = !DILocation(line: 225, column: 13, scope: !1253)
!1256 = !DILocation(line: 226, column: 57, scope: !584)
!1257 = !DILocation(line: 226, column: 27, scope: !584)
!1258 = !DILocation(line: 226, column: 25, scope: !584)
!1259 = !DILocation(line: 227, column: 21, scope: !583)
!1260 = !DILocation(line: 227, column: 21, scope: !584)
!1261 = !DILocation(line: 228, column: 21, scope: !582)
!1262 = !DILocation(line: 228, column: 26, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !581, file: !4, discriminator: 1)
!1264 = !DILocation(line: 228, column: 36, scope: !581)
!1265 = !DILocation(line: 228, column: 66, scope: !581)
!1266 = !DILocation(line: 228, column: 90, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !581, file: !4, line: 228, column: 87)
!1268 = !DILocation(line: 228, column: 107, scope: !1267)
!1269 = !DILocation(line: 228, column: 87, scope: !1267)
!1270 = !DILocation(line: 228, column: 117, scope: !1267)
!1271 = !DILocation(line: 228, column: 87, scope: !581)
!1272 = !DILocation(line: 228, column: 87, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !581, file: !4, discriminator: 2)
!1274 = !DILocation(line: 228, column: 148, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1267, file: !4, discriminator: 3)
!1276 = !DILocation(line: 228, column: 166, scope: !1267)
!1277 = !DILocation(line: 228, column: 176, scope: !1267)
!1278 = !{!940, !678, i64 48}
!1279 = !DILocation(line: 228, column: 201, scope: !1267)
!1280 = !DILocation(line: 228, column: 132, scope: !1267)
!1281 = !DILocation(line: 228, column: 220, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !582, file: !4, discriminator: 4)
!1283 = !DILocation(line: 228, column: 220, scope: !581)
!1284 = !DILocation(line: 228, column: 220, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !581, file: !4, discriminator: 5)
!1286 = !DILocation(line: 229, column: 17, scope: !582)
!1287 = !DILocation(line: 230, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !583, file: !4, line: 229, column: 24)
!1289 = !DILocation(line: 231, column: 31, scope: !1288)
!1290 = !DILocation(line: 231, column: 29, scope: !1288)
!1291 = !DILocation(line: 235, column: 52, scope: !571)
!1292 = !DILocation(line: 235, column: 58, scope: !571)
!1293 = !DILocation(line: 235, column: 60, scope: !571)
!1294 = !DILocation(line: 235, column: 65, scope: !571)
!1295 = !DILocation(line: 235, column: 18, scope: !571)
!1296 = !DILocation(line: 235, column: 16, scope: !571)
!1297 = !DILocation(line: 236, column: 13, scope: !571)
!1298 = !DILocation(line: 236, column: 18, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !587, file: !4, discriminator: 1)
!1300 = !DILocation(line: 236, column: 28, scope: !587)
!1301 = !DILocation(line: 236, column: 58, scope: !587)
!1302 = !DILocation(line: 236, column: 76, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !587, file: !4, line: 236, column: 73)
!1304 = !DILocation(line: 236, column: 93, scope: !1303)
!1305 = !DILocation(line: 236, column: 73, scope: !1303)
!1306 = !DILocation(line: 236, column: 103, scope: !1303)
!1307 = !DILocation(line: 236, column: 73, scope: !587)
!1308 = !DILocation(line: 236, column: 73, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !587, file: !4, discriminator: 2)
!1310 = !DILocation(line: 236, column: 134, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1303, file: !4, discriminator: 3)
!1312 = !DILocation(line: 236, column: 152, scope: !1303)
!1313 = !DILocation(line: 236, column: 162, scope: !1303)
!1314 = !DILocation(line: 236, column: 187, scope: !1303)
!1315 = !DILocation(line: 236, column: 118, scope: !1303)
!1316 = !DILocation(line: 236, column: 206, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !571, file: !4, discriminator: 4)
!1318 = !DILocation(line: 236, column: 206, scope: !587)
!1319 = !DILocation(line: 236, column: 206, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !587, file: !4, discriminator: 5)
!1321 = !DILocation(line: 238, column: 17, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !571, file: !4, line: 238, column: 17)
!1323 = !DILocation(line: 238, column: 20, scope: !1322)
!1324 = !DILocation(line: 238, column: 17, scope: !571)
!1325 = !DILocation(line: 239, column: 22, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !4, line: 239, column: 21)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !4, line: 238, column: 26)
!1328 = !DILocation(line: 239, column: 21, scope: !1327)
!1329 = !DILocation(line: 240, column: 34, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !4, line: 239, column: 40)
!1331 = !DILocation(line: 240, column: 118, scope: !1330)
!1332 = !DILocation(line: 240, column: 21, scope: !1330)
!1333 = !DILocation(line: 241, column: 17, scope: !1330)
!1334 = !DILocation(line: 242, column: 17, scope: !1327)
!1335 = !DILocation(line: 244, column: 9, scope: !571)
!1336 = !DILocation(line: 209, column: 38, scope: !572)
!1337 = !DILocation(line: 209, column: 9, scope: !572)
!1338 = !DILocation(line: 245, column: 5, scope: !574)
!1339 = !DILocation(line: 245, column: 33, scope: !594)
!1340 = !DILocation(line: 245, column: 47, scope: !594)
!1341 = !DILocation(line: 245, column: 58, scope: !594)
!1342 = !DILocation(line: 245, column: 67, scope: !594)
!1343 = !DILocation(line: 245, column: 84, scope: !594)
!1344 = !DILocation(line: 245, column: 16, scope: !575)
!1345 = !DILocation(line: 247, column: 16, scope: !592)
!1346 = !DILocation(line: 247, column: 14, scope: !592)
!1347 = !DILocation(line: 247, column: 21, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1349, file: !4, discriminator: 2)
!1349 = !DILexicalBlockFile(scope: !591, file: !4, discriminator: 1)
!1350 = !DILocation(line: 247, column: 26, scope: !591)
!1351 = !DILocation(line: 247, column: 23, scope: !591)
!1352 = !DILocation(line: 247, column: 9, scope: !592)
!1353 = !DILocation(line: 248, column: 15, scope: !589)
!1354 = !DILocation(line: 248, column: 30, scope: !589)
!1355 = !DILocation(line: 248, column: 45, scope: !589)
!1356 = !DILocation(line: 248, column: 43, scope: !589)
!1357 = !DILocation(line: 249, column: 56, scope: !589)
!1358 = !DILocation(line: 249, column: 62, scope: !589)
!1359 = !DILocation(line: 249, column: 66, scope: !589)
!1360 = !DILocation(line: 249, column: 28, scope: !589)
!1361 = !DILocation(line: 249, column: 26, scope: !589)
!1362 = !DILocation(line: 250, column: 34, scope: !589)
!1363 = !DILocation(line: 250, column: 13, scope: !589)
!1364 = !DILocation(line: 250, column: 42, scope: !590)
!1365 = !DILocation(line: 251, column: 18, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !590, file: !4, line: 251, column: 17)
!1367 = !DILocation(line: 251, column: 17, scope: !590)
!1368 = !DILocation(line: 252, column: 30, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !4, line: 251, column: 32)
!1370 = !DILocation(line: 252, column: 138, scope: !1369)
!1371 = !DILocation(line: 252, column: 17, scope: !1369)
!1372 = !DILocation(line: 253, column: 17, scope: !1369)
!1373 = !DILocation(line: 256, column: 25, scope: !590)
!1374 = !DILocation(line: 257, column: 32, scope: !598)
!1375 = !DILocation(line: 257, column: 46, scope: !598)
!1376 = !DILocation(line: 257, column: 55, scope: !598)
!1377 = !DILocation(line: 257, column: 17, scope: !590)
!1378 = !DILocation(line: 258, column: 54, scope: !597)
!1379 = !DILocation(line: 258, column: 66, scope: !597)
!1380 = !DILocation(line: 258, column: 33, scope: !597)
!1381 = !DILocation(line: 258, column: 31, scope: !597)
!1382 = !DILocation(line: 259, column: 17, scope: !597)
!1383 = !DILocation(line: 259, column: 22, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !596, file: !4, discriminator: 1)
!1385 = !DILocation(line: 259, column: 32, scope: !596)
!1386 = !DILocation(line: 259, column: 63, scope: !596)
!1387 = !DILocation(line: 259, column: 83, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !596, file: !4, line: 259, column: 83)
!1389 = !DILocation(line: 259, column: 99, scope: !1388)
!1390 = !DILocation(line: 259, column: 83, scope: !596)
!1391 = !DILocation(line: 259, column: 130, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1388, file: !4, discriminator: 2)
!1393 = !DILocation(line: 259, column: 149, scope: !1388)
!1394 = !DILocation(line: 259, column: 158, scope: !1388)
!1395 = !DILocation(line: 259, column: 114, scope: !1388)
!1396 = !DILocation(line: 259, column: 163, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1398, file: !4, discriminator: 4)
!1398 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 3)
!1399 = !DILocation(line: 259, column: 163, scope: !596)
!1400 = !DILocation(line: 259, column: 163, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !596, file: !4, discriminator: 5)
!1402 = !DILocation(line: 260, column: 13, scope: !597)
!1403 = !DILocation(line: 261, column: 57, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !598, file: !4, line: 260, column: 20)
!1405 = !DILocation(line: 261, column: 69, scope: !1404)
!1406 = !DILocation(line: 261, column: 33, scope: !1404)
!1407 = !DILocation(line: 261, column: 31, scope: !1404)
!1408 = !DILocation(line: 263, column: 18, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !590, file: !4, line: 263, column: 17)
!1410 = !DILocation(line: 263, column: 17, scope: !590)
!1411 = !DILocation(line: 264, column: 30, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !4, line: 263, column: 33)
!1413 = !DILocation(line: 264, column: 103, scope: !1412)
!1414 = !DILocation(line: 264, column: 17, scope: !1412)
!1415 = !DILocation(line: 265, column: 17, scope: !1412)
!1416 = !DILocation(line: 268, column: 30, scope: !604)
!1417 = !DILocation(line: 268, column: 18, scope: !604)
!1418 = !DILocation(line: 268, column: 17, scope: !590)
!1419 = !DILocation(line: 269, column: 27, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !604, file: !4, line: 268, column: 46)
!1421 = !DILocation(line: 269, column: 25, scope: !1420)
!1422 = !DILocation(line: 270, column: 13, scope: !1420)
!1423 = !DILocation(line: 271, column: 57, scope: !603)
!1424 = !DILocation(line: 271, column: 27, scope: !603)
!1425 = !DILocation(line: 271, column: 25, scope: !603)
!1426 = !DILocation(line: 272, column: 21, scope: !602)
!1427 = !DILocation(line: 272, column: 21, scope: !603)
!1428 = !DILocation(line: 273, column: 21, scope: !601)
!1429 = !DILocation(line: 273, column: 26, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 1)
!1431 = !DILocation(line: 273, column: 36, scope: !600)
!1432 = !DILocation(line: 273, column: 66, scope: !600)
!1433 = !DILocation(line: 273, column: 90, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !600, file: !4, line: 273, column: 87)
!1435 = !DILocation(line: 273, column: 107, scope: !1434)
!1436 = !DILocation(line: 273, column: 87, scope: !1434)
!1437 = !DILocation(line: 273, column: 117, scope: !1434)
!1438 = !DILocation(line: 273, column: 87, scope: !600)
!1439 = !DILocation(line: 273, column: 87, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 2)
!1441 = !DILocation(line: 273, column: 148, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1434, file: !4, discriminator: 3)
!1443 = !DILocation(line: 273, column: 166, scope: !1434)
!1444 = !DILocation(line: 273, column: 176, scope: !1434)
!1445 = !DILocation(line: 273, column: 201, scope: !1434)
!1446 = !DILocation(line: 273, column: 132, scope: !1434)
!1447 = !DILocation(line: 273, column: 220, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !601, file: !4, discriminator: 4)
!1449 = !DILocation(line: 273, column: 220, scope: !600)
!1450 = !DILocation(line: 273, column: 220, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 5)
!1452 = !DILocation(line: 274, column: 17, scope: !601)
!1453 = !DILocation(line: 275, column: 21, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !602, file: !4, line: 274, column: 24)
!1455 = !DILocation(line: 276, column: 31, scope: !1454)
!1456 = !DILocation(line: 276, column: 29, scope: !1454)
!1457 = !DILocation(line: 280, column: 52, scope: !590)
!1458 = !DILocation(line: 280, column: 58, scope: !590)
!1459 = !DILocation(line: 280, column: 61, scope: !590)
!1460 = !DILocation(line: 280, column: 18, scope: !590)
!1461 = !DILocation(line: 280, column: 16, scope: !590)
!1462 = !DILocation(line: 281, column: 13, scope: !590)
!1463 = !DILocation(line: 281, column: 18, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 1)
!1465 = !DILocation(line: 281, column: 28, scope: !606)
!1466 = !DILocation(line: 281, column: 58, scope: !606)
!1467 = !DILocation(line: 281, column: 76, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !606, file: !4, line: 281, column: 73)
!1469 = !DILocation(line: 281, column: 93, scope: !1468)
!1470 = !DILocation(line: 281, column: 73, scope: !1468)
!1471 = !DILocation(line: 281, column: 103, scope: !1468)
!1472 = !DILocation(line: 281, column: 73, scope: !606)
!1473 = !DILocation(line: 281, column: 73, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 2)
!1475 = !DILocation(line: 281, column: 134, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1468, file: !4, discriminator: 3)
!1477 = !DILocation(line: 281, column: 152, scope: !1468)
!1478 = !DILocation(line: 281, column: 162, scope: !1468)
!1479 = !DILocation(line: 281, column: 187, scope: !1468)
!1480 = !DILocation(line: 281, column: 118, scope: !1468)
!1481 = !DILocation(line: 281, column: 206, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !590, file: !4, discriminator: 4)
!1483 = !DILocation(line: 281, column: 206, scope: !606)
!1484 = !DILocation(line: 281, column: 206, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 5)
!1486 = !DILocation(line: 283, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !590, file: !4, line: 283, column: 17)
!1488 = !DILocation(line: 283, column: 20, scope: !1487)
!1489 = !DILocation(line: 283, column: 17, scope: !590)
!1490 = !DILocation(line: 284, column: 22, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !4, line: 284, column: 21)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !4, line: 283, column: 26)
!1493 = !DILocation(line: 284, column: 21, scope: !1492)
!1494 = !DILocation(line: 285, column: 34, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !4, line: 284, column: 40)
!1496 = !DILocation(line: 285, column: 119, scope: !1495)
!1497 = !DILocation(line: 285, column: 21, scope: !1495)
!1498 = !DILocation(line: 286, column: 17, scope: !1495)
!1499 = !DILocation(line: 287, column: 17, scope: !1492)
!1500 = !DILocation(line: 289, column: 9, scope: !590)
!1501 = !DILocation(line: 247, column: 46, scope: !591)
!1502 = !DILocation(line: 247, column: 9, scope: !591)
!1503 = !DILocation(line: 290, column: 5, scope: !593)
!1504 = !DILocation(line: 291, column: 25, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !594, file: !4, line: 290, column: 12)
!1506 = !DILocation(line: 291, column: 9, scope: !1505)
!1507 = !DILocation(line: 293, column: 1, scope: !552)
!1508 = !DILocation(line: 293, column: 1, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !552, file: !4, discriminator: 1)
!1510 = !DILocation(line: 165, column: 34, scope: !659)
!1511 = !DILocation(line: 167, column: 9, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !659, file: !4, line: 167, column: 9)
!1513 = !DILocation(line: 167, column: 9, scope: !659)
!1514 = !DILocation(line: 168, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !4, line: 167, column: 35)
!1516 = !DILocation(line: 171, column: 24, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !659, file: !4, line: 171, column: 9)
!1518 = !DILocation(line: 171, column: 31, scope: !1517)
!1519 = !DILocation(line: 171, column: 40, scope: !1517)
!1520 = !DILocation(line: 171, column: 57, scope: !1517)
!1521 = !DILocation(line: 171, column: 75, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1517, file: !4, discriminator: 1)
!1523 = !DILocation(line: 171, column: 82, scope: !1517)
!1524 = !DILocation(line: 171, column: 91, scope: !1517)
!1525 = !DILocation(line: 172, column: 11, scope: !1517)
!1526 = !DILocation(line: 172, column: 29, scope: !1522)
!1527 = !DILocation(line: 172, column: 36, scope: !1517)
!1528 = !DILocation(line: 172, column: 45, scope: !1517)
!1529 = !DILocation(line: 172, column: 65, scope: !1517)
!1530 = !DILocation(line: 172, column: 83, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1517, file: !4, discriminator: 2)
!1532 = !DILocation(line: 172, column: 90, scope: !1517)
!1533 = !DILocation(line: 172, column: 99, scope: !1517)
!1534 = !DILocation(line: 171, column: 9, scope: !659)
!1535 = !DILocation(line: 173, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1517, file: !4, line: 172, column: 122)
!1537 = !DILocation(line: 175, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1517, file: !4, line: 174, column: 12)
!1539 = !DILocation(line: 177, column: 1, scope: !659)
!1540 = !DILocation(line: 295, column: 54, scope: !607)
!1541 = !DILocation(line: 295, column: 70, scope: !607)
!1542 = !DILocation(line: 297, column: 5, scope: !607)
!1543 = !DILocation(line: 297, column: 17, scope: !607)
!1544 = !DILocation(line: 298, column: 5, scope: !607)
!1545 = !DILocation(line: 298, column: 9, scope: !607)
!1546 = !DILocation(line: 299, column: 5, scope: !607)
!1547 = !DILocation(line: 299, column: 17, scope: !607)
!1548 = !DILocation(line: 300, column: 5, scope: !607)
!1549 = !DILocation(line: 300, column: 16, scope: !607)
!1550 = !DILocation(line: 301, column: 5, scope: !607)
!1551 = !DILocation(line: 301, column: 19, scope: !607)
!1552 = !DILocation(line: 303, column: 40, scope: !607)
!1553 = !DILocation(line: 303, column: 46, scope: !607)
!1554 = !DILocation(line: 303, column: 16, scope: !607)
!1555 = !DILocation(line: 303, column: 14, scope: !607)
!1556 = !DILocation(line: 304, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !607, file: !4, line: 304, column: 9)
!1558 = !DILocation(line: 304, column: 18, scope: !1557)
!1559 = !DILocation(line: 304, column: 9, scope: !607)
!1560 = !DILocation(line: 305, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !4, line: 304, column: 33)
!1562 = !DILocation(line: 306, column: 16, scope: !1561)
!1563 = !DILocation(line: 306, column: 9, scope: !1561)
!1564 = !DILocation(line: 309, column: 7, scope: !619)
!1565 = !DILocation(line: 309, column: 22, scope: !619)
!1566 = !DILocation(line: 309, column: 37, scope: !619)
!1567 = !DILocation(line: 309, column: 35, scope: !619)
!1568 = !DILocation(line: 310, column: 26, scope: !619)
!1569 = !DILocation(line: 310, column: 32, scope: !619)
!1570 = !DILocation(line: 311, column: 26, scope: !619)
!1571 = !DILocation(line: 310, column: 10, scope: !619)
!1572 = !DILocation(line: 310, column: 8, scope: !619)
!1573 = !DILocation(line: 315, column: 26, scope: !619)
!1574 = !DILocation(line: 315, column: 5, scope: !619)
!1575 = !DILocation(line: 315, column: 34, scope: !607)
!1576 = !DILocation(line: 317, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !607, file: !4, line: 317, column: 9)
!1578 = !DILocation(line: 317, column: 12, scope: !1577)
!1579 = !DILocation(line: 317, column: 9, scope: !607)
!1580 = !DILocation(line: 326, column: 42, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !4, line: 326, column: 13)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !4, line: 317, column: 18)
!1583 = !DILocation(line: 326, column: 48, scope: !1581)
!1584 = !DILocation(line: 326, column: 13, scope: !1581)
!1585 = !DILocation(line: 326, column: 52, scope: !1581)
!1586 = !DILocation(line: 326, column: 13, scope: !1582)
!1587 = !DILocation(line: 327, column: 45, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !4, line: 326, column: 57)
!1589 = !DILocation(line: 327, column: 51, scope: !1588)
!1590 = !DILocation(line: 327, column: 55, scope: !1588)
!1591 = !DILocation(line: 327, column: 19, scope: !1588)
!1592 = !DILocation(line: 328, column: 9, scope: !1588)
!1593 = !DILocation(line: 334, column: 32, scope: !1582)
!1594 = !DILocation(line: 334, column: 38, scope: !1582)
!1595 = !DILocation(line: 334, column: 15, scope: !1582)
!1596 = !DILocation(line: 335, column: 20, scope: !1582)
!1597 = !DILocation(line: 335, column: 9, scope: !1582)
!1598 = !DILocation(line: 335, column: 15, scope: !1582)
!1599 = !DILocation(line: 335, column: 18, scope: !1582)
!1600 = !DILocation(line: 336, column: 5, scope: !1582)
!1601 = !DILocation(line: 338, column: 12, scope: !607)
!1602 = !DILocation(line: 338, column: 5, scope: !607)
!1603 = !DILocation(line: 339, column: 1, scope: !607)
!1604 = !DILocation(line: 341, column: 53, scope: !620)
!1605 = !DILocation(line: 343, column: 5, scope: !620)
!1606 = !DILocation(line: 343, column: 9, scope: !620)
!1607 = !DILocation(line: 345, column: 8, scope: !620)
!1608 = !DILocation(line: 346, column: 9, scope: !629)
!1609 = !DILocation(line: 346, column: 15, scope: !629)
!1610 = !DILocation(line: 346, column: 9, scope: !620)
!1611 = !DILocation(line: 347, column: 11, scope: !627)
!1612 = !DILocation(line: 347, column: 26, scope: !627)
!1613 = !DILocation(line: 347, column: 41, scope: !627)
!1614 = !DILocation(line: 347, column: 39, scope: !627)
!1615 = !DILocation(line: 348, column: 31, scope: !627)
!1616 = !DILocation(line: 348, column: 37, scope: !627)
!1617 = !DILocation(line: 348, column: 14, scope: !627)
!1618 = !DILocation(line: 348, column: 12, scope: !627)
!1619 = !DILocation(line: 349, column: 30, scope: !627)
!1620 = !DILocation(line: 349, column: 9, scope: !627)
!1621 = !DILocation(line: 349, column: 38, scope: !628)
!1622 = !DILocation(line: 350, column: 9, scope: !628)
!1623 = !DILocation(line: 350, column: 15, scope: !628)
!1624 = !DILocation(line: 350, column: 18, scope: !628)
!1625 = !DILocation(line: 351, column: 5, scope: !628)
!1626 = !DILocation(line: 353, column: 5, scope: !620)
!1627 = !DILocation(line: 353, column: 11, scope: !620)
!1628 = !DILocation(line: 353, column: 18, scope: !620)
!1629 = !DILocation(line: 355, column: 12, scope: !620)
!1630 = !DILocation(line: 356, column: 1, scope: !620)
!1631 = !DILocation(line: 355, column: 5, scope: !620)
!1632 = !DILocation(line: 358, column: 50, scope: !630)
!1633 = !DILocation(line: 360, column: 5, scope: !630)
!1634 = !DILocation(line: 360, column: 9, scope: !630)
!1635 = !DILocation(line: 362, column: 8, scope: !630)
!1636 = !DILocation(line: 364, column: 9, scope: !637)
!1637 = !DILocation(line: 364, column: 15, scope: !637)
!1638 = !DILocation(line: 364, column: 22, scope: !637)
!1639 = !DILocation(line: 364, column: 25, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !637, file: !4, discriminator: 1)
!1641 = !DILocation(line: 364, column: 31, scope: !637)
!1642 = !DILocation(line: 364, column: 25, scope: !637)
!1643 = !DILocation(line: 364, column: 9, scope: !630)
!1644 = !DILocation(line: 365, column: 11, scope: !635)
!1645 = !DILocation(line: 365, column: 26, scope: !635)
!1646 = !DILocation(line: 365, column: 41, scope: !635)
!1647 = !DILocation(line: 365, column: 39, scope: !635)
!1648 = !DILocation(line: 366, column: 28, scope: !635)
!1649 = !DILocation(line: 366, column: 34, scope: !635)
!1650 = !DILocation(line: 366, column: 14, scope: !635)
!1651 = !DILocation(line: 366, column: 12, scope: !635)
!1652 = !DILocation(line: 367, column: 30, scope: !635)
!1653 = !DILocation(line: 367, column: 9, scope: !635)
!1654 = !DILocation(line: 367, column: 38, scope: !636)
!1655 = !DILocation(line: 369, column: 13, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !636, file: !4, line: 369, column: 13)
!1657 = !DILocation(line: 369, column: 16, scope: !1656)
!1658 = !DILocation(line: 369, column: 13, scope: !636)
!1659 = !DILocation(line: 370, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !4, line: 369, column: 22)
!1661 = !DILocation(line: 370, column: 19, scope: !1660)
!1662 = !DILocation(line: 370, column: 26, scope: !1660)
!1663 = !DILocation(line: 371, column: 9, scope: !1660)
!1664 = !DILocation(line: 372, column: 5, scope: !636)
!1665 = !DILocation(line: 374, column: 12, scope: !630)
!1666 = !DILocation(line: 375, column: 1, scope: !630)
!1667 = !DILocation(line: 374, column: 5, scope: !630)
!1668 = !DILocation(line: 377, column: 56, scope: !638)
!1669 = !DILocation(line: 379, column: 5, scope: !638)
!1670 = !DILocation(line: 379, column: 11, scope: !638)
!1671 = !DILocation(line: 379, column: 18, scope: !638)
!1672 = !DILocation(line: 380, column: 1, scope: !638)
!1673 = !DILocation(line: 382, column: 53, scope: !643)
!1674 = !DILocation(line: 384, column: 9, scope: !649)
!1675 = !DILocation(line: 384, column: 15, scope: !649)
!1676 = !DILocation(line: 384, column: 9, scope: !643)
!1677 = !DILocation(line: 385, column: 11, scope: !647)
!1678 = !DILocation(line: 385, column: 26, scope: !647)
!1679 = !DILocation(line: 385, column: 41, scope: !647)
!1680 = !DILocation(line: 385, column: 39, scope: !647)
!1681 = !DILocation(line: 386, column: 26, scope: !647)
!1682 = !DILocation(line: 386, column: 32, scope: !647)
!1683 = !DILocation(line: 386, column: 9, scope: !647)
!1684 = !DILocation(line: 387, column: 30, scope: !647)
!1685 = !DILocation(line: 387, column: 9, scope: !647)
!1686 = !DILocation(line: 387, column: 38, scope: !648)
!1687 = !DILocation(line: 388, column: 5, scope: !648)
!1688 = !DILocation(line: 390, column: 5, scope: !643)
!1689 = !DILocation(line: 390, column: 11, scope: !643)
!1690 = !DILocation(line: 390, column: 14, scope: !643)
!1691 = !DILocation(line: 392, column: 5, scope: !643)
!1692 = !DILocation(line: 392, column: 10, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !651, file: !4, discriminator: 1)
!1694 = !DILocation(line: 392, column: 20, scope: !651)
!1695 = !DILocation(line: 392, column: 51, scope: !651)
!1696 = !DILocation(line: 392, column: 57, scope: !651)
!1697 = !DILocation(line: 392, column: 67, scope: !654)
!1698 = !DILocation(line: 392, column: 83, scope: !654)
!1699 = !DILocation(line: 392, column: 67, scope: !651)
!1700 = !DILocation(line: 392, column: 98, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !654, file: !4, discriminator: 2)
!1702 = !DILocation(line: 392, column: 103, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !653, file: !4, discriminator: 4)
!1704 = !DILocation(line: 392, column: 113, scope: !653)
!1705 = !DILocation(line: 392, column: 143, scope: !653)
!1706 = !DILocation(line: 392, column: 169, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !653, file: !4, line: 392, column: 166)
!1708 = !DILocation(line: 392, column: 186, scope: !1707)
!1709 = !DILocation(line: 392, column: 166, scope: !1707)
!1710 = !DILocation(line: 392, column: 196, scope: !1707)
!1711 = !DILocation(line: 392, column: 166, scope: !653)
!1712 = !DILocation(line: 392, column: 166, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !653, file: !4, discriminator: 5)
!1714 = !DILocation(line: 392, column: 227, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1707, file: !4, discriminator: 6)
!1716 = !DILocation(line: 392, column: 245, scope: !1707)
!1717 = !DILocation(line: 392, column: 255, scope: !1707)
!1718 = !DILocation(line: 392, column: 280, scope: !1707)
!1719 = !DILocation(line: 392, column: 211, scope: !1707)
!1720 = !DILocation(line: 392, column: 299, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !654, file: !4, discriminator: 7)
!1722 = !DILocation(line: 392, column: 299, scope: !653)
!1723 = !DILocation(line: 392, column: 299, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !653, file: !4, discriminator: 8)
!1725 = !DILocation(line: 392, column: 299, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !653, file: !4, discriminator: 9)
!1727 = !DILocation(line: 392, column: 312, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1729, file: !4, discriminator: 10)
!1729 = !DILexicalBlockFile(scope: !643, file: !4, discriminator: 3)
!1730 = !DILocation(line: 392, column: 312, scope: !651)
!1731 = !DILocation(line: 394, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !643, file: !4, line: 394, column: 9)
!1733 = !DILocation(line: 394, column: 15, scope: !1732)
!1734 = !DILocation(line: 394, column: 30, scope: !1732)
!1735 = !DILocation(line: 394, column: 9, scope: !643)
!1736 = !DILocation(line: 395, column: 43, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !4, line: 394, column: 45)
!1738 = !DILocation(line: 395, column: 32, scope: !1737)
!1739 = !DILocation(line: 395, column: 9, scope: !1737)
!1740 = !DILocation(line: 396, column: 5, scope: !1737)
!1741 = !DILocation(line: 398, column: 19, scope: !643)
!1742 = !DILocation(line: 398, column: 7, scope: !643)
!1743 = !DILocation(line: 398, column: 27, scope: !643)
!1744 = !DILocation(line: 398, column: 37, scope: !643)
!1745 = !{!940, !678, i64 320}
!1746 = !DILocation(line: 398, column: 56, scope: !643)
!1747 = !DILocation(line: 398, column: 45, scope: !643)
!1748 = !DILocation(line: 398, column: 5, scope: !643)
!1749 = !DILocation(line: 399, column: 1, scope: !643)
!1750 = !DILocation(line: 515, column: 35, scope: !655)
!1751 = !{!940, !678, i64 312}
!1752 = !DILocation(line: 516, column: 12, scope: !655)
!1753 = !DILocation(line: 516, column: 5, scope: !655)
