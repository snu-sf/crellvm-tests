; ModuleID = './cursor.bc'
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  %0 = load %struct._object*, %struct._object** %key.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* @_pysqlite_get_converter.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %upcase_key, align 8
  %1 = load %struct._object*, %struct._object** %upcase_key, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @converters, align 8
  %3 = load %struct._object*, %struct._object** %upcase_key, align 8
  %call2 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call2, %struct._object** %retval1, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %upcase_key, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store i8* inttoptr (i64 -1 to i8*), i8** %type_start, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 1
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %detect_types = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 3
  %2 = load i32, i32* %detect_types, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %row_cast_map, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.5

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call %struct._object* @PyList_New(i64 0)
  %13 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map8 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %13, i32 0, i32 3
  store %struct._object* %call, %struct._object** %row_cast_map8, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.151, %do.end.7
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 8
  %16 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %16, i32 0, i32 2
  %17 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %call9 = call i32 @sqlite3_column_count(%struct.sqlite3_stmt* %17)
  %cmp10 = icmp slt i32 %14, %call9
  br i1 %cmp10, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  store %struct._object* null, %struct._object** %converter, align 8
  %18 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection11 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %18, i32 0, i32 1
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection11, align 8
  %detect_types12 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %19, i32 0, i32 3
  %20 = load i32, i32* %detect_types12, align 4
  %and = and i32 %20, 2
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then.14, label %if.end.55

if.then.14:                                       ; preds = %for.body
  %21 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement15 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %21, i32 0, i32 8
  %22 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement15, align 8
  %st16 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %22, i32 0, i32 2
  %23 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st16, align 8
  %24 = load i32, i32* %i, align 4
  %call17 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %23, i32 %24)
  store i8* %call17, i8** %colname, align 8
  %25 = load i8*, i8** %colname, align 8
  %tobool18 = icmp ne i8* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.54

if.then.19:                                       ; preds = %if.then.14
  %26 = load i8*, i8** %colname, align 8
  store i8* %26, i8** %pos, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.then.19
  %27 = load i8*, i8** %pos, align 8
  %28 = load i8, i8* %27, align 1
  %conv = sext i8 %28 to i32
  %cmp21 = icmp ne i32 %conv, 0
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %29 = load i8*, i8** %pos, align 8
  %30 = load i8, i8* %29, align 1
  %conv24 = sext i8 %30 to i32
  %cmp25 = icmp eq i32 %conv24, 91
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %for.body.23
  %31 = load i8*, i8** %pos, align 8
  %add.ptr = getelementptr i8, i8* %31, i64 1
  store i8* %add.ptr, i8** %type_start, align 8
  br label %if.end.53

if.else.28:                                       ; preds = %for.body.23
  %32 = load i8*, i8** %pos, align 8
  %33 = load i8, i8* %32, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp eq i32 %conv29, 93
  br i1 %cmp30, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.else.28
  %34 = load i8*, i8** %type_start, align 8
  %cmp32 = icmp ne i8* %34, inttoptr (i64 -1 to i8*)
  br i1 %cmp32, label %if.then.34, label %if.end.52

if.then.34:                                       ; preds = %land.lhs.true
  %35 = load i8*, i8** %type_start, align 8
  %36 = load i8*, i8** %pos, align 8
  %37 = load i8*, i8** %type_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call35 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %35, i64 %sub.ptr.sub)
  store %struct._object* %call35, %struct._object** %key, align 8
  %38 = load %struct._object*, %struct._object** %key, align 8
  %tobool36 = icmp ne %struct._object* %38, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  br label %for.end

if.end.38:                                        ; preds = %if.then.34
  %39 = load %struct._object*, %struct._object** %key, align 8
  %call39 = call %struct._object* @_pysqlite_get_converter(%struct._object* %39)
  store %struct._object* %call39, %struct._object** %converter, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.38
  %40 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp41, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %42, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %45(%struct._object* %46)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %for.end

if.end.52:                                        ; preds = %land.lhs.true, %if.else.28
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %47 = load i8*, i8** %pos, align 8
  %incdec.ptr = getelementptr i8, i8* %47, i32 1
  store i8* %incdec.ptr, i8** %pos, align 8
  br label %for.cond.20

for.end:                                          ; preds = %do.end.51, %if.then.37, %for.cond.20
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.then.14
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.body
  %48 = load %struct._object*, %struct._object** %converter, align 8
  %tobool56 = icmp ne %struct._object* %48, null
  br i1 %tobool56, label %if.end.105, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.end.55
  %49 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection58 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %49, i32 0, i32 1
  %50 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection58, align 8
  %detect_types59 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %50, i32 0, i32 3
  %51 = load i32, i32* %detect_types59, align 4
  %and60 = and i32 %51, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.105

if.then.62:                                       ; preds = %land.lhs.true.57
  %52 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement63 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %52, i32 0, i32 8
  %53 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement63, align 8
  %st64 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %53, i32 0, i32 2
  %54 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st64, align 8
  %55 = load i32, i32* %i, align 4
  %call65 = call i8* @sqlite3_column_decltype(%struct.sqlite3_stmt* %54, i32 %55)
  store i8* %call65, i8** %decltype, align 8
  %56 = load i8*, i8** %decltype, align 8
  %tobool66 = icmp ne i8* %56, null
  br i1 %tobool66, label %if.then.67, label %if.end.104

if.then.67:                                       ; preds = %if.then.62
  %57 = load i8*, i8** %decltype, align 8
  store i8* %57, i8** %pos, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.88, %if.then.67
  %58 = load i8*, i8** %pos, align 8
  %59 = load i8, i8* %58, align 1
  %conv69 = sext i8 %59 to i32
  %cmp70 = icmp eq i32 %conv69, 32
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond.68
  %60 = load i8*, i8** %pos, align 8
  %61 = load i8, i8* %60, align 1
  %conv72 = sext i8 %61 to i32
  %cmp73 = icmp eq i32 %conv72, 40
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false
  %62 = load i8*, i8** %pos, align 8
  %63 = load i8, i8* %62, align 1
  %conv76 = sext i8 %63 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %lor.lhs.false.75, %lor.lhs.false, %for.cond.68
  %64 = load i8*, i8** %decltype, align 8
  %65 = load i8*, i8** %pos, align 8
  %66 = load i8*, i8** %decltype, align 8
  %sub.ptr.lhs.cast80 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast81 = ptrtoint i8* %66 to i64
  %sub.ptr.sub82 = sub i64 %sub.ptr.lhs.cast80, %sub.ptr.rhs.cast81
  %call83 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %64, i64 %sub.ptr.sub82)
  store %struct._object* %call83, %struct._object** %py_decltype, align 8
  %67 = load %struct._object*, %struct._object** %py_decltype, align 8
  %tobool84 = icmp ne %struct._object* %67, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.then.79
  store i32 -1, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.79
  br label %for.end.90

if.end.87:                                        ; preds = %lor.lhs.false.75
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %68 = load i8*, i8** %pos, align 8
  %incdec.ptr89 = getelementptr i8, i8* %68, i32 1
  store i8* %incdec.ptr89, i8** %pos, align 8
  br label %for.cond.68

for.end.90:                                       ; preds = %if.end.86
  %69 = load %struct._object*, %struct._object** %py_decltype, align 8
  %call91 = call %struct._object* @_pysqlite_get_converter(%struct._object* %69)
  store %struct._object* %call91, %struct._object** %converter, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %for.end.90
  %70 = load %struct._object*, %struct._object** %py_decltype, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp93, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %72, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %75(%struct._object* %76)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %if.then.62
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.57, %if.end.55
  %77 = load %struct._object*, %struct._object** %converter, align 8
  %tobool106 = icmp ne %struct._object* %77, null
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.end.105
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  %78 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map109 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %78, i32 0, i32 3
  %79 = load %struct._object*, %struct._object** %row_cast_map109, align 8
  %80 = load %struct._object*, %struct._object** %converter, align 8
  %call110 = call i32 @PyList_Append(%struct._object* %79, %struct._object* %80)
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.150

if.then.113:                                      ; preds = %if.end.108
  %81 = load %struct._object*, %struct._object** %converter, align 8
  %cmp114 = icmp ne %struct._object* %81, @_Py_NoneStruct
  br i1 %cmp114, label %if.then.116, label %if.end.129

if.then.116:                                      ; preds = %if.then.113
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  %82 = load %struct._object*, %struct._object** %converter, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp118, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %84, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.117
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %87(%struct._object* %88)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %if.then.113
  br label %do.body.130

do.body.130:                                      ; preds = %if.end.129
  %89 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map131 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %89, i32 0, i32 3
  %90 = load %struct._object*, %struct._object** %row_cast_map131, align 8
  store %struct._object* %90, %struct._object** %_py_tmp, align 8
  %91 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp132 = icmp ne %struct._object* %91, null
  br i1 %cmp132, label %if.then.134, label %if.end.148

if.then.134:                                      ; preds = %do.body.130
  %92 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map135 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %92, i32 0, i32 3
  store %struct._object* null, %struct._object** %row_cast_map135, align 8
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.134
  %93 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp137, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %95, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %do.body.136
  br label %if.end.146

if.else.143:                                      ; preds = %do.body.136
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type144 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type144, align 8
  %tp_dealloc145 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc145, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %98(%struct._object* %99)
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.142
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %if.end.148

if.end.148:                                       ; preds = %do.end.147, %do.body.130
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  store i32 -1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.108
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %100 = load i32, i32* %i, align 4
  %inc = add i32 %100, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.152, %do.end.149, %if.then.85, %if.then
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @sqlite3_column_count(%struct.sqlite3_stmt*) #1

declare i8* @sqlite3_column_name(%struct.sqlite3_stmt*, i32) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare i8* @sqlite3_column_decltype(%struct.sqlite3_stmt*, i32) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_build_column_name(i8* %colname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %colname.addr = alloca i8*, align 8
  %pos = alloca i8*, align 8
  store i8* %colname, i8** %colname.addr, align 8
  %0 = load i8*, i8** %colname.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %colname.addr, align 8
  store i8* %2, i8** %pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %pos, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %5 = load i8*, i8** %pos, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 91
  br i1 %cmp3, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %lor.lhs.false, %for.cond
  %7 = load i8*, i8** %pos, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 91
  br i1 %cmp7, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.5
  %9 = load i8*, i8** %pos, align 8
  %10 = load i8*, i8** %colname.addr, align 8
  %cmp9 = icmp ugt i8* %9, %10
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.16

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %pos, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 -1
  %12 = load i8, i8* %add.ptr, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 32
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.11
  %13 = load i8*, i8** %pos, align 8
  %incdec.ptr = getelementptr i8, i8* %13, i32 -1
  store i8* %incdec.ptr, i8** %pos, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true, %if.then.5
  %14 = load i8*, i8** %colname.addr, align 8
  %15 = load i8*, i8** %pos, align 8
  %16 = load i8*, i8** %colname.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* %14, i64 %sub.ptr.sub)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %17 = load i8*, i8** %pos, align 8
  %incdec.ptr18 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr18, i8** %pos, align 8
  br label %for.cond

return:                                           ; preds = %if.end.16, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
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
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save43 = alloca %struct._ts*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  %_py_decref_tmp183 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* null, %struct._object** %item, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 10
  %1 = load i32, i32* %reset, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %3 = load i8*, i8** @errmsg_fetch_across_rollback, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %4, i32 0, i32 8
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %5, i32 0, i32 2
  %6 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %call1 = call i32 @sqlite3_data_count(%struct.sqlite3_stmt* %6)
  store i32 %call1, i32* %numcols, align 4
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  %8 = load i32, i32* %numcols, align 4
  %conv = sext i32 %8 to i64
  %call2 = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call2, %struct._object** %row, align 8
  %9 = load %struct._object*, %struct._object** %row, align 8
  %tobool3 = icmp ne %struct._object* %9, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %numcols, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %12, i32 0, i32 1
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %detect_types = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 3
  %14 = load i32, i32* %detect_types, align 4
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 3
  %16 = load %struct._object*, %struct._object** %row_cast_map, align 8
  %17 = load i32, i32* %i, align 4
  %conv9 = sext i32 %17 to i64
  %call10 = call %struct._object* @PyList_GetItem(%struct._object* %16, i64 %conv9)
  store %struct._object* %call10, %struct._object** %converter, align 8
  %18 = load %struct._object*, %struct._object** %converter, align 8
  %tobool11 = icmp ne %struct._object* %18, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.8
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.else:                                          ; preds = %for.body
  store %struct._object* @_Py_NoneStruct, %struct._object** %converter, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.13
  %19 = load %struct._object*, %struct._object** %converter, align 8
  %cmp15 = icmp ne %struct._object* %19, @_Py_NoneStruct
  br i1 %cmp15, label %if.then.17, label %if.else.42

