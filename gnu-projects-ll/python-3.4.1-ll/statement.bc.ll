; ModuleID = './statement.bc'
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
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8
  store %struct._object* %sql, %struct._object** %sql.addr, align 8
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 2
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st, align 8
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %1, i32 0, i32 4
  store i32 0, i32* %in_use, align 4
  %2 = load %struct._object*, %struct._object** %sql.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %2, i64* %sql_cstr_len)
  store i8* %call, i8** %sql_cstr, align 8
  %3 = load i8*, i8** %sql_cstr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, i32* %rc, align 4
  %4 = load i32, i32* %rc, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 5
  store %struct._object* null, %struct._object** %in_weakreflist, align 8
  %6 = load %struct._object*, %struct._object** %sql.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %sql.addr, align 8
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %sql1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 3
  store %struct._object* %8, %struct._object** %sql1, align 8
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 1
  %11 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %12 = load i8*, i8** %sql_cstr, align 8
  %13 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %13, i32 0, i32 2
  %call4 = call i32 @sqlite3_prepare(%struct.sqlite3* %11, i8* %12, i32 -1, %struct.sqlite3_stmt** %st3, i8** %tail)
  store i32 %call4, i32* %rc, align 4
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8
  %db5 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 1
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db5, align 8
  %17 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %db6 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %17, i32 0, i32 1
  store %struct.sqlite3* %16, %struct.sqlite3** %db6, align 8
  %18 = load i32, i32* %rc, align 4
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %19 = load i8*, i8** %tail, align 8
  %call8 = call i32 @pysqlite_check_remaining_sql(i8* %19)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %land.lhs.true
  %20 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st10 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %20, i32 0, i32 2
  %21 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st10, align 8
  %call11 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %21)
  %22 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st12 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %22, i32 0, i32 2
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st12, align 8
  store i32 -100, i32* %rc, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %23 = load i32, i32* %rc, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_check_remaining_sql(i8* %tail) #0 {
entry:
  %retval = alloca i32, align 4
  %tail.addr = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %state = alloca i32, align 4
  store i8* %tail, i8** %tail.addr, align 8
  %0 = load i8*, i8** %tail.addr, align 8
  store i8* %0, i8** %pos, align 8
  store i32 5, i32* %state, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %1 = load i8*, i8** %pos, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 45, label %sw.bb.1
    i32 32, label %sw.bb.7
    i32 9, label %sw.bb.7
    i32 10, label %sw.bb.8
    i32 13, label %sw.bb.8
    i32 47, label %sw.bb.13
    i32 42, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %for.cond
  %3 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  store i32 0, i32* %state, align 4
  br label %if.end.6

if.else:                                          ; preds = %sw.bb.1
  %4 = load i32, i32* %state, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.cond, %for.cond
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.cond, %for.cond
  %5 = load i32, i32* %state, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.8
  store i32 5, i32* %state, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %sw.bb.8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %for.cond
  %6 = load i32, i32* %state, align 4
  %cmp14 = icmp eq i32 %6, 5
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %sw.bb.13
  store i32 2, i32* %state, align 4
  br label %if.end.27

if.else.17:                                       ; preds = %sw.bb.13
  %7 = load i32, i32* %state, align 4
  %cmp18 = icmp eq i32 %7, 4
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.17
  store i32 5, i32* %state, align 4
  br label %if.end.26

if.else.21:                                       ; preds = %if.else.17
  %8 = load i32, i32* %state, align 4
  %cmp22 = icmp eq i32 %8, 2
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else.21
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.else.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.16
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.cond
  %9 = load i32, i32* %state, align 4
  %cmp29 = icmp eq i32 %9, 5
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %sw.bb.28
  store i32 1, i32* %retval
  br label %return

if.else.32:                                       ; preds = %sw.bb.28
  %10 = load i32, i32* %state, align 4
  %cmp33 = icmp eq i32 %10, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 1, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.32
  %11 = load i32, i32* %state, align 4
  %cmp37 = icmp eq i32 %11, 2
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  store i32 3, i32* %state, align 4
  br label %if.end.45

