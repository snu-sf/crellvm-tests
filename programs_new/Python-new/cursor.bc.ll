; ModuleID = 'irs-onlybc/cursor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, {}*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, {}*, {}*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, {}*, {}*, {}*, i32 (%struct._object*)*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}*, i8*, {}*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, {}* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@_pysqlite_get_converter.PyId_upper = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct._object* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@converters = external global %struct._object*, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@pysqlite_InterfaceError = external global %struct._object*, align 8
@errmsg_fetch_across_rollback = internal global i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.19, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"<unknown column name>\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Could not decode to UTF-8 column '%s' with text '%s'\00", align 1
@pysqlite_OperationalError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Could not decode to UTF-8\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@PyBytes_Type = external global %struct._typeobject, align 8
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"y#\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"operation parameter must be str\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@pysqlite_StatementType = external global %struct._typeobject, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [55 x i8] c"You cannot execute SELECT statements in executemany().\00", align 1
@_enable_callback_tracebacks = external global i32, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"Error while building row_cast_map\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"executemany() can only execute DML statements.\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"script argument must be unicode.\00", align 1
@pysqlite_cursor_fetchmany.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* null], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"|i:fetchmany\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sqlite3.Cursor\00", align 1
@cursor_doc = internal global [30 x i8] c"SQLite database cursor class.\00", align 16
@cursor_methods = internal global [10 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_execute to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_executemany to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_executescript to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_fetchone to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*, %struct._object*)* @pysqlite_cursor_fetchmany to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_fetchall to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_noop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_noop to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@cursor_members = internal global [7 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 1, i64 40, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 6, i64 48, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 2, i64 56, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 6, i64 64, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@pysqlite_CursorType = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.pysqlite_Cursor*)* @pysqlite_cursor_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cursor_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 104, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*)* @pysqlite_cursor_getiter to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*)* @pysqlite_cursor_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([10 x %struct.PyMethodDef], [10 x %struct.PyMethodDef]* @cursor_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([7 x %struct.PyMemberDef], [7 x %struct.PyMemberDef]* @cursor_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.pysqlite_Cursor*, %struct._object*, %struct._object*)* @pysqlite_cursor_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.19 = private unnamed_addr constant [88 x i8] c"Cursor needed to be reset because of commit/rollback and can no longer be fetched from.\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Base Cursor.__init__ not called.\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Cannot operate on a closed cursor.\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"Recursive use of cursors not allowed.\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@_Py_ctype_tolower = external constant [256 x i8], align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Executes a SQL statement.\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"executemany\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Repeatedly executes a SQL statement.\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"executescript\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"Executes a multiple SQL statements at once. Non-standard.\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"fetchone\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Fetches one row from the resultset.\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"fetchmany\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Fetches several rows from the resultset.\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"fetchall\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"Fetches all rows from the resultset.\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Closes the cursor.\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"setinputsizes\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Required by DB-API. Does nothing in pysqlite.\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"setoutputsize\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"arraysize\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"lastrowid\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"rowcount\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"row_factory\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"O!\00", align 1
@pysqlite_ConnectionType = external global %struct._typeobject, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_get_converter(%struct._object* %key) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %key.addr = alloca %struct._object*, align 8
  %upcase_key = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %key.addr, metadata !387, metadata !1013), !dbg !1014
  %0 = bitcast %struct._object** %upcase_key to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1015
  call void @llvm.dbg.declare(metadata %struct._object** %upcase_key, metadata !388, metadata !1013), !dbg !1016
  %1 = bitcast %struct._object** %retval1 to i8*, !dbg !1017
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1017
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !389, metadata !1013), !dbg !1018
  %2 = load %struct._object*, %struct._object** %key.addr, align 8, !dbg !1019, !tbaa !1009
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %2, %struct._Py_Identifier* @_pysqlite_get_converter.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)), !dbg !1020
  store %struct._object* %call, %struct._object** %upcase_key, align 8, !dbg !1021, !tbaa !1009
  %3 = load %struct._object*, %struct._object** %upcase_key, align 8, !dbg !1022, !tbaa !1009
  %tobool = icmp ne %struct._object* %3, null, !dbg !1022
  br i1 %tobool, label %if.end, label %if.then, !dbg !1024

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1025

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** @converters, align 8, !dbg !1027, !tbaa !1009
  %5 = load %struct._object*, %struct._object** %upcase_key, align 8, !dbg !1028, !tbaa !1009
  %call2 = call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %5), !dbg !1029
  store %struct._object* %call2, %struct._object** %retval1, align 8, !dbg !1030, !tbaa !1009
  br label %do.body, !dbg !1031

do.body:                                          ; preds = %if.end
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1032
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1032
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !390, metadata !1013), !dbg !1034
  %7 = load %struct._object*, %struct._object** %upcase_key, align 8, !dbg !1035, !tbaa !1009
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1034, !tbaa !1009
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1036, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1038
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1039, !tbaa !1040
  %dec = add i64 %9, -1, !dbg !1039
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1039, !tbaa !1040
  %cmp = icmp ne i64 %dec, 0, !dbg !1043
  br i1 %cmp, label %if.then.3, label %if.else, !dbg !1044

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !1045

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1047, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1049
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1049, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1051
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1051, !tbaa !1052
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1056, !tbaa !1009
  call void %12(%struct._object* %13), !dbg !1057
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1058
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1058
  br label %do.cond, !dbg !1060

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1061

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !1063, !tbaa !1009
  store %struct._object* %15, %struct._object** %retval, !dbg !1064
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1064

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct._object** %retval1 to i8*, !dbg !1065
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1065
  %17 = bitcast %struct._object** %upcase_key to i8*, !dbg !1065
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !1065
  %18 = load %struct._object*, %struct._object** %retval, !dbg !1065
  ret %struct._object* %18, !dbg !1065
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @pysqlite_build_row_cast_map(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %i = alloca i32, align 4
  %type_start = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %colname = alloca i8*, align 8
  %decltype = alloca i8*, align 8
  %py_decltype = alloca %struct._object*, align 8
  %converter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !474, metadata !1013), !dbg !1066
  %0 = bitcast i32* %i to i8*, !dbg !1067
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1067
  call void @llvm.dbg.declare(metadata i32* %i, metadata !475, metadata !1013), !dbg !1068
  %1 = bitcast i8** %type_start to i8*, !dbg !1069
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1069
  call void @llvm.dbg.declare(metadata i8** %type_start, metadata !476, metadata !1013), !dbg !1070
  store i8* inttoptr (i64 -1 to i8*), i8** %type_start, align 8, !dbg !1070, !tbaa !1009
  %2 = bitcast i8** %pos to i8*, !dbg !1071
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1071
  call void @llvm.dbg.declare(metadata i8** %pos, metadata !477, metadata !1013), !dbg !1072
  %3 = bitcast i8** %colname to i8*, !dbg !1073
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1073
  call void @llvm.dbg.declare(metadata i8** %colname, metadata !478, metadata !1013), !dbg !1074
  %4 = bitcast i8** %decltype to i8*, !dbg !1075
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1075
  call void @llvm.dbg.declare(metadata i8** %decltype, metadata !479, metadata !1013), !dbg !1076
  %5 = bitcast %struct._object** %py_decltype to i8*, !dbg !1077
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1077
  call void @llvm.dbg.declare(metadata %struct._object** %py_decltype, metadata !480, metadata !1013), !dbg !1078
  %6 = bitcast %struct._object** %converter to i8*, !dbg !1079
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1079
  call void @llvm.dbg.declare(metadata %struct._object** %converter, metadata !481, metadata !1013), !dbg !1080
  %7 = bitcast %struct._object** %key to i8*, !dbg !1081
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1081
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !482, metadata !1013), !dbg !1082
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1083, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 1, !dbg !1085
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !1085, !tbaa !1086
  %detect_types = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 3, !dbg !1088
  %10 = load i32, i32* %detect_types, align 4, !dbg !1088, !tbaa !1089
  %tobool = icmp ne i32 %10, 0, !dbg !1083
  br i1 %tobool, label %if.end, label %if.then, !dbg !1092

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1093
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1093

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1095

do.body:                                          ; preds = %if.end
  %11 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1096
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1096
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !483, metadata !1013), !dbg !1098
  %12 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1099, !tbaa !1009
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %12, i32 0, i32 3, !dbg !1100
  %13 = load %struct._object*, %struct._object** %row_cast_map, align 8, !dbg !1100, !tbaa !1101
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1098, !tbaa !1009
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1102, !tbaa !1009
  %cmp = icmp ne %struct._object* %14, null, !dbg !1103
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !1104

if.then.1:                                        ; preds = %do.body
  br label %do.body.2, !dbg !1105

do.body.2:                                        ; preds = %if.then.1
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1107
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !1107
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !485, metadata !1013), !dbg !1109
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1110, !tbaa !1009
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !1109, !tbaa !1009
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1111, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !1113
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !1114, !tbaa !1040
  %dec = add i64 %18, -1, !dbg !1114
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1114, !tbaa !1040
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1115
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1116

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.5, !dbg !1117

if.else:                                          ; preds = %do.body.2
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1119, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1121
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1121, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !1122
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1122, !tbaa !1052
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1123, !tbaa !1009
  call void %21(%struct._object* %22), !dbg !1124
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1125
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1125
  br label %do.cond, !dbg !1127

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !1128

do.end:                                           ; preds = %do.cond
  br label %if.end.6, !dbg !1130

if.end.6:                                         ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !1132
  br label %do.cond.7, !dbg !1135

do.cond.7:                                        ; preds = %if.end.6
  br label %do.end.8, !dbg !1136

do.end.8:                                         ; preds = %do.cond.7
  %call = call %struct._object* @PyList_New(i64 0), !dbg !1138
  %25 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1139, !tbaa !1009
  %row_cast_map9 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %25, i32 0, i32 3, !dbg !1140
  store %struct._object* %call, %struct._object** %row_cast_map9, align 8, !dbg !1141, !tbaa !1101
  store i32 0, i32* %i, align 4, !dbg !1142, !tbaa !1143
  br label %for.cond, !dbg !1144

for.cond:                                         ; preds = %for.inc.157, %do.end.8
  %26 = load i32, i32* %i, align 4, !dbg !1145, !tbaa !1143
  %27 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1148, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %27, i32 0, i32 8, !dbg !1149
  %28 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !1149, !tbaa !1150
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %28, i32 0, i32 2, !dbg !1151
  %29 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1151, !tbaa !1152
  %call10 = call i32 @sqlite3_column_count(%struct.sqlite3_stmt* %29), !dbg !1154
  %cmp11 = icmp slt i32 %26, %call10, !dbg !1155
  br i1 %cmp11, label %for.body, label %for.end.158, !dbg !1156

for.body:                                         ; preds = %for.cond
  store %struct._object* null, %struct._object** %converter, align 8, !dbg !1157, !tbaa !1009
  %30 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1158, !tbaa !1009
  %connection12 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %30, i32 0, i32 1, !dbg !1159
  %31 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection12, align 8, !dbg !1159, !tbaa !1086
  %detect_types13 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %31, i32 0, i32 3, !dbg !1160
  %32 = load i32, i32* %detect_types13, align 4, !dbg !1160, !tbaa !1089
  %and = and i32 %32, 2, !dbg !1161
  %tobool14 = icmp ne i32 %and, 0, !dbg !1161
  br i1 %tobool14, label %if.then.15, label %if.end.57, !dbg !1162

if.then.15:                                       ; preds = %for.body
  %33 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1163, !tbaa !1009
  %statement16 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %33, i32 0, i32 8, !dbg !1164
  %34 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement16, align 8, !dbg !1164, !tbaa !1150
  %st17 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %34, i32 0, i32 2, !dbg !1165
  %35 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st17, align 8, !dbg !1165, !tbaa !1152
  %36 = load i32, i32* %i, align 4, !dbg !1166, !tbaa !1143
  %call18 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %35, i32 %36), !dbg !1167
  store i8* %call18, i8** %colname, align 8, !dbg !1168, !tbaa !1009
  %37 = load i8*, i8** %colname, align 8, !dbg !1169, !tbaa !1009
  %tobool19 = icmp ne i8* %37, null, !dbg !1169
  br i1 %tobool19, label %if.then.20, label %if.end.56, !dbg !1170

if.then.20:                                       ; preds = %if.then.15
  %38 = load i8*, i8** %colname, align 8, !dbg !1171, !tbaa !1009
  store i8* %38, i8** %pos, align 8, !dbg !1172, !tbaa !1009
  br label %for.cond.21, !dbg !1173

for.cond.21:                                      ; preds = %for.inc, %if.then.20
  %39 = load i8*, i8** %pos, align 8, !dbg !1174, !tbaa !1009
  %40 = load i8, i8* %39, align 1, !dbg !1177, !tbaa !1178
  %conv = sext i8 %40 to i32, !dbg !1177
  %cmp22 = icmp ne i32 %conv, 0, !dbg !1179
  br i1 %cmp22, label %for.body.24, label %for.end, !dbg !1180

for.body.24:                                      ; preds = %for.cond.21
  %41 = load i8*, i8** %pos, align 8, !dbg !1181, !tbaa !1009
  %42 = load i8, i8* %41, align 1, !dbg !1182, !tbaa !1178
  %conv25 = sext i8 %42 to i32, !dbg !1182
  %cmp26 = icmp eq i32 %conv25, 91, !dbg !1183
  br i1 %cmp26, label %if.then.28, label %if.else.29, !dbg !1184

if.then.28:                                       ; preds = %for.body.24
  %43 = load i8*, i8** %pos, align 8, !dbg !1185, !tbaa !1009
  %add.ptr = getelementptr i8, i8* %43, i64 1, !dbg !1187
  store i8* %add.ptr, i8** %type_start, align 8, !dbg !1188, !tbaa !1009
  br label %if.end.55, !dbg !1189

if.else.29:                                       ; preds = %for.body.24
  %44 = load i8*, i8** %pos, align 8, !dbg !1190, !tbaa !1009
  %45 = load i8, i8* %44, align 1, !dbg !1191, !tbaa !1178
  %conv30 = sext i8 %45 to i32, !dbg !1191
  %cmp31 = icmp eq i32 %conv30, 93, !dbg !1192
  br i1 %cmp31, label %land.lhs.true, label %if.end.54, !dbg !1193

land.lhs.true:                                    ; preds = %if.else.29
  %46 = load i8*, i8** %type_start, align 8, !dbg !1194, !tbaa !1009
  %cmp33 = icmp ne i8* %46, inttoptr (i64 -1 to i8*), !dbg !1196
  br i1 %cmp33, label %if.then.35, label %if.end.54, !dbg !1197

if.then.35:                                       ; preds = %land.lhs.true
  %47 = load i8*, i8** %type_start, align 8, !dbg !1198, !tbaa !1009
  %48 = load i8*, i8** %pos, align 8, !dbg !1199, !tbaa !1009
  %49 = load i8*, i8** %type_start, align 8, !dbg !1200, !tbaa !1009
  %sub.ptr.lhs.cast = ptrtoint i8* %48 to i64, !dbg !1201
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64, !dbg !1201
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1201
  %call36 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %47, i64 %sub.ptr.sub), !dbg !1202
  store %struct._object* %call36, %struct._object** %key, align 8, !dbg !1203, !tbaa !1009
  %50 = load %struct._object*, %struct._object** %key, align 8, !dbg !1204, !tbaa !1009
  %tobool37 = icmp ne %struct._object* %50, null, !dbg !1204
  br i1 %tobool37, label %if.end.39, label %if.then.38, !dbg !1206

if.then.38:                                       ; preds = %if.then.35
  br label %for.end, !dbg !1207

if.end.39:                                        ; preds = %if.then.35
  %51 = load %struct._object*, %struct._object** %key, align 8, !dbg !1209, !tbaa !1009
  %call40 = call %struct._object* @_pysqlite_get_converter(%struct._object* %51), !dbg !1210
  store %struct._object* %call40, %struct._object** %converter, align 8, !dbg !1211, !tbaa !1009
  br label %do.body.41, !dbg !1212

do.body.41:                                       ; preds = %if.end.39
  %52 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !1213
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !1213
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !488, metadata !1013), !dbg !1215
  %53 = load %struct._object*, %struct._object** %key, align 8, !dbg !1216, !tbaa !1009
  store %struct._object* %53, %struct._object** %_py_decref_tmp42, align 8, !dbg !1215, !tbaa !1009
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1217, !tbaa !1009
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0, !dbg !1219
  %55 = load i64, i64* %ob_refcnt43, align 8, !dbg !1220, !tbaa !1040
  %dec44 = add i64 %55, -1, !dbg !1220
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !1220, !tbaa !1040
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !1221
  br i1 %cmp45, label %if.then.47, label %if.else.48, !dbg !1222

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51, !dbg !1223

if.else.48:                                       ; preds = %do.body.41
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1225, !tbaa !1009
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1, !dbg !1227
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !1227, !tbaa !1050
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4, !dbg !1228
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !1228, !tbaa !1052
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !1229, !tbaa !1009
  call void %58(%struct._object* %59), !dbg !1230
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  %60 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !1231
  call void @llvm.lifetime.end(i64 8, i8* %60) #2, !dbg !1231
  br label %do.cond.52, !dbg !1233

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !1234

do.end.53:                                        ; preds = %do.cond.52
  br label %for.end, !dbg !1236

if.end.54:                                        ; preds = %land.lhs.true, %if.else.29
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.28
  br label %for.inc, !dbg !1237

for.inc:                                          ; preds = %if.end.55
  %61 = load i8*, i8** %pos, align 8, !dbg !1238, !tbaa !1009
  %incdec.ptr = getelementptr i8, i8* %61, i32 1, !dbg !1238
  store i8* %incdec.ptr, i8** %pos, align 8, !dbg !1238, !tbaa !1009
  br label %for.cond.21, !dbg !1239

for.end:                                          ; preds = %do.end.53, %if.then.38, %for.cond.21
  br label %if.end.56, !dbg !1240

if.end.56:                                        ; preds = %for.end, %if.then.15
  br label %if.end.57, !dbg !1241

if.end.57:                                        ; preds = %if.end.56, %for.body
  %62 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1242, !tbaa !1009
  %tobool58 = icmp ne %struct._object* %62, null, !dbg !1242
  br i1 %tobool58, label %if.end.108, label %land.lhs.true.59, !dbg !1243

land.lhs.true.59:                                 ; preds = %if.end.57
  %63 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1244, !tbaa !1009
  %connection60 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %63, i32 0, i32 1, !dbg !1246
  %64 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection60, align 8, !dbg !1246, !tbaa !1086
  %detect_types61 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %64, i32 0, i32 3, !dbg !1247
  %65 = load i32, i32* %detect_types61, align 4, !dbg !1247, !tbaa !1089
  %and62 = and i32 %65, 1, !dbg !1248
  %tobool63 = icmp ne i32 %and62, 0, !dbg !1248
  br i1 %tobool63, label %if.then.64, label %if.end.108, !dbg !1249

if.then.64:                                       ; preds = %land.lhs.true.59
  %66 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1250, !tbaa !1009
  %statement65 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %66, i32 0, i32 8, !dbg !1251
  %67 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement65, align 8, !dbg !1251, !tbaa !1150
  %st66 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %67, i32 0, i32 2, !dbg !1252
  %68 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st66, align 8, !dbg !1252, !tbaa !1152
  %69 = load i32, i32* %i, align 4, !dbg !1253, !tbaa !1143
  %call67 = call i8* @sqlite3_column_decltype(%struct.sqlite3_stmt* %68, i32 %69), !dbg !1254
  store i8* %call67, i8** %decltype, align 8, !dbg !1255, !tbaa !1009
  %70 = load i8*, i8** %decltype, align 8, !dbg !1256, !tbaa !1009
  %tobool68 = icmp ne i8* %70, null, !dbg !1256
  br i1 %tobool68, label %if.then.69, label %if.end.107, !dbg !1257

if.then.69:                                       ; preds = %if.then.64
  %71 = load i8*, i8** %decltype, align 8, !dbg !1258, !tbaa !1009
  store i8* %71, i8** %pos, align 8, !dbg !1260, !tbaa !1009
  br label %for.cond.70, !dbg !1261

for.cond.70:                                      ; preds = %for.inc.90, %if.then.69
  %72 = load i8*, i8** %pos, align 8, !dbg !1262, !tbaa !1009
  %73 = load i8, i8* %72, align 1, !dbg !1266, !tbaa !1178
  %conv71 = sext i8 %73 to i32, !dbg !1266
  %cmp72 = icmp eq i32 %conv71, 32, !dbg !1267
  br i1 %cmp72, label %if.then.81, label %lor.lhs.false, !dbg !1268

lor.lhs.false:                                    ; preds = %for.cond.70
  %74 = load i8*, i8** %pos, align 8, !dbg !1269, !tbaa !1009
  %75 = load i8, i8* %74, align 1, !dbg !1271, !tbaa !1178
  %conv74 = sext i8 %75 to i32, !dbg !1271
  %cmp75 = icmp eq i32 %conv74, 40, !dbg !1272
  br i1 %cmp75, label %if.then.81, label %lor.lhs.false.77, !dbg !1273

lor.lhs.false.77:                                 ; preds = %lor.lhs.false
  %76 = load i8*, i8** %pos, align 8, !dbg !1274, !tbaa !1009
  %77 = load i8, i8* %76, align 1, !dbg !1276, !tbaa !1178
  %conv78 = sext i8 %77 to i32, !dbg !1276
  %cmp79 = icmp eq i32 %conv78, 0, !dbg !1277
  br i1 %cmp79, label %if.then.81, label %if.end.89, !dbg !1278

if.then.81:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false, %for.cond.70
  %78 = load i8*, i8** %decltype, align 8, !dbg !1279, !tbaa !1009
  %79 = load i8*, i8** %pos, align 8, !dbg !1281, !tbaa !1009
  %80 = load i8*, i8** %decltype, align 8, !dbg !1282, !tbaa !1009
  %sub.ptr.lhs.cast82 = ptrtoint i8* %79 to i64, !dbg !1283
  %sub.ptr.rhs.cast83 = ptrtoint i8* %80 to i64, !dbg !1283
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83, !dbg !1283
  %call85 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %78, i64 %sub.ptr.sub84), !dbg !1284
  store %struct._object* %call85, %struct._object** %py_decltype, align 8, !dbg !1285, !tbaa !1009
  %81 = load %struct._object*, %struct._object** %py_decltype, align 8, !dbg !1286, !tbaa !1009
  %tobool86 = icmp ne %struct._object* %81, null, !dbg !1286
  br i1 %tobool86, label %if.end.88, label %if.then.87, !dbg !1288

if.then.87:                                       ; preds = %if.then.81
  store i32 -1, i32* %retval, !dbg !1289
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1289

if.end.88:                                        ; preds = %if.then.81
  br label %for.end.92, !dbg !1291

if.end.89:                                        ; preds = %lor.lhs.false.77
  br label %for.inc.90, !dbg !1292

for.inc.90:                                       ; preds = %if.end.89
  %82 = load i8*, i8** %pos, align 8, !dbg !1293, !tbaa !1009
  %incdec.ptr91 = getelementptr i8, i8* %82, i32 1, !dbg !1293
  store i8* %incdec.ptr91, i8** %pos, align 8, !dbg !1293, !tbaa !1009
  br label %for.cond.70, !dbg !1294

for.end.92:                                       ; preds = %if.end.88
  %83 = load %struct._object*, %struct._object** %py_decltype, align 8, !dbg !1295, !tbaa !1009
  %call93 = call %struct._object* @_pysqlite_get_converter(%struct._object* %83), !dbg !1296
  store %struct._object* %call93, %struct._object** %converter, align 8, !dbg !1297, !tbaa !1009
  br label %do.body.94, !dbg !1298

do.body.94:                                       ; preds = %for.end.92
  %84 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !1299
  call void @llvm.lifetime.start(i64 8, i8* %84) #2, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp95, metadata !503, metadata !1013), !dbg !1301
  %85 = load %struct._object*, %struct._object** %py_decltype, align 8, !dbg !1302, !tbaa !1009
  store %struct._object* %85, %struct._object** %_py_decref_tmp95, align 8, !dbg !1301, !tbaa !1009
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1303, !tbaa !1009
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !1305
  %87 = load i64, i64* %ob_refcnt96, align 8, !dbg !1306, !tbaa !1040
  %dec97 = add i64 %87, -1, !dbg !1306
  store i64 %dec97, i64* %ob_refcnt96, align 8, !dbg !1306, !tbaa !1040
  %cmp98 = icmp ne i64 %dec97, 0, !dbg !1307
  br i1 %cmp98, label %if.then.100, label %if.else.101, !dbg !1308

if.then.100:                                      ; preds = %do.body.94
  br label %if.end.104, !dbg !1309

if.else.101:                                      ; preds = %do.body.94
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1311, !tbaa !1009
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !1313
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !1313, !tbaa !1050
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !1314
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !1314, !tbaa !1052
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8, !dbg !1315, !tbaa !1009
  call void %90(%struct._object* %91), !dbg !1316
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %92 = bitcast %struct._object** %_py_decref_tmp95 to i8*, !dbg !1317
  call void @llvm.lifetime.end(i64 8, i8* %92) #2, !dbg !1317
  br label %do.cond.105, !dbg !1319

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !1320

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107, !dbg !1322

if.end.107:                                       ; preds = %do.end.106, %if.then.64
  br label %if.end.108, !dbg !1323

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true.59, %if.end.57
  %93 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1324, !tbaa !1009
  %tobool109 = icmp ne %struct._object* %93, null, !dbg !1324
  br i1 %tobool109, label %if.end.111, label %if.then.110, !dbg !1326

if.then.110:                                      ; preds = %if.end.108
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8, !dbg !1327, !tbaa !1009
  br label %if.end.111, !dbg !1329

if.end.111:                                       ; preds = %if.then.110, %if.end.108
  %94 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1330, !tbaa !1009
  %row_cast_map112 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %94, i32 0, i32 3, !dbg !1331
  %95 = load %struct._object*, %struct._object** %row_cast_map112, align 8, !dbg !1331, !tbaa !1101
  %96 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1332, !tbaa !1009
  %call113 = call i32 @PyList_Append(%struct._object* %95, %struct._object* %96), !dbg !1333
  %cmp114 = icmp ne i32 %call113, 0, !dbg !1334
  br i1 %cmp114, label %if.then.116, label %if.end.156, !dbg !1335

if.then.116:                                      ; preds = %if.end.111
  %97 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1336, !tbaa !1009
  %cmp117 = icmp ne %struct._object* %97, @_Py_NoneStruct, !dbg !1337
  br i1 %cmp117, label %if.then.119, label %if.end.133, !dbg !1338

if.then.119:                                      ; preds = %if.then.116
  br label %do.body.120, !dbg !1339

do.body.120:                                      ; preds = %if.then.119
  %98 = bitcast %struct._object** %_py_decref_tmp121 to i8*, !dbg !1340
  call void @llvm.lifetime.start(i64 8, i8* %98) #2, !dbg !1340
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp121, metadata !509, metadata !1013), !dbg !1342
  %99 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1343, !tbaa !1009
  store %struct._object* %99, %struct._object** %_py_decref_tmp121, align 8, !dbg !1342, !tbaa !1009
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8, !dbg !1344, !tbaa !1009
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0, !dbg !1346
  %101 = load i64, i64* %ob_refcnt122, align 8, !dbg !1347, !tbaa !1040
  %dec123 = add i64 %101, -1, !dbg !1347
  store i64 %dec123, i64* %ob_refcnt122, align 8, !dbg !1347, !tbaa !1040
  %cmp124 = icmp ne i64 %dec123, 0, !dbg !1348
  br i1 %cmp124, label %if.then.126, label %if.else.127, !dbg !1349

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130, !dbg !1350

if.else.127:                                      ; preds = %do.body.120
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8, !dbg !1352, !tbaa !1009
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1, !dbg !1354
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8, !dbg !1354, !tbaa !1050
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4, !dbg !1355
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8, !dbg !1355, !tbaa !1052
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8, !dbg !1356, !tbaa !1009
  call void %104(%struct._object* %105), !dbg !1357
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  %106 = bitcast %struct._object** %_py_decref_tmp121 to i8*, !dbg !1358
  call void @llvm.lifetime.end(i64 8, i8* %106) #2, !dbg !1358
  br label %do.cond.131, !dbg !1360

do.cond.131:                                      ; preds = %if.end.130
  br label %do.end.132, !dbg !1361

do.end.132:                                       ; preds = %do.cond.131
  br label %if.end.133, !dbg !1363

if.end.133:                                       ; preds = %do.end.132, %if.then.116
  br label %do.body.134, !dbg !1364

do.body.134:                                      ; preds = %if.end.133
  %107 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 8, i8* %107) #2, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !515, metadata !1013), !dbg !1367
  %108 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1368, !tbaa !1009
  %row_cast_map135 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %108, i32 0, i32 3, !dbg !1369
  %109 = load %struct._object*, %struct._object** %row_cast_map135, align 8, !dbg !1369, !tbaa !1101
  store %struct._object* %109, %struct._object** %_py_tmp, align 8, !dbg !1367, !tbaa !1009
  %110 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1370, !tbaa !1009
  %cmp136 = icmp ne %struct._object* %110, null, !dbg !1371
  br i1 %cmp136, label %if.then.138, label %if.end.153, !dbg !1372

if.then.138:                                      ; preds = %do.body.134
  %111 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1373, !tbaa !1009
  %row_cast_map139 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %111, i32 0, i32 3, !dbg !1375
  store %struct._object* null, %struct._object** %row_cast_map139, align 8, !dbg !1376, !tbaa !1101
  br label %do.body.140, !dbg !1377

do.body.140:                                      ; preds = %if.then.138
  %112 = bitcast %struct._object** %_py_decref_tmp141 to i8*, !dbg !1378
  call void @llvm.lifetime.start(i64 8, i8* %112) #2, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp141, metadata !517, metadata !1013), !dbg !1380
  %113 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1381, !tbaa !1009
  store %struct._object* %113, %struct._object** %_py_decref_tmp141, align 8, !dbg !1380, !tbaa !1009
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1382, !tbaa !1009
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0, !dbg !1384
  %115 = load i64, i64* %ob_refcnt142, align 8, !dbg !1385, !tbaa !1040
  %dec143 = add i64 %115, -1, !dbg !1385
  store i64 %dec143, i64* %ob_refcnt142, align 8, !dbg !1385, !tbaa !1040
  %cmp144 = icmp ne i64 %dec143, 0, !dbg !1386
  br i1 %cmp144, label %if.then.146, label %if.else.147, !dbg !1387

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150, !dbg !1388

if.else.147:                                      ; preds = %do.body.140
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1390, !tbaa !1009
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1, !dbg !1392
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !1392, !tbaa !1050
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4, !dbg !1393
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8, !dbg !1393, !tbaa !1052
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8, !dbg !1394, !tbaa !1009
  call void %118(%struct._object* %119), !dbg !1395
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  %120 = bitcast %struct._object** %_py_decref_tmp141 to i8*, !dbg !1396
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !1396
  br label %do.cond.151, !dbg !1398

do.cond.151:                                      ; preds = %if.end.150
  br label %do.end.152, !dbg !1399

do.end.152:                                       ; preds = %do.cond.151
  br label %if.end.153, !dbg !1401

if.end.153:                                       ; preds = %do.end.152, %do.body.134
  %121 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1403
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !1403
  br label %do.cond.154, !dbg !1406

do.cond.154:                                      ; preds = %if.end.153
  br label %do.end.155, !dbg !1407

do.end.155:                                       ; preds = %do.cond.154
  store i32 -1, i32* %retval, !dbg !1409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1409

if.end.156:                                       ; preds = %if.end.111
  br label %for.inc.157, !dbg !1410

for.inc.157:                                      ; preds = %if.end.156
  %122 = load i32, i32* %i, align 4, !dbg !1411, !tbaa !1143
  %inc = add i32 %122, 1, !dbg !1411
  store i32 %inc, i32* %i, align 4, !dbg !1411, !tbaa !1143
  br label %for.cond, !dbg !1412

for.end.158:                                      ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !1413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1413

cleanup:                                          ; preds = %for.end.158, %do.end.155, %if.then.87, %if.then
  %123 = bitcast %struct._object** %key to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %123) #2, !dbg !1414
  %124 = bitcast %struct._object** %converter to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %124) #2, !dbg !1414
  %125 = bitcast %struct._object** %py_decltype to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %125) #2, !dbg !1414
  %126 = bitcast i8** %decltype to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !1414
  %127 = bitcast i8** %colname to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %127) #2, !dbg !1414
  %128 = bitcast i8** %pos to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %128) #2, !dbg !1414
  %129 = bitcast i8** %type_start to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %129) #2, !dbg !1414
  %130 = bitcast i32* %i to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 4, i8* %130) #2, !dbg !1414
  %131 = load i32, i32* %retval, !dbg !1414
  ret i32 %131, !dbg !1414
}

declare %struct._object* @PyList_New(i64) #3

declare i32 @sqlite3_column_count(%struct.sqlite3_stmt*) #3

declare i8* @sqlite3_column_name(%struct.sqlite3_stmt*, i32) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare i8* @sqlite3_column_decltype(%struct.sqlite3_stmt*, i32) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_build_column_name(i8* %colname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %colname.addr = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %colname, i8** %colname.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata i8** %colname.addr, metadata !525, metadata !1013), !dbg !1415
  %0 = bitcast i8** %pos to i8*, !dbg !1416
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1416
  call void @llvm.dbg.declare(metadata i8** %pos, metadata !526, metadata !1013), !dbg !1417
  %1 = load i8*, i8** %colname.addr, align 8, !dbg !1418, !tbaa !1009
  %tobool = icmp ne i8* %1, null, !dbg !1418
  br i1 %tobool, label %if.end, label %if.then, !dbg !1420

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1421, !tbaa !1040
  %inc = add i64 %2, 1, !dbg !1421
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1421, !tbaa !1040
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1423

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %colname.addr, align 8, !dbg !1424, !tbaa !1009
  store i8* %3, i8** %pos, align 8, !dbg !1426, !tbaa !1009
  br label %for.cond, !dbg !1427

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8*, i8** %pos, align 8, !dbg !1428, !tbaa !1009
  %5 = load i8, i8* %4, align 1, !dbg !1432, !tbaa !1178
  %conv = sext i8 %5 to i32, !dbg !1432
  %cmp = icmp eq i32 %conv, 0, !dbg !1433
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1434

lor.lhs.false:                                    ; preds = %for.cond
  %6 = load i8*, i8** %pos, align 8, !dbg !1435, !tbaa !1009
  %7 = load i8, i8* %6, align 1, !dbg !1437, !tbaa !1178
  %conv2 = sext i8 %7 to i32, !dbg !1437
  %cmp3 = icmp eq i32 %conv2, 91, !dbg !1438
  br i1 %cmp3, label %if.then.5, label %if.end.17, !dbg !1439

if.then.5:                                        ; preds = %lor.lhs.false, %for.cond
  %8 = load i8*, i8** %pos, align 8, !dbg !1440, !tbaa !1009
  %9 = load i8, i8* %8, align 1, !dbg !1443, !tbaa !1178
  %conv6 = sext i8 %9 to i32, !dbg !1443
  %cmp7 = icmp eq i32 %conv6, 91, !dbg !1444
  br i1 %cmp7, label %land.lhs.true, label %if.end.16, !dbg !1445

land.lhs.true:                                    ; preds = %if.then.5
  %10 = load i8*, i8** %pos, align 8, !dbg !1446, !tbaa !1009
  %11 = load i8*, i8** %colname.addr, align 8, !dbg !1448, !tbaa !1009
  %cmp9 = icmp ugt i8* %10, %11, !dbg !1449
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.16, !dbg !1450

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %12 = load i8*, i8** %pos, align 8, !dbg !1451, !tbaa !1009
  %add.ptr = getelementptr i8, i8* %12, i64 -1, !dbg !1453
  %13 = load i8, i8* %add.ptr, align 1, !dbg !1454, !tbaa !1178
  %conv12 = sext i8 %13 to i32, !dbg !1454
  %cmp13 = icmp eq i32 %conv12, 32, !dbg !1455
  br i1 %cmp13, label %if.then.15, label %if.end.16, !dbg !1456

if.then.15:                                       ; preds = %land.lhs.true.11
  %14 = load i8*, i8** %pos, align 8, !dbg !1457, !tbaa !1009
  %incdec.ptr = getelementptr i8, i8* %14, i32 -1, !dbg !1457
  store i8* %incdec.ptr, i8** %pos, align 8, !dbg !1457, !tbaa !1009
  br label %if.end.16, !dbg !1459

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true, %if.then.5
  %15 = load i8*, i8** %colname.addr, align 8, !dbg !1460, !tbaa !1009
  %16 = load i8*, i8** %pos, align 8, !dbg !1461, !tbaa !1009
  %17 = load i8*, i8** %colname.addr, align 8, !dbg !1462, !tbaa !1009
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !1463
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64, !dbg !1463
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1463
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* %15, i64 %sub.ptr.sub), !dbg !1464
  store %struct._object* %call, %struct._object** %retval, !dbg !1465
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1465

if.end.17:                                        ; preds = %lor.lhs.false
  br label %for.inc, !dbg !1466

for.inc:                                          ; preds = %if.end.17
  %18 = load i8*, i8** %pos, align 8, !dbg !1467, !tbaa !1009
  %incdec.ptr18 = getelementptr i8, i8* %18, i32 1, !dbg !1467
  store i8* %incdec.ptr18, i8** %pos, align 8, !dbg !1467, !tbaa !1009
  br label %for.cond, !dbg !1468

cleanup:                                          ; preds = %if.end.16, %if.then
  %19 = bitcast i8** %pos to i8*, !dbg !1469
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !1469
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1469
  ret %struct._object* %20, !dbg !1469
}

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_fetch_one_row(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %i = alloca i32, align 4
  %numcols = alloca i32, align 4
  %row = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %coltype = alloca i32, align 4
  %converter = alloca %struct._object*, align 8
  %converted = alloca %struct._object*, align 8
  %nbytes = alloca i64, align 8
  %buffer = alloca %struct._object*, align 8
  %val_str = alloca i8*, align 8
  %buf = alloca [200 x i8], align 16
  %colname = alloca i8*, align 8
  %buf_bytes = alloca %struct._object*, align 8
  %error_obj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save43 = alloca %struct._ts*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !531, metadata !1013), !dbg !1470
  %0 = bitcast i32* %i to i8*, !dbg !1471
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1471
  call void @llvm.dbg.declare(metadata i32* %i, metadata !532, metadata !1013), !dbg !1472
  %1 = bitcast i32* %numcols to i8*, !dbg !1471
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1471
  call void @llvm.dbg.declare(metadata i32* %numcols, metadata !533, metadata !1013), !dbg !1473
  %2 = bitcast %struct._object** %row to i8*, !dbg !1474
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1474
  call void @llvm.dbg.declare(metadata %struct._object** %row, metadata !534, metadata !1013), !dbg !1475
  %3 = bitcast %struct._object** %item to i8*, !dbg !1476
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1476
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !535, metadata !1013), !dbg !1477
  store %struct._object* null, %struct._object** %item, align 8, !dbg !1477, !tbaa !1009
  %4 = bitcast i32* %coltype to i8*, !dbg !1478
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1478
  call void @llvm.dbg.declare(metadata i32* %coltype, metadata !536, metadata !1013), !dbg !1479
  %5 = bitcast %struct._object** %converter to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._object** %converter, metadata !537, metadata !1013), !dbg !1481
  %6 = bitcast %struct._object** %converted to i8*, !dbg !1482
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1482
  call void @llvm.dbg.declare(metadata %struct._object** %converted, metadata !538, metadata !1013), !dbg !1483
  %7 = bitcast i64* %nbytes to i8*, !dbg !1484
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1484
  call void @llvm.dbg.declare(metadata i64* %nbytes, metadata !539, metadata !1013), !dbg !1485
  %8 = bitcast %struct._object** %buffer to i8*, !dbg !1486
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1486
  call void @llvm.dbg.declare(metadata %struct._object** %buffer, metadata !540, metadata !1013), !dbg !1487
  %9 = bitcast i8** %val_str to i8*, !dbg !1488
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1488
  call void @llvm.dbg.declare(metadata i8** %val_str, metadata !541, metadata !1013), !dbg !1489
  %10 = bitcast [200 x i8]* %buf to i8*, !dbg !1490
  call void @llvm.lifetime.start(i64 200, i8* %10) #2, !dbg !1490
  call void @llvm.dbg.declare(metadata [200 x i8]* %buf, metadata !542, metadata !1013), !dbg !1491
  %11 = bitcast i8** %colname to i8*, !dbg !1492
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !1492
  call void @llvm.dbg.declare(metadata i8** %colname, metadata !546, metadata !1013), !dbg !1493
  %12 = bitcast %struct._object** %buf_bytes to i8*, !dbg !1494
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1494
  call void @llvm.dbg.declare(metadata %struct._object** %buf_bytes, metadata !547, metadata !1013), !dbg !1495
  %13 = bitcast %struct._object** %error_obj to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %error_obj, metadata !548, metadata !1013), !dbg !1497
  %14 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1498, !tbaa !1009
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %14, i32 0, i32 10, !dbg !1500
  %15 = load i32, i32* %reset, align 4, !dbg !1500, !tbaa !1501
  %tobool = icmp ne i32 %15, 0, !dbg !1498
  br i1 %tobool, label %if.then, label %if.end, !dbg !1502

if.then:                                          ; preds = %entry
  %16 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !1503, !tbaa !1009
  %17 = load i8*, i8** @errmsg_fetch_across_rollback, align 8, !dbg !1505, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %16, i8* %17), !dbg !1506
  store %struct._object* null, %struct._object** %retval, !dbg !1507
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1507

if.end:                                           ; preds = %entry
  %18 = bitcast %struct._ts** %_save to i8*, !dbg !1508
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !1508
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !549, metadata !1013), !dbg !1509
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !1510
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !1511, !tbaa !1009
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1512, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 8, !dbg !1513
  %20 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !1513, !tbaa !1150
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %20, i32 0, i32 2, !dbg !1514
  %21 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !1514, !tbaa !1152
  %call1 = call i32 @sqlite3_data_count(%struct.sqlite3_stmt* %21), !dbg !1515
  store i32 %call1, i32* %numcols, align 4, !dbg !1516, !tbaa !1143
  %22 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1517, !tbaa !1009
  call void @PyEval_RestoreThread(%struct._ts* %22), !dbg !1518
  %23 = bitcast %struct._ts** %_save to i8*, !dbg !1519
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !1519
  %24 = load i32, i32* %numcols, align 4, !dbg !1520, !tbaa !1143
  %conv = sext i32 %24 to i64, !dbg !1520
  %call2 = call %struct._object* @PyTuple_New(i64 %conv), !dbg !1521
  store %struct._object* %call2, %struct._object** %row, align 8, !dbg !1522, !tbaa !1009
  %25 = load %struct._object*, %struct._object** %row, align 8, !dbg !1523, !tbaa !1009
  %tobool3 = icmp ne %struct._object* %25, null, !dbg !1523
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !1525

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1526

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !1528, !tbaa !1143
  br label %for.cond, !dbg !1529

for.cond:                                         ; preds = %for.inc, %if.end.5
  %26 = load i32, i32* %i, align 4, !dbg !1530, !tbaa !1143
  %27 = load i32, i32* %numcols, align 4, !dbg !1533, !tbaa !1143
  %cmp = icmp slt i32 %26, %27, !dbg !1534
  br i1 %cmp, label %for.body, label %for.end, !dbg !1535

for.body:                                         ; preds = %for.cond
  %28 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1536, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %28, i32 0, i32 1, !dbg !1538
  %29 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !1538, !tbaa !1086
  %detect_types = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %29, i32 0, i32 3, !dbg !1539
  %30 = load i32, i32* %detect_types, align 4, !dbg !1539, !tbaa !1089
  %tobool7 = icmp ne i32 %30, 0, !dbg !1536
  br i1 %tobool7, label %if.then.8, label %if.else, !dbg !1540

if.then.8:                                        ; preds = %for.body
  %31 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1541, !tbaa !1009
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %31, i32 0, i32 3, !dbg !1543
  %32 = load %struct._object*, %struct._object** %row_cast_map, align 8, !dbg !1543, !tbaa !1101
  %33 = load i32, i32* %i, align 4, !dbg !1544, !tbaa !1143
  %conv9 = sext i32 %33 to i64, !dbg !1544
  %call10 = call %struct._object* @PyList_GetItem(%struct._object* %32, i64 %conv9), !dbg !1545
  store %struct._object* %call10, %struct._object** %converter, align 8, !dbg !1546, !tbaa !1009
  %34 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1547, !tbaa !1009
  %tobool11 = icmp ne %struct._object* %34, null, !dbg !1547
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !1549

if.then.12:                                       ; preds = %if.then.8
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8, !dbg !1550, !tbaa !1009
  br label %if.end.13, !dbg !1552

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14, !dbg !1553

if.else:                                          ; preds = %for.body
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8, !dbg !1554, !tbaa !1009
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.13
  %35 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1556, !tbaa !1009
  %cmp15 = icmp ne %struct._object* %35, @_Py_NoneStruct, !dbg !1557
  br i1 %cmp15, label %if.then.17, label %if.else.42, !dbg !1558

if.then.17:                                       ; preds = %if.end.14
  %36 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1559, !tbaa !1009
  %statement18 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %36, i32 0, i32 8, !dbg !1560
  %37 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement18, align 8, !dbg !1560, !tbaa !1150
  %st19 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %37, i32 0, i32 2, !dbg !1561
  %38 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st19, align 8, !dbg !1561, !tbaa !1152
  %39 = load i32, i32* %i, align 4, !dbg !1562, !tbaa !1143
  %call20 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %38, i32 %39), !dbg !1563
  %conv21 = sext i32 %call20 to i64, !dbg !1563
  store i64 %conv21, i64* %nbytes, align 8, !dbg !1564, !tbaa !1565
  %40 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1566, !tbaa !1009
  %statement22 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %40, i32 0, i32 8, !dbg !1567
  %41 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement22, align 8, !dbg !1567, !tbaa !1150
  %st23 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %41, i32 0, i32 2, !dbg !1568
  %42 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st23, align 8, !dbg !1568, !tbaa !1152
  %43 = load i32, i32* %i, align 4, !dbg !1569, !tbaa !1143
  %call24 = call i8* @sqlite3_column_blob(%struct.sqlite3_stmt* %42, i32 %43), !dbg !1570
  store i8* %call24, i8** %val_str, align 8, !dbg !1571, !tbaa !1009
  %44 = load i8*, i8** %val_str, align 8, !dbg !1572, !tbaa !1009
  %tobool25 = icmp ne i8* %44, null, !dbg !1572
  br i1 %tobool25, label %if.else.27, label %if.then.26, !dbg !1573

if.then.26:                                       ; preds = %if.then.17
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1574, !tbaa !1040
  %inc = add i64 %45, 1, !dbg !1574
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1574, !tbaa !1040
  store %struct._object* @_Py_NoneStruct, %struct._object** %converted, align 8, !dbg !1576, !tbaa !1009
  br label %if.end.41, !dbg !1577

if.else.27:                                       ; preds = %if.then.17
  %46 = load i8*, i8** %val_str, align 8, !dbg !1578, !tbaa !1009
  %47 = load i64, i64* %nbytes, align 8, !dbg !1579, !tbaa !1565
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* %46, i64 %47), !dbg !1580
  store %struct._object* %call28, %struct._object** %item, align 8, !dbg !1581, !tbaa !1009
  %48 = load %struct._object*, %struct._object** %item, align 8, !dbg !1582, !tbaa !1009
  %tobool29 = icmp ne %struct._object* %48, null, !dbg !1582
  br i1 %tobool29, label %if.end.31, label %if.then.30, !dbg !1584

if.then.30:                                       ; preds = %if.else.27
  store %struct._object* null, %struct._object** %retval, !dbg !1585
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1585

if.end.31:                                        ; preds = %if.else.27
  %49 = load %struct._object*, %struct._object** %converter, align 8, !dbg !1587, !tbaa !1009
  %50 = load %struct._object*, %struct._object** %item, align 8, !dbg !1588, !tbaa !1009
  %call32 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._object* %50), !dbg !1589
  store %struct._object* %call32, %struct._object** %converted, align 8, !dbg !1590, !tbaa !1009
  br label %do.body, !dbg !1591

do.body:                                          ; preds = %if.end.31
  %51 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1592
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !1592
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !609, metadata !1013), !dbg !1594
  %52 = load %struct._object*, %struct._object** %item, align 8, !dbg !1595, !tbaa !1009
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8, !dbg !1594, !tbaa !1009
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1596, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !1598
  %54 = load i64, i64* %ob_refcnt, align 8, !dbg !1599, !tbaa !1040
  %dec = add i64 %54, -1, !dbg !1599
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1599, !tbaa !1040
  %cmp33 = icmp ne i64 %dec, 0, !dbg !1600
  br i1 %cmp33, label %if.then.35, label %if.else.36, !dbg !1601

if.then.35:                                       ; preds = %do.body
  br label %if.end.37, !dbg !1602

if.else.36:                                       ; preds = %do.body
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1604, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !1606
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1606, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !1607
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1607, !tbaa !1052
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1608, !tbaa !1009
  call void %57(%struct._object* %58), !dbg !1609
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  %59 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1610
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !1610
  br label %do.cond, !dbg !1612

do.cond:                                          ; preds = %if.end.37
  br label %do.end, !dbg !1613

do.end:                                           ; preds = %do.cond
  %60 = load %struct._object*, %struct._object** %converted, align 8, !dbg !1615, !tbaa !1009
  %tobool38 = icmp ne %struct._object* %60, null, !dbg !1615
  br i1 %tobool38, label %if.end.40, label %if.then.39, !dbg !1617

if.then.39:                                       ; preds = %do.end
  br label %for.end, !dbg !1618

if.end.40:                                        ; preds = %do.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.26
  br label %if.end.170, !dbg !1620

if.else.42:                                       ; preds = %if.end.14
  %61 = bitcast %struct._ts** %_save43 to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._ts** %_save43, metadata !618, metadata !1013), !dbg !1622
  %call44 = call %struct._ts* @PyEval_SaveThread(), !dbg !1623
  store %struct._ts* %call44, %struct._ts** %_save43, align 8, !dbg !1624, !tbaa !1009
  %62 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1625, !tbaa !1009
  %statement45 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %62, i32 0, i32 8, !dbg !1626
  %63 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement45, align 8, !dbg !1626, !tbaa !1150
  %st46 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %63, i32 0, i32 2, !dbg !1627
  %64 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st46, align 8, !dbg !1627, !tbaa !1152
  %65 = load i32, i32* %i, align 4, !dbg !1628, !tbaa !1143
  %call47 = call i32 @sqlite3_column_type(%struct.sqlite3_stmt* %64, i32 %65), !dbg !1629
  store i32 %call47, i32* %coltype, align 4, !dbg !1630, !tbaa !1143
  %66 = load %struct._ts*, %struct._ts** %_save43, align 8, !dbg !1631, !tbaa !1009
  call void @PyEval_RestoreThread(%struct._ts* %66), !dbg !1632
  %67 = bitcast %struct._ts** %_save43 to i8*, !dbg !1633
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !1633
  %68 = load i32, i32* %coltype, align 4, !dbg !1634, !tbaa !1143
  %cmp48 = icmp eq i32 %68, 5, !dbg !1635
  br i1 %cmp48, label %if.then.50, label %if.else.52, !dbg !1636

if.then.50:                                       ; preds = %if.else.42
  %69 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1637, !tbaa !1040
  %inc51 = add i64 %69, 1, !dbg !1637
  store i64 %inc51, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1637, !tbaa !1040
  store %struct._object* @_Py_NoneStruct, %struct._object** %converted, align 8, !dbg !1639, !tbaa !1009
  br label %if.end.169, !dbg !1640

if.else.52:                                       ; preds = %if.else.42
  %70 = load i32, i32* %coltype, align 4, !dbg !1641, !tbaa !1143
  %cmp53 = icmp eq i32 %70, 1, !dbg !1642
  br i1 %cmp53, label %if.then.55, label %if.else.60, !dbg !1643

if.then.55:                                       ; preds = %if.else.52
  %71 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1644, !tbaa !1009
  %statement56 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %71, i32 0, i32 8, !dbg !1646
  %72 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement56, align 8, !dbg !1646, !tbaa !1150
  %st57 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %72, i32 0, i32 2, !dbg !1647
  %73 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st57, align 8, !dbg !1647, !tbaa !1152
  %74 = load i32, i32* %i, align 4, !dbg !1648, !tbaa !1143
  %call58 = call i64 @sqlite3_column_int64(%struct.sqlite3_stmt* %73, i32 %74), !dbg !1649
  %call59 = call %struct._object* @_pysqlite_long_from_int64(i64 %call58), !dbg !1650
  store %struct._object* %call59, %struct._object** %converted, align 8, !dbg !1651, !tbaa !1009
  br label %if.end.168, !dbg !1652

if.else.60:                                       ; preds = %if.else.52
  %75 = load i32, i32* %coltype, align 4, !dbg !1653, !tbaa !1143
  %cmp61 = icmp eq i32 %75, 2, !dbg !1654
  br i1 %cmp61, label %if.then.63, label %if.else.68, !dbg !1655

if.then.63:                                       ; preds = %if.else.60
  %76 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1656, !tbaa !1009
  %statement64 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %76, i32 0, i32 8, !dbg !1658
  %77 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement64, align 8, !dbg !1658, !tbaa !1150
  %st65 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %77, i32 0, i32 2, !dbg !1659
  %78 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st65, align 8, !dbg !1659, !tbaa !1152
  %79 = load i32, i32* %i, align 4, !dbg !1660, !tbaa !1143
  %call66 = call double @sqlite3_column_double(%struct.sqlite3_stmt* %78, i32 %79), !dbg !1661
  %call67 = call %struct._object* @PyFloat_FromDouble(double %call66), !dbg !1662
  store %struct._object* %call67, %struct._object** %converted, align 8, !dbg !1663, !tbaa !1009
  br label %if.end.167, !dbg !1664

if.else.68:                                       ; preds = %if.else.60
  %80 = load i32, i32* %coltype, align 4, !dbg !1665, !tbaa !1143
  %cmp69 = icmp eq i32 %80, 3, !dbg !1666
  br i1 %cmp69, label %if.then.71, label %if.else.154, !dbg !1667

if.then.71:                                       ; preds = %if.else.68
  %81 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1668, !tbaa !1009
  %statement72 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %81, i32 0, i32 8, !dbg !1669
  %82 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement72, align 8, !dbg !1669, !tbaa !1150
  %st73 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %82, i32 0, i32 2, !dbg !1670
  %83 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st73, align 8, !dbg !1670, !tbaa !1152
  %84 = load i32, i32* %i, align 4, !dbg !1671, !tbaa !1143
  %call74 = call i8* @sqlite3_column_text(%struct.sqlite3_stmt* %83, i32 %84), !dbg !1672
  store i8* %call74, i8** %val_str, align 8, !dbg !1673, !tbaa !1009
  %85 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1674, !tbaa !1009
  %statement75 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %85, i32 0, i32 8, !dbg !1675
  %86 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement75, align 8, !dbg !1675, !tbaa !1150
  %st76 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %86, i32 0, i32 2, !dbg !1676
  %87 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st76, align 8, !dbg !1676, !tbaa !1152
  %88 = load i32, i32* %i, align 4, !dbg !1677, !tbaa !1143
  %call77 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %87, i32 %88), !dbg !1678
  %conv78 = sext i32 %call77 to i64, !dbg !1678
  store i64 %conv78, i64* %nbytes, align 8, !dbg !1679, !tbaa !1565
  %89 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1680, !tbaa !1009
  %connection79 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %89, i32 0, i32 1, !dbg !1681
  %90 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection79, align 8, !dbg !1681, !tbaa !1086
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %90, i32 0, i32 17, !dbg !1682
  %91 = load %struct._object*, %struct._object** %text_factory, align 8, !dbg !1682, !tbaa !1683
  %cmp80 = icmp eq %struct._object* %91, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0), !dbg !1684
  br i1 %cmp80, label %if.then.82, label %if.else.133, !dbg !1685

if.then.82:                                       ; preds = %if.then.71
  %92 = load i8*, i8** %val_str, align 8, !dbg !1686, !tbaa !1009
  %93 = load i64, i64* %nbytes, align 8, !dbg !1687, !tbaa !1565
  %call83 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %92, i64 %93), !dbg !1688
  store %struct._object* %call83, %struct._object** %converted, align 8, !dbg !1689, !tbaa !1009
  %94 = load %struct._object*, %struct._object** %converted, align 8, !dbg !1690, !tbaa !1009
  %tobool84 = icmp ne %struct._object* %94, null, !dbg !1690
  br i1 %tobool84, label %if.end.132, label %if.then.85, !dbg !1691

if.then.85:                                       ; preds = %if.then.82
  %95 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1692, !tbaa !1009
  %statement86 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %95, i32 0, i32 8, !dbg !1693
  %96 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement86, align 8, !dbg !1693, !tbaa !1150
  %st87 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %96, i32 0, i32 2, !dbg !1694
  %97 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st87, align 8, !dbg !1694, !tbaa !1152
  %98 = load i32, i32* %i, align 4, !dbg !1695, !tbaa !1143
  %call88 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %97, i32 %98), !dbg !1696
  store i8* %call88, i8** %colname, align 8, !dbg !1697, !tbaa !1009
  %99 = load i8*, i8** %colname, align 8, !dbg !1698, !tbaa !1009
  %tobool89 = icmp ne i8* %99, null, !dbg !1698
  br i1 %tobool89, label %if.end.91, label %if.then.90, !dbg !1700

if.then.90:                                       ; preds = %if.then.85
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8** %colname, align 8, !dbg !1701, !tbaa !1009
  br label %if.end.91, !dbg !1703

if.end.91:                                        ; preds = %if.then.90, %if.then.85
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0, !dbg !1704
  %100 = load i8*, i8** %colname, align 8, !dbg !1705, !tbaa !1009
  %101 = load i8*, i8** %val_str, align 8, !dbg !1706, !tbaa !1009
  %call92 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 199, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %100, i8* %101), !dbg !1707
  %arraydecay93 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0, !dbg !1708
  %arraydecay94 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0, !dbg !1709
  %call95 = call i64 @strlen(i8* %arraydecay94) #6, !dbg !1710
  %call96 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %arraydecay93, i64 %call95), !dbg !1711
  store %struct._object* %call96, %struct._object** %buf_bytes, align 8, !dbg !1712, !tbaa !1009
  %102 = load %struct._object*, %struct._object** %buf_bytes, align 8, !dbg !1713, !tbaa !1009
  %tobool97 = icmp ne %struct._object* %102, null, !dbg !1713
  br i1 %tobool97, label %if.else.99, label %if.then.98, !dbg !1714

if.then.98:                                       ; preds = %if.end.91
  %103 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !1715, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)), !dbg !1717
  br label %if.end.131, !dbg !1718

if.else.99:                                       ; preds = %if.end.91
  %104 = load %struct._object*, %struct._object** %buf_bytes, align 8, !dbg !1719, !tbaa !1009
  %call100 = call %struct._object* @PyUnicode_FromEncodedObject(%struct._object* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)), !dbg !1720
  store %struct._object* %call100, %struct._object** %error_obj, align 8, !dbg !1721, !tbaa !1009
  %105 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !1722, !tbaa !1009
  %tobool101 = icmp ne %struct._object* %105, null, !dbg !1722
  br i1 %tobool101, label %if.else.103, label %if.then.102, !dbg !1723

if.then.102:                                      ; preds = %if.else.99
  %106 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !1724, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0)), !dbg !1726
  br label %if.end.117, !dbg !1727

if.else.103:                                      ; preds = %if.else.99
  %107 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !1728, !tbaa !1009
  %108 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !1729, !tbaa !1009
  call void @PyErr_SetObject(%struct._object* %107, %struct._object* %108), !dbg !1730
  br label %do.body.104, !dbg !1731

do.body.104:                                      ; preds = %if.else.103
  %109 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !1732
  call void @llvm.lifetime.start(i64 8, i8* %109) #2, !dbg !1732
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp105, metadata !621, metadata !1013), !dbg !1734
  %110 = load %struct._object*, %struct._object** %error_obj, align 8, !dbg !1735, !tbaa !1009
  store %struct._object* %110, %struct._object** %_py_decref_tmp105, align 8, !dbg !1734, !tbaa !1009
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1736, !tbaa !1009
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0, !dbg !1738
  %112 = load i64, i64* %ob_refcnt106, align 8, !dbg !1739, !tbaa !1040
  %dec107 = add i64 %112, -1, !dbg !1739
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !1739, !tbaa !1040
  %cmp108 = icmp ne i64 %dec107, 0, !dbg !1740
  br i1 %cmp108, label %if.then.110, label %if.else.111, !dbg !1741

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114, !dbg !1742

if.else.111:                                      ; preds = %do.body.104
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1744, !tbaa !1009
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1, !dbg !1746
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8, !dbg !1746, !tbaa !1050
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4, !dbg !1747
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8, !dbg !1747, !tbaa !1052
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !1748, !tbaa !1009
  call void %115(%struct._object* %116), !dbg !1749
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  %117 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !1750
  call void @llvm.lifetime.end(i64 8, i8* %117) #2, !dbg !1750
  br label %do.cond.115, !dbg !1752

do.cond.115:                                      ; preds = %if.end.114
  br label %do.end.116, !dbg !1753

do.end.116:                                       ; preds = %do.cond.115
  br label %if.end.117

if.end.117:                                       ; preds = %do.end.116, %if.then.102
  br label %do.body.118, !dbg !1755

do.body.118:                                      ; preds = %if.end.117
  %118 = bitcast %struct._object** %_py_decref_tmp119 to i8*, !dbg !1756
  call void @llvm.lifetime.start(i64 8, i8* %118) #2, !dbg !1756
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp119, metadata !636, metadata !1013), !dbg !1758
  %119 = load %struct._object*, %struct._object** %buf_bytes, align 8, !dbg !1759, !tbaa !1009
  store %struct._object* %119, %struct._object** %_py_decref_tmp119, align 8, !dbg !1758, !tbaa !1009
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !1760, !tbaa !1009
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0, !dbg !1762
  %121 = load i64, i64* %ob_refcnt120, align 8, !dbg !1763, !tbaa !1040
  %dec121 = add i64 %121, -1, !dbg !1763
  store i64 %dec121, i64* %ob_refcnt120, align 8, !dbg !1763, !tbaa !1040
  %cmp122 = icmp ne i64 %dec121, 0, !dbg !1764
  br i1 %cmp122, label %if.then.124, label %if.else.125, !dbg !1765

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128, !dbg !1766

if.else.125:                                      ; preds = %do.body.118
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !1768, !tbaa !1009
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1, !dbg !1770
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8, !dbg !1770, !tbaa !1050
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4, !dbg !1771
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8, !dbg !1771, !tbaa !1052
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8, !dbg !1772, !tbaa !1009
  call void %124(%struct._object* %125), !dbg !1773
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  %126 = bitcast %struct._object** %_py_decref_tmp119 to i8*, !dbg !1774
  call void @llvm.lifetime.end(i64 8, i8* %126) #2, !dbg !1774
  br label %do.cond.129, !dbg !1776

do.cond.129:                                      ; preds = %if.end.128
  br label %do.end.130, !dbg !1777

do.end.130:                                       ; preds = %do.cond.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %if.then.98
  br label %if.end.132, !dbg !1779

if.end.132:                                       ; preds = %if.end.131, %if.then.82
  br label %if.end.153, !dbg !1780

if.else.133:                                      ; preds = %if.then.71
  %127 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1781, !tbaa !1009
  %connection134 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %127, i32 0, i32 1, !dbg !1783
  %128 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection134, align 8, !dbg !1783, !tbaa !1086
  %text_factory135 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %128, i32 0, i32 17, !dbg !1784
  %129 = load %struct._object*, %struct._object** %text_factory135, align 8, !dbg !1784, !tbaa !1683
  %cmp136 = icmp eq %struct._object* %129, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytes_Type, i32 0, i32 0, i32 0), !dbg !1785
  br i1 %cmp136, label %if.then.138, label %if.else.140, !dbg !1786

if.then.138:                                      ; preds = %if.else.133
  %130 = load i8*, i8** %val_str, align 8, !dbg !1787, !tbaa !1009
  %131 = load i64, i64* %nbytes, align 8, !dbg !1789, !tbaa !1565
  %call139 = call %struct._object* @PyBytes_FromStringAndSize(i8* %130, i64 %131), !dbg !1790
  store %struct._object* %call139, %struct._object** %converted, align 8, !dbg !1791, !tbaa !1009
  br label %if.end.152, !dbg !1792

if.else.140:                                      ; preds = %if.else.133
  %132 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1793, !tbaa !1009
  %connection141 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %132, i32 0, i32 1, !dbg !1795
  %133 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection141, align 8, !dbg !1795, !tbaa !1086
  %text_factory142 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %133, i32 0, i32 17, !dbg !1796
  %134 = load %struct._object*, %struct._object** %text_factory142, align 8, !dbg !1796, !tbaa !1683
  %cmp143 = icmp eq %struct._object* %134, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyByteArray_Type, i32 0, i32 0, i32 0), !dbg !1797
  br i1 %cmp143, label %if.then.145, label %if.else.147, !dbg !1798

if.then.145:                                      ; preds = %if.else.140
  %135 = load i8*, i8** %val_str, align 8, !dbg !1799, !tbaa !1009
  %136 = load i64, i64* %nbytes, align 8, !dbg !1801, !tbaa !1565
  %call146 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %135, i64 %136), !dbg !1802
  store %struct._object* %call146, %struct._object** %converted, align 8, !dbg !1803, !tbaa !1009
  br label %if.end.151, !dbg !1804

if.else.147:                                      ; preds = %if.else.140
  %137 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1805, !tbaa !1009
  %connection148 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %137, i32 0, i32 1, !dbg !1807
  %138 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection148, align 8, !dbg !1807, !tbaa !1086
  %text_factory149 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %138, i32 0, i32 17, !dbg !1808
  %139 = load %struct._object*, %struct._object** %text_factory149, align 8, !dbg !1808, !tbaa !1683
  %140 = load i8*, i8** %val_str, align 8, !dbg !1809, !tbaa !1009
  %141 = load i64, i64* %nbytes, align 8, !dbg !1810, !tbaa !1565
  %call150 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %140, i64 %141), !dbg !1811
  store %struct._object* %call150, %struct._object** %converted, align 8, !dbg !1812, !tbaa !1009
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.147, %if.then.145
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.then.138
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.132
  br label %if.end.166, !dbg !1813

if.else.154:                                      ; preds = %if.else.68
  %142 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1814, !tbaa !1009
  %statement155 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %142, i32 0, i32 8, !dbg !1816
  %143 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement155, align 8, !dbg !1816, !tbaa !1150
  %st156 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %143, i32 0, i32 2, !dbg !1817
  %144 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st156, align 8, !dbg !1817, !tbaa !1152
  %145 = load i32, i32* %i, align 4, !dbg !1818, !tbaa !1143
  %call157 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %144, i32 %145), !dbg !1819
  %conv158 = sext i32 %call157 to i64, !dbg !1819
  store i64 %conv158, i64* %nbytes, align 8, !dbg !1820, !tbaa !1565
  %146 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1821, !tbaa !1009
  %statement159 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %146, i32 0, i32 8, !dbg !1822
  %147 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement159, align 8, !dbg !1822, !tbaa !1150
  %st160 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %147, i32 0, i32 2, !dbg !1823
  %148 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st160, align 8, !dbg !1823, !tbaa !1152
  %149 = load i32, i32* %i, align 4, !dbg !1824, !tbaa !1143
  %call161 = call i8* @sqlite3_column_blob(%struct.sqlite3_stmt* %148, i32 %149), !dbg !1825
  %150 = load i64, i64* %nbytes, align 8, !dbg !1826, !tbaa !1565
  %call162 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call161, i64 %150), !dbg !1827
  store %struct._object* %call162, %struct._object** %buffer, align 8, !dbg !1828, !tbaa !1009
  %151 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !1829, !tbaa !1009
  %tobool163 = icmp ne %struct._object* %151, null, !dbg !1829
  br i1 %tobool163, label %if.end.165, label %if.then.164, !dbg !1831

if.then.164:                                      ; preds = %if.else.154
  br label %for.end, !dbg !1832

if.end.165:                                       ; preds = %if.else.154
  %152 = load %struct._object*, %struct._object** %buffer, align 8, !dbg !1834, !tbaa !1009
  store %struct._object* %152, %struct._object** %converted, align 8, !dbg !1835, !tbaa !1009
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.153
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.63
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.55
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.50
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.41
  %153 = load %struct._object*, %struct._object** %converted, align 8, !dbg !1836, !tbaa !1009
  %tobool171 = icmp ne %struct._object* %153, null, !dbg !1836
  br i1 %tobool171, label %if.then.172, label %if.else.175, !dbg !1838

if.then.172:                                      ; preds = %if.end.170
  %154 = load %struct._object*, %struct._object** %row, align 8, !dbg !1839, !tbaa !1009
  %155 = load i32, i32* %i, align 4, !dbg !1841, !tbaa !1143
  %conv173 = sext i32 %155 to i64, !dbg !1841
  %156 = load %struct._object*, %struct._object** %converted, align 8, !dbg !1842, !tbaa !1009
  %call174 = call i32 @PyTuple_SetItem(%struct._object* %154, i64 %conv173, %struct._object* %156), !dbg !1843
  br label %if.end.179, !dbg !1844

if.else.175:                                      ; preds = %if.end.170
  %157 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1845, !tbaa !1040
  %inc176 = add i64 %157, 1, !dbg !1845
  store i64 %inc176, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1845, !tbaa !1040
  %158 = load %struct._object*, %struct._object** %row, align 8, !dbg !1847, !tbaa !1009
  %159 = load i32, i32* %i, align 4, !dbg !1848, !tbaa !1143
  %conv177 = sext i32 %159 to i64, !dbg !1848
  %call178 = call i32 @PyTuple_SetItem(%struct._object* %158, i64 %conv177, %struct._object* @_Py_NoneStruct), !dbg !1849
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.175, %if.then.172
  br label %for.inc, !dbg !1850

for.inc:                                          ; preds = %if.end.179
  %160 = load i32, i32* %i, align 4, !dbg !1851, !tbaa !1143
  %inc180 = add i32 %160, 1, !dbg !1851
  store i32 %inc180, i32* %i, align 4, !dbg !1851, !tbaa !1143
  br label %for.cond, !dbg !1852

for.end:                                          ; preds = %if.then.164, %if.then.39, %for.cond
  %call181 = call %struct._object* @PyErr_Occurred(), !dbg !1853
  %tobool182 = icmp ne %struct._object* %call181, null, !dbg !1853
  br i1 %tobool182, label %if.then.183, label %if.end.197, !dbg !1854

if.then.183:                                      ; preds = %for.end
  br label %do.body.184, !dbg !1855

do.body.184:                                      ; preds = %if.then.183
  %161 = bitcast %struct._object** %_py_decref_tmp185 to i8*, !dbg !1856
  call void @llvm.lifetime.start(i64 8, i8* %161) #2, !dbg !1856
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp185, metadata !638, metadata !1013), !dbg !1858
  %162 = load %struct._object*, %struct._object** %row, align 8, !dbg !1859, !tbaa !1009
  store %struct._object* %162, %struct._object** %_py_decref_tmp185, align 8, !dbg !1858, !tbaa !1009
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !1860, !tbaa !1009
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0, !dbg !1862
  %164 = load i64, i64* %ob_refcnt186, align 8, !dbg !1863, !tbaa !1040
  %dec187 = add i64 %164, -1, !dbg !1863
  store i64 %dec187, i64* %ob_refcnt186, align 8, !dbg !1863, !tbaa !1040
  %cmp188 = icmp ne i64 %dec187, 0, !dbg !1864
  br i1 %cmp188, label %if.then.190, label %if.else.191, !dbg !1865

if.then.190:                                      ; preds = %do.body.184
  br label %if.end.194, !dbg !1866

if.else.191:                                      ; preds = %do.body.184
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !1868, !tbaa !1009
  %ob_type192 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1, !dbg !1870
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type192, align 8, !dbg !1870, !tbaa !1050
  %tp_dealloc193 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %166, i32 0, i32 4, !dbg !1871
  %167 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc193, align 8, !dbg !1871, !tbaa !1052
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8, !dbg !1872, !tbaa !1009
  call void %167(%struct._object* %168), !dbg !1873
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.191, %if.then.190
  %169 = bitcast %struct._object** %_py_decref_tmp185 to i8*, !dbg !1874
  call void @llvm.lifetime.end(i64 8, i8* %169) #2, !dbg !1874
  br label %do.cond.195, !dbg !1876

do.cond.195:                                      ; preds = %if.end.194
  br label %do.end.196, !dbg !1877

do.end.196:                                       ; preds = %do.cond.195
  store %struct._object* null, %struct._object** %row, align 8, !dbg !1879, !tbaa !1009
  br label %if.end.197, !dbg !1880

if.end.197:                                       ; preds = %do.end.196, %for.end
  %170 = load %struct._object*, %struct._object** %row, align 8, !dbg !1881, !tbaa !1009
  store %struct._object* %170, %struct._object** %retval, !dbg !1882
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1882

cleanup:                                          ; preds = %if.end.197, %if.then.30, %if.then.4, %if.then
  %171 = bitcast %struct._object** %error_obj to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %171) #2, !dbg !1883
  %172 = bitcast %struct._object** %buf_bytes to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %172) #2, !dbg !1883
  %173 = bitcast i8** %colname to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %173) #2, !dbg !1883
  %174 = bitcast [200 x i8]* %buf to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 200, i8* %174) #2, !dbg !1883
  %175 = bitcast i8** %val_str to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %175) #2, !dbg !1883
  %176 = bitcast %struct._object** %buffer to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %176) #2, !dbg !1883
  %177 = bitcast i64* %nbytes to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %177) #2, !dbg !1883
  %178 = bitcast %struct._object** %converted to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %178) #2, !dbg !1883
  %179 = bitcast %struct._object** %converter to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %179) #2, !dbg !1883
  %180 = bitcast i32* %coltype to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 4, i8* %180) #2, !dbg !1883
  %181 = bitcast %struct._object** %item to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %181) #2, !dbg !1883
  %182 = bitcast %struct._object** %row to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 8, i8* %182) #2, !dbg !1883
  %183 = bitcast i32* %numcols to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 4, i8* %183) #2, !dbg !1883
  %184 = bitcast i32* %i to i8*, !dbg !1883
  call void @llvm.lifetime.end(i64 4, i8* %184) #2, !dbg !1883
  %185 = load %struct._object*, %struct._object** %retval, !dbg !1883
  ret %struct._object* %185, !dbg !1883
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @sqlite3_data_count(%struct.sqlite3_stmt*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare %struct._object* @PyTuple_New(i64) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare i32 @sqlite3_column_bytes(%struct.sqlite3_stmt*, i32) #3

declare i8* @sqlite3_column_blob(%struct.sqlite3_stmt*, i32) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare i32 @sqlite3_column_type(%struct.sqlite3_stmt*, i32) #3

declare %struct._object* @_pysqlite_long_from_int64(i64) #3

declare i64 @sqlite3_column_int64(%struct.sqlite3_stmt*, i32) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare double @sqlite3_column_double(%struct.sqlite3_stmt*, i32) #3

declare i8* @sqlite3_column_text(%struct.sqlite3_stmt*, i32) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._object* @PyUnicode_FromEncodedObject(%struct._object*, i8*, i8*) #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_query_execute(%struct.pysqlite_Cursor* %self, i32 %multiple, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %multiple.addr = alloca i32, align 4
  %args.addr = alloca %struct._object*, align 8
  %operation = alloca %struct._object*, align 8
  %operation_cstr = alloca i8*, align 8
  %operation_len = alloca i64, align 8
  %parameters_list = alloca %struct._object*, align 8
  %parameters_iter = alloca %struct._object*, align 8
  %parameters = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %func_args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %numcols = alloca i32, align 4
  %statement_type = alloca i32, align 4
  %descriptor = alloca %struct._object*, align 8
  %second_argument = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  %_py_decref_tmp148 = alloca %struct._object*, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  %_py_tmp191 = alloca %struct._object*, align 8
  %_py_decref_tmp197 = alloca %struct._object*, align 8
  %_py_decref_tmp229 = alloca %struct._object*, align 8
  %_py_decref_tmp252 = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp333 = alloca %struct._object*, align 8
  %_py_tmp397 = alloca %struct._object*, align 8
  %_py_decref_tmp404 = alloca %struct._object*, align 8
  %_py_decref_tmp435 = alloca %struct._object*, align 8
  %lastrowid452 = alloca i64, align 8
  %_save453 = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp474 = alloca %struct._object*, align 8
  %_py_xdecref_tmp506 = alloca %struct._object*, align 8
  %_py_decref_tmp511 = alloca %struct._object*, align 8
  %_py_xdecref_tmp527 = alloca %struct._object*, align 8
  %_py_decref_tmp532 = alloca %struct._object*, align 8
  %_py_xdecref_tmp548 = alloca %struct._object*, align 8
  %_py_decref_tmp553 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !646, metadata !1013), !dbg !1884
  store i32 %multiple, i32* %multiple.addr, align 4, !tbaa !1143
  call void @llvm.dbg.declare(metadata i32* %multiple.addr, metadata !647, metadata !1013), !dbg !1885
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !648, metadata !1013), !dbg !1886
  %0 = bitcast %struct._object** %operation to i8*, !dbg !1887
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1887
  call void @llvm.dbg.declare(metadata %struct._object** %operation, metadata !649, metadata !1013), !dbg !1888
  %1 = bitcast i8** %operation_cstr to i8*, !dbg !1889
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1889
  call void @llvm.dbg.declare(metadata i8** %operation_cstr, metadata !650, metadata !1013), !dbg !1890
  %2 = bitcast i64* %operation_len to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1891
  call void @llvm.dbg.declare(metadata i64* %operation_len, metadata !651, metadata !1013), !dbg !1892
  %3 = bitcast %struct._object** %parameters_list to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct._object** %parameters_list, metadata !652, metadata !1013), !dbg !1894
  store %struct._object* null, %struct._object** %parameters_list, align 8, !dbg !1894, !tbaa !1009
  %4 = bitcast %struct._object** %parameters_iter to i8*, !dbg !1895
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1895
  call void @llvm.dbg.declare(metadata %struct._object** %parameters_iter, metadata !653, metadata !1013), !dbg !1896
  store %struct._object* null, %struct._object** %parameters_iter, align 8, !dbg !1896, !tbaa !1009
  %5 = bitcast %struct._object** %parameters to i8*, !dbg !1897
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !1897
  call void @llvm.dbg.declare(metadata %struct._object** %parameters, metadata !654, metadata !1013), !dbg !1898
  store %struct._object* null, %struct._object** %parameters, align 8, !dbg !1898, !tbaa !1009
  %6 = bitcast i32* %i to i8*, !dbg !1899
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %i, metadata !655, metadata !1013), !dbg !1900
  %7 = bitcast i32* %rc to i8*, !dbg !1901
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !656, metadata !1013), !dbg !1902
  %8 = bitcast %struct._object** %func_args to i8*, !dbg !1903
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !1903
  call void @llvm.dbg.declare(metadata %struct._object** %func_args, metadata !657, metadata !1013), !dbg !1904
  %9 = bitcast %struct._object** %result to i8*, !dbg !1905
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !1905
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !658, metadata !1013), !dbg !1906
  %10 = bitcast i32* %numcols to i8*, !dbg !1907
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %numcols, metadata !659, metadata !1013), !dbg !1908
  %11 = bitcast i32* %statement_type to i8*, !dbg !1909
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !1909
  call void @llvm.dbg.declare(metadata i32* %statement_type, metadata !660, metadata !1013), !dbg !1910
  %12 = bitcast %struct._object** %descriptor to i8*, !dbg !1911
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1911
  call void @llvm.dbg.declare(metadata %struct._object** %descriptor, metadata !661, metadata !1013), !dbg !1912
  %13 = bitcast %struct._object** %second_argument to i8*, !dbg !1913
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !1913
  call void @llvm.dbg.declare(metadata %struct._object** %second_argument, metadata !662, metadata !1013), !dbg !1914
  store %struct._object* null, %struct._object** %second_argument, align 8, !dbg !1914, !tbaa !1009
  %14 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1915, !tbaa !1009
  %call = call i32 @check_cursor(%struct.pysqlite_Cursor* %14), !dbg !1917
  %tobool = icmp ne i32 %call, 0, !dbg !1917
  br i1 %tobool, label %if.end, label %if.then, !dbg !1918

if.then:                                          ; preds = %entry
  br label %error, !dbg !1919

if.end:                                           ; preds = %entry
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1921, !tbaa !1009
  %locked = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 11, !dbg !1922
  store i32 1, i32* %locked, align 4, !dbg !1923, !tbaa !1924
  %16 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1925, !tbaa !1009
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %16, i32 0, i32 10, !dbg !1926
  store i32 0, i32* %reset, align 4, !dbg !1927, !tbaa !1501
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %if.end
  %17 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !1929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !663, metadata !1013), !dbg !1931
  %18 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1932, !tbaa !1009
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %18, i32 0, i32 13, !dbg !1933
  %19 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !1933, !tbaa !1934
  store %struct._object* %19, %struct._object** %_py_tmp, align 8, !dbg !1931, !tbaa !1009
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1935, !tbaa !1009
  %cmp = icmp ne %struct._object* %20, null, !dbg !1936
  br i1 %cmp, label %if.then.1, label %if.end.7, !dbg !1937

if.then.1:                                        ; preds = %do.body
  %21 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !1938, !tbaa !1009
  %next_row2 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %21, i32 0, i32 13, !dbg !1940
  store %struct._object* null, %struct._object** %next_row2, align 8, !dbg !1941, !tbaa !1934
  br label %do.body.3, !dbg !1942

do.body.3:                                        ; preds = %if.then.1
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1943
  call void @llvm.lifetime.start(i64 8, i8* %22) #2, !dbg !1943
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !665, metadata !1013), !dbg !1945
  %23 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1946, !tbaa !1009
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1945, !tbaa !1009
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1947, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1949
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1950, !tbaa !1040
  %dec = add i64 %25, -1, !dbg !1950
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1950, !tbaa !1040
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1951
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1952

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6, !dbg !1953

if.else:                                          ; preds = %do.body.3
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1955, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1957
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1957, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1958
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1958, !tbaa !1052
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1959, !tbaa !1009
  call void %28(%struct._object* %29), !dbg !1960
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1961
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !1961
  br label %do.cond, !dbg !1963

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1964

do.end:                                           ; preds = %do.cond
  br label %if.end.7, !dbg !1966

if.end.7:                                         ; preds = %do.end, %do.body
  %31 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !1968
  br label %do.cond.8, !dbg !1971

do.cond.8:                                        ; preds = %if.end.7
  br label %do.end.9, !dbg !1972

do.end.9:                                         ; preds = %do.cond.8
  %32 = load i32, i32* %multiple.addr, align 4, !dbg !1974, !tbaa !1143
  %tobool10 = icmp ne i32 %32, 0, !dbg !1974
  br i1 %tobool10, label %if.then.11, label %if.else.35, !dbg !1975

if.then.11:                                       ; preds = %do.end.9
  %33 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1976, !tbaa !1009
  %call12 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct._object** %operation, %struct._object** %second_argument), !dbg !1979
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1979
  br i1 %tobool13, label %if.end.15, label %if.then.14, !dbg !1980

if.then.14:                                       ; preds = %if.then.11
  br label %error, !dbg !1981

if.end.15:                                        ; preds = %if.then.11
  %34 = load %struct._object*, %struct._object** %operation, align 8, !dbg !1983, !tbaa !1009
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1985
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1985, !tbaa !1050
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 19, !dbg !1986
  %36 = load i64, i64* %tp_flags, align 8, !dbg !1986, !tbaa !1987
  %and = and i64 %36, 268435456, !dbg !1988
  %cmp17 = icmp ne i64 %and, 0, !dbg !1989
  br i1 %cmp17, label %if.end.19, label %if.then.18, !dbg !1990

if.then.18:                                       ; preds = %if.end.15
  %37 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1991, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)), !dbg !1993
  br label %error, !dbg !1994

if.end.19:                                        ; preds = %if.end.15
  %38 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !1995, !tbaa !1009
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1997
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1997, !tbaa !1050
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 26, !dbg !1998
  %tp_iternext21 = bitcast {}** %tp_iternext to %struct._object* (%struct._object*)**, !dbg !1998
  %40 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext21, align 8, !dbg !1998, !tbaa !1999
  %cmp22 = icmp ne %struct._object* (%struct._object*)* %40, null, !dbg !2000
  br i1 %cmp22, label %land.lhs.true, label %if.else.29, !dbg !2001

land.lhs.true:                                    ; preds = %if.end.19
  %41 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2002, !tbaa !1009
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !2004
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !2004, !tbaa !1050
  %tp_iternext24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 26, !dbg !2005
  %tp_iternext25 = bitcast {}** %tp_iternext24 to %struct._object* (%struct._object*)**, !dbg !2005
  %43 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext25, align 8, !dbg !2005, !tbaa !1999
  %cmp26 = icmp ne %struct._object* (%struct._object*)* %43, @_PyObject_NextNotImplemented, !dbg !2006
  br i1 %cmp26, label %if.then.27, label %if.else.29, !dbg !2007

if.then.27:                                       ; preds = %land.lhs.true
  %44 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2008, !tbaa !1009
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !2010
  %45 = load i64, i64* %ob_refcnt28, align 8, !dbg !2011, !tbaa !1040
  %inc = add i64 %45, 1, !dbg !2011
  store i64 %inc, i64* %ob_refcnt28, align 8, !dbg !2011, !tbaa !1040
  %46 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2012, !tbaa !1009
  store %struct._object* %46, %struct._object** %parameters_iter, align 8, !dbg !2013, !tbaa !1009
  br label %if.end.34, !dbg !2014

if.else.29:                                       ; preds = %land.lhs.true, %if.end.19
  %47 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2015, !tbaa !1009
  %call30 = call %struct._object* @PyObject_GetIter(%struct._object* %47), !dbg !2017
  store %struct._object* %call30, %struct._object** %parameters_iter, align 8, !dbg !2018, !tbaa !1009
  %48 = load %struct._object*, %struct._object** %parameters_iter, align 8, !dbg !2019, !tbaa !1009
  %tobool31 = icmp ne %struct._object* %48, null, !dbg !2019
  br i1 %tobool31, label %if.end.33, label %if.then.32, !dbg !2021

if.then.32:                                       ; preds = %if.else.29
  br label %error, !dbg !2022

if.end.33:                                        ; preds = %if.else.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.27
  br label %if.end.92, !dbg !2024

if.else.35:                                       ; preds = %do.end.9
  %49 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2025, !tbaa !1009
  %call36 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._object** %operation, %struct._object** %second_argument), !dbg !2027
  %tobool37 = icmp ne i32 %call36, 0, !dbg !2027
  br i1 %tobool37, label %if.end.39, label %if.then.38, !dbg !2028

if.then.38:                                       ; preds = %if.else.35
  br label %error, !dbg !2029

if.end.39:                                        ; preds = %if.else.35
  %50 = load %struct._object*, %struct._object** %operation, align 8, !dbg !2031, !tbaa !1009
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2033
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !2033, !tbaa !1050
  %tp_flags41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 19, !dbg !2034
  %52 = load i64, i64* %tp_flags41, align 8, !dbg !2034, !tbaa !1987
  %and42 = and i64 %52, 268435456, !dbg !2035
  %cmp43 = icmp ne i64 %and42, 0, !dbg !2036
  br i1 %cmp43, label %if.end.45, label %if.then.44, !dbg !2037

if.then.44:                                       ; preds = %if.end.39
  %53 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2038, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)), !dbg !2040
  br label %error, !dbg !2041

if.end.45:                                        ; preds = %if.end.39
  %call46 = call %struct._object* @PyList_New(i64 0), !dbg !2042
  store %struct._object* %call46, %struct._object** %parameters_list, align 8, !dbg !2043, !tbaa !1009
  %54 = load %struct._object*, %struct._object** %parameters_list, align 8, !dbg !2044, !tbaa !1009
  %tobool47 = icmp ne %struct._object* %54, null, !dbg !2044
  br i1 %tobool47, label %if.end.49, label %if.then.48, !dbg !2046

if.then.48:                                       ; preds = %if.end.45
  br label %error, !dbg !2047

if.end.49:                                        ; preds = %if.end.45
  %55 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2049, !tbaa !1009
  %cmp50 = icmp eq %struct._object* %55, null, !dbg !2051
  br i1 %cmp50, label %if.then.51, label %if.else.56, !dbg !2052

if.then.51:                                       ; preds = %if.end.49
  %call52 = call %struct._object* @PyTuple_New(i64 0), !dbg !2053
  store %struct._object* %call52, %struct._object** %second_argument, align 8, !dbg !2055, !tbaa !1009
  %56 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2056, !tbaa !1009
  %tobool53 = icmp ne %struct._object* %56, null, !dbg !2056
  br i1 %tobool53, label %if.end.55, label %if.then.54, !dbg !2058

if.then.54:                                       ; preds = %if.then.51
  br label %error, !dbg !2059

if.end.55:                                        ; preds = %if.then.51
  br label %if.end.59, !dbg !2061

if.else.56:                                       ; preds = %if.end.49
  %57 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2062, !tbaa !1009
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !2064
  %58 = load i64, i64* %ob_refcnt57, align 8, !dbg !2065, !tbaa !1040
  %inc58 = add i64 %58, 1, !dbg !2065
  store i64 %inc58, i64* %ob_refcnt57, align 8, !dbg !2065, !tbaa !1040
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.end.55
  %59 = load %struct._object*, %struct._object** %parameters_list, align 8, !dbg !2066, !tbaa !1009
  %60 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2067, !tbaa !1009
  %call60 = call i32 @PyList_Append(%struct._object* %59, %struct._object* %60), !dbg !2068
  %cmp61 = icmp ne i32 %call60, 0, !dbg !2069
  br i1 %cmp61, label %if.then.62, label %if.end.75, !dbg !2070

if.then.62:                                       ; preds = %if.end.59
  br label %do.body.63, !dbg !2071

do.body.63:                                       ; preds = %if.then.62
  %61 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2072
  call void @llvm.lifetime.start(i64 8, i8* %61) #2, !dbg !2072
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp64, metadata !669, metadata !1013), !dbg !2074
  %62 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2075, !tbaa !1009
  store %struct._object* %62, %struct._object** %_py_decref_tmp64, align 8, !dbg !2074, !tbaa !1009
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2076, !tbaa !1009
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0, !dbg !2078
  %64 = load i64, i64* %ob_refcnt65, align 8, !dbg !2079, !tbaa !1040
  %dec66 = add i64 %64, -1, !dbg !2079
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2079, !tbaa !1040
  %cmp67 = icmp ne i64 %dec66, 0, !dbg !2080
  br i1 %cmp67, label %if.then.68, label %if.else.69, !dbg !2081

if.then.68:                                       ; preds = %do.body.63
  br label %if.end.72, !dbg !2082

if.else.69:                                       ; preds = %do.body.63
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2084, !tbaa !1009
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1, !dbg !2086
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !2086, !tbaa !1050
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4, !dbg !2087
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !2087, !tbaa !1052
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8, !dbg !2088, !tbaa !1009
  call void %67(%struct._object* %68), !dbg !2089
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %69 = bitcast %struct._object** %_py_decref_tmp64 to i8*, !dbg !2090
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !2090
  br label %do.cond.73, !dbg !2092

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !2093

do.end.74:                                        ; preds = %do.cond.73
  br label %error, !dbg !2095

if.end.75:                                        ; preds = %if.end.59
  br label %do.body.76, !dbg !2096

do.body.76:                                       ; preds = %if.end.75
  %70 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2097
  call void @llvm.lifetime.start(i64 8, i8* %70) #2, !dbg !2097
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp77, metadata !675, metadata !1013), !dbg !2099
  %71 = load %struct._object*, %struct._object** %second_argument, align 8, !dbg !2100, !tbaa !1009
  store %struct._object* %71, %struct._object** %_py_decref_tmp77, align 8, !dbg !2099, !tbaa !1009
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2101, !tbaa !1009
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !2103
  %73 = load i64, i64* %ob_refcnt78, align 8, !dbg !2104, !tbaa !1040
  %dec79 = add i64 %73, -1, !dbg !2104
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !2104, !tbaa !1040
  %cmp80 = icmp ne i64 %dec79, 0, !dbg !2105
  br i1 %cmp80, label %if.then.81, label %if.else.82, !dbg !2106

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85, !dbg !2107

if.else.82:                                       ; preds = %do.body.76
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2109, !tbaa !1009
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !2111
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !2111, !tbaa !1050
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !2112
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !2112, !tbaa !1052
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2113, !tbaa !1009
  call void %76(%struct._object* %77), !dbg !2114
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  %78 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2115
  call void @llvm.lifetime.end(i64 8, i8* %78) #2, !dbg !2115
  br label %do.cond.86, !dbg !2117

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !2118

do.end.87:                                        ; preds = %do.cond.86
  %79 = load %struct._object*, %struct._object** %parameters_list, align 8, !dbg !2120, !tbaa !1009
  %call88 = call %struct._object* @PyObject_GetIter(%struct._object* %79), !dbg !2121
  store %struct._object* %call88, %struct._object** %parameters_iter, align 8, !dbg !2122, !tbaa !1009
  %80 = load %struct._object*, %struct._object** %parameters_iter, align 8, !dbg !2123, !tbaa !1009
  %tobool89 = icmp ne %struct._object* %80, null, !dbg !2123
  br i1 %tobool89, label %if.end.91, label %if.then.90, !dbg !2125

if.then.90:                                       ; preds = %do.end.87
  br label %error, !dbg !2126

if.end.91:                                        ; preds = %do.end.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.34
  %81 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2128, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %81, i32 0, i32 8, !dbg !2130
  %82 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !2130, !tbaa !1150
  %cmp93 = icmp ne %struct.pysqlite_Statement* %82, null, !dbg !2131
  br i1 %cmp93, label %if.then.94, label %if.end.97, !dbg !2132

if.then.94:                                       ; preds = %if.end.92
  %83 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2133, !tbaa !1009
  %statement95 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %83, i32 0, i32 8, !dbg !2135
  %84 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement95, align 8, !dbg !2135, !tbaa !1150
  %call96 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %84), !dbg !2136
  br label %if.end.97, !dbg !2137

if.end.97:                                        ; preds = %if.then.94, %if.end.92
  %85 = load %struct._object*, %struct._object** %operation, align 8, !dbg !2138, !tbaa !1009
  %call98 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %85, i64* %operation_len), !dbg !2139
  store i8* %call98, i8** %operation_cstr, align 8, !dbg !2140, !tbaa !1009
  %86 = load i8*, i8** %operation_cstr, align 8, !dbg !2141, !tbaa !1009
  %cmp99 = icmp eq i8* %86, null, !dbg !2143
  br i1 %cmp99, label %if.then.100, label %if.end.101, !dbg !2144

if.then.100:                                      ; preds = %if.end.97
  br label %error, !dbg !2145

if.end.101:                                       ; preds = %if.end.97
  br label %do.body.102, !dbg !2146

do.body.102:                                      ; preds = %if.end.101
  %87 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2147
  call void @llvm.lifetime.start(i64 8, i8* %87) #2, !dbg !2147
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp103, metadata !677, metadata !1013), !dbg !2149
  %88 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2150, !tbaa !1009
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %88, i32 0, i32 2, !dbg !2151
  %89 = load %struct._object*, %struct._object** %description, align 8, !dbg !2151, !tbaa !2152
  store %struct._object* %89, %struct._object** %_py_decref_tmp103, align 8, !dbg !2149, !tbaa !1009
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2153, !tbaa !1009
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0, !dbg !2155
  %91 = load i64, i64* %ob_refcnt104, align 8, !dbg !2156, !tbaa !1040
  %dec105 = add i64 %91, -1, !dbg !2156
  store i64 %dec105, i64* %ob_refcnt104, align 8, !dbg !2156, !tbaa !1040
  %cmp106 = icmp ne i64 %dec105, 0, !dbg !2157
  br i1 %cmp106, label %if.then.107, label %if.else.108, !dbg !2158

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111, !dbg !2159

if.else.108:                                      ; preds = %do.body.102
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2161, !tbaa !1009
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1, !dbg !2163
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !2163, !tbaa !1050
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4, !dbg !2164
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !2164, !tbaa !1052
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2165, !tbaa !1009
  call void %94(%struct._object* %95), !dbg !2166
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  %96 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2167
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !2167
  br label %do.cond.112, !dbg !2169

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113, !dbg !2170

do.end.113:                                       ; preds = %do.cond.112
  %97 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2172, !tbaa !1040
  %inc114 = add i64 %97, 1, !dbg !2172
  store i64 %inc114, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2172, !tbaa !1040
  %98 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2173, !tbaa !1009
  %description115 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %98, i32 0, i32 2, !dbg !2174
  store %struct._object* @_Py_NoneStruct, %struct._object** %description115, align 8, !dbg !2175, !tbaa !2152
  %99 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2176, !tbaa !1009
  %rowcount = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %99, i32 0, i32 6, !dbg !2177
  store i64 -1, i64* %rowcount, align 8, !dbg !2178, !tbaa !2179
  %call116 = call %struct._object* @PyTuple_New(i64 1), !dbg !2180
  store %struct._object* %call116, %struct._object** %func_args, align 8, !dbg !2181, !tbaa !1009
  %100 = load %struct._object*, %struct._object** %func_args, align 8, !dbg !2182, !tbaa !1009
  %tobool117 = icmp ne %struct._object* %100, null, !dbg !2182
  br i1 %tobool117, label %if.end.119, label %if.then.118, !dbg !2184

if.then.118:                                      ; preds = %do.end.113
  br label %error, !dbg !2185

if.end.119:                                       ; preds = %do.end.113
  %101 = load %struct._object*, %struct._object** %operation, align 8, !dbg !2187, !tbaa !1009
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0, !dbg !2188
  %102 = load i64, i64* %ob_refcnt120, align 8, !dbg !2189, !tbaa !1040
  %inc121 = add i64 %102, 1, !dbg !2189
  store i64 %inc121, i64* %ob_refcnt120, align 8, !dbg !2189, !tbaa !1040
  %103 = load %struct._object*, %struct._object** %func_args, align 8, !dbg !2190, !tbaa !1009
  %104 = load %struct._object*, %struct._object** %operation, align 8, !dbg !2192, !tbaa !1009
  %call122 = call i32 @PyTuple_SetItem(%struct._object* %103, i64 0, %struct._object* %104), !dbg !2193
  %cmp123 = icmp ne i32 %call122, 0, !dbg !2194
  br i1 %cmp123, label %if.then.124, label %if.end.125, !dbg !2195

if.then.124:                                      ; preds = %if.end.119
  br label %error, !dbg !2196

if.end.125:                                       ; preds = %if.end.119
  %105 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2198, !tbaa !1009
  %statement126 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %105, i32 0, i32 8, !dbg !2199
  %106 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement126, align 8, !dbg !2199, !tbaa !1150
  %tobool127 = icmp ne %struct.pysqlite_Statement* %106, null, !dbg !2198
  br i1 %tobool127, label %if.then.128, label %if.end.144, !dbg !2200

if.then.128:                                      ; preds = %if.end.125
  %107 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2201, !tbaa !1009
  %statement129 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %107, i32 0, i32 8, !dbg !2202
  %108 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement129, align 8, !dbg !2202, !tbaa !1150
  %call130 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %108), !dbg !2203
  br label %do.body.131, !dbg !2204

do.body.131:                                      ; preds = %if.then.128
  %109 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !2205
  call void @llvm.lifetime.start(i64 8, i8* %109) #2, !dbg !2205
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp132, metadata !679, metadata !1013), !dbg !2207
  %110 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2208, !tbaa !1009
  %statement133 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %110, i32 0, i32 8, !dbg !2209
  %111 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement133, align 8, !dbg !2209, !tbaa !1150
  %112 = bitcast %struct.pysqlite_Statement* %111 to %struct._object*, !dbg !2210
  store %struct._object* %112, %struct._object** %_py_decref_tmp132, align 8, !dbg !2207, !tbaa !1009
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2211, !tbaa !1009
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !2213
  %114 = load i64, i64* %ob_refcnt134, align 8, !dbg !2214, !tbaa !1040
  %dec135 = add i64 %114, -1, !dbg !2214
  store i64 %dec135, i64* %ob_refcnt134, align 8, !dbg !2214, !tbaa !1040
  %cmp136 = icmp ne i64 %dec135, 0, !dbg !2215
  br i1 %cmp136, label %if.then.137, label %if.else.138, !dbg !2216

if.then.137:                                      ; preds = %do.body.131
  br label %if.end.141, !dbg !2217

if.else.138:                                      ; preds = %do.body.131
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2219, !tbaa !1009
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1, !dbg !2221
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8, !dbg !2221, !tbaa !1050
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4, !dbg !2222
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8, !dbg !2222, !tbaa !1052
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8, !dbg !2223, !tbaa !1009
  call void %117(%struct._object* %118), !dbg !2224
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  %119 = bitcast %struct._object** %_py_decref_tmp132 to i8*, !dbg !2225
  call void @llvm.lifetime.end(i64 8, i8* %119) #2, !dbg !2225
  br label %do.cond.142, !dbg !2227

do.cond.142:                                      ; preds = %if.end.141
  br label %do.end.143, !dbg !2228

do.end.143:                                       ; preds = %do.cond.142
  br label %if.end.144, !dbg !2230

if.end.144:                                       ; preds = %do.end.143, %if.end.125
  %120 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2231, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %120, i32 0, i32 1, !dbg !2232
  %121 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !2232, !tbaa !1086
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %121, i32 0, i32 11, !dbg !2233
  %122 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8, !dbg !2233, !tbaa !2234
  %123 = load %struct._object*, %struct._object** %func_args, align 8, !dbg !2235, !tbaa !1009
  %call145 = call %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache* %122, %struct._object* %123), !dbg !2236
  %124 = bitcast %struct._object* %call145 to %struct.pysqlite_Statement*, !dbg !2237
  %125 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2238, !tbaa !1009
  %statement146 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %125, i32 0, i32 8, !dbg !2239
  store %struct.pysqlite_Statement* %124, %struct.pysqlite_Statement** %statement146, align 8, !dbg !2240, !tbaa !1150
  br label %do.body.147, !dbg !2241

do.body.147:                                      ; preds = %if.end.144
  %126 = bitcast %struct._object** %_py_decref_tmp148 to i8*, !dbg !2242
  call void @llvm.lifetime.start(i64 8, i8* %126) #2, !dbg !2242
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp148, metadata !683, metadata !1013), !dbg !2244
  %127 = load %struct._object*, %struct._object** %func_args, align 8, !dbg !2245, !tbaa !1009
  store %struct._object* %127, %struct._object** %_py_decref_tmp148, align 8, !dbg !2244, !tbaa !1009
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8, !dbg !2246, !tbaa !1009
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0, !dbg !2248
  %129 = load i64, i64* %ob_refcnt149, align 8, !dbg !2249, !tbaa !1040
  %dec150 = add i64 %129, -1, !dbg !2249
  store i64 %dec150, i64* %ob_refcnt149, align 8, !dbg !2249, !tbaa !1040
  %cmp151 = icmp ne i64 %dec150, 0, !dbg !2250
  br i1 %cmp151, label %if.then.152, label %if.else.153, !dbg !2251

if.then.152:                                      ; preds = %do.body.147
  br label %if.end.156, !dbg !2252

if.else.153:                                      ; preds = %do.body.147
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8, !dbg !2254, !tbaa !1009
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1, !dbg !2256
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8, !dbg !2256, !tbaa !1050
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4, !dbg !2257
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8, !dbg !2257, !tbaa !1052
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp148, align 8, !dbg !2258, !tbaa !1009
  call void %132(%struct._object* %133), !dbg !2259
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.152
  %134 = bitcast %struct._object** %_py_decref_tmp148 to i8*, !dbg !2260
  call void @llvm.lifetime.end(i64 8, i8* %134) #2, !dbg !2260
  br label %do.cond.157, !dbg !2261

do.cond.157:                                      ; preds = %if.end.156
  br label %do.end.158, !dbg !2262

do.end.158:                                       ; preds = %do.cond.157
  %135 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2264, !tbaa !1009
  %statement159 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %135, i32 0, i32 8, !dbg !2266
  %136 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement159, align 8, !dbg !2266, !tbaa !1150
  %tobool160 = icmp ne %struct.pysqlite_Statement* %136, null, !dbg !2264
  br i1 %tobool160, label %if.end.162, label %if.then.161, !dbg !2267

if.then.161:                                      ; preds = %do.end.158
  br label %error, !dbg !2268

if.end.162:                                       ; preds = %do.end.158
  %137 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2270, !tbaa !1009
  %statement163 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %137, i32 0, i32 8, !dbg !2271
  %138 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement163, align 8, !dbg !2271, !tbaa !1150
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %138, i32 0, i32 4, !dbg !2272
  %139 = load i32, i32* %in_use, align 4, !dbg !2272, !tbaa !2273
  %tobool164 = icmp ne i32 %139, 0, !dbg !2270
  br i1 %tobool164, label %if.then.165, label %if.end.212, !dbg !2274

if.then.165:                                      ; preds = %if.end.162
  br label %do.body.166, !dbg !2275

do.body.166:                                      ; preds = %if.then.165
  %140 = bitcast %struct._object** %_py_decref_tmp167 to i8*, !dbg !2276
  call void @llvm.lifetime.start(i64 8, i8* %140) #2, !dbg !2276
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp167, metadata !685, metadata !1013), !dbg !2278
  %141 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2279, !tbaa !1009
  %statement168 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %141, i32 0, i32 8, !dbg !2280
  %142 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement168, align 8, !dbg !2280, !tbaa !1150
  %143 = bitcast %struct.pysqlite_Statement* %142 to %struct._object*, !dbg !2281
  store %struct._object* %143, %struct._object** %_py_decref_tmp167, align 8, !dbg !2278, !tbaa !1009
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !2282, !tbaa !1009
  %ob_refcnt169 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0, !dbg !2284
  %145 = load i64, i64* %ob_refcnt169, align 8, !dbg !2285, !tbaa !1040
  %dec170 = add i64 %145, -1, !dbg !2285
  store i64 %dec170, i64* %ob_refcnt169, align 8, !dbg !2285, !tbaa !1040
  %cmp171 = icmp ne i64 %dec170, 0, !dbg !2286
  br i1 %cmp171, label %if.then.172, label %if.else.173, !dbg !2287

if.then.172:                                      ; preds = %do.body.166
  br label %if.end.176, !dbg !2288

if.else.173:                                      ; preds = %do.body.166
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !2290, !tbaa !1009
  %ob_type174 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1, !dbg !2292
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type174, align 8, !dbg !2292, !tbaa !1050
  %tp_dealloc175 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4, !dbg !2293
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc175, align 8, !dbg !2293, !tbaa !1052
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8, !dbg !2294, !tbaa !1009
  call void %148(%struct._object* %149), !dbg !2295
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.173, %if.then.172
  %150 = bitcast %struct._object** %_py_decref_tmp167 to i8*, !dbg !2296
  call void @llvm.lifetime.end(i64 8, i8* %150) #2, !dbg !2296
  br label %do.cond.177, !dbg !2298

do.cond.177:                                      ; preds = %if.end.176
  br label %do.end.178, !dbg !2299

do.end.178:                                       ; preds = %do.cond.177
  %call179 = call %struct._object* @_PyObject_New(%struct._typeobject* @pysqlite_StatementType), !dbg !2301
  %151 = bitcast %struct._object* %call179 to %struct.pysqlite_Statement*, !dbg !2302
  %152 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2303, !tbaa !1009
  %statement180 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %152, i32 0, i32 8, !dbg !2304
  store %struct.pysqlite_Statement* %151, %struct.pysqlite_Statement** %statement180, align 8, !dbg !2305, !tbaa !1150
  %153 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2306, !tbaa !1009
  %statement181 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %153, i32 0, i32 8, !dbg !2308
  %154 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement181, align 8, !dbg !2308, !tbaa !1150
  %tobool182 = icmp ne %struct.pysqlite_Statement* %154, null, !dbg !2306
  br i1 %tobool182, label %if.end.184, label %if.then.183, !dbg !2309

if.then.183:                                      ; preds = %do.end.178
  br label %error, !dbg !2310

if.end.184:                                       ; preds = %do.end.178
  %155 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2312, !tbaa !1009
  %statement185 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %155, i32 0, i32 8, !dbg !2313
  %156 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement185, align 8, !dbg !2313, !tbaa !1150
  %157 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2314, !tbaa !1009
  %connection186 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %157, i32 0, i32 1, !dbg !2315
  %158 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection186, align 8, !dbg !2315, !tbaa !1086
  %159 = load %struct._object*, %struct._object** %operation, align 8, !dbg !2316, !tbaa !1009
  %call187 = call i32 @pysqlite_statement_create(%struct.pysqlite_Statement* %156, %struct.pysqlite_Connection* %158, %struct._object* %159), !dbg !2317
  store i32 %call187, i32* %rc, align 4, !dbg !2318, !tbaa !1143
  %160 = load i32, i32* %rc, align 4, !dbg !2319, !tbaa !1143
  %cmp188 = icmp ne i32 %160, 0, !dbg !2320
  br i1 %cmp188, label %if.then.189, label %if.end.211, !dbg !2321

if.then.189:                                      ; preds = %if.end.184
  br label %do.body.190, !dbg !2322

do.body.190:                                      ; preds = %if.then.189
  %161 = bitcast %struct._object** %_py_tmp191 to i8*, !dbg !2323
  call void @llvm.lifetime.start(i64 8, i8* %161) #2, !dbg !2323
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp191, metadata !689, metadata !1013), !dbg !2325
  %162 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2326, !tbaa !1009
  %statement192 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %162, i32 0, i32 8, !dbg !2327
  %163 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement192, align 8, !dbg !2327, !tbaa !1150
  %164 = bitcast %struct.pysqlite_Statement* %163 to %struct._object*, !dbg !2328
  store %struct._object* %164, %struct._object** %_py_tmp191, align 8, !dbg !2325, !tbaa !1009
  %165 = load %struct._object*, %struct._object** %_py_tmp191, align 8, !dbg !2329, !tbaa !1009
  %cmp193 = icmp ne %struct._object* %165, null, !dbg !2330
  br i1 %cmp193, label %if.then.194, label %if.end.208, !dbg !2331

if.then.194:                                      ; preds = %do.body.190
  %166 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2332, !tbaa !1009
  %statement195 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %166, i32 0, i32 8, !dbg !2334
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement195, align 8, !dbg !2335, !tbaa !1150
  br label %do.body.196, !dbg !2336

do.body.196:                                      ; preds = %if.then.194
  %167 = bitcast %struct._object** %_py_decref_tmp197 to i8*, !dbg !2337
  call void @llvm.lifetime.start(i64 8, i8* %167) #2, !dbg !2337
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp197, metadata !693, metadata !1013), !dbg !2339
  %168 = load %struct._object*, %struct._object** %_py_tmp191, align 8, !dbg !2340, !tbaa !1009
  store %struct._object* %168, %struct._object** %_py_decref_tmp197, align 8, !dbg !2339, !tbaa !1009
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !2341, !tbaa !1009
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0, !dbg !2343
  %170 = load i64, i64* %ob_refcnt198, align 8, !dbg !2344, !tbaa !1040
  %dec199 = add i64 %170, -1, !dbg !2344
  store i64 %dec199, i64* %ob_refcnt198, align 8, !dbg !2344, !tbaa !1040
  %cmp200 = icmp ne i64 %dec199, 0, !dbg !2345
  br i1 %cmp200, label %if.then.201, label %if.else.202, !dbg !2346

if.then.201:                                      ; preds = %do.body.196
  br label %if.end.205, !dbg !2347

if.else.202:                                      ; preds = %do.body.196
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !2349, !tbaa !1009
  %ob_type203 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1, !dbg !2351
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type203, align 8, !dbg !2351, !tbaa !1050
  %tp_dealloc204 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4, !dbg !2352
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc204, align 8, !dbg !2352, !tbaa !1052
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8, !dbg !2353, !tbaa !1009
  call void %173(%struct._object* %174), !dbg !2354
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.202, %if.then.201
  %175 = bitcast %struct._object** %_py_decref_tmp197 to i8*, !dbg !2355
  call void @llvm.lifetime.end(i64 8, i8* %175) #2, !dbg !2355
  br label %do.cond.206, !dbg !2357

do.cond.206:                                      ; preds = %if.end.205
  br label %do.end.207, !dbg !2358

do.end.207:                                       ; preds = %do.cond.206
  br label %if.end.208, !dbg !2360

if.end.208:                                       ; preds = %do.end.207, %do.body.190
  %176 = bitcast %struct._object** %_py_tmp191 to i8*, !dbg !2362
  call void @llvm.lifetime.end(i64 8, i8* %176) #2, !dbg !2362
  br label %do.cond.209, !dbg !2365

do.cond.209:                                      ; preds = %if.end.208
  br label %do.end.210, !dbg !2366

do.end.210:                                       ; preds = %do.cond.209
  br label %error, !dbg !2368

if.end.211:                                       ; preds = %if.end.184
  br label %if.end.212, !dbg !2369

if.end.212:                                       ; preds = %if.end.211, %if.end.162
  %177 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2370, !tbaa !1009
  %statement213 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %177, i32 0, i32 8, !dbg !2371
  %178 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement213, align 8, !dbg !2371, !tbaa !1150
  %call214 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %178), !dbg !2372
  %179 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2373, !tbaa !1009
  %statement215 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %179, i32 0, i32 8, !dbg !2374
  %180 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement215, align 8, !dbg !2374, !tbaa !1150
  call void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %180), !dbg !2375
  %181 = load i8*, i8** %operation_cstr, align 8, !dbg !2376, !tbaa !1009
  %call216 = call i32 @detect_statement_type(i8* %181), !dbg !2377
  store i32 %call216, i32* %statement_type, align 4, !dbg !2378, !tbaa !1143
  %182 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2379, !tbaa !1009
  %connection217 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %182, i32 0, i32 1, !dbg !2380
  %183 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection217, align 8, !dbg !2380, !tbaa !1086
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %183, i32 0, i32 7, !dbg !2381
  %184 = load i8*, i8** %begin_statement, align 8, !dbg !2381, !tbaa !2382
  %tobool218 = icmp ne i8* %184, null, !dbg !2379
  br i1 %tobool218, label %if.then.219, label %if.end.268, !dbg !2383

if.then.219:                                      ; preds = %if.end.212
  %185 = load i32, i32* %statement_type, align 4, !dbg !2384, !tbaa !1143
  switch i32 %185, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb.241
    i32 5, label %sw.bb.264
  ], !dbg !2385

sw.bb:                                            ; preds = %if.then.219, %if.then.219, %if.then.219, %if.then.219
  %186 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2386, !tbaa !1009
  %connection220 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %186, i32 0, i32 1, !dbg !2387
  %187 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection220, align 8, !dbg !2387, !tbaa !1086
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %187, i32 0, i32 2, !dbg !2388
  %188 = load i8, i8* %inTransaction, align 1, !dbg !2388, !tbaa !2389
  %tobool221 = icmp ne i8 %188, 0, !dbg !2386
  br i1 %tobool221, label %if.end.240, label %if.then.222, !dbg !2390

if.then.222:                                      ; preds = %sw.bb
  %189 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2391, !tbaa !1009
  %connection223 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %189, i32 0, i32 1, !dbg !2392
  %190 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection223, align 8, !dbg !2392, !tbaa !1086
  %call224 = call %struct._object* @_pysqlite_connection_begin(%struct.pysqlite_Connection* %190), !dbg !2393
  store %struct._object* %call224, %struct._object** %result, align 8, !dbg !2394, !tbaa !1009
  %191 = load %struct._object*, %struct._object** %result, align 8, !dbg !2395, !tbaa !1009
  %tobool225 = icmp ne %struct._object* %191, null, !dbg !2395
  br i1 %tobool225, label %if.end.227, label %if.then.226, !dbg !2397

if.then.226:                                      ; preds = %if.then.222
  br label %error, !dbg !2398

if.end.227:                                       ; preds = %if.then.222
  br label %do.body.228, !dbg !2400

do.body.228:                                      ; preds = %if.end.227
  %192 = bitcast %struct._object** %_py_decref_tmp229 to i8*, !dbg !2401
  call void @llvm.lifetime.start(i64 8, i8* %192) #2, !dbg !2401
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp229, metadata !697, metadata !1013), !dbg !2403
  %193 = load %struct._object*, %struct._object** %result, align 8, !dbg !2404, !tbaa !1009
  store %struct._object* %193, %struct._object** %_py_decref_tmp229, align 8, !dbg !2403, !tbaa !1009
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !2405, !tbaa !1009
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %194, i32 0, i32 0, !dbg !2407
  %195 = load i64, i64* %ob_refcnt230, align 8, !dbg !2408, !tbaa !1040
  %dec231 = add i64 %195, -1, !dbg !2408
  store i64 %dec231, i64* %ob_refcnt230, align 8, !dbg !2408, !tbaa !1040
  %cmp232 = icmp ne i64 %dec231, 0, !dbg !2409
  br i1 %cmp232, label %if.then.233, label %if.else.234, !dbg !2410

if.then.233:                                      ; preds = %do.body.228
  br label %if.end.237, !dbg !2411

if.else.234:                                      ; preds = %do.body.228
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !2413, !tbaa !1009
  %ob_type235 = getelementptr inbounds %struct._object, %struct._object* %196, i32 0, i32 1, !dbg !2415
  %197 = load %struct._typeobject*, %struct._typeobject** %ob_type235, align 8, !dbg !2415, !tbaa !1050
  %tp_dealloc236 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %197, i32 0, i32 4, !dbg !2416
  %198 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc236, align 8, !dbg !2416, !tbaa !1052
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp229, align 8, !dbg !2417, !tbaa !1009
  call void %198(%struct._object* %199), !dbg !2418
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.234, %if.then.233
  %200 = bitcast %struct._object** %_py_decref_tmp229 to i8*, !dbg !2419
  call void @llvm.lifetime.end(i64 8, i8* %200) #2, !dbg !2419
  br label %do.cond.238, !dbg !2421

do.cond.238:                                      ; preds = %if.end.237
  br label %do.end.239, !dbg !2422

do.end.239:                                       ; preds = %do.cond.238
  br label %if.end.240, !dbg !2424

if.end.240:                                       ; preds = %do.end.239, %sw.bb
  br label %sw.epilog, !dbg !2425

sw.bb.241:                                        ; preds = %if.then.219
  %201 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2426, !tbaa !1009
  %connection242 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %201, i32 0, i32 1, !dbg !2427
  %202 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection242, align 8, !dbg !2427, !tbaa !1086
  %inTransaction243 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %202, i32 0, i32 2, !dbg !2428
  %203 = load i8, i8* %inTransaction243, align 1, !dbg !2428, !tbaa !2389
  %tobool244 = icmp ne i8 %203, 0, !dbg !2426
  br i1 %tobool244, label %if.then.245, label %if.end.263, !dbg !2429

if.then.245:                                      ; preds = %sw.bb.241
  %204 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2430, !tbaa !1009
  %connection246 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %204, i32 0, i32 1, !dbg !2431
  %205 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection246, align 8, !dbg !2431, !tbaa !1086
  %call247 = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %205, %struct._object* null), !dbg !2432
  store %struct._object* %call247, %struct._object** %result, align 8, !dbg !2433, !tbaa !1009
  %206 = load %struct._object*, %struct._object** %result, align 8, !dbg !2434, !tbaa !1009
  %tobool248 = icmp ne %struct._object* %206, null, !dbg !2434
  br i1 %tobool248, label %if.end.250, label %if.then.249, !dbg !2436

if.then.249:                                      ; preds = %if.then.245
  br label %error, !dbg !2437

if.end.250:                                       ; preds = %if.then.245
  br label %do.body.251, !dbg !2439

do.body.251:                                      ; preds = %if.end.250
  %207 = bitcast %struct._object** %_py_decref_tmp252 to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 8, i8* %207) #2, !dbg !2440
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp252, metadata !704, metadata !1013), !dbg !2442
  %208 = load %struct._object*, %struct._object** %result, align 8, !dbg !2443, !tbaa !1009
  store %struct._object* %208, %struct._object** %_py_decref_tmp252, align 8, !dbg !2442, !tbaa !1009
  %209 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8, !dbg !2444, !tbaa !1009
  %ob_refcnt253 = getelementptr inbounds %struct._object, %struct._object* %209, i32 0, i32 0, !dbg !2446
  %210 = load i64, i64* %ob_refcnt253, align 8, !dbg !2447, !tbaa !1040
  %dec254 = add i64 %210, -1, !dbg !2447
  store i64 %dec254, i64* %ob_refcnt253, align 8, !dbg !2447, !tbaa !1040
  %cmp255 = icmp ne i64 %dec254, 0, !dbg !2448
  br i1 %cmp255, label %if.then.256, label %if.else.257, !dbg !2449

if.then.256:                                      ; preds = %do.body.251
  br label %if.end.260, !dbg !2450

if.else.257:                                      ; preds = %do.body.251
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8, !dbg !2452, !tbaa !1009
  %ob_type258 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 1, !dbg !2454
  %212 = load %struct._typeobject*, %struct._typeobject** %ob_type258, align 8, !dbg !2454, !tbaa !1050
  %tp_dealloc259 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %212, i32 0, i32 4, !dbg !2455
  %213 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc259, align 8, !dbg !2455, !tbaa !1052
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp252, align 8, !dbg !2456, !tbaa !1009
  call void %213(%struct._object* %214), !dbg !2457
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.256
  %215 = bitcast %struct._object** %_py_decref_tmp252 to i8*, !dbg !2458
  call void @llvm.lifetime.end(i64 8, i8* %215) #2, !dbg !2458
  br label %do.cond.261, !dbg !2460

do.cond.261:                                      ; preds = %if.end.260
  br label %do.end.262, !dbg !2461

do.end.262:                                       ; preds = %do.cond.261
  br label %if.end.263, !dbg !2463

if.end.263:                                       ; preds = %do.end.262, %sw.bb.241
  br label %sw.epilog, !dbg !2464

sw.bb.264:                                        ; preds = %if.then.219
  %216 = load i32, i32* %multiple.addr, align 4, !dbg !2465, !tbaa !1143
  %tobool265 = icmp ne i32 %216, 0, !dbg !2465
  br i1 %tobool265, label %if.then.266, label %if.end.267, !dbg !2467

if.then.266:                                      ; preds = %sw.bb.264
  %217 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !2468, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %217, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0)), !dbg !2470
  br label %error, !dbg !2471

if.end.267:                                       ; preds = %sw.bb.264
  br label %sw.epilog, !dbg !2472

sw.epilog:                                        ; preds = %if.then.219, %if.end.267, %if.end.263, %if.end.240
  br label %if.end.268, !dbg !2473

if.end.268:                                       ; preds = %sw.epilog, %if.end.212
  br label %while.cond, !dbg !2474

while.cond:                                       ; preds = %do.end.488, %if.end.268
  br label %while.body, !dbg !2475

while.body:                                       ; preds = %while.cond
  %218 = load %struct._object*, %struct._object** %parameters_iter, align 8, !dbg !2478, !tbaa !1009
  %call269 = call %struct._object* @PyIter_Next(%struct._object* %218), !dbg !2479
  store %struct._object* %call269, %struct._object** %parameters, align 8, !dbg !2480, !tbaa !1009
  %219 = load %struct._object*, %struct._object** %parameters, align 8, !dbg !2481, !tbaa !1009
  %tobool270 = icmp ne %struct._object* %219, null, !dbg !2481
  br i1 %tobool270, label %if.end.272, label %if.then.271, !dbg !2483

if.then.271:                                      ; preds = %while.body
  br label %while.end.489, !dbg !2484

if.end.272:                                       ; preds = %while.body
  %220 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2486, !tbaa !1009
  %statement273 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %220, i32 0, i32 8, !dbg !2487
  %221 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement273, align 8, !dbg !2487, !tbaa !1150
  call void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %221), !dbg !2488
  %222 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2489, !tbaa !1009
  %statement274 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %222, i32 0, i32 8, !dbg !2490
  %223 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement274, align 8, !dbg !2490, !tbaa !1150
  %224 = load %struct._object*, %struct._object** %parameters, align 8, !dbg !2491, !tbaa !1009
  call void @pysqlite_statement_bind_parameters(%struct.pysqlite_Statement* %223, %struct._object* %224), !dbg !2492
  %call275 = call %struct._object* @PyErr_Occurred(), !dbg !2493
  %tobool276 = icmp ne %struct._object* %call275, null, !dbg !2493
  br i1 %tobool276, label %if.then.277, label %if.end.278, !dbg !2495

if.then.277:                                      ; preds = %if.end.272
  br label %error, !dbg !2496

if.end.278:                                       ; preds = %if.end.272
  br label %while.cond.279, !dbg !2498

while.cond.279:                                   ; preds = %if.then.295, %if.end.278
  br label %while.body.280, !dbg !2499

while.body.280:                                   ; preds = %while.cond.279
  %225 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2501, !tbaa !1009
  %statement281 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %225, i32 0, i32 8, !dbg !2503
  %226 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement281, align 8, !dbg !2503, !tbaa !1150
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %226, i32 0, i32 2, !dbg !2504
  %227 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !2504, !tbaa !1152
  %228 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2505, !tbaa !1009
  %connection282 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %228, i32 0, i32 1, !dbg !2506
  %229 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection282, align 8, !dbg !2506, !tbaa !1086
  %call283 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %227, %struct.pysqlite_Connection* %229), !dbg !2507
  store i32 %call283, i32* %rc, align 4, !dbg !2508, !tbaa !1143
  %230 = load i32, i32* %rc, align 4, !dbg !2509, !tbaa !1143
  %cmp284 = icmp eq i32 %230, 101, !dbg !2511
  br i1 %cmp284, label %if.then.286, label %lor.lhs.false, !dbg !2512

lor.lhs.false:                                    ; preds = %while.body.280
  %231 = load i32, i32* %rc, align 4, !dbg !2513, !tbaa !1143
  %cmp285 = icmp eq i32 %231, 100, !dbg !2515
  br i1 %cmp285, label %if.then.286, label %if.end.287, !dbg !2516

if.then.286:                                      ; preds = %lor.lhs.false, %while.body.280
  br label %while.end, !dbg !2517

if.end.287:                                       ; preds = %lor.lhs.false
  %232 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2519, !tbaa !1009
  %statement288 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %232, i32 0, i32 8, !dbg !2520
  %233 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement288, align 8, !dbg !2520, !tbaa !1150
  %call289 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %233), !dbg !2521
  store i32 %call289, i32* %rc, align 4, !dbg !2522, !tbaa !1143
  %234 = load i32, i32* %rc, align 4, !dbg !2523, !tbaa !1143
  %cmp290 = icmp eq i32 %234, 17, !dbg !2525
  br i1 %cmp290, label %if.then.291, label %if.else.301, !dbg !2526

if.then.291:                                      ; preds = %if.end.287
  %235 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2527, !tbaa !1009
  %statement292 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %235, i32 0, i32 8, !dbg !2529
  %236 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement292, align 8, !dbg !2529, !tbaa !1150
  %237 = load %struct._object*, %struct._object** %parameters, align 8, !dbg !2530, !tbaa !1009
  %call293 = call i32 @pysqlite_statement_recompile(%struct.pysqlite_Statement* %236, %struct._object* %237), !dbg !2531
  store i32 %call293, i32* %rc, align 4, !dbg !2532, !tbaa !1143
  %238 = load i32, i32* %rc, align 4, !dbg !2533, !tbaa !1143
  %cmp294 = icmp eq i32 %238, 0, !dbg !2535
  br i1 %cmp294, label %if.then.295, label %if.else.296, !dbg !2536

if.then.295:                                      ; preds = %if.then.291
  br label %while.cond.279, !dbg !2537

if.else.296:                                      ; preds = %if.then.291
  %239 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2539, !tbaa !1009
  %statement297 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %239, i32 0, i32 8, !dbg !2541
  %240 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement297, align 8, !dbg !2541, !tbaa !1150
  %call298 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %240), !dbg !2542
  %241 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2543, !tbaa !1009
  %connection299 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %241, i32 0, i32 1, !dbg !2544
  %242 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection299, align 8, !dbg !2544, !tbaa !1086
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %242, i32 0, i32 1, !dbg !2545
  %243 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2545, !tbaa !2546
  %call300 = call i32 @_pysqlite_seterror(%struct.sqlite3* %243, %struct.sqlite3_stmt* null), !dbg !2547
  br label %error, !dbg !2548

if.else.301:                                      ; preds = %if.end.287
  %call302 = call %struct._object* @PyErr_Occurred(), !dbg !2549
  %tobool303 = icmp ne %struct._object* %call302, null, !dbg !2549
  br i1 %tobool303, label %if.then.304, label %if.end.309, !dbg !2552

if.then.304:                                      ; preds = %if.else.301
  %244 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !2553, !tbaa !1143
  %tobool305 = icmp ne i32 %244, 0, !dbg !2553
  br i1 %tobool305, label %if.then.306, label %if.else.307, !dbg !2556

if.then.306:                                      ; preds = %if.then.304
  call void @PyErr_Print(), !dbg !2557
  br label %if.end.308, !dbg !2559

if.else.307:                                      ; preds = %if.then.304
  call void @PyErr_Clear(), !dbg !2560
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.307, %if.then.306
  br label %if.end.309, !dbg !2562

if.end.309:                                       ; preds = %if.end.308, %if.else.301
  %245 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2563, !tbaa !1009
  %statement310 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %245, i32 0, i32 8, !dbg !2564
  %246 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement310, align 8, !dbg !2564, !tbaa !1150
  %call311 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %246), !dbg !2565
  %247 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2566, !tbaa !1009
  %connection312 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %247, i32 0, i32 1, !dbg !2567
  %248 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection312, align 8, !dbg !2567, !tbaa !1086
  %db313 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %248, i32 0, i32 1, !dbg !2568
  %249 = load %struct.sqlite3*, %struct.sqlite3** %db313, align 8, !dbg !2568, !tbaa !2546
  %call314 = call i32 @_pysqlite_seterror(%struct.sqlite3* %249, %struct.sqlite3_stmt* null), !dbg !2569
  br label %error, !dbg !2570

while.end:                                        ; preds = %if.then.286
  %250 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2571, !tbaa !1009
  %call315 = call i32 @pysqlite_build_row_cast_map(%struct.pysqlite_Cursor* %250), !dbg !2573
  %cmp316 = icmp ne i32 %call315, 0, !dbg !2574
  br i1 %cmp316, label %if.then.317, label %if.end.318, !dbg !2575

if.then.317:                                      ; preds = %while.end
  %251 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !2576, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %251, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0)), !dbg !2578
  br label %error, !dbg !2579

if.end.318:                                       ; preds = %while.end
  %252 = load i32, i32* %rc, align 4, !dbg !2580, !tbaa !1143
  %cmp319 = icmp eq i32 %252, 100, !dbg !2581
  br i1 %cmp319, label %if.then.324, label %lor.lhs.false.320, !dbg !2582

lor.lhs.false.320:                                ; preds = %if.end.318
  %253 = load i32, i32* %rc, align 4, !dbg !2583, !tbaa !1143
  %cmp321 = icmp eq i32 %253, 101, !dbg !2585
  br i1 %cmp321, label %land.lhs.true.322, label %if.end.379, !dbg !2586

land.lhs.true.322:                                ; preds = %lor.lhs.false.320
  %254 = load i32, i32* %statement_type, align 4, !dbg !2587, !tbaa !1143
  %cmp323 = icmp eq i32 %254, 5, !dbg !2589
  br i1 %cmp323, label %if.then.324, label %if.end.379, !dbg !2590

if.then.324:                                      ; preds = %land.lhs.true.322, %if.end.318
  %255 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2591, !tbaa !1009
  %description325 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %255, i32 0, i32 2, !dbg !2592
  %256 = load %struct._object*, %struct._object** %description325, align 8, !dbg !2592, !tbaa !2152
  %cmp326 = icmp eq %struct._object* %256, @_Py_NoneStruct, !dbg !2593
  br i1 %cmp326, label %if.then.327, label %if.end.378, !dbg !2594

if.then.327:                                      ; preds = %if.then.324
  %257 = bitcast %struct._ts** %_save to i8*, !dbg !2595
  call void @llvm.lifetime.start(i64 8, i8* %257) #2, !dbg !2595
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !708, metadata !1013), !dbg !2596
  %call328 = call %struct._ts* @PyEval_SaveThread(), !dbg !2597
  store %struct._ts* %call328, %struct._ts** %_save, align 8, !dbg !2598, !tbaa !1009
  %258 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2599, !tbaa !1009
  %statement329 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %258, i32 0, i32 8, !dbg !2600
  %259 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement329, align 8, !dbg !2600, !tbaa !1150
  %st330 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %259, i32 0, i32 2, !dbg !2601
  %260 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st330, align 8, !dbg !2601, !tbaa !1152
  %call331 = call i32 @sqlite3_column_count(%struct.sqlite3_stmt* %260), !dbg !2602
  store i32 %call331, i32* %numcols, align 4, !dbg !2603, !tbaa !1143
  %261 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2604, !tbaa !1009
  call void @PyEval_RestoreThread(%struct._ts* %261), !dbg !2605
  %262 = bitcast %struct._ts** %_save to i8*, !dbg !2606
  call void @llvm.lifetime.end(i64 8, i8* %262) #2, !dbg !2606
  br label %do.body.332, !dbg !2607

do.body.332:                                      ; preds = %if.then.327
  %263 = bitcast %struct._object** %_py_decref_tmp333 to i8*, !dbg !2608
  call void @llvm.lifetime.start(i64 8, i8* %263) #2, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp333, metadata !715, metadata !1013), !dbg !2610
  %264 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2611, !tbaa !1009
  %description334 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %264, i32 0, i32 2, !dbg !2612
  %265 = load %struct._object*, %struct._object** %description334, align 8, !dbg !2612, !tbaa !2152
  store %struct._object* %265, %struct._object** %_py_decref_tmp333, align 8, !dbg !2610, !tbaa !1009
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8, !dbg !2613, !tbaa !1009
  %ob_refcnt335 = getelementptr inbounds %struct._object, %struct._object* %266, i32 0, i32 0, !dbg !2615
  %267 = load i64, i64* %ob_refcnt335, align 8, !dbg !2616, !tbaa !1040
  %dec336 = add i64 %267, -1, !dbg !2616
  store i64 %dec336, i64* %ob_refcnt335, align 8, !dbg !2616, !tbaa !1040
  %cmp337 = icmp ne i64 %dec336, 0, !dbg !2617
  br i1 %cmp337, label %if.then.338, label %if.else.339, !dbg !2618

if.then.338:                                      ; preds = %do.body.332
  br label %if.end.342, !dbg !2619

if.else.339:                                      ; preds = %do.body.332
  %268 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8, !dbg !2621, !tbaa !1009
  %ob_type340 = getelementptr inbounds %struct._object, %struct._object* %268, i32 0, i32 1, !dbg !2623
  %269 = load %struct._typeobject*, %struct._typeobject** %ob_type340, align 8, !dbg !2623, !tbaa !1050
  %tp_dealloc341 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %269, i32 0, i32 4, !dbg !2624
  %270 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc341, align 8, !dbg !2624, !tbaa !1052
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp333, align 8, !dbg !2625, !tbaa !1009
  call void %270(%struct._object* %271), !dbg !2626
  br label %if.end.342

if.end.342:                                       ; preds = %if.else.339, %if.then.338
  %272 = bitcast %struct._object** %_py_decref_tmp333 to i8*, !dbg !2627
  call void @llvm.lifetime.end(i64 8, i8* %272) #2, !dbg !2627
  br label %do.cond.343, !dbg !2629

do.cond.343:                                      ; preds = %if.end.342
  br label %do.end.344, !dbg !2630

do.end.344:                                       ; preds = %do.cond.343
  %273 = load i32, i32* %numcols, align 4, !dbg !2632, !tbaa !1143
  %conv = sext i32 %273 to i64, !dbg !2632
  %call345 = call %struct._object* @PyTuple_New(i64 %conv), !dbg !2633
  %274 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2634, !tbaa !1009
  %description346 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %274, i32 0, i32 2, !dbg !2635
  store %struct._object* %call345, %struct._object** %description346, align 8, !dbg !2636, !tbaa !2152
  %275 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2637, !tbaa !1009
  %description347 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %275, i32 0, i32 2, !dbg !2639
  %276 = load %struct._object*, %struct._object** %description347, align 8, !dbg !2639, !tbaa !2152
  %tobool348 = icmp ne %struct._object* %276, null, !dbg !2637
  br i1 %tobool348, label %if.end.350, label %if.then.349, !dbg !2640

if.then.349:                                      ; preds = %do.end.344
  br label %error, !dbg !2641

if.end.350:                                       ; preds = %do.end.344
  store i32 0, i32* %i, align 4, !dbg !2643, !tbaa !1143
  br label %for.cond, !dbg !2645

for.cond:                                         ; preds = %for.inc, %if.end.350
  %277 = load i32, i32* %i, align 4, !dbg !2646, !tbaa !1143
  %278 = load i32, i32* %numcols, align 4, !dbg !2650, !tbaa !1143
  %cmp351 = icmp slt i32 %277, %278, !dbg !2651
  br i1 %cmp351, label %for.body, label %for.end, !dbg !2652

for.body:                                         ; preds = %for.cond
  %call353 = call %struct._object* @PyTuple_New(i64 7), !dbg !2653
  store %struct._object* %call353, %struct._object** %descriptor, align 8, !dbg !2655, !tbaa !1009
  %279 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2656, !tbaa !1009
  %tobool354 = icmp ne %struct._object* %279, null, !dbg !2656
  br i1 %tobool354, label %if.end.356, label %if.then.355, !dbg !2658

if.then.355:                                      ; preds = %for.body
  br label %error, !dbg !2659

if.end.356:                                       ; preds = %for.body
  %280 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2661, !tbaa !1009
  %281 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2662, !tbaa !1009
  %statement357 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %281, i32 0, i32 8, !dbg !2663
  %282 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement357, align 8, !dbg !2663, !tbaa !1150
  %st358 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %282, i32 0, i32 2, !dbg !2664
  %283 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st358, align 8, !dbg !2664, !tbaa !1152
  %284 = load i32, i32* %i, align 4, !dbg !2665, !tbaa !1143
  %call359 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %283, i32 %284), !dbg !2666
  %call360 = call %struct._object* @_pysqlite_build_column_name(i8* %call359), !dbg !2667
  %call361 = call i32 @PyTuple_SetItem(%struct._object* %280, i64 0, %struct._object* %call360), !dbg !2668
  %285 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2669, !tbaa !1040
  %inc362 = add i64 %285, 1, !dbg !2669
  store i64 %inc362, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2669, !tbaa !1040
  %286 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2670, !tbaa !1009
  %call363 = call i32 @PyTuple_SetItem(%struct._object* %286, i64 1, %struct._object* @_Py_NoneStruct), !dbg !2671
  %287 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2672, !tbaa !1040
  %inc364 = add i64 %287, 1, !dbg !2672
  store i64 %inc364, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2672, !tbaa !1040
  %288 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2673, !tbaa !1009
  %call365 = call i32 @PyTuple_SetItem(%struct._object* %288, i64 2, %struct._object* @_Py_NoneStruct), !dbg !2674
  %289 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2675, !tbaa !1040
  %inc366 = add i64 %289, 1, !dbg !2675
  store i64 %inc366, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2675, !tbaa !1040
  %290 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2676, !tbaa !1009
  %call367 = call i32 @PyTuple_SetItem(%struct._object* %290, i64 3, %struct._object* @_Py_NoneStruct), !dbg !2677
  %291 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2678, !tbaa !1040
  %inc368 = add i64 %291, 1, !dbg !2678
  store i64 %inc368, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2678, !tbaa !1040
  %292 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2679, !tbaa !1009
  %call369 = call i32 @PyTuple_SetItem(%struct._object* %292, i64 4, %struct._object* @_Py_NoneStruct), !dbg !2680
  %293 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2681, !tbaa !1040
  %inc370 = add i64 %293, 1, !dbg !2681
  store i64 %inc370, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2681, !tbaa !1040
  %294 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2682, !tbaa !1009
  %call371 = call i32 @PyTuple_SetItem(%struct._object* %294, i64 5, %struct._object* @_Py_NoneStruct), !dbg !2683
  %295 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2684, !tbaa !1040
  %inc372 = add i64 %295, 1, !dbg !2684
  store i64 %inc372, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2684, !tbaa !1040
  %296 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2685, !tbaa !1009
  %call373 = call i32 @PyTuple_SetItem(%struct._object* %296, i64 6, %struct._object* @_Py_NoneStruct), !dbg !2686
  %297 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2687, !tbaa !1009
  %description374 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %297, i32 0, i32 2, !dbg !2688
  %298 = load %struct._object*, %struct._object** %description374, align 8, !dbg !2688, !tbaa !2152
  %299 = load i32, i32* %i, align 4, !dbg !2689, !tbaa !1143
  %conv375 = sext i32 %299 to i64, !dbg !2689
  %300 = load %struct._object*, %struct._object** %descriptor, align 8, !dbg !2690, !tbaa !1009
  %call376 = call i32 @PyTuple_SetItem(%struct._object* %298, i64 %conv375, %struct._object* %300), !dbg !2691
  br label %for.inc, !dbg !2692

for.inc:                                          ; preds = %if.end.356
  %301 = load i32, i32* %i, align 4, !dbg !2693, !tbaa !1143
  %inc377 = add i32 %301, 1, !dbg !2693
  store i32 %inc377, i32* %i, align 4, !dbg !2693, !tbaa !1143
  br label %for.cond, !dbg !2694

for.end:                                          ; preds = %for.cond
  br label %if.end.378, !dbg !2695

if.end.378:                                       ; preds = %for.end, %if.then.324
  br label %if.end.379, !dbg !2696

if.end.379:                                       ; preds = %if.end.378, %land.lhs.true.322, %lor.lhs.false.320
  %302 = load i32, i32* %rc, align 4, !dbg !2697, !tbaa !1143
  %cmp380 = icmp eq i32 %302, 100, !dbg !2698
  br i1 %cmp380, label %if.then.382, label %if.else.388, !dbg !2699

if.then.382:                                      ; preds = %if.end.379
  %303 = load i32, i32* %multiple.addr, align 4, !dbg !2700, !tbaa !1143
  %tobool383 = icmp ne i32 %303, 0, !dbg !2700
  br i1 %tobool383, label %if.then.384, label %if.end.385, !dbg !2703

if.then.384:                                      ; preds = %if.then.382
  %304 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !2704, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %304, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0)), !dbg !2706
  br label %error, !dbg !2707

if.end.385:                                       ; preds = %if.then.382
  %305 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2708, !tbaa !1009
  %call386 = call %struct._object* @_pysqlite_fetch_one_row(%struct.pysqlite_Cursor* %305), !dbg !2709
  %306 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2710, !tbaa !1009
  %next_row387 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %306, i32 0, i32 13, !dbg !2711
  store %struct._object* %call386, %struct._object** %next_row387, align 8, !dbg !2712, !tbaa !1934
  br label %if.end.420, !dbg !2713

if.else.388:                                      ; preds = %if.end.379
  %307 = load i32, i32* %rc, align 4, !dbg !2714, !tbaa !1143
  %cmp389 = icmp eq i32 %307, 101, !dbg !2715
  br i1 %cmp389, label %land.lhs.true.391, label %if.end.419, !dbg !2716

land.lhs.true.391:                                ; preds = %if.else.388
  %308 = load i32, i32* %multiple.addr, align 4, !dbg !2717, !tbaa !1143
  %tobool392 = icmp ne i32 %308, 0, !dbg !2717
  br i1 %tobool392, label %if.end.419, label %if.then.393, !dbg !2719

if.then.393:                                      ; preds = %land.lhs.true.391
  %309 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2720, !tbaa !1009
  %statement394 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %309, i32 0, i32 8, !dbg !2721
  %310 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement394, align 8, !dbg !2721, !tbaa !1150
  %call395 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %310), !dbg !2722
  br label %do.body.396, !dbg !2723

do.body.396:                                      ; preds = %if.then.393
  %311 = bitcast %struct._object** %_py_tmp397 to i8*, !dbg !2724
  call void @llvm.lifetime.start(i64 8, i8* %311) #2, !dbg !2724
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp397, metadata !717, metadata !1013), !dbg !2726
  %312 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2727, !tbaa !1009
  %statement398 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %312, i32 0, i32 8, !dbg !2728
  %313 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement398, align 8, !dbg !2728, !tbaa !1150
  %314 = bitcast %struct.pysqlite_Statement* %313 to %struct._object*, !dbg !2729
  store %struct._object* %314, %struct._object** %_py_tmp397, align 8, !dbg !2726, !tbaa !1009
  %315 = load %struct._object*, %struct._object** %_py_tmp397, align 8, !dbg !2730, !tbaa !1009
  %cmp399 = icmp ne %struct._object* %315, null, !dbg !2731
  br i1 %cmp399, label %if.then.401, label %if.end.416, !dbg !2732

if.then.401:                                      ; preds = %do.body.396
  %316 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2733, !tbaa !1009
  %statement402 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %316, i32 0, i32 8, !dbg !2735
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement402, align 8, !dbg !2736, !tbaa !1150
  br label %do.body.403, !dbg !2737

do.body.403:                                      ; preds = %if.then.401
  %317 = bitcast %struct._object** %_py_decref_tmp404 to i8*, !dbg !2738
  call void @llvm.lifetime.start(i64 8, i8* %317) #2, !dbg !2738
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp404, metadata !722, metadata !1013), !dbg !2740
  %318 = load %struct._object*, %struct._object** %_py_tmp397, align 8, !dbg !2741, !tbaa !1009
  store %struct._object* %318, %struct._object** %_py_decref_tmp404, align 8, !dbg !2740, !tbaa !1009
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2742, !tbaa !1009
  %ob_refcnt405 = getelementptr inbounds %struct._object, %struct._object* %319, i32 0, i32 0, !dbg !2744
  %320 = load i64, i64* %ob_refcnt405, align 8, !dbg !2745, !tbaa !1040
  %dec406 = add i64 %320, -1, !dbg !2745
  store i64 %dec406, i64* %ob_refcnt405, align 8, !dbg !2745, !tbaa !1040
  %cmp407 = icmp ne i64 %dec406, 0, !dbg !2746
  br i1 %cmp407, label %if.then.409, label %if.else.410, !dbg !2747

if.then.409:                                      ; preds = %do.body.403
  br label %if.end.413, !dbg !2748

if.else.410:                                      ; preds = %do.body.403
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2750, !tbaa !1009
  %ob_type411 = getelementptr inbounds %struct._object, %struct._object* %321, i32 0, i32 1, !dbg !2752
  %322 = load %struct._typeobject*, %struct._typeobject** %ob_type411, align 8, !dbg !2752, !tbaa !1050
  %tp_dealloc412 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %322, i32 0, i32 4, !dbg !2753
  %323 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc412, align 8, !dbg !2753, !tbaa !1052
  %324 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8, !dbg !2754, !tbaa !1009
  call void %323(%struct._object* %324), !dbg !2755
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.410, %if.then.409
  %325 = bitcast %struct._object** %_py_decref_tmp404 to i8*, !dbg !2756
  call void @llvm.lifetime.end(i64 8, i8* %325) #2, !dbg !2756
  br label %do.cond.414, !dbg !2758

do.cond.414:                                      ; preds = %if.end.413
  br label %do.end.415, !dbg !2759

do.end.415:                                       ; preds = %do.cond.414
  br label %if.end.416, !dbg !2761

if.end.416:                                       ; preds = %do.end.415, %do.body.396
  %326 = bitcast %struct._object** %_py_tmp397 to i8*, !dbg !2763
  call void @llvm.lifetime.end(i64 8, i8* %326) #2, !dbg !2763
  br label %do.cond.417, !dbg !2766

do.cond.417:                                      ; preds = %if.end.416
  br label %do.end.418, !dbg !2767

do.end.418:                                       ; preds = %do.cond.417
  br label %if.end.419, !dbg !2769

if.end.419:                                       ; preds = %do.end.418, %land.lhs.true.391, %if.else.388
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.end.385
  %327 = load i32, i32* %statement_type, align 4, !dbg !2770, !tbaa !1143
  switch i32 %327, label %sw.epilog.433 [
    i32 3, label %sw.bb.421
    i32 2, label %sw.bb.421
    i32 1, label %sw.bb.421
    i32 4, label %sw.bb.421
  ], !dbg !2771

sw.bb.421:                                        ; preds = %if.end.420, %if.end.420, %if.end.420, %if.end.420
  %328 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2772, !tbaa !1009
  %rowcount422 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %328, i32 0, i32 6, !dbg !2775
  %329 = load i64, i64* %rowcount422, align 8, !dbg !2775, !tbaa !2179
  %cmp423 = icmp eq i64 %329, -1, !dbg !2776
  br i1 %cmp423, label %if.then.425, label %if.end.427, !dbg !2777

if.then.425:                                      ; preds = %sw.bb.421
  %330 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2778, !tbaa !1009
  %rowcount426 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %330, i32 0, i32 6, !dbg !2780
  store i64 0, i64* %rowcount426, align 8, !dbg !2781, !tbaa !2179
  br label %if.end.427, !dbg !2782

if.end.427:                                       ; preds = %if.then.425, %sw.bb.421
  %331 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2783, !tbaa !1009
  %connection428 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %331, i32 0, i32 1, !dbg !2784
  %332 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection428, align 8, !dbg !2784, !tbaa !1086
  %db429 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %332, i32 0, i32 1, !dbg !2785
  %333 = load %struct.sqlite3*, %struct.sqlite3** %db429, align 8, !dbg !2785, !tbaa !2546
  %call430 = call i32 @sqlite3_changes(%struct.sqlite3* %333), !dbg !2786
  %conv431 = sext i32 %call430 to i64, !dbg !2787
  %334 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2788, !tbaa !1009
  %rowcount432 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %334, i32 0, i32 6, !dbg !2789
  %335 = load i64, i64* %rowcount432, align 8, !dbg !2790, !tbaa !2179
  %add = add i64 %335, %conv431, !dbg !2790
  store i64 %add, i64* %rowcount432, align 8, !dbg !2790, !tbaa !2179
  br label %sw.epilog.433, !dbg !2791

sw.epilog.433:                                    ; preds = %if.end.427, %if.end.420
  br label %do.body.434, !dbg !2792

do.body.434:                                      ; preds = %sw.epilog.433
  %336 = bitcast %struct._object** %_py_decref_tmp435 to i8*, !dbg !2793
  call void @llvm.lifetime.start(i64 8, i8* %336) #2, !dbg !2793
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp435, metadata !726, metadata !1013), !dbg !2795
  %337 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2796, !tbaa !1009
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %337, i32 0, i32 5, !dbg !2797
  %338 = load %struct._object*, %struct._object** %lastrowid, align 8, !dbg !2797, !tbaa !2798
  store %struct._object* %338, %struct._object** %_py_decref_tmp435, align 8, !dbg !2795, !tbaa !1009
  %339 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8, !dbg !2799, !tbaa !1009
  %ob_refcnt436 = getelementptr inbounds %struct._object, %struct._object* %339, i32 0, i32 0, !dbg !2801
  %340 = load i64, i64* %ob_refcnt436, align 8, !dbg !2802, !tbaa !1040
  %dec437 = add i64 %340, -1, !dbg !2802
  store i64 %dec437, i64* %ob_refcnt436, align 8, !dbg !2802, !tbaa !1040
  %cmp438 = icmp ne i64 %dec437, 0, !dbg !2803
  br i1 %cmp438, label %if.then.440, label %if.else.441, !dbg !2804

if.then.440:                                      ; preds = %do.body.434
  br label %if.end.444, !dbg !2805

if.else.441:                                      ; preds = %do.body.434
  %341 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8, !dbg !2807, !tbaa !1009
  %ob_type442 = getelementptr inbounds %struct._object, %struct._object* %341, i32 0, i32 1, !dbg !2809
  %342 = load %struct._typeobject*, %struct._typeobject** %ob_type442, align 8, !dbg !2809, !tbaa !1050
  %tp_dealloc443 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %342, i32 0, i32 4, !dbg !2810
  %343 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc443, align 8, !dbg !2810, !tbaa !1052
  %344 = load %struct._object*, %struct._object** %_py_decref_tmp435, align 8, !dbg !2811, !tbaa !1009
  call void %343(%struct._object* %344), !dbg !2812
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.441, %if.then.440
  %345 = bitcast %struct._object** %_py_decref_tmp435 to i8*, !dbg !2813
  call void @llvm.lifetime.end(i64 8, i8* %345) #2, !dbg !2813
  br label %do.cond.445, !dbg !2815

do.cond.445:                                      ; preds = %if.end.444
  br label %do.end.446, !dbg !2816

do.end.446:                                       ; preds = %do.cond.445
  %346 = load i32, i32* %multiple.addr, align 4, !dbg !2818, !tbaa !1143
  %tobool447 = icmp ne i32 %346, 0, !dbg !2818
  br i1 %tobool447, label %if.else.460, label %land.lhs.true.448, !dbg !2819

land.lhs.true.448:                                ; preds = %do.end.446
  %347 = load i32, i32* %statement_type, align 4, !dbg !2820, !tbaa !1143
  %cmp449 = icmp eq i32 %347, 1, !dbg !2822
  br i1 %cmp449, label %if.then.451, label %if.else.460, !dbg !2823

if.then.451:                                      ; preds = %land.lhs.true.448
  %348 = bitcast i64* %lastrowid452 to i8*, !dbg !2824
  call void @llvm.lifetime.start(i64 8, i8* %348) #2, !dbg !2824
  call void @llvm.dbg.declare(metadata i64* %lastrowid452, metadata !728, metadata !1013), !dbg !2825
  %349 = bitcast %struct._ts** %_save453 to i8*, !dbg !2826
  call void @llvm.lifetime.start(i64 8, i8* %349) #2, !dbg !2826
  call void @llvm.dbg.declare(metadata %struct._ts** %_save453, metadata !733, metadata !1013), !dbg !2827
  %call454 = call %struct._ts* @PyEval_SaveThread(), !dbg !2828
  store %struct._ts* %call454, %struct._ts** %_save453, align 8, !dbg !2829, !tbaa !1009
  %350 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2830, !tbaa !1009
  %connection455 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %350, i32 0, i32 1, !dbg !2831
  %351 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection455, align 8, !dbg !2831, !tbaa !1086
  %db456 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %351, i32 0, i32 1, !dbg !2832
  %352 = load %struct.sqlite3*, %struct.sqlite3** %db456, align 8, !dbg !2832, !tbaa !2546
  %call457 = call i64 @sqlite3_last_insert_rowid(%struct.sqlite3* %352), !dbg !2833
  store i64 %call457, i64* %lastrowid452, align 8, !dbg !2834, !tbaa !2835
  %353 = load %struct._ts*, %struct._ts** %_save453, align 8, !dbg !2837, !tbaa !1009
  call void @PyEval_RestoreThread(%struct._ts* %353), !dbg !2838
  %354 = bitcast %struct._ts** %_save453 to i8*, !dbg !2839
  call void @llvm.lifetime.end(i64 8, i8* %354) #2, !dbg !2839
  %355 = load i64, i64* %lastrowid452, align 8, !dbg !2840, !tbaa !2835
  %call458 = call %struct._object* @_pysqlite_long_from_int64(i64 %355), !dbg !2841
  %356 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2842, !tbaa !1009
  %lastrowid459 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %356, i32 0, i32 5, !dbg !2843
  store %struct._object* %call458, %struct._object** %lastrowid459, align 8, !dbg !2844, !tbaa !2798
  %357 = bitcast i64* %lastrowid452 to i8*, !dbg !2845
  call void @llvm.lifetime.end(i64 8, i8* %357) #2, !dbg !2845
  br label %if.end.463, !dbg !2846

if.else.460:                                      ; preds = %land.lhs.true.448, %do.end.446
  %358 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2847, !tbaa !1040
  %inc461 = add i64 %358, 1, !dbg !2847
  store i64 %inc461, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2847, !tbaa !1040
  %359 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2849, !tbaa !1009
  %lastrowid462 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %359, i32 0, i32 5, !dbg !2850
  store %struct._object* @_Py_NoneStruct, %struct._object** %lastrowid462, align 8, !dbg !2851, !tbaa !2798
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.460, %if.then.451
  %360 = load i32, i32* %multiple.addr, align 4, !dbg !2852, !tbaa !1143
  %tobool464 = icmp ne i32 %360, 0, !dbg !2852
  br i1 %tobool464, label %if.then.465, label %if.end.468, !dbg !2854

if.then.465:                                      ; preds = %if.end.463
  %361 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2855, !tbaa !1009
  %statement466 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %361, i32 0, i32 8, !dbg !2857
  %362 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement466, align 8, !dbg !2857, !tbaa !1150
  %call467 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %362), !dbg !2858
  br label %if.end.468, !dbg !2859

if.end.468:                                       ; preds = %if.then.465, %if.end.463
  br label %do.body.469, !dbg !2860

do.body.469:                                      ; preds = %if.end.468
  %363 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2861
  call void @llvm.lifetime.start(i64 8, i8* %363) #2, !dbg !2861
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !735, metadata !1013), !dbg !2863
  %364 = load %struct._object*, %struct._object** %parameters, align 8, !dbg !2864, !tbaa !1009
  store %struct._object* %364, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2863, !tbaa !1009
  %365 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2865, !tbaa !1009
  %cmp470 = icmp ne %struct._object* %365, null, !dbg !2866
  br i1 %cmp470, label %if.then.472, label %if.end.486, !dbg !2867

if.then.472:                                      ; preds = %do.body.469
  br label %do.body.473, !dbg !2868

do.body.473:                                      ; preds = %if.then.472
  %366 = bitcast %struct._object** %_py_decref_tmp474 to i8*, !dbg !2870
  call void @llvm.lifetime.start(i64 8, i8* %366) #2, !dbg !2870
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp474, metadata !737, metadata !1013), !dbg !2872
  %367 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2873, !tbaa !1009
  store %struct._object* %367, %struct._object** %_py_decref_tmp474, align 8, !dbg !2872, !tbaa !1009
  %368 = load %struct._object*, %struct._object** %_py_decref_tmp474, align 8, !dbg !2874, !tbaa !1009
  %ob_refcnt475 = getelementptr inbounds %struct._object, %struct._object* %368, i32 0, i32 0, !dbg !2876
  %369 = load i64, i64* %ob_refcnt475, align 8, !dbg !2877, !tbaa !1040
  %dec476 = add i64 %369, -1, !dbg !2877
  store i64 %dec476, i64* %ob_refcnt475, align 8, !dbg !2877, !tbaa !1040
  %cmp477 = icmp ne i64 %dec476, 0, !dbg !2878
  br i1 %cmp477, label %if.then.479, label %if.else.480, !dbg !2879

if.then.479:                                      ; preds = %do.body.473
  br label %if.end.483, !dbg !2880

if.else.480:                                      ; preds = %do.body.473
  %370 = load %struct._object*, %struct._object** %_py_decref_tmp474, align 8, !dbg !2882, !tbaa !1009
  %ob_type481 = getelementptr inbounds %struct._object, %struct._object* %370, i32 0, i32 1, !dbg !2884
  %371 = load %struct._typeobject*, %struct._typeobject** %ob_type481, align 8, !dbg !2884, !tbaa !1050
  %tp_dealloc482 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %371, i32 0, i32 4, !dbg !2885
  %372 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc482, align 8, !dbg !2885, !tbaa !1052
  %373 = load %struct._object*, %struct._object** %_py_decref_tmp474, align 8, !dbg !2886, !tbaa !1009
  call void %372(%struct._object* %373), !dbg !2887
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.480, %if.then.479
  %374 = bitcast %struct._object** %_py_decref_tmp474 to i8*, !dbg !2888
  call void @llvm.lifetime.end(i64 8, i8* %374) #2, !dbg !2888
  br label %do.cond.484, !dbg !2890

do.cond.484:                                      ; preds = %if.end.483
  br label %do.end.485, !dbg !2891

do.end.485:                                       ; preds = %do.cond.484
  br label %if.end.486, !dbg !2893

if.end.486:                                       ; preds = %do.end.485, %do.body.469
  %375 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2895
  call void @llvm.lifetime.end(i64 8, i8* %375) #2, !dbg !2895
  br label %do.cond.487, !dbg !2898

do.cond.487:                                      ; preds = %if.end.486
  br label %do.end.488, !dbg !2899

do.end.488:                                       ; preds = %do.cond.487
  br label %while.cond, !dbg !2474

while.end.489:                                    ; preds = %if.then.271
  br label %error, !dbg !2474

error:                                            ; preds = %while.end.489, %if.then.384, %if.then.355, %if.then.349, %if.then.317, %if.end.309, %if.else.296, %if.then.277, %if.then.266, %if.then.249, %if.then.226, %do.end.210, %if.then.183, %if.then.161, %if.then.124, %if.then.118, %if.then.100, %if.then.90, %do.end.74, %if.then.54, %if.then.48, %if.then.44, %if.then.38, %if.then.32, %if.then.18, %if.then.14, %if.then
  %376 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2901, !tbaa !1009
  %connection490 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %376, i32 0, i32 1, !dbg !2903
  %377 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection490, align 8, !dbg !2903, !tbaa !1086
  %tobool491 = icmp ne %struct.pysqlite_Connection* %377, null, !dbg !2901
  br i1 %tobool491, label %land.lhs.true.492, label %if.end.504, !dbg !2904

land.lhs.true.492:                                ; preds = %error
  %378 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2905, !tbaa !1009
  %connection493 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %378, i32 0, i32 1, !dbg !2907
  %379 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection493, align 8, !dbg !2907, !tbaa !1086
  %db494 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %379, i32 0, i32 1, !dbg !2908
  %380 = load %struct.sqlite3*, %struct.sqlite3** %db494, align 8, !dbg !2908, !tbaa !2546
  %tobool495 = icmp ne %struct.sqlite3* %380, null, !dbg !2909
  br i1 %tobool495, label %if.then.496, label %if.end.504, !dbg !2910

if.then.496:                                      ; preds = %land.lhs.true.492
  %381 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2911, !tbaa !1009
  %connection497 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %381, i32 0, i32 1, !dbg !2912
  %382 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection497, align 8, !dbg !2912, !tbaa !1086
  %db498 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %382, i32 0, i32 1, !dbg !2913
  %383 = load %struct.sqlite3*, %struct.sqlite3** %db498, align 8, !dbg !2913, !tbaa !2546
  %call499 = call i32 @sqlite3_get_autocommit(%struct.sqlite3* %383), !dbg !2914
  %tobool500 = icmp ne i32 %call499, 0, !dbg !2915
  %lnot = xor i1 %tobool500, true, !dbg !2915
  %lnot.ext = zext i1 %lnot to i32, !dbg !2915
  %conv501 = trunc i32 %lnot.ext to i8, !dbg !2915
  %384 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !2916, !tbaa !1009
  %connection502 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %384, i32 0, i32 1, !dbg !2917
  %385 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection502, align 8, !dbg !2917, !tbaa !1086
  %inTransaction503 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %385, i32 0, i32 2, !dbg !2918
  store i8 %conv501, i8* %inTransaction503, align 1, !dbg !2919, !tbaa !2389
  br label %if.end.504, !dbg !2916

if.end.504:                                       ; preds = %if.then.496, %land.lhs.true.492, %error
  br label %do.body.505, !dbg !2920

do.body.505:                                      ; preds = %if.end.504
  %386 = bitcast %struct._object** %_py_xdecref_tmp506 to i8*, !dbg !2921
  call void @llvm.lifetime.start(i64 8, i8* %386) #2, !dbg !2921
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp506, metadata !740, metadata !1013), !dbg !2923
  %387 = load %struct._object*, %struct._object** %parameters, align 8, !dbg !2924, !tbaa !1009
  store %struct._object* %387, %struct._object** %_py_xdecref_tmp506, align 8, !dbg !2923, !tbaa !1009
  %388 = load %struct._object*, %struct._object** %_py_xdecref_tmp506, align 8, !dbg !2925, !tbaa !1009
  %cmp507 = icmp ne %struct._object* %388, null, !dbg !2926
  br i1 %cmp507, label %if.then.509, label %if.end.523, !dbg !2927

if.then.509:                                      ; preds = %do.body.505
  br label %do.body.510, !dbg !2928

do.body.510:                                      ; preds = %if.then.509
  %389 = bitcast %struct._object** %_py_decref_tmp511 to i8*, !dbg !2930
  call void @llvm.lifetime.start(i64 8, i8* %389) #2, !dbg !2930
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp511, metadata !742, metadata !1013), !dbg !2932
  %390 = load %struct._object*, %struct._object** %_py_xdecref_tmp506, align 8, !dbg !2933, !tbaa !1009
  store %struct._object* %390, %struct._object** %_py_decref_tmp511, align 8, !dbg !2932, !tbaa !1009
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp511, align 8, !dbg !2934, !tbaa !1009
  %ob_refcnt512 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 0, !dbg !2936
  %392 = load i64, i64* %ob_refcnt512, align 8, !dbg !2937, !tbaa !1040
  %dec513 = add i64 %392, -1, !dbg !2937
  store i64 %dec513, i64* %ob_refcnt512, align 8, !dbg !2937, !tbaa !1040
  %cmp514 = icmp ne i64 %dec513, 0, !dbg !2938
  br i1 %cmp514, label %if.then.516, label %if.else.517, !dbg !2939

if.then.516:                                      ; preds = %do.body.510
  br label %if.end.520, !dbg !2940

if.else.517:                                      ; preds = %do.body.510
  %393 = load %struct._object*, %struct._object** %_py_decref_tmp511, align 8, !dbg !2942, !tbaa !1009
  %ob_type518 = getelementptr inbounds %struct._object, %struct._object* %393, i32 0, i32 1, !dbg !2944
  %394 = load %struct._typeobject*, %struct._typeobject** %ob_type518, align 8, !dbg !2944, !tbaa !1050
  %tp_dealloc519 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %394, i32 0, i32 4, !dbg !2945
  %395 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc519, align 8, !dbg !2945, !tbaa !1052
  %396 = load %struct._object*, %struct._object** %_py_decref_tmp511, align 8, !dbg !2946, !tbaa !1009
  call void %395(%struct._object* %396), !dbg !2947
  br label %if.end.520

if.end.520:                                       ; preds = %if.else.517, %if.then.516
  %397 = bitcast %struct._object** %_py_decref_tmp511 to i8*, !dbg !2948
  call void @llvm.lifetime.end(i64 8, i8* %397) #2, !dbg !2948
  br label %do.cond.521, !dbg !2950

do.cond.521:                                      ; preds = %if.end.520
  br label %do.end.522, !dbg !2951

do.end.522:                                       ; preds = %do.cond.521
  br label %if.end.523, !dbg !2953

if.end.523:                                       ; preds = %do.end.522, %do.body.505
  %398 = bitcast %struct._object** %_py_xdecref_tmp506 to i8*, !dbg !2955
  call void @llvm.lifetime.end(i64 8, i8* %398) #2, !dbg !2955
  br label %do.cond.524, !dbg !2956

do.cond.524:                                      ; preds = %if.end.523
  br label %do.end.525, !dbg !2957

do.end.525:                                       ; preds = %do.cond.524
  br label %do.body.526, !dbg !2959

do.body.526:                                      ; preds = %do.end.525
  %399 = bitcast %struct._object** %_py_xdecref_tmp527 to i8*, !dbg !2960
  call void @llvm.lifetime.start(i64 8, i8* %399) #2, !dbg !2960
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp527, metadata !745, metadata !1013), !dbg !2962
  %400 = load %struct._object*, %struct._object** %parameters_iter, align 8, !dbg !2963, !tbaa !1009
  store %struct._object* %400, %struct._object** %_py_xdecref_tmp527, align 8, !dbg !2962, !tbaa !1009
  %401 = load %struct._object*, %struct._object** %_py_xdecref_tmp527, align 8, !dbg !2964, !tbaa !1009
  %cmp528 = icmp ne %struct._object* %401, null, !dbg !2965
  br i1 %cmp528, label %if.then.530, label %if.end.544, !dbg !2966

if.then.530:                                      ; preds = %do.body.526
  br label %do.body.531, !dbg !2967

do.body.531:                                      ; preds = %if.then.530
  %402 = bitcast %struct._object** %_py_decref_tmp532 to i8*, !dbg !2969
  call void @llvm.lifetime.start(i64 8, i8* %402) #2, !dbg !2969
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp532, metadata !747, metadata !1013), !dbg !2971
  %403 = load %struct._object*, %struct._object** %_py_xdecref_tmp527, align 8, !dbg !2972, !tbaa !1009
  store %struct._object* %403, %struct._object** %_py_decref_tmp532, align 8, !dbg !2971, !tbaa !1009
  %404 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8, !dbg !2973, !tbaa !1009
  %ob_refcnt533 = getelementptr inbounds %struct._object, %struct._object* %404, i32 0, i32 0, !dbg !2975
  %405 = load i64, i64* %ob_refcnt533, align 8, !dbg !2976, !tbaa !1040
  %dec534 = add i64 %405, -1, !dbg !2976
  store i64 %dec534, i64* %ob_refcnt533, align 8, !dbg !2976, !tbaa !1040
  %cmp535 = icmp ne i64 %dec534, 0, !dbg !2977
  br i1 %cmp535, label %if.then.537, label %if.else.538, !dbg !2978

if.then.537:                                      ; preds = %do.body.531
  br label %if.end.541, !dbg !2979

if.else.538:                                      ; preds = %do.body.531
  %406 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8, !dbg !2981, !tbaa !1009
  %ob_type539 = getelementptr inbounds %struct._object, %struct._object* %406, i32 0, i32 1, !dbg !2983
  %407 = load %struct._typeobject*, %struct._typeobject** %ob_type539, align 8, !dbg !2983, !tbaa !1050
  %tp_dealloc540 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %407, i32 0, i32 4, !dbg !2984
  %408 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc540, align 8, !dbg !2984, !tbaa !1052
  %409 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8, !dbg !2985, !tbaa !1009
  call void %408(%struct._object* %409), !dbg !2986
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.538, %if.then.537
  %410 = bitcast %struct._object** %_py_decref_tmp532 to i8*, !dbg !2987
  call void @llvm.lifetime.end(i64 8, i8* %410) #2, !dbg !2987
  br label %do.cond.542, !dbg !2989

do.cond.542:                                      ; preds = %if.end.541
  br label %do.end.543, !dbg !2990

do.end.543:                                       ; preds = %do.cond.542
  br label %if.end.544, !dbg !2992

if.end.544:                                       ; preds = %do.end.543, %do.body.526
  %411 = bitcast %struct._object** %_py_xdecref_tmp527 to i8*, !dbg !2994
  call void @llvm.lifetime.end(i64 8, i8* %411) #2, !dbg !2994
  br label %do.cond.545, !dbg !2995

do.cond.545:                                      ; preds = %if.end.544
  br label %do.end.546, !dbg !2996

do.end.546:                                       ; preds = %do.cond.545
  br label %do.body.547, !dbg !2998

do.body.547:                                      ; preds = %do.end.546
  %412 = bitcast %struct._object** %_py_xdecref_tmp548 to i8*, !dbg !2999
  call void @llvm.lifetime.start(i64 8, i8* %412) #2, !dbg !2999
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp548, metadata !750, metadata !1013), !dbg !3001
  %413 = load %struct._object*, %struct._object** %parameters_list, align 8, !dbg !3002, !tbaa !1009
  store %struct._object* %413, %struct._object** %_py_xdecref_tmp548, align 8, !dbg !3001, !tbaa !1009
  %414 = load %struct._object*, %struct._object** %_py_xdecref_tmp548, align 8, !dbg !3003, !tbaa !1009
  %cmp549 = icmp ne %struct._object* %414, null, !dbg !3004
  br i1 %cmp549, label %if.then.551, label %if.end.565, !dbg !3005

if.then.551:                                      ; preds = %do.body.547
  br label %do.body.552, !dbg !3006

do.body.552:                                      ; preds = %if.then.551
  %415 = bitcast %struct._object** %_py_decref_tmp553 to i8*, !dbg !3008
  call void @llvm.lifetime.start(i64 8, i8* %415) #2, !dbg !3008
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp553, metadata !752, metadata !1013), !dbg !3010
  %416 = load %struct._object*, %struct._object** %_py_xdecref_tmp548, align 8, !dbg !3011, !tbaa !1009
  store %struct._object* %416, %struct._object** %_py_decref_tmp553, align 8, !dbg !3010, !tbaa !1009
  %417 = load %struct._object*, %struct._object** %_py_decref_tmp553, align 8, !dbg !3012, !tbaa !1009
  %ob_refcnt554 = getelementptr inbounds %struct._object, %struct._object* %417, i32 0, i32 0, !dbg !3014
  %418 = load i64, i64* %ob_refcnt554, align 8, !dbg !3015, !tbaa !1040
  %dec555 = add i64 %418, -1, !dbg !3015
  store i64 %dec555, i64* %ob_refcnt554, align 8, !dbg !3015, !tbaa !1040
  %cmp556 = icmp ne i64 %dec555, 0, !dbg !3016
  br i1 %cmp556, label %if.then.558, label %if.else.559, !dbg !3017

if.then.558:                                      ; preds = %do.body.552
  br label %if.end.562, !dbg !3018

if.else.559:                                      ; preds = %do.body.552
  %419 = load %struct._object*, %struct._object** %_py_decref_tmp553, align 8, !dbg !3020, !tbaa !1009
  %ob_type560 = getelementptr inbounds %struct._object, %struct._object* %419, i32 0, i32 1, !dbg !3022
  %420 = load %struct._typeobject*, %struct._typeobject** %ob_type560, align 8, !dbg !3022, !tbaa !1050
  %tp_dealloc561 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %420, i32 0, i32 4, !dbg !3023
  %421 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc561, align 8, !dbg !3023, !tbaa !1052
  %422 = load %struct._object*, %struct._object** %_py_decref_tmp553, align 8, !dbg !3024, !tbaa !1009
  call void %421(%struct._object* %422), !dbg !3025
  br label %if.end.562

if.end.562:                                       ; preds = %if.else.559, %if.then.558
  %423 = bitcast %struct._object** %_py_decref_tmp553 to i8*, !dbg !3026
  call void @llvm.lifetime.end(i64 8, i8* %423) #2, !dbg !3026
  br label %do.cond.563, !dbg !3028

do.cond.563:                                      ; preds = %if.end.562
  br label %do.end.564, !dbg !3029

do.end.564:                                       ; preds = %do.cond.563
  br label %if.end.565, !dbg !3031

if.end.565:                                       ; preds = %do.end.564, %do.body.547
  %424 = bitcast %struct._object** %_py_xdecref_tmp548 to i8*, !dbg !3033
  call void @llvm.lifetime.end(i64 8, i8* %424) #2, !dbg !3033
  br label %do.cond.566, !dbg !3034

do.cond.566:                                      ; preds = %if.end.565
  br label %do.end.567, !dbg !3035

do.end.567:                                       ; preds = %do.cond.566
  %425 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3037, !tbaa !1009
  %locked568 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %425, i32 0, i32 11, !dbg !3038
  store i32 0, i32* %locked568, align 4, !dbg !3039, !tbaa !1924
  %call569 = call %struct._object* @PyErr_Occurred(), !dbg !3040
  %tobool570 = icmp ne %struct._object* %call569, null, !dbg !3040
  br i1 %tobool570, label %if.then.571, label %if.else.573, !dbg !3042

if.then.571:                                      ; preds = %do.end.567
  %426 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3043, !tbaa !1009
  %rowcount572 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %426, i32 0, i32 6, !dbg !3045
  store i64 -1, i64* %rowcount572, align 8, !dbg !3046, !tbaa !2179
  store %struct._object* null, %struct._object** %retval, !dbg !3047
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3047

if.else.573:                                      ; preds = %do.end.567
  %427 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3048, !tbaa !1009
  %428 = bitcast %struct.pysqlite_Cursor* %427 to %struct._object*, !dbg !3050
  %ob_refcnt574 = getelementptr inbounds %struct._object, %struct._object* %428, i32 0, i32 0, !dbg !3051
  %429 = load i64, i64* %ob_refcnt574, align 8, !dbg !3052, !tbaa !1040
  %inc575 = add i64 %429, 1, !dbg !3052
  store i64 %inc575, i64* %ob_refcnt574, align 8, !dbg !3052, !tbaa !1040
  %430 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3053, !tbaa !1009
  %431 = bitcast %struct.pysqlite_Cursor* %430 to %struct._object*, !dbg !3054
  store %struct._object* %431, %struct._object** %retval, !dbg !3055
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3055

cleanup:                                          ; preds = %if.else.573, %if.then.571
  %432 = bitcast %struct._object** %second_argument to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %432) #2, !dbg !3056
  %433 = bitcast %struct._object** %descriptor to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %433) #2, !dbg !3056
  %434 = bitcast i32* %statement_type to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 4, i8* %434) #2, !dbg !3056
  %435 = bitcast i32* %numcols to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 4, i8* %435) #2, !dbg !3056
  %436 = bitcast %struct._object** %result to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %436) #2, !dbg !3056
  %437 = bitcast %struct._object** %func_args to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %437) #2, !dbg !3056
  %438 = bitcast i32* %rc to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 4, i8* %438) #2, !dbg !3056
  %439 = bitcast i32* %i to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 4, i8* %439) #2, !dbg !3056
  %440 = bitcast %struct._object** %parameters to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %440) #2, !dbg !3056
  %441 = bitcast %struct._object** %parameters_iter to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %441) #2, !dbg !3056
  %442 = bitcast %struct._object** %parameters_list to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %442) #2, !dbg !3056
  %443 = bitcast i64* %operation_len to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %443) #2, !dbg !3056
  %444 = bitcast i8** %operation_cstr to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %444) #2, !dbg !3056
  %445 = bitcast %struct._object** %operation to i8*, !dbg !3056
  call void @llvm.lifetime.end(i64 8, i8* %445) #2, !dbg !3056
  %446 = load %struct._object*, %struct._object** %retval, !dbg !3056
  ret %struct._object* %446, !dbg !3056
}

; Function Attrs: nounwind uwtable
define internal i32 @check_cursor(%struct.pysqlite_Cursor* %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca %struct.pysqlite_Cursor*, align 8
  store %struct.pysqlite_Cursor* %cur, %struct.pysqlite_Cursor** %cur.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %cur.addr, metadata !884, metadata !1013), !dbg !3057
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8, !dbg !3058, !tbaa !1009
  %initialized = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 12, !dbg !3060
  %1 = load i32, i32* %initialized, align 4, !dbg !3060, !tbaa !3061
  %tobool = icmp ne i32 %1, 0, !dbg !3058
  br i1 %tobool, label %if.end, label %if.then, !dbg !3062

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !3063, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0)), !dbg !3065
  store i32 0, i32* %retval, !dbg !3066
  br label %return, !dbg !3066

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8, !dbg !3067, !tbaa !1009
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %3, i32 0, i32 9, !dbg !3069
  %4 = load i32, i32* %closed, align 4, !dbg !3069, !tbaa !3070
  %tobool1 = icmp ne i32 %4, 0, !dbg !3067
  br i1 %tobool1, label %if.then.2, label %if.end.3, !dbg !3071

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !3072, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0)), !dbg !3074
  store i32 0, i32* %retval, !dbg !3075
  br label %return, !dbg !3075

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8, !dbg !3076, !tbaa !1009
  %locked = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 11, !dbg !3078
  %7 = load i32, i32* %locked, align 4, !dbg !3078, !tbaa !1924
  %tobool4 = icmp ne i32 %7, 0, !dbg !3076
  br i1 %tobool4, label %if.then.5, label %if.end.6, !dbg !3079

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !3080, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0)), !dbg !3082
  store i32 0, i32* %retval, !dbg !3083
  br label %return, !dbg !3083

if.end.6:                                         ; preds = %if.end.3
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8, !dbg !3084, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 1, !dbg !3085
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !3085, !tbaa !1086
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %10), !dbg !3086
  %tobool7 = icmp ne i32 %call, 0, !dbg !3086
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !3087

land.rhs:                                         ; preds = %if.end.6
  %11 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8, !dbg !3088, !tbaa !1009
  %connection8 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %11, i32 0, i32 1, !dbg !3090
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection8, align 8, !dbg !3090, !tbaa !1086
  %call9 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %12), !dbg !3091
  %tobool10 = icmp ne i32 %call9, 0, !dbg !3087
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.6
  %13 = phi i1 [ false, %if.end.6 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %13 to i32, !dbg !3092
  store i32 %land.ext, i32* %retval, !dbg !3094
  br label %return, !dbg !3094

return:                                           ; preds = %land.end, %if.then.5, %if.then.2, %if.then
  %14 = load i32, i32* %retval, !dbg !3095
  ret i32 %14, !dbg !3095
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @_PyObject_NextNotImplemented(%struct._object*) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare i32 @pysqlite_statement_reset(%struct.pysqlite_Statement*) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache*, %struct._object*) #3

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare i32 @pysqlite_statement_create(%struct.pysqlite_Statement*, %struct.pysqlite_Connection*, %struct._object*) #3

declare void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement*) #3

; Function Attrs: nounwind uwtable
define internal i32 @detect_statement_type(i8* %statement) #0 {
entry:
  %retval = alloca i32, align 4
  %statement.addr = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %__s1_len77 = alloca i64, align 8
  %__s2_len79 = alloca i64, align 8
  %tmp80 = alloca i32, align 4
  %__s186 = alloca i8*, align 8
  %__result89 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  %__s1_len137 = alloca i64, align 8
  %__s2_len139 = alloca i64, align 8
  %tmp140 = alloca i32, align 4
  %__s1146 = alloca i8*, align 8
  %__result149 = alloca i32, align 4
  %tmp187 = alloca i32, align 4
  %__s1_len197 = alloca i64, align 8
  %__s2_len199 = alloca i64, align 8
  %tmp200 = alloca i32, align 4
  %__s1206 = alloca i8*, align 8
  %__result209 = alloca i32, align 4
  %tmp247 = alloca i32, align 4
  %__s1_len257 = alloca i64, align 8
  %__s2_len259 = alloca i64, align 8
  %tmp260 = alloca i32, align 4
  %__s1266 = alloca i8*, align 8
  %__result269 = alloca i32, align 4
  %tmp307 = alloca i32, align 4
  store i8* %statement, i8** %statement.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata i8** %statement.addr, metadata !890, metadata !1013), !dbg !3096
  %0 = bitcast [20 x i8]* %buf to i8*, !dbg !3097
  call void @llvm.lifetime.start(i64 20, i8* %0) #2, !dbg !3097
  call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !891, metadata !1013), !dbg !3098
  %1 = bitcast i8** %src to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3099
  call void @llvm.dbg.declare(metadata i8** %src, metadata !892, metadata !1013), !dbg !3100
  %2 = bitcast i8** %dst to i8*, !dbg !3101
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3101
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !893, metadata !1013), !dbg !3102
  %3 = load i8*, i8** %statement.addr, align 8, !dbg !3103, !tbaa !1009
  store i8* %3, i8** %src, align 8, !dbg !3104, !tbaa !1009
  br label %while.cond, !dbg !3105

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %src, align 8, !dbg !3106, !tbaa !1009
  %5 = load i8, i8* %4, align 1, !dbg !3109, !tbaa !1178
  %conv = sext i8 %5 to i32, !dbg !3109
  %cmp = icmp eq i32 %conv, 13, !dbg !3110
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !3111

lor.lhs.false:                                    ; preds = %while.cond
  %6 = load i8*, i8** %src, align 8, !dbg !3112, !tbaa !1009
  %7 = load i8, i8* %6, align 1, !dbg !3114, !tbaa !1178
  %conv2 = sext i8 %7 to i32, !dbg !3114
  %cmp3 = icmp eq i32 %conv2, 10, !dbg !3115
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.5, !dbg !3116

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %8 = load i8*, i8** %src, align 8, !dbg !3117, !tbaa !1009
  %9 = load i8, i8* %8, align 1, !dbg !3119, !tbaa !1178
  %conv6 = sext i8 %9 to i32, !dbg !3119
  %cmp7 = icmp eq i32 %conv6, 32, !dbg !3120
  br i1 %cmp7, label %lor.end, label %lor.rhs, !dbg !3121

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %10 = load i8*, i8** %src, align 8, !dbg !3122, !tbaa !1009
  %11 = load i8, i8* %10, align 1, !dbg !3124, !tbaa !1178
  %conv9 = sext i8 %11 to i32, !dbg !3124
  %cmp10 = icmp eq i32 %conv9, 9, !dbg !3125
  br label %lor.end, !dbg !3121

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %12 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %12, label %while.body, label %while.end, !dbg !3126

while.body:                                       ; preds = %lor.end
  %13 = load i8*, i8** %src, align 8, !dbg !3131, !tbaa !1009
  %incdec.ptr = getelementptr i8, i8* %13, i32 1, !dbg !3131
  store i8* %incdec.ptr, i8** %src, align 8, !dbg !3131, !tbaa !1009
  br label %while.cond, !dbg !3105

while.end:                                        ; preds = %lor.end
  %14 = load i8*, i8** %src, align 8, !dbg !3133, !tbaa !1009
  %15 = load i8, i8* %14, align 1, !dbg !3135, !tbaa !1178
  %conv12 = sext i8 %15 to i32, !dbg !3135
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !3136
  br i1 %cmp13, label %if.then, label %if.end, !dbg !3137

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval, !dbg !3138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3138

if.end:                                           ; preds = %while.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3139
  store i8* %arraydecay, i8** %dst, align 8, !dbg !3140, !tbaa !1009
  %16 = load i8*, i8** %dst, align 8, !dbg !3141, !tbaa !1009
  store i8 0, i8* %16, align 1, !dbg !3142, !tbaa !1178
  br label %while.cond.15, !dbg !3143

while.cond.15:                                    ; preds = %while.body.22, %if.end
  %17 = load i8*, i8** %src, align 8, !dbg !3144, !tbaa !1009
  %18 = load i8, i8* %17, align 1, !dbg !3146, !tbaa !1178
  %conv16 = sext i8 %18 to i32, !dbg !3147
  %and = and i32 %conv16, 255, !dbg !3148
  %conv17 = trunc i32 %and to i8, !dbg !3149
  %idxprom = zext i8 %conv17 to i64, !dbg !3150
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !3150
  %19 = load i32, i32* %arrayidx, align 4, !dbg !3150, !tbaa !1143
  %and18 = and i32 %19, 3, !dbg !3151
  %tobool = icmp ne i32 %and18, 0, !dbg !3151
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3152

land.rhs:                                         ; preds = %while.cond.15
  %20 = load i8*, i8** %dst, align 8, !dbg !3153, !tbaa !1009
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3154
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64, !dbg !3155
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay19 to i64, !dbg !3155
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3155
  %cmp20 = icmp ult i64 %sub.ptr.sub, 18, !dbg !3156
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.15
  %21 = phi i1 [ false, %while.cond.15 ], [ %cmp20, %land.rhs ]
  br i1 %21, label %while.body.22, label %while.end.30, !dbg !3157

while.body.22:                                    ; preds = %land.end
  %22 = load i8*, i8** %src, align 8, !dbg !3158, !tbaa !1009
  %incdec.ptr23 = getelementptr i8, i8* %22, i32 1, !dbg !3158
  store i8* %incdec.ptr23, i8** %src, align 8, !dbg !3158, !tbaa !1009
  %23 = load i8, i8* %22, align 1, !dbg !3160, !tbaa !1178
  %conv24 = sext i8 %23 to i32, !dbg !3161
  %and25 = and i32 %conv24, 255, !dbg !3162
  %conv26 = trunc i32 %and25 to i8, !dbg !3163
  %idxprom27 = zext i8 %conv26 to i64, !dbg !3164
  %arrayidx28 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom27, !dbg !3164
  %24 = load i8, i8* %arrayidx28, align 1, !dbg !3164, !tbaa !1178
  %25 = load i8*, i8** %dst, align 8, !dbg !3165, !tbaa !1009
  %incdec.ptr29 = getelementptr i8, i8* %25, i32 1, !dbg !3165
  store i8* %incdec.ptr29, i8** %dst, align 8, !dbg !3165, !tbaa !1009
  store i8 %24, i8* %25, align 1, !dbg !3166, !tbaa !1178
  br label %while.cond.15, !dbg !3143

while.end.30:                                     ; preds = %land.end
  %26 = load i8*, i8** %dst, align 8, !dbg !3167, !tbaa !1009
  store i8 0, i8* %26, align 1, !dbg !3168, !tbaa !1178
  %27 = bitcast i64* %__s1_len to i8*, !dbg !3169
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3169
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !894, metadata !1013), !dbg !3170
  %28 = bitcast i64* %__s2_len to i8*, !dbg !3169
  call void @llvm.lifetime.start(i64 8, i8* %28) #2, !dbg !3169
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !897, metadata !1013), !dbg !3171
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.23 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !3172

land.lhs.true:                                    ; preds = %while.end.30
  store i64 6, i64* %__s2_len, align 8, !dbg !3173, !tbaa !1565
  %29 = load i64, i64* %__s2_len, align 8, !dbg !3175, !tbaa !1565
  %cmp31 = icmp ult i64 %29, 4, !dbg !3176
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !3177

cond.true:                                        ; preds = %land.lhs.true
  %30 = bitcast i8** %__s1 to i8*, !dbg !3178
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !3178
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !898, metadata !1013), !dbg !3180
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3181
  store i8* %arraydecay34, i8** %__s1, align 8, !dbg !3180, !tbaa !1009
  %31 = bitcast i32* %__result to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 4, i8* %31) #2, !dbg !3182
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !900, metadata !1013), !dbg !3183
  %32 = load i8*, i8** %__s1, align 8, !dbg !3184, !tbaa !1009
  %arrayidx36 = getelementptr i8, i8* %32, i64 0, !dbg !3184
  %33 = load i8, i8* %arrayidx36, align 1, !dbg !3184, !tbaa !1178
  %conv37 = zext i8 %33 to i32, !dbg !3184
  %34 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), align 1, !dbg !3185, !tbaa !1178
  %conv38 = zext i8 %34 to i32, !dbg !3185
  %sub = sub i32 %conv37, %conv38, !dbg !3186
  store i32 %sub, i32* %__result, align 4, !dbg !3183, !tbaa !1143
  %35 = load i64, i64* %__s2_len, align 8, !dbg !3187, !tbaa !1565
  %cmp39 = icmp ugt i64 %35, 0, !dbg !3189
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.71, !dbg !3190

land.lhs.true.41:                                 ; preds = %cond.true
  %36 = load i32, i32* %__result, align 4, !dbg !3191, !tbaa !1143
  %cmp42 = icmp eq i32 %36, 0, !dbg !3193
  br i1 %cmp42, label %if.then.44, label %if.end.71, !dbg !3194

if.then.44:                                       ; preds = %land.lhs.true.41
  %37 = load i8*, i8** %__s1, align 8, !dbg !3195, !tbaa !1009
  %arrayidx45 = getelementptr i8, i8* %37, i64 1, !dbg !3195
  %38 = load i8, i8* %arrayidx45, align 1, !dbg !3195, !tbaa !1178
  %conv46 = zext i8 %38 to i32, !dbg !3195
  %39 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i64 1), align 1, !dbg !3198, !tbaa !1178
  %conv47 = zext i8 %39 to i32, !dbg !3198
  %sub48 = sub i32 %conv46, %conv47, !dbg !3199
  store i32 %sub48, i32* %__result, align 4, !dbg !3200, !tbaa !1143
  %40 = load i64, i64* %__s2_len, align 8, !dbg !3201, !tbaa !1565
  %cmp49 = icmp ugt i64 %40, 1, !dbg !3203
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.70, !dbg !3204

land.lhs.true.51:                                 ; preds = %if.then.44
  %41 = load i32, i32* %__result, align 4, !dbg !3205, !tbaa !1143
  %cmp52 = icmp eq i32 %41, 0, !dbg !3207
  br i1 %cmp52, label %if.then.54, label %if.end.70, !dbg !3208

if.then.54:                                       ; preds = %land.lhs.true.51
  %42 = load i8*, i8** %__s1, align 8, !dbg !3209, !tbaa !1009
  %arrayidx55 = getelementptr i8, i8* %42, i64 2, !dbg !3209
  %43 = load i8, i8* %arrayidx55, align 1, !dbg !3209, !tbaa !1178
  %conv56 = zext i8 %43 to i32, !dbg !3209
  %44 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i64 2), align 1, !dbg !3212, !tbaa !1178
  %conv57 = zext i8 %44 to i32, !dbg !3212
  %sub58 = sub i32 %conv56, %conv57, !dbg !3213
  store i32 %sub58, i32* %__result, align 4, !dbg !3214, !tbaa !1143
  %45 = load i64, i64* %__s2_len, align 8, !dbg !3215, !tbaa !1565
  %cmp59 = icmp ugt i64 %45, 2, !dbg !3217
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.69, !dbg !3218

land.lhs.true.61:                                 ; preds = %if.then.54
  %46 = load i32, i32* %__result, align 4, !dbg !3219, !tbaa !1143
  %cmp62 = icmp eq i32 %46, 0, !dbg !3221
  br i1 %cmp62, label %if.then.64, label %if.end.69, !dbg !3222

if.then.64:                                       ; preds = %land.lhs.true.61
  %47 = load i8*, i8** %__s1, align 8, !dbg !3223, !tbaa !1009
  %arrayidx65 = getelementptr i8, i8* %47, i64 3, !dbg !3223
  %48 = load i8, i8* %arrayidx65, align 1, !dbg !3223, !tbaa !1178
  %conv66 = zext i8 %48 to i32, !dbg !3223
  %49 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i64 3), align 1, !dbg !3225, !tbaa !1178
  %conv67 = zext i8 %49 to i32, !dbg !3225
  %sub68 = sub i32 %conv66, %conv67, !dbg !3226
  store i32 %sub68, i32* %__result, align 4, !dbg !3227, !tbaa !1143
  br label %if.end.69, !dbg !3228

if.end.69:                                        ; preds = %if.then.64, %land.lhs.true.61, %if.then.54
  br label %if.end.70, !dbg !3229

if.end.70:                                        ; preds = %if.end.69, %land.lhs.true.51, %if.then.44
  br label %if.end.71, !dbg !3233

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.41, %cond.true
  %50 = load i32, i32* %__result, align 4, !dbg !3237, !tbaa !1143
  store i32 %50, i32* %tmp72, !dbg !3241, !tbaa !1143
  %51 = bitcast i32* %__result to i8*, !dbg !3242
  call void @llvm.lifetime.end(i64 4, i8* %51) #2, !dbg !3242
  %52 = bitcast i8** %__s1 to i8*, !dbg !3242
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !3242
  %53 = load i32, i32* %tmp72, !dbg !3243, !tbaa !1143
  br label %cond.end, !dbg !3177

cond.false:                                       ; preds = %land.lhs.true, %while.end.30
  %arraydecay73 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3244
  %call = call i32 @strcmp(i8* %arraydecay73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #2, !dbg !3247
  br label %cond.end, !dbg !3177

cond.end:                                         ; preds = %cond.false, %if.end.71
  %cond = phi i32 [ %53, %if.end.71 ], [ %call, %cond.false ], !dbg !3177
  store i32 %cond, i32* %tmp, !dbg !3248, !tbaa !1143
  %54 = bitcast i64* %__s2_len to i8*, !dbg !3251
  call void @llvm.lifetime.end(i64 8, i8* %54) #2, !dbg !3251
  %55 = bitcast i64* %__s1_len to i8*, !dbg !3251
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !3251
  %56 = load i32, i32* %tmp, !dbg !3252, !tbaa !1143
  %tobool74 = icmp ne i32 %56, 0, !dbg !3253
  br i1 %tobool74, label %if.else, label %if.then.75, !dbg !3254

if.then.75:                                       ; preds = %cond.end
  store i32 5, i32* %retval, !dbg !3255
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3255

if.else:                                          ; preds = %cond.end
  %57 = bitcast i64* %__s1_len77 to i8*, !dbg !3257
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !3257
  call void @llvm.dbg.declare(metadata i64* %__s1_len77, metadata !901, metadata !1013), !dbg !3258
  %58 = bitcast i64* %__s2_len79 to i8*, !dbg !3257
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !3257
  call void @llvm.dbg.declare(metadata i64* %__s2_len79, metadata !904, metadata !1013), !dbg !3259
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.24 to i64)), i64 1), label %land.lhs.true.81, label %cond.false.128, !dbg !3260

land.lhs.true.81:                                 ; preds = %if.else
  store i64 6, i64* %__s2_len79, align 8, !dbg !3261, !tbaa !1565
  %59 = load i64, i64* %__s2_len79, align 8, !dbg !3263, !tbaa !1565
  %cmp82 = icmp ult i64 %59, 4, !dbg !3264
  br i1 %cmp82, label %cond.true.84, label %cond.false.128, !dbg !3265

cond.true.84:                                     ; preds = %land.lhs.true.81
  %60 = bitcast i8** %__s186 to i8*, !dbg !3266
  call void @llvm.lifetime.start(i64 8, i8* %60) #2, !dbg !3266
  call void @llvm.dbg.declare(metadata i8** %__s186, metadata !905, metadata !1013), !dbg !3268
  %arraydecay87 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3269
  store i8* %arraydecay87, i8** %__s186, align 8, !dbg !3268, !tbaa !1009
  %61 = bitcast i32* %__result89 to i8*, !dbg !3270
  call void @llvm.lifetime.start(i64 4, i8* %61) #2, !dbg !3270
  call void @llvm.dbg.declare(metadata i32* %__result89, metadata !907, metadata !1013), !dbg !3271
  %62 = load i8*, i8** %__s186, align 8, !dbg !3272, !tbaa !1009
  %arrayidx90 = getelementptr i8, i8* %62, i64 0, !dbg !3272
  %63 = load i8, i8* %arrayidx90, align 1, !dbg !3272, !tbaa !1178
  %conv91 = zext i8 %63 to i32, !dbg !3272
  %64 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), align 1, !dbg !3273, !tbaa !1178
  %conv92 = zext i8 %64 to i32, !dbg !3273
  %sub93 = sub i32 %conv91, %conv92, !dbg !3274
  store i32 %sub93, i32* %__result89, align 4, !dbg !3271, !tbaa !1143
  %65 = load i64, i64* %__s2_len79, align 8, !dbg !3275, !tbaa !1565
  %cmp94 = icmp ugt i64 %65, 0, !dbg !3277
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.126, !dbg !3278

land.lhs.true.96:                                 ; preds = %cond.true.84
  %66 = load i32, i32* %__result89, align 4, !dbg !3279, !tbaa !1143
  %cmp97 = icmp eq i32 %66, 0, !dbg !3281
  br i1 %cmp97, label %if.then.99, label %if.end.126, !dbg !3282

if.then.99:                                       ; preds = %land.lhs.true.96
  %67 = load i8*, i8** %__s186, align 8, !dbg !3283, !tbaa !1009
  %arrayidx100 = getelementptr i8, i8* %67, i64 1, !dbg !3283
  %68 = load i8, i8* %arrayidx100, align 1, !dbg !3283, !tbaa !1178
  %conv101 = zext i8 %68 to i32, !dbg !3283
  %69 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i64 1), align 1, !dbg !3286, !tbaa !1178
  %conv102 = zext i8 %69 to i32, !dbg !3286
  %sub103 = sub i32 %conv101, %conv102, !dbg !3287
  store i32 %sub103, i32* %__result89, align 4, !dbg !3288, !tbaa !1143
  %70 = load i64, i64* %__s2_len79, align 8, !dbg !3289, !tbaa !1565
  %cmp104 = icmp ugt i64 %70, 1, !dbg !3291
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.125, !dbg !3292

land.lhs.true.106:                                ; preds = %if.then.99
  %71 = load i32, i32* %__result89, align 4, !dbg !3293, !tbaa !1143
  %cmp107 = icmp eq i32 %71, 0, !dbg !3295
  br i1 %cmp107, label %if.then.109, label %if.end.125, !dbg !3296

if.then.109:                                      ; preds = %land.lhs.true.106
  %72 = load i8*, i8** %__s186, align 8, !dbg !3297, !tbaa !1009
  %arrayidx110 = getelementptr i8, i8* %72, i64 2, !dbg !3297
  %73 = load i8, i8* %arrayidx110, align 1, !dbg !3297, !tbaa !1178
  %conv111 = zext i8 %73 to i32, !dbg !3297
  %74 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i64 2), align 1, !dbg !3300, !tbaa !1178
  %conv112 = zext i8 %74 to i32, !dbg !3300
  %sub113 = sub i32 %conv111, %conv112, !dbg !3301
  store i32 %sub113, i32* %__result89, align 4, !dbg !3302, !tbaa !1143
  %75 = load i64, i64* %__s2_len79, align 8, !dbg !3303, !tbaa !1565
  %cmp114 = icmp ugt i64 %75, 2, !dbg !3305
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.124, !dbg !3306

land.lhs.true.116:                                ; preds = %if.then.109
  %76 = load i32, i32* %__result89, align 4, !dbg !3307, !tbaa !1143
  %cmp117 = icmp eq i32 %76, 0, !dbg !3309
  br i1 %cmp117, label %if.then.119, label %if.end.124, !dbg !3310

if.then.119:                                      ; preds = %land.lhs.true.116
  %77 = load i8*, i8** %__s186, align 8, !dbg !3311, !tbaa !1009
  %arrayidx120 = getelementptr i8, i8* %77, i64 3, !dbg !3311
  %78 = load i8, i8* %arrayidx120, align 1, !dbg !3311, !tbaa !1178
  %conv121 = zext i8 %78 to i32, !dbg !3311
  %79 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i64 3), align 1, !dbg !3313, !tbaa !1178
  %conv122 = zext i8 %79 to i32, !dbg !3313
  %sub123 = sub i32 %conv121, %conv122, !dbg !3314
  store i32 %sub123, i32* %__result89, align 4, !dbg !3315, !tbaa !1143
  br label %if.end.124, !dbg !3316

if.end.124:                                       ; preds = %if.then.119, %land.lhs.true.116, %if.then.109
  br label %if.end.125, !dbg !3317

if.end.125:                                       ; preds = %if.end.124, %land.lhs.true.106, %if.then.99
  br label %if.end.126, !dbg !3321

if.end.126:                                       ; preds = %if.end.125, %land.lhs.true.96, %cond.true.84
  %80 = load i32, i32* %__result89, align 4, !dbg !3325, !tbaa !1143
  store i32 %80, i32* %tmp127, !dbg !3329, !tbaa !1143
  %81 = bitcast i32* %__result89 to i8*, !dbg !3330
  call void @llvm.lifetime.end(i64 4, i8* %81) #2, !dbg !3330
  %82 = bitcast i8** %__s186 to i8*, !dbg !3330
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !3330
  %83 = load i32, i32* %tmp127, !dbg !3331, !tbaa !1143
  br label %cond.end.131, !dbg !3265

cond.false.128:                                   ; preds = %land.lhs.true.81, %if.else
  %arraydecay129 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3332
  %call130 = call i32 @strcmp(i8* %arraydecay129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #2, !dbg !3335
  br label %cond.end.131, !dbg !3265

cond.end.131:                                     ; preds = %cond.false.128, %if.end.126
  %cond132 = phi i32 [ %83, %if.end.126 ], [ %call130, %cond.false.128 ], !dbg !3265
  store i32 %cond132, i32* %tmp80, !dbg !3336, !tbaa !1143
  %84 = bitcast i64* %__s2_len79 to i8*, !dbg !3339
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !3339
  %85 = bitcast i64* %__s1_len77 to i8*, !dbg !3339
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !3339
  %86 = load i32, i32* %tmp80, !dbg !3340, !tbaa !1143
  %tobool133 = icmp ne i32 %86, 0, !dbg !3341
  br i1 %tobool133, label %if.else.135, label %if.then.134, !dbg !3342

if.then.134:                                      ; preds = %cond.end.131
  store i32 1, i32* %retval, !dbg !3343
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3343

if.else.135:                                      ; preds = %cond.end.131
  %87 = bitcast i64* %__s1_len137 to i8*, !dbg !3345
  call void @llvm.lifetime.start(i64 8, i8* %87) #2, !dbg !3345
  call void @llvm.dbg.declare(metadata i64* %__s1_len137, metadata !908, metadata !1013), !dbg !3346
  %88 = bitcast i64* %__s2_len139 to i8*, !dbg !3345
  call void @llvm.lifetime.start(i64 8, i8* %88) #2, !dbg !3345
  call void @llvm.dbg.declare(metadata i64* %__s2_len139, metadata !911, metadata !1013), !dbg !3347
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.25 to i64)), i64 1), label %land.lhs.true.141, label %cond.false.188, !dbg !3348

land.lhs.true.141:                                ; preds = %if.else.135
  store i64 6, i64* %__s2_len139, align 8, !dbg !3349, !tbaa !1565
  %89 = load i64, i64* %__s2_len139, align 8, !dbg !3351, !tbaa !1565
  %cmp142 = icmp ult i64 %89, 4, !dbg !3352
  br i1 %cmp142, label %cond.true.144, label %cond.false.188, !dbg !3353

cond.true.144:                                    ; preds = %land.lhs.true.141
  %90 = bitcast i8** %__s1146 to i8*, !dbg !3354
  call void @llvm.lifetime.start(i64 8, i8* %90) #2, !dbg !3354
  call void @llvm.dbg.declare(metadata i8** %__s1146, metadata !912, metadata !1013), !dbg !3356
  %arraydecay147 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3357
  store i8* %arraydecay147, i8** %__s1146, align 8, !dbg !3356, !tbaa !1009
  %91 = bitcast i32* %__result149 to i8*, !dbg !3358
  call void @llvm.lifetime.start(i64 4, i8* %91) #2, !dbg !3358
  call void @llvm.dbg.declare(metadata i32* %__result149, metadata !914, metadata !1013), !dbg !3359
  %92 = load i8*, i8** %__s1146, align 8, !dbg !3360, !tbaa !1009
  %arrayidx150 = getelementptr i8, i8* %92, i64 0, !dbg !3360
  %93 = load i8, i8* %arrayidx150, align 1, !dbg !3360, !tbaa !1178
  %conv151 = zext i8 %93 to i32, !dbg !3360
  %94 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), align 1, !dbg !3361, !tbaa !1178
  %conv152 = zext i8 %94 to i32, !dbg !3361
  %sub153 = sub i32 %conv151, %conv152, !dbg !3362
  store i32 %sub153, i32* %__result149, align 4, !dbg !3359, !tbaa !1143
  %95 = load i64, i64* %__s2_len139, align 8, !dbg !3363, !tbaa !1565
  %cmp154 = icmp ugt i64 %95, 0, !dbg !3365
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.186, !dbg !3366

land.lhs.true.156:                                ; preds = %cond.true.144
  %96 = load i32, i32* %__result149, align 4, !dbg !3367, !tbaa !1143
  %cmp157 = icmp eq i32 %96, 0, !dbg !3369
  br i1 %cmp157, label %if.then.159, label %if.end.186, !dbg !3370

if.then.159:                                      ; preds = %land.lhs.true.156
  %97 = load i8*, i8** %__s1146, align 8, !dbg !3371, !tbaa !1009
  %arrayidx160 = getelementptr i8, i8* %97, i64 1, !dbg !3371
  %98 = load i8, i8* %arrayidx160, align 1, !dbg !3371, !tbaa !1178
  %conv161 = zext i8 %98 to i32, !dbg !3371
  %99 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i64 1), align 1, !dbg !3374, !tbaa !1178
  %conv162 = zext i8 %99 to i32, !dbg !3374
  %sub163 = sub i32 %conv161, %conv162, !dbg !3375
  store i32 %sub163, i32* %__result149, align 4, !dbg !3376, !tbaa !1143
  %100 = load i64, i64* %__s2_len139, align 8, !dbg !3377, !tbaa !1565
  %cmp164 = icmp ugt i64 %100, 1, !dbg !3379
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.185, !dbg !3380

land.lhs.true.166:                                ; preds = %if.then.159
  %101 = load i32, i32* %__result149, align 4, !dbg !3381, !tbaa !1143
  %cmp167 = icmp eq i32 %101, 0, !dbg !3383
  br i1 %cmp167, label %if.then.169, label %if.end.185, !dbg !3384

if.then.169:                                      ; preds = %land.lhs.true.166
  %102 = load i8*, i8** %__s1146, align 8, !dbg !3385, !tbaa !1009
  %arrayidx170 = getelementptr i8, i8* %102, i64 2, !dbg !3385
  %103 = load i8, i8* %arrayidx170, align 1, !dbg !3385, !tbaa !1178
  %conv171 = zext i8 %103 to i32, !dbg !3385
  %104 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i64 2), align 1, !dbg !3388, !tbaa !1178
  %conv172 = zext i8 %104 to i32, !dbg !3388
  %sub173 = sub i32 %conv171, %conv172, !dbg !3389
  store i32 %sub173, i32* %__result149, align 4, !dbg !3390, !tbaa !1143
  %105 = load i64, i64* %__s2_len139, align 8, !dbg !3391, !tbaa !1565
  %cmp174 = icmp ugt i64 %105, 2, !dbg !3393
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.184, !dbg !3394

land.lhs.true.176:                                ; preds = %if.then.169
  %106 = load i32, i32* %__result149, align 4, !dbg !3395, !tbaa !1143
  %cmp177 = icmp eq i32 %106, 0, !dbg !3397
  br i1 %cmp177, label %if.then.179, label %if.end.184, !dbg !3398

if.then.179:                                      ; preds = %land.lhs.true.176
  %107 = load i8*, i8** %__s1146, align 8, !dbg !3399, !tbaa !1009
  %arrayidx180 = getelementptr i8, i8* %107, i64 3, !dbg !3399
  %108 = load i8, i8* %arrayidx180, align 1, !dbg !3399, !tbaa !1178
  %conv181 = zext i8 %108 to i32, !dbg !3399
  %109 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i64 3), align 1, !dbg !3401, !tbaa !1178
  %conv182 = zext i8 %109 to i32, !dbg !3401
  %sub183 = sub i32 %conv181, %conv182, !dbg !3402
  store i32 %sub183, i32* %__result149, align 4, !dbg !3403, !tbaa !1143
  br label %if.end.184, !dbg !3404

if.end.184:                                       ; preds = %if.then.179, %land.lhs.true.176, %if.then.169
  br label %if.end.185, !dbg !3405

if.end.185:                                       ; preds = %if.end.184, %land.lhs.true.166, %if.then.159
  br label %if.end.186, !dbg !3409

if.end.186:                                       ; preds = %if.end.185, %land.lhs.true.156, %cond.true.144
  %110 = load i32, i32* %__result149, align 4, !dbg !3413, !tbaa !1143
  store i32 %110, i32* %tmp187, !dbg !3417, !tbaa !1143
  %111 = bitcast i32* %__result149 to i8*, !dbg !3418
  call void @llvm.lifetime.end(i64 4, i8* %111) #2, !dbg !3418
  %112 = bitcast i8** %__s1146 to i8*, !dbg !3418
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !3418
  %113 = load i32, i32* %tmp187, !dbg !3419, !tbaa !1143
  br label %cond.end.191, !dbg !3353

cond.false.188:                                   ; preds = %land.lhs.true.141, %if.else.135
  %arraydecay189 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3420
  %call190 = call i32 @strcmp(i8* %arraydecay189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #2, !dbg !3423
  br label %cond.end.191, !dbg !3353

cond.end.191:                                     ; preds = %cond.false.188, %if.end.186
  %cond192 = phi i32 [ %113, %if.end.186 ], [ %call190, %cond.false.188 ], !dbg !3353
  store i32 %cond192, i32* %tmp140, !dbg !3424, !tbaa !1143
  %114 = bitcast i64* %__s2_len139 to i8*, !dbg !3427
  call void @llvm.lifetime.end(i64 8, i8* %114) #2, !dbg !3427
  %115 = bitcast i64* %__s1_len137 to i8*, !dbg !3427
  call void @llvm.lifetime.end(i64 8, i8* %115) #2, !dbg !3427
  %116 = load i32, i32* %tmp140, !dbg !3428, !tbaa !1143
  %tobool193 = icmp ne i32 %116, 0, !dbg !3429
  br i1 %tobool193, label %if.else.195, label %if.then.194, !dbg !3430

if.then.194:                                      ; preds = %cond.end.191
  store i32 3, i32* %retval, !dbg !3431
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3431

if.else.195:                                      ; preds = %cond.end.191
  %117 = bitcast i64* %__s1_len197 to i8*, !dbg !3433
  call void @llvm.lifetime.start(i64 8, i8* %117) #2, !dbg !3433
  call void @llvm.dbg.declare(metadata i64* %__s1_len197, metadata !915, metadata !1013), !dbg !3434
  %118 = bitcast i64* %__s2_len199 to i8*, !dbg !3433
  call void @llvm.lifetime.start(i64 8, i8* %118) #2, !dbg !3433
  call void @llvm.dbg.declare(metadata i64* %__s2_len199, metadata !918, metadata !1013), !dbg !3435
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.26 to i64)), i64 1), label %land.lhs.true.201, label %cond.false.248, !dbg !3436

land.lhs.true.201:                                ; preds = %if.else.195
  store i64 6, i64* %__s2_len199, align 8, !dbg !3437, !tbaa !1565
  %119 = load i64, i64* %__s2_len199, align 8, !dbg !3439, !tbaa !1565
  %cmp202 = icmp ult i64 %119, 4, !dbg !3440
  br i1 %cmp202, label %cond.true.204, label %cond.false.248, !dbg !3441

cond.true.204:                                    ; preds = %land.lhs.true.201
  %120 = bitcast i8** %__s1206 to i8*, !dbg !3442
  call void @llvm.lifetime.start(i64 8, i8* %120) #2, !dbg !3442
  call void @llvm.dbg.declare(metadata i8** %__s1206, metadata !919, metadata !1013), !dbg !3444
  %arraydecay207 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3445
  store i8* %arraydecay207, i8** %__s1206, align 8, !dbg !3444, !tbaa !1009
  %121 = bitcast i32* %__result209 to i8*, !dbg !3446
  call void @llvm.lifetime.start(i64 4, i8* %121) #2, !dbg !3446
  call void @llvm.dbg.declare(metadata i32* %__result209, metadata !921, metadata !1013), !dbg !3447
  %122 = load i8*, i8** %__s1206, align 8, !dbg !3448, !tbaa !1009
  %arrayidx210 = getelementptr i8, i8* %122, i64 0, !dbg !3448
  %123 = load i8, i8* %arrayidx210, align 1, !dbg !3448, !tbaa !1178
  %conv211 = zext i8 %123 to i32, !dbg !3448
  %124 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), align 1, !dbg !3449, !tbaa !1178
  %conv212 = zext i8 %124 to i32, !dbg !3449
  %sub213 = sub i32 %conv211, %conv212, !dbg !3450
  store i32 %sub213, i32* %__result209, align 4, !dbg !3447, !tbaa !1143
  %125 = load i64, i64* %__s2_len199, align 8, !dbg !3451, !tbaa !1565
  %cmp214 = icmp ugt i64 %125, 0, !dbg !3453
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.246, !dbg !3454

land.lhs.true.216:                                ; preds = %cond.true.204
  %126 = load i32, i32* %__result209, align 4, !dbg !3455, !tbaa !1143
  %cmp217 = icmp eq i32 %126, 0, !dbg !3457
  br i1 %cmp217, label %if.then.219, label %if.end.246, !dbg !3458

if.then.219:                                      ; preds = %land.lhs.true.216
  %127 = load i8*, i8** %__s1206, align 8, !dbg !3459, !tbaa !1009
  %arrayidx220 = getelementptr i8, i8* %127, i64 1, !dbg !3459
  %128 = load i8, i8* %arrayidx220, align 1, !dbg !3459, !tbaa !1178
  %conv221 = zext i8 %128 to i32, !dbg !3459
  %129 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1), align 1, !dbg !3462, !tbaa !1178
  %conv222 = zext i8 %129 to i32, !dbg !3462
  %sub223 = sub i32 %conv221, %conv222, !dbg !3463
  store i32 %sub223, i32* %__result209, align 4, !dbg !3464, !tbaa !1143
  %130 = load i64, i64* %__s2_len199, align 8, !dbg !3465, !tbaa !1565
  %cmp224 = icmp ugt i64 %130, 1, !dbg !3467
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.245, !dbg !3468

land.lhs.true.226:                                ; preds = %if.then.219
  %131 = load i32, i32* %__result209, align 4, !dbg !3469, !tbaa !1143
  %cmp227 = icmp eq i32 %131, 0, !dbg !3471
  br i1 %cmp227, label %if.then.229, label %if.end.245, !dbg !3472

if.then.229:                                      ; preds = %land.lhs.true.226
  %132 = load i8*, i8** %__s1206, align 8, !dbg !3473, !tbaa !1009
  %arrayidx230 = getelementptr i8, i8* %132, i64 2, !dbg !3473
  %133 = load i8, i8* %arrayidx230, align 1, !dbg !3473, !tbaa !1178
  %conv231 = zext i8 %133 to i32, !dbg !3473
  %134 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 2), align 1, !dbg !3476, !tbaa !1178
  %conv232 = zext i8 %134 to i32, !dbg !3476
  %sub233 = sub i32 %conv231, %conv232, !dbg !3477
  store i32 %sub233, i32* %__result209, align 4, !dbg !3478, !tbaa !1143
  %135 = load i64, i64* %__s2_len199, align 8, !dbg !3479, !tbaa !1565
  %cmp234 = icmp ugt i64 %135, 2, !dbg !3481
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.244, !dbg !3482

land.lhs.true.236:                                ; preds = %if.then.229
  %136 = load i32, i32* %__result209, align 4, !dbg !3483, !tbaa !1143
  %cmp237 = icmp eq i32 %136, 0, !dbg !3485
  br i1 %cmp237, label %if.then.239, label %if.end.244, !dbg !3486

if.then.239:                                      ; preds = %land.lhs.true.236
  %137 = load i8*, i8** %__s1206, align 8, !dbg !3487, !tbaa !1009
  %arrayidx240 = getelementptr i8, i8* %137, i64 3, !dbg !3487
  %138 = load i8, i8* %arrayidx240, align 1, !dbg !3487, !tbaa !1178
  %conv241 = zext i8 %138 to i32, !dbg !3487
  %139 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 3), align 1, !dbg !3489, !tbaa !1178
  %conv242 = zext i8 %139 to i32, !dbg !3489
  %sub243 = sub i32 %conv241, %conv242, !dbg !3490
  store i32 %sub243, i32* %__result209, align 4, !dbg !3491, !tbaa !1143
  br label %if.end.244, !dbg !3492

if.end.244:                                       ; preds = %if.then.239, %land.lhs.true.236, %if.then.229
  br label %if.end.245, !dbg !3493

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true.226, %if.then.219
  br label %if.end.246, !dbg !3497

if.end.246:                                       ; preds = %if.end.245, %land.lhs.true.216, %cond.true.204
  %140 = load i32, i32* %__result209, align 4, !dbg !3501, !tbaa !1143
  store i32 %140, i32* %tmp247, !dbg !3505, !tbaa !1143
  %141 = bitcast i32* %__result209 to i8*, !dbg !3506
  call void @llvm.lifetime.end(i64 4, i8* %141) #2, !dbg !3506
  %142 = bitcast i8** %__s1206 to i8*, !dbg !3506
  call void @llvm.lifetime.end(i64 8, i8* %142) #2, !dbg !3506
  %143 = load i32, i32* %tmp247, !dbg !3507, !tbaa !1143
  br label %cond.end.251, !dbg !3441

cond.false.248:                                   ; preds = %land.lhs.true.201, %if.else.195
  %arraydecay249 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3508
  %call250 = call i32 @strcmp(i8* %arraydecay249, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #2, !dbg !3511
  br label %cond.end.251, !dbg !3441

cond.end.251:                                     ; preds = %cond.false.248, %if.end.246
  %cond252 = phi i32 [ %143, %if.end.246 ], [ %call250, %cond.false.248 ], !dbg !3441
  store i32 %cond252, i32* %tmp200, !dbg !3512, !tbaa !1143
  %144 = bitcast i64* %__s2_len199 to i8*, !dbg !3515
  call void @llvm.lifetime.end(i64 8, i8* %144) #2, !dbg !3515
  %145 = bitcast i64* %__s1_len197 to i8*, !dbg !3515
  call void @llvm.lifetime.end(i64 8, i8* %145) #2, !dbg !3515
  %146 = load i32, i32* %tmp200, !dbg !3516, !tbaa !1143
  %tobool253 = icmp ne i32 %146, 0, !dbg !3517
  br i1 %tobool253, label %if.else.255, label %if.then.254, !dbg !3518

if.then.254:                                      ; preds = %cond.end.251
  store i32 2, i32* %retval, !dbg !3519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3519

if.else.255:                                      ; preds = %cond.end.251
  %147 = bitcast i64* %__s1_len257 to i8*, !dbg !3521
  call void @llvm.lifetime.start(i64 8, i8* %147) #2, !dbg !3521
  call void @llvm.dbg.declare(metadata i64* %__s1_len257, metadata !922, metadata !1013), !dbg !3522
  %148 = bitcast i64* %__s2_len259 to i8*, !dbg !3521
  call void @llvm.lifetime.start(i64 8, i8* %148) #2, !dbg !3521
  call void @llvm.dbg.declare(metadata i64* %__s2_len259, metadata !925, metadata !1013), !dbg !3523
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.7 to i64)), i64 1), label %land.lhs.true.261, label %cond.false.308, !dbg !3524

land.lhs.true.261:                                ; preds = %if.else.255
  store i64 7, i64* %__s2_len259, align 8, !dbg !3525, !tbaa !1565
  %149 = load i64, i64* %__s2_len259, align 8, !dbg !3527, !tbaa !1565
  %cmp262 = icmp ult i64 %149, 4, !dbg !3528
  br i1 %cmp262, label %cond.true.264, label %cond.false.308, !dbg !3529

cond.true.264:                                    ; preds = %land.lhs.true.261
  %150 = bitcast i8** %__s1266 to i8*, !dbg !3530
  call void @llvm.lifetime.start(i64 8, i8* %150) #2, !dbg !3530
  call void @llvm.dbg.declare(metadata i8** %__s1266, metadata !926, metadata !1013), !dbg !3532
  %arraydecay267 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3533
  store i8* %arraydecay267, i8** %__s1266, align 8, !dbg !3532, !tbaa !1009
  %151 = bitcast i32* %__result269 to i8*, !dbg !3534
  call void @llvm.lifetime.start(i64 4, i8* %151) #2, !dbg !3534
  call void @llvm.dbg.declare(metadata i32* %__result269, metadata !928, metadata !1013), !dbg !3535
  %152 = load i8*, i8** %__s1266, align 8, !dbg !3536, !tbaa !1009
  %arrayidx270 = getelementptr i8, i8* %152, i64 0, !dbg !3536
  %153 = load i8, i8* %arrayidx270, align 1, !dbg !3536, !tbaa !1178
  %conv271 = zext i8 %153 to i32, !dbg !3536
  %154 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), align 1, !dbg !3537, !tbaa !1178
  %conv272 = zext i8 %154 to i32, !dbg !3537
  %sub273 = sub i32 %conv271, %conv272, !dbg !3538
  store i32 %sub273, i32* %__result269, align 4, !dbg !3535, !tbaa !1143
  %155 = load i64, i64* %__s2_len259, align 8, !dbg !3539, !tbaa !1565
  %cmp274 = icmp ugt i64 %155, 0, !dbg !3541
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.306, !dbg !3542

land.lhs.true.276:                                ; preds = %cond.true.264
  %156 = load i32, i32* %__result269, align 4, !dbg !3543, !tbaa !1143
  %cmp277 = icmp eq i32 %156, 0, !dbg !3545
  br i1 %cmp277, label %if.then.279, label %if.end.306, !dbg !3546

if.then.279:                                      ; preds = %land.lhs.true.276
  %157 = load i8*, i8** %__s1266, align 8, !dbg !3547, !tbaa !1009
  %arrayidx280 = getelementptr i8, i8* %157, i64 1, !dbg !3547
  %158 = load i8, i8* %arrayidx280, align 1, !dbg !3547, !tbaa !1178
  %conv281 = zext i8 %158 to i32, !dbg !3547
  %159 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i64 1), align 1, !dbg !3550, !tbaa !1178
  %conv282 = zext i8 %159 to i32, !dbg !3550
  %sub283 = sub i32 %conv281, %conv282, !dbg !3551
  store i32 %sub283, i32* %__result269, align 4, !dbg !3552, !tbaa !1143
  %160 = load i64, i64* %__s2_len259, align 8, !dbg !3553, !tbaa !1565
  %cmp284 = icmp ugt i64 %160, 1, !dbg !3555
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.305, !dbg !3556

land.lhs.true.286:                                ; preds = %if.then.279
  %161 = load i32, i32* %__result269, align 4, !dbg !3557, !tbaa !1143
  %cmp287 = icmp eq i32 %161, 0, !dbg !3559
  br i1 %cmp287, label %if.then.289, label %if.end.305, !dbg !3560

if.then.289:                                      ; preds = %land.lhs.true.286
  %162 = load i8*, i8** %__s1266, align 8, !dbg !3561, !tbaa !1009
  %arrayidx290 = getelementptr i8, i8* %162, i64 2, !dbg !3561
  %163 = load i8, i8* %arrayidx290, align 1, !dbg !3561, !tbaa !1178
  %conv291 = zext i8 %163 to i32, !dbg !3561
  %164 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i64 2), align 1, !dbg !3564, !tbaa !1178
  %conv292 = zext i8 %164 to i32, !dbg !3564
  %sub293 = sub i32 %conv291, %conv292, !dbg !3565
  store i32 %sub293, i32* %__result269, align 4, !dbg !3566, !tbaa !1143
  %165 = load i64, i64* %__s2_len259, align 8, !dbg !3567, !tbaa !1565
  %cmp294 = icmp ugt i64 %165, 2, !dbg !3569
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.304, !dbg !3570

land.lhs.true.296:                                ; preds = %if.then.289
  %166 = load i32, i32* %__result269, align 4, !dbg !3571, !tbaa !1143
  %cmp297 = icmp eq i32 %166, 0, !dbg !3573
  br i1 %cmp297, label %if.then.299, label %if.end.304, !dbg !3574

if.then.299:                                      ; preds = %land.lhs.true.296
  %167 = load i8*, i8** %__s1266, align 8, !dbg !3575, !tbaa !1009
  %arrayidx300 = getelementptr i8, i8* %167, i64 3, !dbg !3575
  %168 = load i8, i8* %arrayidx300, align 1, !dbg !3575, !tbaa !1178
  %conv301 = zext i8 %168 to i32, !dbg !3575
  %169 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i64 3), align 1, !dbg !3577, !tbaa !1178
  %conv302 = zext i8 %169 to i32, !dbg !3577
  %sub303 = sub i32 %conv301, %conv302, !dbg !3578
  store i32 %sub303, i32* %__result269, align 4, !dbg !3579, !tbaa !1143
  br label %if.end.304, !dbg !3580

if.end.304:                                       ; preds = %if.then.299, %land.lhs.true.296, %if.then.289
  br label %if.end.305, !dbg !3581

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.286, %if.then.279
  br label %if.end.306, !dbg !3585

if.end.306:                                       ; preds = %if.end.305, %land.lhs.true.276, %cond.true.264
  %170 = load i32, i32* %__result269, align 4, !dbg !3589, !tbaa !1143
  store i32 %170, i32* %tmp307, !dbg !3593, !tbaa !1143
  %171 = bitcast i32* %__result269 to i8*, !dbg !3594
  call void @llvm.lifetime.end(i64 4, i8* %171) #2, !dbg !3594
  %172 = bitcast i8** %__s1266 to i8*, !dbg !3594
  call void @llvm.lifetime.end(i64 8, i8* %172) #2, !dbg !3594
  %173 = load i32, i32* %tmp307, !dbg !3595, !tbaa !1143
  br label %cond.end.311, !dbg !3529

cond.false.308:                                   ; preds = %land.lhs.true.261, %if.else.255
  %arraydecay309 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0, !dbg !3596
  %call310 = call i32 @strcmp(i8* %arraydecay309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #2, !dbg !3599
  br label %cond.end.311, !dbg !3529

cond.end.311:                                     ; preds = %cond.false.308, %if.end.306
  %cond312 = phi i32 [ %173, %if.end.306 ], [ %call310, %cond.false.308 ], !dbg !3529
  store i32 %cond312, i32* %tmp260, !dbg !3600, !tbaa !1143
  %174 = bitcast i64* %__s2_len259 to i8*, !dbg !3603
  call void @llvm.lifetime.end(i64 8, i8* %174) #2, !dbg !3603
  %175 = bitcast i64* %__s1_len257 to i8*, !dbg !3603
  call void @llvm.lifetime.end(i64 8, i8* %175) #2, !dbg !3603
  %176 = load i32, i32* %tmp260, !dbg !3604, !tbaa !1143
  %tobool313 = icmp ne i32 %176, 0, !dbg !3605
  br i1 %tobool313, label %if.else.315, label %if.then.314, !dbg !3606

if.then.314:                                      ; preds = %cond.end.311
  store i32 4, i32* %retval, !dbg !3607
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3607

if.else.315:                                      ; preds = %cond.end.311
  store i32 6, i32* %retval, !dbg !3609
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3609

cleanup:                                          ; preds = %if.else.315, %if.then.314, %if.then.254, %if.then.194, %if.then.134, %if.then.75, %if.then
  %177 = bitcast i8** %dst to i8*, !dbg !3611
  call void @llvm.lifetime.end(i64 8, i8* %177) #2, !dbg !3611
  %178 = bitcast i8** %src to i8*, !dbg !3611
  call void @llvm.lifetime.end(i64 8, i8* %178) #2, !dbg !3611
  %179 = bitcast [20 x i8]* %buf to i8*, !dbg !3611
  call void @llvm.lifetime.end(i64 20, i8* %179) #2, !dbg !3611
  %180 = load i32, i32* %retval, !dbg !3611
  ret i32 %180, !dbg !3611
}

declare %struct._object* @_pysqlite_connection_begin(%struct.pysqlite_Connection*) #3

declare %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection*, %struct._object*) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

declare void @pysqlite_statement_bind_parameters(%struct.pysqlite_Statement*, %struct._object*) #3

declare i32 @pysqlite_step(%struct.sqlite3_stmt*, %struct.pysqlite_Connection*) #3

declare i32 @pysqlite_statement_recompile(%struct.pysqlite_Statement*, %struct._object*) #3

declare i32 @_pysqlite_seterror(%struct.sqlite3*, %struct.sqlite3_stmt*) #3

declare void @PyErr_Print() #3

declare void @PyErr_Clear() #3

declare i32 @sqlite3_changes(%struct.sqlite3*) #3

declare i64 @sqlite3_last_insert_rowid(%struct.sqlite3*) #3

declare i32 @sqlite3_get_autocommit(%struct.sqlite3*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_execute(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !759, metadata !1013), !dbg !3612
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !760, metadata !1013), !dbg !3613
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3614, !tbaa !1009
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3615, !tbaa !1009
  %call = call %struct._object* @_pysqlite_query_execute(%struct.pysqlite_Cursor* %0, i32 0, %struct._object* %1), !dbg !3616
  ret %struct._object* %call, !dbg !3617
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_executemany(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !763, metadata !1013), !dbg !3618
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !764, metadata !1013), !dbg !3619
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3620, !tbaa !1009
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3621, !tbaa !1009
  %call = call %struct._object* @_pysqlite_query_execute(%struct.pysqlite_Cursor* %0, i32 1, %struct._object* %1), !dbg !3622
  ret %struct._object* %call, !dbg !3623
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_executescript(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %script_obj = alloca %struct._object*, align 8
  %script_str = alloca %struct._object*, align 8
  %script_cstr = alloca i8*, align 8
  %statement = alloca %struct.sqlite3_stmt*, align 8
  %rc = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !767, metadata !1013), !dbg !3624
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !768, metadata !1013), !dbg !3625
  %0 = bitcast %struct._object** %script_obj to i8*, !dbg !3626
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3626
  call void @llvm.dbg.declare(metadata %struct._object** %script_obj, metadata !769, metadata !1013), !dbg !3627
  %1 = bitcast %struct._object** %script_str to i8*, !dbg !3628
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3628
  call void @llvm.dbg.declare(metadata %struct._object** %script_str, metadata !770, metadata !1013), !dbg !3629
  store %struct._object* null, %struct._object** %script_str, align 8, !dbg !3629, !tbaa !1009
  %2 = bitcast i8** %script_cstr to i8*, !dbg !3630
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3630
  call void @llvm.dbg.declare(metadata i8** %script_cstr, metadata !771, metadata !1013), !dbg !3631
  %3 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !3632
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3632
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %statement, metadata !772, metadata !1013), !dbg !3633
  %4 = bitcast i32* %rc to i8*, !dbg !3634
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !3634
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !773, metadata !1013), !dbg !3635
  %5 = bitcast %struct._object** %result to i8*, !dbg !3636
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3636
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !774, metadata !1013), !dbg !3637
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3638, !tbaa !1009
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._object** %script_obj), !dbg !3640
  %tobool = icmp ne i32 %call, 0, !dbg !3640
  br i1 %tobool, label %if.end, label %if.then, !dbg !3641

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3642

if.end:                                           ; preds = %entry
  %7 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3644, !tbaa !1009
  %call1 = call i32 @check_cursor(%struct.pysqlite_Cursor* %7), !dbg !3646
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3646
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !3647

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3648
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3648

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3650, !tbaa !1009
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 10, !dbg !3651
  store i32 0, i32* %reset, align 4, !dbg !3652, !tbaa !1501
  %9 = load %struct._object*, %struct._object** %script_obj, align 8, !dbg !3653, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !3655
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3655, !tbaa !1050
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19, !dbg !3656
  %11 = load i64, i64* %tp_flags, align 8, !dbg !3656, !tbaa !1987
  %and = and i64 %11, 268435456, !dbg !3657
  %cmp = icmp ne i64 %and, 0, !dbg !3658
  br i1 %cmp, label %if.then.5, label %if.else, !dbg !3659

if.then.5:                                        ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %script_obj, align 8, !dbg !3660, !tbaa !1009
  %call6 = call i8* @PyUnicode_AsUTF8(%struct._object* %12), !dbg !3662
  store i8* %call6, i8** %script_cstr, align 8, !dbg !3663, !tbaa !1009
  %13 = load i8*, i8** %script_cstr, align 8, !dbg !3664, !tbaa !1009
  %tobool7 = icmp ne i8* %13, null, !dbg !3664
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !3666

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval, !dbg !3667
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3667

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10, !dbg !3669

if.else:                                          ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3670, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0)), !dbg !3672
  store %struct._object* null, %struct._object** %retval, !dbg !3673
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3673

if.end.10:                                        ; preds = %if.end.9
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3674, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 1, !dbg !3675
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !3675, !tbaa !1086
  %call11 = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %16, %struct._object* null), !dbg !3676
  store %struct._object* %call11, %struct._object** %result, align 8, !dbg !3677, !tbaa !1009
  %17 = load %struct._object*, %struct._object** %result, align 8, !dbg !3678, !tbaa !1009
  %tobool12 = icmp ne %struct._object* %17, null, !dbg !3678
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !3680

if.then.13:                                       ; preds = %if.end.10
  br label %error, !dbg !3681

if.end.14:                                        ; preds = %if.end.10
  br label %do.body, !dbg !3683

do.body:                                          ; preds = %if.end.14
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3684
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !3684
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !775, metadata !1013), !dbg !3686
  %19 = load %struct._object*, %struct._object** %result, align 8, !dbg !3687, !tbaa !1009
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !3686, !tbaa !1009
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3688, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !3690
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !3691, !tbaa !1040
  %dec = add i64 %21, -1, !dbg !3691
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3691, !tbaa !1040
  %cmp15 = icmp ne i64 %dec, 0, !dbg !3692
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !3693

if.then.16:                                       ; preds = %do.body
  br label %if.end.19, !dbg !3694

if.else.17:                                       ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3696, !tbaa !1009
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !3698
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !3698, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !3699
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3699, !tbaa !1052
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3700, !tbaa !1009
  call void %24(%struct._object* %25), !dbg !3701
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3702
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !3702
  br label %do.cond, !dbg !3704

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !3705

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !3707

while.cond:                                       ; preds = %if.end.51, %do.end
  br label %while.body, !dbg !3708

while.body:                                       ; preds = %while.cond
  %27 = bitcast %struct._ts** %_save to i8*, !dbg !3711
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3711
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !777, metadata !1013), !dbg !3712
  %call20 = call %struct._ts* @PyEval_SaveThread(), !dbg !3713
  store %struct._ts* %call20, %struct._ts** %_save, align 8, !dbg !3714, !tbaa !1009
  %28 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3715, !tbaa !1009
  %connection21 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %28, i32 0, i32 1, !dbg !3716
  %29 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection21, align 8, !dbg !3716, !tbaa !1086
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %29, i32 0, i32 1, !dbg !3717
  %30 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !3717, !tbaa !2546
  %31 = load i8*, i8** %script_cstr, align 8, !dbg !3718, !tbaa !1009
  %call22 = call i32 @sqlite3_prepare(%struct.sqlite3* %30, i8* %31, i32 -1, %struct.sqlite3_stmt** %statement, i8** %script_cstr), !dbg !3719
  store i32 %call22, i32* %rc, align 4, !dbg !3720, !tbaa !1143
  %32 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3721, !tbaa !1009
  call void @PyEval_RestoreThread(%struct._ts* %32), !dbg !3722
  %33 = bitcast %struct._ts** %_save to i8*, !dbg !3723
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3723
  %34 = load i32, i32* %rc, align 4, !dbg !3724, !tbaa !1143
  %cmp23 = icmp ne i32 %34, 0, !dbg !3726
  br i1 %cmp23, label %if.then.24, label %if.end.28, !dbg !3727

if.then.24:                                       ; preds = %while.body
  %35 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3728, !tbaa !1009
  %connection25 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %35, i32 0, i32 1, !dbg !3730
  %36 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection25, align 8, !dbg !3730, !tbaa !1086
  %db26 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %36, i32 0, i32 1, !dbg !3731
  %37 = load %struct.sqlite3*, %struct.sqlite3** %db26, align 8, !dbg !3731, !tbaa !2546
  %call27 = call i32 @_pysqlite_seterror(%struct.sqlite3* %37, %struct.sqlite3_stmt* null), !dbg !3732
  br label %error, !dbg !3733

if.end.28:                                        ; preds = %while.body
  store i32 100, i32* %rc, align 4, !dbg !3734, !tbaa !1143
  br label %while.cond.29, !dbg !3735

while.cond.29:                                    ; preds = %while.body.31, %if.end.28
  %38 = load i32, i32* %rc, align 4, !dbg !3736, !tbaa !1143
  %cmp30 = icmp eq i32 %38, 100, !dbg !3739
  br i1 %cmp30, label %while.body.31, label %while.end, !dbg !3735

while.body.31:                                    ; preds = %while.cond.29
  %39 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3740, !tbaa !1009
  %40 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3742, !tbaa !1009
  %connection32 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %40, i32 0, i32 1, !dbg !3743
  %41 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection32, align 8, !dbg !3743, !tbaa !1086
  %call33 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %39, %struct.pysqlite_Connection* %41), !dbg !3744
  store i32 %call33, i32* %rc, align 4, !dbg !3745, !tbaa !1143
  br label %while.cond.29, !dbg !3735

while.end:                                        ; preds = %while.cond.29
  %42 = load i32, i32* %rc, align 4, !dbg !3746, !tbaa !1143
  %cmp34 = icmp ne i32 %42, 101, !dbg !3748
  br i1 %cmp34, label %if.then.35, label %if.end.40, !dbg !3749

if.then.35:                                       ; preds = %while.end
  %43 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3750, !tbaa !1009
  %call36 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %43), !dbg !3752
  %44 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3753, !tbaa !1009
  %connection37 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %44, i32 0, i32 1, !dbg !3754
  %45 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection37, align 8, !dbg !3754, !tbaa !1086
  %db38 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %45, i32 0, i32 1, !dbg !3755
  %46 = load %struct.sqlite3*, %struct.sqlite3** %db38, align 8, !dbg !3755, !tbaa !2546
  %call39 = call i32 @_pysqlite_seterror(%struct.sqlite3* %46, %struct.sqlite3_stmt* null), !dbg !3756
  br label %error, !dbg !3757

if.end.40:                                        ; preds = %while.end
  %47 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3758, !tbaa !1009
  %call41 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %47), !dbg !3759
  store i32 %call41, i32* %rc, align 4, !dbg !3760, !tbaa !1143
  %48 = load i32, i32* %rc, align 4, !dbg !3761, !tbaa !1143
  %cmp42 = icmp ne i32 %48, 0, !dbg !3763
  br i1 %cmp42, label %if.then.43, label %if.end.47, !dbg !3764

if.then.43:                                       ; preds = %if.end.40
  %49 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3765, !tbaa !1009
  %connection44 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %49, i32 0, i32 1, !dbg !3767
  %50 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection44, align 8, !dbg !3767, !tbaa !1086
  %db45 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %50, i32 0, i32 1, !dbg !3768
  %51 = load %struct.sqlite3*, %struct.sqlite3** %db45, align 8, !dbg !3768, !tbaa !2546
  %call46 = call i32 @_pysqlite_seterror(%struct.sqlite3* %51, %struct.sqlite3_stmt* null), !dbg !3769
  br label %error, !dbg !3770

if.end.47:                                        ; preds = %if.end.40
  %52 = load i8*, i8** %script_cstr, align 8, !dbg !3771, !tbaa !1009
  %53 = load i8, i8* %52, align 1, !dbg !3773, !tbaa !1178
  %conv = sext i8 %53 to i32, !dbg !3773
  %cmp48 = icmp eq i32 %conv, 0, !dbg !3774
  br i1 %cmp48, label %if.then.50, label %if.end.51, !dbg !3775

if.then.50:                                       ; preds = %if.end.47
  br label %while.end.52, !dbg !3776

if.end.51:                                        ; preds = %if.end.47
  br label %while.cond, !dbg !3707

while.end.52:                                     ; preds = %if.then.50
  br label %error, !dbg !3707

error:                                            ; preds = %while.end.52, %if.then.43, %if.then.35, %if.then.24, %if.then.13
  br label %do.body.53, !dbg !3778

do.body.53:                                       ; preds = %error
  %54 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3779
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !3779
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !780, metadata !1013), !dbg !3781
  %55 = load %struct._object*, %struct._object** %script_str, align 8, !dbg !3782, !tbaa !1009
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3781, !tbaa !1009
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3783, !tbaa !1009
  %cmp54 = icmp ne %struct._object* %56, null, !dbg !3784
  br i1 %cmp54, label %if.then.56, label %if.end.70, !dbg !3785

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57, !dbg !3786

do.body.57:                                       ; preds = %if.then.56
  %57 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !3788
  call void @llvm.lifetime.start(i64 8, i8* %57) #2, !dbg !3788
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !782, metadata !1013), !dbg !3790
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3791, !tbaa !1009
  store %struct._object* %58, %struct._object** %_py_decref_tmp58, align 8, !dbg !3790, !tbaa !1009
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3792, !tbaa !1009
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0, !dbg !3794
  %60 = load i64, i64* %ob_refcnt59, align 8, !dbg !3795, !tbaa !1040
  %dec60 = add i64 %60, -1, !dbg !3795
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !3795, !tbaa !1040
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !3796
  br i1 %cmp61, label %if.then.63, label %if.else.64, !dbg !3797

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67, !dbg !3798

if.else.64:                                       ; preds = %do.body.57
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3800, !tbaa !1009
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1, !dbg !3802
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !3802, !tbaa !1050
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4, !dbg !3803
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !3803, !tbaa !1052
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3804, !tbaa !1009
  call void %63(%struct._object* %64), !dbg !3805
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %65 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !3806
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !3806
  br label %do.cond.68, !dbg !3808

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !3809

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !3811

if.end.70:                                        ; preds = %do.end.69, %do.body.53
  %66 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3813
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3813
  br label %do.cond.71, !dbg !3816

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !3817

do.end.72:                                        ; preds = %do.cond.71
  %call73 = call %struct._object* @PyErr_Occurred(), !dbg !3819
  %tobool74 = icmp ne %struct._object* %call73, null, !dbg !3819
  br i1 %tobool74, label %if.then.75, label %if.else.76, !dbg !3821

if.then.75:                                       ; preds = %do.end.72
  store %struct._object* null, %struct._object** %retval, !dbg !3822
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3822

if.else.76:                                       ; preds = %do.end.72
  %67 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3824, !tbaa !1009
  %68 = bitcast %struct.pysqlite_Cursor* %67 to %struct._object*, !dbg !3826
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0, !dbg !3827
  %69 = load i64, i64* %ob_refcnt77, align 8, !dbg !3828, !tbaa !1040
  %inc = add i64 %69, 1, !dbg !3828
  store i64 %inc, i64* %ob_refcnt77, align 8, !dbg !3828, !tbaa !1040
  %70 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3829, !tbaa !1009
  %71 = bitcast %struct.pysqlite_Cursor* %70 to %struct._object*, !dbg !3830
  store %struct._object* %71, %struct._object** %retval, !dbg !3831
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3831

cleanup:                                          ; preds = %if.else.76, %if.then.75, %if.else, %if.then.8, %if.then.3, %if.then
  %72 = bitcast %struct._object** %result to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %72) #2, !dbg !3832
  %73 = bitcast i32* %rc to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 4, i8* %73) #2, !dbg !3832
  %74 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %74) #2, !dbg !3832
  %75 = bitcast i8** %script_cstr to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %75) #2, !dbg !3832
  %76 = bitcast %struct._object** %script_str to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %76) #2, !dbg !3832
  %77 = bitcast %struct._object** %script_obj to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !3832
  %78 = load %struct._object*, %struct._object** %retval, !dbg !3832
  ret %struct._object* %78, !dbg !3832
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #3

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_getiter(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !787, metadata !1013), !dbg !3833
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3834, !tbaa !1009
  %1 = bitcast %struct.pysqlite_Cursor* %0 to %struct._object*, !dbg !3835
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !3836
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !3837, !tbaa !1040
  %inc = add i64 %2, 1, !dbg !3837
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3837, !tbaa !1040
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3838, !tbaa !1009
  %4 = bitcast %struct.pysqlite_Cursor* %3 to %struct._object*, !dbg !3839
  ret %struct._object* %4, !dbg !3840
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %next_row_tuple = alloca %struct._object*, align 8
  %next_row = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !790, metadata !1013), !dbg !3841
  %0 = bitcast %struct._object** %next_row_tuple to i8*, !dbg !3842
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3842
  call void @llvm.dbg.declare(metadata %struct._object** %next_row_tuple, metadata !791, metadata !1013), !dbg !3843
  %1 = bitcast %struct._object** %next_row to i8*, !dbg !3844
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3844
  call void @llvm.dbg.declare(metadata %struct._object** %next_row, metadata !792, metadata !1013), !dbg !3845
  %2 = bitcast i32* %rc to i8*, !dbg !3846
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3846
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !793, metadata !1013), !dbg !3847
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3848, !tbaa !1009
  %call = call i32 @check_cursor(%struct.pysqlite_Cursor* %3), !dbg !3850
  %tobool = icmp ne i32 %call, 0, !dbg !3850
  br i1 %tobool, label %if.end, label %if.then, !dbg !3851

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3852
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3852

if.end:                                           ; preds = %entry
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3854, !tbaa !1009
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %4, i32 0, i32 10, !dbg !3856
  %5 = load i32, i32* %reset, align 4, !dbg !3856, !tbaa !1501
  %tobool1 = icmp ne i32 %5, 0, !dbg !3854
  br i1 %tobool1, label %if.then.2, label %if.end.3, !dbg !3857

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !3858, !tbaa !1009
  %7 = load i8*, i8** @errmsg_fetch_across_rollback, align 8, !dbg !3860, !tbaa !1009
  call void @PyErr_SetString(%struct._object* %6, i8* %7), !dbg !3861
  store %struct._object* null, %struct._object** %retval, !dbg !3862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3862

if.end.3:                                         ; preds = %if.end
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3863, !tbaa !1009
  %next_row4 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 13, !dbg !3864
  %9 = load %struct._object*, %struct._object** %next_row4, align 8, !dbg !3864, !tbaa !1934
  %tobool5 = icmp ne %struct._object* %9, null, !dbg !3863
  br i1 %tobool5, label %if.end.22, label %if.then.6, !dbg !3865

if.then.6:                                        ; preds = %if.end.3
  %10 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3866, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %10, i32 0, i32 8, !dbg !3867
  %11 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3867, !tbaa !1150
  %tobool7 = icmp ne %struct.pysqlite_Statement* %11, null, !dbg !3866
  br i1 %tobool7, label %if.then.8, label %if.end.21, !dbg !3868

if.then.8:                                        ; preds = %if.then.6
  %12 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3869, !tbaa !1009
  %statement9 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %12, i32 0, i32 8, !dbg !3870
  %13 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement9, align 8, !dbg !3870, !tbaa !1150
  %call10 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %13), !dbg !3871
  br label %do.body, !dbg !3872

do.body:                                          ; preds = %if.then.8
  %14 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3873
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !3873
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !794, metadata !1013), !dbg !3875
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3876, !tbaa !1009
  %statement11 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 8, !dbg !3877
  %16 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement11, align 8, !dbg !3877, !tbaa !1150
  %17 = bitcast %struct.pysqlite_Statement* %16 to %struct._object*, !dbg !3878
  store %struct._object* %17, %struct._object** %_py_tmp, align 8, !dbg !3875, !tbaa !1009
  %18 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3879, !tbaa !1009
  %cmp = icmp ne %struct._object* %18, null, !dbg !3880
  br i1 %cmp, label %if.then.12, label %if.end.18, !dbg !3881

if.then.12:                                       ; preds = %do.body
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3882, !tbaa !1009
  %statement13 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 8, !dbg !3884
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement13, align 8, !dbg !3885, !tbaa !1150
  br label %do.body.14, !dbg !3886

do.body.14:                                       ; preds = %if.then.12
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3887
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3887
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !800, metadata !1013), !dbg !3889
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3890, !tbaa !1009
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8, !dbg !3889, !tbaa !1009
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3891, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !3893
  %23 = load i64, i64* %ob_refcnt, align 8, !dbg !3894, !tbaa !1040
  %dec = add i64 %23, -1, !dbg !3894
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3894, !tbaa !1040
  %cmp15 = icmp ne i64 %dec, 0, !dbg !3895
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !3896

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.17, !dbg !3897

if.else:                                          ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3899, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !3901
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3901, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !3902
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3902, !tbaa !1052
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3903, !tbaa !1009
  call void %26(%struct._object* %27), !dbg !3904
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3905
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !3905
  br label %do.cond, !dbg !3907

do.cond:                                          ; preds = %if.end.17
  br label %do.end, !dbg !3908

do.end:                                           ; preds = %do.cond
  br label %if.end.18, !dbg !3910

if.end.18:                                        ; preds = %do.end, %do.body
  %29 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3912
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !3912
  br label %do.cond.19, !dbg !3915

do.cond.19:                                       ; preds = %if.end.18
  br label %do.end.20, !dbg !3916

do.end.20:                                        ; preds = %do.cond.19
  br label %if.end.21, !dbg !3918

if.end.21:                                        ; preds = %do.end.20, %if.then.6
  store %struct._object* null, %struct._object** %retval, !dbg !3919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3919

if.end.22:                                        ; preds = %if.end.3
  %30 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3920, !tbaa !1009
  %next_row23 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %30, i32 0, i32 13, !dbg !3921
  %31 = load %struct._object*, %struct._object** %next_row23, align 8, !dbg !3921, !tbaa !1934
  store %struct._object* %31, %struct._object** %next_row_tuple, align 8, !dbg !3922, !tbaa !1009
  %32 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3923, !tbaa !1009
  %next_row24 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %32, i32 0, i32 13, !dbg !3924
  store %struct._object* null, %struct._object** %next_row24, align 8, !dbg !3925, !tbaa !1934
  %33 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3926, !tbaa !1009
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %33, i32 0, i32 7, !dbg !3927
  %34 = load %struct._object*, %struct._object** %row_factory, align 8, !dbg !3927, !tbaa !3928
  %cmp25 = icmp ne %struct._object* %34, @_Py_NoneStruct, !dbg !3929
  br i1 %cmp25, label %if.then.26, label %if.else.45, !dbg !3930

if.then.26:                                       ; preds = %if.end.22
  %35 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3931, !tbaa !1009
  %row_factory27 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %35, i32 0, i32 7, !dbg !3932
  %36 = load %struct._object*, %struct._object** %row_factory27, align 8, !dbg !3932, !tbaa !3928
  %37 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3933, !tbaa !1009
  %38 = load %struct._object*, %struct._object** %next_row_tuple, align 8, !dbg !3934, !tbaa !1009
  %call28 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct.pysqlite_Cursor* %37, %struct._object* %38), !dbg !3935
  store %struct._object* %call28, %struct._object** %next_row, align 8, !dbg !3936, !tbaa !1009
  %39 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !3937, !tbaa !1009
  %cmp29 = icmp eq %struct._object* %39, null, !dbg !3939
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !3940

if.then.30:                                       ; preds = %if.then.26
  %40 = load %struct._object*, %struct._object** %next_row_tuple, align 8, !dbg !3941, !tbaa !1009
  %41 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3943, !tbaa !1009
  %next_row31 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %41, i32 0, i32 13, !dbg !3944
  store %struct._object* %40, %struct._object** %next_row31, align 8, !dbg !3945, !tbaa !1934
  store %struct._object* null, %struct._object** %retval, !dbg !3946
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3946

if.end.32:                                        ; preds = %if.then.26
  br label %do.body.33, !dbg !3947

do.body.33:                                       ; preds = %if.end.32
  %42 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3948
  call void @llvm.lifetime.start(i64 8, i8* %42) #2, !dbg !3948
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !804, metadata !1013), !dbg !3950
  %43 = load %struct._object*, %struct._object** %next_row_tuple, align 8, !dbg !3951, !tbaa !1009
  store %struct._object* %43, %struct._object** %_py_decref_tmp34, align 8, !dbg !3950, !tbaa !1009
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3952, !tbaa !1009
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0, !dbg !3954
  %45 = load i64, i64* %ob_refcnt35, align 8, !dbg !3955, !tbaa !1040
  %dec36 = add i64 %45, -1, !dbg !3955
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !3955, !tbaa !1040
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !3956
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !3957

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !3958

if.else.39:                                       ; preds = %do.body.33
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3960, !tbaa !1009
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1, !dbg !3962
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !3962, !tbaa !1050
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4, !dbg !3963
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !3963, !tbaa !1052
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3964, !tbaa !1009
  call void %48(%struct._object* %49), !dbg !3965
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %50 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3966
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !3966
  br label %do.cond.43, !dbg !3968

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !3969

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.46, !dbg !3971

if.else.45:                                       ; preds = %if.end.22
  %51 = load %struct._object*, %struct._object** %next_row_tuple, align 8, !dbg !3972, !tbaa !1009
  store %struct._object* %51, %struct._object** %next_row, align 8, !dbg !3974, !tbaa !1009
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %do.end.44
  %52 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3975, !tbaa !1009
  %statement47 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %52, i32 0, i32 8, !dbg !3976
  %53 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement47, align 8, !dbg !3976, !tbaa !1150
  %tobool48 = icmp ne %struct.pysqlite_Statement* %53, null, !dbg !3975
  br i1 %tobool48, label %if.then.49, label %if.end.98, !dbg !3977

if.then.49:                                       ; preds = %if.end.46
  %54 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3978, !tbaa !1009
  %statement50 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %54, i32 0, i32 8, !dbg !3979
  %55 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement50, align 8, !dbg !3979, !tbaa !1150
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %55, i32 0, i32 2, !dbg !3980
  %56 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8, !dbg !3980, !tbaa !1152
  %57 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3981, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %57, i32 0, i32 1, !dbg !3982
  %58 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !3982, !tbaa !1086
  %call51 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %56, %struct.pysqlite_Connection* %58), !dbg !3983
  store i32 %call51, i32* %rc, align 4, !dbg !3984, !tbaa !1143
  %59 = load i32, i32* %rc, align 4, !dbg !3985, !tbaa !1143
  %cmp52 = icmp ne i32 %59, 101, !dbg !3986
  br i1 %cmp52, label %land.lhs.true, label %if.end.71, !dbg !3987

land.lhs.true:                                    ; preds = %if.then.49
  %60 = load i32, i32* %rc, align 4, !dbg !3988, !tbaa !1143
  %cmp53 = icmp ne i32 %60, 100, !dbg !3990
  br i1 %cmp53, label %if.then.54, label %if.end.71, !dbg !3991

if.then.54:                                       ; preds = %land.lhs.true
  %61 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !3992, !tbaa !1009
  %statement55 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %61, i32 0, i32 8, !dbg !3993
  %62 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement55, align 8, !dbg !3993, !tbaa !1150
  %call56 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %62), !dbg !3994
  br label %do.body.57, !dbg !3995

do.body.57:                                       ; preds = %if.then.54
  %63 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !3996
  call void @llvm.lifetime.start(i64 8, i8* %63) #2, !dbg !3996
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !808, metadata !1013), !dbg !3998
  %64 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !3999, !tbaa !1009
  store %struct._object* %64, %struct._object** %_py_decref_tmp58, align 8, !dbg !3998, !tbaa !1009
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !4000, !tbaa !1009
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !4002
  %66 = load i64, i64* %ob_refcnt59, align 8, !dbg !4003, !tbaa !1040
  %dec60 = add i64 %66, -1, !dbg !4003
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !4003, !tbaa !1040
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !4004
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !4005

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !4006

if.else.63:                                       ; preds = %do.body.57
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !4008, !tbaa !1009
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !4010
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !4010, !tbaa !1050
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !4011
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !4011, !tbaa !1052
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !4012, !tbaa !1009
  call void %69(%struct._object* %70), !dbg !4013
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %71 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !4014
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !4014
  br label %do.cond.67, !dbg !4016

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !4017

do.end.68:                                        ; preds = %do.cond.67
  %72 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4019, !tbaa !1009
  %connection69 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %72, i32 0, i32 1, !dbg !4020
  %73 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection69, align 8, !dbg !4020, !tbaa !1086
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %73, i32 0, i32 1, !dbg !4021
  %74 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !4021, !tbaa !2546
  %call70 = call i32 @_pysqlite_seterror(%struct.sqlite3* %74, %struct.sqlite3_stmt* null), !dbg !4022
  store %struct._object* null, %struct._object** %retval, !dbg !4023
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4023

if.end.71:                                        ; preds = %land.lhs.true, %if.then.49
  %75 = load i32, i32* %rc, align 4, !dbg !4024, !tbaa !1143
  %cmp72 = icmp eq i32 %75, 100, !dbg !4025
  br i1 %cmp72, label %if.then.73, label %if.end.97, !dbg !4026

if.then.73:                                       ; preds = %if.end.71
  %76 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4027, !tbaa !1009
  %call74 = call %struct._object* @_pysqlite_fetch_one_row(%struct.pysqlite_Cursor* %76), !dbg !4028
  %77 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4029, !tbaa !1009
  %next_row75 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %77, i32 0, i32 13, !dbg !4030
  store %struct._object* %call74, %struct._object** %next_row75, align 8, !dbg !4031, !tbaa !1934
  %78 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4032, !tbaa !1009
  %next_row76 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %78, i32 0, i32 13, !dbg !4033
  %79 = load %struct._object*, %struct._object** %next_row76, align 8, !dbg !4033, !tbaa !1934
  %cmp77 = icmp eq %struct._object* %79, null, !dbg !4034
  br i1 %cmp77, label %if.then.78, label %if.end.96, !dbg !4035

if.then.78:                                       ; preds = %if.then.73
  %80 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4036, !tbaa !1009
  %statement79 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %80, i32 0, i32 8, !dbg !4037
  %81 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement79, align 8, !dbg !4037, !tbaa !1150
  %call80 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %81), !dbg !4038
  br label %do.body.81, !dbg !4039

do.body.81:                                       ; preds = %if.then.78
  %82 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !4040
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !4040
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !814, metadata !1013), !dbg !4042
  %83 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !4043, !tbaa !1009
  store %struct._object* %83, %struct._object** %_py_decref_tmp82, align 8, !dbg !4042, !tbaa !1009
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4044, !tbaa !1009
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0, !dbg !4046
  %85 = load i64, i64* %ob_refcnt83, align 8, !dbg !4047, !tbaa !1040
  %dec84 = add i64 %85, -1, !dbg !4047
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !4047, !tbaa !1040
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !4048
  br i1 %cmp85, label %if.then.86, label %if.else.87, !dbg !4049

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90, !dbg !4050

if.else.87:                                       ; preds = %do.body.81
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4052, !tbaa !1009
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1, !dbg !4054
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8, !dbg !4054, !tbaa !1050
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4, !dbg !4055
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8, !dbg !4055, !tbaa !1052
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4056, !tbaa !1009
  call void %88(%struct._object* %89), !dbg !4057
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  %90 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !4058
  call void @llvm.lifetime.end(i64 8, i8* %90) #2, !dbg !4058
  br label %do.cond.91, !dbg !4060

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !4061

do.end.92:                                        ; preds = %do.cond.91
  %91 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4063, !tbaa !1009
  %connection93 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %91, i32 0, i32 1, !dbg !4064
  %92 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection93, align 8, !dbg !4064, !tbaa !1086
  %db94 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %92, i32 0, i32 1, !dbg !4065
  %93 = load %struct.sqlite3*, %struct.sqlite3** %db94, align 8, !dbg !4065, !tbaa !2546
  %call95 = call i32 @_pysqlite_seterror(%struct.sqlite3* %93, %struct.sqlite3_stmt* null), !dbg !4066
  store %struct._object* null, %struct._object** %retval, !dbg !4067
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4067

if.end.96:                                        ; preds = %if.then.73
  br label %if.end.97, !dbg !4068

if.end.97:                                        ; preds = %if.end.96, %if.end.71
  br label %if.end.98, !dbg !4069

if.end.98:                                        ; preds = %if.end.97, %if.end.46
  %94 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !4070, !tbaa !1009
  store %struct._object* %94, %struct._object** %retval, !dbg !4071
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4071

cleanup:                                          ; preds = %if.end.98, %do.end.92, %do.end.68, %if.then.30, %if.end.21, %if.then.2, %if.then
  %95 = bitcast i32* %rc to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 4, i8* %95) #2, !dbg !4072
  %96 = bitcast %struct._object** %next_row to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !4072
  %97 = bitcast %struct._object** %next_row_tuple to i8*, !dbg !4072
  call void @llvm.lifetime.end(i64 8, i8* %97) #2, !dbg !4072
  %98 = load %struct._object*, %struct._object** %retval, !dbg !4072
  ret %struct._object* %98, !dbg !4072
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_fetchone(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %row = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !822, metadata !1013), !dbg !4073
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !823, metadata !1013), !dbg !4074
  %0 = bitcast %struct._object** %row to i8*, !dbg !4075
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4075
  call void @llvm.dbg.declare(metadata %struct._object** %row, metadata !824, metadata !1013), !dbg !4076
  %1 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4077, !tbaa !1009
  %call = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %1), !dbg !4078
  store %struct._object* %call, %struct._object** %row, align 8, !dbg !4079, !tbaa !1009
  %2 = load %struct._object*, %struct._object** %row, align 8, !dbg !4080, !tbaa !1009
  %tobool = icmp ne %struct._object* %2, null, !dbg !4080
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4082

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4083
  %tobool2 = icmp ne %struct._object* %call1, null, !dbg !4083
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4085

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4086, !tbaa !1040
  %inc = add i64 %3, 1, !dbg !4086
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4086, !tbaa !1040
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4088
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4088

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct._object*, %struct._object** %row, align 8, !dbg !4089, !tbaa !1009
  store %struct._object* %4, %struct._object** %retval, !dbg !4090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4090

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct._object** %row to i8*, !dbg !4091
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !4091
  %6 = load %struct._object*, %struct._object** %retval, !dbg !4091
  ret %struct._object* %6, !dbg !4091
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_fetchmany(%struct.pysqlite_Cursor* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %row = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %maxrows = alloca i32, align 4
  %counter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !829, metadata !1013), !dbg !4092
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !830, metadata !1013), !dbg !4093
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !831, metadata !1013), !dbg !4094
  %0 = bitcast %struct._object** %row to i8*, !dbg !4095
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4095
  call void @llvm.dbg.declare(metadata %struct._object** %row, metadata !832, metadata !1013), !dbg !4096
  %1 = bitcast %struct._object** %list to i8*, !dbg !4097
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4097
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !833, metadata !1013), !dbg !4098
  %2 = bitcast i32* %maxrows to i8*, !dbg !4099
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %maxrows, metadata !834, metadata !1013), !dbg !4100
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4101, !tbaa !1009
  %arraysize = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %3, i32 0, i32 4, !dbg !4102
  %4 = load i32, i32* %arraysize, align 4, !dbg !4102, !tbaa !4103
  store i32 %4, i32* %maxrows, align 4, !dbg !4100, !tbaa !1143
  %5 = bitcast i32* %counter to i8*, !dbg !4104
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !4104
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !835, metadata !1013), !dbg !4105
  store i32 0, i32* %counter, align 4, !dbg !4105, !tbaa !1143
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4106, !tbaa !1009
  %7 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !4108, !tbaa !1009
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_cursor_fetchmany.kwlist, i32 0, i32 0), i32* %maxrows), !dbg !4109
  %tobool = icmp ne i32 %call, 0, !dbg !4109
  br i1 %tobool, label %if.end, label %if.then, !dbg !4110

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4111

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0), !dbg !4113
  store %struct._object* %call1, %struct._object** %list, align 8, !dbg !4114, !tbaa !1009
  %8 = load %struct._object*, %struct._object** %list, align 8, !dbg !4115, !tbaa !1009
  %tobool2 = icmp ne %struct._object* %8, null, !dbg !4115
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !4117

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4118

if.end.4:                                         ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %row, align 8, !dbg !4120, !tbaa !1009
  br label %while.cond, !dbg !4121

while.cond:                                       ; preds = %if.end.16, %if.end.4
  %9 = load %struct._object*, %struct._object** %row, align 8, !dbg !4122, !tbaa !1009
  %tobool5 = icmp ne %struct._object* %9, null, !dbg !4121
  br i1 %tobool5, label %while.body, label %while.end, !dbg !4121

while.body:                                       ; preds = %while.cond
  %10 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4125, !tbaa !1009
  %call6 = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %10), !dbg !4126
  store %struct._object* %call6, %struct._object** %row, align 8, !dbg !4127, !tbaa !1009
  %11 = load %struct._object*, %struct._object** %row, align 8, !dbg !4128, !tbaa !1009
  %tobool7 = icmp ne %struct._object* %11, null, !dbg !4128
  br i1 %tobool7, label %if.then.8, label %if.else.12, !dbg !4129

if.then.8:                                        ; preds = %while.body
  %12 = load %struct._object*, %struct._object** %list, align 8, !dbg !4130, !tbaa !1009
  %13 = load %struct._object*, %struct._object** %row, align 8, !dbg !4131, !tbaa !1009
  %call9 = call i32 @PyList_Append(%struct._object* %12, %struct._object* %13), !dbg !4132
  br label %do.body, !dbg !4133

do.body:                                          ; preds = %if.then.8
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4134
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !4134
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !836, metadata !1013), !dbg !4136
  %15 = load %struct._object*, %struct._object** %row, align 8, !dbg !4137, !tbaa !1009
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !4136, !tbaa !1009
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4138, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !4140
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !4141, !tbaa !1040
  %dec = add i64 %17, -1, !dbg !4141
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4141, !tbaa !1040
  %cmp = icmp ne i64 %dec, 0, !dbg !4142
  br i1 %cmp, label %if.then.10, label %if.else, !dbg !4143

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !4144

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4146, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !4148
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4148, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !4149
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4149, !tbaa !1052
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4150, !tbaa !1009
  call void %20(%struct._object* %21), !dbg !4151
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4152
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !4152
  br label %do.cond, !dbg !4154

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !4155

do.end:                                           ; preds = %do.cond
  br label %if.end.13, !dbg !4157

if.else.12:                                       ; preds = %while.body
  br label %while.end, !dbg !4158

if.end.13:                                        ; preds = %do.end
  %23 = load i32, i32* %counter, align 4, !dbg !4160, !tbaa !1143
  %inc = add i32 %23, 1, !dbg !4160
  store i32 %inc, i32* %counter, align 4, !dbg !4160, !tbaa !1143
  %24 = load i32, i32* %maxrows, align 4, !dbg !4162, !tbaa !1143
  %cmp14 = icmp eq i32 %inc, %24, !dbg !4163
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !4164

if.then.15:                                       ; preds = %if.end.13
  br label %while.end, !dbg !4165

if.end.16:                                        ; preds = %if.end.13
  br label %while.cond, !dbg !4121

while.end:                                        ; preds = %if.then.15, %if.else.12, %while.cond
  %call17 = call %struct._object* @PyErr_Occurred(), !dbg !4167
  %tobool18 = icmp ne %struct._object* %call17, null, !dbg !4167
  br i1 %tobool18, label %if.then.19, label %if.else.32, !dbg !4168

if.then.19:                                       ; preds = %while.end
  br label %do.body.20, !dbg !4169

do.body.20:                                       ; preds = %if.then.19
  %25 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4170
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !4170
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !841, metadata !1013), !dbg !4172
  %26 = load %struct._object*, %struct._object** %list, align 8, !dbg !4173, !tbaa !1009
  store %struct._object* %26, %struct._object** %_py_decref_tmp21, align 8, !dbg !4172, !tbaa !1009
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4174, !tbaa !1009
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !4176
  %28 = load i64, i64* %ob_refcnt22, align 8, !dbg !4177, !tbaa !1040
  %dec23 = add i64 %28, -1, !dbg !4177
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !4177, !tbaa !1040
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !4178
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !4179

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !4180

if.else.26:                                       ; preds = %do.body.20
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4182, !tbaa !1009
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !4184
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !4184, !tbaa !1050
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !4185
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !4185, !tbaa !1052
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4186, !tbaa !1009
  call void %31(%struct._object* %32), !dbg !4187
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %33 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4188
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !4188
  br label %do.cond.30, !dbg !4190

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !4191

do.end.31:                                        ; preds = %do.cond.30
  store %struct._object* null, %struct._object** %retval, !dbg !4193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4193

if.else.32:                                       ; preds = %while.end
  %34 = load %struct._object*, %struct._object** %list, align 8, !dbg !4194, !tbaa !1009
  store %struct._object* %34, %struct._object** %retval, !dbg !4196
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4196

cleanup:                                          ; preds = %if.else.32, %do.end.31, %if.then.3, %if.then
  %35 = bitcast i32* %counter to i8*, !dbg !4197
  call void @llvm.lifetime.end(i64 4, i8* %35) #2, !dbg !4197
  %36 = bitcast i32* %maxrows to i8*, !dbg !4197
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !4197
  %37 = bitcast %struct._object** %list to i8*, !dbg !4197
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !4197
  %38 = bitcast %struct._object** %row to i8*, !dbg !4197
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !4197
  %39 = load %struct._object*, %struct._object** %retval, !dbg !4197
  ret %struct._object* %39, !dbg !4197
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_fetchall(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %row = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !847, metadata !1013), !dbg !4198
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !848, metadata !1013), !dbg !4199
  %0 = bitcast %struct._object** %row to i8*, !dbg !4200
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4200
  call void @llvm.dbg.declare(metadata %struct._object** %row, metadata !849, metadata !1013), !dbg !4201
  %1 = bitcast %struct._object** %list to i8*, !dbg !4202
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4202
  call void @llvm.dbg.declare(metadata %struct._object** %list, metadata !850, metadata !1013), !dbg !4203
  %call = call %struct._object* @PyList_New(i64 0), !dbg !4204
  store %struct._object* %call, %struct._object** %list, align 8, !dbg !4205, !tbaa !1009
  %2 = load %struct._object*, %struct._object** %list, align 8, !dbg !4206, !tbaa !1009
  %tobool = icmp ne %struct._object* %2, null, !dbg !4206
  br i1 %tobool, label %if.end, label %if.then, !dbg !4208

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4209

if.end:                                           ; preds = %entry
  store %struct._object* @_Py_NoneStruct, %struct._object** %row, align 8, !dbg !4211, !tbaa !1009
  br label %while.cond, !dbg !4212

while.cond:                                       ; preds = %if.end.8, %if.end
  %3 = load %struct._object*, %struct._object** %row, align 8, !dbg !4213, !tbaa !1009
  %tobool1 = icmp ne %struct._object* %3, null, !dbg !4212
  br i1 %tobool1, label %while.body, label %while.end, !dbg !4212

while.body:                                       ; preds = %while.cond
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4216, !tbaa !1009
  %call2 = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %4), !dbg !4217
  store %struct._object* %call2, %struct._object** %row, align 8, !dbg !4218, !tbaa !1009
  %5 = load %struct._object*, %struct._object** %row, align 8, !dbg !4219, !tbaa !1009
  %tobool3 = icmp ne %struct._object* %5, null, !dbg !4219
  br i1 %tobool3, label %if.then.4, label %if.end.8, !dbg !4220

if.then.4:                                        ; preds = %while.body
  %6 = load %struct._object*, %struct._object** %list, align 8, !dbg !4221, !tbaa !1009
  %7 = load %struct._object*, %struct._object** %row, align 8, !dbg !4222, !tbaa !1009
  %call5 = call i32 @PyList_Append(%struct._object* %6, %struct._object* %7), !dbg !4223
  br label %do.body, !dbg !4224

do.body:                                          ; preds = %if.then.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4225
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4225
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !851, metadata !1013), !dbg !4227
  %9 = load %struct._object*, %struct._object** %row, align 8, !dbg !4228, !tbaa !1009
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !4227, !tbaa !1009
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4229, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !4231
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !4232, !tbaa !1040
  %dec = add i64 %11, -1, !dbg !4232
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4232, !tbaa !1040
  %cmp = icmp ne i64 %dec, 0, !dbg !4233
  br i1 %cmp, label %if.then.6, label %if.else, !dbg !4234

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !4235

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4237, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !4239
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4239, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !4240
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4240, !tbaa !1052
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4241, !tbaa !1009
  call void %14(%struct._object* %15), !dbg !4242
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4243
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !4243
  br label %do.cond, !dbg !4245

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !4246

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !4248

if.end.8:                                         ; preds = %do.end, %while.body
  br label %while.cond, !dbg !4212

while.end:                                        ; preds = %while.cond
  %call9 = call %struct._object* @PyErr_Occurred(), !dbg !4249
  %tobool10 = icmp ne %struct._object* %call9, null, !dbg !4249
  br i1 %tobool10, label %if.then.11, label %if.else.24, !dbg !4250

if.then.11:                                       ; preds = %while.end
  br label %do.body.12, !dbg !4251

do.body.12:                                       ; preds = %if.then.11
  %17 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !4252
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !4252
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !856, metadata !1013), !dbg !4254
  %18 = load %struct._object*, %struct._object** %list, align 8, !dbg !4255, !tbaa !1009
  store %struct._object* %18, %struct._object** %_py_decref_tmp13, align 8, !dbg !4254, !tbaa !1009
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4256, !tbaa !1009
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !4258
  %20 = load i64, i64* %ob_refcnt14, align 8, !dbg !4259, !tbaa !1040
  %dec15 = add i64 %20, -1, !dbg !4259
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !4259, !tbaa !1040
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !4260
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !4261

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21, !dbg !4262

if.else.18:                                       ; preds = %do.body.12
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4264, !tbaa !1009
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !4266
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !4266, !tbaa !1050
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !4267
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !4267, !tbaa !1052
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !4268, !tbaa !1009
  call void %23(%struct._object* %24), !dbg !4269
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %25 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !4270
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !4270
  br label %do.cond.22, !dbg !4272

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !4273

do.end.23:                                        ; preds = %do.cond.22
  store %struct._object* null, %struct._object** %retval, !dbg !4275
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4275

if.else.24:                                       ; preds = %while.end
  %26 = load %struct._object*, %struct._object** %list, align 8, !dbg !4276, !tbaa !1009
  store %struct._object* %26, %struct._object** %retval, !dbg !4278
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4278

cleanup:                                          ; preds = %if.else.24, %do.end.23, %if.then
  %27 = bitcast %struct._object** %list to i8*, !dbg !4279
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !4279
  %28 = bitcast %struct._object** %row to i8*, !dbg !4279
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !4279
  %29 = load %struct._object*, %struct._object** %retval, !dbg !4279
  ret %struct._object* %29, !dbg !4279
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_noop(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !864, metadata !1013), !dbg !4280
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !865, metadata !1013), !dbg !4281
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4282, !tbaa !1040
  %inc = add i64 %0, 1, !dbg !4282
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4282, !tbaa !1040
  ret %struct._object* @_Py_NoneStruct, !dbg !4283
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_close(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !868, metadata !1013), !dbg !4284
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !869, metadata !1013), !dbg !4285
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4286, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 1, !dbg !4288
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !4288, !tbaa !1086
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %1), !dbg !4289
  %tobool = icmp ne i32 %call, 0, !dbg !4289
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4290

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4291, !tbaa !1009
  %connection1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 1, !dbg !4293
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection1, align 8, !dbg !4293, !tbaa !1086
  %call2 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %3), !dbg !4294
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4294
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4295

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4296
  br label %return, !dbg !4296

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4298, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %4, i32 0, i32 8, !dbg !4299
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !4299, !tbaa !1150
  %tobool4 = icmp ne %struct.pysqlite_Statement* %5, null, !dbg !4298
  br i1 %tobool4, label %if.then.5, label %if.end.18, !dbg !4300

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4301, !tbaa !1009
  %statement6 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 8, !dbg !4302
  %7 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement6, align 8, !dbg !4302, !tbaa !1150
  %call7 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %7), !dbg !4303
  br label %do.body, !dbg !4304

do.body:                                          ; preds = %if.then.5
  %8 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4305
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4305
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !870, metadata !1013), !dbg !4307
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4308, !tbaa !1009
  %statement8 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 8, !dbg !4309
  %10 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement8, align 8, !dbg !4309, !tbaa !1150
  %11 = bitcast %struct.pysqlite_Statement* %10 to %struct._object*, !dbg !4310
  store %struct._object* %11, %struct._object** %_py_tmp, align 8, !dbg !4307, !tbaa !1009
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4311, !tbaa !1009
  %cmp = icmp ne %struct._object* %12, null, !dbg !4312
  br i1 %cmp, label %if.then.9, label %if.end.15, !dbg !4313

if.then.9:                                        ; preds = %do.body
  %13 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4314, !tbaa !1009
  %statement10 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %13, i32 0, i32 8, !dbg !4316
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement10, align 8, !dbg !4317, !tbaa !1150
  br label %do.body.11, !dbg !4318

do.body.11:                                       ; preds = %if.then.9
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4319
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !4319
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !874, metadata !1013), !dbg !4321
  %15 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4322, !tbaa !1009
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !4321, !tbaa !1009
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4323, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !4325
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !4326, !tbaa !1040
  %dec = add i64 %17, -1, !dbg !4326
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4326, !tbaa !1040
  %cmp12 = icmp ne i64 %dec, 0, !dbg !4327
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !4328

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14, !dbg !4329

if.else:                                          ; preds = %do.body.11
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4331, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !4333
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4333, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !4334
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4334, !tbaa !1052
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4335, !tbaa !1009
  call void %20(%struct._object* %21), !dbg !4336
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4337
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !4337
  br label %do.cond, !dbg !4339

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !4340

do.end:                                           ; preds = %do.cond
  br label %if.end.15, !dbg !4342

if.end.15:                                        ; preds = %do.end, %do.body
  %23 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4344
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !4344
  br label %do.end.17, !dbg !4347

do.end.17:                                        ; preds = %if.end.15
  br label %if.end.18, !dbg !4348

if.end.18:                                        ; preds = %do.end.17, %if.end
  %24 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4349, !tbaa !1009
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %24, i32 0, i32 9, !dbg !4350
  store i32 1, i32* %closed, align 4, !dbg !4351, !tbaa !3070
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4352, !tbaa !1040
  %inc = add i64 %25, 1, !dbg !4352
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4352, !tbaa !1040
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4353
  br label %return, !dbg !4353

return:                                           ; preds = %if.end.18, %if.then
  %26 = load %struct._object*, %struct._object** %retval, !dbg !4354
  ret %struct._object* %26, !dbg !4354
}

declare i32 @pysqlite_check_thread(%struct.pysqlite_Connection*) #3

declare i32 @pysqlite_check_connection(%struct.pysqlite_Connection*) #3

; Function Attrs: nounwind uwtable
define internal void @pysqlite_cursor_dealloc(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_xdecref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_xdecref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_xdecref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_xdecref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_xdecref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !933, metadata !1013), !dbg !4355
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4356, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 8, !dbg !4357
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !4357, !tbaa !1150
  %tobool = icmp ne %struct.pysqlite_Statement* %1, null, !dbg !4356
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !4358

if.then:                                          ; preds = %entry
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4359, !tbaa !1009
  %statement1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 8, !dbg !4360
  %3 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement1, align 8, !dbg !4360, !tbaa !1150
  %call = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %3), !dbg !4361
  br label %do.body, !dbg !4362

do.body:                                          ; preds = %if.then
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4363
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !4363
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !934, metadata !1013), !dbg !4365
  %5 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4366, !tbaa !1009
  %statement2 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %5, i32 0, i32 8, !dbg !4367
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement2, align 8, !dbg !4367, !tbaa !1150
  %7 = bitcast %struct.pysqlite_Statement* %6 to %struct._object*, !dbg !4368
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !4365, !tbaa !1009
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4369, !tbaa !1009
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !4371
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !4372, !tbaa !1040
  %dec = add i64 %9, -1, !dbg !4372
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4372, !tbaa !1040
  %cmp = icmp ne i64 %dec, 0, !dbg !4373
  br i1 %cmp, label %if.then.3, label %if.else, !dbg !4374

if.then.3:                                        ; preds = %do.body
  br label %if.end, !dbg !4375

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4377, !tbaa !1009
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !4379
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4379, !tbaa !1050
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !4380
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4380, !tbaa !1052
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4381, !tbaa !1009
  call void %12(%struct._object* %13), !dbg !4382
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4383
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !4383
  br label %do.end, !dbg !4385

do.end:                                           ; preds = %if.end
  br label %if.end.4, !dbg !4386

if.end.4:                                         ; preds = %do.end, %entry
  br label %do.body.5, !dbg !4387

do.body.5:                                        ; preds = %if.end.4
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4388
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !4388
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !938, metadata !1013), !dbg !4390
  %16 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4391, !tbaa !1009
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %16, i32 0, i32 1, !dbg !4392
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !4392, !tbaa !1086
  %18 = bitcast %struct.pysqlite_Connection* %17 to %struct._object*, !dbg !4393
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4390, !tbaa !1009
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4394, !tbaa !1009
  %cmp6 = icmp ne %struct._object* %19, null, !dbg !4395
  br i1 %cmp6, label %if.then.7, label %if.end.19, !dbg !4396

if.then.7:                                        ; preds = %do.body.5
  br label %do.body.8, !dbg !4397

do.body.8:                                        ; preds = %if.then.7
  %20 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !4399
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !4399
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp9, metadata !940, metadata !1013), !dbg !4401
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4402, !tbaa !1009
  store %struct._object* %21, %struct._object** %_py_decref_tmp9, align 8, !dbg !4401, !tbaa !1009
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4403, !tbaa !1009
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !4405
  %23 = load i64, i64* %ob_refcnt10, align 8, !dbg !4406, !tbaa !1040
  %dec11 = add i64 %23, -1, !dbg !4406
  store i64 %dec11, i64* %ob_refcnt10, align 8, !dbg !4406, !tbaa !1040
  %cmp12 = icmp ne i64 %dec11, 0, !dbg !4407
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !4408

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17, !dbg !4409

if.else.14:                                       ; preds = %do.body.8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4411, !tbaa !1009
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !4413
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !4413, !tbaa !1050
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !4414
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !4414, !tbaa !1052
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !4415, !tbaa !1009
  call void %26(%struct._object* %27), !dbg !4416
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  %28 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !4417
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !4417
  br label %do.cond, !dbg !4419

do.cond:                                          ; preds = %if.end.17
  br label %do.end.18, !dbg !4420

do.end.18:                                        ; preds = %do.cond
  br label %if.end.19, !dbg !4422

if.end.19:                                        ; preds = %do.end.18, %do.body.5
  %29 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4424
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !4424
  br label %do.end.21, !dbg !4427

do.end.21:                                        ; preds = %if.end.19
  br label %do.body.22, !dbg !4428

do.body.22:                                       ; preds = %do.end.21
  %30 = bitcast %struct._object** %_py_xdecref_tmp23 to i8*, !dbg !4429
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !4429
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp23, metadata !943, metadata !1013), !dbg !4431
  %31 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4432, !tbaa !1009
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %31, i32 0, i32 3, !dbg !4433
  %32 = load %struct._object*, %struct._object** %row_cast_map, align 8, !dbg !4433, !tbaa !1101
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !4431, !tbaa !1009
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !4434, !tbaa !1009
  %cmp24 = icmp ne %struct._object* %33, null, !dbg !4435
  br i1 %cmp24, label %if.then.25, label %if.end.38, !dbg !4436

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26, !dbg !4437

do.body.26:                                       ; preds = %if.then.25
  %34 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !4439
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !4439
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !945, metadata !1013), !dbg !4441
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8, !dbg !4442, !tbaa !1009
  store %struct._object* %35, %struct._object** %_py_decref_tmp27, align 8, !dbg !4441, !tbaa !1009
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4443, !tbaa !1009
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !4445
  %37 = load i64, i64* %ob_refcnt28, align 8, !dbg !4446, !tbaa !1040
  %dec29 = add i64 %37, -1, !dbg !4446
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !4446, !tbaa !1040
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !4447
  br i1 %cmp30, label %if.then.31, label %if.else.32, !dbg !4448

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35, !dbg !4449

if.else.32:                                       ; preds = %do.body.26
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4451, !tbaa !1009
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !4453
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !4453, !tbaa !1050
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !4454
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !4454, !tbaa !1052
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4455, !tbaa !1009
  call void %40(%struct._object* %41), !dbg !4456
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %42 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !4457
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !4457
  br label %do.cond.36, !dbg !4459

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !4460

do.end.37:                                        ; preds = %do.cond.36
  br label %if.end.38, !dbg !4462

if.end.38:                                        ; preds = %do.end.37, %do.body.22
  %43 = bitcast %struct._object** %_py_xdecref_tmp23 to i8*, !dbg !4464
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !4464
  br label %do.end.40, !dbg !4465

do.end.40:                                        ; preds = %if.end.38
  br label %do.body.41, !dbg !4466

do.body.41:                                       ; preds = %do.end.40
  %44 = bitcast %struct._object** %_py_xdecref_tmp42 to i8*, !dbg !4467
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !4467
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp42, metadata !948, metadata !1013), !dbg !4469
  %45 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4470, !tbaa !1009
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %45, i32 0, i32 2, !dbg !4471
  %46 = load %struct._object*, %struct._object** %description, align 8, !dbg !4471, !tbaa !2152
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp42, align 8, !dbg !4469, !tbaa !1009
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8, !dbg !4472, !tbaa !1009
  %cmp43 = icmp ne %struct._object* %47, null, !dbg !4473
  br i1 %cmp43, label %if.then.44, label %if.end.57, !dbg !4474

if.then.44:                                       ; preds = %do.body.41
  br label %do.body.45, !dbg !4475

do.body.45:                                       ; preds = %if.then.44
  %48 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !4477
  call void @llvm.lifetime.start(i64 8, i8* %48) #2, !dbg !4477
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !950, metadata !1013), !dbg !4479
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp42, align 8, !dbg !4480, !tbaa !1009
  store %struct._object* %49, %struct._object** %_py_decref_tmp46, align 8, !dbg !4479, !tbaa !1009
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !4481, !tbaa !1009
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !4483
  %51 = load i64, i64* %ob_refcnt47, align 8, !dbg !4484, !tbaa !1040
  %dec48 = add i64 %51, -1, !dbg !4484
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !4484, !tbaa !1040
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !4485
  br i1 %cmp49, label %if.then.50, label %if.else.51, !dbg !4486

if.then.50:                                       ; preds = %do.body.45
  br label %if.end.54, !dbg !4487

if.else.51:                                       ; preds = %do.body.45
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !4489, !tbaa !1009
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !4491
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !4491, !tbaa !1050
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !4492
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !4492, !tbaa !1052
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !4493, !tbaa !1009
  call void %54(%struct._object* %55), !dbg !4494
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %56 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !4495
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !4495
  br label %do.cond.55, !dbg !4497

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !4498

do.end.56:                                        ; preds = %do.cond.55
  br label %if.end.57, !dbg !4500

if.end.57:                                        ; preds = %do.end.56, %do.body.41
  %57 = bitcast %struct._object** %_py_xdecref_tmp42 to i8*, !dbg !4502
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !4502
  br label %do.end.59, !dbg !4503

do.end.59:                                        ; preds = %if.end.57
  br label %do.body.60, !dbg !4504

do.body.60:                                       ; preds = %do.end.59
  %58 = bitcast %struct._object** %_py_xdecref_tmp61 to i8*, !dbg !4505
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !4505
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp61, metadata !953, metadata !1013), !dbg !4507
  %59 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4508, !tbaa !1009
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %59, i32 0, i32 5, !dbg !4509
  %60 = load %struct._object*, %struct._object** %lastrowid, align 8, !dbg !4509, !tbaa !2798
  store %struct._object* %60, %struct._object** %_py_xdecref_tmp61, align 8, !dbg !4507, !tbaa !1009
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8, !dbg !4510, !tbaa !1009
  %cmp62 = icmp ne %struct._object* %61, null, !dbg !4511
  br i1 %cmp62, label %if.then.63, label %if.end.76, !dbg !4512

if.then.63:                                       ; preds = %do.body.60
  br label %do.body.64, !dbg !4513

do.body.64:                                       ; preds = %if.then.63
  %62 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !4515
  call void @llvm.lifetime.start(i64 8, i8* %62) #2, !dbg !4515
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp65, metadata !955, metadata !1013), !dbg !4517
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp61, align 8, !dbg !4518, !tbaa !1009
  store %struct._object* %63, %struct._object** %_py_decref_tmp65, align 8, !dbg !4517, !tbaa !1009
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !4519, !tbaa !1009
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0, !dbg !4521
  %65 = load i64, i64* %ob_refcnt66, align 8, !dbg !4522, !tbaa !1040
  %dec67 = add i64 %65, -1, !dbg !4522
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !4522, !tbaa !1040
  %cmp68 = icmp ne i64 %dec67, 0, !dbg !4523
  br i1 %cmp68, label %if.then.69, label %if.else.70, !dbg !4524

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73, !dbg !4525

if.else.70:                                       ; preds = %do.body.64
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !4527, !tbaa !1009
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1, !dbg !4529
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !4529, !tbaa !1050
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4, !dbg !4530
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !4530, !tbaa !1052
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !4531, !tbaa !1009
  call void %68(%struct._object* %69), !dbg !4532
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  %70 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !4533
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !4533
  br label %do.cond.74, !dbg !4535

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75, !dbg !4536

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76, !dbg !4538

if.end.76:                                        ; preds = %do.end.75, %do.body.60
  %71 = bitcast %struct._object** %_py_xdecref_tmp61 to i8*, !dbg !4540
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !4540
  br label %do.end.78, !dbg !4541

do.end.78:                                        ; preds = %if.end.76
  br label %do.body.79, !dbg !4542

do.body.79:                                       ; preds = %do.end.78
  %72 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !4543
  call void @llvm.lifetime.start(i64 8, i8* %72) #2, !dbg !4543
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp80, metadata !958, metadata !1013), !dbg !4545
  %73 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4546, !tbaa !1009
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %73, i32 0, i32 7, !dbg !4547
  %74 = load %struct._object*, %struct._object** %row_factory, align 8, !dbg !4547, !tbaa !3928
  store %struct._object* %74, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !4545, !tbaa !1009
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !4548, !tbaa !1009
  %cmp81 = icmp ne %struct._object* %75, null, !dbg !4549
  br i1 %cmp81, label %if.then.82, label %if.end.95, !dbg !4550

if.then.82:                                       ; preds = %do.body.79
  br label %do.body.83, !dbg !4551

do.body.83:                                       ; preds = %if.then.82
  %76 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !4553
  call void @llvm.lifetime.start(i64 8, i8* %76) #2, !dbg !4553
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !960, metadata !1013), !dbg !4555
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !4556, !tbaa !1009
  store %struct._object* %77, %struct._object** %_py_decref_tmp84, align 8, !dbg !4555, !tbaa !1009
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !4557, !tbaa !1009
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !4559
  %79 = load i64, i64* %ob_refcnt85, align 8, !dbg !4560, !tbaa !1040
  %dec86 = add i64 %79, -1, !dbg !4560
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !4560, !tbaa !1040
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !4561
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !4562

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !4563

if.else.89:                                       ; preds = %do.body.83
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !4565, !tbaa !1009
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !4567
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !4567, !tbaa !1050
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !4568
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !4568, !tbaa !1052
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !4569, !tbaa !1009
  call void %82(%struct._object* %83), !dbg !4570
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %84 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !4571
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !4571
  br label %do.cond.93, !dbg !4573

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !4574

do.end.94:                                        ; preds = %do.cond.93
  br label %if.end.95, !dbg !4576

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  %85 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !4578
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !4578
  br label %do.end.97, !dbg !4579

do.end.97:                                        ; preds = %if.end.95
  br label %do.body.98, !dbg !4580

do.body.98:                                       ; preds = %do.end.97
  %86 = bitcast %struct._object** %_py_xdecref_tmp99 to i8*, !dbg !4581
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !4581
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp99, metadata !963, metadata !1013), !dbg !4583
  %87 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4584, !tbaa !1009
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %87, i32 0, i32 13, !dbg !4585
  %88 = load %struct._object*, %struct._object** %next_row, align 8, !dbg !4585, !tbaa !1934
  store %struct._object* %88, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !4583, !tbaa !1009
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !4586, !tbaa !1009
  %cmp100 = icmp ne %struct._object* %89, null, !dbg !4587
  br i1 %cmp100, label %if.then.101, label %if.end.114, !dbg !4588

if.then.101:                                      ; preds = %do.body.98
  br label %do.body.102, !dbg !4589

do.body.102:                                      ; preds = %if.then.101
  %90 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !4591
  call void @llvm.lifetime.start(i64 8, i8* %90) #2, !dbg !4591
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp103, metadata !965, metadata !1013), !dbg !4593
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !4594, !tbaa !1009
  store %struct._object* %91, %struct._object** %_py_decref_tmp103, align 8, !dbg !4593, !tbaa !1009
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !4595, !tbaa !1009
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 0, !dbg !4597
  %93 = load i64, i64* %ob_refcnt104, align 8, !dbg !4598, !tbaa !1040
  %dec105 = add i64 %93, -1, !dbg !4598
  store i64 %dec105, i64* %ob_refcnt104, align 8, !dbg !4598, !tbaa !1040
  %cmp106 = icmp ne i64 %dec105, 0, !dbg !4599
  br i1 %cmp106, label %if.then.107, label %if.else.108, !dbg !4600

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111, !dbg !4601

if.else.108:                                      ; preds = %do.body.102
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !4603, !tbaa !1009
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 1, !dbg !4605
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !4605, !tbaa !1050
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i32 0, i32 4, !dbg !4606
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !4606, !tbaa !1052
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !4607, !tbaa !1009
  call void %96(%struct._object* %97), !dbg !4608
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  %98 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !4609
  call void @llvm.lifetime.end(i64 8, i8* %98) #2, !dbg !4609
  br label %do.cond.112, !dbg !4611

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113, !dbg !4612

do.end.113:                                       ; preds = %do.cond.112
  br label %if.end.114, !dbg !4614

if.end.114:                                       ; preds = %do.end.113, %do.body.98
  %99 = bitcast %struct._object** %_py_xdecref_tmp99 to i8*, !dbg !4616
  call void @llvm.lifetime.end(i64 8, i8* %99) #2, !dbg !4616
  br label %do.end.116, !dbg !4617

do.end.116:                                       ; preds = %if.end.114
  %100 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4618, !tbaa !1009
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %100, i32 0, i32 14, !dbg !4620
  %101 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !4620, !tbaa !4621
  %cmp117 = icmp ne %struct._object* %101, null, !dbg !4622
  br i1 %cmp117, label %if.then.118, label %if.end.119, !dbg !4623

if.then.118:                                      ; preds = %do.end.116
  %102 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4624, !tbaa !1009
  %103 = bitcast %struct.pysqlite_Cursor* %102 to %struct._object*, !dbg !4626
  call void @PyObject_ClearWeakRefs(%struct._object* %103), !dbg !4627
  br label %if.end.119, !dbg !4628

if.end.119:                                       ; preds = %if.then.118, %do.end.116
  %104 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4629, !tbaa !1009
  %105 = bitcast %struct.pysqlite_Cursor* %104 to %struct._object*, !dbg !4630
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1, !dbg !4631
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !4631, !tbaa !1050
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 38, !dbg !4632
  %107 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !4632, !tbaa !4633
  %108 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4634, !tbaa !1009
  %109 = bitcast %struct.pysqlite_Cursor* %108 to %struct._object*, !dbg !4635
  %110 = bitcast %struct._object* %109 to i8*, !dbg !4635
  call void %107(i8* %110), !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_cursor_init(%struct.pysqlite_Cursor* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %connection = alloca %struct.pysqlite_Connection*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %self.addr, metadata !972, metadata !1013), !dbg !4638
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !973, metadata !1013), !dbg !4639
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1009
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !974, metadata !1013), !dbg !4640
  %0 = bitcast %struct.pysqlite_Connection** %connection to i8*, !dbg !4641
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4641
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %connection, metadata !975, metadata !1013), !dbg !4642
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4643, !tbaa !1009
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %struct._typeobject* @pysqlite_ConnectionType, %struct.pysqlite_Connection** %connection), !dbg !4645
  %tobool = icmp ne i32 %call, 0, !dbg !4645
  br i1 %tobool, label %if.end, label %if.then, !dbg !4646

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !4647
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4647

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !4649, !tbaa !1009
  %3 = bitcast %struct.pysqlite_Connection* %2 to %struct._object*, !dbg !4650
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !4651
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !4652, !tbaa !1040
  %inc = add i64 %4, 1, !dbg !4652
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4652, !tbaa !1040
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !4653, !tbaa !1009
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4654, !tbaa !1009
  %connection1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 1, !dbg !4655
  store %struct.pysqlite_Connection* %5, %struct.pysqlite_Connection** %connection1, align 8, !dbg !4656, !tbaa !1086
  %7 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4657, !tbaa !1009
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %7, i32 0, i32 8, !dbg !4658
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement, align 8, !dbg !4659, !tbaa !1150
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4660, !tbaa !1009
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 13, !dbg !4661
  store %struct._object* null, %struct._object** %next_row, align 8, !dbg !4662, !tbaa !1934
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4663, !tbaa !1009
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 14, !dbg !4664
  store %struct._object* null, %struct._object** %in_weakreflist, align 8, !dbg !4665, !tbaa !4621
  %call2 = call %struct._object* @PyList_New(i64 0), !dbg !4666
  %10 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4667, !tbaa !1009
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %10, i32 0, i32 3, !dbg !4668
  store %struct._object* %call2, %struct._object** %row_cast_map, align 8, !dbg !4669, !tbaa !1101
  %11 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4670, !tbaa !1009
  %row_cast_map3 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %11, i32 0, i32 3, !dbg !4672
  %12 = load %struct._object*, %struct._object** %row_cast_map3, align 8, !dbg !4672, !tbaa !1101
  %tobool4 = icmp ne %struct._object* %12, null, !dbg !4670
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !4673

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !4674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4674

if.end.6:                                         ; preds = %if.end
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4676, !tbaa !1040
  %inc7 = add i64 %13, 1, !dbg !4676
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4676, !tbaa !1040
  %14 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4677, !tbaa !1009
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %14, i32 0, i32 2, !dbg !4678
  store %struct._object* @_Py_NoneStruct, %struct._object** %description, align 8, !dbg !4679, !tbaa !2152
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4680, !tbaa !1040
  %inc8 = add i64 %15, 1, !dbg !4680
  store i64 %inc8, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4680, !tbaa !1040
  %16 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4681, !tbaa !1009
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %16, i32 0, i32 5, !dbg !4682
  store %struct._object* @_Py_NoneStruct, %struct._object** %lastrowid, align 8, !dbg !4683, !tbaa !2798
  %17 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4684, !tbaa !1009
  %arraysize = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %17, i32 0, i32 4, !dbg !4685
  store i32 1, i32* %arraysize, align 4, !dbg !4686, !tbaa !4103
  %18 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4687, !tbaa !1009
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %18, i32 0, i32 9, !dbg !4688
  store i32 0, i32* %closed, align 4, !dbg !4689, !tbaa !3070
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4690, !tbaa !1009
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 10, !dbg !4691
  store i32 0, i32* %reset, align 4, !dbg !4692, !tbaa !1501
  %20 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4693, !tbaa !1009
  %rowcount = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %20, i32 0, i32 6, !dbg !4694
  store i64 -1, i64* %rowcount, align 8, !dbg !4695, !tbaa !2179
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4696, !tbaa !1040
  %inc9 = add i64 %21, 1, !dbg !4696
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4696, !tbaa !1040
  %22 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4697, !tbaa !1009
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %22, i32 0, i32 7, !dbg !4698
  store %struct._object* @_Py_NoneStruct, %struct._object** %row_factory, align 8, !dbg !4699, !tbaa !3928
  %23 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4700, !tbaa !1009
  %connection10 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %23, i32 0, i32 1, !dbg !4702
  %24 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection10, align 8, !dbg !4702, !tbaa !1086
  %call11 = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %24), !dbg !4703
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4703
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !4704

if.then.13:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval, !dbg !4705
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4705

if.end.14:                                        ; preds = %if.end.6
  %25 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8, !dbg !4707, !tbaa !1009
  %26 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4709, !tbaa !1009
  %27 = bitcast %struct.pysqlite_Cursor* %26 to %struct._object*, !dbg !4710
  %call15 = call i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection* %25, %struct._object* %27), !dbg !4711
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4711
  br i1 %tobool16, label %if.end.18, label %if.then.17, !dbg !4712

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval, !dbg !4713
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4713

if.end.18:                                        ; preds = %if.end.14
  %28 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8, !dbg !4715, !tbaa !1009
  %initialized = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %28, i32 0, i32 12, !dbg !4716
  store i32 1, i32* %initialized, align 4, !dbg !4717, !tbaa !3061
  store i32 0, i32* %retval, !dbg !4718
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4718

cleanup:                                          ; preds = %if.end.18, %if.then.17, %if.then.13, %if.then.5, %if.then
  %29 = bitcast %struct.pysqlite_Connection** %connection to i8*, !dbg !4719
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !4719
  %30 = load i32, i32* %retval, !dbg !4719
  ret i32 %30, !dbg !4719
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cursor_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @pysqlite_CursorType to %struct._typeobject*), i32 0, i32 37), align 8, !dbg !4720, !tbaa !4721
  %call = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @pysqlite_CursorType to %struct._typeobject*)), !dbg !4722
  ret i32 %call, !dbg !4723
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

declare i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1005, !1006, !1007}
!llvm.ident = !{!1008}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !13, subprograms: !383, globals: !976)
!1 = !DIFile(filename: "cursor.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 54, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Modules/_sqlite/cursor.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "STATEMENT_INVALID", value: 0)
!7 = !DIEnumerator(name: "STATEMENT_INSERT", value: 1)
!8 = !DIEnumerator(name: "STATEMENT_DELETE", value: 2)
!9 = !DIEnumerator(name: "STATEMENT_UPDATE", value: 3)
!10 = !DIEnumerator(name: "STATEMENT_REPLACE", value: 4)
!11 = !DIEnumerator(name: "STATEMENT_SELECT", value: 5)
!12 = !DIEnumerator(name: "STATEMENT_OTHER", value: 6)
!13 = !{!14, !38, !99, !360, !26, !40, !378, !104, !379, !381}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !16, line: 109, baseType: !17)
!16 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !16, line: 105, size: 128, align: 64, elements: !18)
!18 = !{!19, !27}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !17, file: !16, line: 107, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !21, line: 177, baseType: !22)
!21 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !23, line: 102, baseType: !24)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !25, line: 181, baseType: !26)
!25 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !17, file: !16, line: 108, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !16, line: 334, size: 3200, align: 64, elements: !30)
!30 = !{!31, !37, !41, !42, !43, !48, !112, !117, !122, !123, !128, !180, !211, !223, !229, !230, !231, !233, !235, !266, !267, !268, !277, !278, !283, !284, !286, !288, !298, !308, !326, !327, !328, !330, !332, !333, !335, !340, !345, !350, !351, !352, !353, !354, !355, !356, !357, !359}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !29, file: !16, line: 335, baseType: !32, size: 192, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !16, line: 114, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 111, size: 192, align: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !33, file: !16, line: 112, baseType: !15, size: 128, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !33, file: !16, line: 113, baseType: !20, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !29, file: !16, line: 336, baseType: !38, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !29, file: !16, line: 337, baseType: !20, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !29, file: !16, line: 337, baseType: !20, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !29, file: !16, line: 341, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !16, line: 308, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !14}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !29, file: !16, line: 342, baseType: !49, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !16, line: 314, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !14, !54, !53}
!53 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !23, line: 48, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 246, size: 1728, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!58 = !{!59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !80, !81, !82, !83, !85, !87, !89, !93, !96, !98, !100, !101, !102, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 247, baseType: !53, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 252, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 253, baseType: !61, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 254, baseType: !61, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 255, baseType: !61, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 256, baseType: !61, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 257, baseType: !61, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 258, baseType: !61, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 259, baseType: !61, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 261, baseType: !61, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 262, baseType: !61, size: 64, align: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 263, baseType: !61, size: 64, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 265, baseType: !73, size: 64, align: 64, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 161, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !79}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !74, file: !57, line: 162, baseType: !73, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !74, file: !57, line: 163, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !74, file: !57, line: 167, baseType: !53, size: 32, align: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 267, baseType: !78, size: 64, align: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 269, baseType: !53, size: 32, align: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 273, baseType: !53, size: 32, align: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 275, baseType: !84, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !25, line: 140, baseType: !26)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 279, baseType: !86, size: 16, align: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 280, baseType: !88, size: 8, align: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 281, baseType: !90, size: 8, align: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 285, baseType: !94, size: 64, align: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 155, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 294, baseType: !97, size: 64, align: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !25, line: 141, baseType: !26)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !56, file: !57, line: 303, baseType: !99, size: 64, align: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !56, file: !57, line: 304, baseType: !99, size: 64, align: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !56, file: !57, line: 305, baseType: !99, size: 64, align: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !56, file: !57, line: 306, baseType: !99, size: 64, align: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 307, baseType: !104, size: 64, align: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !106)
!105 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!106 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 309, baseType: !53, size: 32, align: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 311, baseType: !109, size: 160, align: 8, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !29, file: !16, line: 343, baseType: !113, size: 64, align: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !16, line: 316, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !14, !61}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !29, file: !16, line: 344, baseType: !118, size: 64, align: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !16, line: 318, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!53, !14, !61, !14}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !29, file: !16, line: 345, baseType: !99, size: 64, align: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !29, file: !16, line: 346, baseType: !124, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !16, line: 320, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!14, !14}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !29, file: !16, line: 350, baseType: !129, size: 64, align: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !16, line: 278, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 236, size: 2176, align: 64, elements: !132)
!132 = !{!133, !138, !139, !140, !141, !142, !147, !149, !150, !151, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !131, file: !16, line: 241, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !16, line: 166, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!14, !14, !14}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !131, file: !16, line: 242, baseType: !134, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !131, file: !16, line: 243, baseType: !134, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !131, file: !16, line: 244, baseType: !134, size: 64, align: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !131, file: !16, line: 245, baseType: !134, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !131, file: !16, line: 246, baseType: !143, size: 64, align: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !16, line: 167, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!14, !14, !14, !14}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !131, file: !16, line: 247, baseType: !148, size: 64, align: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !16, line: 165, baseType: !125)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !131, file: !16, line: 248, baseType: !148, size: 64, align: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !131, file: !16, line: 249, baseType: !148, size: 64, align: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !131, file: !16, line: 250, baseType: !152, size: 64, align: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !16, line: 168, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!53, !14}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !131, file: !16, line: 251, baseType: !148, size: 64, align: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !131, file: !16, line: 252, baseType: !134, size: 64, align: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !131, file: !16, line: 253, baseType: !134, size: 64, align: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !131, file: !16, line: 254, baseType: !134, size: 64, align: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !131, file: !16, line: 255, baseType: !134, size: 64, align: 64, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !131, file: !16, line: 256, baseType: !134, size: 64, align: 64, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !131, file: !16, line: 257, baseType: !148, size: 64, align: 64, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !131, file: !16, line: 258, baseType: !99, size: 64, align: 64, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !131, file: !16, line: 259, baseType: !148, size: 64, align: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !131, file: !16, line: 261, baseType: !134, size: 64, align: 64, offset: 1216)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !131, file: !16, line: 262, baseType: !134, size: 64, align: 64, offset: 1280)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !131, file: !16, line: 263, baseType: !134, size: 64, align: 64, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !131, file: !16, line: 264, baseType: !134, size: 64, align: 64, offset: 1408)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !131, file: !16, line: 265, baseType: !143, size: 64, align: 64, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !131, file: !16, line: 266, baseType: !134, size: 64, align: 64, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !131, file: !16, line: 267, baseType: !134, size: 64, align: 64, offset: 1600)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !131, file: !16, line: 268, baseType: !134, size: 64, align: 64, offset: 1664)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !131, file: !16, line: 269, baseType: !134, size: 64, align: 64, offset: 1728)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !131, file: !16, line: 270, baseType: !134, size: 64, align: 64, offset: 1792)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !131, file: !16, line: 272, baseType: !134, size: 64, align: 64, offset: 1856)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !131, file: !16, line: 273, baseType: !134, size: 64, align: 64, offset: 1920)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !131, file: !16, line: 274, baseType: !134, size: 64, align: 64, offset: 1984)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !131, file: !16, line: 275, baseType: !134, size: 64, align: 64, offset: 2048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !131, file: !16, line: 277, baseType: !148, size: 64, align: 64, offset: 2112)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !29, file: !16, line: 351, baseType: !181, size: 64, align: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !16, line: 292, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 280, size: 640, align: 64, elements: !184)
!184 = !{!185, !190, !191, !196, !197, !198, !203, !204, !209, !210}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !183, file: !16, line: 281, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !16, line: 169, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!20, !14}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !183, file: !16, line: 282, baseType: !134, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !183, file: !16, line: 283, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !16, line: 170, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!14, !14, !20}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !183, file: !16, line: 284, baseType: !192, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !183, file: !16, line: 285, baseType: !99, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !183, file: !16, line: 286, baseType: !199, size: 64, align: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !16, line: 172, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!53, !14, !20, !14}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !183, file: !16, line: 287, baseType: !99, size: 64, align: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !183, file: !16, line: 288, baseType: !205, size: 64, align: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !16, line: 231, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!53, !14, !14}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !183, file: !16, line: 290, baseType: !134, size: 64, align: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !183, file: !16, line: 291, baseType: !192, size: 64, align: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !29, file: !16, line: 352, baseType: !212, size: 64, align: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !16, line: 298, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 294, size: 192, align: 64, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !214, file: !16, line: 295, baseType: !186, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !214, file: !16, line: 296, baseType: !134, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !214, file: !16, line: 297, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !16, line: 174, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!53, !14, !14, !14}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !29, file: !16, line: 356, baseType: !224, size: 64, align: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !16, line: 321, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !14}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !21, line: 186, baseType: !20)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !29, file: !16, line: 357, baseType: !143, size: 64, align: 64, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !29, file: !16, line: 358, baseType: !124, size: 64, align: 64, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !29, file: !16, line: 359, baseType: !232, size: 64, align: 64, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !16, line: 317, baseType: !135)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !29, file: !16, line: 360, baseType: !234, size: 64, align: 64, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !16, line: 319, baseType: !220)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !29, file: !16, line: 363, baseType: !236, size: 64, align: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !16, line: 304, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 301, size: 128, align: 64, elements: !239)
!239 = !{!240, !261}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !238, file: !16, line: 302, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !16, line: 193, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!53, !14, !245, !53}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !16, line: 191, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !16, line: 178, size: 640, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !258, !259, !260}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !247, file: !16, line: 179, baseType: !99, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !247, file: !16, line: 180, baseType: !14, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !247, file: !16, line: 181, baseType: !20, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !247, file: !16, line: 182, baseType: !20, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !247, file: !16, line: 184, baseType: !53, size: 32, align: 32, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !247, file: !16, line: 185, baseType: !53, size: 32, align: 32, offset: 288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !247, file: !16, line: 186, baseType: !61, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !247, file: !16, line: 187, baseType: !257, size: 64, align: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !247, file: !16, line: 188, baseType: !257, size: 64, align: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !247, file: !16, line: 189, baseType: !257, size: 64, align: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !247, file: !16, line: 190, baseType: !99, size: 64, align: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !238, file: !16, line: 303, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !16, line: 194, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !14, !245}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !29, file: !16, line: 366, baseType: !106, size: 64, align: 64, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !29, file: !16, line: 368, baseType: !38, size: 64, align: 64, offset: 1408)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !29, file: !16, line: 372, baseType: !269, size: 64, align: 64, offset: 1472)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !16, line: 233, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!53, !14, !273, !99}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !16, line: 232, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!53, !14, !99}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !29, file: !16, line: 375, baseType: !152, size: 64, align: 64, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !29, file: !16, line: 379, baseType: !279, size: 64, align: 64, offset: 1600)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !16, line: 322, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!14, !14, !14, !53}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !29, file: !16, line: 382, baseType: !20, size: 64, align: 64, offset: 1664)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !29, file: !16, line: 385, baseType: !285, size: 64, align: 64, offset: 1728)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !16, line: 323, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !29, file: !16, line: 386, baseType: !287, size: 64, align: 64, offset: 1792)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !16, line: 324, baseType: !125)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !29, file: !16, line: 389, baseType: !289, size: 64, align: 64, offset: 1856)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !291, line: 40, size: 256, align: 64, elements: !292)
!291 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !290, file: !291, line: 41, baseType: !38, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !290, file: !291, line: 42, baseType: !295, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !291, line: 18, baseType: !135)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !290, file: !291, line: 43, baseType: !53, size: 32, align: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !290, file: !291, line: 45, baseType: !38, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !29, file: !16, line: 390, baseType: !299, size: 64, align: 64, offset: 1920)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !301, line: 18, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !305, !306, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 19, baseType: !61, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !301, line: 20, baseType: !53, size: 32, align: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !300, file: !301, line: 21, baseType: !20, size: 64, align: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 22, baseType: !53, size: 32, align: 32, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 23, baseType: !61, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !29, file: !16, line: 391, baseType: !309, size: 64, align: 64, offset: 1984)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !311, line: 11, size: 320, align: 64, elements: !312)
!311 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!312 = !{!313, !314, !319, !324, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 12, baseType: !61, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !310, file: !311, line: 13, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !311, line: 8, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!14, !14, !99}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !310, file: !311, line: 14, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !311, line: 9, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!53, !14, !14, !99}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !310, file: !311, line: 15, baseType: !61, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !310, file: !311, line: 16, baseType: !99, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !29, file: !16, line: 392, baseType: !28, size: 64, align: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !29, file: !16, line: 393, baseType: !14, size: 64, align: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !29, file: !16, line: 394, baseType: !329, size: 64, align: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !16, line: 325, baseType: !144)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !29, file: !16, line: 395, baseType: !331, size: 64, align: 64, offset: 2240)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !16, line: 326, baseType: !220)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !29, file: !16, line: 396, baseType: !20, size: 64, align: 64, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !29, file: !16, line: 397, baseType: !334, size: 64, align: 64, offset: 2368)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !16, line: 327, baseType: !220)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !29, file: !16, line: 398, baseType: !336, size: 64, align: 64, offset: 2432)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !16, line: 329, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!14, !28, !20}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !29, file: !16, line: 399, baseType: !341, size: 64, align: 64, offset: 2496)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !16, line: 328, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!14, !28, !14, !14}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !29, file: !16, line: 400, baseType: !346, size: 64, align: 64, offset: 2560)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !16, line: 307, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !99}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !29, file: !16, line: 401, baseType: !152, size: 64, align: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !29, file: !16, line: 402, baseType: !14, size: 64, align: 64, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !29, file: !16, line: 403, baseType: !14, size: 64, align: 64, offset: 2752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !29, file: !16, line: 404, baseType: !14, size: 64, align: 64, offset: 2816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !29, file: !16, line: 405, baseType: !14, size: 64, align: 64, offset: 2880)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !29, file: !16, line: 406, baseType: !14, size: 64, align: 64, offset: 2944)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !29, file: !16, line: 407, baseType: !44, size: 64, align: 64, offset: 3008)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !29, file: !16, line: 410, baseType: !358, size: 32, align: 32, offset: 3072)
!358 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !29, file: !16, line: 412, baseType: !44, size: 64, align: 64, offset: 3136)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Statement", file: !362, line: 42, baseType: !363)
!362 = !DIFile(filename: "Modules/_sqlite/statement.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 34, size: 448, align: 64, elements: !364)
!364 = !{!365, !366, !371, !375, !376, !377}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !362, line: 36, baseType: !15, size: 128, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !363, file: !362, line: 37, baseType: !367, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !369, line: 228, baseType: !370)
!369 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !369, line: 228, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !363, file: !362, line: 38, baseType: !372, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !369, line: 2911, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !369, line: 2911, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sql", scope: !363, file: !362, line: 39, baseType: !14, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !363, file: !362, line: 40, baseType: !53, size: 32, align: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !363, file: !362, line: 41, baseType: !14, size: 64, align: 64, offset: 384)
!378 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!383 = !{!384, !392, !521, !527, !642, !755, !761, !765, !785, !788, !820, !825, !845, !860, !866, !878, !882, !885, !929, !968}
!384 = !DISubprogram(name: "_pysqlite_get_converter", scope: !385, file: !385, line: 140, type: !126, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @_pysqlite_get_converter, variables: !386)
!385 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/cursor.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!386 = !{!387, !388, !389, !390}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 1, scope: !384, file: !385, line: 140, type: !14)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "upcase_key", scope: !384, file: !385, line: 142, type: !14)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !384, file: !385, line: 143, type: !14)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !391, file: !385, line: 152, type: !14)
!391 = distinct !DILexicalBlock(scope: !384, file: !385, line: 152, column: 8)
!392 = !DISubprogram(name: "pysqlite_build_row_cast_map", scope: !385, file: !385, line: 157, type: !393, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Cursor*)* @pysqlite_build_row_cast_map, variables: !473)
!393 = !DISubroutineType(types: !394)
!394 = !{!53, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cursor", file: !4, line: 52, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 32, size: 896, align: 64, elements: !398)
!398 = !{!399, !400, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !397, file: !4, line: 34, baseType: !15, size: 128, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !397, file: !4, line: 35, baseType: !401, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !403, line: 112, baseType: !404)
!403 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 35, size: 1792, align: 64, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !412, !413, !414, !415, !416, !417, !418, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !404, file: !403, line: 37, baseType: !15, size: 128, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !404, file: !403, line: 38, baseType: !367, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !404, file: !403, line: 42, baseType: !40, size: 8, align: 8, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !404, file: !403, line: 46, baseType: !53, size: 32, align: 32, offset: 224)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !404, file: !403, line: 49, baseType: !411, size: 64, align: 64, offset: 256)
!411 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !404, file: !403, line: 53, baseType: !411, size: 64, align: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !404, file: !403, line: 56, baseType: !14, size: 64, align: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !404, file: !403, line: 60, baseType: !61, size: 64, align: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !404, file: !403, line: 64, baseType: !53, size: 32, align: 32, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !404, file: !403, line: 66, baseType: !53, size: 32, align: 32, offset: 544)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !404, file: !403, line: 69, baseType: !26, size: 64, align: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !404, file: !403, line: 71, baseType: !419, size: 64, align: 64, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !421, line: 59, baseType: !422)
!421 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!422 = !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 42, size: 512, align: 64, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !440, !441}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !422, file: !421, line: 44, baseType: !15, size: 128, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !422, file: !421, line: 45, baseType: !53, size: 32, align: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !422, file: !421, line: 48, baseType: !14, size: 64, align: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !422, file: !421, line: 51, baseType: !14, size: 64, align: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !422, file: !421, line: 53, baseType: !429, size: 64, align: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !421, line: 40, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !421, line: 32, size: 448, align: 64, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !431, file: !421, line: 34, baseType: !15, size: 128, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !431, file: !421, line: 35, baseType: !14, size: 64, align: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !431, file: !421, line: 36, baseType: !14, size: 64, align: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !421, line: 37, baseType: !26, size: 64, align: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !431, file: !421, line: 38, baseType: !438, size: 64, align: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !421, line: 39, baseType: !438, size: 64, align: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !422, file: !421, line: 54, baseType: !429, size: 64, align: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !422, file: !421, line: 58, baseType: !53, size: 32, align: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !404, file: !403, line: 74, baseType: !14, size: 64, align: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !404, file: !403, line: 75, baseType: !14, size: 64, align: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !404, file: !403, line: 79, baseType: !53, size: 32, align: 32, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !404, file: !403, line: 80, baseType: !53, size: 32, align: 32, offset: 864)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !404, file: !403, line: 82, baseType: !14, size: 64, align: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !404, file: !403, line: 90, baseType: !14, size: 64, align: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !404, file: !403, line: 96, baseType: !14, size: 64, align: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !404, file: !403, line: 99, baseType: !14, size: 64, align: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !404, file: !403, line: 102, baseType: !14, size: 64, align: 64, offset: 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !404, file: !403, line: 103, baseType: !14, size: 64, align: 64, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !404, file: !403, line: 104, baseType: !14, size: 64, align: 64, offset: 1280)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !404, file: !403, line: 105, baseType: !14, size: 64, align: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !404, file: !403, line: 106, baseType: !14, size: 64, align: 64, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !404, file: !403, line: 107, baseType: !14, size: 64, align: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !404, file: !403, line: 108, baseType: !14, size: 64, align: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !404, file: !403, line: 109, baseType: !14, size: 64, align: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !404, file: !403, line: 110, baseType: !14, size: 64, align: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !404, file: !403, line: 111, baseType: !14, size: 64, align: 64, offset: 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !397, file: !4, line: 36, baseType: !14, size: 64, align: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "row_cast_map", scope: !397, file: !4, line: 37, baseType: !14, size: 64, align: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arraysize", scope: !397, file: !4, line: 38, baseType: !53, size: 32, align: 32, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lastrowid", scope: !397, file: !4, line: 39, baseType: !14, size: 64, align: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rowcount", scope: !397, file: !4, line: 40, baseType: !26, size: 64, align: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !397, file: !4, line: 41, baseType: !14, size: 64, align: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !397, file: !4, line: 42, baseType: !360, size: 64, align: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !397, file: !4, line: 43, baseType: !53, size: 32, align: 32, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !397, file: !4, line: 44, baseType: !53, size: 32, align: 32, offset: 672)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !397, file: !4, line: 45, baseType: !53, size: 32, align: 32, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !397, file: !4, line: 46, baseType: !53, size: 32, align: 32, offset: 736)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_row", scope: !397, file: !4, line: 49, baseType: !14, size: 64, align: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !397, file: !4, line: 51, baseType: !14, size: 64, align: 64, offset: 832)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !485, !488, !503, !509, !515, !517}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !392, file: !385, line: 157, type: !395)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !392, file: !385, line: 159, type: !53)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type_start", scope: !392, file: !385, line: 160, type: !38)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !392, file: !385, line: 161, type: !38)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colname", scope: !392, file: !385, line: 163, type: !38)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decltype", scope: !392, file: !385, line: 164, type: !38)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_decltype", scope: !392, file: !385, line: 165, type: !14)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converter", scope: !392, file: !385, line: 166, type: !14)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !392, file: !385, line: 167, type: !14)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !484, file: !385, line: 173, type: !14)
!484 = distinct !DILexicalBlock(scope: !392, file: !385, line: 173, column: 8)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !486, file: !385, line: 173, type: !14)
!486 = distinct !DILexicalBlock(scope: !487, file: !385, line: 173, column: 110)
!487 = distinct !DILexicalBlock(scope: !484, file: !385, line: 173, column: 76)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !489, file: !385, line: 195, type: !14)
!489 = distinct !DILexicalBlock(scope: !490, file: !385, line: 195, column: 28)
!490 = distinct !DILexicalBlock(scope: !491, file: !385, line: 185, column: 78)
!491 = distinct !DILexicalBlock(scope: !492, file: !385, line: 185, column: 32)
!492 = distinct !DILexicalBlock(scope: !493, file: !385, line: 183, column: 25)
!493 = distinct !DILexicalBlock(scope: !494, file: !385, line: 182, column: 55)
!494 = distinct !DILexicalBlock(scope: !495, file: !385, line: 182, column: 17)
!495 = distinct !DILexicalBlock(scope: !496, file: !385, line: 182, column: 17)
!496 = distinct !DILexicalBlock(scope: !497, file: !385, line: 181, column: 26)
!497 = distinct !DILexicalBlock(scope: !498, file: !385, line: 181, column: 17)
!498 = distinct !DILexicalBlock(scope: !499, file: !385, line: 179, column: 49)
!499 = distinct !DILexicalBlock(scope: !500, file: !385, line: 179, column: 13)
!500 = distinct !DILexicalBlock(scope: !501, file: !385, line: 176, column: 69)
!501 = distinct !DILexicalBlock(scope: !502, file: !385, line: 176, column: 5)
!502 = distinct !DILexicalBlock(scope: !392, file: !385, line: 176, column: 5)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !504, file: !385, line: 220, type: !14)
!504 = distinct !DILexicalBlock(scope: !505, file: !385, line: 220, column: 20)
!505 = distinct !DILexicalBlock(scope: !506, file: !385, line: 204, column: 27)
!506 = distinct !DILexicalBlock(scope: !507, file: !385, line: 204, column: 17)
!507 = distinct !DILexicalBlock(scope: !508, file: !385, line: 202, column: 63)
!508 = distinct !DILexicalBlock(scope: !500, file: !385, line: 202, column: 13)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !510, file: !385, line: 230, type: !14)
!510 = distinct !DILexicalBlock(scope: !511, file: !385, line: 230, column: 20)
!511 = distinct !DILexicalBlock(scope: !512, file: !385, line: 229, column: 49)
!512 = distinct !DILexicalBlock(scope: !513, file: !385, line: 229, column: 17)
!513 = distinct !DILexicalBlock(scope: !514, file: !385, line: 228, column: 64)
!514 = distinct !DILexicalBlock(scope: !500, file: !385, line: 228, column: 13)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !516, file: !385, line: 232, type: !14)
!516 = distinct !DILexicalBlock(scope: !513, file: !385, line: 232, column: 16)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !518, file: !385, line: 232, type: !14)
!518 = distinct !DILexicalBlock(scope: !519, file: !385, line: 232, column: 139)
!519 = distinct !DILexicalBlock(scope: !520, file: !385, line: 232, column: 99)
!520 = distinct !DILexicalBlock(scope: !516, file: !385, line: 232, column: 76)
!521 = !DISubprogram(name: "_pysqlite_build_column_name", scope: !385, file: !385, line: 241, type: !522, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_pysqlite_build_column_name, variables: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!14, !38}
!524 = !{!525, !526}
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colname", arg: 1, scope: !521, file: !385, line: 241, type: !38)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !521, file: !385, line: 243, type: !38)
!527 = !DISubprogram(name: "_pysqlite_fetch_one_row", scope: !385, file: !385, line: 266, type: !528, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*)* @_pysqlite_fetch_one_row, variables: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!14, !395}
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !546, !547, !548, !549, !609, !618, !621, !636, !638}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !527, file: !385, line: 266, type: !395)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !527, file: !385, line: 268, type: !53)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numcols", scope: !527, file: !385, line: 268, type: !53)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !527, file: !385, line: 269, type: !14)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !527, file: !385, line: 270, type: !14)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coltype", scope: !527, file: !385, line: 271, type: !53)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converter", scope: !527, file: !385, line: 272, type: !14)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "converted", scope: !527, file: !385, line: 273, type: !14)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !527, file: !385, line: 274, type: !20)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !527, file: !385, line: 275, type: !14)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val_str", scope: !527, file: !385, line: 276, type: !38)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !527, file: !385, line: 277, type: !543)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1600, align: 8, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 200)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colname", scope: !527, file: !385, line: 278, type: !38)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf_bytes", scope: !527, file: !385, line: 279, type: !14)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "error_obj", scope: !527, file: !385, line: 280, type: !14)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !550, file: !385, line: 287, type: !551)
!550 = distinct !DILexicalBlock(scope: !527, file: !385, line: 287, column: 5)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !553, line: 139, baseType: !554)
!553 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !553, line: 69, size: 1536, align: 64, elements: !555)
!555 = !{!556, !558, !559, !579, !582, !583, !584, !585, !586, !587, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !554, file: !553, line: 72, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !553, line: 73, baseType: !557, size: 64, align: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !554, file: !553, line: 74, baseType: !560, size: 64, align: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !553, line: 44, baseType: !562)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !553, line: 19, size: 832, align: 64, elements: !563)
!563 = !{!564, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !562, file: !553, line: 21, baseType: !565, size: 64, align: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !562, file: !553, line: 22, baseType: !557, size: 64, align: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !562, file: !553, line: 24, baseType: !14, size: 64, align: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !562, file: !553, line: 25, baseType: !14, size: 64, align: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !562, file: !553, line: 26, baseType: !14, size: 64, align: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !562, file: !553, line: 27, baseType: !14, size: 64, align: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !562, file: !553, line: 28, baseType: !14, size: 64, align: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !562, file: !553, line: 30, baseType: !14, size: 64, align: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !562, file: !553, line: 31, baseType: !14, size: 64, align: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !562, file: !553, line: 32, baseType: !14, size: 64, align: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !562, file: !553, line: 33, baseType: !53, size: 32, align: 32, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !562, file: !553, line: 34, baseType: !53, size: 32, align: 32, offset: 672)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !562, file: !553, line: 37, baseType: !53, size: 32, align: 32, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !562, file: !553, line: 43, baseType: !14, size: 64, align: 64, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !554, file: !553, line: 76, baseType: !580, size: 64, align: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !553, line: 50, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !554, file: !553, line: 77, baseType: !53, size: 32, align: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !554, file: !553, line: 78, baseType: !40, size: 8, align: 8, offset: 288)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !554, file: !553, line: 80, baseType: !40, size: 8, align: 8, offset: 296)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !554, file: !553, line: 85, baseType: !53, size: 32, align: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !554, file: !553, line: 86, baseType: !53, size: 32, align: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !554, file: !553, line: 88, baseType: !588, size: 64, align: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !553, line: 54, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!53, !14, !580, !53, !14}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !554, file: !553, line: 89, baseType: !588, size: 64, align: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !554, file: !553, line: 90, baseType: !14, size: 64, align: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !554, file: !553, line: 91, baseType: !14, size: 64, align: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !554, file: !553, line: 93, baseType: !14, size: 64, align: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !554, file: !553, line: 94, baseType: !14, size: 64, align: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !554, file: !553, line: 95, baseType: !14, size: 64, align: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !554, file: !553, line: 97, baseType: !14, size: 64, align: 64, offset: 832)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !554, file: !553, line: 98, baseType: !14, size: 64, align: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !554, file: !553, line: 99, baseType: !14, size: 64, align: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !554, file: !553, line: 101, baseType: !14, size: 64, align: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !554, file: !553, line: 103, baseType: !53, size: 32, align: 32, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !554, file: !553, line: 105, baseType: !14, size: 64, align: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !554, file: !553, line: 106, baseType: !26, size: 64, align: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !554, file: !553, line: 108, baseType: !53, size: 32, align: 32, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !554, file: !553, line: 109, baseType: !14, size: 64, align: 64, offset: 1344)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !554, file: !553, line: 134, baseType: !347, size: 64, align: 64, offset: 1408)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !554, file: !553, line: 135, baseType: !99, size: 64, align: 64, offset: 1472)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !610, file: !385, line: 318, type: !14)
!610 = distinct !DILexicalBlock(scope: !611, file: !385, line: 318, column: 20)
!611 = distinct !DILexicalBlock(scope: !612, file: !385, line: 312, column: 20)
!612 = distinct !DILexicalBlock(scope: !613, file: !385, line: 309, column: 17)
!613 = distinct !DILexicalBlock(scope: !614, file: !385, line: 306, column: 45)
!614 = distinct !DILexicalBlock(scope: !615, file: !385, line: 306, column: 13)
!615 = distinct !DILexicalBlock(scope: !616, file: !385, line: 296, column: 35)
!616 = distinct !DILexicalBlock(scope: !617, file: !385, line: 296, column: 5)
!617 = distinct !DILexicalBlock(scope: !527, file: !385, line: 296, column: 5)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !619, file: !385, line: 324, type: !551)
!619 = distinct !DILexicalBlock(scope: !620, file: !385, line: 324, column: 13)
!620 = distinct !DILexicalBlock(scope: !614, file: !385, line: 323, column: 16)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !622, file: !385, line: 360, type: !14)
!622 = distinct !DILexicalBlock(scope: !623, file: !385, line: 360, column: 36)
!623 = distinct !DILexicalBlock(scope: !624, file: !385, line: 358, column: 36)
!624 = distinct !DILexicalBlock(scope: !625, file: !385, line: 356, column: 33)
!625 = distinct !DILexicalBlock(scope: !626, file: !385, line: 354, column: 32)
!626 = distinct !DILexicalBlock(scope: !627, file: !385, line: 352, column: 29)
!627 = distinct !DILexicalBlock(scope: !628, file: !385, line: 339, column: 37)
!628 = distinct !DILexicalBlock(scope: !629, file: !385, line: 339, column: 25)
!629 = distinct !DILexicalBlock(scope: !630, file: !385, line: 337, column: 83)
!630 = distinct !DILexicalBlock(scope: !631, file: !385, line: 337, column: 21)
!631 = distinct !DILexicalBlock(scope: !632, file: !385, line: 334, column: 38)
!632 = distinct !DILexicalBlock(scope: !633, file: !385, line: 334, column: 24)
!633 = distinct !DILexicalBlock(scope: !634, file: !385, line: 332, column: 24)
!634 = distinct !DILexicalBlock(scope: !635, file: !385, line: 330, column: 24)
!635 = distinct !DILexicalBlock(scope: !620, file: !385, line: 327, column: 17)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !385, line: 362, type: !14)
!637 = distinct !DILexicalBlock(scope: !625, file: !385, line: 362, column: 32)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !639, file: !385, line: 393, type: !14)
!639 = distinct !DILexicalBlock(scope: !640, file: !385, line: 393, column: 12)
!640 = distinct !DILexicalBlock(scope: !641, file: !385, line: 392, column: 27)
!641 = distinct !DILexicalBlock(scope: !527, file: !385, line: 392, column: 9)
!642 = !DISubprogram(name: "_pysqlite_query_execute", scope: !385, file: !385, line: 425, type: !643, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, i32, %struct._object*)* @_pysqlite_query_execute, variables: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!14, !395, !53, !14}
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !665, !669, !675, !677, !679, !683, !685, !689, !693, !697, !704, !708, !715, !717, !722, !726, !728, !733, !735, !737, !740, !742, !745, !747, !750, !752}
!646 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !642, file: !385, line: 425, type: !395)
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "multiple", arg: 2, scope: !642, file: !385, line: 425, type: !53)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 3, scope: !642, file: !385, line: 425, type: !14)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "operation", scope: !642, file: !385, line: 427, type: !14)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "operation_cstr", scope: !642, file: !385, line: 428, type: !38)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "operation_len", scope: !642, file: !385, line: 429, type: !20)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parameters_list", scope: !642, file: !385, line: 430, type: !14)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parameters_iter", scope: !642, file: !385, line: 431, type: !14)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parameters", scope: !642, file: !385, line: 432, type: !14)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !642, file: !385, line: 433, type: !53)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !642, file: !385, line: 434, type: !53)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func_args", scope: !642, file: !385, line: 435, type: !14)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !642, file: !385, line: 436, type: !14)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numcols", scope: !642, file: !385, line: 437, type: !53)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement_type", scope: !642, file: !385, line: 438, type: !53)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "descriptor", scope: !642, file: !385, line: 439, type: !14)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "second_argument", scope: !642, file: !385, line: 440, type: !14)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !664, file: !385, line: 449, type: !14)
!664 = distinct !DILexicalBlock(scope: !642, file: !385, line: 449, column: 8)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !666, file: !385, line: 449, type: !14)
!666 = distinct !DILexicalBlock(scope: !667, file: !385, line: 449, column: 123)
!667 = distinct !DILexicalBlock(scope: !668, file: !385, line: 449, column: 87)
!668 = distinct !DILexicalBlock(scope: !664, file: !385, line: 449, column: 64)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !670, file: !385, line: 498, type: !14)
!670 = distinct !DILexicalBlock(scope: !671, file: !385, line: 498, column: 16)
!671 = distinct !DILexicalBlock(scope: !672, file: !385, line: 497, column: 67)
!672 = distinct !DILexicalBlock(scope: !673, file: !385, line: 497, column: 13)
!673 = distinct !DILexicalBlock(scope: !674, file: !385, line: 473, column: 12)
!674 = distinct !DILexicalBlock(scope: !642, file: !385, line: 451, column: 9)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !385, line: 501, type: !14)
!676 = distinct !DILexicalBlock(scope: !673, file: !385, line: 501, column: 12)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !385, line: 519, type: !14)
!678 = distinct !DILexicalBlock(scope: !642, file: !385, line: 519, column: 8)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !385, line: 535, type: !14)
!680 = distinct !DILexicalBlock(scope: !681, file: !385, line: 535, column: 12)
!681 = distinct !DILexicalBlock(scope: !682, file: !385, line: 533, column: 26)
!682 = distinct !DILexicalBlock(scope: !642, file: !385, line: 533, column: 9)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !684, file: !385, line: 539, type: !14)
!684 = distinct !DILexicalBlock(scope: !642, file: !385, line: 539, column: 8)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !385, line: 546, type: !14)
!686 = distinct !DILexicalBlock(scope: !687, file: !385, line: 546, column: 12)
!687 = distinct !DILexicalBlock(scope: !688, file: !385, line: 545, column: 34)
!688 = distinct !DILexicalBlock(scope: !642, file: !385, line: 545, column: 9)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !690, file: !385, line: 553, type: !14)
!690 = distinct !DILexicalBlock(scope: !691, file: !385, line: 553, column: 16)
!691 = distinct !DILexicalBlock(scope: !692, file: !385, line: 552, column: 22)
!692 = distinct !DILexicalBlock(scope: !687, file: !385, line: 552, column: 13)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !694, file: !385, line: 553, type: !14)
!694 = distinct !DILexicalBlock(scope: !695, file: !385, line: 553, column: 133)
!695 = distinct !DILexicalBlock(scope: !696, file: !385, line: 553, column: 96)
!696 = distinct !DILexicalBlock(scope: !690, file: !385, line: 553, column: 73)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !698, file: !385, line: 573, type: !14)
!698 = distinct !DILexicalBlock(scope: !699, file: !385, line: 573, column: 24)
!699 = distinct !DILexicalBlock(scope: !700, file: !385, line: 568, column: 55)
!700 = distinct !DILexicalBlock(scope: !701, file: !385, line: 568, column: 21)
!701 = distinct !DILexicalBlock(scope: !702, file: !385, line: 563, column: 33)
!702 = distinct !DILexicalBlock(scope: !703, file: !385, line: 562, column: 44)
!703 = distinct !DILexicalBlock(scope: !642, file: !385, line: 562, column: 9)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !705, file: !385, line: 584, type: !14)
!705 = distinct !DILexicalBlock(scope: !706, file: !385, line: 584, column: 24)
!706 = distinct !DILexicalBlock(scope: !707, file: !385, line: 579, column: 54)
!707 = distinct !DILexicalBlock(scope: !701, file: !385, line: 579, column: 21)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !709, file: !385, line: 655, type: !551)
!709 = distinct !DILexicalBlock(scope: !710, file: !385, line: 655, column: 17)
!710 = distinct !DILexicalBlock(scope: !711, file: !385, line: 654, column: 57)
!711 = distinct !DILexicalBlock(scope: !712, file: !385, line: 654, column: 17)
!712 = distinct !DILexicalBlock(scope: !713, file: !385, line: 653, column: 77)
!713 = distinct !DILexicalBlock(scope: !714, file: !385, line: 653, column: 13)
!714 = distinct !DILexicalBlock(scope: !642, file: !385, line: 598, column: 15)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !716, file: !385, line: 659, type: !14)
!716 = distinct !DILexicalBlock(scope: !710, file: !385, line: 659, column: 20)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !718, file: !385, line: 690, type: !14)
!718 = distinct !DILexicalBlock(scope: !719, file: !385, line: 690, column: 16)
!719 = distinct !DILexicalBlock(scope: !720, file: !385, line: 688, column: 44)
!720 = distinct !DILexicalBlock(scope: !721, file: !385, line: 688, column: 20)
!721 = distinct !DILexicalBlock(scope: !714, file: !385, line: 681, column: 13)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !723, file: !385, line: 690, type: !14)
!723 = distinct !DILexicalBlock(scope: !724, file: !385, line: 690, column: 133)
!724 = distinct !DILexicalBlock(scope: !725, file: !385, line: 690, column: 96)
!725 = distinct !DILexicalBlock(scope: !718, file: !385, line: 690, column: 73)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !727, file: !385, line: 704, type: !14)
!727 = distinct !DILexicalBlock(scope: !714, file: !385, line: 704, column: 12)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastrowid", scope: !729, file: !385, line: 706, type: !731)
!729 = distinct !DILexicalBlock(scope: !730, file: !385, line: 705, column: 62)
!730 = distinct !DILexicalBlock(scope: !714, file: !385, line: 705, column: 13)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite_int64", file: !369, line: 253, baseType: !732)
!732 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !734, file: !385, line: 707, type: !551)
!734 = distinct !DILexicalBlock(scope: !729, file: !385, line: 707, column: 13)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !736, file: !385, line: 719, type: !14)
!736 = distinct !DILexicalBlock(scope: !714, file: !385, line: 719, column: 12)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !385, line: 719, type: !14)
!738 = distinct !DILexicalBlock(scope: !739, file: !385, line: 719, column: 106)
!739 = distinct !DILexicalBlock(scope: !736, file: !385, line: 719, column: 72)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !741, file: !385, line: 732, type: !14)
!741 = distinct !DILexicalBlock(scope: !642, file: !385, line: 732, column: 8)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !743, file: !385, line: 732, type: !14)
!743 = distinct !DILexicalBlock(scope: !744, file: !385, line: 732, column: 102)
!744 = distinct !DILexicalBlock(scope: !741, file: !385, line: 732, column: 68)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !746, file: !385, line: 733, type: !14)
!746 = distinct !DILexicalBlock(scope: !642, file: !385, line: 733, column: 8)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !748, file: !385, line: 733, type: !14)
!748 = distinct !DILexicalBlock(scope: !749, file: !385, line: 733, column: 107)
!749 = distinct !DILexicalBlock(scope: !746, file: !385, line: 733, column: 73)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !751, file: !385, line: 734, type: !14)
!751 = distinct !DILexicalBlock(scope: !642, file: !385, line: 734, column: 8)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !753, file: !385, line: 734, type: !14)
!753 = distinct !DILexicalBlock(scope: !754, file: !385, line: 734, column: 107)
!754 = distinct !DILexicalBlock(scope: !751, file: !385, line: 734, column: 73)
!755 = !DISubprogram(name: "pysqlite_cursor_execute", scope: !385, file: !385, line: 747, type: !756, isLocal: false, isDefinition: true, scopeLine: 748, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_execute, variables: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!14, !395, !14}
!758 = !{!759, !760}
!759 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !755, file: !385, line: 747, type: !395)
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !755, file: !385, line: 747, type: !14)
!761 = !DISubprogram(name: "pysqlite_cursor_executemany", scope: !385, file: !385, line: 752, type: !756, isLocal: false, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_executemany, variables: !762)
!762 = !{!763, !764}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !385, line: 752, type: !395)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !761, file: !385, line: 752, type: !14)
!765 = !DISubprogram(name: "pysqlite_cursor_executescript", scope: !385, file: !385, line: 757, type: !756, isLocal: false, isDefinition: true, scopeLine: 758, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_executescript, variables: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !777, !780, !782}
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !765, file: !385, line: 757, type: !395)
!768 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !765, file: !385, line: 757, type: !14)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "script_obj", scope: !765, file: !385, line: 759, type: !14)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "script_str", scope: !765, file: !385, line: 760, type: !14)
!771 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "script_cstr", scope: !765, file: !385, line: 761, type: !38)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !765, file: !385, line: 762, type: !372)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !765, file: !385, line: 763, type: !53)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !765, file: !385, line: 764, type: !14)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !776, file: !385, line: 791, type: !14)
!776 = distinct !DILexicalBlock(scope: !765, file: !385, line: 791, column: 8)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !778, file: !385, line: 794, type: !551)
!778 = distinct !DILexicalBlock(scope: !779, file: !385, line: 794, column: 9)
!779 = distinct !DILexicalBlock(scope: !765, file: !385, line: 793, column: 15)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !781, file: !385, line: 831, type: !14)
!781 = distinct !DILexicalBlock(scope: !765, file: !385, line: 831, column: 8)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !783, file: !385, line: 831, type: !14)
!783 = distinct !DILexicalBlock(scope: !784, file: !385, line: 831, column: 102)
!784 = distinct !DILexicalBlock(scope: !781, file: !385, line: 831, column: 68)
!785 = !DISubprogram(name: "pysqlite_cursor_getiter", scope: !385, file: !385, line: 841, type: !528, isLocal: false, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*)* @pysqlite_cursor_getiter, variables: !786)
!786 = !{!787}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !785, file: !385, line: 841, type: !395)
!788 = !DISubprogram(name: "pysqlite_cursor_iternext", scope: !385, file: !385, line: 847, type: !528, isLocal: false, isDefinition: true, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*)* @pysqlite_cursor_iternext, variables: !789)
!789 = !{!790, !791, !792, !793, !794, !800, !804, !808, !814}
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !788, file: !385, line: 847, type: !395)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_row_tuple", scope: !788, file: !385, line: 849, type: !14)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next_row", scope: !788, file: !385, line: 850, type: !14)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !788, file: !385, line: 851, type: !53)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !795, file: !385, line: 865, type: !14)
!795 = distinct !DILexicalBlock(scope: !796, file: !385, line: 865, column: 16)
!796 = distinct !DILexicalBlock(scope: !797, file: !385, line: 863, column: 31)
!797 = distinct !DILexicalBlock(scope: !798, file: !385, line: 863, column: 14)
!798 = distinct !DILexicalBlock(scope: !799, file: !385, line: 862, column: 26)
!799 = distinct !DILexicalBlock(scope: !788, file: !385, line: 862, column: 9)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !801, file: !385, line: 865, type: !14)
!801 = distinct !DILexicalBlock(scope: !802, file: !385, line: 865, column: 133)
!802 = distinct !DILexicalBlock(scope: !803, file: !385, line: 865, column: 96)
!803 = distinct !DILexicalBlock(scope: !795, file: !385, line: 865, column: 73)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !805, file: !385, line: 880, type: !14)
!805 = distinct !DILexicalBlock(scope: !806, file: !385, line: 880, column: 12)
!806 = distinct !DILexicalBlock(scope: !807, file: !385, line: 874, column: 49)
!807 = distinct !DILexicalBlock(scope: !788, file: !385, line: 874, column: 9)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !385, line: 889, type: !14)
!809 = distinct !DILexicalBlock(scope: !810, file: !385, line: 889, column: 16)
!810 = distinct !DILexicalBlock(scope: !811, file: !385, line: 887, column: 37)
!811 = distinct !DILexicalBlock(scope: !812, file: !385, line: 887, column: 13)
!812 = distinct !DILexicalBlock(scope: !813, file: !385, line: 885, column: 26)
!813 = distinct !DILexicalBlock(scope: !788, file: !385, line: 885, column: 9)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !385, line: 898, type: !14)
!815 = distinct !DILexicalBlock(scope: !816, file: !385, line: 898, column: 20)
!816 = distinct !DILexicalBlock(scope: !817, file: !385, line: 896, column: 47)
!817 = distinct !DILexicalBlock(scope: !818, file: !385, line: 896, column: 17)
!818 = distinct !DILexicalBlock(scope: !819, file: !385, line: 894, column: 24)
!819 = distinct !DILexicalBlock(scope: !812, file: !385, line: 894, column: 13)
!820 = !DISubprogram(name: "pysqlite_cursor_fetchone", scope: !385, file: !385, line: 908, type: !756, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_fetchone, variables: !821)
!821 = !{!822, !823, !824}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !820, file: !385, line: 908, type: !395)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !820, file: !385, line: 908, type: !14)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !820, file: !385, line: 910, type: !14)
!825 = !DISubprogram(name: "pysqlite_cursor_fetchmany", scope: !385, file: !385, line: 921, type: !826, isLocal: false, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*, %struct._object*)* @pysqlite_cursor_fetchmany, variables: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!14, !395, !14, !14}
!828 = !{!829, !830, !831, !832, !833, !834, !835, !836, !841}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !825, file: !385, line: 921, type: !395)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !825, file: !385, line: 921, type: !14)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !825, file: !385, line: 921, type: !14)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !825, file: !385, line: 925, type: !14)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !825, file: !385, line: 926, type: !14)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxrows", scope: !825, file: !385, line: 927, type: !53)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "counter", scope: !825, file: !385, line: 928, type: !53)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !385, line: 946, type: !14)
!837 = distinct !DILexicalBlock(scope: !838, file: !385, line: 946, column: 16)
!838 = distinct !DILexicalBlock(scope: !839, file: !385, line: 944, column: 18)
!839 = distinct !DILexicalBlock(scope: !840, file: !385, line: 944, column: 13)
!840 = distinct !DILexicalBlock(scope: !825, file: !385, line: 942, column: 17)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !842, file: !385, line: 957, type: !14)
!842 = distinct !DILexicalBlock(scope: !843, file: !385, line: 957, column: 12)
!843 = distinct !DILexicalBlock(scope: !844, file: !385, line: 956, column: 27)
!844 = distinct !DILexicalBlock(scope: !825, file: !385, line: 956, column: 9)
!845 = !DISubprogram(name: "pysqlite_cursor_fetchall", scope: !385, file: !385, line: 964, type: !756, isLocal: false, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_fetchall, variables: !846)
!846 = !{!847, !848, !849, !850, !851, !856}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !845, file: !385, line: 964, type: !395)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !845, file: !385, line: 964, type: !14)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !845, file: !385, line: 966, type: !14)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !845, file: !385, line: 967, type: !14)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !852, file: !385, line: 981, type: !14)
!852 = distinct !DILexicalBlock(scope: !853, file: !385, line: 981, column: 16)
!853 = distinct !DILexicalBlock(scope: !854, file: !385, line: 979, column: 18)
!854 = distinct !DILexicalBlock(scope: !855, file: !385, line: 979, column: 13)
!855 = distinct !DILexicalBlock(scope: !845, file: !385, line: 977, column: 17)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !857, file: !385, line: 986, type: !14)
!857 = distinct !DILexicalBlock(scope: !858, file: !385, line: 986, column: 12)
!858 = distinct !DILexicalBlock(scope: !859, file: !385, line: 985, column: 27)
!859 = distinct !DILexicalBlock(scope: !845, file: !385, line: 985, column: 9)
!860 = !DISubprogram(name: "pysqlite_noop", scope: !385, file: !385, line: 993, type: !861, isLocal: false, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_noop, variables: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!14, !401, !14}
!863 = !{!864, !865}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !860, file: !385, line: 993, type: !401)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !860, file: !385, line: 993, type: !14)
!866 = !DISubprogram(name: "pysqlite_cursor_close", scope: !385, file: !385, line: 1000, type: !756, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_cursor_close, variables: !867)
!867 = !{!868, !869, !870, !874}
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !866, file: !385, line: 1000, type: !395)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !866, file: !385, line: 1000, type: !14)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !871, file: !385, line: 1008, type: !14)
!871 = distinct !DILexicalBlock(scope: !872, file: !385, line: 1008, column: 12)
!872 = distinct !DILexicalBlock(scope: !873, file: !385, line: 1006, column: 26)
!873 = distinct !DILexicalBlock(scope: !866, file: !385, line: 1006, column: 9)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !385, line: 1008, type: !14)
!875 = distinct !DILexicalBlock(scope: !876, file: !385, line: 1008, column: 129)
!876 = distinct !DILexicalBlock(scope: !877, file: !385, line: 1008, column: 92)
!877 = distinct !DILexicalBlock(scope: !871, file: !385, line: 1008, column: 69)
!878 = !DISubprogram(name: "pysqlite_cursor_setup_types", scope: !385, file: !385, line: 1095, type: !879, isLocal: false, isDefinition: true, scopeLine: 1096, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @pysqlite_cursor_setup_types, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!53}
!881 = !{}
!882 = !DISubprogram(name: "check_cursor", scope: !385, file: !385, line: 405, type: !393, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Cursor*)* @check_cursor, variables: !883)
!883 = !{!884}
!884 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cur", arg: 1, scope: !882, file: !385, line: 405, type: !395)
!885 = !DISubprogram(name: "detect_statement_type", scope: !385, file: !385, line: 32, type: !886, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @detect_statement_type, variables: !889)
!886 = !DISubroutineType(types: !887)
!887 = !{!888, !38}
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_StatementKind", file: !4, line: 58, baseType: !3)
!889 = !{!890, !891, !892, !893, !894, !897, !898, !900, !901, !904, !905, !907, !908, !911, !912, !914, !915, !918, !919, !921, !922, !925, !926, !928}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statement", arg: 1, scope: !885, file: !385, line: 32, type: !38)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !885, file: !385, line: 34, type: !109)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src", scope: !885, file: !385, line: 35, type: !38)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst", scope: !885, file: !385, line: 36, type: !61)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !895, file: !385, line: 55, type: !104)
!895 = distinct !DILexicalBlock(scope: !896, file: !385, line: 55, column: 25)
!896 = distinct !DILexicalBlock(scope: !885, file: !385, line: 55, column: 9)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !895, file: !385, line: 55, type: !104)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !899, file: !385, line: 55, type: !381)
!899 = distinct !DILexicalBlock(scope: !895, file: !385, line: 55, column: 1568)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !899, file: !385, line: 55, type: !53)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !902, file: !385, line: 57, type: !104)
!902 = distinct !DILexicalBlock(scope: !903, file: !385, line: 57, column: 32)
!903 = distinct !DILexicalBlock(scope: !896, file: !385, line: 57, column: 16)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !902, file: !385, line: 57, type: !104)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !906, file: !385, line: 57, type: !381)
!906 = distinct !DILexicalBlock(scope: !902, file: !385, line: 57, column: 1575)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !906, file: !385, line: 57, type: !53)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !909, file: !385, line: 59, type: !104)
!909 = distinct !DILexicalBlock(scope: !910, file: !385, line: 59, column: 32)
!910 = distinct !DILexicalBlock(scope: !903, file: !385, line: 59, column: 16)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !909, file: !385, line: 59, type: !104)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !913, file: !385, line: 59, type: !381)
!913 = distinct !DILexicalBlock(scope: !909, file: !385, line: 59, column: 1575)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !913, file: !385, line: 59, type: !53)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !916, file: !385, line: 61, type: !104)
!916 = distinct !DILexicalBlock(scope: !917, file: !385, line: 61, column: 32)
!917 = distinct !DILexicalBlock(scope: !910, file: !385, line: 61, column: 16)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !916, file: !385, line: 61, type: !104)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !920, file: !385, line: 61, type: !381)
!920 = distinct !DILexicalBlock(scope: !916, file: !385, line: 61, column: 1575)
!921 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !920, file: !385, line: 61, type: !53)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !923, file: !385, line: 63, type: !104)
!923 = distinct !DILexicalBlock(scope: !924, file: !385, line: 63, column: 32)
!924 = distinct !DILexicalBlock(scope: !917, file: !385, line: 63, column: 16)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !923, file: !385, line: 63, type: !104)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !927, file: !385, line: 63, type: !381)
!927 = distinct !DILexicalBlock(scope: !923, file: !385, line: 63, column: 1590)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !927, file: !385, line: 63, type: !53)
!929 = !DISubprogram(name: "pysqlite_cursor_dealloc", scope: !385, file: !385, line: 118, type: !930, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Cursor*)* @pysqlite_cursor_dealloc, variables: !932)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !395}
!932 = !{!933, !934, !938, !940, !943, !945, !948, !950, !953, !955, !958, !960, !963, !965}
!933 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !929, file: !385, line: 118, type: !395)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !935, file: !385, line: 123, type: !14)
!935 = distinct !DILexicalBlock(scope: !936, file: !385, line: 123, column: 12)
!936 = distinct !DILexicalBlock(scope: !937, file: !385, line: 121, column: 26)
!937 = distinct !DILexicalBlock(scope: !929, file: !385, line: 121, column: 9)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !939, file: !385, line: 126, type: !14)
!939 = distinct !DILexicalBlock(scope: !929, file: !385, line: 126, column: 8)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !941, file: !385, line: 126, type: !14)
!941 = distinct !DILexicalBlock(scope: !942, file: !385, line: 126, column: 108)
!942 = distinct !DILexicalBlock(scope: !939, file: !385, line: 126, column: 74)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !944, file: !385, line: 127, type: !14)
!944 = distinct !DILexicalBlock(scope: !929, file: !385, line: 127, column: 8)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !946, file: !385, line: 127, type: !14)
!946 = distinct !DILexicalBlock(scope: !947, file: !385, line: 127, column: 110)
!947 = distinct !DILexicalBlock(scope: !944, file: !385, line: 127, column: 76)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !949, file: !385, line: 128, type: !14)
!949 = distinct !DILexicalBlock(scope: !929, file: !385, line: 128, column: 8)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !951, file: !385, line: 128, type: !14)
!951 = distinct !DILexicalBlock(scope: !952, file: !385, line: 128, column: 109)
!952 = distinct !DILexicalBlock(scope: !949, file: !385, line: 128, column: 75)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !954, file: !385, line: 129, type: !14)
!954 = distinct !DILexicalBlock(scope: !929, file: !385, line: 129, column: 8)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !956, file: !385, line: 129, type: !14)
!956 = distinct !DILexicalBlock(scope: !957, file: !385, line: 129, column: 107)
!957 = distinct !DILexicalBlock(scope: !954, file: !385, line: 129, column: 73)
!958 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !959, file: !385, line: 130, type: !14)
!959 = distinct !DILexicalBlock(scope: !929, file: !385, line: 130, column: 8)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !961, file: !385, line: 130, type: !14)
!961 = distinct !DILexicalBlock(scope: !962, file: !385, line: 130, column: 109)
!962 = distinct !DILexicalBlock(scope: !959, file: !385, line: 130, column: 75)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !964, file: !385, line: 131, type: !14)
!964 = distinct !DILexicalBlock(scope: !929, file: !385, line: 131, column: 8)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !966, file: !385, line: 131, type: !14)
!966 = distinct !DILexicalBlock(scope: !967, file: !385, line: 131, column: 106)
!967 = distinct !DILexicalBlock(scope: !964, file: !385, line: 131, column: 72)
!968 = !DISubprogram(name: "pysqlite_cursor_init", scope: !385, file: !385, line: 70, type: !969, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Cursor*, %struct._object*, %struct._object*)* @pysqlite_cursor_init, variables: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{!53, !395, !14, !14}
!971 = !{!972, !973, !974, !975}
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !968, file: !385, line: 70, type: !395)
!973 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !968, file: !385, line: 70, type: !14)
!974 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !968, file: !385, line: 70, type: !14)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "connection", scope: !968, file: !385, line: 72, type: !401)
!976 = !{!977, !985, !989, !991, !992, !996, !1001}
!977 = !DIGlobalVariable(name: "PyId_upper", scope: !384, file: !385, line: 144, type: !978, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_pysqlite_get_converter.PyId_upper)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !16, line: 144, baseType: !979)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !16, line: 140, size: 192, align: 64, elements: !980)
!980 = !{!981, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !16, line: 141, baseType: !982, size: 64, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !979, file: !16, line: 142, baseType: !38, size: 64, align: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !979, file: !16, line: 143, baseType: !14, size: 64, align: 64, offset: 128)
!985 = !DIGlobalVariable(name: "kwlist", scope: !825, file: !385, line: 923, type: !986, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pysqlite_cursor_fetchmany.kwlist)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, align: 64, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 3)
!989 = !DIGlobalVariable(name: "pysqlite_CursorType", scope: !0, file: !385, line: 1053, type: !990, isLocal: false, isDefinition: true, variable: { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @pysqlite_CursorType)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !16, line: 422, baseType: !29)
!991 = !DIGlobalVariable(name: "errmsg_fetch_across_rollback", scope: !0, file: !385, line: 30, type: !61, isLocal: true, isDefinition: true, variable: i8** @errmsg_fetch_across_rollback)
!992 = !DIGlobalVariable(name: "cursor_doc", scope: !0, file: !385, line: 1050, type: !993, isLocal: true, isDefinition: true, variable: [30 x i8]* @cursor_doc)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 240, align: 8, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 30)
!996 = !DIGlobalVariable(name: "cursor_methods", scope: !0, file: !385, line: 1017, type: !997, isLocal: true, isDefinition: true, variable: [10 x %struct.PyMethodDef]* @cursor_methods)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, size: 2560, align: 64, elements: !999)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !291, line: 47, baseType: !290)
!999 = !{!1000}
!1000 = !DISubrange(count: 10)
!1001 = !DIGlobalVariable(name: "cursor_members", scope: !0, file: !385, line: 1039, type: !1002, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMemberDef]* @cursor_members)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2240, align: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 7)
!1005 = !{i32 2, !"Dwarf Version", i32 4}
!1006 = !{i32 2, !"Debug Info Version", i32 3}
!1007 = !{i32 1, !"PIC Level", i32 2}
!1008 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1009 = !{!1010, !1010, i64 0}
!1010 = !{!"any pointer", !1011, i64 0}
!1011 = !{!"omnipotent char", !1012, i64 0}
!1012 = !{!"Simple C/C++ TBAA"}
!1013 = !DIExpression()
!1014 = !DILocation(line: 140, column: 45, scope: !384)
!1015 = !DILocation(line: 142, column: 5, scope: !384)
!1016 = !DILocation(line: 142, column: 15, scope: !384)
!1017 = !DILocation(line: 143, column: 5, scope: !384)
!1018 = !DILocation(line: 143, column: 15, scope: !384)
!1019 = !DILocation(line: 146, column: 41, scope: !384)
!1020 = !DILocation(line: 146, column: 18, scope: !384)
!1021 = !DILocation(line: 146, column: 16, scope: !384)
!1022 = !DILocation(line: 147, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !384, file: !385, line: 147, column: 9)
!1024 = !DILocation(line: 147, column: 9, scope: !384)
!1025 = !DILocation(line: 148, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !385, line: 147, column: 22)
!1027 = !DILocation(line: 151, column: 29, scope: !384)
!1028 = !DILocation(line: 151, column: 41, scope: !384)
!1029 = !DILocation(line: 151, column: 14, scope: !384)
!1030 = !DILocation(line: 151, column: 12, scope: !384)
!1031 = !DILocation(line: 152, column: 5, scope: !384)
!1032 = !DILocation(line: 152, column: 10, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !391, file: !385, discriminator: 1)
!1034 = !DILocation(line: 152, column: 20, scope: !391)
!1035 = !DILocation(line: 152, column: 50, scope: !391)
!1036 = !DILocation(line: 152, column: 71, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !391, file: !385, line: 152, column: 68)
!1038 = !DILocation(line: 152, column: 88, scope: !1037)
!1039 = !DILocation(line: 152, column: 68, scope: !1037)
!1040 = !{!1041, !1042, i64 0}
!1041 = !{!"_object", !1042, i64 0, !1010, i64 8}
!1042 = !{!"long", !1011, i64 0}
!1043 = !DILocation(line: 152, column: 98, scope: !1037)
!1044 = !DILocation(line: 152, column: 68, scope: !391)
!1045 = !DILocation(line: 152, column: 68, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !391, file: !385, discriminator: 2)
!1047 = !DILocation(line: 152, column: 129, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1037, file: !385, discriminator: 3)
!1049 = !DILocation(line: 152, column: 147, scope: !1037)
!1050 = !{!1041, !1010, i64 8}
!1051 = !DILocation(line: 152, column: 157, scope: !1037)
!1052 = !{!1053, !1010, i64 48}
!1053 = !{!"_typeobject", !1054, i64 0, !1010, i64 24, !1042, i64 32, !1042, i64 40, !1010, i64 48, !1010, i64 56, !1010, i64 64, !1010, i64 72, !1010, i64 80, !1010, i64 88, !1010, i64 96, !1010, i64 104, !1010, i64 112, !1010, i64 120, !1010, i64 128, !1010, i64 136, !1010, i64 144, !1010, i64 152, !1010, i64 160, !1042, i64 168, !1010, i64 176, !1010, i64 184, !1010, i64 192, !1010, i64 200, !1042, i64 208, !1010, i64 216, !1010, i64 224, !1010, i64 232, !1010, i64 240, !1010, i64 248, !1010, i64 256, !1010, i64 264, !1010, i64 272, !1010, i64 280, !1042, i64 288, !1010, i64 296, !1010, i64 304, !1010, i64 312, !1010, i64 320, !1010, i64 328, !1010, i64 336, !1010, i64 344, !1010, i64 352, !1010, i64 360, !1010, i64 368, !1010, i64 376, !1055, i64 384, !1010, i64 392}
!1054 = !{!"", !1041, i64 0, !1042, i64 16}
!1055 = !{!"int", !1011, i64 0}
!1056 = !DILocation(line: 152, column: 182, scope: !1037)
!1057 = !DILocation(line: 152, column: 113, scope: !1037)
!1058 = !DILocation(line: 152, column: 201, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !384, file: !385, discriminator: 4)
!1060 = !DILocation(line: 152, column: 201, scope: !391)
!1061 = !DILocation(line: 152, column: 201, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !391, file: !385, discriminator: 5)
!1063 = !DILocation(line: 154, column: 12, scope: !384)
!1064 = !DILocation(line: 154, column: 5, scope: !384)
!1065 = !DILocation(line: 155, column: 1, scope: !384)
!1066 = !DILocation(line: 157, column: 50, scope: !392)
!1067 = !DILocation(line: 159, column: 5, scope: !392)
!1068 = !DILocation(line: 159, column: 9, scope: !392)
!1069 = !DILocation(line: 160, column: 5, scope: !392)
!1070 = !DILocation(line: 160, column: 17, scope: !392)
!1071 = !DILocation(line: 161, column: 5, scope: !392)
!1072 = !DILocation(line: 161, column: 17, scope: !392)
!1073 = !DILocation(line: 163, column: 5, scope: !392)
!1074 = !DILocation(line: 163, column: 17, scope: !392)
!1075 = !DILocation(line: 164, column: 5, scope: !392)
!1076 = !DILocation(line: 164, column: 17, scope: !392)
!1077 = !DILocation(line: 165, column: 5, scope: !392)
!1078 = !DILocation(line: 165, column: 15, scope: !392)
!1079 = !DILocation(line: 166, column: 5, scope: !392)
!1080 = !DILocation(line: 166, column: 15, scope: !392)
!1081 = !DILocation(line: 167, column: 5, scope: !392)
!1082 = !DILocation(line: 167, column: 15, scope: !392)
!1083 = !DILocation(line: 169, column: 10, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !392, file: !385, line: 169, column: 9)
!1085 = !DILocation(line: 169, column: 16, scope: !1084)
!1086 = !{!1087, !1010, i64 16}
!1087 = !{!"", !1041, i64 0, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1055, i64 40, !1010, i64 48, !1042, i64 56, !1010, i64 64, !1010, i64 72, !1055, i64 80, !1055, i64 84, !1055, i64 88, !1055, i64 92, !1010, i64 96, !1010, i64 104}
!1088 = !DILocation(line: 169, column: 28, scope: !1084)
!1089 = !{!1090, !1055, i64 28}
!1090 = !{!"", !1041, i64 0, !1010, i64 16, !1011, i64 24, !1055, i64 28, !1091, i64 32, !1091, i64 40, !1010, i64 48, !1010, i64 56, !1055, i64 64, !1055, i64 68, !1042, i64 72, !1010, i64 80, !1010, i64 88, !1010, i64 96, !1055, i64 104, !1055, i64 108, !1010, i64 112, !1010, i64 120, !1010, i64 128, !1010, i64 136, !1010, i64 144, !1010, i64 152, !1010, i64 160, !1010, i64 168, !1010, i64 176, !1010, i64 184, !1010, i64 192, !1010, i64 200, !1010, i64 208, !1010, i64 216}
!1091 = !{!"double", !1011, i64 0}
!1092 = !DILocation(line: 169, column: 9, scope: !392)
!1093 = !DILocation(line: 170, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !385, line: 169, column: 42)
!1095 = !DILocation(line: 173, column: 5, scope: !392)
!1096 = !DILocation(line: 173, column: 10, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !484, file: !385, discriminator: 1)
!1098 = !DILocation(line: 173, column: 20, scope: !484)
!1099 = !DILocation(line: 173, column: 51, scope: !484)
!1100 = !DILocation(line: 173, column: 57, scope: !484)
!1101 = !{!1087, !1010, i64 32}
!1102 = !DILocation(line: 173, column: 76, scope: !487)
!1103 = !DILocation(line: 173, column: 92, scope: !487)
!1104 = !DILocation(line: 173, column: 76, scope: !484)
!1105 = !DILocation(line: 173, column: 107, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !487, file: !385, discriminator: 2)
!1107 = !DILocation(line: 173, column: 112, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !486, file: !385, discriminator: 4)
!1109 = !DILocation(line: 173, column: 122, scope: !486)
!1110 = !DILocation(line: 173, column: 152, scope: !486)
!1111 = !DILocation(line: 173, column: 178, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !486, file: !385, line: 173, column: 175)
!1113 = !DILocation(line: 173, column: 195, scope: !1112)
!1114 = !DILocation(line: 173, column: 175, scope: !1112)
!1115 = !DILocation(line: 173, column: 205, scope: !1112)
!1116 = !DILocation(line: 173, column: 175, scope: !486)
!1117 = !DILocation(line: 173, column: 175, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !486, file: !385, discriminator: 5)
!1119 = !DILocation(line: 173, column: 236, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1112, file: !385, discriminator: 6)
!1121 = !DILocation(line: 173, column: 254, scope: !1112)
!1122 = !DILocation(line: 173, column: 264, scope: !1112)
!1123 = !DILocation(line: 173, column: 289, scope: !1112)
!1124 = !DILocation(line: 173, column: 220, scope: !1112)
!1125 = !DILocation(line: 173, column: 308, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !487, file: !385, discriminator: 7)
!1127 = !DILocation(line: 173, column: 308, scope: !486)
!1128 = !DILocation(line: 173, column: 308, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !486, file: !385, discriminator: 8)
!1130 = !DILocation(line: 173, column: 308, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !486, file: !385, discriminator: 9)
!1132 = !DILocation(line: 173, column: 321, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1134, file: !385, discriminator: 10)
!1134 = !DILexicalBlockFile(scope: !392, file: !385, discriminator: 3)
!1135 = !DILocation(line: 173, column: 321, scope: !484)
!1136 = !DILocation(line: 173, column: 321, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !484, file: !385, discriminator: 11)
!1138 = !DILocation(line: 174, column: 26, scope: !392)
!1139 = !DILocation(line: 174, column: 5, scope: !392)
!1140 = !DILocation(line: 174, column: 11, scope: !392)
!1141 = !DILocation(line: 174, column: 24, scope: !392)
!1142 = !DILocation(line: 176, column: 12, scope: !502)
!1143 = !{!1055, !1055, i64 0}
!1144 = !DILocation(line: 176, column: 10, scope: !502)
!1145 = !DILocation(line: 176, column: 17, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1147, file: !385, discriminator: 2)
!1147 = !DILexicalBlockFile(scope: !501, file: !385, discriminator: 1)
!1148 = !DILocation(line: 176, column: 42, scope: !501)
!1149 = !DILocation(line: 176, column: 48, scope: !501)
!1150 = !{!1087, !1010, i64 72}
!1151 = !DILocation(line: 176, column: 59, scope: !501)
!1152 = !{!1153, !1010, i64 24}
!1153 = !{!"", !1041, i64 0, !1010, i64 16, !1010, i64 24, !1010, i64 32, !1055, i64 40, !1010, i64 48}
!1154 = !DILocation(line: 176, column: 21, scope: !501)
!1155 = !DILocation(line: 176, column: 19, scope: !501)
!1156 = !DILocation(line: 176, column: 5, scope: !502)
!1157 = !DILocation(line: 177, column: 19, scope: !500)
!1158 = !DILocation(line: 179, column: 13, scope: !499)
!1159 = !DILocation(line: 179, column: 19, scope: !499)
!1160 = !DILocation(line: 179, column: 31, scope: !499)
!1161 = !DILocation(line: 179, column: 44, scope: !499)
!1162 = !DILocation(line: 179, column: 13, scope: !500)
!1163 = !DILocation(line: 180, column: 43, scope: !498)
!1164 = !DILocation(line: 180, column: 49, scope: !498)
!1165 = !DILocation(line: 180, column: 60, scope: !498)
!1166 = !DILocation(line: 180, column: 64, scope: !498)
!1167 = !DILocation(line: 180, column: 23, scope: !498)
!1168 = !DILocation(line: 180, column: 21, scope: !498)
!1169 = !DILocation(line: 181, column: 17, scope: !497)
!1170 = !DILocation(line: 181, column: 17, scope: !498)
!1171 = !DILocation(line: 182, column: 28, scope: !495)
!1172 = !DILocation(line: 182, column: 26, scope: !495)
!1173 = !DILocation(line: 182, column: 22, scope: !495)
!1174 = !DILocation(line: 182, column: 38, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !1176, file: !385, discriminator: 2)
!1176 = !DILexicalBlockFile(scope: !494, file: !385, discriminator: 1)
!1177 = !DILocation(line: 182, column: 37, scope: !494)
!1178 = !{!1011, !1011, i64 0}
!1179 = !DILocation(line: 182, column: 42, scope: !494)
!1180 = !DILocation(line: 182, column: 17, scope: !495)
!1181 = !DILocation(line: 183, column: 26, scope: !492)
!1182 = !DILocation(line: 183, column: 25, scope: !492)
!1183 = !DILocation(line: 183, column: 30, scope: !492)
!1184 = !DILocation(line: 183, column: 25, scope: !493)
!1185 = !DILocation(line: 184, column: 38, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !492, file: !385, line: 183, column: 38)
!1187 = !DILocation(line: 184, column: 42, scope: !1186)
!1188 = !DILocation(line: 184, column: 36, scope: !1186)
!1189 = !DILocation(line: 185, column: 21, scope: !1186)
!1190 = !DILocation(line: 185, column: 33, scope: !491)
!1191 = !DILocation(line: 185, column: 32, scope: !491)
!1192 = !DILocation(line: 185, column: 37, scope: !491)
!1193 = !DILocation(line: 185, column: 44, scope: !491)
!1194 = !DILocation(line: 185, column: 47, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !491, file: !385, discriminator: 1)
!1196 = !DILocation(line: 185, column: 58, scope: !491)
!1197 = !DILocation(line: 185, column: 32, scope: !492)
!1198 = !DILocation(line: 186, column: 59, scope: !490)
!1199 = !DILocation(line: 186, column: 71, scope: !490)
!1200 = !DILocation(line: 186, column: 77, scope: !490)
!1201 = !DILocation(line: 186, column: 75, scope: !490)
!1202 = !DILocation(line: 186, column: 31, scope: !490)
!1203 = !DILocation(line: 186, column: 29, scope: !490)
!1204 = !DILocation(line: 187, column: 30, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !490, file: !385, line: 187, column: 29)
!1206 = !DILocation(line: 187, column: 29, scope: !490)
!1207 = !DILocation(line: 191, column: 29, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !385, line: 187, column: 35)
!1209 = !DILocation(line: 194, column: 61, scope: !490)
!1210 = !DILocation(line: 194, column: 37, scope: !490)
!1211 = !DILocation(line: 194, column: 35, scope: !490)
!1212 = !DILocation(line: 195, column: 25, scope: !490)
!1213 = !DILocation(line: 195, column: 30, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !489, file: !385, discriminator: 1)
!1215 = !DILocation(line: 195, column: 40, scope: !489)
!1216 = !DILocation(line: 195, column: 70, scope: !489)
!1217 = !DILocation(line: 195, column: 84, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !489, file: !385, line: 195, column: 81)
!1219 = !DILocation(line: 195, column: 101, scope: !1218)
!1220 = !DILocation(line: 195, column: 81, scope: !1218)
!1221 = !DILocation(line: 195, column: 111, scope: !1218)
!1222 = !DILocation(line: 195, column: 81, scope: !489)
!1223 = !DILocation(line: 195, column: 81, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !489, file: !385, discriminator: 2)
!1225 = !DILocation(line: 195, column: 142, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1218, file: !385, discriminator: 3)
!1227 = !DILocation(line: 195, column: 160, scope: !1218)
!1228 = !DILocation(line: 195, column: 170, scope: !1218)
!1229 = !DILocation(line: 195, column: 195, scope: !1218)
!1230 = !DILocation(line: 195, column: 126, scope: !1218)
!1231 = !DILocation(line: 195, column: 214, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !490, file: !385, discriminator: 4)
!1233 = !DILocation(line: 195, column: 214, scope: !489)
!1234 = !DILocation(line: 195, column: 214, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !489, file: !385, discriminator: 5)
!1236 = !DILocation(line: 196, column: 25, scope: !490)
!1237 = !DILocation(line: 198, column: 17, scope: !493)
!1238 = !DILocation(line: 182, column: 51, scope: !494)
!1239 = !DILocation(line: 182, column: 17, scope: !494)
!1240 = !DILocation(line: 199, column: 13, scope: !496)
!1241 = !DILocation(line: 200, column: 9, scope: !498)
!1242 = !DILocation(line: 202, column: 14, scope: !508)
!1243 = !DILocation(line: 202, column: 24, scope: !508)
!1244 = !DILocation(line: 202, column: 27, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !508, file: !385, discriminator: 1)
!1246 = !DILocation(line: 202, column: 33, scope: !508)
!1247 = !DILocation(line: 202, column: 45, scope: !508)
!1248 = !DILocation(line: 202, column: 58, scope: !508)
!1249 = !DILocation(line: 202, column: 13, scope: !500)
!1250 = !DILocation(line: 203, column: 48, scope: !507)
!1251 = !DILocation(line: 203, column: 54, scope: !507)
!1252 = !DILocation(line: 203, column: 65, scope: !507)
!1253 = !DILocation(line: 203, column: 69, scope: !507)
!1254 = !DILocation(line: 203, column: 24, scope: !507)
!1255 = !DILocation(line: 203, column: 22, scope: !507)
!1256 = !DILocation(line: 204, column: 17, scope: !506)
!1257 = !DILocation(line: 204, column: 17, scope: !507)
!1258 = !DILocation(line: 205, column: 28, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !505, file: !385, line: 205, column: 17)
!1260 = !DILocation(line: 205, column: 26, scope: !1259)
!1261 = !DILocation(line: 205, column: 22, scope: !1259)
!1262 = !DILocation(line: 210, column: 26, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !385, line: 210, column: 25)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !385, line: 205, column: 45)
!1265 = distinct !DILexicalBlock(scope: !1259, file: !385, line: 205, column: 17)
!1266 = !DILocation(line: 210, column: 25, scope: !1263)
!1267 = !DILocation(line: 210, column: 30, scope: !1263)
!1268 = !DILocation(line: 210, column: 37, scope: !1263)
!1269 = !DILocation(line: 210, column: 41, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1263, file: !385, discriminator: 1)
!1271 = !DILocation(line: 210, column: 40, scope: !1263)
!1272 = !DILocation(line: 210, column: 45, scope: !1263)
!1273 = !DILocation(line: 210, column: 52, scope: !1263)
!1274 = !DILocation(line: 210, column: 56, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1263, file: !385, discriminator: 2)
!1276 = !DILocation(line: 210, column: 55, scope: !1263)
!1277 = !DILocation(line: 210, column: 60, scope: !1263)
!1278 = !DILocation(line: 210, column: 25, scope: !1264)
!1279 = !DILocation(line: 211, column: 67, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1263, file: !385, line: 210, column: 66)
!1281 = !DILocation(line: 211, column: 77, scope: !1280)
!1282 = !DILocation(line: 211, column: 83, scope: !1280)
!1283 = !DILocation(line: 211, column: 81, scope: !1280)
!1284 = !DILocation(line: 211, column: 39, scope: !1280)
!1285 = !DILocation(line: 211, column: 37, scope: !1280)
!1286 = !DILocation(line: 212, column: 30, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !385, line: 212, column: 29)
!1288 = !DILocation(line: 212, column: 29, scope: !1280)
!1289 = !DILocation(line: 213, column: 29, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !385, line: 212, column: 43)
!1291 = !DILocation(line: 215, column: 25, scope: !1280)
!1292 = !DILocation(line: 217, column: 17, scope: !1264)
!1293 = !DILocation(line: 205, column: 41, scope: !1265)
!1294 = !DILocation(line: 205, column: 17, scope: !1265)
!1295 = !DILocation(line: 219, column: 53, scope: !505)
!1296 = !DILocation(line: 219, column: 29, scope: !505)
!1297 = !DILocation(line: 219, column: 27, scope: !505)
!1298 = !DILocation(line: 220, column: 17, scope: !505)
!1299 = !DILocation(line: 220, column: 22, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 1)
!1301 = !DILocation(line: 220, column: 32, scope: !504)
!1302 = !DILocation(line: 220, column: 62, scope: !504)
!1303 = !DILocation(line: 220, column: 84, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !504, file: !385, line: 220, column: 81)
!1305 = !DILocation(line: 220, column: 101, scope: !1304)
!1306 = !DILocation(line: 220, column: 81, scope: !1304)
!1307 = !DILocation(line: 220, column: 111, scope: !1304)
!1308 = !DILocation(line: 220, column: 81, scope: !504)
!1309 = !DILocation(line: 220, column: 81, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 2)
!1311 = !DILocation(line: 220, column: 142, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1304, file: !385, discriminator: 3)
!1313 = !DILocation(line: 220, column: 160, scope: !1304)
!1314 = !DILocation(line: 220, column: 170, scope: !1304)
!1315 = !DILocation(line: 220, column: 195, scope: !1304)
!1316 = !DILocation(line: 220, column: 126, scope: !1304)
!1317 = !DILocation(line: 220, column: 214, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !505, file: !385, discriminator: 4)
!1319 = !DILocation(line: 220, column: 214, scope: !504)
!1320 = !DILocation(line: 220, column: 214, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !504, file: !385, discriminator: 5)
!1322 = !DILocation(line: 221, column: 13, scope: !505)
!1323 = !DILocation(line: 222, column: 9, scope: !507)
!1324 = !DILocation(line: 224, column: 14, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !500, file: !385, line: 224, column: 13)
!1326 = !DILocation(line: 224, column: 13, scope: !500)
!1327 = !DILocation(line: 225, column: 23, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !385, line: 224, column: 25)
!1329 = !DILocation(line: 226, column: 9, scope: !1328)
!1330 = !DILocation(line: 228, column: 27, scope: !514)
!1331 = !DILocation(line: 228, column: 33, scope: !514)
!1332 = !DILocation(line: 228, column: 47, scope: !514)
!1333 = !DILocation(line: 228, column: 13, scope: !514)
!1334 = !DILocation(line: 228, column: 58, scope: !514)
!1335 = !DILocation(line: 228, column: 13, scope: !500)
!1336 = !DILocation(line: 229, column: 17, scope: !512)
!1337 = !DILocation(line: 229, column: 27, scope: !512)
!1338 = !DILocation(line: 229, column: 17, scope: !513)
!1339 = !DILocation(line: 230, column: 17, scope: !511)
!1340 = !DILocation(line: 230, column: 22, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !510, file: !385, discriminator: 1)
!1342 = !DILocation(line: 230, column: 32, scope: !510)
!1343 = !DILocation(line: 230, column: 62, scope: !510)
!1344 = !DILocation(line: 230, column: 82, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !510, file: !385, line: 230, column: 79)
!1346 = !DILocation(line: 230, column: 99, scope: !1345)
!1347 = !DILocation(line: 230, column: 79, scope: !1345)
!1348 = !DILocation(line: 230, column: 109, scope: !1345)
!1349 = !DILocation(line: 230, column: 79, scope: !510)
!1350 = !DILocation(line: 230, column: 79, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !510, file: !385, discriminator: 2)
!1352 = !DILocation(line: 230, column: 140, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1345, file: !385, discriminator: 3)
!1354 = !DILocation(line: 230, column: 158, scope: !1345)
!1355 = !DILocation(line: 230, column: 168, scope: !1345)
!1356 = !DILocation(line: 230, column: 193, scope: !1345)
!1357 = !DILocation(line: 230, column: 124, scope: !1345)
!1358 = !DILocation(line: 230, column: 212, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !511, file: !385, discriminator: 4)
!1360 = !DILocation(line: 230, column: 212, scope: !510)
!1361 = !DILocation(line: 230, column: 212, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !510, file: !385, discriminator: 5)
!1363 = !DILocation(line: 231, column: 13, scope: !511)
!1364 = !DILocation(line: 232, column: 13, scope: !513)
!1365 = !DILocation(line: 232, column: 18, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !516, file: !385, discriminator: 1)
!1367 = !DILocation(line: 232, column: 28, scope: !516)
!1368 = !DILocation(line: 232, column: 51, scope: !516)
!1369 = !DILocation(line: 232, column: 57, scope: !516)
!1370 = !DILocation(line: 232, column: 76, scope: !520)
!1371 = !DILocation(line: 232, column: 84, scope: !520)
!1372 = !DILocation(line: 232, column: 76, scope: !516)
!1373 = !DILocation(line: 232, column: 102, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !519, file: !385, discriminator: 2)
!1375 = !DILocation(line: 232, column: 108, scope: !519)
!1376 = !DILocation(line: 232, column: 122, scope: !519)
!1377 = !DILocation(line: 232, column: 136, scope: !519)
!1378 = !DILocation(line: 232, column: 141, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !518, file: !385, discriminator: 4)
!1380 = !DILocation(line: 232, column: 151, scope: !518)
!1381 = !DILocation(line: 232, column: 181, scope: !518)
!1382 = !DILocation(line: 232, column: 199, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !518, file: !385, line: 232, column: 196)
!1384 = !DILocation(line: 232, column: 216, scope: !1383)
!1385 = !DILocation(line: 232, column: 196, scope: !1383)
!1386 = !DILocation(line: 232, column: 226, scope: !1383)
!1387 = !DILocation(line: 232, column: 196, scope: !518)
!1388 = !DILocation(line: 232, column: 196, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !518, file: !385, discriminator: 5)
!1390 = !DILocation(line: 232, column: 257, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1383, file: !385, discriminator: 6)
!1392 = !DILocation(line: 232, column: 275, scope: !1383)
!1393 = !DILocation(line: 232, column: 285, scope: !1383)
!1394 = !DILocation(line: 232, column: 310, scope: !1383)
!1395 = !DILocation(line: 232, column: 241, scope: !1383)
!1396 = !DILocation(line: 232, column: 329, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !519, file: !385, discriminator: 7)
!1398 = !DILocation(line: 232, column: 329, scope: !518)
!1399 = !DILocation(line: 232, column: 329, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !518, file: !385, discriminator: 8)
!1401 = !DILocation(line: 232, column: 342, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !519, file: !385, discriminator: 9)
!1403 = !DILocation(line: 232, column: 344, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !385, discriminator: 10)
!1405 = !DILexicalBlockFile(scope: !513, file: !385, discriminator: 3)
!1406 = !DILocation(line: 232, column: 344, scope: !516)
!1407 = !DILocation(line: 232, column: 344, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !516, file: !385, discriminator: 11)
!1409 = !DILocation(line: 234, column: 13, scope: !513)
!1410 = !DILocation(line: 236, column: 5, scope: !500)
!1411 = !DILocation(line: 176, column: 65, scope: !501)
!1412 = !DILocation(line: 176, column: 5, scope: !501)
!1413 = !DILocation(line: 238, column: 5, scope: !392)
!1414 = !DILocation(line: 239, column: 1, scope: !392)
!1415 = !DILocation(line: 241, column: 51, scope: !521)
!1416 = !DILocation(line: 243, column: 5, scope: !521)
!1417 = !DILocation(line: 243, column: 17, scope: !521)
!1418 = !DILocation(line: 245, column: 10, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !521, file: !385, line: 245, column: 9)
!1420 = !DILocation(line: 245, column: 9, scope: !521)
!1421 = !DILocation(line: 246, column: 55, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !385, line: 245, column: 19)
!1423 = !DILocation(line: 247, column: 9, scope: !1422)
!1424 = !DILocation(line: 250, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !521, file: !385, line: 250, column: 5)
!1426 = !DILocation(line: 250, column: 14, scope: !1425)
!1427 = !DILocation(line: 250, column: 10, scope: !1425)
!1428 = !DILocation(line: 251, column: 14, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !385, line: 251, column: 13)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !385, line: 250, column: 33)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !385, line: 250, column: 5)
!1432 = !DILocation(line: 251, column: 13, scope: !1429)
!1433 = !DILocation(line: 251, column: 18, scope: !1429)
!1434 = !DILocation(line: 251, column: 23, scope: !1429)
!1435 = !DILocation(line: 251, column: 27, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1429, file: !385, discriminator: 1)
!1437 = !DILocation(line: 251, column: 26, scope: !1429)
!1438 = !DILocation(line: 251, column: 31, scope: !1429)
!1439 = !DILocation(line: 251, column: 13, scope: !1430)
!1440 = !DILocation(line: 252, column: 19, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !385, line: 252, column: 17)
!1442 = distinct !DILexicalBlock(scope: !1429, file: !385, line: 251, column: 39)
!1443 = !DILocation(line: 252, column: 18, scope: !1441)
!1444 = !DILocation(line: 252, column: 23, scope: !1441)
!1445 = !DILocation(line: 252, column: 31, scope: !1441)
!1446 = !DILocation(line: 252, column: 35, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1441, file: !385, discriminator: 1)
!1448 = !DILocation(line: 252, column: 41, scope: !1441)
!1449 = !DILocation(line: 252, column: 39, scope: !1441)
!1450 = !DILocation(line: 252, column: 50, scope: !1441)
!1451 = !DILocation(line: 252, column: 56, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1441, file: !385, discriminator: 2)
!1453 = !DILocation(line: 252, column: 59, scope: !1441)
!1454 = !DILocation(line: 252, column: 54, scope: !1441)
!1455 = !DILocation(line: 252, column: 63, scope: !1441)
!1456 = !DILocation(line: 252, column: 17, scope: !1442)
!1457 = !DILocation(line: 253, column: 20, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1441, file: !385, line: 252, column: 72)
!1459 = !DILocation(line: 254, column: 13, scope: !1458)
!1460 = !DILocation(line: 255, column: 48, scope: !1442)
!1461 = !DILocation(line: 255, column: 57, scope: !1442)
!1462 = !DILocation(line: 255, column: 63, scope: !1442)
!1463 = !DILocation(line: 255, column: 61, scope: !1442)
!1464 = !DILocation(line: 255, column: 20, scope: !1442)
!1465 = !DILocation(line: 255, column: 13, scope: !1442)
!1466 = !DILocation(line: 257, column: 5, scope: !1430)
!1467 = !DILocation(line: 250, column: 29, scope: !1431)
!1468 = !DILocation(line: 250, column: 5, scope: !1431)
!1469 = !DILocation(line: 258, column: 1, scope: !521)
!1470 = !DILocation(line: 266, column: 52, scope: !527)
!1471 = !DILocation(line: 268, column: 5, scope: !527)
!1472 = !DILocation(line: 268, column: 9, scope: !527)
!1473 = !DILocation(line: 268, column: 12, scope: !527)
!1474 = !DILocation(line: 269, column: 5, scope: !527)
!1475 = !DILocation(line: 269, column: 15, scope: !527)
!1476 = !DILocation(line: 270, column: 5, scope: !527)
!1477 = !DILocation(line: 270, column: 15, scope: !527)
!1478 = !DILocation(line: 271, column: 5, scope: !527)
!1479 = !DILocation(line: 271, column: 9, scope: !527)
!1480 = !DILocation(line: 272, column: 5, scope: !527)
!1481 = !DILocation(line: 272, column: 15, scope: !527)
!1482 = !DILocation(line: 273, column: 5, scope: !527)
!1483 = !DILocation(line: 273, column: 15, scope: !527)
!1484 = !DILocation(line: 274, column: 5, scope: !527)
!1485 = !DILocation(line: 274, column: 16, scope: !527)
!1486 = !DILocation(line: 275, column: 5, scope: !527)
!1487 = !DILocation(line: 275, column: 15, scope: !527)
!1488 = !DILocation(line: 276, column: 5, scope: !527)
!1489 = !DILocation(line: 276, column: 17, scope: !527)
!1490 = !DILocation(line: 277, column: 5, scope: !527)
!1491 = !DILocation(line: 277, column: 10, scope: !527)
!1492 = !DILocation(line: 278, column: 5, scope: !527)
!1493 = !DILocation(line: 278, column: 17, scope: !527)
!1494 = !DILocation(line: 279, column: 5, scope: !527)
!1495 = !DILocation(line: 279, column: 15, scope: !527)
!1496 = !DILocation(line: 280, column: 5, scope: !527)
!1497 = !DILocation(line: 280, column: 15, scope: !527)
!1498 = !DILocation(line: 282, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !527, file: !385, line: 282, column: 9)
!1500 = !DILocation(line: 282, column: 15, scope: !1499)
!1501 = !{!1087, !1055, i64 84}
!1502 = !DILocation(line: 282, column: 9, scope: !527)
!1503 = !DILocation(line: 283, column: 25, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !385, line: 282, column: 22)
!1505 = !DILocation(line: 283, column: 50, scope: !1504)
!1506 = !DILocation(line: 283, column: 9, scope: !1504)
!1507 = !DILocation(line: 284, column: 9, scope: !1504)
!1508 = !DILocation(line: 287, column: 7, scope: !550)
!1509 = !DILocation(line: 287, column: 22, scope: !550)
!1510 = !DILocation(line: 287, column: 37, scope: !550)
!1511 = !DILocation(line: 287, column: 35, scope: !550)
!1512 = !DILocation(line: 288, column: 34, scope: !550)
!1513 = !DILocation(line: 288, column: 40, scope: !550)
!1514 = !DILocation(line: 288, column: 51, scope: !550)
!1515 = !DILocation(line: 288, column: 15, scope: !550)
!1516 = !DILocation(line: 288, column: 13, scope: !550)
!1517 = !DILocation(line: 289, column: 26, scope: !550)
!1518 = !DILocation(line: 289, column: 5, scope: !550)
!1519 = !DILocation(line: 289, column: 34, scope: !527)
!1520 = !DILocation(line: 291, column: 23, scope: !527)
!1521 = !DILocation(line: 291, column: 11, scope: !527)
!1522 = !DILocation(line: 291, column: 9, scope: !527)
!1523 = !DILocation(line: 292, column: 10, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !527, file: !385, line: 292, column: 9)
!1525 = !DILocation(line: 292, column: 9, scope: !527)
!1526 = !DILocation(line: 293, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1524, file: !385, line: 292, column: 15)
!1528 = !DILocation(line: 296, column: 12, scope: !617)
!1529 = !DILocation(line: 296, column: 10, scope: !617)
!1530 = !DILocation(line: 296, column: 17, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1532, file: !385, discriminator: 2)
!1532 = !DILexicalBlockFile(scope: !616, file: !385, discriminator: 1)
!1533 = !DILocation(line: 296, column: 21, scope: !616)
!1534 = !DILocation(line: 296, column: 19, scope: !616)
!1535 = !DILocation(line: 296, column: 5, scope: !617)
!1536 = !DILocation(line: 297, column: 13, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !615, file: !385, line: 297, column: 13)
!1538 = !DILocation(line: 297, column: 19, scope: !1537)
!1539 = !DILocation(line: 297, column: 31, scope: !1537)
!1540 = !DILocation(line: 297, column: 13, scope: !615)
!1541 = !DILocation(line: 298, column: 40, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !385, line: 297, column: 45)
!1543 = !DILocation(line: 298, column: 46, scope: !1542)
!1544 = !DILocation(line: 298, column: 60, scope: !1542)
!1545 = !DILocation(line: 298, column: 25, scope: !1542)
!1546 = !DILocation(line: 298, column: 23, scope: !1542)
!1547 = !DILocation(line: 299, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !385, line: 299, column: 17)
!1549 = !DILocation(line: 299, column: 17, scope: !1542)
!1550 = !DILocation(line: 300, column: 27, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !385, line: 299, column: 29)
!1552 = !DILocation(line: 301, column: 13, scope: !1551)
!1553 = !DILocation(line: 302, column: 9, scope: !1542)
!1554 = !DILocation(line: 303, column: 23, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1537, file: !385, line: 302, column: 16)
!1556 = !DILocation(line: 306, column: 13, scope: !614)
!1557 = !DILocation(line: 306, column: 23, scope: !614)
!1558 = !DILocation(line: 306, column: 13, scope: !615)
!1559 = !DILocation(line: 307, column: 43, scope: !613)
!1560 = !DILocation(line: 307, column: 49, scope: !613)
!1561 = !DILocation(line: 307, column: 60, scope: !613)
!1562 = !DILocation(line: 307, column: 64, scope: !613)
!1563 = !DILocation(line: 307, column: 22, scope: !613)
!1564 = !DILocation(line: 307, column: 20, scope: !613)
!1565 = !{!1042, !1042, i64 0}
!1566 = !DILocation(line: 308, column: 56, scope: !613)
!1567 = !DILocation(line: 308, column: 62, scope: !613)
!1568 = !DILocation(line: 308, column: 73, scope: !613)
!1569 = !DILocation(line: 308, column: 77, scope: !613)
!1570 = !DILocation(line: 308, column: 36, scope: !613)
!1571 = !DILocation(line: 308, column: 21, scope: !613)
!1572 = !DILocation(line: 309, column: 18, scope: !612)
!1573 = !DILocation(line: 309, column: 17, scope: !613)
!1574 = !DILocation(line: 310, column: 63, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !612, file: !385, line: 309, column: 27)
!1576 = !DILocation(line: 311, column: 27, scope: !1575)
!1577 = !DILocation(line: 312, column: 13, scope: !1575)
!1578 = !DILocation(line: 313, column: 50, scope: !611)
!1579 = !DILocation(line: 313, column: 59, scope: !611)
!1580 = !DILocation(line: 313, column: 24, scope: !611)
!1581 = !DILocation(line: 313, column: 22, scope: !611)
!1582 = !DILocation(line: 314, column: 22, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !611, file: !385, line: 314, column: 21)
!1584 = !DILocation(line: 314, column: 21, scope: !611)
!1585 = !DILocation(line: 315, column: 21, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !385, line: 314, column: 28)
!1587 = !DILocation(line: 317, column: 51, scope: !611)
!1588 = !DILocation(line: 317, column: 67, scope: !611)
!1589 = !DILocation(line: 317, column: 29, scope: !611)
!1590 = !DILocation(line: 317, column: 27, scope: !611)
!1591 = !DILocation(line: 318, column: 17, scope: !611)
!1592 = !DILocation(line: 318, column: 22, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 1)
!1594 = !DILocation(line: 318, column: 32, scope: !610)
!1595 = !DILocation(line: 318, column: 62, scope: !610)
!1596 = !DILocation(line: 318, column: 77, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !610, file: !385, line: 318, column: 74)
!1598 = !DILocation(line: 318, column: 94, scope: !1597)
!1599 = !DILocation(line: 318, column: 74, scope: !1597)
!1600 = !DILocation(line: 318, column: 104, scope: !1597)
!1601 = !DILocation(line: 318, column: 74, scope: !610)
!1602 = !DILocation(line: 318, column: 74, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 2)
!1604 = !DILocation(line: 318, column: 135, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1597, file: !385, discriminator: 3)
!1606 = !DILocation(line: 318, column: 153, scope: !1597)
!1607 = !DILocation(line: 318, column: 163, scope: !1597)
!1608 = !DILocation(line: 318, column: 188, scope: !1597)
!1609 = !DILocation(line: 318, column: 119, scope: !1597)
!1610 = !DILocation(line: 318, column: 207, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !611, file: !385, discriminator: 4)
!1612 = !DILocation(line: 318, column: 207, scope: !610)
!1613 = !DILocation(line: 318, column: 207, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !610, file: !385, discriminator: 5)
!1615 = !DILocation(line: 319, column: 22, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !611, file: !385, line: 319, column: 21)
!1617 = !DILocation(line: 319, column: 21, scope: !611)
!1618 = !DILocation(line: 320, column: 21, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !385, line: 319, column: 33)
!1620 = !DILocation(line: 323, column: 9, scope: !613)
!1621 = !DILocation(line: 324, column: 15, scope: !619)
!1622 = !DILocation(line: 324, column: 30, scope: !619)
!1623 = !DILocation(line: 324, column: 45, scope: !619)
!1624 = !DILocation(line: 324, column: 43, scope: !619)
!1625 = !DILocation(line: 325, column: 43, scope: !619)
!1626 = !DILocation(line: 325, column: 49, scope: !619)
!1627 = !DILocation(line: 325, column: 60, scope: !619)
!1628 = !DILocation(line: 325, column: 64, scope: !619)
!1629 = !DILocation(line: 325, column: 23, scope: !619)
!1630 = !DILocation(line: 325, column: 21, scope: !619)
!1631 = !DILocation(line: 326, column: 34, scope: !619)
!1632 = !DILocation(line: 326, column: 13, scope: !619)
!1633 = !DILocation(line: 326, column: 42, scope: !620)
!1634 = !DILocation(line: 327, column: 17, scope: !635)
!1635 = !DILocation(line: 327, column: 25, scope: !635)
!1636 = !DILocation(line: 327, column: 17, scope: !620)
!1637 = !DILocation(line: 328, column: 63, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !635, file: !385, line: 327, column: 31)
!1639 = !DILocation(line: 329, column: 27, scope: !1638)
!1640 = !DILocation(line: 330, column: 13, scope: !1638)
!1641 = !DILocation(line: 330, column: 24, scope: !634)
!1642 = !DILocation(line: 330, column: 32, scope: !634)
!1643 = !DILocation(line: 330, column: 24, scope: !635)
!1644 = !DILocation(line: 331, column: 76, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !634, file: !385, line: 330, column: 38)
!1646 = !DILocation(line: 331, column: 82, scope: !1645)
!1647 = !DILocation(line: 331, column: 93, scope: !1645)
!1648 = !DILocation(line: 331, column: 97, scope: !1645)
!1649 = !DILocation(line: 331, column: 55, scope: !1645)
!1650 = !DILocation(line: 331, column: 29, scope: !1645)
!1651 = !DILocation(line: 331, column: 27, scope: !1645)
!1652 = !DILocation(line: 332, column: 13, scope: !1645)
!1653 = !DILocation(line: 332, column: 24, scope: !633)
!1654 = !DILocation(line: 332, column: 32, scope: !633)
!1655 = !DILocation(line: 332, column: 24, scope: !634)
!1656 = !DILocation(line: 333, column: 70, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !633, file: !385, line: 332, column: 38)
!1658 = !DILocation(line: 333, column: 76, scope: !1657)
!1659 = !DILocation(line: 333, column: 87, scope: !1657)
!1660 = !DILocation(line: 333, column: 91, scope: !1657)
!1661 = !DILocation(line: 333, column: 48, scope: !1657)
!1662 = !DILocation(line: 333, column: 29, scope: !1657)
!1663 = !DILocation(line: 333, column: 27, scope: !1657)
!1664 = !DILocation(line: 334, column: 13, scope: !1657)
!1665 = !DILocation(line: 334, column: 24, scope: !632)
!1666 = !DILocation(line: 334, column: 32, scope: !632)
!1667 = !DILocation(line: 334, column: 24, scope: !633)
!1668 = !DILocation(line: 335, column: 60, scope: !631)
!1669 = !DILocation(line: 335, column: 66, scope: !631)
!1670 = !DILocation(line: 335, column: 77, scope: !631)
!1671 = !DILocation(line: 335, column: 81, scope: !631)
!1672 = !DILocation(line: 335, column: 40, scope: !631)
!1673 = !DILocation(line: 335, column: 25, scope: !631)
!1674 = !DILocation(line: 336, column: 47, scope: !631)
!1675 = !DILocation(line: 336, column: 53, scope: !631)
!1676 = !DILocation(line: 336, column: 64, scope: !631)
!1677 = !DILocation(line: 336, column: 68, scope: !631)
!1678 = !DILocation(line: 336, column: 26, scope: !631)
!1679 = !DILocation(line: 336, column: 24, scope: !631)
!1680 = !DILocation(line: 337, column: 21, scope: !630)
!1681 = !DILocation(line: 337, column: 27, scope: !630)
!1682 = !DILocation(line: 337, column: 39, scope: !630)
!1683 = !{!1090, !1010, i64 120}
!1684 = !DILocation(line: 337, column: 52, scope: !630)
!1685 = !DILocation(line: 337, column: 21, scope: !631)
!1686 = !DILocation(line: 338, column: 61, scope: !629)
!1687 = !DILocation(line: 338, column: 70, scope: !629)
!1688 = !DILocation(line: 338, column: 33, scope: !629)
!1689 = !DILocation(line: 338, column: 31, scope: !629)
!1690 = !DILocation(line: 339, column: 26, scope: !628)
!1691 = !DILocation(line: 339, column: 25, scope: !629)
!1692 = !DILocation(line: 345, column: 55, scope: !627)
!1693 = !DILocation(line: 345, column: 61, scope: !627)
!1694 = !DILocation(line: 345, column: 72, scope: !627)
!1695 = !DILocation(line: 345, column: 76, scope: !627)
!1696 = !DILocation(line: 345, column: 35, scope: !627)
!1697 = !DILocation(line: 345, column: 33, scope: !627)
!1698 = !DILocation(line: 346, column: 30, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !627, file: !385, line: 346, column: 29)
!1700 = !DILocation(line: 346, column: 29, scope: !627)
!1701 = !DILocation(line: 347, column: 37, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !385, line: 346, column: 39)
!1703 = !DILocation(line: 348, column: 25, scope: !1702)
!1704 = !DILocation(line: 349, column: 39, scope: !627)
!1705 = !DILocation(line: 350, column: 38, scope: !627)
!1706 = !DILocation(line: 350, column: 48, scope: !627)
!1707 = !DILocation(line: 349, column: 25, scope: !627)
!1708 = !DILocation(line: 351, column: 67, scope: !627)
!1709 = !DILocation(line: 351, column: 79, scope: !627)
!1710 = !DILocation(line: 351, column: 72, scope: !627)
!1711 = !DILocation(line: 351, column: 37, scope: !627)
!1712 = !DILocation(line: 351, column: 35, scope: !627)
!1713 = !DILocation(line: 352, column: 30, scope: !626)
!1714 = !DILocation(line: 352, column: 29, scope: !627)
!1715 = !DILocation(line: 353, column: 45, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !626, file: !385, line: 352, column: 41)
!1717 = !DILocation(line: 353, column: 29, scope: !1716)
!1718 = !DILocation(line: 354, column: 25, scope: !1716)
!1719 = !DILocation(line: 355, column: 69, scope: !625)
!1720 = !DILocation(line: 355, column: 41, scope: !625)
!1721 = !DILocation(line: 355, column: 39, scope: !625)
!1722 = !DILocation(line: 356, column: 34, scope: !624)
!1723 = !DILocation(line: 356, column: 33, scope: !625)
!1724 = !DILocation(line: 357, column: 49, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !624, file: !385, line: 356, column: 45)
!1726 = !DILocation(line: 357, column: 33, scope: !1725)
!1727 = !DILocation(line: 358, column: 29, scope: !1725)
!1728 = !DILocation(line: 359, column: 49, scope: !623)
!1729 = !DILocation(line: 359, column: 76, scope: !623)
!1730 = !DILocation(line: 359, column: 33, scope: !623)
!1731 = !DILocation(line: 360, column: 33, scope: !623)
!1732 = !DILocation(line: 360, column: 38, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !622, file: !385, discriminator: 1)
!1734 = !DILocation(line: 360, column: 48, scope: !622)
!1735 = !DILocation(line: 360, column: 78, scope: !622)
!1736 = !DILocation(line: 360, column: 98, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !622, file: !385, line: 360, column: 95)
!1738 = !DILocation(line: 360, column: 115, scope: !1737)
!1739 = !DILocation(line: 360, column: 95, scope: !1737)
!1740 = !DILocation(line: 360, column: 125, scope: !1737)
!1741 = !DILocation(line: 360, column: 95, scope: !622)
!1742 = !DILocation(line: 360, column: 95, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !622, file: !385, discriminator: 2)
!1744 = !DILocation(line: 360, column: 156, scope: !1745)
!1745 = !DILexicalBlockFile(scope: !1737, file: !385, discriminator: 3)
!1746 = !DILocation(line: 360, column: 174, scope: !1737)
!1747 = !DILocation(line: 360, column: 184, scope: !1737)
!1748 = !DILocation(line: 360, column: 209, scope: !1737)
!1749 = !DILocation(line: 360, column: 140, scope: !1737)
!1750 = !DILocation(line: 360, column: 228, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !623, file: !385, discriminator: 4)
!1752 = !DILocation(line: 360, column: 228, scope: !622)
!1753 = !DILocation(line: 360, column: 228, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !622, file: !385, discriminator: 5)
!1755 = !DILocation(line: 362, column: 29, scope: !625)
!1756 = !DILocation(line: 362, column: 34, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !637, file: !385, discriminator: 1)
!1758 = !DILocation(line: 362, column: 44, scope: !637)
!1759 = !DILocation(line: 362, column: 74, scope: !637)
!1760 = !DILocation(line: 362, column: 94, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !637, file: !385, line: 362, column: 91)
!1762 = !DILocation(line: 362, column: 111, scope: !1761)
!1763 = !DILocation(line: 362, column: 91, scope: !1761)
!1764 = !DILocation(line: 362, column: 121, scope: !1761)
!1765 = !DILocation(line: 362, column: 91, scope: !637)
!1766 = !DILocation(line: 362, column: 91, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !637, file: !385, discriminator: 2)
!1768 = !DILocation(line: 362, column: 152, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1761, file: !385, discriminator: 3)
!1770 = !DILocation(line: 362, column: 170, scope: !1761)
!1771 = !DILocation(line: 362, column: 180, scope: !1761)
!1772 = !DILocation(line: 362, column: 205, scope: !1761)
!1773 = !DILocation(line: 362, column: 136, scope: !1761)
!1774 = !DILocation(line: 362, column: 224, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !625, file: !385, discriminator: 4)
!1776 = !DILocation(line: 362, column: 224, scope: !637)
!1777 = !DILocation(line: 362, column: 224, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !637, file: !385, discriminator: 5)
!1779 = !DILocation(line: 364, column: 21, scope: !627)
!1780 = !DILocation(line: 365, column: 17, scope: !629)
!1781 = !DILocation(line: 365, column: 28, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !630, file: !385, line: 365, column: 28)
!1783 = !DILocation(line: 365, column: 34, scope: !1782)
!1784 = !DILocation(line: 365, column: 46, scope: !1782)
!1785 = !DILocation(line: 365, column: 59, scope: !1782)
!1786 = !DILocation(line: 365, column: 28, scope: !630)
!1787 = !DILocation(line: 366, column: 59, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !385, line: 365, column: 88)
!1789 = !DILocation(line: 366, column: 68, scope: !1788)
!1790 = !DILocation(line: 366, column: 33, scope: !1788)
!1791 = !DILocation(line: 366, column: 31, scope: !1788)
!1792 = !DILocation(line: 367, column: 17, scope: !1788)
!1793 = !DILocation(line: 367, column: 28, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1782, file: !385, line: 367, column: 28)
!1795 = !DILocation(line: 367, column: 34, scope: !1794)
!1796 = !DILocation(line: 367, column: 46, scope: !1794)
!1797 = !DILocation(line: 367, column: 59, scope: !1794)
!1798 = !DILocation(line: 367, column: 28, scope: !1782)
!1799 = !DILocation(line: 368, column: 63, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1794, file: !385, line: 367, column: 92)
!1801 = !DILocation(line: 368, column: 72, scope: !1800)
!1802 = !DILocation(line: 368, column: 33, scope: !1800)
!1803 = !DILocation(line: 368, column: 31, scope: !1800)
!1804 = !DILocation(line: 369, column: 17, scope: !1800)
!1805 = !DILocation(line: 370, column: 55, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1794, file: !385, line: 369, column: 24)
!1807 = !DILocation(line: 370, column: 61, scope: !1806)
!1808 = !DILocation(line: 370, column: 73, scope: !1806)
!1809 = !DILocation(line: 370, column: 93, scope: !1806)
!1810 = !DILocation(line: 370, column: 102, scope: !1806)
!1811 = !DILocation(line: 370, column: 33, scope: !1806)
!1812 = !DILocation(line: 370, column: 31, scope: !1806)
!1813 = !DILocation(line: 372, column: 13, scope: !631)
!1814 = !DILocation(line: 374, column: 47, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !632, file: !385, line: 372, column: 20)
!1816 = !DILocation(line: 374, column: 53, scope: !1815)
!1817 = !DILocation(line: 374, column: 64, scope: !1815)
!1818 = !DILocation(line: 374, column: 68, scope: !1815)
!1819 = !DILocation(line: 374, column: 26, scope: !1815)
!1820 = !DILocation(line: 374, column: 24, scope: !1815)
!1821 = !DILocation(line: 376, column: 41, scope: !1815)
!1822 = !DILocation(line: 376, column: 47, scope: !1815)
!1823 = !DILocation(line: 376, column: 58, scope: !1815)
!1824 = !DILocation(line: 376, column: 62, scope: !1815)
!1825 = !DILocation(line: 376, column: 21, scope: !1815)
!1826 = !DILocation(line: 376, column: 66, scope: !1815)
!1827 = !DILocation(line: 375, column: 26, scope: !1815)
!1828 = !DILocation(line: 375, column: 24, scope: !1815)
!1829 = !DILocation(line: 377, column: 22, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1815, file: !385, line: 377, column: 21)
!1831 = !DILocation(line: 377, column: 21, scope: !1815)
!1832 = !DILocation(line: 378, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !385, line: 377, column: 30)
!1834 = !DILocation(line: 380, column: 29, scope: !1815)
!1835 = !DILocation(line: 380, column: 27, scope: !1815)
!1836 = !DILocation(line: 384, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !615, file: !385, line: 384, column: 13)
!1838 = !DILocation(line: 384, column: 13, scope: !615)
!1839 = !DILocation(line: 385, column: 29, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !385, line: 384, column: 24)
!1841 = !DILocation(line: 385, column: 34, scope: !1840)
!1842 = !DILocation(line: 385, column: 37, scope: !1840)
!1843 = !DILocation(line: 385, column: 13, scope: !1840)
!1844 = !DILocation(line: 386, column: 9, scope: !1840)
!1845 = !DILocation(line: 387, column: 59, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1837, file: !385, line: 386, column: 16)
!1847 = !DILocation(line: 388, column: 29, scope: !1846)
!1848 = !DILocation(line: 388, column: 34, scope: !1846)
!1849 = !DILocation(line: 388, column: 13, scope: !1846)
!1850 = !DILocation(line: 390, column: 5, scope: !615)
!1851 = !DILocation(line: 296, column: 31, scope: !616)
!1852 = !DILocation(line: 296, column: 5, scope: !616)
!1853 = !DILocation(line: 392, column: 9, scope: !641)
!1854 = !DILocation(line: 392, column: 9, scope: !527)
!1855 = !DILocation(line: 393, column: 9, scope: !640)
!1856 = !DILocation(line: 393, column: 14, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !639, file: !385, discriminator: 1)
!1858 = !DILocation(line: 393, column: 24, scope: !639)
!1859 = !DILocation(line: 393, column: 54, scope: !639)
!1860 = !DILocation(line: 393, column: 68, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !639, file: !385, line: 393, column: 65)
!1862 = !DILocation(line: 393, column: 85, scope: !1861)
!1863 = !DILocation(line: 393, column: 65, scope: !1861)
!1864 = !DILocation(line: 393, column: 95, scope: !1861)
!1865 = !DILocation(line: 393, column: 65, scope: !639)
!1866 = !DILocation(line: 393, column: 65, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !639, file: !385, discriminator: 2)
!1868 = !DILocation(line: 393, column: 126, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1861, file: !385, discriminator: 3)
!1870 = !DILocation(line: 393, column: 144, scope: !1861)
!1871 = !DILocation(line: 393, column: 154, scope: !1861)
!1872 = !DILocation(line: 393, column: 179, scope: !1861)
!1873 = !DILocation(line: 393, column: 110, scope: !1861)
!1874 = !DILocation(line: 393, column: 198, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !640, file: !385, discriminator: 4)
!1876 = !DILocation(line: 393, column: 198, scope: !639)
!1877 = !DILocation(line: 393, column: 198, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !639, file: !385, discriminator: 5)
!1879 = !DILocation(line: 394, column: 13, scope: !640)
!1880 = !DILocation(line: 395, column: 5, scope: !640)
!1881 = !DILocation(line: 397, column: 12, scope: !527)
!1882 = !DILocation(line: 397, column: 5, scope: !527)
!1883 = !DILocation(line: 398, column: 1, scope: !527)
!1884 = !DILocation(line: 425, column: 52, scope: !642)
!1885 = !DILocation(line: 425, column: 62, scope: !642)
!1886 = !DILocation(line: 425, column: 82, scope: !642)
!1887 = !DILocation(line: 427, column: 5, scope: !642)
!1888 = !DILocation(line: 427, column: 15, scope: !642)
!1889 = !DILocation(line: 428, column: 5, scope: !642)
!1890 = !DILocation(line: 428, column: 17, scope: !642)
!1891 = !DILocation(line: 429, column: 5, scope: !642)
!1892 = !DILocation(line: 429, column: 16, scope: !642)
!1893 = !DILocation(line: 430, column: 5, scope: !642)
!1894 = !DILocation(line: 430, column: 15, scope: !642)
!1895 = !DILocation(line: 431, column: 5, scope: !642)
!1896 = !DILocation(line: 431, column: 15, scope: !642)
!1897 = !DILocation(line: 432, column: 5, scope: !642)
!1898 = !DILocation(line: 432, column: 15, scope: !642)
!1899 = !DILocation(line: 433, column: 5, scope: !642)
!1900 = !DILocation(line: 433, column: 9, scope: !642)
!1901 = !DILocation(line: 434, column: 5, scope: !642)
!1902 = !DILocation(line: 434, column: 9, scope: !642)
!1903 = !DILocation(line: 435, column: 5, scope: !642)
!1904 = !DILocation(line: 435, column: 15, scope: !642)
!1905 = !DILocation(line: 436, column: 5, scope: !642)
!1906 = !DILocation(line: 436, column: 15, scope: !642)
!1907 = !DILocation(line: 437, column: 5, scope: !642)
!1908 = !DILocation(line: 437, column: 9, scope: !642)
!1909 = !DILocation(line: 438, column: 5, scope: !642)
!1910 = !DILocation(line: 438, column: 9, scope: !642)
!1911 = !DILocation(line: 439, column: 5, scope: !642)
!1912 = !DILocation(line: 439, column: 15, scope: !642)
!1913 = !DILocation(line: 440, column: 5, scope: !642)
!1914 = !DILocation(line: 440, column: 15, scope: !642)
!1915 = !DILocation(line: 442, column: 23, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !642, file: !385, line: 442, column: 9)
!1917 = !DILocation(line: 442, column: 10, scope: !1916)
!1918 = !DILocation(line: 442, column: 9, scope: !642)
!1919 = !DILocation(line: 443, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !385, line: 442, column: 30)
!1921 = !DILocation(line: 446, column: 5, scope: !642)
!1922 = !DILocation(line: 446, column: 11, scope: !642)
!1923 = !DILocation(line: 446, column: 18, scope: !642)
!1924 = !{!1087, !1055, i64 88}
!1925 = !DILocation(line: 447, column: 5, scope: !642)
!1926 = !DILocation(line: 447, column: 11, scope: !642)
!1927 = !DILocation(line: 447, column: 17, scope: !642)
!1928 = !DILocation(line: 449, column: 5, scope: !642)
!1929 = !DILocation(line: 449, column: 10, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !664, file: !385, discriminator: 1)
!1931 = !DILocation(line: 449, column: 20, scope: !664)
!1932 = !DILocation(line: 449, column: 43, scope: !664)
!1933 = !DILocation(line: 449, column: 49, scope: !664)
!1934 = !{!1087, !1010, i64 96}
!1935 = !DILocation(line: 449, column: 64, scope: !668)
!1936 = !DILocation(line: 449, column: 72, scope: !668)
!1937 = !DILocation(line: 449, column: 64, scope: !664)
!1938 = !DILocation(line: 449, column: 90, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 2)
!1940 = !DILocation(line: 449, column: 96, scope: !667)
!1941 = !DILocation(line: 449, column: 106, scope: !667)
!1942 = !DILocation(line: 449, column: 120, scope: !667)
!1943 = !DILocation(line: 449, column: 125, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !666, file: !385, discriminator: 4)
!1945 = !DILocation(line: 449, column: 135, scope: !666)
!1946 = !DILocation(line: 449, column: 165, scope: !666)
!1947 = !DILocation(line: 449, column: 183, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !666, file: !385, line: 449, column: 180)
!1949 = !DILocation(line: 449, column: 200, scope: !1948)
!1950 = !DILocation(line: 449, column: 180, scope: !1948)
!1951 = !DILocation(line: 449, column: 210, scope: !1948)
!1952 = !DILocation(line: 449, column: 180, scope: !666)
!1953 = !DILocation(line: 449, column: 180, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !666, file: !385, discriminator: 5)
!1955 = !DILocation(line: 449, column: 241, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1948, file: !385, discriminator: 6)
!1957 = !DILocation(line: 449, column: 259, scope: !1948)
!1958 = !DILocation(line: 449, column: 269, scope: !1948)
!1959 = !DILocation(line: 449, column: 294, scope: !1948)
!1960 = !DILocation(line: 449, column: 225, scope: !1948)
!1961 = !DILocation(line: 449, column: 313, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 7)
!1963 = !DILocation(line: 449, column: 313, scope: !666)
!1964 = !DILocation(line: 449, column: 313, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !666, file: !385, discriminator: 8)
!1966 = !DILocation(line: 449, column: 326, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !667, file: !385, discriminator: 9)
!1968 = !DILocation(line: 449, column: 328, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1970, file: !385, discriminator: 10)
!1970 = !DILexicalBlockFile(scope: !642, file: !385, discriminator: 3)
!1971 = !DILocation(line: 449, column: 328, scope: !664)
!1972 = !DILocation(line: 449, column: 328, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !664, file: !385, discriminator: 11)
!1974 = !DILocation(line: 451, column: 9, scope: !674)
!1975 = !DILocation(line: 451, column: 9, scope: !642)
!1976 = !DILocation(line: 453, column: 31, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !385, line: 453, column: 13)
!1978 = distinct !DILexicalBlock(scope: !674, file: !385, line: 451, column: 19)
!1979 = !DILocation(line: 453, column: 14, scope: !1977)
!1980 = !DILocation(line: 453, column: 13, scope: !1978)
!1981 = !DILocation(line: 454, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !385, line: 453, column: 74)
!1983 = !DILocation(line: 457, column: 31, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !385, line: 457, column: 13)
!1985 = !DILocation(line: 457, column: 44, scope: !1984)
!1986 = !DILocation(line: 457, column: 55, scope: !1984)
!1987 = !{!1053, !1042, i64 168}
!1988 = !DILocation(line: 457, column: 64, scope: !1984)
!1989 = !DILocation(line: 457, column: 81, scope: !1984)
!1990 = !DILocation(line: 457, column: 13, scope: !1978)
!1991 = !DILocation(line: 458, column: 29, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1984, file: !385, line: 457, column: 88)
!1993 = !DILocation(line: 458, column: 13, scope: !1992)
!1994 = !DILocation(line: 459, column: 13, scope: !1992)
!1995 = !DILocation(line: 462, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1978, file: !385, line: 462, column: 13)
!1997 = !DILocation(line: 462, column: 33, scope: !1996)
!1998 = !DILocation(line: 462, column: 42, scope: !1996)
!1999 = !{!1053, !1010, i64 224}
!2000 = !DILocation(line: 462, column: 54, scope: !1996)
!2001 = !DILocation(line: 462, column: 68, scope: !1996)
!2002 = !DILocation(line: 462, column: 72, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1996, file: !385, discriminator: 1)
!2004 = !DILocation(line: 462, column: 90, scope: !1996)
!2005 = !DILocation(line: 462, column: 99, scope: !1996)
!2006 = !DILocation(line: 462, column: 111, scope: !1996)
!2007 = !DILocation(line: 462, column: 13, scope: !1978)
!2008 = !DILocation(line: 464, column: 29, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1996, file: !385, line: 462, column: 146)
!2010 = !DILocation(line: 464, column: 48, scope: !2009)
!2011 = !DILocation(line: 464, column: 57, scope: !2009)
!2012 = !DILocation(line: 465, column: 31, scope: !2009)
!2013 = !DILocation(line: 465, column: 29, scope: !2009)
!2014 = !DILocation(line: 466, column: 9, scope: !2009)
!2015 = !DILocation(line: 468, column: 48, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1996, file: !385, line: 466, column: 16)
!2017 = !DILocation(line: 468, column: 31, scope: !2016)
!2018 = !DILocation(line: 468, column: 29, scope: !2016)
!2019 = !DILocation(line: 469, column: 18, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !385, line: 469, column: 17)
!2021 = !DILocation(line: 469, column: 17, scope: !2016)
!2022 = !DILocation(line: 470, column: 17, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !385, line: 469, column: 35)
!2024 = !DILocation(line: 473, column: 5, scope: !1978)
!2025 = !DILocation(line: 475, column: 31, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !673, file: !385, line: 475, column: 13)
!2027 = !DILocation(line: 475, column: 14, scope: !2026)
!2028 = !DILocation(line: 475, column: 13, scope: !673)
!2029 = !DILocation(line: 476, column: 13, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !385, line: 475, column: 75)
!2031 = !DILocation(line: 479, column: 31, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !673, file: !385, line: 479, column: 13)
!2033 = !DILocation(line: 479, column: 44, scope: !2032)
!2034 = !DILocation(line: 479, column: 55, scope: !2032)
!2035 = !DILocation(line: 479, column: 64, scope: !2032)
!2036 = !DILocation(line: 479, column: 81, scope: !2032)
!2037 = !DILocation(line: 479, column: 13, scope: !673)
!2038 = !DILocation(line: 480, column: 29, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2032, file: !385, line: 479, column: 88)
!2040 = !DILocation(line: 480, column: 13, scope: !2039)
!2041 = !DILocation(line: 481, column: 13, scope: !2039)
!2042 = !DILocation(line: 484, column: 27, scope: !673)
!2043 = !DILocation(line: 484, column: 25, scope: !673)
!2044 = !DILocation(line: 485, column: 14, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !673, file: !385, line: 485, column: 13)
!2046 = !DILocation(line: 485, column: 13, scope: !673)
!2047 = !DILocation(line: 486, column: 13, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !385, line: 485, column: 31)
!2049 = !DILocation(line: 489, column: 13, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !673, file: !385, line: 489, column: 13)
!2051 = !DILocation(line: 489, column: 29, scope: !2050)
!2052 = !DILocation(line: 489, column: 13, scope: !673)
!2053 = !DILocation(line: 490, column: 31, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !385, line: 489, column: 44)
!2055 = !DILocation(line: 490, column: 29, scope: !2054)
!2056 = !DILocation(line: 491, column: 18, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !385, line: 491, column: 17)
!2058 = !DILocation(line: 491, column: 17, scope: !2054)
!2059 = !DILocation(line: 492, column: 17, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !385, line: 491, column: 35)
!2061 = !DILocation(line: 494, column: 9, scope: !2054)
!2062 = !DILocation(line: 495, column: 29, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2050, file: !385, line: 494, column: 16)
!2064 = !DILocation(line: 495, column: 48, scope: !2063)
!2065 = !DILocation(line: 495, column: 57, scope: !2063)
!2066 = !DILocation(line: 497, column: 27, scope: !672)
!2067 = !DILocation(line: 497, column: 44, scope: !672)
!2068 = !DILocation(line: 497, column: 13, scope: !672)
!2069 = !DILocation(line: 497, column: 61, scope: !672)
!2070 = !DILocation(line: 497, column: 13, scope: !673)
!2071 = !DILocation(line: 498, column: 13, scope: !671)
!2072 = !DILocation(line: 498, column: 18, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !670, file: !385, discriminator: 1)
!2074 = !DILocation(line: 498, column: 28, scope: !670)
!2075 = !DILocation(line: 498, column: 58, scope: !670)
!2076 = !DILocation(line: 498, column: 84, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !670, file: !385, line: 498, column: 81)
!2078 = !DILocation(line: 498, column: 101, scope: !2077)
!2079 = !DILocation(line: 498, column: 81, scope: !2077)
!2080 = !DILocation(line: 498, column: 111, scope: !2077)
!2081 = !DILocation(line: 498, column: 81, scope: !670)
!2082 = !DILocation(line: 498, column: 81, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !670, file: !385, discriminator: 2)
!2084 = !DILocation(line: 498, column: 142, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2077, file: !385, discriminator: 3)
!2086 = !DILocation(line: 498, column: 160, scope: !2077)
!2087 = !DILocation(line: 498, column: 170, scope: !2077)
!2088 = !DILocation(line: 498, column: 195, scope: !2077)
!2089 = !DILocation(line: 498, column: 126, scope: !2077)
!2090 = !DILocation(line: 498, column: 214, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !671, file: !385, discriminator: 4)
!2092 = !DILocation(line: 498, column: 214, scope: !670)
!2093 = !DILocation(line: 498, column: 214, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !670, file: !385, discriminator: 5)
!2095 = !DILocation(line: 499, column: 13, scope: !671)
!2096 = !DILocation(line: 501, column: 9, scope: !673)
!2097 = !DILocation(line: 501, column: 14, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !676, file: !385, discriminator: 1)
!2099 = !DILocation(line: 501, column: 24, scope: !676)
!2100 = !DILocation(line: 501, column: 54, scope: !676)
!2101 = !DILocation(line: 501, column: 80, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !676, file: !385, line: 501, column: 77)
!2103 = !DILocation(line: 501, column: 97, scope: !2102)
!2104 = !DILocation(line: 501, column: 77, scope: !2102)
!2105 = !DILocation(line: 501, column: 107, scope: !2102)
!2106 = !DILocation(line: 501, column: 77, scope: !676)
!2107 = !DILocation(line: 501, column: 77, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !676, file: !385, discriminator: 2)
!2109 = !DILocation(line: 501, column: 138, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2102, file: !385, discriminator: 3)
!2111 = !DILocation(line: 501, column: 156, scope: !2102)
!2112 = !DILocation(line: 501, column: 166, scope: !2102)
!2113 = !DILocation(line: 501, column: 191, scope: !2102)
!2114 = !DILocation(line: 501, column: 122, scope: !2102)
!2115 = !DILocation(line: 501, column: 210, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !673, file: !385, discriminator: 4)
!2117 = !DILocation(line: 501, column: 210, scope: !676)
!2118 = !DILocation(line: 501, column: 210, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !676, file: !385, discriminator: 5)
!2120 = !DILocation(line: 503, column: 44, scope: !673)
!2121 = !DILocation(line: 503, column: 27, scope: !673)
!2122 = !DILocation(line: 503, column: 25, scope: !673)
!2123 = !DILocation(line: 504, column: 14, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !673, file: !385, line: 504, column: 13)
!2125 = !DILocation(line: 504, column: 13, scope: !673)
!2126 = !DILocation(line: 505, column: 13, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !385, line: 504, column: 31)
!2128 = !DILocation(line: 509, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !642, file: !385, line: 509, column: 9)
!2130 = !DILocation(line: 509, column: 15, scope: !2129)
!2131 = !DILocation(line: 509, column: 25, scope: !2129)
!2132 = !DILocation(line: 509, column: 9, scope: !642)
!2133 = !DILocation(line: 511, column: 34, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !385, line: 509, column: 40)
!2135 = !DILocation(line: 511, column: 40, scope: !2134)
!2136 = !DILocation(line: 511, column: 9, scope: !2134)
!2137 = !DILocation(line: 512, column: 5, scope: !2134)
!2138 = !DILocation(line: 514, column: 46, scope: !642)
!2139 = !DILocation(line: 514, column: 22, scope: !642)
!2140 = !DILocation(line: 514, column: 20, scope: !642)
!2141 = !DILocation(line: 515, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !642, file: !385, line: 515, column: 9)
!2143 = !DILocation(line: 515, column: 24, scope: !2142)
!2144 = !DILocation(line: 515, column: 9, scope: !642)
!2145 = !DILocation(line: 516, column: 9, scope: !2142)
!2146 = !DILocation(line: 519, column: 5, scope: !642)
!2147 = !DILocation(line: 519, column: 10, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !678, file: !385, discriminator: 1)
!2149 = !DILocation(line: 519, column: 20, scope: !678)
!2150 = !DILocation(line: 519, column: 50, scope: !678)
!2151 = !DILocation(line: 519, column: 56, scope: !678)
!2152 = !{!1087, !1010, i64 24}
!2153 = !DILocation(line: 519, column: 78, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !678, file: !385, line: 519, column: 75)
!2155 = !DILocation(line: 519, column: 95, scope: !2154)
!2156 = !DILocation(line: 519, column: 75, scope: !2154)
!2157 = !DILocation(line: 519, column: 105, scope: !2154)
!2158 = !DILocation(line: 519, column: 75, scope: !678)
!2159 = !DILocation(line: 519, column: 75, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !678, file: !385, discriminator: 2)
!2161 = !DILocation(line: 519, column: 136, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2154, file: !385, discriminator: 3)
!2163 = !DILocation(line: 519, column: 154, scope: !2154)
!2164 = !DILocation(line: 519, column: 164, scope: !2154)
!2165 = !DILocation(line: 519, column: 189, scope: !2154)
!2166 = !DILocation(line: 519, column: 120, scope: !2154)
!2167 = !DILocation(line: 519, column: 208, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !642, file: !385, discriminator: 4)
!2169 = !DILocation(line: 519, column: 208, scope: !678)
!2170 = !DILocation(line: 519, column: 208, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !678, file: !385, discriminator: 5)
!2172 = !DILocation(line: 520, column: 51, scope: !642)
!2173 = !DILocation(line: 521, column: 5, scope: !642)
!2174 = !DILocation(line: 521, column: 11, scope: !642)
!2175 = !DILocation(line: 521, column: 23, scope: !642)
!2176 = !DILocation(line: 522, column: 5, scope: !642)
!2177 = !DILocation(line: 522, column: 11, scope: !642)
!2178 = !DILocation(line: 522, column: 20, scope: !642)
!2179 = !{!1087, !1042, i64 56}
!2180 = !DILocation(line: 524, column: 17, scope: !642)
!2181 = !DILocation(line: 524, column: 15, scope: !642)
!2182 = !DILocation(line: 525, column: 10, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !642, file: !385, line: 525, column: 9)
!2184 = !DILocation(line: 525, column: 9, scope: !642)
!2185 = !DILocation(line: 526, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !385, line: 525, column: 21)
!2187 = !DILocation(line: 528, column: 21, scope: !642)
!2188 = !DILocation(line: 528, column: 34, scope: !642)
!2189 = !DILocation(line: 528, column: 43, scope: !642)
!2190 = !DILocation(line: 529, column: 25, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !642, file: !385, line: 529, column: 9)
!2192 = !DILocation(line: 529, column: 39, scope: !2191)
!2193 = !DILocation(line: 529, column: 9, scope: !2191)
!2194 = !DILocation(line: 529, column: 50, scope: !2191)
!2195 = !DILocation(line: 529, column: 9, scope: !642)
!2196 = !DILocation(line: 530, column: 9, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2191, file: !385, line: 529, column: 56)
!2198 = !DILocation(line: 533, column: 9, scope: !682)
!2199 = !DILocation(line: 533, column: 15, scope: !682)
!2200 = !DILocation(line: 533, column: 9, scope: !642)
!2201 = !DILocation(line: 534, column: 40, scope: !681)
!2202 = !DILocation(line: 534, column: 46, scope: !681)
!2203 = !DILocation(line: 534, column: 15, scope: !681)
!2204 = !DILocation(line: 535, column: 9, scope: !681)
!2205 = !DILocation(line: 535, column: 14, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !680, file: !385, discriminator: 1)
!2207 = !DILocation(line: 535, column: 24, scope: !680)
!2208 = !DILocation(line: 535, column: 54, scope: !680)
!2209 = !DILocation(line: 535, column: 60, scope: !680)
!2210 = !DILocation(line: 535, column: 41, scope: !680)
!2211 = !DILocation(line: 535, column: 80, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !680, file: !385, line: 535, column: 77)
!2213 = !DILocation(line: 535, column: 97, scope: !2212)
!2214 = !DILocation(line: 535, column: 77, scope: !2212)
!2215 = !DILocation(line: 535, column: 107, scope: !2212)
!2216 = !DILocation(line: 535, column: 77, scope: !680)
!2217 = !DILocation(line: 535, column: 77, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !680, file: !385, discriminator: 2)
!2219 = !DILocation(line: 535, column: 138, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2212, file: !385, discriminator: 3)
!2221 = !DILocation(line: 535, column: 156, scope: !2212)
!2222 = !DILocation(line: 535, column: 166, scope: !2212)
!2223 = !DILocation(line: 535, column: 191, scope: !2212)
!2224 = !DILocation(line: 535, column: 122, scope: !2212)
!2225 = !DILocation(line: 535, column: 210, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !681, file: !385, discriminator: 4)
!2227 = !DILocation(line: 535, column: 210, scope: !680)
!2228 = !DILocation(line: 535, column: 210, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !680, file: !385, discriminator: 5)
!2230 = !DILocation(line: 536, column: 5, scope: !681)
!2231 = !DILocation(line: 538, column: 63, scope: !642)
!2232 = !DILocation(line: 538, column: 69, scope: !642)
!2233 = !DILocation(line: 538, column: 81, scope: !642)
!2234 = !{!1090, !1010, i64 80}
!2235 = !DILocation(line: 538, column: 98, scope: !642)
!2236 = !DILocation(line: 538, column: 44, scope: !642)
!2237 = !DILocation(line: 538, column: 23, scope: !642)
!2238 = !DILocation(line: 538, column: 5, scope: !642)
!2239 = !DILocation(line: 538, column: 11, scope: !642)
!2240 = !DILocation(line: 538, column: 21, scope: !642)
!2241 = !DILocation(line: 539, column: 5, scope: !642)
!2242 = !DILocation(line: 539, column: 10, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !684, file: !385, discriminator: 1)
!2244 = !DILocation(line: 539, column: 20, scope: !684)
!2245 = !DILocation(line: 539, column: 50, scope: !684)
!2246 = !DILocation(line: 539, column: 70, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !684, file: !385, line: 539, column: 67)
!2248 = !DILocation(line: 539, column: 87, scope: !2247)
!2249 = !DILocation(line: 539, column: 67, scope: !2247)
!2250 = !DILocation(line: 539, column: 97, scope: !2247)
!2251 = !DILocation(line: 539, column: 67, scope: !684)
!2252 = !DILocation(line: 539, column: 67, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !684, file: !385, discriminator: 2)
!2254 = !DILocation(line: 539, column: 128, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2247, file: !385, discriminator: 3)
!2256 = !DILocation(line: 539, column: 146, scope: !2247)
!2257 = !DILocation(line: 539, column: 156, scope: !2247)
!2258 = !DILocation(line: 539, column: 181, scope: !2247)
!2259 = !DILocation(line: 539, column: 112, scope: !2247)
!2260 = !DILocation(line: 539, column: 200, scope: !2168)
!2261 = !DILocation(line: 539, column: 200, scope: !684)
!2262 = !DILocation(line: 539, column: 200, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !684, file: !385, discriminator: 5)
!2264 = !DILocation(line: 541, column: 10, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !642, file: !385, line: 541, column: 9)
!2266 = !DILocation(line: 541, column: 16, scope: !2265)
!2267 = !DILocation(line: 541, column: 9, scope: !642)
!2268 = !DILocation(line: 542, column: 9, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2265, file: !385, line: 541, column: 27)
!2270 = !DILocation(line: 545, column: 9, scope: !688)
!2271 = !DILocation(line: 545, column: 15, scope: !688)
!2272 = !DILocation(line: 545, column: 26, scope: !688)
!2273 = !{!1153, !1055, i64 40}
!2274 = !DILocation(line: 545, column: 9, scope: !642)
!2275 = !DILocation(line: 546, column: 9, scope: !687)
!2276 = !DILocation(line: 546, column: 14, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !686, file: !385, discriminator: 1)
!2278 = !DILocation(line: 546, column: 24, scope: !686)
!2279 = !DILocation(line: 546, column: 54, scope: !686)
!2280 = !DILocation(line: 546, column: 60, scope: !686)
!2281 = !DILocation(line: 546, column: 41, scope: !686)
!2282 = !DILocation(line: 546, column: 80, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !686, file: !385, line: 546, column: 77)
!2284 = !DILocation(line: 546, column: 97, scope: !2283)
!2285 = !DILocation(line: 546, column: 77, scope: !2283)
!2286 = !DILocation(line: 546, column: 107, scope: !2283)
!2287 = !DILocation(line: 546, column: 77, scope: !686)
!2288 = !DILocation(line: 546, column: 77, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !686, file: !385, discriminator: 2)
!2290 = !DILocation(line: 546, column: 138, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2283, file: !385, discriminator: 3)
!2292 = !DILocation(line: 546, column: 156, scope: !2283)
!2293 = !DILocation(line: 546, column: 166, scope: !2283)
!2294 = !DILocation(line: 546, column: 191, scope: !2283)
!2295 = !DILocation(line: 546, column: 122, scope: !2283)
!2296 = !DILocation(line: 546, column: 210, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !687, file: !385, discriminator: 4)
!2298 = !DILocation(line: 546, column: 210, scope: !686)
!2299 = !DILocation(line: 546, column: 210, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !686, file: !385, discriminator: 5)
!2301 = !DILocation(line: 547, column: 52, scope: !687)
!2302 = !DILocation(line: 547, column: 29, scope: !687)
!2303 = !DILocation(line: 547, column: 9, scope: !687)
!2304 = !DILocation(line: 547, column: 15, scope: !687)
!2305 = !DILocation(line: 547, column: 25, scope: !687)
!2306 = !DILocation(line: 548, column: 14, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !687, file: !385, line: 548, column: 13)
!2308 = !DILocation(line: 548, column: 20, scope: !2307)
!2309 = !DILocation(line: 548, column: 13, scope: !687)
!2310 = !DILocation(line: 549, column: 13, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !385, line: 548, column: 31)
!2312 = !DILocation(line: 551, column: 40, scope: !687)
!2313 = !DILocation(line: 551, column: 46, scope: !687)
!2314 = !DILocation(line: 551, column: 57, scope: !687)
!2315 = !DILocation(line: 551, column: 63, scope: !687)
!2316 = !DILocation(line: 551, column: 75, scope: !687)
!2317 = !DILocation(line: 551, column: 14, scope: !687)
!2318 = !DILocation(line: 551, column: 12, scope: !687)
!2319 = !DILocation(line: 552, column: 13, scope: !692)
!2320 = !DILocation(line: 552, column: 16, scope: !692)
!2321 = !DILocation(line: 552, column: 13, scope: !687)
!2322 = !DILocation(line: 553, column: 13, scope: !691)
!2323 = !DILocation(line: 553, column: 18, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !690, file: !385, discriminator: 1)
!2325 = !DILocation(line: 553, column: 28, scope: !690)
!2326 = !DILocation(line: 553, column: 51, scope: !690)
!2327 = !DILocation(line: 553, column: 57, scope: !690)
!2328 = !DILocation(line: 553, column: 38, scope: !690)
!2329 = !DILocation(line: 553, column: 73, scope: !696)
!2330 = !DILocation(line: 553, column: 81, scope: !696)
!2331 = !DILocation(line: 553, column: 73, scope: !690)
!2332 = !DILocation(line: 553, column: 99, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !695, file: !385, discriminator: 2)
!2334 = !DILocation(line: 553, column: 105, scope: !695)
!2335 = !DILocation(line: 553, column: 116, scope: !695)
!2336 = !DILocation(line: 553, column: 130, scope: !695)
!2337 = !DILocation(line: 553, column: 135, scope: !2338)
!2338 = !DILexicalBlockFile(scope: !694, file: !385, discriminator: 4)
!2339 = !DILocation(line: 553, column: 145, scope: !694)
!2340 = !DILocation(line: 553, column: 175, scope: !694)
!2341 = !DILocation(line: 553, column: 193, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !694, file: !385, line: 553, column: 190)
!2343 = !DILocation(line: 553, column: 210, scope: !2342)
!2344 = !DILocation(line: 553, column: 190, scope: !2342)
!2345 = !DILocation(line: 553, column: 220, scope: !2342)
!2346 = !DILocation(line: 553, column: 190, scope: !694)
!2347 = !DILocation(line: 553, column: 190, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !694, file: !385, discriminator: 5)
!2349 = !DILocation(line: 553, column: 251, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2342, file: !385, discriminator: 6)
!2351 = !DILocation(line: 553, column: 269, scope: !2342)
!2352 = !DILocation(line: 553, column: 279, scope: !2342)
!2353 = !DILocation(line: 553, column: 304, scope: !2342)
!2354 = !DILocation(line: 553, column: 235, scope: !2342)
!2355 = !DILocation(line: 553, column: 323, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !695, file: !385, discriminator: 7)
!2357 = !DILocation(line: 553, column: 323, scope: !694)
!2358 = !DILocation(line: 553, column: 323, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !694, file: !385, discriminator: 8)
!2360 = !DILocation(line: 553, column: 336, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !695, file: !385, discriminator: 9)
!2362 = !DILocation(line: 553, column: 338, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2364, file: !385, discriminator: 10)
!2364 = !DILexicalBlockFile(scope: !691, file: !385, discriminator: 3)
!2365 = !DILocation(line: 553, column: 338, scope: !690)
!2366 = !DILocation(line: 553, column: 338, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !690, file: !385, discriminator: 11)
!2368 = !DILocation(line: 554, column: 13, scope: !691)
!2369 = !DILocation(line: 556, column: 5, scope: !687)
!2370 = !DILocation(line: 558, column: 30, scope: !642)
!2371 = !DILocation(line: 558, column: 36, scope: !642)
!2372 = !DILocation(line: 558, column: 5, scope: !642)
!2373 = !DILocation(line: 559, column: 35, scope: !642)
!2374 = !DILocation(line: 559, column: 41, scope: !642)
!2375 = !DILocation(line: 559, column: 5, scope: !642)
!2376 = !DILocation(line: 561, column: 44, scope: !642)
!2377 = !DILocation(line: 561, column: 22, scope: !642)
!2378 = !DILocation(line: 561, column: 20, scope: !642)
!2379 = !DILocation(line: 562, column: 9, scope: !703)
!2380 = !DILocation(line: 562, column: 15, scope: !703)
!2381 = !DILocation(line: 562, column: 27, scope: !703)
!2382 = !{!1090, !1010, i64 56}
!2383 = !DILocation(line: 562, column: 9, scope: !642)
!2384 = !DILocation(line: 563, column: 17, scope: !702)
!2385 = !DILocation(line: 563, column: 9, scope: !702)
!2386 = !DILocation(line: 568, column: 22, scope: !700)
!2387 = !DILocation(line: 568, column: 28, scope: !700)
!2388 = !DILocation(line: 568, column: 40, scope: !700)
!2389 = !{!1090, !1011, i64 24}
!2390 = !DILocation(line: 568, column: 21, scope: !701)
!2391 = !DILocation(line: 569, column: 57, scope: !699)
!2392 = !DILocation(line: 569, column: 63, scope: !699)
!2393 = !DILocation(line: 569, column: 30, scope: !699)
!2394 = !DILocation(line: 569, column: 28, scope: !699)
!2395 = !DILocation(line: 570, column: 26, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !699, file: !385, line: 570, column: 25)
!2397 = !DILocation(line: 570, column: 25, scope: !699)
!2398 = !DILocation(line: 571, column: 25, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !385, line: 570, column: 34)
!2400 = !DILocation(line: 573, column: 21, scope: !699)
!2401 = !DILocation(line: 573, column: 26, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !698, file: !385, discriminator: 1)
!2403 = !DILocation(line: 573, column: 36, scope: !698)
!2404 = !DILocation(line: 573, column: 66, scope: !698)
!2405 = !DILocation(line: 573, column: 83, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !698, file: !385, line: 573, column: 80)
!2407 = !DILocation(line: 573, column: 100, scope: !2406)
!2408 = !DILocation(line: 573, column: 80, scope: !2406)
!2409 = !DILocation(line: 573, column: 110, scope: !2406)
!2410 = !DILocation(line: 573, column: 80, scope: !698)
!2411 = !DILocation(line: 573, column: 80, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !698, file: !385, discriminator: 2)
!2413 = !DILocation(line: 573, column: 141, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2406, file: !385, discriminator: 3)
!2415 = !DILocation(line: 573, column: 159, scope: !2406)
!2416 = !DILocation(line: 573, column: 169, scope: !2406)
!2417 = !DILocation(line: 573, column: 194, scope: !2406)
!2418 = !DILocation(line: 573, column: 125, scope: !2406)
!2419 = !DILocation(line: 573, column: 213, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !699, file: !385, discriminator: 4)
!2421 = !DILocation(line: 573, column: 213, scope: !698)
!2422 = !DILocation(line: 573, column: 213, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !698, file: !385, discriminator: 5)
!2424 = !DILocation(line: 574, column: 17, scope: !699)
!2425 = !DILocation(line: 575, column: 17, scope: !701)
!2426 = !DILocation(line: 579, column: 21, scope: !707)
!2427 = !DILocation(line: 579, column: 27, scope: !707)
!2428 = !DILocation(line: 579, column: 39, scope: !707)
!2429 = !DILocation(line: 579, column: 21, scope: !701)
!2430 = !DILocation(line: 580, column: 57, scope: !706)
!2431 = !DILocation(line: 580, column: 63, scope: !706)
!2432 = !DILocation(line: 580, column: 30, scope: !706)
!2433 = !DILocation(line: 580, column: 28, scope: !706)
!2434 = !DILocation(line: 581, column: 26, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !706, file: !385, line: 581, column: 25)
!2436 = !DILocation(line: 581, column: 25, scope: !706)
!2437 = !DILocation(line: 582, column: 25, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !385, line: 581, column: 34)
!2439 = !DILocation(line: 584, column: 21, scope: !706)
!2440 = !DILocation(line: 584, column: 26, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 1)
!2442 = !DILocation(line: 584, column: 36, scope: !705)
!2443 = !DILocation(line: 584, column: 66, scope: !705)
!2444 = !DILocation(line: 584, column: 83, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !705, file: !385, line: 584, column: 80)
!2446 = !DILocation(line: 584, column: 100, scope: !2445)
!2447 = !DILocation(line: 584, column: 80, scope: !2445)
!2448 = !DILocation(line: 584, column: 110, scope: !2445)
!2449 = !DILocation(line: 584, column: 80, scope: !705)
!2450 = !DILocation(line: 584, column: 80, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 2)
!2452 = !DILocation(line: 584, column: 141, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2445, file: !385, discriminator: 3)
!2454 = !DILocation(line: 584, column: 159, scope: !2445)
!2455 = !DILocation(line: 584, column: 169, scope: !2445)
!2456 = !DILocation(line: 584, column: 194, scope: !2445)
!2457 = !DILocation(line: 584, column: 125, scope: !2445)
!2458 = !DILocation(line: 584, column: 213, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !706, file: !385, discriminator: 4)
!2460 = !DILocation(line: 584, column: 213, scope: !705)
!2461 = !DILocation(line: 584, column: 213, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !705, file: !385, discriminator: 5)
!2463 = !DILocation(line: 585, column: 17, scope: !706)
!2464 = !DILocation(line: 586, column: 17, scope: !701)
!2465 = !DILocation(line: 588, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !701, file: !385, line: 588, column: 21)
!2467 = !DILocation(line: 588, column: 21, scope: !701)
!2468 = !DILocation(line: 589, column: 37, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !385, line: 588, column: 31)
!2470 = !DILocation(line: 589, column: 21, scope: !2469)
!2471 = !DILocation(line: 591, column: 21, scope: !2469)
!2472 = !DILocation(line: 593, column: 17, scope: !701)
!2473 = !DILocation(line: 595, column: 5, scope: !702)
!2474 = !DILocation(line: 598, column: 5, scope: !642)
!2475 = !DILocation(line: 598, column: 5, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !385, discriminator: 2)
!2477 = !DILexicalBlockFile(scope: !642, file: !385, discriminator: 1)
!2478 = !DILocation(line: 599, column: 34, scope: !714)
!2479 = !DILocation(line: 599, column: 22, scope: !714)
!2480 = !DILocation(line: 599, column: 20, scope: !714)
!2481 = !DILocation(line: 600, column: 14, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !714, file: !385, line: 600, column: 13)
!2483 = !DILocation(line: 600, column: 13, scope: !714)
!2484 = !DILocation(line: 601, column: 13, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !385, line: 600, column: 26)
!2486 = !DILocation(line: 604, column: 39, scope: !714)
!2487 = !DILocation(line: 604, column: 45, scope: !714)
!2488 = !DILocation(line: 604, column: 9, scope: !714)
!2489 = !DILocation(line: 606, column: 44, scope: !714)
!2490 = !DILocation(line: 606, column: 50, scope: !714)
!2491 = !DILocation(line: 606, column: 61, scope: !714)
!2492 = !DILocation(line: 606, column: 9, scope: !714)
!2493 = !DILocation(line: 607, column: 13, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !714, file: !385, line: 607, column: 13)
!2495 = !DILocation(line: 607, column: 13, scope: !714)
!2496 = !DILocation(line: 608, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !385, line: 607, column: 31)
!2498 = !DILocation(line: 612, column: 9, scope: !714)
!2499 = !DILocation(line: 612, column: 9, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !714, file: !385, discriminator: 1)
!2501 = !DILocation(line: 614, column: 32, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !714, file: !385, line: 612, column: 19)
!2503 = !DILocation(line: 614, column: 38, scope: !2502)
!2504 = !DILocation(line: 614, column: 49, scope: !2502)
!2505 = !DILocation(line: 614, column: 53, scope: !2502)
!2506 = !DILocation(line: 614, column: 59, scope: !2502)
!2507 = !DILocation(line: 614, column: 18, scope: !2502)
!2508 = !DILocation(line: 614, column: 16, scope: !2502)
!2509 = !DILocation(line: 615, column: 17, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2502, file: !385, line: 615, column: 17)
!2511 = !DILocation(line: 615, column: 20, scope: !2510)
!2512 = !DILocation(line: 615, column: 27, scope: !2510)
!2513 = !DILocation(line: 615, column: 30, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2510, file: !385, discriminator: 1)
!2515 = !DILocation(line: 615, column: 33, scope: !2510)
!2516 = !DILocation(line: 615, column: 17, scope: !2502)
!2517 = !DILocation(line: 617, column: 17, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !385, line: 615, column: 41)
!2519 = !DILocation(line: 620, column: 43, scope: !2502)
!2520 = !DILocation(line: 620, column: 49, scope: !2502)
!2521 = !DILocation(line: 620, column: 18, scope: !2502)
!2522 = !DILocation(line: 620, column: 16, scope: !2502)
!2523 = !DILocation(line: 621, column: 17, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2502, file: !385, line: 621, column: 17)
!2525 = !DILocation(line: 621, column: 20, scope: !2524)
!2526 = !DILocation(line: 621, column: 17, scope: !2502)
!2527 = !DILocation(line: 624, column: 51, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !385, line: 621, column: 27)
!2529 = !DILocation(line: 624, column: 57, scope: !2528)
!2530 = !DILocation(line: 624, column: 68, scope: !2528)
!2531 = !DILocation(line: 624, column: 22, scope: !2528)
!2532 = !DILocation(line: 624, column: 20, scope: !2528)
!2533 = !DILocation(line: 625, column: 21, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2528, file: !385, line: 625, column: 21)
!2535 = !DILocation(line: 625, column: 24, scope: !2534)
!2536 = !DILocation(line: 625, column: 21, scope: !2528)
!2537 = !DILocation(line: 626, column: 21, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !385, line: 625, column: 30)
!2539 = !DILocation(line: 629, column: 52, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2534, file: !385, line: 627, column: 24)
!2541 = !DILocation(line: 629, column: 58, scope: !2540)
!2542 = !DILocation(line: 629, column: 27, scope: !2540)
!2543 = !DILocation(line: 630, column: 40, scope: !2540)
!2544 = !DILocation(line: 630, column: 46, scope: !2540)
!2545 = !DILocation(line: 630, column: 58, scope: !2540)
!2546 = !{!1090, !1010, i64 16}
!2547 = !DILocation(line: 630, column: 21, scope: !2540)
!2548 = !DILocation(line: 631, column: 21, scope: !2540)
!2549 = !DILocation(line: 634, column: 21, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !385, line: 634, column: 21)
!2551 = distinct !DILexicalBlock(scope: !2524, file: !385, line: 633, column: 20)
!2552 = !DILocation(line: 634, column: 21, scope: !2551)
!2553 = !DILocation(line: 636, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !385, line: 636, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !385, line: 634, column: 39)
!2556 = !DILocation(line: 636, column: 25, scope: !2555)
!2557 = !DILocation(line: 637, column: 25, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !385, line: 636, column: 54)
!2559 = !DILocation(line: 638, column: 21, scope: !2558)
!2560 = !DILocation(line: 639, column: 25, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2554, file: !385, line: 638, column: 28)
!2562 = !DILocation(line: 641, column: 17, scope: !2555)
!2563 = !DILocation(line: 642, column: 48, scope: !2551)
!2564 = !DILocation(line: 642, column: 54, scope: !2551)
!2565 = !DILocation(line: 642, column: 23, scope: !2551)
!2566 = !DILocation(line: 643, column: 36, scope: !2551)
!2567 = !DILocation(line: 643, column: 42, scope: !2551)
!2568 = !DILocation(line: 643, column: 54, scope: !2551)
!2569 = !DILocation(line: 643, column: 17, scope: !2551)
!2570 = !DILocation(line: 644, column: 17, scope: !2551)
!2571 = !DILocation(line: 648, column: 41, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !714, file: !385, line: 648, column: 13)
!2573 = !DILocation(line: 648, column: 13, scope: !2572)
!2574 = !DILocation(line: 648, column: 47, scope: !2572)
!2575 = !DILocation(line: 648, column: 13, scope: !714)
!2576 = !DILocation(line: 649, column: 29, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !385, line: 648, column: 53)
!2578 = !DILocation(line: 649, column: 13, scope: !2577)
!2579 = !DILocation(line: 650, column: 13, scope: !2577)
!2580 = !DILocation(line: 653, column: 13, scope: !713)
!2581 = !DILocation(line: 653, column: 16, scope: !713)
!2582 = !DILocation(line: 653, column: 23, scope: !713)
!2583 = !DILocation(line: 653, column: 27, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !713, file: !385, discriminator: 1)
!2585 = !DILocation(line: 653, column: 30, scope: !713)
!2586 = !DILocation(line: 653, column: 37, scope: !713)
!2587 = !DILocation(line: 653, column: 40, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !713, file: !385, discriminator: 2)
!2589 = !DILocation(line: 653, column: 55, scope: !713)
!2590 = !DILocation(line: 653, column: 13, scope: !714)
!2591 = !DILocation(line: 654, column: 17, scope: !711)
!2592 = !DILocation(line: 654, column: 23, scope: !711)
!2593 = !DILocation(line: 654, column: 35, scope: !711)
!2594 = !DILocation(line: 654, column: 17, scope: !712)
!2595 = !DILocation(line: 655, column: 19, scope: !709)
!2596 = !DILocation(line: 655, column: 34, scope: !709)
!2597 = !DILocation(line: 655, column: 49, scope: !709)
!2598 = !DILocation(line: 655, column: 47, scope: !709)
!2599 = !DILocation(line: 656, column: 48, scope: !709)
!2600 = !DILocation(line: 656, column: 54, scope: !709)
!2601 = !DILocation(line: 656, column: 65, scope: !709)
!2602 = !DILocation(line: 656, column: 27, scope: !709)
!2603 = !DILocation(line: 656, column: 25, scope: !709)
!2604 = !DILocation(line: 657, column: 38, scope: !709)
!2605 = !DILocation(line: 657, column: 17, scope: !709)
!2606 = !DILocation(line: 657, column: 46, scope: !710)
!2607 = !DILocation(line: 659, column: 17, scope: !710)
!2608 = !DILocation(line: 659, column: 22, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !716, file: !385, discriminator: 1)
!2610 = !DILocation(line: 659, column: 32, scope: !716)
!2611 = !DILocation(line: 659, column: 62, scope: !716)
!2612 = !DILocation(line: 659, column: 68, scope: !716)
!2613 = !DILocation(line: 659, column: 90, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !716, file: !385, line: 659, column: 87)
!2615 = !DILocation(line: 659, column: 107, scope: !2614)
!2616 = !DILocation(line: 659, column: 87, scope: !2614)
!2617 = !DILocation(line: 659, column: 117, scope: !2614)
!2618 = !DILocation(line: 659, column: 87, scope: !716)
!2619 = !DILocation(line: 659, column: 87, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !716, file: !385, discriminator: 2)
!2621 = !DILocation(line: 659, column: 148, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2614, file: !385, discriminator: 3)
!2623 = !DILocation(line: 659, column: 166, scope: !2614)
!2624 = !DILocation(line: 659, column: 176, scope: !2614)
!2625 = !DILocation(line: 659, column: 201, scope: !2614)
!2626 = !DILocation(line: 659, column: 132, scope: !2614)
!2627 = !DILocation(line: 659, column: 220, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !710, file: !385, discriminator: 4)
!2629 = !DILocation(line: 659, column: 220, scope: !716)
!2630 = !DILocation(line: 659, column: 220, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !716, file: !385, discriminator: 5)
!2632 = !DILocation(line: 660, column: 49, scope: !710)
!2633 = !DILocation(line: 660, column: 37, scope: !710)
!2634 = !DILocation(line: 660, column: 17, scope: !710)
!2635 = !DILocation(line: 660, column: 23, scope: !710)
!2636 = !DILocation(line: 660, column: 35, scope: !710)
!2637 = !DILocation(line: 661, column: 22, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !710, file: !385, line: 661, column: 21)
!2639 = !DILocation(line: 661, column: 28, scope: !2638)
!2640 = !DILocation(line: 661, column: 21, scope: !710)
!2641 = !DILocation(line: 662, column: 21, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2638, file: !385, line: 661, column: 41)
!2643 = !DILocation(line: 664, column: 24, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !710, file: !385, line: 664, column: 17)
!2645 = !DILocation(line: 664, column: 22, scope: !2644)
!2646 = !DILocation(line: 664, column: 29, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2648, file: !385, discriminator: 2)
!2648 = !DILexicalBlockFile(scope: !2649, file: !385, discriminator: 1)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !385, line: 664, column: 17)
!2650 = !DILocation(line: 664, column: 33, scope: !2649)
!2651 = !DILocation(line: 664, column: 31, scope: !2649)
!2652 = !DILocation(line: 664, column: 17, scope: !2644)
!2653 = !DILocation(line: 665, column: 34, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !385, line: 664, column: 47)
!2655 = !DILocation(line: 665, column: 32, scope: !2654)
!2656 = !DILocation(line: 666, column: 26, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !385, line: 666, column: 25)
!2658 = !DILocation(line: 666, column: 25, scope: !2654)
!2659 = !DILocation(line: 667, column: 25, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !385, line: 666, column: 38)
!2661 = !DILocation(line: 669, column: 37, scope: !2654)
!2662 = !DILocation(line: 669, column: 100, scope: !2654)
!2663 = !DILocation(line: 669, column: 106, scope: !2654)
!2664 = !DILocation(line: 669, column: 117, scope: !2654)
!2665 = !DILocation(line: 669, column: 121, scope: !2654)
!2666 = !DILocation(line: 669, column: 80, scope: !2654)
!2667 = !DILocation(line: 669, column: 52, scope: !2654)
!2668 = !DILocation(line: 669, column: 21, scope: !2654)
!2669 = !DILocation(line: 670, column: 67, scope: !2654)
!2670 = !DILocation(line: 670, column: 88, scope: !2654)
!2671 = !DILocation(line: 670, column: 72, scope: !2654)
!2672 = !DILocation(line: 671, column: 67, scope: !2654)
!2673 = !DILocation(line: 671, column: 88, scope: !2654)
!2674 = !DILocation(line: 671, column: 72, scope: !2654)
!2675 = !DILocation(line: 672, column: 67, scope: !2654)
!2676 = !DILocation(line: 672, column: 88, scope: !2654)
!2677 = !DILocation(line: 672, column: 72, scope: !2654)
!2678 = !DILocation(line: 673, column: 67, scope: !2654)
!2679 = !DILocation(line: 673, column: 88, scope: !2654)
!2680 = !DILocation(line: 673, column: 72, scope: !2654)
!2681 = !DILocation(line: 674, column: 67, scope: !2654)
!2682 = !DILocation(line: 674, column: 88, scope: !2654)
!2683 = !DILocation(line: 674, column: 72, scope: !2654)
!2684 = !DILocation(line: 675, column: 67, scope: !2654)
!2685 = !DILocation(line: 675, column: 88, scope: !2654)
!2686 = !DILocation(line: 675, column: 72, scope: !2654)
!2687 = !DILocation(line: 676, column: 37, scope: !2654)
!2688 = !DILocation(line: 676, column: 43, scope: !2654)
!2689 = !DILocation(line: 676, column: 56, scope: !2654)
!2690 = !DILocation(line: 676, column: 59, scope: !2654)
!2691 = !DILocation(line: 676, column: 21, scope: !2654)
!2692 = !DILocation(line: 677, column: 17, scope: !2654)
!2693 = !DILocation(line: 664, column: 43, scope: !2649)
!2694 = !DILocation(line: 664, column: 17, scope: !2649)
!2695 = !DILocation(line: 678, column: 13, scope: !710)
!2696 = !DILocation(line: 679, column: 9, scope: !712)
!2697 = !DILocation(line: 681, column: 13, scope: !721)
!2698 = !DILocation(line: 681, column: 16, scope: !721)
!2699 = !DILocation(line: 681, column: 13, scope: !714)
!2700 = !DILocation(line: 682, column: 17, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !385, line: 682, column: 17)
!2702 = distinct !DILexicalBlock(scope: !721, file: !385, line: 681, column: 24)
!2703 = !DILocation(line: 682, column: 17, scope: !2702)
!2704 = !DILocation(line: 683, column: 33, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !385, line: 682, column: 27)
!2706 = !DILocation(line: 683, column: 17, scope: !2705)
!2707 = !DILocation(line: 684, column: 17, scope: !2705)
!2708 = !DILocation(line: 687, column: 54, scope: !2702)
!2709 = !DILocation(line: 687, column: 30, scope: !2702)
!2710 = !DILocation(line: 687, column: 13, scope: !2702)
!2711 = !DILocation(line: 687, column: 19, scope: !2702)
!2712 = !DILocation(line: 687, column: 28, scope: !2702)
!2713 = !DILocation(line: 688, column: 9, scope: !2702)
!2714 = !DILocation(line: 688, column: 20, scope: !720)
!2715 = !DILocation(line: 688, column: 23, scope: !720)
!2716 = !DILocation(line: 688, column: 30, scope: !720)
!2717 = !DILocation(line: 688, column: 34, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !720, file: !385, discriminator: 1)
!2719 = !DILocation(line: 688, column: 20, scope: !721)
!2720 = !DILocation(line: 689, column: 38, scope: !719)
!2721 = !DILocation(line: 689, column: 44, scope: !719)
!2722 = !DILocation(line: 689, column: 13, scope: !719)
!2723 = !DILocation(line: 690, column: 13, scope: !719)
!2724 = !DILocation(line: 690, column: 18, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !718, file: !385, discriminator: 1)
!2726 = !DILocation(line: 690, column: 28, scope: !718)
!2727 = !DILocation(line: 690, column: 51, scope: !718)
!2728 = !DILocation(line: 690, column: 57, scope: !718)
!2729 = !DILocation(line: 690, column: 38, scope: !718)
!2730 = !DILocation(line: 690, column: 73, scope: !725)
!2731 = !DILocation(line: 690, column: 81, scope: !725)
!2732 = !DILocation(line: 690, column: 73, scope: !718)
!2733 = !DILocation(line: 690, column: 99, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !724, file: !385, discriminator: 2)
!2735 = !DILocation(line: 690, column: 105, scope: !724)
!2736 = !DILocation(line: 690, column: 116, scope: !724)
!2737 = !DILocation(line: 690, column: 130, scope: !724)
!2738 = !DILocation(line: 690, column: 135, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !723, file: !385, discriminator: 4)
!2740 = !DILocation(line: 690, column: 145, scope: !723)
!2741 = !DILocation(line: 690, column: 175, scope: !723)
!2742 = !DILocation(line: 690, column: 193, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !723, file: !385, line: 690, column: 190)
!2744 = !DILocation(line: 690, column: 210, scope: !2743)
!2745 = !DILocation(line: 690, column: 190, scope: !2743)
!2746 = !DILocation(line: 690, column: 220, scope: !2743)
!2747 = !DILocation(line: 690, column: 190, scope: !723)
!2748 = !DILocation(line: 690, column: 190, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !723, file: !385, discriminator: 5)
!2750 = !DILocation(line: 690, column: 251, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2743, file: !385, discriminator: 6)
!2752 = !DILocation(line: 690, column: 269, scope: !2743)
!2753 = !DILocation(line: 690, column: 279, scope: !2743)
!2754 = !DILocation(line: 690, column: 304, scope: !2743)
!2755 = !DILocation(line: 690, column: 235, scope: !2743)
!2756 = !DILocation(line: 690, column: 323, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !724, file: !385, discriminator: 7)
!2758 = !DILocation(line: 690, column: 323, scope: !723)
!2759 = !DILocation(line: 690, column: 323, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !723, file: !385, discriminator: 8)
!2761 = !DILocation(line: 690, column: 336, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !724, file: !385, discriminator: 9)
!2763 = !DILocation(line: 690, column: 338, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2765, file: !385, discriminator: 10)
!2765 = !DILexicalBlockFile(scope: !719, file: !385, discriminator: 3)
!2766 = !DILocation(line: 690, column: 338, scope: !718)
!2767 = !DILocation(line: 690, column: 338, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !718, file: !385, discriminator: 11)
!2769 = !DILocation(line: 691, column: 9, scope: !719)
!2770 = !DILocation(line: 693, column: 17, scope: !714)
!2771 = !DILocation(line: 693, column: 9, scope: !714)
!2772 = !DILocation(line: 698, column: 21, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !385, line: 698, column: 21)
!2774 = distinct !DILexicalBlock(scope: !714, file: !385, line: 693, column: 33)
!2775 = !DILocation(line: 698, column: 27, scope: !2773)
!2776 = !DILocation(line: 698, column: 36, scope: !2773)
!2777 = !DILocation(line: 698, column: 21, scope: !2774)
!2778 = !DILocation(line: 699, column: 21, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2773, file: !385, line: 698, column: 44)
!2780 = !DILocation(line: 699, column: 27, scope: !2779)
!2781 = !DILocation(line: 699, column: 36, scope: !2779)
!2782 = !DILocation(line: 700, column: 17, scope: !2779)
!2783 = !DILocation(line: 701, column: 57, scope: !2774)
!2784 = !DILocation(line: 701, column: 63, scope: !2774)
!2785 = !DILocation(line: 701, column: 75, scope: !2774)
!2786 = !DILocation(line: 701, column: 41, scope: !2774)
!2787 = !DILocation(line: 701, column: 35, scope: !2774)
!2788 = !DILocation(line: 701, column: 17, scope: !2774)
!2789 = !DILocation(line: 701, column: 23, scope: !2774)
!2790 = !DILocation(line: 701, column: 32, scope: !2774)
!2791 = !DILocation(line: 702, column: 9, scope: !2774)
!2792 = !DILocation(line: 704, column: 9, scope: !714)
!2793 = !DILocation(line: 704, column: 14, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !727, file: !385, discriminator: 1)
!2795 = !DILocation(line: 704, column: 24, scope: !727)
!2796 = !DILocation(line: 704, column: 54, scope: !727)
!2797 = !DILocation(line: 704, column: 60, scope: !727)
!2798 = !{!1087, !1010, i64 48}
!2799 = !DILocation(line: 704, column: 80, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !727, file: !385, line: 704, column: 77)
!2801 = !DILocation(line: 704, column: 97, scope: !2800)
!2802 = !DILocation(line: 704, column: 77, scope: !2800)
!2803 = !DILocation(line: 704, column: 107, scope: !2800)
!2804 = !DILocation(line: 704, column: 77, scope: !727)
!2805 = !DILocation(line: 704, column: 77, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !727, file: !385, discriminator: 2)
!2807 = !DILocation(line: 704, column: 138, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2800, file: !385, discriminator: 3)
!2809 = !DILocation(line: 704, column: 156, scope: !2800)
!2810 = !DILocation(line: 704, column: 166, scope: !2800)
!2811 = !DILocation(line: 704, column: 191, scope: !2800)
!2812 = !DILocation(line: 704, column: 122, scope: !2800)
!2813 = !DILocation(line: 704, column: 210, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !714, file: !385, discriminator: 4)
!2815 = !DILocation(line: 704, column: 210, scope: !727)
!2816 = !DILocation(line: 704, column: 210, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !727, file: !385, discriminator: 5)
!2818 = !DILocation(line: 705, column: 14, scope: !730)
!2819 = !DILocation(line: 705, column: 23, scope: !730)
!2820 = !DILocation(line: 705, column: 26, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !730, file: !385, discriminator: 1)
!2822 = !DILocation(line: 705, column: 41, scope: !730)
!2823 = !DILocation(line: 705, column: 13, scope: !714)
!2824 = !DILocation(line: 706, column: 13, scope: !729)
!2825 = !DILocation(line: 706, column: 26, scope: !729)
!2826 = !DILocation(line: 707, column: 15, scope: !734)
!2827 = !DILocation(line: 707, column: 30, scope: !734)
!2828 = !DILocation(line: 707, column: 45, scope: !734)
!2829 = !DILocation(line: 707, column: 43, scope: !734)
!2830 = !DILocation(line: 708, column: 51, scope: !734)
!2831 = !DILocation(line: 708, column: 57, scope: !734)
!2832 = !DILocation(line: 708, column: 69, scope: !734)
!2833 = !DILocation(line: 708, column: 25, scope: !734)
!2834 = !DILocation(line: 708, column: 23, scope: !734)
!2835 = !{!2836, !2836, i64 0}
!2836 = !{!"long long", !1011, i64 0}
!2837 = !DILocation(line: 709, column: 34, scope: !734)
!2838 = !DILocation(line: 709, column: 13, scope: !734)
!2839 = !DILocation(line: 709, column: 42, scope: !729)
!2840 = !DILocation(line: 710, column: 57, scope: !729)
!2841 = !DILocation(line: 710, column: 31, scope: !729)
!2842 = !DILocation(line: 710, column: 13, scope: !729)
!2843 = !DILocation(line: 710, column: 19, scope: !729)
!2844 = !DILocation(line: 710, column: 29, scope: !729)
!2845 = !DILocation(line: 711, column: 9, scope: !730)
!2846 = !DILocation(line: 711, column: 9, scope: !729)
!2847 = !DILocation(line: 712, column: 59, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !730, file: !385, line: 711, column: 16)
!2849 = !DILocation(line: 713, column: 13, scope: !2848)
!2850 = !DILocation(line: 713, column: 19, scope: !2848)
!2851 = !DILocation(line: 713, column: 29, scope: !2848)
!2852 = !DILocation(line: 716, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !714, file: !385, line: 716, column: 13)
!2854 = !DILocation(line: 716, column: 13, scope: !714)
!2855 = !DILocation(line: 717, column: 38, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !385, line: 716, column: 23)
!2857 = !DILocation(line: 717, column: 44, scope: !2856)
!2858 = !DILocation(line: 717, column: 13, scope: !2856)
!2859 = !DILocation(line: 718, column: 9, scope: !2856)
!2860 = !DILocation(line: 719, column: 9, scope: !714)
!2861 = !DILocation(line: 719, column: 14, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !736, file: !385, discriminator: 1)
!2863 = !DILocation(line: 719, column: 24, scope: !736)
!2864 = !DILocation(line: 719, column: 55, scope: !736)
!2865 = !DILocation(line: 719, column: 72, scope: !739)
!2866 = !DILocation(line: 719, column: 88, scope: !739)
!2867 = !DILocation(line: 719, column: 72, scope: !736)
!2868 = !DILocation(line: 719, column: 103, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !739, file: !385, discriminator: 2)
!2870 = !DILocation(line: 719, column: 108, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 4)
!2872 = !DILocation(line: 719, column: 118, scope: !738)
!2873 = !DILocation(line: 719, column: 148, scope: !738)
!2874 = !DILocation(line: 719, column: 174, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !738, file: !385, line: 719, column: 171)
!2876 = !DILocation(line: 719, column: 191, scope: !2875)
!2877 = !DILocation(line: 719, column: 171, scope: !2875)
!2878 = !DILocation(line: 719, column: 201, scope: !2875)
!2879 = !DILocation(line: 719, column: 171, scope: !738)
!2880 = !DILocation(line: 719, column: 171, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 5)
!2882 = !DILocation(line: 719, column: 232, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2875, file: !385, discriminator: 6)
!2884 = !DILocation(line: 719, column: 250, scope: !2875)
!2885 = !DILocation(line: 719, column: 260, scope: !2875)
!2886 = !DILocation(line: 719, column: 285, scope: !2875)
!2887 = !DILocation(line: 719, column: 216, scope: !2875)
!2888 = !DILocation(line: 719, column: 304, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !739, file: !385, discriminator: 7)
!2890 = !DILocation(line: 719, column: 304, scope: !738)
!2891 = !DILocation(line: 719, column: 304, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 8)
!2893 = !DILocation(line: 719, column: 304, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !738, file: !385, discriminator: 9)
!2895 = !DILocation(line: 719, column: 317, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2897, file: !385, discriminator: 10)
!2897 = !DILexicalBlockFile(scope: !714, file: !385, discriminator: 3)
!2898 = !DILocation(line: 719, column: 317, scope: !736)
!2899 = !DILocation(line: 719, column: 317, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !736, file: !385, discriminator: 11)
!2901 = !DILocation(line: 727, column: 9, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !642, file: !385, line: 727, column: 9)
!2903 = !DILocation(line: 727, column: 15, scope: !2902)
!2904 = !DILocation(line: 727, column: 26, scope: !2902)
!2905 = !DILocation(line: 727, column: 29, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2902, file: !385, discriminator: 1)
!2907 = !DILocation(line: 727, column: 35, scope: !2902)
!2908 = !DILocation(line: 727, column: 47, scope: !2902)
!2909 = !DILocation(line: 727, column: 29, scope: !2902)
!2910 = !DILocation(line: 727, column: 9, scope: !642)
!2911 = !DILocation(line: 728, column: 67, scope: !2902)
!2912 = !DILocation(line: 728, column: 73, scope: !2902)
!2913 = !DILocation(line: 728, column: 85, scope: !2902)
!2914 = !DILocation(line: 728, column: 44, scope: !2902)
!2915 = !DILocation(line: 728, column: 43, scope: !2902)
!2916 = !DILocation(line: 728, column: 9, scope: !2902)
!2917 = !DILocation(line: 728, column: 15, scope: !2902)
!2918 = !DILocation(line: 728, column: 27, scope: !2902)
!2919 = !DILocation(line: 728, column: 41, scope: !2902)
!2920 = !DILocation(line: 732, column: 5, scope: !642)
!2921 = !DILocation(line: 732, column: 10, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !741, file: !385, discriminator: 1)
!2923 = !DILocation(line: 732, column: 20, scope: !741)
!2924 = !DILocation(line: 732, column: 51, scope: !741)
!2925 = !DILocation(line: 732, column: 68, scope: !744)
!2926 = !DILocation(line: 732, column: 84, scope: !744)
!2927 = !DILocation(line: 732, column: 68, scope: !741)
!2928 = !DILocation(line: 732, column: 99, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !744, file: !385, discriminator: 2)
!2930 = !DILocation(line: 732, column: 104, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !743, file: !385, discriminator: 4)
!2932 = !DILocation(line: 732, column: 114, scope: !743)
!2933 = !DILocation(line: 732, column: 144, scope: !743)
!2934 = !DILocation(line: 732, column: 170, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !743, file: !385, line: 732, column: 167)
!2936 = !DILocation(line: 732, column: 187, scope: !2935)
!2937 = !DILocation(line: 732, column: 167, scope: !2935)
!2938 = !DILocation(line: 732, column: 197, scope: !2935)
!2939 = !DILocation(line: 732, column: 167, scope: !743)
!2940 = !DILocation(line: 732, column: 167, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !743, file: !385, discriminator: 5)
!2942 = !DILocation(line: 732, column: 228, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2935, file: !385, discriminator: 6)
!2944 = !DILocation(line: 732, column: 246, scope: !2935)
!2945 = !DILocation(line: 732, column: 256, scope: !2935)
!2946 = !DILocation(line: 732, column: 281, scope: !2935)
!2947 = !DILocation(line: 732, column: 212, scope: !2935)
!2948 = !DILocation(line: 732, column: 300, scope: !2949)
!2949 = !DILexicalBlockFile(scope: !744, file: !385, discriminator: 7)
!2950 = !DILocation(line: 732, column: 300, scope: !743)
!2951 = !DILocation(line: 732, column: 300, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !743, file: !385, discriminator: 8)
!2953 = !DILocation(line: 732, column: 300, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !743, file: !385, discriminator: 9)
!2955 = !DILocation(line: 732, column: 313, scope: !1969)
!2956 = !DILocation(line: 732, column: 313, scope: !741)
!2957 = !DILocation(line: 732, column: 313, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !741, file: !385, discriminator: 11)
!2959 = !DILocation(line: 733, column: 5, scope: !642)
!2960 = !DILocation(line: 733, column: 10, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !746, file: !385, discriminator: 1)
!2962 = !DILocation(line: 733, column: 20, scope: !746)
!2963 = !DILocation(line: 733, column: 51, scope: !746)
!2964 = !DILocation(line: 733, column: 73, scope: !749)
!2965 = !DILocation(line: 733, column: 89, scope: !749)
!2966 = !DILocation(line: 733, column: 73, scope: !746)
!2967 = !DILocation(line: 733, column: 104, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !749, file: !385, discriminator: 2)
!2969 = !DILocation(line: 733, column: 109, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 4)
!2971 = !DILocation(line: 733, column: 119, scope: !748)
!2972 = !DILocation(line: 733, column: 149, scope: !748)
!2973 = !DILocation(line: 733, column: 175, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !748, file: !385, line: 733, column: 172)
!2975 = !DILocation(line: 733, column: 192, scope: !2974)
!2976 = !DILocation(line: 733, column: 172, scope: !2974)
!2977 = !DILocation(line: 733, column: 202, scope: !2974)
!2978 = !DILocation(line: 733, column: 172, scope: !748)
!2979 = !DILocation(line: 733, column: 172, scope: !2980)
!2980 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 5)
!2981 = !DILocation(line: 733, column: 233, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2974, file: !385, discriminator: 6)
!2983 = !DILocation(line: 733, column: 251, scope: !2974)
!2984 = !DILocation(line: 733, column: 261, scope: !2974)
!2985 = !DILocation(line: 733, column: 286, scope: !2974)
!2986 = !DILocation(line: 733, column: 217, scope: !2974)
!2987 = !DILocation(line: 733, column: 305, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !749, file: !385, discriminator: 7)
!2989 = !DILocation(line: 733, column: 305, scope: !748)
!2990 = !DILocation(line: 733, column: 305, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 8)
!2992 = !DILocation(line: 733, column: 305, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !748, file: !385, discriminator: 9)
!2994 = !DILocation(line: 733, column: 318, scope: !1969)
!2995 = !DILocation(line: 733, column: 318, scope: !746)
!2996 = !DILocation(line: 733, column: 318, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !746, file: !385, discriminator: 11)
!2998 = !DILocation(line: 734, column: 5, scope: !642)
!2999 = !DILocation(line: 734, column: 10, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !751, file: !385, discriminator: 1)
!3001 = !DILocation(line: 734, column: 20, scope: !751)
!3002 = !DILocation(line: 734, column: 51, scope: !751)
!3003 = !DILocation(line: 734, column: 73, scope: !754)
!3004 = !DILocation(line: 734, column: 89, scope: !754)
!3005 = !DILocation(line: 734, column: 73, scope: !751)
!3006 = !DILocation(line: 734, column: 104, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !754, file: !385, discriminator: 2)
!3008 = !DILocation(line: 734, column: 109, scope: !3009)
!3009 = !DILexicalBlockFile(scope: !753, file: !385, discriminator: 4)
!3010 = !DILocation(line: 734, column: 119, scope: !753)
!3011 = !DILocation(line: 734, column: 149, scope: !753)
!3012 = !DILocation(line: 734, column: 175, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !753, file: !385, line: 734, column: 172)
!3014 = !DILocation(line: 734, column: 192, scope: !3013)
!3015 = !DILocation(line: 734, column: 172, scope: !3013)
!3016 = !DILocation(line: 734, column: 202, scope: !3013)
!3017 = !DILocation(line: 734, column: 172, scope: !753)
!3018 = !DILocation(line: 734, column: 172, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !753, file: !385, discriminator: 5)
!3020 = !DILocation(line: 734, column: 233, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3013, file: !385, discriminator: 6)
!3022 = !DILocation(line: 734, column: 251, scope: !3013)
!3023 = !DILocation(line: 734, column: 261, scope: !3013)
!3024 = !DILocation(line: 734, column: 286, scope: !3013)
!3025 = !DILocation(line: 734, column: 217, scope: !3013)
!3026 = !DILocation(line: 734, column: 305, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !754, file: !385, discriminator: 7)
!3028 = !DILocation(line: 734, column: 305, scope: !753)
!3029 = !DILocation(line: 734, column: 305, scope: !3030)
!3030 = !DILexicalBlockFile(scope: !753, file: !385, discriminator: 8)
!3031 = !DILocation(line: 734, column: 305, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !753, file: !385, discriminator: 9)
!3033 = !DILocation(line: 734, column: 318, scope: !1969)
!3034 = !DILocation(line: 734, column: 318, scope: !751)
!3035 = !DILocation(line: 734, column: 318, scope: !3036)
!3036 = !DILexicalBlockFile(scope: !751, file: !385, discriminator: 11)
!3037 = !DILocation(line: 736, column: 5, scope: !642)
!3038 = !DILocation(line: 736, column: 11, scope: !642)
!3039 = !DILocation(line: 736, column: 18, scope: !642)
!3040 = !DILocation(line: 738, column: 9, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !642, file: !385, line: 738, column: 9)
!3042 = !DILocation(line: 738, column: 9, scope: !642)
!3043 = !DILocation(line: 739, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !385, line: 738, column: 27)
!3045 = !DILocation(line: 739, column: 15, scope: !3044)
!3046 = !DILocation(line: 739, column: 24, scope: !3044)
!3047 = !DILocation(line: 740, column: 9, scope: !3044)
!3048 = !DILocation(line: 742, column: 25, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3041, file: !385, line: 741, column: 12)
!3050 = !DILocation(line: 742, column: 12, scope: !3049)
!3051 = !DILocation(line: 742, column: 33, scope: !3049)
!3052 = !DILocation(line: 742, column: 42, scope: !3049)
!3053 = !DILocation(line: 743, column: 27, scope: !3049)
!3054 = !DILocation(line: 743, column: 16, scope: !3049)
!3055 = !DILocation(line: 743, column: 9, scope: !3049)
!3056 = !DILocation(line: 745, column: 1, scope: !642)
!3057 = !DILocation(line: 405, column: 42, scope: !882)
!3058 = !DILocation(line: 407, column: 10, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !882, file: !385, line: 407, column: 9)
!3060 = !DILocation(line: 407, column: 15, scope: !3059)
!3061 = !{!1087, !1055, i64 92}
!3062 = !DILocation(line: 407, column: 9, scope: !882)
!3063 = !DILocation(line: 408, column: 25, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3059, file: !385, line: 407, column: 28)
!3065 = !DILocation(line: 408, column: 9, scope: !3064)
!3066 = !DILocation(line: 409, column: 9, scope: !3064)
!3067 = !DILocation(line: 412, column: 9, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !882, file: !385, line: 412, column: 9)
!3069 = !DILocation(line: 412, column: 14, scope: !3068)
!3070 = !{!1087, !1055, i64 80}
!3071 = !DILocation(line: 412, column: 9, scope: !882)
!3072 = !DILocation(line: 413, column: 25, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3068, file: !385, line: 412, column: 22)
!3074 = !DILocation(line: 413, column: 9, scope: !3073)
!3075 = !DILocation(line: 414, column: 9, scope: !3073)
!3076 = !DILocation(line: 417, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !882, file: !385, line: 417, column: 9)
!3078 = !DILocation(line: 417, column: 14, scope: !3077)
!3079 = !DILocation(line: 417, column: 9, scope: !882)
!3080 = !DILocation(line: 418, column: 25, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !385, line: 417, column: 22)
!3082 = !DILocation(line: 418, column: 9, scope: !3081)
!3083 = !DILocation(line: 419, column: 9, scope: !3081)
!3084 = !DILocation(line: 422, column: 34, scope: !882)
!3085 = !DILocation(line: 422, column: 39, scope: !882)
!3086 = !DILocation(line: 422, column: 12, scope: !882)
!3087 = !DILocation(line: 422, column: 51, scope: !882)
!3088 = !DILocation(line: 422, column: 80, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !882, file: !385, discriminator: 1)
!3090 = !DILocation(line: 422, column: 85, scope: !882)
!3091 = !DILocation(line: 422, column: 54, scope: !882)
!3092 = !DILocation(line: 422, column: 51, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !882, file: !385, discriminator: 2)
!3094 = !DILocation(line: 422, column: 5, scope: !882)
!3095 = !DILocation(line: 423, column: 1, scope: !882)
!3096 = !DILocation(line: 32, column: 65, scope: !885)
!3097 = !DILocation(line: 34, column: 5, scope: !885)
!3098 = !DILocation(line: 34, column: 10, scope: !885)
!3099 = !DILocation(line: 35, column: 5, scope: !885)
!3100 = !DILocation(line: 35, column: 17, scope: !885)
!3101 = !DILocation(line: 36, column: 5, scope: !885)
!3102 = !DILocation(line: 36, column: 11, scope: !885)
!3103 = !DILocation(line: 38, column: 11, scope: !885)
!3104 = !DILocation(line: 38, column: 9, scope: !885)
!3105 = !DILocation(line: 40, column: 5, scope: !885)
!3106 = !DILocation(line: 40, column: 13, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3108, file: !385, discriminator: 9)
!3108 = !DILexicalBlockFile(scope: !885, file: !385, discriminator: 1)
!3109 = !DILocation(line: 40, column: 12, scope: !885)
!3110 = !DILocation(line: 40, column: 17, scope: !885)
!3111 = !DILocation(line: 40, column: 25, scope: !885)
!3112 = !DILocation(line: 40, column: 29, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !885, file: !385, discriminator: 3)
!3114 = !DILocation(line: 40, column: 28, scope: !885)
!3115 = !DILocation(line: 40, column: 33, scope: !885)
!3116 = !DILocation(line: 40, column: 41, scope: !885)
!3117 = !DILocation(line: 40, column: 45, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !885, file: !385, discriminator: 5)
!3119 = !DILocation(line: 40, column: 44, scope: !885)
!3120 = !DILocation(line: 40, column: 49, scope: !885)
!3121 = !DILocation(line: 40, column: 56, scope: !885)
!3122 = !DILocation(line: 40, column: 60, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !885, file: !385, discriminator: 7)
!3124 = !DILocation(line: 40, column: 59, scope: !885)
!3125 = !DILocation(line: 40, column: 64, scope: !885)
!3126 = !DILocation(line: 40, column: 5, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3128, file: !385, discriminator: 8)
!3128 = !DILexicalBlockFile(scope: !3129, file: !385, discriminator: 6)
!3129 = !DILexicalBlockFile(scope: !3130, file: !385, discriminator: 4)
!3130 = !DILexicalBlockFile(scope: !885, file: !385, discriminator: 2)
!3131 = !DILocation(line: 41, column: 12, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !885, file: !385, line: 40, column: 73)
!3133 = !DILocation(line: 44, column: 10, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !885, file: !385, line: 44, column: 9)
!3135 = !DILocation(line: 44, column: 9, scope: !3134)
!3136 = !DILocation(line: 44, column: 14, scope: !3134)
!3137 = !DILocation(line: 44, column: 9, scope: !885)
!3138 = !DILocation(line: 45, column: 9, scope: !3134)
!3139 = !DILocation(line: 47, column: 11, scope: !885)
!3140 = !DILocation(line: 47, column: 9, scope: !885)
!3141 = !DILocation(line: 48, column: 6, scope: !885)
!3142 = !DILocation(line: 48, column: 10, scope: !885)
!3143 = !DILocation(line: 49, column: 5, scope: !885)
!3144 = !DILocation(line: 49, column: 48, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3108, file: !385, discriminator: 4)
!3146 = !DILocation(line: 49, column: 47, scope: !885)
!3147 = !DILocation(line: 49, column: 46, scope: !885)
!3148 = !DILocation(line: 49, column: 53, scope: !885)
!3149 = !DILocation(line: 49, column: 30, scope: !885)
!3150 = !DILocation(line: 49, column: 13, scope: !885)
!3151 = !DILocation(line: 49, column: 63, scope: !885)
!3152 = !DILocation(line: 49, column: 78, scope: !885)
!3153 = !DILocation(line: 49, column: 81, scope: !3130)
!3154 = !DILocation(line: 49, column: 87, scope: !885)
!3155 = !DILocation(line: 49, column: 85, scope: !885)
!3156 = !DILocation(line: 49, column: 91, scope: !885)
!3157 = !DILocation(line: 49, column: 5, scope: !3113)
!3158 = !DILocation(line: 50, column: 59, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !885, file: !385, line: 49, column: 110)
!3160 = !DILocation(line: 50, column: 55, scope: !3159)
!3161 = !DILocation(line: 50, column: 54, scope: !3159)
!3162 = !DILocation(line: 50, column: 63, scope: !3159)
!3163 = !DILocation(line: 50, column: 38, scope: !3159)
!3164 = !DILocation(line: 50, column: 19, scope: !3159)
!3165 = !DILocation(line: 50, column: 13, scope: !3159)
!3166 = !DILocation(line: 50, column: 16, scope: !3159)
!3167 = !DILocation(line: 53, column: 6, scope: !885)
!3168 = !DILocation(line: 53, column: 10, scope: !885)
!3169 = !DILocation(line: 55, column: 27, scope: !895)
!3170 = !DILocation(line: 55, column: 34, scope: !895)
!3171 = !DILocation(line: 55, column: 44, scope: !895)
!3172 = !DILocation(line: 55, column: 1363, scope: !895)
!3173 = !DILocation(line: 55, column: 1376, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !895, file: !385, discriminator: 1)
!3175 = !DILocation(line: 55, column: 1397, scope: !895)
!3176 = !DILocation(line: 55, column: 1406, scope: !895)
!3177 = !DILocation(line: 55, column: 1247, scope: !895)
!3178 = !DILocation(line: 55, column: 1570, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !899, file: !385, discriminator: 3)
!3180 = !DILocation(line: 55, column: 1591, scope: !899)
!3181 = !DILocation(line: 55, column: 1637, scope: !899)
!3182 = !DILocation(line: 55, column: 1644, scope: !899)
!3183 = !DILocation(line: 55, column: 1657, scope: !899)
!3184 = !DILocation(line: 55, column: 1668, scope: !899)
!3185 = !DILocation(line: 55, column: 1678, scope: !899)
!3186 = !DILocation(line: 55, column: 1676, scope: !899)
!3187 = !DILocation(line: 55, column: 1738, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !899, file: !385, line: 55, column: 1738)
!3189 = !DILocation(line: 55, column: 1747, scope: !3188)
!3190 = !DILocation(line: 55, column: 1751, scope: !3188)
!3191 = !DILocation(line: 55, column: 1754, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3188, file: !385, discriminator: 5)
!3193 = !DILocation(line: 55, column: 1763, scope: !3188)
!3194 = !DILocation(line: 55, column: 1738, scope: !899)
!3195 = !DILocation(line: 55, column: 1783, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3197, file: !385, discriminator: 7)
!3197 = distinct !DILexicalBlock(scope: !3188, file: !385, line: 55, column: 1769)
!3198 = !DILocation(line: 55, column: 1793, scope: !3197)
!3199 = !DILocation(line: 55, column: 1791, scope: !3197)
!3200 = !DILocation(line: 55, column: 1780, scope: !3197)
!3201 = !DILocation(line: 55, column: 1854, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !385, line: 55, column: 1854)
!3203 = !DILocation(line: 55, column: 1863, scope: !3202)
!3204 = !DILocation(line: 55, column: 1867, scope: !3202)
!3205 = !DILocation(line: 55, column: 1870, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3202, file: !385, discriminator: 9)
!3207 = !DILocation(line: 55, column: 1879, scope: !3202)
!3208 = !DILocation(line: 55, column: 1854, scope: !3197)
!3209 = !DILocation(line: 55, column: 1899, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !385, discriminator: 11)
!3211 = distinct !DILexicalBlock(scope: !3202, file: !385, line: 55, column: 1885)
!3212 = !DILocation(line: 55, column: 1909, scope: !3211)
!3213 = !DILocation(line: 55, column: 1907, scope: !3211)
!3214 = !DILocation(line: 55, column: 1896, scope: !3211)
!3215 = !DILocation(line: 55, column: 1970, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3211, file: !385, line: 55, column: 1970)
!3217 = !DILocation(line: 55, column: 1979, scope: !3216)
!3218 = !DILocation(line: 55, column: 1983, scope: !3216)
!3219 = !DILocation(line: 55, column: 1986, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3216, file: !385, discriminator: 13)
!3221 = !DILocation(line: 55, column: 1995, scope: !3216)
!3222 = !DILocation(line: 55, column: 1970, scope: !3211)
!3223 = !DILocation(line: 55, column: 2013, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3216, file: !385, discriminator: 15)
!3225 = !DILocation(line: 55, column: 2023, scope: !3216)
!3226 = !DILocation(line: 55, column: 2021, scope: !3216)
!3227 = !DILocation(line: 55, column: 2010, scope: !3216)
!3228 = !DILocation(line: 55, column: 2001, scope: !3216)
!3229 = !DILocation(line: 55, column: 2080, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3231, file: !385, discriminator: 17)
!3231 = !DILexicalBlockFile(scope: !3232, file: !385, discriminator: 16)
!3232 = !DILexicalBlockFile(scope: !3211, file: !385, discriminator: 14)
!3233 = !DILocation(line: 55, column: 2082, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3235, file: !385, discriminator: 18)
!3235 = !DILexicalBlockFile(scope: !3236, file: !385, discriminator: 12)
!3236 = !DILexicalBlockFile(scope: !3197, file: !385, discriminator: 10)
!3237 = !DILocation(line: 55, column: 2084, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3239, file: !385, discriminator: 19)
!3239 = !DILexicalBlockFile(scope: !3240, file: !385, discriminator: 8)
!3240 = !DILexicalBlockFile(scope: !899, file: !385, discriminator: 6)
!3241 = !DILocation(line: 55, column: 1766, scope: !3188)
!3242 = !DILocation(line: 55, column: 2094, scope: !895)
!3243 = !DILocation(line: 55, column: 2094, scope: !899)
!3244 = !DILocation(line: 55, column: 2119, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3246, file: !385, discriminator: 4)
!3246 = !DILexicalBlockFile(scope: !895, file: !385, discriminator: 2)
!3247 = !DILocation(line: 55, column: 2101, scope: !895)
!3248 = !DILocation(line: 55, column: 27, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3250, file: !385, discriminator: 21)
!3250 = !DILexicalBlockFile(scope: !895, file: !385, discriminator: 20)
!3251 = !DILocation(line: 55, column: 2138, scope: !896)
!3252 = !DILocation(line: 55, column: 2138, scope: !895)
!3253 = !DILocation(line: 55, column: 24, scope: !896)
!3254 = !DILocation(line: 55, column: 9, scope: !885)
!3255 = !DILocation(line: 56, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !896, file: !385, line: 55, column: 2142)
!3257 = !DILocation(line: 57, column: 34, scope: !902)
!3258 = !DILocation(line: 57, column: 41, scope: !902)
!3259 = !DILocation(line: 57, column: 51, scope: !902)
!3260 = !DILocation(line: 57, column: 1370, scope: !902)
!3261 = !DILocation(line: 57, column: 1383, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !902, file: !385, discriminator: 1)
!3263 = !DILocation(line: 57, column: 1404, scope: !902)
!3264 = !DILocation(line: 57, column: 1413, scope: !902)
!3265 = !DILocation(line: 57, column: 1254, scope: !902)
!3266 = !DILocation(line: 57, column: 1577, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !906, file: !385, discriminator: 3)
!3268 = !DILocation(line: 57, column: 1598, scope: !906)
!3269 = !DILocation(line: 57, column: 1644, scope: !906)
!3270 = !DILocation(line: 57, column: 1651, scope: !906)
!3271 = !DILocation(line: 57, column: 1664, scope: !906)
!3272 = !DILocation(line: 57, column: 1675, scope: !906)
!3273 = !DILocation(line: 57, column: 1685, scope: !906)
!3274 = !DILocation(line: 57, column: 1683, scope: !906)
!3275 = !DILocation(line: 57, column: 1745, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !906, file: !385, line: 57, column: 1745)
!3277 = !DILocation(line: 57, column: 1754, scope: !3276)
!3278 = !DILocation(line: 57, column: 1758, scope: !3276)
!3279 = !DILocation(line: 57, column: 1761, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3276, file: !385, discriminator: 5)
!3281 = !DILocation(line: 57, column: 1770, scope: !3276)
!3282 = !DILocation(line: 57, column: 1745, scope: !906)
!3283 = !DILocation(line: 57, column: 1790, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3285, file: !385, discriminator: 7)
!3285 = distinct !DILexicalBlock(scope: !3276, file: !385, line: 57, column: 1776)
!3286 = !DILocation(line: 57, column: 1800, scope: !3285)
!3287 = !DILocation(line: 57, column: 1798, scope: !3285)
!3288 = !DILocation(line: 57, column: 1787, scope: !3285)
!3289 = !DILocation(line: 57, column: 1861, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3285, file: !385, line: 57, column: 1861)
!3291 = !DILocation(line: 57, column: 1870, scope: !3290)
!3292 = !DILocation(line: 57, column: 1874, scope: !3290)
!3293 = !DILocation(line: 57, column: 1877, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3290, file: !385, discriminator: 9)
!3295 = !DILocation(line: 57, column: 1886, scope: !3290)
!3296 = !DILocation(line: 57, column: 1861, scope: !3285)
!3297 = !DILocation(line: 57, column: 1906, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !3299, file: !385, discriminator: 11)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !385, line: 57, column: 1892)
!3300 = !DILocation(line: 57, column: 1916, scope: !3299)
!3301 = !DILocation(line: 57, column: 1914, scope: !3299)
!3302 = !DILocation(line: 57, column: 1903, scope: !3299)
!3303 = !DILocation(line: 57, column: 1977, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3299, file: !385, line: 57, column: 1977)
!3305 = !DILocation(line: 57, column: 1986, scope: !3304)
!3306 = !DILocation(line: 57, column: 1990, scope: !3304)
!3307 = !DILocation(line: 57, column: 1993, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3304, file: !385, discriminator: 13)
!3309 = !DILocation(line: 57, column: 2002, scope: !3304)
!3310 = !DILocation(line: 57, column: 1977, scope: !3299)
!3311 = !DILocation(line: 57, column: 2020, scope: !3312)
!3312 = !DILexicalBlockFile(scope: !3304, file: !385, discriminator: 15)
!3313 = !DILocation(line: 57, column: 2030, scope: !3304)
!3314 = !DILocation(line: 57, column: 2028, scope: !3304)
!3315 = !DILocation(line: 57, column: 2017, scope: !3304)
!3316 = !DILocation(line: 57, column: 2008, scope: !3304)
!3317 = !DILocation(line: 57, column: 2087, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3319, file: !385, discriminator: 17)
!3319 = !DILexicalBlockFile(scope: !3320, file: !385, discriminator: 16)
!3320 = !DILexicalBlockFile(scope: !3299, file: !385, discriminator: 14)
!3321 = !DILocation(line: 57, column: 2089, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3323, file: !385, discriminator: 18)
!3323 = !DILexicalBlockFile(scope: !3324, file: !385, discriminator: 12)
!3324 = !DILexicalBlockFile(scope: !3285, file: !385, discriminator: 10)
!3325 = !DILocation(line: 57, column: 2091, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !3327, file: !385, discriminator: 19)
!3327 = !DILexicalBlockFile(scope: !3328, file: !385, discriminator: 8)
!3328 = !DILexicalBlockFile(scope: !906, file: !385, discriminator: 6)
!3329 = !DILocation(line: 57, column: 1773, scope: !3276)
!3330 = !DILocation(line: 57, column: 2101, scope: !902)
!3331 = !DILocation(line: 57, column: 2101, scope: !906)
!3332 = !DILocation(line: 57, column: 2126, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3334, file: !385, discriminator: 4)
!3334 = !DILexicalBlockFile(scope: !902, file: !385, discriminator: 2)
!3335 = !DILocation(line: 57, column: 2108, scope: !902)
!3336 = !DILocation(line: 57, column: 34, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3338, file: !385, discriminator: 21)
!3338 = !DILexicalBlockFile(scope: !902, file: !385, discriminator: 20)
!3339 = !DILocation(line: 57, column: 2145, scope: !903)
!3340 = !DILocation(line: 57, column: 2145, scope: !902)
!3341 = !DILocation(line: 57, column: 31, scope: !903)
!3342 = !DILocation(line: 57, column: 16, scope: !896)
!3343 = !DILocation(line: 58, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !903, file: !385, line: 57, column: 2149)
!3345 = !DILocation(line: 59, column: 34, scope: !909)
!3346 = !DILocation(line: 59, column: 41, scope: !909)
!3347 = !DILocation(line: 59, column: 51, scope: !909)
!3348 = !DILocation(line: 59, column: 1370, scope: !909)
!3349 = !DILocation(line: 59, column: 1383, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !909, file: !385, discriminator: 1)
!3351 = !DILocation(line: 59, column: 1404, scope: !909)
!3352 = !DILocation(line: 59, column: 1413, scope: !909)
!3353 = !DILocation(line: 59, column: 1254, scope: !909)
!3354 = !DILocation(line: 59, column: 1577, scope: !3355)
!3355 = !DILexicalBlockFile(scope: !913, file: !385, discriminator: 3)
!3356 = !DILocation(line: 59, column: 1598, scope: !913)
!3357 = !DILocation(line: 59, column: 1644, scope: !913)
!3358 = !DILocation(line: 59, column: 1651, scope: !913)
!3359 = !DILocation(line: 59, column: 1664, scope: !913)
!3360 = !DILocation(line: 59, column: 1675, scope: !913)
!3361 = !DILocation(line: 59, column: 1685, scope: !913)
!3362 = !DILocation(line: 59, column: 1683, scope: !913)
!3363 = !DILocation(line: 59, column: 1745, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !913, file: !385, line: 59, column: 1745)
!3365 = !DILocation(line: 59, column: 1754, scope: !3364)
!3366 = !DILocation(line: 59, column: 1758, scope: !3364)
!3367 = !DILocation(line: 59, column: 1761, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3364, file: !385, discriminator: 5)
!3369 = !DILocation(line: 59, column: 1770, scope: !3364)
!3370 = !DILocation(line: 59, column: 1745, scope: !913)
!3371 = !DILocation(line: 59, column: 1790, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3373, file: !385, discriminator: 7)
!3373 = distinct !DILexicalBlock(scope: !3364, file: !385, line: 59, column: 1776)
!3374 = !DILocation(line: 59, column: 1800, scope: !3373)
!3375 = !DILocation(line: 59, column: 1798, scope: !3373)
!3376 = !DILocation(line: 59, column: 1787, scope: !3373)
!3377 = !DILocation(line: 59, column: 1861, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3373, file: !385, line: 59, column: 1861)
!3379 = !DILocation(line: 59, column: 1870, scope: !3378)
!3380 = !DILocation(line: 59, column: 1874, scope: !3378)
!3381 = !DILocation(line: 59, column: 1877, scope: !3382)
!3382 = !DILexicalBlockFile(scope: !3378, file: !385, discriminator: 9)
!3383 = !DILocation(line: 59, column: 1886, scope: !3378)
!3384 = !DILocation(line: 59, column: 1861, scope: !3373)
!3385 = !DILocation(line: 59, column: 1906, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3387, file: !385, discriminator: 11)
!3387 = distinct !DILexicalBlock(scope: !3378, file: !385, line: 59, column: 1892)
!3388 = !DILocation(line: 59, column: 1916, scope: !3387)
!3389 = !DILocation(line: 59, column: 1914, scope: !3387)
!3390 = !DILocation(line: 59, column: 1903, scope: !3387)
!3391 = !DILocation(line: 59, column: 1977, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3387, file: !385, line: 59, column: 1977)
!3393 = !DILocation(line: 59, column: 1986, scope: !3392)
!3394 = !DILocation(line: 59, column: 1990, scope: !3392)
!3395 = !DILocation(line: 59, column: 1993, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3392, file: !385, discriminator: 13)
!3397 = !DILocation(line: 59, column: 2002, scope: !3392)
!3398 = !DILocation(line: 59, column: 1977, scope: !3387)
!3399 = !DILocation(line: 59, column: 2020, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3392, file: !385, discriminator: 15)
!3401 = !DILocation(line: 59, column: 2030, scope: !3392)
!3402 = !DILocation(line: 59, column: 2028, scope: !3392)
!3403 = !DILocation(line: 59, column: 2017, scope: !3392)
!3404 = !DILocation(line: 59, column: 2008, scope: !3392)
!3405 = !DILocation(line: 59, column: 2087, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3407, file: !385, discriminator: 17)
!3407 = !DILexicalBlockFile(scope: !3408, file: !385, discriminator: 16)
!3408 = !DILexicalBlockFile(scope: !3387, file: !385, discriminator: 14)
!3409 = !DILocation(line: 59, column: 2089, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3411, file: !385, discriminator: 18)
!3411 = !DILexicalBlockFile(scope: !3412, file: !385, discriminator: 12)
!3412 = !DILexicalBlockFile(scope: !3373, file: !385, discriminator: 10)
!3413 = !DILocation(line: 59, column: 2091, scope: !3414)
!3414 = !DILexicalBlockFile(scope: !3415, file: !385, discriminator: 19)
!3415 = !DILexicalBlockFile(scope: !3416, file: !385, discriminator: 8)
!3416 = !DILexicalBlockFile(scope: !913, file: !385, discriminator: 6)
!3417 = !DILocation(line: 59, column: 1773, scope: !3364)
!3418 = !DILocation(line: 59, column: 2101, scope: !909)
!3419 = !DILocation(line: 59, column: 2101, scope: !913)
!3420 = !DILocation(line: 59, column: 2126, scope: !3421)
!3421 = !DILexicalBlockFile(scope: !3422, file: !385, discriminator: 4)
!3422 = !DILexicalBlockFile(scope: !909, file: !385, discriminator: 2)
!3423 = !DILocation(line: 59, column: 2108, scope: !909)
!3424 = !DILocation(line: 59, column: 34, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3426, file: !385, discriminator: 21)
!3426 = !DILexicalBlockFile(scope: !909, file: !385, discriminator: 20)
!3427 = !DILocation(line: 59, column: 2145, scope: !910)
!3428 = !DILocation(line: 59, column: 2145, scope: !909)
!3429 = !DILocation(line: 59, column: 31, scope: !910)
!3430 = !DILocation(line: 59, column: 16, scope: !903)
!3431 = !DILocation(line: 60, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !910, file: !385, line: 59, column: 2149)
!3433 = !DILocation(line: 61, column: 34, scope: !916)
!3434 = !DILocation(line: 61, column: 41, scope: !916)
!3435 = !DILocation(line: 61, column: 51, scope: !916)
!3436 = !DILocation(line: 61, column: 1370, scope: !916)
!3437 = !DILocation(line: 61, column: 1383, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !916, file: !385, discriminator: 1)
!3439 = !DILocation(line: 61, column: 1404, scope: !916)
!3440 = !DILocation(line: 61, column: 1413, scope: !916)
!3441 = !DILocation(line: 61, column: 1254, scope: !916)
!3442 = !DILocation(line: 61, column: 1577, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !920, file: !385, discriminator: 3)
!3444 = !DILocation(line: 61, column: 1598, scope: !920)
!3445 = !DILocation(line: 61, column: 1644, scope: !920)
!3446 = !DILocation(line: 61, column: 1651, scope: !920)
!3447 = !DILocation(line: 61, column: 1664, scope: !920)
!3448 = !DILocation(line: 61, column: 1675, scope: !920)
!3449 = !DILocation(line: 61, column: 1685, scope: !920)
!3450 = !DILocation(line: 61, column: 1683, scope: !920)
!3451 = !DILocation(line: 61, column: 1745, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !920, file: !385, line: 61, column: 1745)
!3453 = !DILocation(line: 61, column: 1754, scope: !3452)
!3454 = !DILocation(line: 61, column: 1758, scope: !3452)
!3455 = !DILocation(line: 61, column: 1761, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3452, file: !385, discriminator: 5)
!3457 = !DILocation(line: 61, column: 1770, scope: !3452)
!3458 = !DILocation(line: 61, column: 1745, scope: !920)
!3459 = !DILocation(line: 61, column: 1790, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3461, file: !385, discriminator: 7)
!3461 = distinct !DILexicalBlock(scope: !3452, file: !385, line: 61, column: 1776)
!3462 = !DILocation(line: 61, column: 1800, scope: !3461)
!3463 = !DILocation(line: 61, column: 1798, scope: !3461)
!3464 = !DILocation(line: 61, column: 1787, scope: !3461)
!3465 = !DILocation(line: 61, column: 1861, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !385, line: 61, column: 1861)
!3467 = !DILocation(line: 61, column: 1870, scope: !3466)
!3468 = !DILocation(line: 61, column: 1874, scope: !3466)
!3469 = !DILocation(line: 61, column: 1877, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3466, file: !385, discriminator: 9)
!3471 = !DILocation(line: 61, column: 1886, scope: !3466)
!3472 = !DILocation(line: 61, column: 1861, scope: !3461)
!3473 = !DILocation(line: 61, column: 1906, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3475, file: !385, discriminator: 11)
!3475 = distinct !DILexicalBlock(scope: !3466, file: !385, line: 61, column: 1892)
!3476 = !DILocation(line: 61, column: 1916, scope: !3475)
!3477 = !DILocation(line: 61, column: 1914, scope: !3475)
!3478 = !DILocation(line: 61, column: 1903, scope: !3475)
!3479 = !DILocation(line: 61, column: 1977, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3475, file: !385, line: 61, column: 1977)
!3481 = !DILocation(line: 61, column: 1986, scope: !3480)
!3482 = !DILocation(line: 61, column: 1990, scope: !3480)
!3483 = !DILocation(line: 61, column: 1993, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3480, file: !385, discriminator: 13)
!3485 = !DILocation(line: 61, column: 2002, scope: !3480)
!3486 = !DILocation(line: 61, column: 1977, scope: !3475)
!3487 = !DILocation(line: 61, column: 2020, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3480, file: !385, discriminator: 15)
!3489 = !DILocation(line: 61, column: 2030, scope: !3480)
!3490 = !DILocation(line: 61, column: 2028, scope: !3480)
!3491 = !DILocation(line: 61, column: 2017, scope: !3480)
!3492 = !DILocation(line: 61, column: 2008, scope: !3480)
!3493 = !DILocation(line: 61, column: 2087, scope: !3494)
!3494 = !DILexicalBlockFile(scope: !3495, file: !385, discriminator: 17)
!3495 = !DILexicalBlockFile(scope: !3496, file: !385, discriminator: 16)
!3496 = !DILexicalBlockFile(scope: !3475, file: !385, discriminator: 14)
!3497 = !DILocation(line: 61, column: 2089, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3499, file: !385, discriminator: 18)
!3499 = !DILexicalBlockFile(scope: !3500, file: !385, discriminator: 12)
!3500 = !DILexicalBlockFile(scope: !3461, file: !385, discriminator: 10)
!3501 = !DILocation(line: 61, column: 2091, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3503, file: !385, discriminator: 19)
!3503 = !DILexicalBlockFile(scope: !3504, file: !385, discriminator: 8)
!3504 = !DILexicalBlockFile(scope: !920, file: !385, discriminator: 6)
!3505 = !DILocation(line: 61, column: 1773, scope: !3452)
!3506 = !DILocation(line: 61, column: 2101, scope: !916)
!3507 = !DILocation(line: 61, column: 2101, scope: !920)
!3508 = !DILocation(line: 61, column: 2126, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3510, file: !385, discriminator: 4)
!3510 = !DILexicalBlockFile(scope: !916, file: !385, discriminator: 2)
!3511 = !DILocation(line: 61, column: 2108, scope: !916)
!3512 = !DILocation(line: 61, column: 34, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3514, file: !385, discriminator: 21)
!3514 = !DILexicalBlockFile(scope: !916, file: !385, discriminator: 20)
!3515 = !DILocation(line: 61, column: 2145, scope: !917)
!3516 = !DILocation(line: 61, column: 2145, scope: !916)
!3517 = !DILocation(line: 61, column: 31, scope: !917)
!3518 = !DILocation(line: 61, column: 16, scope: !910)
!3519 = !DILocation(line: 62, column: 9, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !917, file: !385, line: 61, column: 2149)
!3521 = !DILocation(line: 63, column: 34, scope: !923)
!3522 = !DILocation(line: 63, column: 41, scope: !923)
!3523 = !DILocation(line: 63, column: 51, scope: !923)
!3524 = !DILocation(line: 63, column: 1383, scope: !923)
!3525 = !DILocation(line: 63, column: 1396, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !923, file: !385, discriminator: 1)
!3527 = !DILocation(line: 63, column: 1418, scope: !923)
!3528 = !DILocation(line: 63, column: 1427, scope: !923)
!3529 = !DILocation(line: 63, column: 1264, scope: !923)
!3530 = !DILocation(line: 63, column: 1592, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !927, file: !385, discriminator: 3)
!3532 = !DILocation(line: 63, column: 1613, scope: !927)
!3533 = !DILocation(line: 63, column: 1659, scope: !927)
!3534 = !DILocation(line: 63, column: 1666, scope: !927)
!3535 = !DILocation(line: 63, column: 1679, scope: !927)
!3536 = !DILocation(line: 63, column: 1690, scope: !927)
!3537 = !DILocation(line: 63, column: 1700, scope: !927)
!3538 = !DILocation(line: 63, column: 1698, scope: !927)
!3539 = !DILocation(line: 63, column: 1761, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !927, file: !385, line: 63, column: 1761)
!3541 = !DILocation(line: 63, column: 1770, scope: !3540)
!3542 = !DILocation(line: 63, column: 1774, scope: !3540)
!3543 = !DILocation(line: 63, column: 1777, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !3540, file: !385, discriminator: 5)
!3545 = !DILocation(line: 63, column: 1786, scope: !3540)
!3546 = !DILocation(line: 63, column: 1761, scope: !927)
!3547 = !DILocation(line: 63, column: 1806, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3549, file: !385, discriminator: 7)
!3549 = distinct !DILexicalBlock(scope: !3540, file: !385, line: 63, column: 1792)
!3550 = !DILocation(line: 63, column: 1816, scope: !3549)
!3551 = !DILocation(line: 63, column: 1814, scope: !3549)
!3552 = !DILocation(line: 63, column: 1803, scope: !3549)
!3553 = !DILocation(line: 63, column: 1878, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !385, line: 63, column: 1878)
!3555 = !DILocation(line: 63, column: 1887, scope: !3554)
!3556 = !DILocation(line: 63, column: 1891, scope: !3554)
!3557 = !DILocation(line: 63, column: 1894, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3554, file: !385, discriminator: 9)
!3559 = !DILocation(line: 63, column: 1903, scope: !3554)
!3560 = !DILocation(line: 63, column: 1878, scope: !3549)
!3561 = !DILocation(line: 63, column: 1923, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3563, file: !385, discriminator: 11)
!3563 = distinct !DILexicalBlock(scope: !3554, file: !385, line: 63, column: 1909)
!3564 = !DILocation(line: 63, column: 1933, scope: !3563)
!3565 = !DILocation(line: 63, column: 1931, scope: !3563)
!3566 = !DILocation(line: 63, column: 1920, scope: !3563)
!3567 = !DILocation(line: 63, column: 1995, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3563, file: !385, line: 63, column: 1995)
!3569 = !DILocation(line: 63, column: 2004, scope: !3568)
!3570 = !DILocation(line: 63, column: 2008, scope: !3568)
!3571 = !DILocation(line: 63, column: 2011, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !3568, file: !385, discriminator: 13)
!3573 = !DILocation(line: 63, column: 2020, scope: !3568)
!3574 = !DILocation(line: 63, column: 1995, scope: !3563)
!3575 = !DILocation(line: 63, column: 2038, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3568, file: !385, discriminator: 15)
!3577 = !DILocation(line: 63, column: 2048, scope: !3568)
!3578 = !DILocation(line: 63, column: 2046, scope: !3568)
!3579 = !DILocation(line: 63, column: 2035, scope: !3568)
!3580 = !DILocation(line: 63, column: 2026, scope: !3568)
!3581 = !DILocation(line: 63, column: 2106, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3583, file: !385, discriminator: 17)
!3583 = !DILexicalBlockFile(scope: !3584, file: !385, discriminator: 16)
!3584 = !DILexicalBlockFile(scope: !3563, file: !385, discriminator: 14)
!3585 = !DILocation(line: 63, column: 2108, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3587, file: !385, discriminator: 18)
!3587 = !DILexicalBlockFile(scope: !3588, file: !385, discriminator: 12)
!3588 = !DILexicalBlockFile(scope: !3549, file: !385, discriminator: 10)
!3589 = !DILocation(line: 63, column: 2110, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3591, file: !385, discriminator: 19)
!3591 = !DILexicalBlockFile(scope: !3592, file: !385, discriminator: 8)
!3592 = !DILexicalBlockFile(scope: !927, file: !385, discriminator: 6)
!3593 = !DILocation(line: 63, column: 1789, scope: !3540)
!3594 = !DILocation(line: 63, column: 2120, scope: !923)
!3595 = !DILocation(line: 63, column: 2120, scope: !927)
!3596 = !DILocation(line: 63, column: 2145, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3598, file: !385, discriminator: 4)
!3598 = !DILexicalBlockFile(scope: !923, file: !385, discriminator: 2)
!3599 = !DILocation(line: 63, column: 2127, scope: !923)
!3600 = !DILocation(line: 63, column: 34, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3602, file: !385, discriminator: 21)
!3602 = !DILexicalBlockFile(scope: !923, file: !385, discriminator: 20)
!3603 = !DILocation(line: 63, column: 2165, scope: !924)
!3604 = !DILocation(line: 63, column: 2165, scope: !923)
!3605 = !DILocation(line: 63, column: 31, scope: !924)
!3606 = !DILocation(line: 63, column: 16, scope: !917)
!3607 = !DILocation(line: 64, column: 9, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !924, file: !385, line: 63, column: 2169)
!3609 = !DILocation(line: 66, column: 9, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !924, file: !385, line: 65, column: 12)
!3611 = !DILocation(line: 68, column: 1, scope: !885)
!3612 = !DILocation(line: 747, column: 52, scope: !755)
!3613 = !DILocation(line: 747, column: 68, scope: !755)
!3614 = !DILocation(line: 749, column: 36, scope: !755)
!3615 = !DILocation(line: 749, column: 45, scope: !755)
!3616 = !DILocation(line: 749, column: 12, scope: !755)
!3617 = !DILocation(line: 749, column: 5, scope: !755)
!3618 = !DILocation(line: 752, column: 56, scope: !761)
!3619 = !DILocation(line: 752, column: 72, scope: !761)
!3620 = !DILocation(line: 754, column: 36, scope: !761)
!3621 = !DILocation(line: 754, column: 45, scope: !761)
!3622 = !DILocation(line: 754, column: 12, scope: !761)
!3623 = !DILocation(line: 754, column: 5, scope: !761)
!3624 = !DILocation(line: 757, column: 58, scope: !765)
!3625 = !DILocation(line: 757, column: 74, scope: !765)
!3626 = !DILocation(line: 759, column: 5, scope: !765)
!3627 = !DILocation(line: 759, column: 15, scope: !765)
!3628 = !DILocation(line: 760, column: 5, scope: !765)
!3629 = !DILocation(line: 760, column: 15, scope: !765)
!3630 = !DILocation(line: 761, column: 5, scope: !765)
!3631 = !DILocation(line: 761, column: 17, scope: !765)
!3632 = !DILocation(line: 762, column: 5, scope: !765)
!3633 = !DILocation(line: 762, column: 19, scope: !765)
!3634 = !DILocation(line: 763, column: 5, scope: !765)
!3635 = !DILocation(line: 763, column: 9, scope: !765)
!3636 = !DILocation(line: 764, column: 5, scope: !765)
!3637 = !DILocation(line: 764, column: 15, scope: !765)
!3638 = !DILocation(line: 766, column: 27, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !765, file: !385, line: 766, column: 9)
!3640 = !DILocation(line: 766, column: 10, scope: !3639)
!3641 = !DILocation(line: 766, column: 9, scope: !765)
!3642 = !DILocation(line: 767, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !385, line: 766, column: 52)
!3644 = !DILocation(line: 770, column: 23, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !765, file: !385, line: 770, column: 9)
!3646 = !DILocation(line: 770, column: 10, scope: !3645)
!3647 = !DILocation(line: 770, column: 9, scope: !765)
!3648 = !DILocation(line: 771, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !385, line: 770, column: 30)
!3650 = !DILocation(line: 774, column: 5, scope: !765)
!3651 = !DILocation(line: 774, column: 11, scope: !765)
!3652 = !DILocation(line: 774, column: 17, scope: !765)
!3653 = !DILocation(line: 776, column: 26, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !765, file: !385, line: 776, column: 9)
!3655 = !DILocation(line: 776, column: 40, scope: !3654)
!3656 = !DILocation(line: 776, column: 51, scope: !3654)
!3657 = !DILocation(line: 776, column: 60, scope: !3654)
!3658 = !DILocation(line: 776, column: 77, scope: !3654)
!3659 = !DILocation(line: 776, column: 9, scope: !765)
!3660 = !DILocation(line: 777, column: 40, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3654, file: !385, line: 776, column: 84)
!3662 = !DILocation(line: 777, column: 23, scope: !3661)
!3663 = !DILocation(line: 777, column: 21, scope: !3661)
!3664 = !DILocation(line: 778, column: 14, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !385, line: 778, column: 13)
!3666 = !DILocation(line: 778, column: 13, scope: !3661)
!3667 = !DILocation(line: 779, column: 13, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !385, line: 778, column: 27)
!3669 = !DILocation(line: 781, column: 5, scope: !3661)
!3670 = !DILocation(line: 782, column: 25, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3654, file: !385, line: 781, column: 12)
!3672 = !DILocation(line: 782, column: 9, scope: !3671)
!3673 = !DILocation(line: 783, column: 9, scope: !3671)
!3674 = !DILocation(line: 787, column: 41, scope: !765)
!3675 = !DILocation(line: 787, column: 47, scope: !765)
!3676 = !DILocation(line: 787, column: 14, scope: !765)
!3677 = !DILocation(line: 787, column: 12, scope: !765)
!3678 = !DILocation(line: 788, column: 10, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !765, file: !385, line: 788, column: 9)
!3680 = !DILocation(line: 788, column: 9, scope: !765)
!3681 = !DILocation(line: 789, column: 9, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3679, file: !385, line: 788, column: 18)
!3683 = !DILocation(line: 791, column: 5, scope: !765)
!3684 = !DILocation(line: 791, column: 10, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !776, file: !385, discriminator: 1)
!3686 = !DILocation(line: 791, column: 20, scope: !776)
!3687 = !DILocation(line: 791, column: 50, scope: !776)
!3688 = !DILocation(line: 791, column: 67, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !776, file: !385, line: 791, column: 64)
!3690 = !DILocation(line: 791, column: 84, scope: !3689)
!3691 = !DILocation(line: 791, column: 64, scope: !3689)
!3692 = !DILocation(line: 791, column: 94, scope: !3689)
!3693 = !DILocation(line: 791, column: 64, scope: !776)
!3694 = !DILocation(line: 791, column: 64, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !776, file: !385, discriminator: 2)
!3696 = !DILocation(line: 791, column: 125, scope: !3697)
!3697 = !DILexicalBlockFile(scope: !3689, file: !385, discriminator: 3)
!3698 = !DILocation(line: 791, column: 143, scope: !3689)
!3699 = !DILocation(line: 791, column: 153, scope: !3689)
!3700 = !DILocation(line: 791, column: 178, scope: !3689)
!3701 = !DILocation(line: 791, column: 109, scope: !3689)
!3702 = !DILocation(line: 791, column: 197, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !765, file: !385, discriminator: 4)
!3704 = !DILocation(line: 791, column: 197, scope: !776)
!3705 = !DILocation(line: 791, column: 197, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !776, file: !385, discriminator: 5)
!3707 = !DILocation(line: 793, column: 5, scope: !765)
!3708 = !DILocation(line: 793, column: 5, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3710, file: !385, discriminator: 2)
!3710 = !DILexicalBlockFile(scope: !765, file: !385, discriminator: 1)
!3711 = !DILocation(line: 794, column: 11, scope: !778)
!3712 = !DILocation(line: 794, column: 26, scope: !778)
!3713 = !DILocation(line: 794, column: 41, scope: !778)
!3714 = !DILocation(line: 794, column: 39, scope: !778)
!3715 = !DILocation(line: 795, column: 30, scope: !778)
!3716 = !DILocation(line: 795, column: 36, scope: !778)
!3717 = !DILocation(line: 795, column: 48, scope: !778)
!3718 = !DILocation(line: 796, column: 30, scope: !778)
!3719 = !DILocation(line: 795, column: 14, scope: !778)
!3720 = !DILocation(line: 795, column: 12, scope: !778)
!3721 = !DILocation(line: 800, column: 30, scope: !778)
!3722 = !DILocation(line: 800, column: 9, scope: !778)
!3723 = !DILocation(line: 800, column: 38, scope: !779)
!3724 = !DILocation(line: 801, column: 13, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !779, file: !385, line: 801, column: 13)
!3726 = !DILocation(line: 801, column: 16, scope: !3725)
!3727 = !DILocation(line: 801, column: 13, scope: !779)
!3728 = !DILocation(line: 802, column: 32, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !385, line: 801, column: 22)
!3730 = !DILocation(line: 802, column: 38, scope: !3729)
!3731 = !DILocation(line: 802, column: 50, scope: !3729)
!3732 = !DILocation(line: 802, column: 13, scope: !3729)
!3733 = !DILocation(line: 803, column: 13, scope: !3729)
!3734 = !DILocation(line: 807, column: 12, scope: !779)
!3735 = !DILocation(line: 808, column: 9, scope: !779)
!3736 = !DILocation(line: 808, column: 16, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3738, file: !385, discriminator: 2)
!3738 = !DILexicalBlockFile(scope: !779, file: !385, discriminator: 1)
!3739 = !DILocation(line: 808, column: 19, scope: !779)
!3740 = !DILocation(line: 809, column: 32, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !779, file: !385, line: 808, column: 27)
!3742 = !DILocation(line: 809, column: 43, scope: !3741)
!3743 = !DILocation(line: 809, column: 49, scope: !3741)
!3744 = !DILocation(line: 809, column: 18, scope: !3741)
!3745 = !DILocation(line: 809, column: 16, scope: !3741)
!3746 = !DILocation(line: 813, column: 13, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !779, file: !385, line: 813, column: 13)
!3748 = !DILocation(line: 813, column: 16, scope: !3747)
!3749 = !DILocation(line: 813, column: 13, scope: !779)
!3750 = !DILocation(line: 814, column: 36, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !385, line: 813, column: 24)
!3752 = !DILocation(line: 814, column: 19, scope: !3751)
!3753 = !DILocation(line: 815, column: 32, scope: !3751)
!3754 = !DILocation(line: 815, column: 38, scope: !3751)
!3755 = !DILocation(line: 815, column: 50, scope: !3751)
!3756 = !DILocation(line: 815, column: 13, scope: !3751)
!3757 = !DILocation(line: 816, column: 13, scope: !3751)
!3758 = !DILocation(line: 819, column: 31, scope: !779)
!3759 = !DILocation(line: 819, column: 14, scope: !779)
!3760 = !DILocation(line: 819, column: 12, scope: !779)
!3761 = !DILocation(line: 820, column: 13, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !779, file: !385, line: 820, column: 13)
!3763 = !DILocation(line: 820, column: 16, scope: !3762)
!3764 = !DILocation(line: 820, column: 13, scope: !779)
!3765 = !DILocation(line: 821, column: 32, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !385, line: 820, column: 22)
!3767 = !DILocation(line: 821, column: 38, scope: !3766)
!3768 = !DILocation(line: 821, column: 50, scope: !3766)
!3769 = !DILocation(line: 821, column: 13, scope: !3766)
!3770 = !DILocation(line: 822, column: 13, scope: !3766)
!3771 = !DILocation(line: 825, column: 14, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !779, file: !385, line: 825, column: 13)
!3773 = !DILocation(line: 825, column: 13, scope: !3772)
!3774 = !DILocation(line: 825, column: 26, scope: !3772)
!3775 = !DILocation(line: 825, column: 13, scope: !779)
!3776 = !DILocation(line: 826, column: 13, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3772, file: !385, line: 825, column: 38)
!3778 = !DILocation(line: 831, column: 5, scope: !765)
!3779 = !DILocation(line: 831, column: 10, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !781, file: !385, discriminator: 1)
!3781 = !DILocation(line: 831, column: 20, scope: !781)
!3782 = !DILocation(line: 831, column: 51, scope: !781)
!3783 = !DILocation(line: 831, column: 68, scope: !784)
!3784 = !DILocation(line: 831, column: 84, scope: !784)
!3785 = !DILocation(line: 831, column: 68, scope: !781)
!3786 = !DILocation(line: 831, column: 99, scope: !3787)
!3787 = !DILexicalBlockFile(scope: !784, file: !385, discriminator: 2)
!3788 = !DILocation(line: 831, column: 104, scope: !3789)
!3789 = !DILexicalBlockFile(scope: !783, file: !385, discriminator: 4)
!3790 = !DILocation(line: 831, column: 114, scope: !783)
!3791 = !DILocation(line: 831, column: 144, scope: !783)
!3792 = !DILocation(line: 831, column: 170, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !783, file: !385, line: 831, column: 167)
!3794 = !DILocation(line: 831, column: 187, scope: !3793)
!3795 = !DILocation(line: 831, column: 167, scope: !3793)
!3796 = !DILocation(line: 831, column: 197, scope: !3793)
!3797 = !DILocation(line: 831, column: 167, scope: !783)
!3798 = !DILocation(line: 831, column: 167, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !783, file: !385, discriminator: 5)
!3800 = !DILocation(line: 831, column: 228, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !3793, file: !385, discriminator: 6)
!3802 = !DILocation(line: 831, column: 246, scope: !3793)
!3803 = !DILocation(line: 831, column: 256, scope: !3793)
!3804 = !DILocation(line: 831, column: 281, scope: !3793)
!3805 = !DILocation(line: 831, column: 212, scope: !3793)
!3806 = !DILocation(line: 831, column: 300, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !784, file: !385, discriminator: 7)
!3808 = !DILocation(line: 831, column: 300, scope: !783)
!3809 = !DILocation(line: 831, column: 300, scope: !3810)
!3810 = !DILexicalBlockFile(scope: !783, file: !385, discriminator: 8)
!3811 = !DILocation(line: 831, column: 300, scope: !3812)
!3812 = !DILexicalBlockFile(scope: !783, file: !385, discriminator: 9)
!3813 = !DILocation(line: 831, column: 313, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3815, file: !385, discriminator: 10)
!3815 = !DILexicalBlockFile(scope: !765, file: !385, discriminator: 3)
!3816 = !DILocation(line: 831, column: 313, scope: !781)
!3817 = !DILocation(line: 831, column: 313, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !781, file: !385, discriminator: 11)
!3819 = !DILocation(line: 833, column: 9, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !765, file: !385, line: 833, column: 9)
!3821 = !DILocation(line: 833, column: 9, scope: !765)
!3822 = !DILocation(line: 834, column: 9, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3820, file: !385, line: 833, column: 27)
!3824 = !DILocation(line: 836, column: 25, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3820, file: !385, line: 835, column: 12)
!3826 = !DILocation(line: 836, column: 12, scope: !3825)
!3827 = !DILocation(line: 836, column: 33, scope: !3825)
!3828 = !DILocation(line: 836, column: 42, scope: !3825)
!3829 = !DILocation(line: 837, column: 27, scope: !3825)
!3830 = !DILocation(line: 837, column: 16, scope: !3825)
!3831 = !DILocation(line: 837, column: 9, scope: !3825)
!3832 = !DILocation(line: 839, column: 1, scope: !765)
!3833 = !DILocation(line: 841, column: 52, scope: !785)
!3834 = !DILocation(line: 843, column: 21, scope: !785)
!3835 = !DILocation(line: 843, column: 8, scope: !785)
!3836 = !DILocation(line: 843, column: 29, scope: !785)
!3837 = !DILocation(line: 843, column: 38, scope: !785)
!3838 = !DILocation(line: 844, column: 23, scope: !785)
!3839 = !DILocation(line: 844, column: 12, scope: !785)
!3840 = !DILocation(line: 844, column: 5, scope: !785)
!3841 = !DILocation(line: 847, column: 53, scope: !788)
!3842 = !DILocation(line: 849, column: 5, scope: !788)
!3843 = !DILocation(line: 849, column: 15, scope: !788)
!3844 = !DILocation(line: 850, column: 5, scope: !788)
!3845 = !DILocation(line: 850, column: 15, scope: !788)
!3846 = !DILocation(line: 851, column: 5, scope: !788)
!3847 = !DILocation(line: 851, column: 9, scope: !788)
!3848 = !DILocation(line: 853, column: 23, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !788, file: !385, line: 853, column: 9)
!3850 = !DILocation(line: 853, column: 10, scope: !3849)
!3851 = !DILocation(line: 853, column: 9, scope: !788)
!3852 = !DILocation(line: 854, column: 9, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !385, line: 853, column: 30)
!3854 = !DILocation(line: 857, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !788, file: !385, line: 857, column: 9)
!3856 = !DILocation(line: 857, column: 15, scope: !3855)
!3857 = !DILocation(line: 857, column: 9, scope: !788)
!3858 = !DILocation(line: 858, column: 25, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !385, line: 857, column: 22)
!3860 = !DILocation(line: 858, column: 50, scope: !3859)
!3861 = !DILocation(line: 858, column: 9, scope: !3859)
!3862 = !DILocation(line: 859, column: 9, scope: !3859)
!3863 = !DILocation(line: 862, column: 10, scope: !799)
!3864 = !DILocation(line: 862, column: 16, scope: !799)
!3865 = !DILocation(line: 862, column: 9, scope: !788)
!3866 = !DILocation(line: 863, column: 14, scope: !797)
!3867 = !DILocation(line: 863, column: 20, scope: !797)
!3868 = !DILocation(line: 863, column: 14, scope: !798)
!3869 = !DILocation(line: 864, column: 44, scope: !796)
!3870 = !DILocation(line: 864, column: 50, scope: !796)
!3871 = !DILocation(line: 864, column: 19, scope: !796)
!3872 = !DILocation(line: 865, column: 13, scope: !796)
!3873 = !DILocation(line: 865, column: 18, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !795, file: !385, discriminator: 1)
!3875 = !DILocation(line: 865, column: 28, scope: !795)
!3876 = !DILocation(line: 865, column: 51, scope: !795)
!3877 = !DILocation(line: 865, column: 57, scope: !795)
!3878 = !DILocation(line: 865, column: 38, scope: !795)
!3879 = !DILocation(line: 865, column: 73, scope: !803)
!3880 = !DILocation(line: 865, column: 81, scope: !803)
!3881 = !DILocation(line: 865, column: 73, scope: !795)
!3882 = !DILocation(line: 865, column: 99, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !802, file: !385, discriminator: 2)
!3884 = !DILocation(line: 865, column: 105, scope: !802)
!3885 = !DILocation(line: 865, column: 116, scope: !802)
!3886 = !DILocation(line: 865, column: 130, scope: !802)
!3887 = !DILocation(line: 865, column: 135, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !801, file: !385, discriminator: 4)
!3889 = !DILocation(line: 865, column: 145, scope: !801)
!3890 = !DILocation(line: 865, column: 175, scope: !801)
!3891 = !DILocation(line: 865, column: 193, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !801, file: !385, line: 865, column: 190)
!3893 = !DILocation(line: 865, column: 210, scope: !3892)
!3894 = !DILocation(line: 865, column: 190, scope: !3892)
!3895 = !DILocation(line: 865, column: 220, scope: !3892)
!3896 = !DILocation(line: 865, column: 190, scope: !801)
!3897 = !DILocation(line: 865, column: 190, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !801, file: !385, discriminator: 5)
!3899 = !DILocation(line: 865, column: 251, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3892, file: !385, discriminator: 6)
!3901 = !DILocation(line: 865, column: 269, scope: !3892)
!3902 = !DILocation(line: 865, column: 279, scope: !3892)
!3903 = !DILocation(line: 865, column: 304, scope: !3892)
!3904 = !DILocation(line: 865, column: 235, scope: !3892)
!3905 = !DILocation(line: 865, column: 323, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !802, file: !385, discriminator: 7)
!3907 = !DILocation(line: 865, column: 323, scope: !801)
!3908 = !DILocation(line: 865, column: 323, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !801, file: !385, discriminator: 8)
!3910 = !DILocation(line: 865, column: 336, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !802, file: !385, discriminator: 9)
!3912 = !DILocation(line: 865, column: 338, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !3914, file: !385, discriminator: 10)
!3914 = !DILexicalBlockFile(scope: !796, file: !385, discriminator: 3)
!3915 = !DILocation(line: 865, column: 338, scope: !795)
!3916 = !DILocation(line: 865, column: 338, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !795, file: !385, discriminator: 11)
!3918 = !DILocation(line: 866, column: 9, scope: !796)
!3919 = !DILocation(line: 867, column: 9, scope: !798)
!3920 = !DILocation(line: 870, column: 22, scope: !788)
!3921 = !DILocation(line: 870, column: 28, scope: !788)
!3922 = !DILocation(line: 870, column: 20, scope: !788)
!3923 = !DILocation(line: 872, column: 5, scope: !788)
!3924 = !DILocation(line: 872, column: 11, scope: !788)
!3925 = !DILocation(line: 872, column: 20, scope: !788)
!3926 = !DILocation(line: 874, column: 9, scope: !807)
!3927 = !DILocation(line: 874, column: 15, scope: !807)
!3928 = !{!1087, !1010, i64 64}
!3929 = !DILocation(line: 874, column: 27, scope: !807)
!3930 = !DILocation(line: 874, column: 9, scope: !788)
!3931 = !DILocation(line: 875, column: 42, scope: !806)
!3932 = !DILocation(line: 875, column: 48, scope: !806)
!3933 = !DILocation(line: 875, column: 67, scope: !806)
!3934 = !DILocation(line: 875, column: 73, scope: !806)
!3935 = !DILocation(line: 875, column: 20, scope: !806)
!3936 = !DILocation(line: 875, column: 18, scope: !806)
!3937 = !DILocation(line: 876, column: 13, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !806, file: !385, line: 876, column: 13)
!3939 = !DILocation(line: 876, column: 22, scope: !3938)
!3940 = !DILocation(line: 876, column: 13, scope: !806)
!3941 = !DILocation(line: 877, column: 30, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !385, line: 876, column: 37)
!3943 = !DILocation(line: 877, column: 13, scope: !3942)
!3944 = !DILocation(line: 877, column: 19, scope: !3942)
!3945 = !DILocation(line: 877, column: 28, scope: !3942)
!3946 = !DILocation(line: 878, column: 13, scope: !3942)
!3947 = !DILocation(line: 880, column: 9, scope: !806)
!3948 = !DILocation(line: 880, column: 14, scope: !3949)
!3949 = !DILexicalBlockFile(scope: !805, file: !385, discriminator: 1)
!3950 = !DILocation(line: 880, column: 24, scope: !805)
!3951 = !DILocation(line: 880, column: 54, scope: !805)
!3952 = !DILocation(line: 880, column: 79, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !805, file: !385, line: 880, column: 76)
!3954 = !DILocation(line: 880, column: 96, scope: !3953)
!3955 = !DILocation(line: 880, column: 76, scope: !3953)
!3956 = !DILocation(line: 880, column: 106, scope: !3953)
!3957 = !DILocation(line: 880, column: 76, scope: !805)
!3958 = !DILocation(line: 880, column: 76, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !805, file: !385, discriminator: 2)
!3960 = !DILocation(line: 880, column: 137, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3953, file: !385, discriminator: 3)
!3962 = !DILocation(line: 880, column: 155, scope: !3953)
!3963 = !DILocation(line: 880, column: 165, scope: !3953)
!3964 = !DILocation(line: 880, column: 190, scope: !3953)
!3965 = !DILocation(line: 880, column: 121, scope: !3953)
!3966 = !DILocation(line: 880, column: 209, scope: !3967)
!3967 = !DILexicalBlockFile(scope: !806, file: !385, discriminator: 4)
!3968 = !DILocation(line: 880, column: 209, scope: !805)
!3969 = !DILocation(line: 880, column: 209, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !805, file: !385, discriminator: 5)
!3971 = !DILocation(line: 881, column: 5, scope: !806)
!3972 = !DILocation(line: 882, column: 20, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !807, file: !385, line: 881, column: 12)
!3974 = !DILocation(line: 882, column: 18, scope: !3973)
!3975 = !DILocation(line: 885, column: 9, scope: !813)
!3976 = !DILocation(line: 885, column: 15, scope: !813)
!3977 = !DILocation(line: 885, column: 9, scope: !788)
!3978 = !DILocation(line: 886, column: 28, scope: !812)
!3979 = !DILocation(line: 886, column: 34, scope: !812)
!3980 = !DILocation(line: 886, column: 45, scope: !812)
!3981 = !DILocation(line: 886, column: 49, scope: !812)
!3982 = !DILocation(line: 886, column: 55, scope: !812)
!3983 = !DILocation(line: 886, column: 14, scope: !812)
!3984 = !DILocation(line: 886, column: 12, scope: !812)
!3985 = !DILocation(line: 887, column: 13, scope: !811)
!3986 = !DILocation(line: 887, column: 16, scope: !811)
!3987 = !DILocation(line: 887, column: 23, scope: !811)
!3988 = !DILocation(line: 887, column: 26, scope: !3989)
!3989 = !DILexicalBlockFile(scope: !811, file: !385, discriminator: 1)
!3990 = !DILocation(line: 887, column: 29, scope: !811)
!3991 = !DILocation(line: 887, column: 13, scope: !812)
!3992 = !DILocation(line: 888, column: 44, scope: !810)
!3993 = !DILocation(line: 888, column: 50, scope: !810)
!3994 = !DILocation(line: 888, column: 19, scope: !810)
!3995 = !DILocation(line: 889, column: 13, scope: !810)
!3996 = !DILocation(line: 889, column: 18, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !809, file: !385, discriminator: 1)
!3998 = !DILocation(line: 889, column: 28, scope: !809)
!3999 = !DILocation(line: 889, column: 58, scope: !809)
!4000 = !DILocation(line: 889, column: 77, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !809, file: !385, line: 889, column: 74)
!4002 = !DILocation(line: 889, column: 94, scope: !4001)
!4003 = !DILocation(line: 889, column: 74, scope: !4001)
!4004 = !DILocation(line: 889, column: 104, scope: !4001)
!4005 = !DILocation(line: 889, column: 74, scope: !809)
!4006 = !DILocation(line: 889, column: 74, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !809, file: !385, discriminator: 2)
!4008 = !DILocation(line: 889, column: 135, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !4001, file: !385, discriminator: 3)
!4010 = !DILocation(line: 889, column: 153, scope: !4001)
!4011 = !DILocation(line: 889, column: 163, scope: !4001)
!4012 = !DILocation(line: 889, column: 188, scope: !4001)
!4013 = !DILocation(line: 889, column: 119, scope: !4001)
!4014 = !DILocation(line: 889, column: 207, scope: !4015)
!4015 = !DILexicalBlockFile(scope: !810, file: !385, discriminator: 4)
!4016 = !DILocation(line: 889, column: 207, scope: !809)
!4017 = !DILocation(line: 889, column: 207, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !809, file: !385, discriminator: 5)
!4019 = !DILocation(line: 890, column: 32, scope: !810)
!4020 = !DILocation(line: 890, column: 38, scope: !810)
!4021 = !DILocation(line: 890, column: 50, scope: !810)
!4022 = !DILocation(line: 890, column: 13, scope: !810)
!4023 = !DILocation(line: 891, column: 13, scope: !810)
!4024 = !DILocation(line: 894, column: 13, scope: !819)
!4025 = !DILocation(line: 894, column: 16, scope: !819)
!4026 = !DILocation(line: 894, column: 13, scope: !812)
!4027 = !DILocation(line: 895, column: 54, scope: !818)
!4028 = !DILocation(line: 895, column: 30, scope: !818)
!4029 = !DILocation(line: 895, column: 13, scope: !818)
!4030 = !DILocation(line: 895, column: 19, scope: !818)
!4031 = !DILocation(line: 895, column: 28, scope: !818)
!4032 = !DILocation(line: 896, column: 17, scope: !817)
!4033 = !DILocation(line: 896, column: 23, scope: !817)
!4034 = !DILocation(line: 896, column: 32, scope: !817)
!4035 = !DILocation(line: 896, column: 17, scope: !818)
!4036 = !DILocation(line: 897, column: 48, scope: !816)
!4037 = !DILocation(line: 897, column: 54, scope: !816)
!4038 = !DILocation(line: 897, column: 23, scope: !816)
!4039 = !DILocation(line: 898, column: 17, scope: !816)
!4040 = !DILocation(line: 898, column: 22, scope: !4041)
!4041 = !DILexicalBlockFile(scope: !815, file: !385, discriminator: 1)
!4042 = !DILocation(line: 898, column: 32, scope: !815)
!4043 = !DILocation(line: 898, column: 62, scope: !815)
!4044 = !DILocation(line: 898, column: 81, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !815, file: !385, line: 898, column: 78)
!4046 = !DILocation(line: 898, column: 98, scope: !4045)
!4047 = !DILocation(line: 898, column: 78, scope: !4045)
!4048 = !DILocation(line: 898, column: 108, scope: !4045)
!4049 = !DILocation(line: 898, column: 78, scope: !815)
!4050 = !DILocation(line: 898, column: 78, scope: !4051)
!4051 = !DILexicalBlockFile(scope: !815, file: !385, discriminator: 2)
!4052 = !DILocation(line: 898, column: 139, scope: !4053)
!4053 = !DILexicalBlockFile(scope: !4045, file: !385, discriminator: 3)
!4054 = !DILocation(line: 898, column: 157, scope: !4045)
!4055 = !DILocation(line: 898, column: 167, scope: !4045)
!4056 = !DILocation(line: 898, column: 192, scope: !4045)
!4057 = !DILocation(line: 898, column: 123, scope: !4045)
!4058 = !DILocation(line: 898, column: 211, scope: !4059)
!4059 = !DILexicalBlockFile(scope: !816, file: !385, discriminator: 4)
!4060 = !DILocation(line: 898, column: 211, scope: !815)
!4061 = !DILocation(line: 898, column: 211, scope: !4062)
!4062 = !DILexicalBlockFile(scope: !815, file: !385, discriminator: 5)
!4063 = !DILocation(line: 899, column: 36, scope: !816)
!4064 = !DILocation(line: 899, column: 42, scope: !816)
!4065 = !DILocation(line: 899, column: 54, scope: !816)
!4066 = !DILocation(line: 899, column: 17, scope: !816)
!4067 = !DILocation(line: 900, column: 17, scope: !816)
!4068 = !DILocation(line: 902, column: 9, scope: !818)
!4069 = !DILocation(line: 903, column: 5, scope: !812)
!4070 = !DILocation(line: 905, column: 12, scope: !788)
!4071 = !DILocation(line: 905, column: 5, scope: !788)
!4072 = !DILocation(line: 906, column: 1, scope: !788)
!4073 = !DILocation(line: 908, column: 53, scope: !820)
!4074 = !DILocation(line: 908, column: 69, scope: !820)
!4075 = !DILocation(line: 910, column: 5, scope: !820)
!4076 = !DILocation(line: 910, column: 15, scope: !820)
!4077 = !DILocation(line: 912, column: 36, scope: !820)
!4078 = !DILocation(line: 912, column: 11, scope: !820)
!4079 = !DILocation(line: 912, column: 9, scope: !820)
!4080 = !DILocation(line: 913, column: 10, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !820, file: !385, line: 913, column: 9)
!4082 = !DILocation(line: 913, column: 14, scope: !4081)
!4083 = !DILocation(line: 913, column: 18, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4081, file: !385, discriminator: 1)
!4085 = !DILocation(line: 913, column: 9, scope: !820)
!4086 = !DILocation(line: 914, column: 55, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4081, file: !385, line: 913, column: 36)
!4088 = !DILocation(line: 915, column: 9, scope: !4087)
!4089 = !DILocation(line: 918, column: 12, scope: !820)
!4090 = !DILocation(line: 918, column: 5, scope: !820)
!4091 = !DILocation(line: 919, column: 1, scope: !820)
!4092 = !DILocation(line: 921, column: 54, scope: !825)
!4093 = !DILocation(line: 921, column: 70, scope: !825)
!4094 = !DILocation(line: 921, column: 86, scope: !825)
!4095 = !DILocation(line: 925, column: 5, scope: !825)
!4096 = !DILocation(line: 925, column: 15, scope: !825)
!4097 = !DILocation(line: 926, column: 5, scope: !825)
!4098 = !DILocation(line: 926, column: 15, scope: !825)
!4099 = !DILocation(line: 927, column: 5, scope: !825)
!4100 = !DILocation(line: 927, column: 9, scope: !825)
!4101 = !DILocation(line: 927, column: 19, scope: !825)
!4102 = !DILocation(line: 927, column: 25, scope: !825)
!4103 = !{!1087, !1055, i64 40}
!4104 = !DILocation(line: 928, column: 5, scope: !825)
!4105 = !DILocation(line: 928, column: 9, scope: !825)
!4106 = !DILocation(line: 930, column: 38, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !825, file: !385, line: 930, column: 9)
!4108 = !DILocation(line: 930, column: 44, scope: !4107)
!4109 = !DILocation(line: 930, column: 10, scope: !4107)
!4110 = !DILocation(line: 930, column: 9, scope: !825)
!4111 = !DILocation(line: 931, column: 9, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4107, file: !385, line: 930, column: 87)
!4113 = !DILocation(line: 934, column: 12, scope: !825)
!4114 = !DILocation(line: 934, column: 10, scope: !825)
!4115 = !DILocation(line: 935, column: 10, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !825, file: !385, line: 935, column: 9)
!4117 = !DILocation(line: 935, column: 9, scope: !825)
!4118 = !DILocation(line: 936, column: 9, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4116, file: !385, line: 935, column: 16)
!4120 = !DILocation(line: 940, column: 9, scope: !825)
!4121 = !DILocation(line: 942, column: 5, scope: !825)
!4122 = !DILocation(line: 942, column: 12, scope: !4123)
!4123 = !DILexicalBlockFile(scope: !4124, file: !385, discriminator: 2)
!4124 = !DILexicalBlockFile(scope: !825, file: !385, discriminator: 1)
!4125 = !DILocation(line: 943, column: 40, scope: !840)
!4126 = !DILocation(line: 943, column: 15, scope: !840)
!4127 = !DILocation(line: 943, column: 13, scope: !840)
!4128 = !DILocation(line: 944, column: 13, scope: !839)
!4129 = !DILocation(line: 944, column: 13, scope: !840)
!4130 = !DILocation(line: 945, column: 27, scope: !838)
!4131 = !DILocation(line: 945, column: 33, scope: !838)
!4132 = !DILocation(line: 945, column: 13, scope: !838)
!4133 = !DILocation(line: 946, column: 13, scope: !838)
!4134 = !DILocation(line: 946, column: 18, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !837, file: !385, discriminator: 1)
!4136 = !DILocation(line: 946, column: 28, scope: !837)
!4137 = !DILocation(line: 946, column: 58, scope: !837)
!4138 = !DILocation(line: 946, column: 72, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !837, file: !385, line: 946, column: 69)
!4140 = !DILocation(line: 946, column: 89, scope: !4139)
!4141 = !DILocation(line: 946, column: 69, scope: !4139)
!4142 = !DILocation(line: 946, column: 99, scope: !4139)
!4143 = !DILocation(line: 946, column: 69, scope: !837)
!4144 = !DILocation(line: 946, column: 69, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !837, file: !385, discriminator: 2)
!4146 = !DILocation(line: 946, column: 130, scope: !4147)
!4147 = !DILexicalBlockFile(scope: !4139, file: !385, discriminator: 3)
!4148 = !DILocation(line: 946, column: 148, scope: !4139)
!4149 = !DILocation(line: 946, column: 158, scope: !4139)
!4150 = !DILocation(line: 946, column: 183, scope: !4139)
!4151 = !DILocation(line: 946, column: 114, scope: !4139)
!4152 = !DILocation(line: 946, column: 202, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !838, file: !385, discriminator: 4)
!4154 = !DILocation(line: 946, column: 202, scope: !837)
!4155 = !DILocation(line: 946, column: 202, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !837, file: !385, discriminator: 5)
!4157 = !DILocation(line: 947, column: 9, scope: !838)
!4158 = !DILocation(line: 948, column: 13, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !839, file: !385, line: 947, column: 16)
!4160 = !DILocation(line: 951, column: 13, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !840, file: !385, line: 951, column: 13)
!4162 = !DILocation(line: 951, column: 26, scope: !4161)
!4163 = !DILocation(line: 951, column: 23, scope: !4161)
!4164 = !DILocation(line: 951, column: 13, scope: !840)
!4165 = !DILocation(line: 952, column: 13, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4161, file: !385, line: 951, column: 35)
!4167 = !DILocation(line: 956, column: 9, scope: !844)
!4168 = !DILocation(line: 956, column: 9, scope: !825)
!4169 = !DILocation(line: 957, column: 9, scope: !843)
!4170 = !DILocation(line: 957, column: 14, scope: !4171)
!4171 = !DILexicalBlockFile(scope: !842, file: !385, discriminator: 1)
!4172 = !DILocation(line: 957, column: 24, scope: !842)
!4173 = !DILocation(line: 957, column: 54, scope: !842)
!4174 = !DILocation(line: 957, column: 69, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !842, file: !385, line: 957, column: 66)
!4176 = !DILocation(line: 957, column: 86, scope: !4175)
!4177 = !DILocation(line: 957, column: 66, scope: !4175)
!4178 = !DILocation(line: 957, column: 96, scope: !4175)
!4179 = !DILocation(line: 957, column: 66, scope: !842)
!4180 = !DILocation(line: 957, column: 66, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !842, file: !385, discriminator: 2)
!4182 = !DILocation(line: 957, column: 127, scope: !4183)
!4183 = !DILexicalBlockFile(scope: !4175, file: !385, discriminator: 3)
!4184 = !DILocation(line: 957, column: 145, scope: !4175)
!4185 = !DILocation(line: 957, column: 155, scope: !4175)
!4186 = !DILocation(line: 957, column: 180, scope: !4175)
!4187 = !DILocation(line: 957, column: 111, scope: !4175)
!4188 = !DILocation(line: 957, column: 199, scope: !4189)
!4189 = !DILexicalBlockFile(scope: !843, file: !385, discriminator: 4)
!4190 = !DILocation(line: 957, column: 199, scope: !842)
!4191 = !DILocation(line: 957, column: 199, scope: !4192)
!4192 = !DILexicalBlockFile(scope: !842, file: !385, discriminator: 5)
!4193 = !DILocation(line: 958, column: 9, scope: !843)
!4194 = !DILocation(line: 960, column: 16, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !844, file: !385, line: 959, column: 12)
!4196 = !DILocation(line: 960, column: 9, scope: !4195)
!4197 = !DILocation(line: 962, column: 1, scope: !825)
!4198 = !DILocation(line: 964, column: 53, scope: !845)
!4199 = !DILocation(line: 964, column: 69, scope: !845)
!4200 = !DILocation(line: 966, column: 5, scope: !845)
!4201 = !DILocation(line: 966, column: 15, scope: !845)
!4202 = !DILocation(line: 967, column: 5, scope: !845)
!4203 = !DILocation(line: 967, column: 15, scope: !845)
!4204 = !DILocation(line: 969, column: 12, scope: !845)
!4205 = !DILocation(line: 969, column: 10, scope: !845)
!4206 = !DILocation(line: 970, column: 10, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !845, file: !385, line: 970, column: 9)
!4208 = !DILocation(line: 970, column: 9, scope: !845)
!4209 = !DILocation(line: 971, column: 9, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4207, file: !385, line: 970, column: 16)
!4211 = !DILocation(line: 975, column: 9, scope: !845)
!4212 = !DILocation(line: 977, column: 5, scope: !845)
!4213 = !DILocation(line: 977, column: 12, scope: !4214)
!4214 = !DILexicalBlockFile(scope: !4215, file: !385, discriminator: 2)
!4215 = !DILexicalBlockFile(scope: !845, file: !385, discriminator: 1)
!4216 = !DILocation(line: 978, column: 40, scope: !855)
!4217 = !DILocation(line: 978, column: 15, scope: !855)
!4218 = !DILocation(line: 978, column: 13, scope: !855)
!4219 = !DILocation(line: 979, column: 13, scope: !854)
!4220 = !DILocation(line: 979, column: 13, scope: !855)
!4221 = !DILocation(line: 980, column: 27, scope: !853)
!4222 = !DILocation(line: 980, column: 33, scope: !853)
!4223 = !DILocation(line: 980, column: 13, scope: !853)
!4224 = !DILocation(line: 981, column: 13, scope: !853)
!4225 = !DILocation(line: 981, column: 18, scope: !4226)
!4226 = !DILexicalBlockFile(scope: !852, file: !385, discriminator: 1)
!4227 = !DILocation(line: 981, column: 28, scope: !852)
!4228 = !DILocation(line: 981, column: 58, scope: !852)
!4229 = !DILocation(line: 981, column: 72, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !852, file: !385, line: 981, column: 69)
!4231 = !DILocation(line: 981, column: 89, scope: !4230)
!4232 = !DILocation(line: 981, column: 69, scope: !4230)
!4233 = !DILocation(line: 981, column: 99, scope: !4230)
!4234 = !DILocation(line: 981, column: 69, scope: !852)
!4235 = !DILocation(line: 981, column: 69, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !852, file: !385, discriminator: 2)
!4237 = !DILocation(line: 981, column: 130, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !4230, file: !385, discriminator: 3)
!4239 = !DILocation(line: 981, column: 148, scope: !4230)
!4240 = !DILocation(line: 981, column: 158, scope: !4230)
!4241 = !DILocation(line: 981, column: 183, scope: !4230)
!4242 = !DILocation(line: 981, column: 114, scope: !4230)
!4243 = !DILocation(line: 981, column: 202, scope: !4244)
!4244 = !DILexicalBlockFile(scope: !853, file: !385, discriminator: 4)
!4245 = !DILocation(line: 981, column: 202, scope: !852)
!4246 = !DILocation(line: 981, column: 202, scope: !4247)
!4247 = !DILexicalBlockFile(scope: !852, file: !385, discriminator: 5)
!4248 = !DILocation(line: 982, column: 9, scope: !853)
!4249 = !DILocation(line: 985, column: 9, scope: !859)
!4250 = !DILocation(line: 985, column: 9, scope: !845)
!4251 = !DILocation(line: 986, column: 9, scope: !858)
!4252 = !DILocation(line: 986, column: 14, scope: !4253)
!4253 = !DILexicalBlockFile(scope: !857, file: !385, discriminator: 1)
!4254 = !DILocation(line: 986, column: 24, scope: !857)
!4255 = !DILocation(line: 986, column: 54, scope: !857)
!4256 = !DILocation(line: 986, column: 69, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !857, file: !385, line: 986, column: 66)
!4258 = !DILocation(line: 986, column: 86, scope: !4257)
!4259 = !DILocation(line: 986, column: 66, scope: !4257)
!4260 = !DILocation(line: 986, column: 96, scope: !4257)
!4261 = !DILocation(line: 986, column: 66, scope: !857)
!4262 = !DILocation(line: 986, column: 66, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !857, file: !385, discriminator: 2)
!4264 = !DILocation(line: 986, column: 127, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !4257, file: !385, discriminator: 3)
!4266 = !DILocation(line: 986, column: 145, scope: !4257)
!4267 = !DILocation(line: 986, column: 155, scope: !4257)
!4268 = !DILocation(line: 986, column: 180, scope: !4257)
!4269 = !DILocation(line: 986, column: 111, scope: !4257)
!4270 = !DILocation(line: 986, column: 199, scope: !4271)
!4271 = !DILexicalBlockFile(scope: !858, file: !385, discriminator: 4)
!4272 = !DILocation(line: 986, column: 199, scope: !857)
!4273 = !DILocation(line: 986, column: 199, scope: !4274)
!4274 = !DILexicalBlockFile(scope: !857, file: !385, discriminator: 5)
!4275 = !DILocation(line: 987, column: 9, scope: !858)
!4276 = !DILocation(line: 989, column: 16, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !859, file: !385, line: 988, column: 12)
!4278 = !DILocation(line: 989, column: 9, scope: !4277)
!4279 = !DILocation(line: 991, column: 1, scope: !845)
!4280 = !DILocation(line: 993, column: 46, scope: !860)
!4281 = !DILocation(line: 993, column: 62, scope: !860)
!4282 = !DILocation(line: 996, column: 51, scope: !860)
!4283 = !DILocation(line: 997, column: 5, scope: !860)
!4284 = !DILocation(line: 1000, column: 50, scope: !866)
!4285 = !DILocation(line: 1000, column: 66, scope: !866)
!4286 = !DILocation(line: 1002, column: 32, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !866, file: !385, line: 1002, column: 9)
!4288 = !DILocation(line: 1002, column: 38, scope: !4287)
!4289 = !DILocation(line: 1002, column: 10, scope: !4287)
!4290 = !DILocation(line: 1002, column: 50, scope: !4287)
!4291 = !DILocation(line: 1002, column: 80, scope: !4292)
!4292 = !DILexicalBlockFile(scope: !4287, file: !385, discriminator: 1)
!4293 = !DILocation(line: 1002, column: 86, scope: !4287)
!4294 = !DILocation(line: 1002, column: 54, scope: !4287)
!4295 = !DILocation(line: 1002, column: 9, scope: !866)
!4296 = !DILocation(line: 1003, column: 9, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4287, file: !385, line: 1002, column: 99)
!4298 = !DILocation(line: 1006, column: 9, scope: !873)
!4299 = !DILocation(line: 1006, column: 15, scope: !873)
!4300 = !DILocation(line: 1006, column: 9, scope: !866)
!4301 = !DILocation(line: 1007, column: 40, scope: !872)
!4302 = !DILocation(line: 1007, column: 46, scope: !872)
!4303 = !DILocation(line: 1007, column: 15, scope: !872)
!4304 = !DILocation(line: 1008, column: 9, scope: !872)
!4305 = !DILocation(line: 1008, column: 14, scope: !4306)
!4306 = !DILexicalBlockFile(scope: !871, file: !385, discriminator: 1)
!4307 = !DILocation(line: 1008, column: 24, scope: !871)
!4308 = !DILocation(line: 1008, column: 47, scope: !871)
!4309 = !DILocation(line: 1008, column: 53, scope: !871)
!4310 = !DILocation(line: 1008, column: 34, scope: !871)
!4311 = !DILocation(line: 1008, column: 69, scope: !877)
!4312 = !DILocation(line: 1008, column: 77, scope: !877)
!4313 = !DILocation(line: 1008, column: 69, scope: !871)
!4314 = !DILocation(line: 1008, column: 95, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !876, file: !385, discriminator: 2)
!4316 = !DILocation(line: 1008, column: 101, scope: !876)
!4317 = !DILocation(line: 1008, column: 112, scope: !876)
!4318 = !DILocation(line: 1008, column: 126, scope: !876)
!4319 = !DILocation(line: 1008, column: 131, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !875, file: !385, discriminator: 4)
!4321 = !DILocation(line: 1008, column: 141, scope: !875)
!4322 = !DILocation(line: 1008, column: 171, scope: !875)
!4323 = !DILocation(line: 1008, column: 189, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !875, file: !385, line: 1008, column: 186)
!4325 = !DILocation(line: 1008, column: 206, scope: !4324)
!4326 = !DILocation(line: 1008, column: 186, scope: !4324)
!4327 = !DILocation(line: 1008, column: 216, scope: !4324)
!4328 = !DILocation(line: 1008, column: 186, scope: !875)
!4329 = !DILocation(line: 1008, column: 186, scope: !4330)
!4330 = !DILexicalBlockFile(scope: !875, file: !385, discriminator: 5)
!4331 = !DILocation(line: 1008, column: 247, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !4324, file: !385, discriminator: 6)
!4333 = !DILocation(line: 1008, column: 265, scope: !4324)
!4334 = !DILocation(line: 1008, column: 275, scope: !4324)
!4335 = !DILocation(line: 1008, column: 300, scope: !4324)
!4336 = !DILocation(line: 1008, column: 231, scope: !4324)
!4337 = !DILocation(line: 1008, column: 319, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !876, file: !385, discriminator: 7)
!4339 = !DILocation(line: 1008, column: 319, scope: !875)
!4340 = !DILocation(line: 1008, column: 319, scope: !4341)
!4341 = !DILexicalBlockFile(scope: !875, file: !385, discriminator: 8)
!4342 = !DILocation(line: 1008, column: 332, scope: !4343)
!4343 = !DILexicalBlockFile(scope: !876, file: !385, discriminator: 9)
!4344 = !DILocation(line: 1008, column: 334, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4346, file: !385, discriminator: 10)
!4346 = !DILexicalBlockFile(scope: !872, file: !385, discriminator: 3)
!4347 = !DILocation(line: 1008, column: 334, scope: !871)
!4348 = !DILocation(line: 1009, column: 5, scope: !872)
!4349 = !DILocation(line: 1011, column: 5, scope: !866)
!4350 = !DILocation(line: 1011, column: 11, scope: !866)
!4351 = !DILocation(line: 1011, column: 18, scope: !866)
!4352 = !DILocation(line: 1013, column: 51, scope: !866)
!4353 = !DILocation(line: 1014, column: 5, scope: !866)
!4354 = !DILocation(line: 1015, column: 1, scope: !866)
!4355 = !DILocation(line: 118, column: 54, scope: !929)
!4356 = !DILocation(line: 121, column: 9, scope: !937)
!4357 = !DILocation(line: 121, column: 15, scope: !937)
!4358 = !DILocation(line: 121, column: 9, scope: !929)
!4359 = !DILocation(line: 122, column: 34, scope: !936)
!4360 = !DILocation(line: 122, column: 40, scope: !936)
!4361 = !DILocation(line: 122, column: 9, scope: !936)
!4362 = !DILocation(line: 123, column: 9, scope: !936)
!4363 = !DILocation(line: 123, column: 14, scope: !4364)
!4364 = !DILexicalBlockFile(scope: !935, file: !385, discriminator: 1)
!4365 = !DILocation(line: 123, column: 24, scope: !935)
!4366 = !DILocation(line: 123, column: 54, scope: !935)
!4367 = !DILocation(line: 123, column: 60, scope: !935)
!4368 = !DILocation(line: 123, column: 41, scope: !935)
!4369 = !DILocation(line: 123, column: 80, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !935, file: !385, line: 123, column: 77)
!4371 = !DILocation(line: 123, column: 97, scope: !4370)
!4372 = !DILocation(line: 123, column: 77, scope: !4370)
!4373 = !DILocation(line: 123, column: 107, scope: !4370)
!4374 = !DILocation(line: 123, column: 77, scope: !935)
!4375 = !DILocation(line: 123, column: 77, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !935, file: !385, discriminator: 2)
!4377 = !DILocation(line: 123, column: 138, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !4370, file: !385, discriminator: 3)
!4379 = !DILocation(line: 123, column: 156, scope: !4370)
!4380 = !DILocation(line: 123, column: 166, scope: !4370)
!4381 = !DILocation(line: 123, column: 191, scope: !4370)
!4382 = !DILocation(line: 123, column: 122, scope: !4370)
!4383 = !DILocation(line: 123, column: 210, scope: !4384)
!4384 = !DILexicalBlockFile(scope: !936, file: !385, discriminator: 4)
!4385 = !DILocation(line: 123, column: 210, scope: !935)
!4386 = !DILocation(line: 124, column: 5, scope: !936)
!4387 = !DILocation(line: 126, column: 5, scope: !929)
!4388 = !DILocation(line: 126, column: 10, scope: !4389)
!4389 = !DILexicalBlockFile(scope: !939, file: !385, discriminator: 1)
!4390 = !DILocation(line: 126, column: 20, scope: !939)
!4391 = !DILocation(line: 126, column: 51, scope: !939)
!4392 = !DILocation(line: 126, column: 57, scope: !939)
!4393 = !DILocation(line: 126, column: 38, scope: !939)
!4394 = !DILocation(line: 126, column: 74, scope: !942)
!4395 = !DILocation(line: 126, column: 90, scope: !942)
!4396 = !DILocation(line: 126, column: 74, scope: !939)
!4397 = !DILocation(line: 126, column: 105, scope: !4398)
!4398 = !DILexicalBlockFile(scope: !942, file: !385, discriminator: 2)
!4399 = !DILocation(line: 126, column: 110, scope: !4400)
!4400 = !DILexicalBlockFile(scope: !941, file: !385, discriminator: 4)
!4401 = !DILocation(line: 126, column: 120, scope: !941)
!4402 = !DILocation(line: 126, column: 150, scope: !941)
!4403 = !DILocation(line: 126, column: 176, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !941, file: !385, line: 126, column: 173)
!4405 = !DILocation(line: 126, column: 193, scope: !4404)
!4406 = !DILocation(line: 126, column: 173, scope: !4404)
!4407 = !DILocation(line: 126, column: 203, scope: !4404)
!4408 = !DILocation(line: 126, column: 173, scope: !941)
!4409 = !DILocation(line: 126, column: 173, scope: !4410)
!4410 = !DILexicalBlockFile(scope: !941, file: !385, discriminator: 5)
!4411 = !DILocation(line: 126, column: 234, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4404, file: !385, discriminator: 6)
!4413 = !DILocation(line: 126, column: 252, scope: !4404)
!4414 = !DILocation(line: 126, column: 262, scope: !4404)
!4415 = !DILocation(line: 126, column: 287, scope: !4404)
!4416 = !DILocation(line: 126, column: 218, scope: !4404)
!4417 = !DILocation(line: 126, column: 306, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !942, file: !385, discriminator: 7)
!4419 = !DILocation(line: 126, column: 306, scope: !941)
!4420 = !DILocation(line: 126, column: 306, scope: !4421)
!4421 = !DILexicalBlockFile(scope: !941, file: !385, discriminator: 8)
!4422 = !DILocation(line: 126, column: 306, scope: !4423)
!4423 = !DILexicalBlockFile(scope: !941, file: !385, discriminator: 9)
!4424 = !DILocation(line: 126, column: 319, scope: !4425)
!4425 = !DILexicalBlockFile(scope: !4426, file: !385, discriminator: 10)
!4426 = !DILexicalBlockFile(scope: !929, file: !385, discriminator: 3)
!4427 = !DILocation(line: 126, column: 319, scope: !939)
!4428 = !DILocation(line: 127, column: 5, scope: !929)
!4429 = !DILocation(line: 127, column: 10, scope: !4430)
!4430 = !DILexicalBlockFile(scope: !944, file: !385, discriminator: 1)
!4431 = !DILocation(line: 127, column: 20, scope: !944)
!4432 = !DILocation(line: 127, column: 51, scope: !944)
!4433 = !DILocation(line: 127, column: 57, scope: !944)
!4434 = !DILocation(line: 127, column: 76, scope: !947)
!4435 = !DILocation(line: 127, column: 92, scope: !947)
!4436 = !DILocation(line: 127, column: 76, scope: !944)
!4437 = !DILocation(line: 127, column: 107, scope: !4438)
!4438 = !DILexicalBlockFile(scope: !947, file: !385, discriminator: 2)
!4439 = !DILocation(line: 127, column: 112, scope: !4440)
!4440 = !DILexicalBlockFile(scope: !946, file: !385, discriminator: 4)
!4441 = !DILocation(line: 127, column: 122, scope: !946)
!4442 = !DILocation(line: 127, column: 152, scope: !946)
!4443 = !DILocation(line: 127, column: 178, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !946, file: !385, line: 127, column: 175)
!4445 = !DILocation(line: 127, column: 195, scope: !4444)
!4446 = !DILocation(line: 127, column: 175, scope: !4444)
!4447 = !DILocation(line: 127, column: 205, scope: !4444)
!4448 = !DILocation(line: 127, column: 175, scope: !946)
!4449 = !DILocation(line: 127, column: 175, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !946, file: !385, discriminator: 5)
!4451 = !DILocation(line: 127, column: 236, scope: !4452)
!4452 = !DILexicalBlockFile(scope: !4444, file: !385, discriminator: 6)
!4453 = !DILocation(line: 127, column: 254, scope: !4444)
!4454 = !DILocation(line: 127, column: 264, scope: !4444)
!4455 = !DILocation(line: 127, column: 289, scope: !4444)
!4456 = !DILocation(line: 127, column: 220, scope: !4444)
!4457 = !DILocation(line: 127, column: 308, scope: !4458)
!4458 = !DILexicalBlockFile(scope: !947, file: !385, discriminator: 7)
!4459 = !DILocation(line: 127, column: 308, scope: !946)
!4460 = !DILocation(line: 127, column: 308, scope: !4461)
!4461 = !DILexicalBlockFile(scope: !946, file: !385, discriminator: 8)
!4462 = !DILocation(line: 127, column: 308, scope: !4463)
!4463 = !DILexicalBlockFile(scope: !946, file: !385, discriminator: 9)
!4464 = !DILocation(line: 127, column: 321, scope: !4425)
!4465 = !DILocation(line: 127, column: 321, scope: !944)
!4466 = !DILocation(line: 128, column: 5, scope: !929)
!4467 = !DILocation(line: 128, column: 10, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !949, file: !385, discriminator: 1)
!4469 = !DILocation(line: 128, column: 20, scope: !949)
!4470 = !DILocation(line: 128, column: 51, scope: !949)
!4471 = !DILocation(line: 128, column: 57, scope: !949)
!4472 = !DILocation(line: 128, column: 75, scope: !952)
!4473 = !DILocation(line: 128, column: 91, scope: !952)
!4474 = !DILocation(line: 128, column: 75, scope: !949)
!4475 = !DILocation(line: 128, column: 106, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !952, file: !385, discriminator: 2)
!4477 = !DILocation(line: 128, column: 111, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !951, file: !385, discriminator: 4)
!4479 = !DILocation(line: 128, column: 121, scope: !951)
!4480 = !DILocation(line: 128, column: 151, scope: !951)
!4481 = !DILocation(line: 128, column: 177, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !951, file: !385, line: 128, column: 174)
!4483 = !DILocation(line: 128, column: 194, scope: !4482)
!4484 = !DILocation(line: 128, column: 174, scope: !4482)
!4485 = !DILocation(line: 128, column: 204, scope: !4482)
!4486 = !DILocation(line: 128, column: 174, scope: !951)
!4487 = !DILocation(line: 128, column: 174, scope: !4488)
!4488 = !DILexicalBlockFile(scope: !951, file: !385, discriminator: 5)
!4489 = !DILocation(line: 128, column: 235, scope: !4490)
!4490 = !DILexicalBlockFile(scope: !4482, file: !385, discriminator: 6)
!4491 = !DILocation(line: 128, column: 253, scope: !4482)
!4492 = !DILocation(line: 128, column: 263, scope: !4482)
!4493 = !DILocation(line: 128, column: 288, scope: !4482)
!4494 = !DILocation(line: 128, column: 219, scope: !4482)
!4495 = !DILocation(line: 128, column: 307, scope: !4496)
!4496 = !DILexicalBlockFile(scope: !952, file: !385, discriminator: 7)
!4497 = !DILocation(line: 128, column: 307, scope: !951)
!4498 = !DILocation(line: 128, column: 307, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !951, file: !385, discriminator: 8)
!4500 = !DILocation(line: 128, column: 307, scope: !4501)
!4501 = !DILexicalBlockFile(scope: !951, file: !385, discriminator: 9)
!4502 = !DILocation(line: 128, column: 320, scope: !4425)
!4503 = !DILocation(line: 128, column: 320, scope: !949)
!4504 = !DILocation(line: 129, column: 5, scope: !929)
!4505 = !DILocation(line: 129, column: 10, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !954, file: !385, discriminator: 1)
!4507 = !DILocation(line: 129, column: 20, scope: !954)
!4508 = !DILocation(line: 129, column: 51, scope: !954)
!4509 = !DILocation(line: 129, column: 57, scope: !954)
!4510 = !DILocation(line: 129, column: 73, scope: !957)
!4511 = !DILocation(line: 129, column: 89, scope: !957)
!4512 = !DILocation(line: 129, column: 73, scope: !954)
!4513 = !DILocation(line: 129, column: 104, scope: !4514)
!4514 = !DILexicalBlockFile(scope: !957, file: !385, discriminator: 2)
!4515 = !DILocation(line: 129, column: 109, scope: !4516)
!4516 = !DILexicalBlockFile(scope: !956, file: !385, discriminator: 4)
!4517 = !DILocation(line: 129, column: 119, scope: !956)
!4518 = !DILocation(line: 129, column: 149, scope: !956)
!4519 = !DILocation(line: 129, column: 175, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !956, file: !385, line: 129, column: 172)
!4521 = !DILocation(line: 129, column: 192, scope: !4520)
!4522 = !DILocation(line: 129, column: 172, scope: !4520)
!4523 = !DILocation(line: 129, column: 202, scope: !4520)
!4524 = !DILocation(line: 129, column: 172, scope: !956)
!4525 = !DILocation(line: 129, column: 172, scope: !4526)
!4526 = !DILexicalBlockFile(scope: !956, file: !385, discriminator: 5)
!4527 = !DILocation(line: 129, column: 233, scope: !4528)
!4528 = !DILexicalBlockFile(scope: !4520, file: !385, discriminator: 6)
!4529 = !DILocation(line: 129, column: 251, scope: !4520)
!4530 = !DILocation(line: 129, column: 261, scope: !4520)
!4531 = !DILocation(line: 129, column: 286, scope: !4520)
!4532 = !DILocation(line: 129, column: 217, scope: !4520)
!4533 = !DILocation(line: 129, column: 305, scope: !4534)
!4534 = !DILexicalBlockFile(scope: !957, file: !385, discriminator: 7)
!4535 = !DILocation(line: 129, column: 305, scope: !956)
!4536 = !DILocation(line: 129, column: 305, scope: !4537)
!4537 = !DILexicalBlockFile(scope: !956, file: !385, discriminator: 8)
!4538 = !DILocation(line: 129, column: 305, scope: !4539)
!4539 = !DILexicalBlockFile(scope: !956, file: !385, discriminator: 9)
!4540 = !DILocation(line: 129, column: 318, scope: !4425)
!4541 = !DILocation(line: 129, column: 318, scope: !954)
!4542 = !DILocation(line: 130, column: 5, scope: !929)
!4543 = !DILocation(line: 130, column: 10, scope: !4544)
!4544 = !DILexicalBlockFile(scope: !959, file: !385, discriminator: 1)
!4545 = !DILocation(line: 130, column: 20, scope: !959)
!4546 = !DILocation(line: 130, column: 51, scope: !959)
!4547 = !DILocation(line: 130, column: 57, scope: !959)
!4548 = !DILocation(line: 130, column: 75, scope: !962)
!4549 = !DILocation(line: 130, column: 91, scope: !962)
!4550 = !DILocation(line: 130, column: 75, scope: !959)
!4551 = !DILocation(line: 130, column: 106, scope: !4552)
!4552 = !DILexicalBlockFile(scope: !962, file: !385, discriminator: 2)
!4553 = !DILocation(line: 130, column: 111, scope: !4554)
!4554 = !DILexicalBlockFile(scope: !961, file: !385, discriminator: 4)
!4555 = !DILocation(line: 130, column: 121, scope: !961)
!4556 = !DILocation(line: 130, column: 151, scope: !961)
!4557 = !DILocation(line: 130, column: 177, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !961, file: !385, line: 130, column: 174)
!4559 = !DILocation(line: 130, column: 194, scope: !4558)
!4560 = !DILocation(line: 130, column: 174, scope: !4558)
!4561 = !DILocation(line: 130, column: 204, scope: !4558)
!4562 = !DILocation(line: 130, column: 174, scope: !961)
!4563 = !DILocation(line: 130, column: 174, scope: !4564)
!4564 = !DILexicalBlockFile(scope: !961, file: !385, discriminator: 5)
!4565 = !DILocation(line: 130, column: 235, scope: !4566)
!4566 = !DILexicalBlockFile(scope: !4558, file: !385, discriminator: 6)
!4567 = !DILocation(line: 130, column: 253, scope: !4558)
!4568 = !DILocation(line: 130, column: 263, scope: !4558)
!4569 = !DILocation(line: 130, column: 288, scope: !4558)
!4570 = !DILocation(line: 130, column: 219, scope: !4558)
!4571 = !DILocation(line: 130, column: 307, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !962, file: !385, discriminator: 7)
!4573 = !DILocation(line: 130, column: 307, scope: !961)
!4574 = !DILocation(line: 130, column: 307, scope: !4575)
!4575 = !DILexicalBlockFile(scope: !961, file: !385, discriminator: 8)
!4576 = !DILocation(line: 130, column: 307, scope: !4577)
!4577 = !DILexicalBlockFile(scope: !961, file: !385, discriminator: 9)
!4578 = !DILocation(line: 130, column: 320, scope: !4425)
!4579 = !DILocation(line: 130, column: 320, scope: !959)
!4580 = !DILocation(line: 131, column: 5, scope: !929)
!4581 = !DILocation(line: 131, column: 10, scope: !4582)
!4582 = !DILexicalBlockFile(scope: !964, file: !385, discriminator: 1)
!4583 = !DILocation(line: 131, column: 20, scope: !964)
!4584 = !DILocation(line: 131, column: 51, scope: !964)
!4585 = !DILocation(line: 131, column: 57, scope: !964)
!4586 = !DILocation(line: 131, column: 72, scope: !967)
!4587 = !DILocation(line: 131, column: 88, scope: !967)
!4588 = !DILocation(line: 131, column: 72, scope: !964)
!4589 = !DILocation(line: 131, column: 103, scope: !4590)
!4590 = !DILexicalBlockFile(scope: !967, file: !385, discriminator: 2)
!4591 = !DILocation(line: 131, column: 108, scope: !4592)
!4592 = !DILexicalBlockFile(scope: !966, file: !385, discriminator: 4)
!4593 = !DILocation(line: 131, column: 118, scope: !966)
!4594 = !DILocation(line: 131, column: 148, scope: !966)
!4595 = !DILocation(line: 131, column: 174, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !966, file: !385, line: 131, column: 171)
!4597 = !DILocation(line: 131, column: 191, scope: !4596)
!4598 = !DILocation(line: 131, column: 171, scope: !4596)
!4599 = !DILocation(line: 131, column: 201, scope: !4596)
!4600 = !DILocation(line: 131, column: 171, scope: !966)
!4601 = !DILocation(line: 131, column: 171, scope: !4602)
!4602 = !DILexicalBlockFile(scope: !966, file: !385, discriminator: 5)
!4603 = !DILocation(line: 131, column: 232, scope: !4604)
!4604 = !DILexicalBlockFile(scope: !4596, file: !385, discriminator: 6)
!4605 = !DILocation(line: 131, column: 250, scope: !4596)
!4606 = !DILocation(line: 131, column: 260, scope: !4596)
!4607 = !DILocation(line: 131, column: 285, scope: !4596)
!4608 = !DILocation(line: 131, column: 216, scope: !4596)
!4609 = !DILocation(line: 131, column: 304, scope: !4610)
!4610 = !DILexicalBlockFile(scope: !967, file: !385, discriminator: 7)
!4611 = !DILocation(line: 131, column: 304, scope: !966)
!4612 = !DILocation(line: 131, column: 304, scope: !4613)
!4613 = !DILexicalBlockFile(scope: !966, file: !385, discriminator: 8)
!4614 = !DILocation(line: 131, column: 304, scope: !4615)
!4615 = !DILexicalBlockFile(scope: !966, file: !385, discriminator: 9)
!4616 = !DILocation(line: 131, column: 317, scope: !4425)
!4617 = !DILocation(line: 131, column: 317, scope: !964)
!4618 = !DILocation(line: 133, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !929, file: !385, line: 133, column: 9)
!4620 = !DILocation(line: 133, column: 15, scope: !4619)
!4621 = !{!1087, !1010, i64 104}
!4622 = !DILocation(line: 133, column: 30, scope: !4619)
!4623 = !DILocation(line: 133, column: 9, scope: !929)
!4624 = !DILocation(line: 134, column: 43, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4619, file: !385, line: 133, column: 45)
!4626 = !DILocation(line: 134, column: 32, scope: !4625)
!4627 = !DILocation(line: 134, column: 9, scope: !4625)
!4628 = !DILocation(line: 135, column: 5, scope: !4625)
!4629 = !DILocation(line: 137, column: 19, scope: !929)
!4630 = !DILocation(line: 137, column: 7, scope: !929)
!4631 = !DILocation(line: 137, column: 27, scope: !929)
!4632 = !DILocation(line: 137, column: 37, scope: !929)
!4633 = !{!1053, !1010, i64 320}
!4634 = !DILocation(line: 137, column: 56, scope: !929)
!4635 = !DILocation(line: 137, column: 45, scope: !929)
!4636 = !DILocation(line: 137, column: 5, scope: !929)
!4637 = !DILocation(line: 138, column: 1, scope: !929)
!4638 = !DILocation(line: 70, column: 50, scope: !968)
!4639 = !DILocation(line: 70, column: 66, scope: !968)
!4640 = !DILocation(line: 70, column: 82, scope: !968)
!4641 = !DILocation(line: 72, column: 5, scope: !968)
!4642 = !DILocation(line: 72, column: 26, scope: !968)
!4643 = !DILocation(line: 74, column: 27, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !968, file: !385, line: 74, column: 9)
!4645 = !DILocation(line: 74, column: 10, scope: !4644)
!4646 = !DILocation(line: 74, column: 9, scope: !968)
!4647 = !DILocation(line: 76, column: 9, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4644, file: !385, line: 75, column: 5)
!4649 = !DILocation(line: 79, column: 21, scope: !968)
!4650 = !DILocation(line: 79, column: 8, scope: !968)
!4651 = !DILocation(line: 79, column: 35, scope: !968)
!4652 = !DILocation(line: 79, column: 44, scope: !968)
!4653 = !DILocation(line: 80, column: 24, scope: !968)
!4654 = !DILocation(line: 80, column: 5, scope: !968)
!4655 = !DILocation(line: 80, column: 11, scope: !968)
!4656 = !DILocation(line: 80, column: 22, scope: !968)
!4657 = !DILocation(line: 81, column: 5, scope: !968)
!4658 = !DILocation(line: 81, column: 11, scope: !968)
!4659 = !DILocation(line: 81, column: 21, scope: !968)
!4660 = !DILocation(line: 82, column: 5, scope: !968)
!4661 = !DILocation(line: 82, column: 11, scope: !968)
!4662 = !DILocation(line: 82, column: 20, scope: !968)
!4663 = !DILocation(line: 83, column: 5, scope: !968)
!4664 = !DILocation(line: 83, column: 11, scope: !968)
!4665 = !DILocation(line: 83, column: 26, scope: !968)
!4666 = !DILocation(line: 85, column: 26, scope: !968)
!4667 = !DILocation(line: 85, column: 5, scope: !968)
!4668 = !DILocation(line: 85, column: 11, scope: !968)
!4669 = !DILocation(line: 85, column: 24, scope: !968)
!4670 = !DILocation(line: 86, column: 10, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !968, file: !385, line: 86, column: 9)
!4672 = !DILocation(line: 86, column: 16, scope: !4671)
!4673 = !DILocation(line: 86, column: 9, scope: !968)
!4674 = !DILocation(line: 87, column: 9, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4671, file: !385, line: 86, column: 30)
!4676 = !DILocation(line: 90, column: 51, scope: !968)
!4677 = !DILocation(line: 91, column: 5, scope: !968)
!4678 = !DILocation(line: 91, column: 11, scope: !968)
!4679 = !DILocation(line: 91, column: 23, scope: !968)
!4680 = !DILocation(line: 93, column: 51, scope: !968)
!4681 = !DILocation(line: 94, column: 5, scope: !968)
!4682 = !DILocation(line: 94, column: 11, scope: !968)
!4683 = !DILocation(line: 94, column: 20, scope: !968)
!4684 = !DILocation(line: 96, column: 5, scope: !968)
!4685 = !DILocation(line: 96, column: 11, scope: !968)
!4686 = !DILocation(line: 96, column: 21, scope: !968)
!4687 = !DILocation(line: 97, column: 5, scope: !968)
!4688 = !DILocation(line: 97, column: 11, scope: !968)
!4689 = !DILocation(line: 97, column: 18, scope: !968)
!4690 = !DILocation(line: 98, column: 5, scope: !968)
!4691 = !DILocation(line: 98, column: 11, scope: !968)
!4692 = !DILocation(line: 98, column: 17, scope: !968)
!4693 = !DILocation(line: 100, column: 5, scope: !968)
!4694 = !DILocation(line: 100, column: 11, scope: !968)
!4695 = !DILocation(line: 100, column: 20, scope: !968)
!4696 = !DILocation(line: 102, column: 51, scope: !968)
!4697 = !DILocation(line: 103, column: 5, scope: !968)
!4698 = !DILocation(line: 103, column: 11, scope: !968)
!4699 = !DILocation(line: 103, column: 23, scope: !968)
!4700 = !DILocation(line: 105, column: 32, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !968, file: !385, line: 105, column: 9)
!4702 = !DILocation(line: 105, column: 38, scope: !4701)
!4703 = !DILocation(line: 105, column: 10, scope: !4701)
!4704 = !DILocation(line: 105, column: 9, scope: !968)
!4705 = !DILocation(line: 106, column: 9, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4701, file: !385, line: 105, column: 51)
!4707 = !DILocation(line: 109, column: 46, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !968, file: !385, line: 109, column: 9)
!4709 = !DILocation(line: 109, column: 69, scope: !4708)
!4710 = !DILocation(line: 109, column: 58, scope: !4708)
!4711 = !DILocation(line: 109, column: 10, scope: !4708)
!4712 = !DILocation(line: 109, column: 9, scope: !968)
!4713 = !DILocation(line: 110, column: 9, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4708, file: !385, line: 109, column: 76)
!4715 = !DILocation(line: 113, column: 5, scope: !968)
!4716 = !DILocation(line: 113, column: 11, scope: !968)
!4717 = !DILocation(line: 113, column: 23, scope: !968)
!4718 = !DILocation(line: 115, column: 5, scope: !968)
!4719 = !DILocation(line: 116, column: 1, scope: !968)
!4720 = !DILocation(line: 1097, column: 32, scope: !878)
!4721 = !{!1053, !1010, i64 312}
!4722 = !DILocation(line: 1098, column: 12, scope: !878)
!4723 = !DILocation(line: 1098, column: 5, scope: !878)