if.then.17:                                       ; preds = %if.end.14
  %20 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement18 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %20, i32 0, i32 8
  %21 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement18, align 8
  %st19 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %21, i32 0, i32 2
  %22 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st19, align 8
  %23 = load i32, i32* %i, align 4
  %call20 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %22, i32 %23)
  %conv21 = sext i32 %call20 to i64
  store i64 %conv21, i64* %nbytes, align 8
  %24 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement22 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %24, i32 0, i32 8
  %25 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement22, align 8
  %st23 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %25, i32 0, i32 2
  %26 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st23, align 8
  %27 = load i32, i32* %i, align 4
  %call24 = call i8* @sqlite3_column_blob(%struct.sqlite3_stmt* %26, i32 %27)
  store i8* %call24, i8** %val_str, align 8
  %28 = load i8*, i8** %val_str, align 8
  %tobool25 = icmp ne i8* %28, null
  br i1 %tobool25, label %if.else.27, label %if.then.26

if.then.26:                                       ; preds = %if.then.17
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %converted, align 8
  br label %if.end.41

if.else.27:                                       ; preds = %if.then.17
  %30 = load i8*, i8** %val_str, align 8
  %31 = load i64, i64* %nbytes, align 8
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* %30, i64 %31)
  store %struct._object* %call28, %struct._object** %item, align 8
  %32 = load %struct._object*, %struct._object** %item, align 8
  %tobool29 = icmp ne %struct._object* %32, null
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.else.27
  %33 = load %struct._object*, %struct._object** %converter, align 8
  %34 = load %struct._object*, %struct._object** %item, align 8
  %call32 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._object* %34)
  store %struct._object* %call32, %struct._object** %converted, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.31
  %35 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body
  br label %if.end.37

if.else.36:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end

do.end:                                           ; preds = %if.end.37
  %42 = load %struct._object*, %struct._object** %converted, align 8
  %tobool38 = icmp ne %struct._object* %42, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %do.end
  br label %for.end

if.end.40:                                        ; preds = %do.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.26
  br label %if.end.168

if.else.42:                                       ; preds = %if.end.14
  %call44 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call44, %struct._ts** %_save43, align 8
  %43 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement45 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %43, i32 0, i32 8
  %44 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement45, align 8
  %st46 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %44, i32 0, i32 2
  %45 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st46, align 8
  %46 = load i32, i32* %i, align 4
  %call47 = call i32 @sqlite3_column_type(%struct.sqlite3_stmt* %45, i32 %46)
  store i32 %call47, i32* %coltype, align 4
  %47 = load %struct._ts*, %struct._ts** %_save43, align 8
  call void @PyEval_RestoreThread(%struct._ts* %47)
  %48 = load i32, i32* %coltype, align 4
  %cmp48 = icmp eq i32 %48, 5
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.else.42
  %49 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc51 = add i64 %49, 1
  store i64 %inc51, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %converted, align 8
  br label %if.end.167

if.else.52:                                       ; preds = %if.else.42
  %50 = load i32, i32* %coltype, align 4
  %cmp53 = icmp eq i32 %50, 1
  br i1 %cmp53, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %if.else.52
  %51 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement56 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %51, i32 0, i32 8
  %52 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement56, align 8
  %st57 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %52, i32 0, i32 2
  %53 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st57, align 8
  %54 = load i32, i32* %i, align 4
  %call58 = call i64 @sqlite3_column_int64(%struct.sqlite3_stmt* %53, i32 %54)
  %call59 = call %struct._object* @_pysqlite_long_from_int64(i64 %call58)
  store %struct._object* %call59, %struct._object** %converted, align 8
  br label %if.end.166

if.else.60:                                       ; preds = %if.else.52
  %55 = load i32, i32* %coltype, align 4
  %cmp61 = icmp eq i32 %55, 2
  br i1 %cmp61, label %if.then.63, label %if.else.68

if.then.63:                                       ; preds = %if.else.60
  %56 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement64 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %56, i32 0, i32 8
  %57 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement64, align 8
  %st65 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %57, i32 0, i32 2
  %58 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st65, align 8
  %59 = load i32, i32* %i, align 4
  %call66 = call double @sqlite3_column_double(%struct.sqlite3_stmt* %58, i32 %59)
  %call67 = call %struct._object* @PyFloat_FromDouble(double %call66)
  store %struct._object* %call67, %struct._object** %converted, align 8
  br label %if.end.165

if.else.68:                                       ; preds = %if.else.60
  %60 = load i32, i32* %coltype, align 4
  %cmp69 = icmp eq i32 %60, 3
  br i1 %cmp69, label %if.then.71, label %if.else.152

if.then.71:                                       ; preds = %if.else.68
  %61 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement72 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %61, i32 0, i32 8
  %62 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement72, align 8
  %st73 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %62, i32 0, i32 2
  %63 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st73, align 8
  %64 = load i32, i32* %i, align 4
  %call74 = call i8* @sqlite3_column_text(%struct.sqlite3_stmt* %63, i32 %64)
  store i8* %call74, i8** %val_str, align 8
  %65 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement75 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %65, i32 0, i32 8
  %66 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement75, align 8
  %st76 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %66, i32 0, i32 2
  %67 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st76, align 8
  %68 = load i32, i32* %i, align 4
  %call77 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %67, i32 %68)
  %conv78 = sext i32 %call77 to i64
  store i64 %conv78, i64* %nbytes, align 8
  %69 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection79 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %69, i32 0, i32 1
  %70 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection79, align 8
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %70, i32 0, i32 17
  %71 = load %struct._object*, %struct._object** %text_factory, align 8
  %cmp80 = icmp eq %struct._object* %71, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0)
  br i1 %cmp80, label %if.then.82, label %if.else.131

if.then.82:                                       ; preds = %if.then.71
  %72 = load i8*, i8** %val_str, align 8
  %73 = load i64, i64* %nbytes, align 8
  %call83 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %72, i64 %73)
  store %struct._object* %call83, %struct._object** %converted, align 8
  %74 = load %struct._object*, %struct._object** %converted, align 8
  %tobool84 = icmp ne %struct._object* %74, null
  br i1 %tobool84, label %if.end.130, label %if.then.85

if.then.85:                                       ; preds = %if.then.82
  %75 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement86 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %75, i32 0, i32 8
  %76 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement86, align 8
  %st87 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %76, i32 0, i32 2
  %77 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st87, align 8
  %78 = load i32, i32* %i, align 4
  %call88 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %77, i32 %78)
  store i8* %call88, i8** %colname, align 8
  %79 = load i8*, i8** %colname, align 8
  %tobool89 = icmp ne i8* %79, null
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.then.85
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8** %colname, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.then.85
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %80 = load i8*, i8** %colname, align 8
  %81 = load i8*, i8** %val_str, align 8
  %call92 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 199, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0), i8* %80, i8* %81)
  %arraydecay93 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %call95 = call i64 @strlen(i8* %arraydecay94) #3
  %call96 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %arraydecay93, i64 %call95)
  store %struct._object* %call96, %struct._object** %buf_bytes, align 8
  %82 = load %struct._object*, %struct._object** %buf_bytes, align 8
  %tobool97 = icmp ne %struct._object* %82, null
  br i1 %tobool97, label %if.else.99, label %if.then.98

if.then.98:                                       ; preds = %if.end.91
  %83 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.129

if.else.99:                                       ; preds = %if.end.91
  %84 = load %struct._object*, %struct._object** %buf_bytes, align 8
  %call100 = call %struct._object* @PyUnicode_FromEncodedObject(%struct._object* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call100, %struct._object** %error_obj, align 8
  %85 = load %struct._object*, %struct._object** %error_obj, align 8
  %tobool101 = icmp ne %struct._object* %85, null
  br i1 %tobool101, label %if.else.103, label %if.then.102

if.then.102:                                      ; preds = %if.else.99
  %86 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.116

if.else.103:                                      ; preds = %if.else.99
  %87 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  %88 = load %struct._object*, %struct._object** %error_obj, align 8
  call void @PyErr_SetObject(%struct._object* %87, %struct._object* %88)
  br label %do.body.104

do.body.104:                                      ; preds = %if.else.103
  %89 = load %struct._object*, %struct._object** %error_obj, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp105, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt106, align 8
  %dec107 = add i64 %91, -1
  store i64 %dec107, i64* %ob_refcnt106, align 8
  %cmp108 = icmp ne i64 %dec107, 0
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.104
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  call void %94(%struct._object* %95)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %if.then.102
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %96 = load %struct._object*, %struct._object** %buf_bytes, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp118, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt119, align 8
  %dec120 = add i64 %98, -1
  store i64 %dec120, i64* %ob_refcnt119, align 8
  %cmp121 = icmp ne i64 %dec120, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127

if.else.124:                                      ; preds = %do.body.117
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8
  call void %101(%struct._object* %102)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %if.then.98
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.82
  br label %if.end.151

if.else.131:                                      ; preds = %if.then.71
  %103 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection132 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %103, i32 0, i32 1
  %104 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection132, align 8
  %text_factory133 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %104, i32 0, i32 17
  %105 = load %struct._object*, %struct._object** %text_factory133, align 8
  %cmp134 = icmp eq %struct._object* %105, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBytes_Type, i32 0, i32 0, i32 0)
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.else.131
  %106 = load i8*, i8** %val_str, align 8
  %107 = load i64, i64* %nbytes, align 8
  %call137 = call %struct._object* @PyBytes_FromStringAndSize(i8* %106, i64 %107)
  store %struct._object* %call137, %struct._object** %converted, align 8
  br label %if.end.150

if.else.138:                                      ; preds = %if.else.131
  %108 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection139 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %108, i32 0, i32 1
  %109 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection139, align 8
  %text_factory140 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %109, i32 0, i32 17
  %110 = load %struct._object*, %struct._object** %text_factory140, align 8
  %cmp141 = icmp eq %struct._object* %110, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyByteArray_Type, i32 0, i32 0, i32 0)
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.else.138
  %111 = load i8*, i8** %val_str, align 8
  %112 = load i64, i64* %nbytes, align 8
  %call144 = call %struct._object* @PyByteArray_FromStringAndSize(i8* %111, i64 %112)
  store %struct._object* %call144, %struct._object** %converted, align 8
  br label %if.end.149

if.else.145:                                      ; preds = %if.else.138
  %113 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection146 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %113, i32 0, i32 1
  %114 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection146, align 8
  %text_factory147 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %114, i32 0, i32 17
  %115 = load %struct._object*, %struct._object** %text_factory147, align 8
  %116 = load i8*, i8** %val_str, align 8
  %117 = load i64, i64* %nbytes, align 8
  %call148 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %116, i64 %117)
  store %struct._object* %call148, %struct._object** %converted, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.145, %if.then.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.136
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.130
  br label %if.end.164

if.else.152:                                      ; preds = %if.else.68
  %118 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement153 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %118, i32 0, i32 8
  %119 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement153, align 8
  %st154 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %119, i32 0, i32 2
  %120 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st154, align 8
  %121 = load i32, i32* %i, align 4
  %call155 = call i32 @sqlite3_column_bytes(%struct.sqlite3_stmt* %120, i32 %121)
  %conv156 = sext i32 %call155 to i64
  store i64 %conv156, i64* %nbytes, align 8
  %122 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement157 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %122, i32 0, i32 8
  %123 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement157, align 8
  %st158 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %123, i32 0, i32 2
  %124 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st158, align 8
  %125 = load i32, i32* %i, align 4
  %call159 = call i8* @sqlite3_column_blob(%struct.sqlite3_stmt* %124, i32 %125)
  %126 = load i64, i64* %nbytes, align 8
  %call160 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call159, i64 %126)
  store %struct._object* %call160, %struct._object** %buffer, align 8
  %127 = load %struct._object*, %struct._object** %buffer, align 8
  %tobool161 = icmp ne %struct._object* %127, null
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %if.else.152
  br label %for.end

if.end.163:                                       ; preds = %if.else.152
  %128 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %128, %struct._object** %converted, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.151
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.63
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.55
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.50
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.41
  %129 = load %struct._object*, %struct._object** %converted, align 8
  %tobool169 = icmp ne %struct._object* %129, null
  br i1 %tobool169, label %if.then.170, label %if.else.173

if.then.170:                                      ; preds = %if.end.168
  %130 = load %struct._object*, %struct._object** %row, align 8
  %131 = load i32, i32* %i, align 4
  %conv171 = sext i32 %131 to i64
  %132 = load %struct._object*, %struct._object** %converted, align 8
  %call172 = call i32 @PyTuple_SetItem(%struct._object* %130, i64 %conv171, %struct._object* %132)
  br label %if.end.177

if.else.173:                                      ; preds = %if.end.168
  %133 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc174 = add i64 %133, 1
  store i64 %inc174, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %134 = load %struct._object*, %struct._object** %row, align 8
  %135 = load i32, i32* %i, align 4
  %conv175 = sext i32 %135 to i64
  %call176 = call i32 @PyTuple_SetItem(%struct._object* %134, i64 %conv175, %struct._object* @_Py_NoneStruct)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.173, %if.then.170
  br label %for.inc

for.inc:                                          ; preds = %if.end.177
  %136 = load i32, i32* %i, align 4
  %inc178 = add i32 %136, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.162, %if.then.39, %for.cond
  %call179 = call %struct._object* @PyErr_Occurred()
  %tobool180 = icmp ne %struct._object* %call179, null
  br i1 %tobool180, label %if.then.181, label %if.end.194