if.else.40:                                       ; preds = %if.else.36
  %12 = load i32, i32* %state, align 4
  %cmp41 = icmp eq i32 %12, 3
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.40
  store i32 4, i32* %state, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %sw.epilog

sw.default:                                       ; preds = %for.cond
  %13 = load i32, i32* %state, align 4
  %cmp48 = icmp eq i32 %13, 4
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.default
  store i32 3, i32* %state, align 4
  br label %if.end.62

if.else.51:                                       ; preds = %sw.default
  %14 = load i32, i32* %state, align 4
  %cmp52 = icmp eq i32 %14, 1
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.51
  br label %if.end.61

if.else.55:                                       ; preds = %if.else.51
  %15 = load i32, i32* %state, align 4
  %cmp56 = icmp eq i32 %15, 3
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.55
  br label %if.end.60

if.else.59:                                       ; preds = %if.else.55
  store i32 1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.then.58
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.50
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.62, %if.end.47, %if.end.27, %if.end.12, %sw.bb.7, %if.end.6
  %16 = load i8*, i8** %pos, align 8
  %incdec.ptr = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %pos, align 8
  br label %for.cond

return:                                           ; preds = %if.else.59, %if.then.35, %if.then.31, %if.then.24, %sw.bb
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #1

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
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct._object* %parameter, %struct._object** %parameter.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %1, i32 0, i32 2
  %2 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %3 = load i32, i32* %pos.addr, align 4
  %call = call i32 @sqlite3_bind_null(%struct.sqlite3_stmt* %2, i32 %3)
  store i32 %call, i32* %rc, align 4
  br label %final

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %5, @PyLong_Type
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %paramtype, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %cmp4 = icmp eq %struct._typeobject* %7, @PyFloat_Type
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %paramtype, align 4
  br label %if.end.39

if.else.6:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %9, @PyUnicode_Type
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  store i32 2, i32* %paramtype, align 4
  br label %if.end.38

if.else.10:                                       ; preds = %if.else.6
  %10 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 16777216
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.10
  store i32 0, i32* %paramtype, align 4
  br label %if.end.37

if.else.14:                                       ; preds = %if.else.10
  %13 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %cmp16 = icmp eq %struct._typeobject* %14, @PyFloat_Type
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %call18 = call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.else.14
  store i32 1, i32* %paramtype, align 4
  br label %if.end.36

if.else.20:                                       ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_flags22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags22, align 8
  %and23 = and i64 %19, 268435456
  %cmp24 = icmp ne i64 %and23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.20
  store i32 2, i32* %paramtype, align 4
  br label %if.end.35

if.else.26:                                       ; preds = %if.else.20
  %20 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 18
  %22 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp28 = icmp ne %struct.PyBufferProcs* %22, null
  br i1 %cmp28, label %land.lhs.true, label %if.else.33

land.lhs.true:                                    ; preds = %if.else.26
  %23 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_as_buffer30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 18
  %25 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer30, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %25, i32 0, i32 0
  %26 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp31 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %26, null
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true
  store i32 3, i32* %paramtype, align 4
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true, %if.else.26
  store i32 4, i32* %paramtype, align 4
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
  %27 = load i32, i32* %paramtype, align 4
  switch i32 %27, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.51
    i32 2, label %sw.bb.55
    i32 3, label %sw.bb.65
    i32 4, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %if.end.40
  %28 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %call41 = call i64 @_pysqlite_long_as_int64(%struct._object* %28)
  store i64 %call41, i64* %value, align 8
  %29 = load i64, i64* %value, align 8
  %cmp42 = icmp eq i64 %29, -1
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.47

land.lhs.true.43:                                 ; preds = %sw.bb
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool45 = icmp ne %struct._object* %call44, null
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.43
  store i32 -1, i32* %rc, align 4
  br label %if.end.50