if.then.181:                                      ; preds = %for.end
  br label %do.body.182

do.body.182:                                      ; preds = %if.then.181
  %137 = load %struct._object*, %struct._object** %row, align 8
  store %struct._object* %137, %struct._object** %_py_decref_tmp183, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_refcnt184 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 0
  %139 = load i64, i64* %ob_refcnt184, align 8
  %dec185 = add i64 %139, -1
  store i64 %dec185, i64* %ob_refcnt184, align 8
  %cmp186 = icmp ne i64 %dec185, 0
  br i1 %cmp186, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %do.body.182
  br label %if.end.192

if.else.189:                                      ; preds = %do.body.182
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  %ob_type190 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 1
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type190, align 8
  %tp_dealloc191 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i32 0, i32 4
  %142 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc191, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp183, align 8
  call void %142(%struct._object* %143)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.then.188
  br label %do.end.193

do.end.193:                                       ; preds = %if.end.192
  store %struct._object* null, %struct._object** %row, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %do.end.193, %for.end
  %144 = load %struct._object*, %struct._object** %row, align 8
  store %struct._object* %144, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.194, %if.then.30, %if.then.4, %if.then
  %145 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %145
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @sqlite3_data_count(%struct.sqlite3_stmt*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare i32 @sqlite3_column_bytes(%struct.sqlite3_stmt*, i32) #1

declare i8* @sqlite3_column_blob(%struct.sqlite3_stmt*, i32) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare i32 @sqlite3_column_type(%struct.sqlite3_stmt*, i32) #1

declare %struct._object* @_pysqlite_long_from_int64(i64) #1

declare i64 @sqlite3_column_int64(%struct.sqlite3_stmt*, i32) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare double @sqlite3_column_double(%struct.sqlite3_stmt*, i32) #1

declare i8* @sqlite3_column_text(%struct.sqlite3_stmt*, i32) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare %struct._object* @PyByteArray_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._object* @PyUnicode_FromEncodedObject(%struct._object*, i8*, i8*) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

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
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp161 = alloca %struct._object*, align 8
  %_py_tmp184 = alloca %struct._object*, align 8
  %_py_decref_tmp190 = alloca %struct._object*, align 8
  %_py_decref_tmp220 = alloca %struct._object*, align 8
  %_py_decref_tmp242 = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp322 = alloca %struct._object*, align 8
  %_py_tmp385 = alloca %struct._object*, align 8
  %_py_decref_tmp392 = alloca %struct._object*, align 8
  %_py_decref_tmp421 = alloca %struct._object*, align 8
  %lastrowid437 = alloca i64, align 8
  %_save438 = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp459 = alloca %struct._object*, align 8
  %_py_xdecref_tmp489 = alloca %struct._object*, align 8
  %_py_decref_tmp494 = alloca %struct._object*, align 8
  %_py_xdecref_tmp508 = alloca %struct._object*, align 8
  %_py_decref_tmp513 = alloca %struct._object*, align 8
  %_py_xdecref_tmp527 = alloca %struct._object*, align 8
  %_py_decref_tmp532 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store i32 %multiple, i32* %multiple.addr, align 4
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %parameters_list, align 8
  store %struct._object* null, %struct._object** %parameters_iter, align 8
  store %struct._object* null, %struct._object** %parameters, align 8
  store %struct._object* null, %struct._object** %second_argument, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call = call i32 @check_cursor(%struct.pysqlite_Cursor* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %locked = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %1, i32 0, i32 11
  store i32 1, i32* %locked, align 4
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 10
  store i32 0, i32* %reset, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %3, i32 0, i32 13
  %4 = load %struct._object*, %struct._object** %next_row, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %do.body
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row2 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 13
  store %struct._object* null, %struct._object** %next_row2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %14 = load i32, i32* %multiple.addr, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.else.34

if.then.10:                                       ; preds = %do.end.8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call11 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct._object** %operation, %struct._object** %second_argument)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  br label %error

if.end.14:                                        ; preds = %if.then.10
  %16 = load %struct._object*, %struct._object** %operation, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags, align 8
  %and = and i64 %18, 268435456
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  br label %error

if.end.18:                                        ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** %second_argument, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 26
  %tp_iternext20 = bitcast {}** %tp_iternext to %struct._object* (%struct._object*)**
  %22 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext20, align 8
  %cmp21 = icmp ne %struct._object* (%struct._object*)* %22, null
  br i1 %cmp21, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.end.18
  %23 = load %struct._object*, %struct._object** %second_argument, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_iternext23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 26
  %tp_iternext24 = bitcast {}** %tp_iternext23 to %struct._object* (%struct._object*)**
  %25 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext24, align 8
  %cmp25 = icmp ne %struct._object* (%struct._object*)* %25, @_PyObject_NextNotImplemented
  br i1 %cmp25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %second_argument, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt27, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %ob_refcnt27, align 8
  %28 = load %struct._object*, %struct._object** %second_argument, align 8
  store %struct._object* %28, %struct._object** %parameters_iter, align 8
  br label %if.end.33

if.else.28:                                       ; preds = %land.lhs.true, %if.end.18
  %29 = load %struct._object*, %struct._object** %second_argument, align 8
  %call29 = call %struct._object* @PyObject_GetIter(%struct._object* %29)
  store %struct._object* %call29, %struct._object** %parameters_iter, align 8
  %30 = load %struct._object*, %struct._object** %parameters_iter, align 8
  %tobool30 = icmp ne %struct._object* %30, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.else.28
  br label %error

if.end.32:                                        ; preds = %if.else.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.26
  br label %if.end.89

if.else.34:                                       ; preds = %do.end.8
  %31 = load %struct._object*, %struct._object** %args.addr, align 8
  %call35 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._object** %operation, %struct._object** %second_argument)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.else.34
  br label %error

if.end.38:                                        ; preds = %if.else.34
  %32 = load %struct._object*, %struct._object** %operation, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_flags40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19
  %34 = load i64, i64* %tp_flags40, align 8
  %and41 = and i64 %34, 268435456
  %cmp42 = icmp ne i64 %and41, 0
  br i1 %cmp42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.38
  %35 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  br label %error

if.end.44:                                        ; preds = %if.end.38
  %call45 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call45, %struct._object** %parameters_list, align 8
  %36 = load %struct._object*, %struct._object** %parameters_list, align 8
  %tobool46 = icmp ne %struct._object* %36, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  br label %error

if.end.48:                                        ; preds = %if.end.44
  %37 = load %struct._object*, %struct._object** %second_argument, align 8
  %cmp49 = icmp eq %struct._object* %37, null
  br i1 %cmp49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %if.end.48
  %call51 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call51, %struct._object** %second_argument, align 8
  %38 = load %struct._object*, %struct._object** %second_argument, align 8
  %tobool52 = icmp ne %struct._object* %38, null
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.then.50
  br label %error

if.end.54:                                        ; preds = %if.then.50
  br label %if.end.58

if.else.55:                                       ; preds = %if.end.48
  %39 = load %struct._object*, %struct._object** %second_argument, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt56, align 8
  %inc57 = add i64 %40, 1
  store i64 %inc57, i64* %ob_refcnt56, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.end.54
  %41 = load %struct._object*, %struct._object** %parameters_list, align 8
  %42 = load %struct._object*, %struct._object** %second_argument, align 8
  %call59 = call i32 @PyList_Append(%struct._object* %41, %struct._object* %42)
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %if.end.58
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %43 = load %struct._object*, %struct._object** %second_argument, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp63, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %45, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %48(%struct._object* %49)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %error

if.end.73:                                        ; preds = %if.end.58
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.73
  %50 = load %struct._object*, %struct._object** %second_argument, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp75, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %52, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %55(%struct._object* %56)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %57 = load %struct._object*, %struct._object** %parameters_list, align 8
  %call85 = call %struct._object* @PyObject_GetIter(%struct._object* %57)
  store %struct._object* %call85, %struct._object** %parameters_iter, align 8
  %58 = load %struct._object*, %struct._object** %parameters_iter, align 8
  %tobool86 = icmp ne %struct._object* %58, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %do.end.84
  br label %error

if.end.88:                                        ; preds = %do.end.84
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.33
  %59 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %59, i32 0, i32 8
  %60 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %cmp90 = icmp ne %struct.pysqlite_Statement* %60, null
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.89
  %61 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement92 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %61, i32 0, i32 8
  %62 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement92, align 8
  %call93 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %62)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.89
  %63 = load %struct._object*, %struct._object** %operation, align 8
  %call95 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %63, i64* %operation_len)
  store i8* %call95, i8** %operation_cstr, align 8
  %64 = load i8*, i8** %operation_cstr, align 8
  %cmp96 = icmp eq i8* %64, null
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.94
  br label %error

if.end.98:                                        ; preds = %if.end.94
  br label %do.body.99

do.body.99:                                       ; preds = %if.end.98
  %65 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %65, i32 0, i32 2
  %66 = load %struct._object*, %struct._object** %description, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp100, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt101, align 8
  %dec102 = add i64 %68, -1
  store i64 %dec102, i64* %ob_refcnt101, align 8
  %cmp103 = icmp ne i64 %dec102, 0
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.99
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8
  call void %71(%struct._object* %72)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  %73 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc110 = add i64 %73, 1
  store i64 %inc110, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %74 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description111 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %74, i32 0, i32 2
  store %struct._object* @_Py_NoneStruct, %struct._object** %description111, align 8
  %75 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %75, i32 0, i32 6
  store i64 -1, i64* %rowcount, align 8
  %call112 = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call112, %struct._object** %func_args, align 8
  %76 = load %struct._object*, %struct._object** %func_args, align 8
  %tobool113 = icmp ne %struct._object* %76, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %do.end.109
  br label %error

if.end.115:                                       ; preds = %do.end.109
  %77 = load %struct._object*, %struct._object** %operation, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt116, align 8
  %inc117 = add i64 %78, 1
  store i64 %inc117, i64* %ob_refcnt116, align 8
  %79 = load %struct._object*, %struct._object** %func_args, align 8
  %80 = load %struct._object*, %struct._object** %operation, align 8
  %call118 = call i32 @PyTuple_SetItem(%struct._object* %79, i64 0, %struct._object* %80)
  %cmp119 = icmp ne i32 %call118, 0
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.115
  br label %error

if.end.121:                                       ; preds = %if.end.115
  %81 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement122 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %81, i32 0, i32 8
  %82 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement122, align 8
  %tobool123 = icmp ne %struct.pysqlite_Statement* %82, null
  br i1 %tobool123, label %if.then.124, label %if.end.139

if.then.124:                                      ; preds = %if.end.121
  %83 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement125 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %83, i32 0, i32 8
  %84 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement125, align 8
  %call126 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %84)
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.124
  %85 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement129 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %85, i32 0, i32 8
  %86 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement129, align 8
  %87 = bitcast %struct.pysqlite_Statement* %86 to %struct._object*
  store %struct._object* %87, %struct._object** %_py_decref_tmp128, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt130, align 8
  %dec131 = add i64 %89, -1
  store i64 %dec131, i64* %ob_refcnt130, align 8
  %cmp132 = icmp ne i64 %dec131, 0
  br i1 %cmp132, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137

if.else.134:                                      ; preds = %do.body.127
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %92(%struct._object* %93)
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.138, %if.end.121
  %94 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %94, i32 0, i32 1
  %95 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %95, i32 0, i32 11
  %96 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8
  %97 = load %struct._object*, %struct._object** %func_args, align 8
  %call140 = call %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache* %96, %struct._object* %97)
  %98 = bitcast %struct._object* %call140 to %struct.pysqlite_Statement*
  %99 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement141 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %99, i32 0, i32 8
  store %struct.pysqlite_Statement* %98, %struct.pysqlite_Statement** %statement141, align 8
  br label %do.body.142

do.body.142:                                      ; preds = %if.end.139
  %100 = load %struct._object*, %struct._object** %func_args, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp143, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %102, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %do.body.142
  br label %if.end.151

if.else.148:                                      ; preds = %do.body.142
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type149 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type149, align 8
  %tp_dealloc150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc150, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %105(%struct._object* %106)
  br label %if.end.151

if.end.151:                                       ; preds = %if.else.148, %if.then.147
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  %107 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement153 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %107, i32 0, i32 8
  %108 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement153, align 8
  %tobool154 = icmp ne %struct.pysqlite_Statement* %108, null
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %do.end.152
  br label %error

if.end.156:                                       ; preds = %do.end.152
  %109 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement157 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %109, i32 0, i32 8
  %110 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement157, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %110, i32 0, i32 4
  %111 = load i32, i32* %in_use, align 4
  %tobool158 = icmp ne i32 %111, 0
  br i1 %tobool158, label %if.then.159, label %if.end.203

if.then.159:                                      ; preds = %if.end.156
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  %112 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement162 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %112, i32 0, i32 8
  %113 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement162, align 8
  %114 = bitcast %struct.pysqlite_Statement* %113 to %struct._object*
  store %struct._object* %114, %struct._object** %_py_decref_tmp161, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %116, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.160
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.160
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp161, align 8
  call void %119(%struct._object* %120)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  %call172 = call %struct._object* @_PyObject_New(%struct._typeobject* @pysqlite_StatementType)
  %121 = bitcast %struct._object* %call172 to %struct.pysqlite_Statement*
  %122 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement173 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %122, i32 0, i32 8
  store %struct.pysqlite_Statement* %121, %struct.pysqlite_Statement** %statement173, align 8
  %123 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement174 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %123, i32 0, i32 8
  %124 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement174, align 8
  %tobool175 = icmp ne %struct.pysqlite_Statement* %124, null
  br i1 %tobool175, label %if.end.177, label %if.then.176

if.then.176:                                      ; preds = %do.end.171
  br label %error

if.end.177:                                       ; preds = %do.end.171
  %125 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement178 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %125, i32 0, i32 8
  %126 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement178, align 8
  %127 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection179 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %127, i32 0, i32 1
  %128 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection179, align 8
  %129 = load %struct._object*, %struct._object** %operation, align 8
  %call180 = call i32 @pysqlite_statement_create(%struct.pysqlite_Statement* %126, %struct.pysqlite_Connection* %128, %struct._object* %129)
  store i32 %call180, i32* %rc, align 4
  %130 = load i32, i32* %rc, align 4
  %cmp181 = icmp ne i32 %130, 0
  br i1 %cmp181, label %if.then.182, label %if.end.202

if.then.182:                                      ; preds = %if.end.177
  br label %do.body.183

do.body.183:                                      ; preds = %if.then.182
  %131 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement185 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %131, i32 0, i32 8
  %132 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement185, align 8
  %133 = bitcast %struct.pysqlite_Statement* %132 to %struct._object*
  store %struct._object* %133, %struct._object** %_py_tmp184, align 8
  %134 = load %struct._object*, %struct._object** %_py_tmp184, align 8
  %cmp186 = icmp ne %struct._object* %134, null
  br i1 %cmp186, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %do.body.183
  %135 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement188 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %135, i32 0, i32 8
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement188, align 8
  br label %do.body.189

do.body.189:                                      ; preds = %if.then.187
  %136 = load %struct._object*, %struct._object** %_py_tmp184, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp190, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8
  %ob_refcnt191 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt191, align 8
  %dec192 = add i64 %138, -1
  store i64 %dec192, i64* %ob_refcnt191, align 8
  %cmp193 = icmp ne i64 %dec192, 0
  br i1 %cmp193, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.189
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.189
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp190, align 8
  call void %141(%struct._object* %142)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  br label %if.end.200

if.end.200:                                       ; preds = %do.end.199, %do.body.183
  br label %do.end.201

do.end.201:                                       ; preds = %if.end.200
  br label %error

if.end.202:                                       ; preds = %if.end.177
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.156
  %143 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement204 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %143, i32 0, i32 8
  %144 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement204, align 8
  %call205 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %144)
  %145 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement206 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %145, i32 0, i32 8
  %146 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement206, align 8
  call void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %146)
  %147 = load i8*, i8** %operation_cstr, align 8
  %call207 = call i32 @detect_statement_type(i8* %147)
  store i32 %call207, i32* %statement_type, align 4
  %148 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection208 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %148, i32 0, i32 1
  %149 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection208, align 8
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %149, i32 0, i32 7
  %150 = load i8*, i8** %begin_statement, align 8
  %tobool209 = icmp ne i8* %150, null
  br i1 %tobool209, label %if.then.210, label %if.end.257

if.then.210:                                      ; preds = %if.end.203
  %151 = load i32, i32* %statement_type, align 4
  switch i32 %151, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb.231
    i32 5, label %sw.bb.253
  ]

sw.bb:                                            ; preds = %if.then.210, %if.then.210, %if.then.210, %if.then.210
  %152 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection211 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %152, i32 0, i32 1
  %153 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection211, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %153, i32 0, i32 2
  %154 = load i8, i8* %inTransaction, align 1
  %tobool212 = icmp ne i8 %154, 0
  br i1 %tobool212, label %if.end.230, label %if.then.213

if.then.213:                                      ; preds = %sw.bb
  %155 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection214 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %155, i32 0, i32 1
  %156 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection214, align 8
  %call215 = call %struct._object* @_pysqlite_connection_begin(%struct.pysqlite_Connection* %156)
  store %struct._object* %call215, %struct._object** %result, align 8
  %157 = load %struct._object*, %struct._object** %result, align 8
  %tobool216 = icmp ne %struct._object* %157, null
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.then.213
  br label %error

if.end.218:                                       ; preds = %if.then.213
  br label %do.body.219

do.body.219:                                      ; preds = %if.end.218
  %158 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %158, %struct._object** %_py_decref_tmp220, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_refcnt221 = getelementptr inbounds %struct._object, %struct._object* %159, i32 0, i32 0
  %160 = load i64, i64* %ob_refcnt221, align 8
  %dec222 = add i64 %160, -1
  store i64 %dec222, i64* %ob_refcnt221, align 8
  %cmp223 = icmp ne i64 %dec222, 0
  br i1 %cmp223, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %do.body.219
  br label %if.end.228

if.else.225:                                      ; preds = %do.body.219
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  %ob_type226 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 1
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type226, align 8
  %tp_dealloc227 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i32 0, i32 4
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc227, align 8
  %164 = load %struct._object*, %struct._object** %_py_decref_tmp220, align 8
  call void %163(%struct._object* %164)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  br label %if.end.230

if.end.230:                                       ; preds = %do.end.229, %sw.bb
  br label %sw.epilog

sw.bb.231:                                        ; preds = %if.then.210
  %165 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection232 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %165, i32 0, i32 1
  %166 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection232, align 8
  %inTransaction233 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %166, i32 0, i32 2
  %167 = load i8, i8* %inTransaction233, align 1
  %tobool234 = icmp ne i8 %167, 0
  br i1 %tobool234, label %if.then.235, label %if.end.252

if.then.235:                                      ; preds = %sw.bb.231
  %168 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection236 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %168, i32 0, i32 1
  %169 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection236, align 8
  %call237 = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %169, %struct._object* null)
  store %struct._object* %call237, %struct._object** %result, align 8
  %170 = load %struct._object*, %struct._object** %result, align 8
  %tobool238 = icmp ne %struct._object* %170, null
  br i1 %tobool238, label %if.end.240, label %if.then.239

if.then.239:                                      ; preds = %if.then.235
  br label %error

if.end.240:                                       ; preds = %if.then.235
  br label %do.body.241

do.body.241:                                      ; preds = %if.end.240
  %171 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp242, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_refcnt243 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt243, align 8
  %dec244 = add i64 %173, -1
  store i64 %dec244, i64* %ob_refcnt243, align 8
  %cmp245 = icmp ne i64 %dec244, 0
  br i1 %cmp245, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %do.body.241
  br label %if.end.250

if.else.247:                                      ; preds = %do.body.241
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  call void %176(%struct._object* %177)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.246
  br label %do.end.251

do.end.251:                                       ; preds = %if.end.250
  br label %if.end.252

if.end.252:                                       ; preds = %do.end.251, %sw.bb.231
  br label %sw.epilog

sw.bb.253:                                        ; preds = %if.then.210
  %178 = load i32, i32* %multiple.addr, align 4
  %tobool254 = icmp ne i32 %178, 0
  br i1 %tobool254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %sw.bb.253
  %179 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %179, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0))
  br label %error

if.end.256:                                       ; preds = %sw.bb.253
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.210, %if.end.256, %if.end.252, %if.end.230
  br label %if.end.257

if.end.257:                                       ; preds = %sw.epilog, %if.end.203
  br label %while.body

while.body:                                       ; preds = %if.end.257, %do.end.471
  %180 = load %struct._object*, %struct._object** %parameters_iter, align 8
  %call258 = call %struct._object* @PyIter_Next(%struct._object* %180)
  store %struct._object* %call258, %struct._object** %parameters, align 8
  %181 = load %struct._object*, %struct._object** %parameters, align 8
  %tobool259 = icmp ne %struct._object* %181, null
  br i1 %tobool259, label %if.end.261, label %if.then.260

if.then.260:                                      ; preds = %while.body
  br label %while.end.472

if.end.261:                                       ; preds = %while.body
  %182 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement262 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %182, i32 0, i32 8
  %183 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement262, align 8
  call void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement* %183)
  %184 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement263 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %184, i32 0, i32 8
  %185 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement263, align 8
  %186 = load %struct._object*, %struct._object** %parameters, align 8
  call void @pysqlite_statement_bind_parameters(%struct.pysqlite_Statement* %185, %struct._object* %186)
  %call264 = call %struct._object* @PyErr_Occurred()
  %tobool265 = icmp ne %struct._object* %call264, null
  br i1 %tobool265, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.end.261
  br label %error

if.end.267:                                       ; preds = %if.end.261
  br label %while.body.269

while.body.269:                                   ; preds = %if.end.267, %if.then.284
  %187 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement270 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %187, i32 0, i32 8
  %188 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement270, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %188, i32 0, i32 2
  %189 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %190 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection271 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %190, i32 0, i32 1
  %191 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection271, align 8
  %call272 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %189, %struct.pysqlite_Connection* %191)
  store i32 %call272, i32* %rc, align 4
  %192 = load i32, i32* %rc, align 4
  %cmp273 = icmp eq i32 %192, 101
  br i1 %cmp273, label %if.then.275, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.269
  %193 = load i32, i32* %rc, align 4
  %cmp274 = icmp eq i32 %193, 100
  br i1 %cmp274, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %lor.lhs.false, %while.body.269
  br label %while.end

if.end.276:                                       ; preds = %lor.lhs.false
  %194 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement277 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %194, i32 0, i32 8
  %195 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement277, align 8
  %call278 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %195)
  store i32 %call278, i32* %rc, align 4
  %196 = load i32, i32* %rc, align 4
  %cmp279 = icmp eq i32 %196, 17
  br i1 %cmp279, label %if.then.280, label %if.else.290

if.then.280:                                      ; preds = %if.end.276
  %197 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement281 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %197, i32 0, i32 8
  %198 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement281, align 8
  %199 = load %struct._object*, %struct._object** %parameters, align 8
  %call282 = call i32 @pysqlite_statement_recompile(%struct.pysqlite_Statement* %198, %struct._object* %199)
  store i32 %call282, i32* %rc, align 4
  %200 = load i32, i32* %rc, align 4
  %cmp283 = icmp eq i32 %200, 0
  br i1 %cmp283, label %if.then.284, label %if.else.285

if.then.284:                                      ; preds = %if.then.280
  br label %while.body.269

if.else.285:                                      ; preds = %if.then.280
  %201 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement286 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %201, i32 0, i32 8
  %202 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement286, align 8
  %call287 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %202)
  %203 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection288 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %203, i32 0, i32 1
  %204 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection288, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %204, i32 0, i32 1
  %205 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call289 = call i32 @_pysqlite_seterror(%struct.sqlite3* %205, %struct.sqlite3_stmt* null)
  br label %error

if.else.290:                                      ; preds = %if.end.276
  %call291 = call %struct._object* @PyErr_Occurred()
  %tobool292 = icmp ne %struct._object* %call291, null
  br i1 %tobool292, label %if.then.293, label %if.end.298

if.then.293:                                      ; preds = %if.else.290
  %206 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool294 = icmp ne i32 %206, 0
  br i1 %tobool294, label %if.then.295, label %if.else.296

if.then.295:                                      ; preds = %if.then.293
  call void @PyErr_Print()
  br label %if.end.297

if.else.296:                                      ; preds = %if.then.293
  call void @PyErr_Clear()
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.296, %if.then.295
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %if.else.290
  %207 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement299 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %207, i32 0, i32 8
  %208 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement299, align 8
  %call300 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %208)
  %209 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection301 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %209, i32 0, i32 1
  %210 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection301, align 8
  %db302 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %210, i32 0, i32 1
  %211 = load %struct.sqlite3*, %struct.sqlite3** %db302, align 8
  %call303 = call i32 @_pysqlite_seterror(%struct.sqlite3* %211, %struct.sqlite3_stmt* null)
  br label %error

while.end:                                        ; preds = %if.then.275
  %212 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call304 = call i32 @pysqlite_build_row_cast_map(%struct.pysqlite_Cursor* %212)
  %cmp305 = icmp ne i32 %call304, 0
  br i1 %cmp305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %while.end
  %213 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %error

if.end.307:                                       ; preds = %while.end
  %214 = load i32, i32* %rc, align 4
  %cmp308 = icmp eq i32 %214, 100
  br i1 %cmp308, label %if.then.313, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %if.end.307
  %215 = load i32, i32* %rc, align 4
  %cmp310 = icmp eq i32 %215, 101
  br i1 %cmp310, label %land.lhs.true.311, label %if.end.367

land.lhs.true.311:                                ; preds = %lor.lhs.false.309
  %216 = load i32, i32* %statement_type, align 4
  %cmp312 = icmp eq i32 %216, 5
  br i1 %cmp312, label %if.then.313, label %if.end.367