if.else.47:                                       ; preds = %land.lhs.true.43, %sw.bb
  %30 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st48 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %30, i32 0, i32 2
  %31 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st48, align 8
  %32 = load i32, i32* %pos.addr, align 4
  %33 = load i64, i64* %value, align 8
  %call49 = call i32 @sqlite3_bind_int64(%struct.sqlite3_stmt* %31, i32 %32, i64 %33)
  store i32 %call49, i32* %rc, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.40
  %34 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st52 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %34, i32 0, i32 2
  %35 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st52, align 8
  %36 = load i32, i32* %pos.addr, align 4
  %37 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %call53 = call double @PyFloat_AsDouble(%struct._object* %37)
  %call54 = call i32 @sqlite3_bind_double(%struct.sqlite3_stmt* %35, i32 %36, double %call53)
  store i32 %call54, i32* %rc, align 4
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.40
  %38 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %call56 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %38, i64* %buflen)
  store i8* %call56, i8** %string, align 8
  %39 = load i8*, i8** %string, align 8
  %cmp57 = icmp eq i8* %39, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %sw.bb.55
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %sw.bb.55
  %40 = load i64, i64* %buflen, align 8
  %cmp60 = icmp sgt i64 %40, 2147483647
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.59
  %41 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.59
  %42 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st63 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %42, i32 0, i32 2
  %43 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st63, align 8
  %44 = load i32, i32* %pos.addr, align 4
  %45 = load i8*, i8** %string, align 8
  %46 = load i64, i64* %buflen, align 8
  %conv = trunc i64 %46 to i32
  %call64 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %43, i32 %44, i8* %45, i32 %conv, void (i8*)* inttoptr (i64 -1 to void (i8*)*))
  store i32 %call64, i32* %rc, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end.40
  %47 = load %struct._object*, %struct._object** %parameter.addr, align 8
  %call66 = call i32 @PyObject_AsCharBuffer(%struct._object* %47, i8** %buffer, i64* %buflen)
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %sw.bb.65
  %48 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %sw.bb.65
  %49 = load i64, i64* %buflen, align 8
  %cmp71 = icmp sgt i64 %49, 2147483647
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  %50 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.70
  %51 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st75 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %51, i32 0, i32 2
  %52 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st75, align 8
  %53 = load i32, i32* %pos.addr, align 4
  %54 = load i8*, i8** %buffer, align 8
  %55 = load i64, i64* %buflen, align 8
  %conv76 = trunc i64 %55 to i32
  %call77 = call i32 @sqlite3_bind_blob(%struct.sqlite3_stmt* %52, i32 %53, i8* %54, i32 %conv76, void (i8*)* inttoptr (i64 -1 to void (i8*)*))
  store i32 %call77, i32* %rc, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.40
  store i32 -1, i32* %rc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.78, %if.end.40, %if.end.74, %if.end.62, %sw.bb.51, %if.end.50
  br label %final

final:                                            ; preds = %sw.epilog, %if.then
  %56 = load i32, i32* %rc, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %final, %if.then.73, %if.then.69, %if.then.61, %if.then.58
  %57 = load i32, i32* %retval
  ret i32 %57
}

declare i32 @sqlite3_bind_null(%struct.sqlite3_stmt*, i32) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i64 @_pysqlite_long_as_int64(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @sqlite3_bind_int64(%struct.sqlite3_stmt*, i32, i64) #1

declare i32 @sqlite3_bind_double(%struct.sqlite3_stmt*, i32, double) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @sqlite3_bind_text(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #1

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #1

declare i32 @sqlite3_bind_blob(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #1

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
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp43 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_save112 = alloca %struct._ts*, align 8
  %_py_xincref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp165 = alloca %struct._object*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store %struct._object* %parameters, %struct._object** %parameters.addr, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 2
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %call1 = call i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt* %1)
  store i32 %call1, i32* %num_params_needed, align 4
  %2 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %2)
  %3 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %4, @PyTuple_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %6, @PyList_Type
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 536870912
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.else.101, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %10 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %call7 = call i32 @PySequence_Check(%struct._object* %10)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else.101

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  %11 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %cmp9 = icmp eq %struct._typeobject* %12, @PyTuple_Type
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %13 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  store i64 %15, i64* %num_params, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %16 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %cmp12 = icmp eq %struct._typeobject* %17, @PyList_Type
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size14, align 8
  store i64 %20, i64* %num_params, align 8
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %21 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %call16 = call i64 @PySequence_Size(%struct._object* %21)
  store i64 %call16, i64* %num_params, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.10
  %22 = load i64, i64* %num_params, align 8
  %23 = load i32, i32* %num_params_needed, align 4
  %conv = sext i32 %23 to i64
  %cmp18 = icmp ne i64 %22, %conv
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %24 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %25 = load i32, i32* %num_params_needed, align 4
  %26 = load i64, i64* %num_params, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i32 0, i32 0), i32 %25, i64 %26)
  br label %if.end.190