if.then.313:                                      ; preds = %land.lhs.true.311, %if.end.307
  %217 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description314 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %217, i32 0, i32 2
  %218 = load %struct._object*, %struct._object** %description314, align 8
  %cmp315 = icmp eq %struct._object* %218, @_Py_NoneStruct
  br i1 %cmp315, label %if.then.316, label %if.end.366

if.then.316:                                      ; preds = %if.then.313
  %call317 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call317, %struct._ts** %_save, align 8
  %219 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement318 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %219, i32 0, i32 8
  %220 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement318, align 8
  %st319 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %220, i32 0, i32 2
  %221 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st319, align 8
  %call320 = call i32 @sqlite3_column_count(%struct.sqlite3_stmt* %221)
  store i32 %call320, i32* %numcols, align 4
  %222 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %222)
  br label %do.body.321

do.body.321:                                      ; preds = %if.then.316
  %223 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description323 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %223, i32 0, i32 2
  %224 = load %struct._object*, %struct._object** %description323, align 8
  store %struct._object* %224, %struct._object** %_py_decref_tmp322, align 8
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  %ob_refcnt324 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 0
  %226 = load i64, i64* %ob_refcnt324, align 8
  %dec325 = add i64 %226, -1
  store i64 %dec325, i64* %ob_refcnt324, align 8
  %cmp326 = icmp ne i64 %dec325, 0
  br i1 %cmp326, label %if.then.327, label %if.else.328

if.then.327:                                      ; preds = %do.body.321
  br label %if.end.331

if.else.328:                                      ; preds = %do.body.321
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  %ob_type329 = getelementptr inbounds %struct._object, %struct._object* %227, i32 0, i32 1
  %228 = load %struct._typeobject*, %struct._typeobject** %ob_type329, align 8
  %tp_dealloc330 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %228, i32 0, i32 4
  %229 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc330, align 8
  %230 = load %struct._object*, %struct._object** %_py_decref_tmp322, align 8
  call void %229(%struct._object* %230)
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.328, %if.then.327
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.331
  %231 = load i32, i32* %numcols, align 4
  %conv = sext i32 %231 to i64
  %call333 = call %struct._object* @PyTuple_New(i64 %conv)
  %232 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description334 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %232, i32 0, i32 2
  store %struct._object* %call333, %struct._object** %description334, align 8
  %233 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description335 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %233, i32 0, i32 2
  %234 = load %struct._object*, %struct._object** %description335, align 8
  %tobool336 = icmp ne %struct._object* %234, null
  br i1 %tobool336, label %if.end.338, label %if.then.337

if.then.337:                                      ; preds = %do.end.332
  br label %error

if.end.338:                                       ; preds = %do.end.332
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.338
  %235 = load i32, i32* %i, align 4
  %236 = load i32, i32* %numcols, align 4
  %cmp339 = icmp slt i32 %235, %236
  br i1 %cmp339, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call341 = call %struct._object* @PyTuple_New(i64 7)
  store %struct._object* %call341, %struct._object** %descriptor, align 8
  %237 = load %struct._object*, %struct._object** %descriptor, align 8
  %tobool342 = icmp ne %struct._object* %237, null
  br i1 %tobool342, label %if.end.344, label %if.then.343

if.then.343:                                      ; preds = %for.body
  br label %error

if.end.344:                                       ; preds = %for.body
  %238 = load %struct._object*, %struct._object** %descriptor, align 8
  %239 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement345 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %239, i32 0, i32 8
  %240 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement345, align 8
  %st346 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %240, i32 0, i32 2
  %241 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st346, align 8
  %242 = load i32, i32* %i, align 4
  %call347 = call i8* @sqlite3_column_name(%struct.sqlite3_stmt* %241, i32 %242)
  %call348 = call %struct._object* @_pysqlite_build_column_name(i8* %call347)
  %call349 = call i32 @PyTuple_SetItem(%struct._object* %238, i64 0, %struct._object* %call348)
  %243 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc350 = add i64 %243, 1
  store i64 %inc350, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %244 = load %struct._object*, %struct._object** %descriptor, align 8
  %call351 = call i32 @PyTuple_SetItem(%struct._object* %244, i64 1, %struct._object* @_Py_NoneStruct)
  %245 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc352 = add i64 %245, 1
  store i64 %inc352, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %246 = load %struct._object*, %struct._object** %descriptor, align 8
  %call353 = call i32 @PyTuple_SetItem(%struct._object* %246, i64 2, %struct._object* @_Py_NoneStruct)
  %247 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc354 = add i64 %247, 1
  store i64 %inc354, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %248 = load %struct._object*, %struct._object** %descriptor, align 8
  %call355 = call i32 @PyTuple_SetItem(%struct._object* %248, i64 3, %struct._object* @_Py_NoneStruct)
  %249 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc356 = add i64 %249, 1
  store i64 %inc356, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %250 = load %struct._object*, %struct._object** %descriptor, align 8
  %call357 = call i32 @PyTuple_SetItem(%struct._object* %250, i64 4, %struct._object* @_Py_NoneStruct)
  %251 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc358 = add i64 %251, 1
  store i64 %inc358, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %252 = load %struct._object*, %struct._object** %descriptor, align 8
  %call359 = call i32 @PyTuple_SetItem(%struct._object* %252, i64 5, %struct._object* @_Py_NoneStruct)
  %253 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc360 = add i64 %253, 1
  store i64 %inc360, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %254 = load %struct._object*, %struct._object** %descriptor, align 8
  %call361 = call i32 @PyTuple_SetItem(%struct._object* %254, i64 6, %struct._object* @_Py_NoneStruct)
  %255 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description362 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %255, i32 0, i32 2
  %256 = load %struct._object*, %struct._object** %description362, align 8
  %257 = load i32, i32* %i, align 4
  %conv363 = sext i32 %257 to i64
  %258 = load %struct._object*, %struct._object** %descriptor, align 8
  %call364 = call i32 @PyTuple_SetItem(%struct._object* %256, i64 %conv363, %struct._object* %258)
  br label %for.inc

for.inc:                                          ; preds = %if.end.344
  %259 = load i32, i32* %i, align 4
  %inc365 = add i32 %259, 1
  store i32 %inc365, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.366

if.end.366:                                       ; preds = %for.end, %if.then.313
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %land.lhs.true.311, %lor.lhs.false.309
  %260 = load i32, i32* %rc, align 4
  %cmp368 = icmp eq i32 %260, 100
  br i1 %cmp368, label %if.then.370, label %if.else.376

if.then.370:                                      ; preds = %if.end.367
  %261 = load i32, i32* %multiple.addr, align 4
  %tobool371 = icmp ne i32 %261, 0
  br i1 %tobool371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.then.370
  %262 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %262, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0))
  br label %error

if.end.373:                                       ; preds = %if.then.370
  %263 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call374 = call %struct._object* @_pysqlite_fetch_one_row(%struct.pysqlite_Cursor* %263)
  %264 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row375 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %264, i32 0, i32 13
  store %struct._object* %call374, %struct._object** %next_row375, align 8
  br label %if.end.406

if.else.376:                                      ; preds = %if.end.367
  %265 = load i32, i32* %rc, align 4
  %cmp377 = icmp eq i32 %265, 101
  br i1 %cmp377, label %land.lhs.true.379, label %if.end.405

land.lhs.true.379:                                ; preds = %if.else.376
  %266 = load i32, i32* %multiple.addr, align 4
  %tobool380 = icmp ne i32 %266, 0
  br i1 %tobool380, label %if.end.405, label %if.then.381

if.then.381:                                      ; preds = %land.lhs.true.379
  %267 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement382 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %267, i32 0, i32 8
  %268 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement382, align 8
  %call383 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %268)
  br label %do.body.384

do.body.384:                                      ; preds = %if.then.381
  %269 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement386 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %269, i32 0, i32 8
  %270 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement386, align 8
  %271 = bitcast %struct.pysqlite_Statement* %270 to %struct._object*
  store %struct._object* %271, %struct._object** %_py_tmp385, align 8
  %272 = load %struct._object*, %struct._object** %_py_tmp385, align 8
  %cmp387 = icmp ne %struct._object* %272, null
  br i1 %cmp387, label %if.then.389, label %if.end.403

if.then.389:                                      ; preds = %do.body.384
  %273 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement390 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %273, i32 0, i32 8
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement390, align 8
  br label %do.body.391

do.body.391:                                      ; preds = %if.then.389
  %274 = load %struct._object*, %struct._object** %_py_tmp385, align 8
  store %struct._object* %274, %struct._object** %_py_decref_tmp392, align 8
  %275 = load %struct._object*, %struct._object** %_py_decref_tmp392, align 8
  %ob_refcnt393 = getelementptr inbounds %struct._object, %struct._object* %275, i32 0, i32 0
  %276 = load i64, i64* %ob_refcnt393, align 8
  %dec394 = add i64 %276, -1
  store i64 %dec394, i64* %ob_refcnt393, align 8
  %cmp395 = icmp ne i64 %dec394, 0
  br i1 %cmp395, label %if.then.397, label %if.else.398

if.then.397:                                      ; preds = %do.body.391
  br label %if.end.401

if.else.398:                                      ; preds = %do.body.391
  %277 = load %struct._object*, %struct._object** %_py_decref_tmp392, align 8
  %ob_type399 = getelementptr inbounds %struct._object, %struct._object* %277, i32 0, i32 1
  %278 = load %struct._typeobject*, %struct._typeobject** %ob_type399, align 8
  %tp_dealloc400 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %278, i32 0, i32 4
  %279 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc400, align 8
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp392, align 8
  call void %279(%struct._object* %280)
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.398, %if.then.397
  br label %do.end.402

do.end.402:                                       ; preds = %if.end.401
  br label %if.end.403

if.end.403:                                       ; preds = %do.end.402, %do.body.384
  br label %do.end.404

do.end.404:                                       ; preds = %if.end.403
  br label %if.end.405

if.end.405:                                       ; preds = %do.end.404, %land.lhs.true.379, %if.else.376
  br label %if.end.406

if.end.406:                                       ; preds = %if.end.405, %if.end.373
  %281 = load i32, i32* %statement_type, align 4
  switch i32 %281, label %sw.epilog.419 [
    i32 3, label %sw.bb.407
    i32 2, label %sw.bb.407
    i32 1, label %sw.bb.407
    i32 4, label %sw.bb.407
  ]

sw.bb.407:                                        ; preds = %if.end.406, %if.end.406, %if.end.406, %if.end.406
  %282 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount408 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %282, i32 0, i32 6
  %283 = load i64, i64* %rowcount408, align 8
  %cmp409 = icmp eq i64 %283, -1
  br i1 %cmp409, label %if.then.411, label %if.end.413

if.then.411:                                      ; preds = %sw.bb.407
  %284 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount412 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %284, i32 0, i32 6
  store i64 0, i64* %rowcount412, align 8
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.411, %sw.bb.407
  %285 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection414 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %285, i32 0, i32 1
  %286 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection414, align 8
  %db415 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %286, i32 0, i32 1
  %287 = load %struct.sqlite3*, %struct.sqlite3** %db415, align 8
  %call416 = call i32 @sqlite3_changes(%struct.sqlite3* %287)
  %conv417 = sext i32 %call416 to i64
  %288 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount418 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %288, i32 0, i32 6
  %289 = load i64, i64* %rowcount418, align 8
  %add = add i64 %289, %conv417
  store i64 %add, i64* %rowcount418, align 8
  br label %sw.epilog.419

sw.epilog.419:                                    ; preds = %if.end.413, %if.end.406
  br label %do.body.420

do.body.420:                                      ; preds = %sw.epilog.419
  %290 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %290, i32 0, i32 5
  %291 = load %struct._object*, %struct._object** %lastrowid, align 8
  store %struct._object* %291, %struct._object** %_py_decref_tmp421, align 8
  %292 = load %struct._object*, %struct._object** %_py_decref_tmp421, align 8
  %ob_refcnt422 = getelementptr inbounds %struct._object, %struct._object* %292, i32 0, i32 0
  %293 = load i64, i64* %ob_refcnt422, align 8
  %dec423 = add i64 %293, -1
  store i64 %dec423, i64* %ob_refcnt422, align 8
  %cmp424 = icmp ne i64 %dec423, 0
  br i1 %cmp424, label %if.then.426, label %if.else.427

if.then.426:                                      ; preds = %do.body.420
  br label %if.end.430

if.else.427:                                      ; preds = %do.body.420
  %294 = load %struct._object*, %struct._object** %_py_decref_tmp421, align 8
  %ob_type428 = getelementptr inbounds %struct._object, %struct._object* %294, i32 0, i32 1
  %295 = load %struct._typeobject*, %struct._typeobject** %ob_type428, align 8
  %tp_dealloc429 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %295, i32 0, i32 4
  %296 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc429, align 8
  %297 = load %struct._object*, %struct._object** %_py_decref_tmp421, align 8
  call void %296(%struct._object* %297)
  br label %if.end.430

if.end.430:                                       ; preds = %if.else.427, %if.then.426
  br label %do.end.431

do.end.431:                                       ; preds = %if.end.430
  %298 = load i32, i32* %multiple.addr, align 4
  %tobool432 = icmp ne i32 %298, 0
  br i1 %tobool432, label %if.else.445, label %land.lhs.true.433

land.lhs.true.433:                                ; preds = %do.end.431
  %299 = load i32, i32* %statement_type, align 4
  %cmp434 = icmp eq i32 %299, 1
  br i1 %cmp434, label %if.then.436, label %if.else.445

if.then.436:                                      ; preds = %land.lhs.true.433
  %call439 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call439, %struct._ts** %_save438, align 8
  %300 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection440 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %300, i32 0, i32 1
  %301 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection440, align 8
  %db441 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %301, i32 0, i32 1
  %302 = load %struct.sqlite3*, %struct.sqlite3** %db441, align 8
  %call442 = call i64 @sqlite3_last_insert_rowid(%struct.sqlite3* %302)
  store i64 %call442, i64* %lastrowid437, align 8
  %303 = load %struct._ts*, %struct._ts** %_save438, align 8
  call void @PyEval_RestoreThread(%struct._ts* %303)
  %304 = load i64, i64* %lastrowid437, align 8
  %call443 = call %struct._object* @_pysqlite_long_from_int64(i64 %304)
  %305 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %lastrowid444 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %305, i32 0, i32 5
  store %struct._object* %call443, %struct._object** %lastrowid444, align 8
  br label %if.end.448

if.else.445:                                      ; preds = %land.lhs.true.433, %do.end.431
  %306 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc446 = add i64 %306, 1
  store i64 %inc446, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %307 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %lastrowid447 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %307, i32 0, i32 5
  store %struct._object* @_Py_NoneStruct, %struct._object** %lastrowid447, align 8
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.445, %if.then.436
  %308 = load i32, i32* %multiple.addr, align 4
  %tobool449 = icmp ne i32 %308, 0
  br i1 %tobool449, label %if.then.450, label %if.end.453

if.then.450:                                      ; preds = %if.end.448
  %309 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement451 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %309, i32 0, i32 8
  %310 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement451, align 8
  %call452 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %310)
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.450, %if.end.448
  br label %do.body.454

do.body.454:                                      ; preds = %if.end.453
  %311 = load %struct._object*, %struct._object** %parameters, align 8
  store %struct._object* %311, %struct._object** %_py_xdecref_tmp, align 8
  %312 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp455 = icmp ne %struct._object* %312, null
  br i1 %cmp455, label %if.then.457, label %if.end.470

if.then.457:                                      ; preds = %do.body.454
  br label %do.body.458

do.body.458:                                      ; preds = %if.then.457
  %313 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %313, %struct._object** %_py_decref_tmp459, align 8
  %314 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  %ob_refcnt460 = getelementptr inbounds %struct._object, %struct._object* %314, i32 0, i32 0
  %315 = load i64, i64* %ob_refcnt460, align 8
  %dec461 = add i64 %315, -1
  store i64 %dec461, i64* %ob_refcnt460, align 8
  %cmp462 = icmp ne i64 %dec461, 0
  br i1 %cmp462, label %if.then.464, label %if.else.465

if.then.464:                                      ; preds = %do.body.458
  br label %if.end.468

if.else.465:                                      ; preds = %do.body.458
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  %ob_type466 = getelementptr inbounds %struct._object, %struct._object* %316, i32 0, i32 1
  %317 = load %struct._typeobject*, %struct._typeobject** %ob_type466, align 8
  %tp_dealloc467 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %317, i32 0, i32 4
  %318 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc467, align 8
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp459, align 8
  call void %318(%struct._object* %319)
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.465, %if.then.464
  br label %do.end.469

do.end.469:                                       ; preds = %if.end.468
  br label %if.end.470

if.end.470:                                       ; preds = %do.end.469, %do.body.454
  br label %do.end.471

do.end.471:                                       ; preds = %if.end.470
  br label %while.body

while.end.472:                                    ; preds = %if.then.260
  br label %error

error:                                            ; preds = %while.end.472, %if.then.372, %if.then.343, %if.then.337, %if.then.306, %if.end.298, %if.else.285, %if.then.266, %if.then.255, %if.then.239, %if.then.217, %do.end.201, %if.then.176, %if.then.155, %if.then.120, %if.then.114, %if.then.97, %if.then.87, %do.end.72, %if.then.53, %if.then.47, %if.then.43, %if.then.37, %if.then.31, %if.then.17, %if.then.13, %if.then
  %320 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection473 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %320, i32 0, i32 1
  %321 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection473, align 8
  %tobool474 = icmp ne %struct.pysqlite_Connection* %321, null
  br i1 %tobool474, label %land.lhs.true.475, label %if.end.487

land.lhs.true.475:                                ; preds = %error
  %322 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection476 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %322, i32 0, i32 1
  %323 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection476, align 8
  %db477 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %323, i32 0, i32 1
  %324 = load %struct.sqlite3*, %struct.sqlite3** %db477, align 8
  %tobool478 = icmp ne %struct.sqlite3* %324, null
  br i1 %tobool478, label %if.then.479, label %if.end.487

if.then.479:                                      ; preds = %land.lhs.true.475
  %325 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection480 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %325, i32 0, i32 1
  %326 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection480, align 8
  %db481 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %326, i32 0, i32 1
  %327 = load %struct.sqlite3*, %struct.sqlite3** %db481, align 8
  %call482 = call i32 @sqlite3_get_autocommit(%struct.sqlite3* %327)
  %tobool483 = icmp ne i32 %call482, 0
  %lnot = xor i1 %tobool483, true
  %lnot.ext = zext i1 %lnot to i32
  %conv484 = trunc i32 %lnot.ext to i8
  %328 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection485 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %328, i32 0, i32 1
  %329 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection485, align 8
  %inTransaction486 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %329, i32 0, i32 2
  store i8 %conv484, i8* %inTransaction486, align 1
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.479, %land.lhs.true.475, %error
  br label %do.body.488

do.body.488:                                      ; preds = %if.end.487
  %330 = load %struct._object*, %struct._object** %parameters, align 8
  store %struct._object* %330, %struct._object** %_py_xdecref_tmp489, align 8
  %331 = load %struct._object*, %struct._object** %_py_xdecref_tmp489, align 8
  %cmp490 = icmp ne %struct._object* %331, null
  br i1 %cmp490, label %if.then.492, label %if.end.505

if.then.492:                                      ; preds = %do.body.488
  br label %do.body.493

do.body.493:                                      ; preds = %if.then.492
  %332 = load %struct._object*, %struct._object** %_py_xdecref_tmp489, align 8
  store %struct._object* %332, %struct._object** %_py_decref_tmp494, align 8
  %333 = load %struct._object*, %struct._object** %_py_decref_tmp494, align 8
  %ob_refcnt495 = getelementptr inbounds %struct._object, %struct._object* %333, i32 0, i32 0
  %334 = load i64, i64* %ob_refcnt495, align 8
  %dec496 = add i64 %334, -1
  store i64 %dec496, i64* %ob_refcnt495, align 8
  %cmp497 = icmp ne i64 %dec496, 0
  br i1 %cmp497, label %if.then.499, label %if.else.500

if.then.499:                                      ; preds = %do.body.493
  br label %if.end.503

if.else.500:                                      ; preds = %do.body.493
  %335 = load %struct._object*, %struct._object** %_py_decref_tmp494, align 8
  %ob_type501 = getelementptr inbounds %struct._object, %struct._object* %335, i32 0, i32 1
  %336 = load %struct._typeobject*, %struct._typeobject** %ob_type501, align 8
  %tp_dealloc502 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %336, i32 0, i32 4
  %337 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc502, align 8
  %338 = load %struct._object*, %struct._object** %_py_decref_tmp494, align 8
  call void %337(%struct._object* %338)
  br label %if.end.503

if.end.503:                                       ; preds = %if.else.500, %if.then.499
  br label %do.end.504

do.end.504:                                       ; preds = %if.end.503
  br label %if.end.505

if.end.505:                                       ; preds = %do.end.504, %do.body.488
  br label %do.end.506

do.end.506:                                       ; preds = %if.end.505
  br label %do.body.507

do.body.507:                                      ; preds = %do.end.506
  %339 = load %struct._object*, %struct._object** %parameters_iter, align 8
  store %struct._object* %339, %struct._object** %_py_xdecref_tmp508, align 8
  %340 = load %struct._object*, %struct._object** %_py_xdecref_tmp508, align 8
  %cmp509 = icmp ne %struct._object* %340, null
  br i1 %cmp509, label %if.then.511, label %if.end.524

if.then.511:                                      ; preds = %do.body.507
  br label %do.body.512

do.body.512:                                      ; preds = %if.then.511
  %341 = load %struct._object*, %struct._object** %_py_xdecref_tmp508, align 8
  store %struct._object* %341, %struct._object** %_py_decref_tmp513, align 8
  %342 = load %struct._object*, %struct._object** %_py_decref_tmp513, align 8
  %ob_refcnt514 = getelementptr inbounds %struct._object, %struct._object* %342, i32 0, i32 0
  %343 = load i64, i64* %ob_refcnt514, align 8
  %dec515 = add i64 %343, -1
  store i64 %dec515, i64* %ob_refcnt514, align 8
  %cmp516 = icmp ne i64 %dec515, 0
  br i1 %cmp516, label %if.then.518, label %if.else.519

if.then.518:                                      ; preds = %do.body.512
  br label %if.end.522

if.else.519:                                      ; preds = %do.body.512
  %344 = load %struct._object*, %struct._object** %_py_decref_tmp513, align 8
  %ob_type520 = getelementptr inbounds %struct._object, %struct._object* %344, i32 0, i32 1
  %345 = load %struct._typeobject*, %struct._typeobject** %ob_type520, align 8
  %tp_dealloc521 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %345, i32 0, i32 4
  %346 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc521, align 8
  %347 = load %struct._object*, %struct._object** %_py_decref_tmp513, align 8
  call void %346(%struct._object* %347)
  br label %if.end.522

if.end.522:                                       ; preds = %if.else.519, %if.then.518
  br label %do.end.523

do.end.523:                                       ; preds = %if.end.522
  br label %if.end.524

if.end.524:                                       ; preds = %do.end.523, %do.body.507
  br label %do.end.525

do.end.525:                                       ; preds = %if.end.524
  br label %do.body.526

do.body.526:                                      ; preds = %do.end.525
  %348 = load %struct._object*, %struct._object** %parameters_list, align 8
  store %struct._object* %348, %struct._object** %_py_xdecref_tmp527, align 8
  %349 = load %struct._object*, %struct._object** %_py_xdecref_tmp527, align 8
  %cmp528 = icmp ne %struct._object* %349, null
  br i1 %cmp528, label %if.then.530, label %if.end.543

if.then.530:                                      ; preds = %do.body.526
  br label %do.body.531

do.body.531:                                      ; preds = %if.then.530
  %350 = load %struct._object*, %struct._object** %_py_xdecref_tmp527, align 8
  store %struct._object* %350, %struct._object** %_py_decref_tmp532, align 8
  %351 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8
  %ob_refcnt533 = getelementptr inbounds %struct._object, %struct._object* %351, i32 0, i32 0
  %352 = load i64, i64* %ob_refcnt533, align 8
  %dec534 = add i64 %352, -1
  store i64 %dec534, i64* %ob_refcnt533, align 8
  %cmp535 = icmp ne i64 %dec534, 0
  br i1 %cmp535, label %if.then.537, label %if.else.538

if.then.537:                                      ; preds = %do.body.531
  br label %if.end.541

if.else.538:                                      ; preds = %do.body.531
  %353 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8
  %ob_type539 = getelementptr inbounds %struct._object, %struct._object* %353, i32 0, i32 1
  %354 = load %struct._typeobject*, %struct._typeobject** %ob_type539, align 8
  %tp_dealloc540 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %354, i32 0, i32 4
  %355 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc540, align 8
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp532, align 8
  call void %355(%struct._object* %356)
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.538, %if.then.537
  br label %do.end.542

do.end.542:                                       ; preds = %if.end.541
  br label %if.end.543

if.end.543:                                       ; preds = %do.end.542, %do.body.526
  br label %do.end.544

do.end.544:                                       ; preds = %if.end.543
  %357 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %locked545 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %357, i32 0, i32 11
  store i32 0, i32* %locked545, align 4
  %call546 = call %struct._object* @PyErr_Occurred()
  %tobool547 = icmp ne %struct._object* %call546, null
  br i1 %tobool547, label %if.then.548, label %if.else.550

if.then.548:                                      ; preds = %do.end.544
  %358 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount549 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %358, i32 0, i32 6
  store i64 -1, i64* %rowcount549, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.550:                                      ; preds = %do.end.544
  %359 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %360 = bitcast %struct.pysqlite_Cursor* %359 to %struct._object*
  %ob_refcnt551 = getelementptr inbounds %struct._object, %struct._object* %360, i32 0, i32 0
  %361 = load i64, i64* %ob_refcnt551, align 8
  %inc552 = add i64 %361, 1
  store i64 %inc552, i64* %ob_refcnt551, align 8
  %362 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %363 = bitcast %struct.pysqlite_Cursor* %362 to %struct._object*
  store %struct._object* %363, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.550, %if.then.548
  %364 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %364
}