if.end.22:                                        ; preds = %if.end.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %27 = load i32, i32* %i, align 4
  %conv23 = sext i32 %27 to i64
  %28 = load i64, i64* %num_params, align 8
  %cmp24 = icmp slt i64 %conv23, %28
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %cmp27 = icmp eq %struct._typeobject* %30, @PyTuple_Type
  br i1 %cmp27, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %34 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %34, %struct._object** %current_param, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %35 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %35, %struct._object** %_py_xincref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %36, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.33
  br label %if.end.55

if.else.34:                                       ; preds = %for.body
  %39 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %cmp36 = icmp eq %struct._typeobject* %40, @PyList_Type
  br i1 %cmp36, label %if.then.38, label %if.else.51

if.then.38:                                       ; preds = %if.else.34
  %41 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyListObject*
  %ob_item40 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %43, i32 0, i32 1
  %44 = load %struct._object**, %struct._object*** %ob_item40, align 8
  %arrayidx41 = getelementptr %struct._object*, %struct._object** %44, i64 %idxprom39
  %45 = load %struct._object*, %struct._object** %arrayidx41, align 8
  store %struct._object* %45, %struct._object** %current_param, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.38
  %46 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %46, %struct._object** %_py_xincref_tmp43, align 8
  %47 = load %struct._object*, %struct._object** %_py_xincref_tmp43, align 8
  %cmp44 = icmp ne %struct._object* %47, null
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %do.body.42
  %48 = load %struct._object*, %struct._object** %_py_xincref_tmp43, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt47, align 8
  %inc48 = add i64 %49, 1
  store i64 %inc48, i64* %ob_refcnt47, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %do.body.42
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.54

if.else.51:                                       ; preds = %if.else.34
  %50 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %51 = load i32, i32* %i, align 4
  %conv52 = sext i32 %51 to i64
  %call53 = call %struct._object* @PySequence_GetItem(%struct._object* %50, i64 %conv52)
  store %struct._object* %call53, %struct._object** %current_param, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %do.end.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %do.end
  %52 = load %struct._object*, %struct._object** %current_param, align 8
  %tobool56 = icmp ne %struct._object* %52, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.55
  br label %if.end.190

if.end.58:                                        ; preds = %if.end.55
  %53 = load %struct._object*, %struct._object** %current_param, align 8
  %call59 = call i32 @_need_adapt(%struct._object* %53)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.58
  %54 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %54, %struct._object** %adapted, align 8
  br label %if.end.77

if.else.62:                                       ; preds = %if.end.58
  %55 = load %struct._object*, %struct._object** %current_param, align 8
  %call63 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %55, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* null)
  store %struct._object* %call63, %struct._object** %adapted, align 8
  %56 = load %struct._object*, %struct._object** %adapted, align 8
  %tobool64 = icmp ne %struct._object* %56, null
  br i1 %tobool64, label %if.then.65, label %if.else.75

if.then.65:                                       ; preds = %if.else.62
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.65
  %57 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt67, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %ob_refcnt67, align 8
  %cmp68 = icmp ne i64 %dec, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.66
  br label %if.end.73

if.else.71:                                       ; preds = %do.body.66
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %62(%struct._object* %63)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.76

if.else.75:                                       ; preds = %if.else.62
  call void @PyErr_Clear()
  %64 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %64, %struct._object** %adapted, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %do.end.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.61
  %65 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %66 = load i32, i32* %i, align 4
  %add = add i32 %66, 1
  %67 = load %struct._object*, %struct._object** %adapted, align 8
  %call78 = call i32 @pysqlite_statement_bind_parameter(%struct.pysqlite_Statement* %65, i32 %add, %struct._object* %67)
  store i32 %call78, i32* %rc, align 4
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.77
  %68 = load %struct._object*, %struct._object** %adapted, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp80, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %70, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.79
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %73(%struct._object* %74)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %75 = load i32, i32* %rc, align 4
  %cmp91 = icmp ne i32 %75, 0
  br i1 %cmp91, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %do.end.90
  %call94 = call %struct._object* @PyErr_Occurred()
  %tobool95 = icmp ne %struct._object* %call94, null
  br i1 %tobool95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %if.then.93
  %76 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %77 = load i32, i32* %i, align 4
  %call97 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i32 0, i32 0), i32 %77)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.then.93
  br label %if.end.190

if.end.99:                                        ; preds = %do.end.90
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %78 = load i32, i32* %i, align 4
  %inc100 = add i32 %78, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.190

if.else.101:                                      ; preds = %land.lhs.true, %lor.lhs.false.4
  %79 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_flags103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 19
  %81 = load i64, i64* %tp_flags103, align 8
  %and104 = and i64 %81, 536870912
  %cmp105 = icmp ne i64 %and104, 0
  br i1 %cmp105, label %if.then.107, label %if.else.188

if.then.107:                                      ; preds = %if.else.101
  store i32 1, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.185, %if.then.107
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %num_params_needed, align 4
  %cmp109 = icmp sle i32 %82, %83
  br i1 %cmp109, label %for.body.111, label %for.end.187

for.body.111:                                     ; preds = %for.cond.108
  %call113 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call113, %struct._ts** %_save112, align 8
  %84 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st114 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %84, i32 0, i32 2
  %85 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st114, align 8
  %86 = load i32, i32* %i, align 4
  %call115 = call i8* @sqlite3_bind_parameter_name(%struct.sqlite3_stmt* %85, i32 %86)
  store i8* %call115, i8** %binding_name, align 8
  %87 = load %struct._ts*, %struct._ts** %_save112, align 8
  call void @PyEval_RestoreThread(%struct._ts* %87)
  %88 = load i8*, i8** %binding_name, align 8
  %tobool116 = icmp ne i8* %88, null
  br i1 %tobool116, label %if.end.119, label %if.then.117

if.then.117:                                      ; preds = %for.body.111
  %89 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %90 = load i32, i32* %i, align 4
  %call118 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %89, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i32 0, i32 0), i32 %90)
  br label %if.end.190

if.end.119:                                       ; preds = %for.body.111
  %91 = load i8*, i8** %binding_name, align 8
  %incdec.ptr = getelementptr i8, i8* %91, i32 1
  store i8* %incdec.ptr, i8** %binding_name, align 8
  %92 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %cmp121 = icmp eq %struct._typeobject* %93, @PyDict_Type
  br i1 %cmp121, label %if.then.123, label %if.else.134

if.then.123:                                      ; preds = %if.end.119
  %94 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %95 = load i8*, i8** %binding_name, align 8
  %call124 = call %struct._object* @PyDict_GetItemString(%struct._object* %94, i8* %95)
  store %struct._object* %call124, %struct._object** %current_param, align 8
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.123
  %96 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %96, %struct._object** %_py_xincref_tmp126, align 8
  %97 = load %struct._object*, %struct._object** %_py_xincref_tmp126, align 8
  %cmp127 = icmp ne %struct._object* %97, null
  br i1 %cmp127, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %do.body.125
  %98 = load %struct._object*, %struct._object** %_py_xincref_tmp126, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt130, align 8
  %inc131 = add i64 %99, 1
  store i64 %inc131, i64* %ob_refcnt130, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %do.body.125
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %if.end.136

if.else.134:                                      ; preds = %if.end.119
  %100 = load %struct._object*, %struct._object** %parameters.addr, align 8
  %101 = load i8*, i8** %binding_name, align 8
  %call135 = call %struct._object* @PyMapping_GetItemString(%struct._object* %100, i8* %101)
  store %struct._object* %call135, %struct._object** %current_param, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %do.end.133
  %102 = load %struct._object*, %struct._object** %current_param, align 8
  %tobool137 = icmp ne %struct._object* %102, null
  br i1 %tobool137, label %if.end.140, label %if.then.138