; Function Attrs: nounwind uwtable
define internal i32 @check_cursor(%struct.pysqlite_Cursor* %cur) #0 {
entry:
  %retval = alloca i32, align 4
  %cur.addr = alloca %struct.pysqlite_Cursor*, align 8
  store %struct.pysqlite_Cursor* %cur, %struct.pysqlite_Cursor** %cur.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8
  %initialized = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 12
  %1 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %3, i32 0, i32 9
  %4 = load i32, i32* %closed, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8
  %locked = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 11
  %7 = load i32, i32* %locked, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 1
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %10)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.6
  %11 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cur.addr, align 8
  %connection8 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %11, i32 0, i32 1
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection8, align 8
  %call9 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.6
  %13 = phi i1 [ false, %if.end.6 ], [ %tobool10, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.5, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyObject_NextNotImplemented(%struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare i32 @pysqlite_statement_reset(%struct.pysqlite_Statement*) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache*, %struct._object*) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare i32 @pysqlite_statement_create(%struct.pysqlite_Statement*, %struct.pysqlite_Connection*, %struct._object*) #1

declare void @pysqlite_statement_mark_dirty(%struct.pysqlite_Statement*) #1

; Function Attrs: nounwind uwtable
define internal i32 @detect_statement_type(i8* %statement) #0 {
entry:
  %retval = alloca i32, align 4
  %statement.addr = alloca i8*, align 8
  %buf = alloca [20 x i8], align 16
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  store i8* %statement, i8** %statement.addr, align 8
  %0 = load i8*, i8** %statement.addr, align 8
  store i8* %0, i8** %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %src, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 13
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %3 = load i8*, i8** %src, align 8
  %4 = load i8, i8* %3, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 10
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %src, align 8
  %6 = load i8, i8* %5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 32
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %7 = load i8*, i8** %src, align 8
  %8 = load i8, i8* %7, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %9 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %10 = load i8*, i8** %src, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %src, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %11 = load i8*, i8** %src, align 8
  %12 = load i8, i8* %11, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %dst, align 8
  %13 = load i8*, i8** %dst, align 8
  store i8 0, i8* %13, align 1
  br label %while.cond.15

while.cond.15:                                    ; preds = %while.body.22, %if.end
  %14 = load i8*, i8** %src, align 8
  %15 = load i8, i8* %14, align 1
  %conv16 = sext i8 %15 to i32
  %and = and i32 %conv16, 255
  %conv17 = trunc i32 %and to i8
  %idxprom = zext i8 %conv17 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %and18 = and i32 %16, 3
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.15
  %17 = load i8*, i8** %dst, align 8
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp20 = icmp ult i64 %sub.ptr.sub, 18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.15
  %18 = phi i1 [ false, %while.cond.15 ], [ %cmp20, %land.rhs ]
  br i1 %18, label %while.body.22, label %while.end.30

while.body.22:                                    ; preds = %land.end
  %19 = load i8*, i8** %src, align 8
  %incdec.ptr23 = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %src, align 8
  %20 = load i8, i8* %19, align 1
  %conv24 = sext i8 %20 to i32
  %and25 = and i32 %conv24, 255
  %conv26 = trunc i32 %and25 to i8
  %idxprom27 = zext i8 %conv26 to i64
  %arrayidx28 = getelementptr [256 x i8], [256 x i8]* @_Py_ctype_tolower, i32 0, i64 %idxprom27
  %21 = load i8, i8* %arrayidx28, align 1
  %22 = load i8*, i8** %dst, align 8
  %incdec.ptr29 = getelementptr i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %dst, align 8
  store i8 %21, i8* %22, align 1
  br label %while.cond.15

while.end.30:                                     ; preds = %land.end
  %23 = load i8*, i8** %dst, align 8
  store i8 0, i8* %23, align 1
  %arraydecay31 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #3
  %tobool32 = icmp ne i32 %call, 0
  br i1 %tobool32, label %if.else, label %if.then.33

if.then.33:                                       ; preds = %while.end.30
  store i32 5, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end.30
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @strcmp(i8* %arraydecay34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0)) #3
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.else.38, label %if.then.37

if.then.37:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.38:                                       ; preds = %if.else
  %arraydecay39 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call40 = call i32 @strcmp(i8* %arraydecay39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #3
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %if.else.38
  store i32 3, i32* %retval
  br label %return

if.else.43:                                       ; preds = %if.else.38
  %arraydecay44 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call45 = call i32 @strcmp(i8* %arraydecay44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #3
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %if.else.43
  store i32 2, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.43
  %arraydecay49 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call50 = call i32 @strcmp(i8* %arraydecay49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #3
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.else.48
  store i32 4, i32* %retval
  br label %return

if.else.53:                                       ; preds = %if.else.48
  store i32 6, i32* %retval
  br label %return

return:                                           ; preds = %if.else.53, %if.then.52, %if.then.47, %if.then.42, %if.then.37, %if.then.33, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._object* @_pysqlite_connection_begin(%struct.pysqlite_Connection*) #1

declare %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection*, %struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare void @pysqlite_statement_bind_parameters(%struct.pysqlite_Statement*, %struct._object*) #1

declare i32 @pysqlite_step(%struct.sqlite3_stmt*, %struct.pysqlite_Connection*) #1

declare i32 @pysqlite_statement_recompile(%struct.pysqlite_Statement*, %struct._object*) #1

declare i32 @_pysqlite_seterror(%struct.sqlite3*, %struct.sqlite3_stmt*) #1

declare void @PyErr_Print() #1

declare void @PyErr_Clear() #1

declare i32 @sqlite3_changes(%struct.sqlite3*) #1

declare i64 @sqlite3_last_insert_rowid(%struct.sqlite3*) #1

declare i32 @sqlite3_get_autocommit(%struct.sqlite3*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_execute(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_pysqlite_query_execute(%struct.pysqlite_Cursor* %0, i32 0, %struct._object* %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_executemany(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call %struct._object* @_pysqlite_query_execute(%struct.pysqlite_Cursor* %0, i32 1, %struct._object* %1)
  ret %struct._object* %call
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %script_str, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._object** %script_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call1 = call i32 @check_cursor(%struct.pysqlite_Cursor* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 10
  store i32 0, i32* %reset, align 4
  %3 = load %struct._object*, %struct._object** %script_obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %script_obj, align 8
  %call6 = call i8* @PyUnicode_AsUTF8(%struct._object* %6)
  store i8* %call6, i8** %script_cstr, align 8
  %7 = load i8*, i8** %script_cstr, align 8
  %tobool7 = icmp ne i8* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.else:                                          ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.9
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 1
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %call11 = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %10, %struct._object* null)
  store %struct._object* %call11, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %tobool12 = icmp ne %struct._object* %11, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %error

if.end.14:                                        ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %12 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.19

if.else.17:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end.51
  %call20 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call20, %struct._ts** %_save, align 8
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection21 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 1
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection21, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 1
  %21 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %22 = load i8*, i8** %script_cstr, align 8
  %call22 = call i32 @sqlite3_prepare(%struct.sqlite3* %21, i8* %22, i32 -1, %struct.sqlite3_stmt** %statement, i8** %script_cstr)
  store i32 %call22, i32* %rc, align 4
  %23 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %23)
  %24 = load i32, i32* %rc, align 4
  %cmp23 = icmp ne i32 %24, 0
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %while.body
  %25 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection25 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %25, i32 0, i32 1
  %26 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection25, align 8
  %db26 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %26, i32 0, i32 1
  %27 = load %struct.sqlite3*, %struct.sqlite3** %db26, align 8
  %call27 = call i32 @_pysqlite_seterror(%struct.sqlite3* %27, %struct.sqlite3_stmt* null)
  br label %error

if.end.28:                                        ; preds = %while.body
  store i32 100, i32* %rc, align 4
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.31, %if.end.28
  %28 = load i32, i32* %rc, align 4
  %cmp30 = icmp eq i32 %28, 100
  br i1 %cmp30, label %while.body.31, label %while.end

while.body.31:                                    ; preds = %while.cond.29
  %29 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %30 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection32 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %30, i32 0, i32 1
  %31 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection32, align 8
  %call33 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %29, %struct.pysqlite_Connection* %31)
  store i32 %call33, i32* %rc, align 4
  br label %while.cond.29

while.end:                                        ; preds = %while.cond.29
  %32 = load i32, i32* %rc, align 4
  %cmp34 = icmp ne i32 %32, 101
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %while.end
  %33 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call36 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %33)
  %34 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection37 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %34, i32 0, i32 1
  %35 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection37, align 8
  %db38 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %35, i32 0, i32 1
  %36 = load %struct.sqlite3*, %struct.sqlite3** %db38, align 8
  %call39 = call i32 @_pysqlite_seterror(%struct.sqlite3* %36, %struct.sqlite3_stmt* null)
  br label %error

if.end.40:                                        ; preds = %while.end
  %37 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call41 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %37)
  store i32 %call41, i32* %rc, align 4
  %38 = load i32, i32* %rc, align 4
  %cmp42 = icmp ne i32 %38, 0
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.40
  %39 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection44 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %39, i32 0, i32 1
  %40 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection44, align 8
  %db45 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %40, i32 0, i32 1
  %41 = load %struct.sqlite3*, %struct.sqlite3** %db45, align 8
  %call46 = call i32 @_pysqlite_seterror(%struct.sqlite3* %41, %struct.sqlite3_stmt* null)
  br label %error

if.end.47:                                        ; preds = %if.end.40
  %42 = load i8*, i8** %script_cstr, align 8
  %43 = load i8, i8* %42, align 1
  %conv = sext i8 %43 to i32
  %cmp48 = icmp eq i32 %conv, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  br label %while.end.52

if.end.51:                                        ; preds = %if.end.47
  br label %while.body

while.end.52:                                     ; preds = %if.then.50
  br label %error

error:                                            ; preds = %while.end.52, %if.then.43, %if.then.35, %if.then.24, %if.then.13
  br label %do.body.53

do.body.53:                                       ; preds = %error
  %44 = load %struct._object*, %struct._object** %script_str, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp54 = icmp ne %struct._object* %45, null
  br i1 %cmp54, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp58, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %48, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.57
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.57
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %51(%struct._object* %52)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %do.body.53
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  %call71 = call %struct._object* @PyErr_Occurred()
  %tobool72 = icmp ne %struct._object* %call71, null
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.end.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.74:                                       ; preds = %do.end.70
  %53 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %54 = bitcast %struct.pysqlite_Cursor* %53 to %struct._object*
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt75, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %ob_refcnt75, align 8
  %56 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %57 = bitcast %struct.pysqlite_Cursor* %56 to %struct._object*
  store %struct._object* %57, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.74, %if.then.73, %if.else, %if.then.8, %if.then.3, %if.then
  %58 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %58
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #1

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_getiter(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %1 = bitcast %struct.pysqlite_Cursor* %0 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %4 = bitcast %struct.pysqlite_Cursor* %3 to %struct._object*
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %next_row_tuple = alloca %struct._object*, align 8
  %next_row = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call = call i32 @check_cursor(%struct.pysqlite_Cursor* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %1, i32 0, i32 10
  %2 = load i32, i32* %reset, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %4 = load i8*, i8** @errmsg_fetch_across_rollback, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* %4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row4 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %5, i32 0, i32 13
  %6 = load %struct._object*, %struct._object** %next_row4, align 8
  %tobool5 = icmp ne %struct._object* %6, null
  br i1 %tobool5, label %if.end.21, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %7 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %7, i32 0, i32 8
  %8 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %tobool7 = icmp ne %struct.pysqlite_Statement* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.then.6
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement9 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 8
  %10 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement9, align 8
  %call10 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %10)
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %11 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement11 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %11, i32 0, i32 8
  %12 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement11, align 8
  %13 = bitcast %struct.pysqlite_Statement* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %_py_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %14, null
  br i1 %cmp, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %do.body
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement13 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 8
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement13, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.12
  %16 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.17

if.else:                                          ; preds = %do.body.14
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %if.then.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.3
  %23 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row22 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %23, i32 0, i32 13
  %24 = load %struct._object*, %struct._object** %next_row22, align 8
  store %struct._object* %24, %struct._object** %next_row_tuple, align 8
  %25 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row23 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %25, i32 0, i32 13
  store %struct._object* null, %struct._object** %next_row23, align 8
  %26 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %26, i32 0, i32 7
  %27 = load %struct._object*, %struct._object** %row_factory, align 8
  %cmp24 = icmp ne %struct._object* %27, @_Py_NoneStruct
  br i1 %cmp24, label %if.then.25, label %if.else.43

if.then.25:                                       ; preds = %if.end.21
  %28 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_factory26 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %28, i32 0, i32 7
  %29 = load %struct._object*, %struct._object** %row_factory26, align 8
  %30 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %31 = load %struct._object*, %struct._object** %next_row_tuple, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct.pysqlite_Cursor* %30, %struct._object* %31)
  store %struct._object* %call27, %struct._object** %next_row, align 8
  %32 = load %struct._object*, %struct._object** %next_row, align 8
  %cmp28 = icmp eq %struct._object* %32, null
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.25
  %33 = load %struct._object*, %struct._object** %next_row_tuple, align 8
  %34 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row30 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %34, i32 0, i32 13
  store %struct._object* %33, %struct._object** %next_row30, align 8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.25
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.31
  %35 = load %struct._object*, %struct._object** %next_row_tuple, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp33, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %37, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %40(%struct._object* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.21
  %42 = load %struct._object*, %struct._object** %next_row_tuple, align 8
  store %struct._object* %42, %struct._object** %next_row, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %do.end.42
  %43 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement45 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %43, i32 0, i32 8
  %44 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement45, align 8
  %tobool46 = icmp ne %struct.pysqlite_Statement* %44, null
  br i1 %tobool46, label %if.then.47, label %if.end.94

if.then.47:                                       ; preds = %if.end.44
  %45 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement48 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %45, i32 0, i32 8
  %46 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement48, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %46, i32 0, i32 2
  %47 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %st, align 8
  %48 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %48, i32 0, i32 1
  %49 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %call49 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %47, %struct.pysqlite_Connection* %49)
  store i32 %call49, i32* %rc, align 4
  %50 = load i32, i32* %rc, align 4
  %cmp50 = icmp ne i32 %50, 101
  br i1 %cmp50, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.then.47
  %51 = load i32, i32* %rc, align 4
  %cmp51 = icmp ne i32 %51, 100
  br i1 %cmp51, label %if.then.52, label %if.end.68

if.then.52:                                       ; preds = %land.lhs.true
  %52 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement53 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %52, i32 0, i32 8
  %53 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement53, align 8
  %call54 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %53)
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.52
  %54 = load %struct._object*, %struct._object** %next_row, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp56, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %56, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %59(%struct._object* %60)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %61 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection66 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %61, i32 0, i32 1
  %62 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection66, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %62, i32 0, i32 1
  %63 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call67 = call i32 @_pysqlite_seterror(%struct.sqlite3* %63, %struct.sqlite3_stmt* null)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true, %if.then.47
  %64 = load i32, i32* %rc, align 4
  %cmp69 = icmp eq i32 %64, 100
  br i1 %cmp69, label %if.then.70, label %if.end.93

if.then.70:                                       ; preds = %if.end.68
  %65 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call71 = call %struct._object* @_pysqlite_fetch_one_row(%struct.pysqlite_Cursor* %65)
  %66 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row72 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %66, i32 0, i32 13
  store %struct._object* %call71, %struct._object** %next_row72, align 8
  %67 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row73 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %67, i32 0, i32 13
  %68 = load %struct._object*, %struct._object** %next_row73, align 8
  %cmp74 = icmp eq %struct._object* %68, null
  br i1 %cmp74, label %if.then.75, label %if.end.92

if.then.75:                                       ; preds = %if.then.70
  %69 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement76 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %69, i32 0, i32 8
  %70 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement76, align 8
  %call77 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %70)
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.75
  %71 = load %struct._object*, %struct._object** %next_row, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp79, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %73, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %76(%struct._object* %77)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  %78 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection89 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %78, i32 0, i32 1
  %79 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection89, align 8
  %db90 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %79, i32 0, i32 1
  %80 = load %struct.sqlite3*, %struct.sqlite3** %db90, align 8
  %call91 = call i32 @_pysqlite_seterror(%struct.sqlite3* %80, %struct.sqlite3_stmt* null)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.92:                                        ; preds = %if.then.70
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.68
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.44
  %81 = load %struct._object*, %struct._object** %next_row, align 8
  store %struct._object* %81, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.94, %do.end.88, %do.end.65, %if.then.29, %if.end.20, %if.then.2, %if.then
  %82 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %82
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_fetchone(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %row = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %0)
  store %struct._object* %call, %struct._object** %row, align 8
  %1 = load %struct._object*, %struct._object** %row, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._object*, %struct._object** %row, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %arraysize = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 4
  %1 = load i32, i32* %arraysize, align 4
  store i32 %1, i32* %maxrows, align 4
  store i32 0, i32* %counter, align 4
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_cursor_fetchmany.kwlist, i32 0, i32 0), i32* %maxrows)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call1, %struct._object** %list, align 8
  %4 = load %struct._object*, %struct._object** %list, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %row, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end.4
  %5 = load %struct._object*, %struct._object** %row, align 8
  %tobool5 = icmp ne %struct._object* %5, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call6 = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %6)
  store %struct._object* %call6, %struct._object** %row, align 8
  %7 = load %struct._object*, %struct._object** %row, align 8
  %tobool7 = icmp ne %struct._object* %7, null
  br i1 %tobool7, label %if.then.8, label %if.else.12