if.then.138:                                      ; preds = %if.end.136
  %103 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %104 = load i32, i32* %i, align 4
  %call139 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %104)
  br label %if.end.190

if.end.140:                                       ; preds = %if.end.136
  %105 = load %struct._object*, %struct._object** %current_param, align 8
  %call141 = call i32 @_need_adapt(%struct._object* %105)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.else.144, label %if.then.143

if.then.143:                                      ; preds = %if.end.140
  %106 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %106, %struct._object** %adapted, align 8
  br label %if.end.162

if.else.144:                                      ; preds = %if.end.140
  %107 = load %struct._object*, %struct._object** %current_param, align 8
  %call145 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %107, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* null)
  store %struct._object* %call145, %struct._object** %adapted, align 8
  %108 = load %struct._object*, %struct._object** %adapted, align 8
  %tobool146 = icmp ne %struct._object* %108, null
  br i1 %tobool146, label %if.then.147, label %if.else.160

if.then.147:                                      ; preds = %if.else.144
  br label %do.body.148

do.body.148:                                      ; preds = %if.then.147
  %109 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp149, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt150, align 8
  %dec151 = add i64 %111, -1
  store i64 %dec151, i64* %ob_refcnt150, align 8
  %cmp152 = icmp ne i64 %dec151, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.148
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.148
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8
  call void %114(%struct._object* %115)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.161

if.else.160:                                      ; preds = %if.else.144
  call void @PyErr_Clear()
  %116 = load %struct._object*, %struct._object** %current_param, align 8
  store %struct._object* %116, %struct._object** %adapted, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.160, %do.end.159
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.143
  %117 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %118 = load i32, i32* %i, align 4
  %119 = load %struct._object*, %struct._object** %adapted, align 8
  %call163 = call i32 @pysqlite_statement_bind_parameter(%struct.pysqlite_Statement* %117, i32 %118, %struct._object* %119)
  store i32 %call163, i32* %rc, align 4
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.162
  %120 = load %struct._object*, %struct._object** %adapted, align 8
  store %struct._object* %120, %struct._object** %_py_decref_tmp165, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_refcnt166 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt166, align 8
  %dec167 = add i64 %122, -1
  store i64 %dec167, i64* %ob_refcnt166, align 8
  %cmp168 = icmp ne i64 %dec167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %do.body.164
  br label %if.end.174

if.else.171:                                      ; preds = %do.body.164
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 1
  %124 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %124, i32 0, i32 4
  %125 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp165, align 8
  call void %125(%struct._object* %126)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.171, %if.then.170
  br label %do.end.175

do.end.175:                                       ; preds = %if.end.174
  %127 = load i32, i32* %rc, align 4
  %cmp176 = icmp ne i32 %127, 0
  br i1 %cmp176, label %if.then.178, label %if.end.184

if.then.178:                                      ; preds = %do.end.175
  %call179 = call %struct._object* @PyErr_Occurred()
  %tobool180 = icmp ne %struct._object* %call179, null
  br i1 %tobool180, label %if.end.183, label %if.then.181

if.then.181:                                      ; preds = %if.then.178
  %128 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %129 = load i8*, i8** %binding_name, align 8
  %call182 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i8* %129)
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.181, %if.then.178
  br label %if.end.190

if.end.184:                                       ; preds = %do.end.175
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %130 = load i32, i32* %i, align 4
  %inc186 = add i32 %130, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.108

for.end.187:                                      ; preds = %for.cond.108
  br label %if.end.189

if.else.188:                                      ; preds = %if.else.101
  %131 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %for.end.187
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.20, %if.then.57, %if.end.98, %if.then.117, %if.then.138, %if.end.183, %if.end.189, %for.end
  ret void
}

declare i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt*) #1

declare i32 @PySequence_Check(%struct._object*) #1

declare i64 @PySequence_Size(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @_need_adapt(%struct._object* %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load i32, i32* @pysqlite_BaseTypeAdapted, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyLong_Type
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyFloat_Type
  br i1 %cmp2, label %if.then.9, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %6, @PyUnicode_Type
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %8, @PyByteArray_Type
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.6
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.9, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @pysqlite_microprotocols_adapt(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_Clear() #1

declare i8* @sqlite3_bind_parameter_name(%struct.sqlite3_stmt*, i32) #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

declare %struct._object* @PyMapping_GetItemString(%struct._object*, i8*) #1

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
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store %struct._object* %params, %struct._object** %params.addr, align 8
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %sql = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %sql, align 8
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %1, i64* %sql_len)
  store i8* %call, i8** %sql_cstr, align 8
  %2 = load i8*, i8** %sql_cstr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, i32* %rc, align 4
  %3 = load i32, i32* %rc, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %4 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %4, i32 0, i32 1
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %6 = load i8*, i8** %sql_cstr, align 8
  %call2 = call i32 @sqlite3_prepare(%struct.sqlite3* %5, i8* %6, i32 -1, %struct.sqlite3_stmt** %new_st, i8** %tail)
  store i32 %call2, i32* %rc, align 4
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  %8 = load i32, i32* %rc, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 2
  %10 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %call5 = call i32 @sqlite3_bind_parameter_count(%struct.sqlite3_stmt* %10)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %11 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st8 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %11, i32 0, i32 2
  %12 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st8, align 8
  %13 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %new_st, align 8
  %call9 = call i32 @sqlite3_transfer_bindings(%struct.sqlite3_stmt* %12, %struct.sqlite3_stmt* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  %14 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st11 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %14, i32 0, i32 2
  %15 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st11, align 8
  %call12 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %15)
  %16 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %new_st, align 8
  %17 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st13 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %17, i32 0, i32 2
  store %struct.sqlite3_stmt* %16, %struct.sqlite3_stmt** %st13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.10, %if.end
  %18 = load i32, i32* %rc, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @sqlite3_transfer_bindings(%struct.sqlite3_stmt*, %struct.sqlite3_stmt*) #1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 2
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %tobool = icmp ne %struct.sqlite3_stmt* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %2 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %2, i32 0, i32 2
  %3 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st1, align 8
  %call2 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %3)
  store i32 %call2, i32* %rc, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 2
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %6, i32 0, i32 4
  store i32 0, i32* %in_use, align 4
  %7 = load i32, i32* %rc, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 4
  %1 = load i32, i32* %in_use, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %2, i32 0, i32 2
  %3 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %tobool1 = icmp ne %struct.sqlite3_stmt* %3, null
  br i1 %tobool1, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %4 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st2 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %4, i32 0, i32 2
  %5 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st2, align 8
  %call3 = call i32 @sqlite3_reset(%struct.sqlite3_stmt* %5)
  store i32 %call3, i32* %rc, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_use5 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %8, i32 0, i32 4
  store i32 0, i32* %in_use5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %9 = load i32, i32* %rc, align 4
  ret i32 %9
}

declare i32 @sqlite3_reset(%struct.sqlite3_stmt*) #1

; Function Attrs: nounwind uwtable
define void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 4
  store i32 1, i32* %in_use, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @pysqlite_statement_dealloc(%struct.pysqlite_Statement* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Statement*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Statement* %self, %struct.pysqlite_Statement** %self.addr, align 8
  %0 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %0, i32 0, i32 2
  %1 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %tobool = icmp ne %struct.sqlite3_stmt* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %2 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st1 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %2, i32 0, i32 2
  %3 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st1, align 8
  %call2 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %3)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %st3 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 2
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st3, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %sql = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %sql, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %8, null
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %16 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %16, i32 0, i32 5
  %17 = load %struct._object*, %struct._object** %in_weakreflist, align 8
  %cmp11 = icmp ne %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end.10
  %18 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %19 = bitcast %struct.pysqlite_Statement* %18 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end.10
  %20 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %21 = bitcast %struct.pysqlite_Statement* %20 to %struct._object*
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 38
  %23 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %24 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %self.addr, align 8
  %25 = bitcast %struct.pysqlite_Statement* %24 to %struct._object*
  %26 = bitcast %struct._object* %25 to i8*
  call void %23(i8* %26)
  ret void
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_statement_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 37), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_StatementType)
  ret i32 %call
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