if.then.8:                                        ; preds = %while.body
  %8 = load %struct._object*, %struct._object** %list, align 8
  %9 = load %struct._object*, %struct._object** %row, align 8
  %call9 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %9)
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %10 = load %struct._object*, %struct._object** %row, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.13

if.else.12:                                       ; preds = %while.body
  br label %while.end

if.end.13:                                        ; preds = %do.end
  %17 = load i32, i32* %counter, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %counter, align 4
  %18 = load i32, i32* %maxrows, align 4
  %cmp14 = icmp eq i32 %inc, %18
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %while.end

if.end.16:                                        ; preds = %if.end.13
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %if.else.12, %while.cond
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool18 = icmp ne %struct._object* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.else.31

if.then.19:                                       ; preds = %while.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.then.19
  %19 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp21, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %21, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %24(%struct._object* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.31:                                       ; preds = %while.end
  %26 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.31, %do.end.30, %if.then.3, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_fetchall(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %row = alloca %struct._object*, align 8
  %list = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* @_Py_NoneStruct, %struct._object** %row, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %1 = load %struct._object*, %struct._object** %row, align 8
  %tobool1 = icmp ne %struct._object* %1, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %call2 = call %struct._object* @pysqlite_cursor_iternext(%struct.pysqlite_Cursor* %2)
  store %struct._object* %call2, %struct._object** %row, align 8
  %3 = load %struct._object*, %struct._object** %row, align 8
  %tobool3 = icmp ne %struct._object* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %while.body
  %4 = load %struct._object*, %struct._object** %list, align 8
  %5 = load %struct._object*, %struct._object** %row, align 8
  %call5 = call i32 @PyList_Append(%struct._object* %4, %struct._object* %5)
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %6 = load %struct._object*, %struct._object** %row, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call9 = call %struct._object* @PyErr_Occurred()
  %tobool10 = icmp ne %struct._object* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.else.23

if.then.11:                                       ; preds = %while.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %13 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp13, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %15, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.23:                                       ; preds = %while.end
  %20 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.23, %do.end.22, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_noop(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cursor_close(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 1
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 1
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection1, align 8
  %call2 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %4, i32 0, i32 8
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %tobool4 = icmp ne %struct.pysqlite_Statement* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement6 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 8
  %7 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement6, align 8
  %call7 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %7)
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement8 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 8
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement8, align 8
  %10 = bitcast %struct.pysqlite_Statement* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %11, null
  br i1 %cmp, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %do.body
  %12 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement10 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %12, i32 0, i32 8
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement10, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14

if.else:                                          ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %if.end.17

if.end.17:                                        ; preds = %do.end.16, %if.end
  %20 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %20, i32 0, i32 9
  store i32 1, i32* %closed, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare i32 @pysqlite_check_thread(%struct.pysqlite_Connection*) #1

declare i32 @pysqlite_check_connection(%struct.pysqlite_Connection*) #1

; Function Attrs: nounwind uwtable
define internal void @pysqlite_cursor_dealloc(%struct.pysqlite_Cursor* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_xdecref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_xdecref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_xdecref_tmp90 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  %0 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %0, i32 0, i32 8
  %1 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %tobool = icmp ne %struct.pysqlite_Statement* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %2, i32 0, i32 8
  %3 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement1, align 8
  %call = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %3)
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement2 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %4, i32 0, i32 8
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement2, align 8
  %6 = bitcast %struct.pysqlite_Statement* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %entry
  br label %do.body.5

do.body.5:                                        ; preds = %if.end.4
  %13 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %13, i32 0, i32 1
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %15 = bitcast %struct.pysqlite_Connection* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %do.body.5
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp9, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %19, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %do.body.5
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %24 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %row_cast_map, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp22, align 8
  %cmp23 = icmp ne %struct._object* %26, null
  br i1 %cmp23, label %if.then.24, label %if.end.36

if.then.24:                                       ; preds = %do.body.21
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp22, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp26, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %29, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %32(%struct._object* %33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %do.body.21
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %34 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %34, i32 0, i32 2
  %35 = load %struct._object*, %struct._object** %description, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp39, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  %cmp40 = icmp ne %struct._object* %36, null
  br i1 %cmp40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %do.body.38
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp43, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %39, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %42(%struct._object* %43)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.body.38
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %44 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %44, i32 0, i32 5
  %45 = load %struct._object*, %struct._object** %lastrowid, align 8
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp56, align 8
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp56, align 8
  %cmp57 = icmp ne %struct._object* %46, null
  br i1 %cmp57, label %if.then.58, label %if.end.70

if.then.58:                                       ; preds = %do.body.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp56, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp60, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %49, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68

if.else.65:                                       ; preds = %do.body.59
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %52(%struct._object* %53)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %do.body.55
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %54 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %54, i32 0, i32 7
  %55 = load %struct._object*, %struct._object** %row_factory, align 8
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp73, align 8
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %56, null
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %do.body.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp77, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %59, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %62(%struct._object* %63)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.72
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %64 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %64, i32 0, i32 13
  %65 = load %struct._object*, %struct._object** %next_row, align 8
  store %struct._object* %65, %struct._object** %_py_xdecref_tmp90, align 8
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp90, align 8
  %cmp91 = icmp ne %struct._object* %66, null
  br i1 %cmp91, label %if.then.92, label %if.end.104

if.then.92:                                       ; preds = %do.body.89
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp90, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp94, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %69, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %72(%struct._object* %73)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %do.body.89
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  %74 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %74, i32 0, i32 14
  %75 = load %struct._object*, %struct._object** %in_weakreflist, align 8
  %cmp106 = icmp ne %struct._object* %75, null
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %do.end.105
  %76 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %77 = bitcast %struct.pysqlite_Cursor* %76 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %77)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %do.end.105
  %78 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %79 = bitcast %struct.pysqlite_Cursor* %78 to %struct._object*
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 38
  %81 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %82 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %83 = bitcast %struct.pysqlite_Cursor* %82 to %struct._object*
  %84 = bitcast %struct._object* %83 to i8*
  call void %81(i8* %84)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_cursor_init(%struct.pysqlite_Cursor* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %connection = alloca %struct.pysqlite_Connection*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %struct._typeobject* @pysqlite_ConnectionType, %struct.pysqlite_Connection** %connection)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %2 = bitcast %struct.pysqlite_Connection* %1 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %5 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection1 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %5, i32 0, i32 1
  store %struct.pysqlite_Connection* %4, %struct.pysqlite_Connection** %connection1, align 8
  %6 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %statement = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %6, i32 0, i32 8
  store %struct.pysqlite_Statement* null, %struct.pysqlite_Statement** %statement, align 8
  %7 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %next_row = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %7, i32 0, i32 13
  store %struct._object* null, %struct._object** %next_row, align 8
  %8 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %8, i32 0, i32 14
  store %struct._object* null, %struct._object** %in_weakreflist, align 8
  %call2 = call %struct._object* @PyList_New(i64 0)
  %9 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %9, i32 0, i32 3
  store %struct._object* %call2, %struct._object** %row_cast_map, align 8
  %10 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_cast_map3 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %row_cast_map3, align 8
  %tobool4 = icmp ne %struct._object* %11, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc7 = add i64 %12, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %13 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %description = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %13, i32 0, i32 2
  store %struct._object* @_Py_NoneStruct, %struct._object** %description, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc8 = add i64 %14, 1
  store i64 %inc8, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %15 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %lastrowid = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 5
  store %struct._object* @_Py_NoneStruct, %struct._object** %lastrowid, align 8
  %16 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %arraysize = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %16, i32 0, i32 4
  store i32 1, i32* %arraysize, align 4
  %17 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %closed = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %17, i32 0, i32 9
  store i32 0, i32* %closed, align 4
  %18 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %18, i32 0, i32 10
  store i32 0, i32* %reset, align 4
  %19 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %rowcount = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %19, i32 0, i32 6
  store i64 -1, i64* %rowcount, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc9 = add i64 %20, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %21 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %21, i32 0, i32 7
  store %struct._object* @_Py_NoneStruct, %struct._object** %row_factory, align 8
  %22 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %connection10 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %22, i32 0, i32 1
  %23 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection10, align 8
  %call11 = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %23)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %24 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection, align 8
  %25 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %26 = bitcast %struct.pysqlite_Cursor* %25 to %struct._object*
  %call15 = call i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection* %24, %struct._object* %26)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %27 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %self.addr, align 8
  %initialized = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %27, i32 0, i32 12
  store i32 1, i32* %initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.13, %if.then.5, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cursor_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @pysqlite_CursorType to %struct._typeobject*), i32 0, i32 37), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @pysqlite_CursorType to %struct._typeobject*))
  ret i32 %call
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
