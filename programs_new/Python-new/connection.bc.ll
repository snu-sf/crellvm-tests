; ModuleID = 'irs-onlybc/connection.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.sqlite3_stmt = type opaque
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.sqlite3_context = type opaque
%struct.Mem = type opaque
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }

@pysqlite_connection_init.kwlist = internal global [9 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"detect_types\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"isolation_level\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"check_same_thread\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"factory\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cached_statements\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"s|diOiOip\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pysqlite_CacheType = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@pysqlite_Warning = external global %struct._object*, align 8
@pysqlite_Error = external global %struct._object*, align 8
@pysqlite_InterfaceError = external global %struct._object*, align 8
@pysqlite_DatabaseError = external global %struct._object*, align 8
@pysqlite_DataError = external global %struct._object*, align 8
@pysqlite_OperationalError = external global %struct._object*, align 8
@pysqlite_IntegrityError = external global %struct._object*, align 8
@pysqlite_InternalError = external global %struct._object*, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@pysqlite_NotSupportedError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@pysqlite_connection_cursor.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"|O\00", align 1
@pysqlite_CursorType = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [37 x i8] c"Base Connection.__init__ not called.\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Cannot operate on a closed database.\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@_enable_callback_tracebacks = external global i32, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"user-defined function raised exception\00", align 1
@_pysqlite_final_callback.PyId_finalize = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), %struct._object* null }, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"finalize\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"user-defined aggregate's 'finalize' method raised error\00", align 1
@pysqlite_connection_create_function.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"narg\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"siO\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Error creating function\00", align 1
@pysqlite_connection_create_aggregate.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"n_arg\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"aggregate_class\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"siO:create_aggregate\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Error creating aggregate\00", align 1
@.str.29 = private unnamed_addr constant [138 x i8] c"SQLite objects created in a thread can only be used in that same thread.The object was created in thread id %ld and this is thread id %ld\00", align 1
@pysqlite_StatementType = external global %struct._typeobject, align 8
@.str.30 = private unnamed_addr constant [46 x i8] c"You can only execute one statement at a time.\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"SQL is of wrong type. Must be string or unicode.\00", align 1
@PyId_cursor = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* null }, align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"executemany\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"executescript\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"sqlite3.Connection\00", align 1
@connection_doc = internal global [35 x i8] c"SQLite database connection object.\00", align 16
@connection_methods = internal global [18 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_cursor to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_commit to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_rollback to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.49, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_create_function to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_create_aggregate to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_authorizer to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_progress_handler to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.57, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_trace_callback to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.59, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_execute to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_executemany to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_executescript to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.62, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_create_collation to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_interrupt to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.66, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_iterdump to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.68, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_enter to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_exit to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@connection_members = internal global [14 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i32 6, i64 144, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 6, i64 152, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0), i32 6, i64 160, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i32 6, i64 168, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 6, i64 176, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i32 6, i64 184, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.96, i32 0, i32 0), i32 6, i64 192, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i32 6, i64 200, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), i32 6, i64 208, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.99, i32 0, i32 0), i32 6, i64 216, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 6, i64 112, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i32 6, i64 120, i32 0, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i32 0, i32 0), i32 14, i64 24, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@connection_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, i8*)* @pysqlite_connection_get_isolation_level to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_set_isolation_level to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, i8*)* @pysqlite_connection_get_total_changes to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@pysqlite_ConnectionType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i64 224, i64 0, void (%struct._object*)* bitcast (void (%struct.pysqlite_Connection*)* @pysqlite_connection_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @connection_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([18 x %struct.PyMethodDef], [18 x %struct.PyMethodDef]* @connection_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([14 x %struct.PyMemberDef], [14 x %struct.PyMemberDef]* @connection_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @connection_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.36 = private unnamed_addr constant [33 x i8] c"could not convert BLOB to buffer\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.37 = private unnamed_addr constant [31 x i8] c"BLOB longer than INT_MAX bytes\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"user-defined aggregate's '__init__' method raised error\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"user-defined aggregate's 'step' method raised error\00", align 1
@pysqlite_connection_set_isolation_level.begin_word = internal global %struct._object* null, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"BEGIN \00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Return a cursor for the connection.\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Closes the connection.\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"Commit the current transaction.\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Roll back the current transaction.\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"create_function\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Creates a new function. Non-standard.\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"create_aggregate\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Creates a new aggregate. Non-standard.\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"set_authorizer\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Sets authorizer callback. Non-standard.\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"set_progress_handler\00", align 1
@.str.57 = private unnamed_addr constant [46 x i8] c"Sets progress handler callback. Non-standard.\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"set_trace_callback\00", align 1
@.str.59 = private unnamed_addr constant [87 x i8] c"Sets a trace callback called for each SQL statement (passed as unicode). Non-standard.\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"Executes a SQL statement. Non-standard.\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"Repeatedly executes a SQL statement. Non-standard.\00", align 1
@.str.62 = private unnamed_addr constant [58 x i8] c"Executes a multiple SQL statements at once. Non-standard.\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"create_collation\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"Creates a collation function. Non-standard.\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"Abort any pending database operation. Non-standard.\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"iterdump\00", align 1
@.str.68 = private unnamed_addr constant [82 x i8] c"Returns iterator to the dump of the database in an SQL text format. Non-standard.\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"For context manager. Non-standard.\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@pysqlite_connection_set_authorizer.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@.str.72 = private unnamed_addr constant [20 x i8] c"authorizer_callback\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"O:set_authorizer\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Error setting authorizer callback\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"issss\00", align 1
@pysqlite_connection_set_progress_handler.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* null], align 16
@.str.76 = private unnamed_addr constant [17 x i8] c"progress_handler\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"Oi:set_progress_handler\00", align 1
@pysqlite_connection_set_trace_callback.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@.str.79 = private unnamed_addr constant [15 x i8] c"trace_callback\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"O:set_trace_callback\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@pysqlite_connection_create_collation.PyId_upper = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), %struct._object* null }, align 8
@.str.82 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"O!O:create_collation(name, callback)\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"invalid character in collation name\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.85 = private unnamed_addr constant [27 x i8] c"parameter must be callable\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"sqlite3.dump\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"_iterdump\00", align 1
@.str.88 = private unnamed_addr constant [39 x i8] c"Failed to obtain _iterdump() reference\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.90 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"InterfaceError\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"DatabaseError\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"DataError\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"OperationalError\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"IntegrityError\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"InternalError\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"ProgrammingError\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"NotSupportedError\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"row_factory\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"text_factory\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"in_transaction\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"total_changes\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_connection_init(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %database = alloca i8*, align 8
  %detect_types = alloca i32, align 4
  %isolation_level = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %check_same_thread = alloca i32, align 4
  %cached_statements = alloca i32, align 4
  %uri = alloca i32, align 4
  %timeout = alloca double, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !518, metadata !1313), !dbg !1314
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !519, metadata !1313), !dbg !1315
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !520, metadata !1313), !dbg !1316
  %0 = bitcast i8** %database to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1317
  call void @llvm.dbg.declare(metadata i8** %database, metadata !521, metadata !1313), !dbg !1318
  %1 = bitcast i32* %detect_types to i8*, !dbg !1319
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1319
  call void @llvm.dbg.declare(metadata i32* %detect_types, metadata !522, metadata !1313), !dbg !1320
  store i32 0, i32* %detect_types, align 4, !dbg !1320, !tbaa !1321
  %2 = bitcast %struct._object** %isolation_level to i8*, !dbg !1323
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1323
  call void @llvm.dbg.declare(metadata %struct._object** %isolation_level, metadata !523, metadata !1313), !dbg !1324
  store %struct._object* null, %struct._object** %isolation_level, align 8, !dbg !1324, !tbaa !1309
  %3 = bitcast %struct._object** %factory to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1325
  call void @llvm.dbg.declare(metadata %struct._object** %factory, metadata !524, metadata !1313), !dbg !1326
  store %struct._object* null, %struct._object** %factory, align 8, !dbg !1326, !tbaa !1309
  %4 = bitcast i32* %check_same_thread to i8*, !dbg !1327
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %check_same_thread, metadata !525, metadata !1313), !dbg !1328
  store i32 1, i32* %check_same_thread, align 4, !dbg !1328, !tbaa !1321
  %5 = bitcast i32* %cached_statements to i8*, !dbg !1329
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !1329
  call void @llvm.dbg.declare(metadata i32* %cached_statements, metadata !526, metadata !1313), !dbg !1330
  store i32 100, i32* %cached_statements, align 4, !dbg !1330, !tbaa !1321
  %6 = bitcast i32* %uri to i8*, !dbg !1331
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !1331
  call void @llvm.dbg.declare(metadata i32* %uri, metadata !527, metadata !1313), !dbg !1332
  store i32 0, i32* %uri, align 4, !dbg !1332, !tbaa !1321
  %7 = bitcast double* %timeout to i8*, !dbg !1333
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !1333
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !528, metadata !1313), !dbg !1334
  store double 5.000000e+00, double* %timeout, align 8, !dbg !1334, !tbaa !1335
  %8 = bitcast i32* %rc to i8*, !dbg !1337
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !1337
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !529, metadata !1313), !dbg !1338
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1339, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1341, !tbaa !1309
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @pysqlite_connection_init.kwlist, i32 0, i32 0), i8** %database, double* %timeout, i32* %detect_types, %struct._object** %isolation_level, i32* %check_same_thread, %struct._object** %factory, i32* %cached_statements, i32* %uri), !dbg !1342
  %tobool = icmp ne i32 %call, 0, !dbg !1342
  br i1 %tobool, label %if.end, label %if.then, !dbg !1343

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1344
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1344

if.end:                                           ; preds = %entry
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1346, !tbaa !1309
  %initialized = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 9, !dbg !1347
  store i32 1, i32* %initialized, align 4, !dbg !1348, !tbaa !1349
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1353, !tbaa !1309
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 7, !dbg !1354
  store i8* null, i8** %begin_statement, align 8, !dbg !1355, !tbaa !1356
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1357, !tbaa !1309
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 11, !dbg !1358
  store %struct.pysqlite_Cache* null, %struct.pysqlite_Cache** %statement_cache, align 8, !dbg !1359, !tbaa !1360
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1361, !tbaa !1309
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 12, !dbg !1362
  store %struct._object* null, %struct._object** %statements, align 8, !dbg !1363, !tbaa !1364
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1365, !tbaa !1309
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 13, !dbg !1366
  store %struct._object* null, %struct._object** %cursors, align 8, !dbg !1367, !tbaa !1368
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1369, !tbaa !1370
  %inc = add i64 %16, 1, !dbg !1369
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1369, !tbaa !1370
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1371, !tbaa !1309
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %17, i32 0, i32 16, !dbg !1372
  store %struct._object* @_Py_NoneStruct, %struct._object** %row_factory, align 8, !dbg !1373, !tbaa !1374
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1375, !tbaa !1370
  %inc1 = add i64 %18, 1, !dbg !1375
  store i64 %inc1, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1375, !tbaa !1370
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1376, !tbaa !1309
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %19, i32 0, i32 17, !dbg !1377
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0), %struct._object** %text_factory, align 8, !dbg !1378, !tbaa !1379
  %20 = bitcast %struct._ts** %_save to i8*, !dbg !1380
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !1380
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !530, metadata !1313), !dbg !1381
  %call2 = call %struct._ts* @PyEval_SaveThread(), !dbg !1382
  store %struct._ts* %call2, %struct._ts** %_save, align 8, !dbg !1383, !tbaa !1309
  %21 = load i8*, i8** %database, align 8, !dbg !1384, !tbaa !1309
  %22 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1385, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %22, i32 0, i32 1, !dbg !1386
  %23 = load i32, i32* %uri, align 4, !dbg !1387, !tbaa !1321
  %tobool3 = icmp ne i32 %23, 0, !dbg !1387
  %cond = select i1 %tobool3, i32 64, i32 0, !dbg !1387
  %or = or i32 6, %cond, !dbg !1388
  %call4 = call i32 @sqlite3_open_v2(i8* %21, %struct.sqlite3** %db, i32 %or, i8* null), !dbg !1389
  store i32 %call4, i32* %rc, align 4, !dbg !1390, !tbaa !1321
  %24 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1391, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %24), !dbg !1392
  %25 = bitcast %struct._ts** %_save to i8*, !dbg !1393
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1393
  %26 = load i32, i32* %rc, align 4, !dbg !1394, !tbaa !1321
  %cmp = icmp ne i32 %26, 0, !dbg !1396
  br i1 %cmp, label %if.then.5, label %if.end.8, !dbg !1397

if.then.5:                                        ; preds = %if.end
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1398, !tbaa !1309
  %db6 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 1, !dbg !1400
  %28 = load %struct.sqlite3*, %struct.sqlite3** %db6, align 8, !dbg !1400, !tbaa !1401
  %call7 = call i32 @_pysqlite_seterror(%struct.sqlite3* %28, %struct.sqlite3_stmt* null), !dbg !1402
  store i32 -1, i32* %retval, !dbg !1403
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1403

if.end.8:                                         ; preds = %if.end
  %29 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1404, !tbaa !1309
  %tobool9 = icmp ne %struct._object* %29, null, !dbg !1404
  br i1 %tobool9, label %if.else, label %if.then.10, !dbg !1406

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !1407
  store %struct._object* %call11, %struct._object** %isolation_level, align 8, !dbg !1409, !tbaa !1309
  %30 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1410, !tbaa !1309
  %tobool12 = icmp ne %struct._object* %30, null, !dbg !1410
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !1412

if.then.13:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval, !dbg !1413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1413

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.16, !dbg !1415

if.else:                                          ; preds = %if.end.8
  %31 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1416, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !1418
  %32 = load i64, i64* %ob_refcnt, align 8, !dbg !1419, !tbaa !1370
  %inc15 = add i64 %32, 1, !dbg !1419
  store i64 %inc15, i64* %ob_refcnt, align 8, !dbg !1419, !tbaa !1370
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.14
  %33 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1420, !tbaa !1309
  %isolation_level17 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %33, i32 0, i32 6, !dbg !1421
  store %struct._object* null, %struct._object** %isolation_level17, align 8, !dbg !1422, !tbaa !1423
  %34 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1424, !tbaa !1309
  %35 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1425, !tbaa !1309
  %call18 = call i32 @pysqlite_connection_set_isolation_level(%struct.pysqlite_Connection* %34, %struct._object* %35), !dbg !1426
  %cmp19 = icmp slt i32 %call18, 0, !dbg !1427
  br i1 %cmp19, label %if.then.20, label %if.end.26, !dbg !1428

if.then.20:                                       ; preds = %if.end.16
  br label %do.body, !dbg !1429

do.body:                                          ; preds = %if.then.20
  %36 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1430
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1430
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !589, metadata !1313), !dbg !1432
  %37 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1433, !tbaa !1309
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8, !dbg !1432, !tbaa !1309
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1434, !tbaa !1309
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1436
  %39 = load i64, i64* %ob_refcnt21, align 8, !dbg !1437, !tbaa !1370
  %dec = add i64 %39, -1, !dbg !1437
  store i64 %dec, i64* %ob_refcnt21, align 8, !dbg !1437, !tbaa !1370
  %cmp22 = icmp ne i64 %dec, 0, !dbg !1438
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1439

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1440

if.else.24:                                       ; preds = %do.body
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1442, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1444
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1444, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1446
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1446, !tbaa !1447
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1450, !tbaa !1309
  call void %42(%struct._object* %43), !dbg !1451
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  %44 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1452
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !1452
  br label %do.cond, !dbg !1454

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1455

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* %retval, !dbg !1457
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1457

if.end.26:                                        ; preds = %if.end.16
  br label %do.body.27, !dbg !1458

do.body.27:                                       ; preds = %if.end.26
  %45 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1459
  call void @llvm.lifetime.start(i64 8, i8* %45) #2, !dbg !1459
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !593, metadata !1313), !dbg !1461
  %46 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !1462, !tbaa !1309
  store %struct._object* %46, %struct._object** %_py_decref_tmp28, align 8, !dbg !1461, !tbaa !1309
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1463, !tbaa !1309
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1465
  %48 = load i64, i64* %ob_refcnt29, align 8, !dbg !1466, !tbaa !1370
  %dec30 = add i64 %48, -1, !dbg !1466
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !1466, !tbaa !1370
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !1467
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !1468

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36, !dbg !1469

if.else.33:                                       ; preds = %do.body.27
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1471, !tbaa !1309
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !1473
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !1473, !tbaa !1445
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !1474
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !1474, !tbaa !1447
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !1475, !tbaa !1309
  call void %51(%struct._object* %52), !dbg !1476
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %53 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !1477
  br label %do.cond.37, !dbg !1479

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !1480

do.end.38:                                        ; preds = %do.cond.37
  %54 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1482, !tbaa !1309
  %55 = load i32, i32* %cached_statements, align 4, !dbg !1483, !tbaa !1321
  %call39 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct.pysqlite_Connection* %54, i32 %55), !dbg !1484
  %56 = bitcast %struct._object* %call39 to %struct.pysqlite_Cache*, !dbg !1485
  %57 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1486, !tbaa !1309
  %statement_cache40 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %57, i32 0, i32 11, !dbg !1487
  store %struct.pysqlite_Cache* %56, %struct.pysqlite_Cache** %statement_cache40, align 8, !dbg !1488, !tbaa !1360
  %call41 = call %struct._object* @PyErr_Occurred(), !dbg !1489
  %tobool42 = icmp ne %struct._object* %call41, null, !dbg !1489
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !1491

if.then.43:                                       ; preds = %do.end.38
  store i32 -1, i32* %retval, !dbg !1492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1492

if.end.44:                                        ; preds = %do.end.38
  %58 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1494, !tbaa !1309
  %created_statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %58, i32 0, i32 14, !dbg !1495
  store i32 0, i32* %created_statements, align 4, !dbg !1496, !tbaa !1497
  %59 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1498, !tbaa !1309
  %created_cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %59, i32 0, i32 15, !dbg !1499
  store i32 0, i32* %created_cursors, align 4, !dbg !1500, !tbaa !1501
  %call45 = call %struct._object* @PyList_New(i64 0), !dbg !1502
  %60 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1503, !tbaa !1309
  %statements46 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %60, i32 0, i32 12, !dbg !1504
  store %struct._object* %call45, %struct._object** %statements46, align 8, !dbg !1505, !tbaa !1364
  %call47 = call %struct._object* @PyList_New(i64 0), !dbg !1506
  %61 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1507, !tbaa !1309
  %cursors48 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %61, i32 0, i32 13, !dbg !1508
  store %struct._object* %call47, %struct._object** %cursors48, align 8, !dbg !1509, !tbaa !1368
  %62 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1510, !tbaa !1309
  %statements49 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %62, i32 0, i32 12, !dbg !1512
  %63 = load %struct._object*, %struct._object** %statements49, align 8, !dbg !1512, !tbaa !1364
  %tobool50 = icmp ne %struct._object* %63, null, !dbg !1510
  br i1 %tobool50, label %lor.lhs.false, label %if.then.53, !dbg !1513

lor.lhs.false:                                    ; preds = %if.end.44
  %64 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1514, !tbaa !1309
  %cursors51 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %64, i32 0, i32 13, !dbg !1516
  %65 = load %struct._object*, %struct._object** %cursors51, align 8, !dbg !1516, !tbaa !1368
  %tobool52 = icmp ne %struct._object* %65, null, !dbg !1517
  br i1 %tobool52, label %if.end.54, label %if.then.53, !dbg !1518

if.then.53:                                       ; preds = %lor.lhs.false, %if.end.44
  store i32 -1, i32* %retval, !dbg !1519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1519

if.end.54:                                        ; preds = %lor.lhs.false
  %66 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1521, !tbaa !1309
  %statement_cache55 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %66, i32 0, i32 11, !dbg !1522
  %67 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache55, align 8, !dbg !1522, !tbaa !1360
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %67, i32 0, i32 6, !dbg !1523
  store i32 0, i32* %decref_factory, align 4, !dbg !1524, !tbaa !1525
  br label %do.body.56, !dbg !1527

do.body.56:                                       ; preds = %if.end.54
  %68 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1528
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !1528
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !595, metadata !1313), !dbg !1530
  %69 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1531, !tbaa !1309
  %70 = bitcast %struct.pysqlite_Connection* %69 to %struct._object*, !dbg !1532
  store %struct._object* %70, %struct._object** %_py_decref_tmp57, align 8, !dbg !1530, !tbaa !1309
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1533, !tbaa !1309
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !1535
  %72 = load i64, i64* %ob_refcnt58, align 8, !dbg !1536, !tbaa !1370
  %dec59 = add i64 %72, -1, !dbg !1536
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1536, !tbaa !1370
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !1537
  br i1 %cmp60, label %if.then.61, label %if.else.62, !dbg !1538

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65, !dbg !1539

if.else.62:                                       ; preds = %do.body.56
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1541, !tbaa !1309
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !1543
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !1543, !tbaa !1445
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !1544
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !1544, !tbaa !1447
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1545, !tbaa !1309
  call void %75(%struct._object* %76), !dbg !1546
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %77 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1547
  call void @llvm.lifetime.end(i64 8, i8* %77) #2, !dbg !1547
  br label %do.cond.66, !dbg !1548

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1549

do.end.67:                                        ; preds = %do.cond.66
  %78 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1551, !tbaa !1309
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %78, i32 0, i32 2, !dbg !1552
  store i8 0, i8* %inTransaction, align 1, !dbg !1553, !tbaa !1554
  %79 = load i32, i32* %detect_types, align 4, !dbg !1555, !tbaa !1321
  %80 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1556, !tbaa !1309
  %detect_types68 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %80, i32 0, i32 3, !dbg !1557
  store i32 %79, i32* %detect_types68, align 4, !dbg !1558, !tbaa !1559
  %81 = load double, double* %timeout, align 8, !dbg !1560, !tbaa !1335
  %82 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1561, !tbaa !1309
  %timeout69 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %82, i32 0, i32 4, !dbg !1562
  store double %81, double* %timeout69, align 8, !dbg !1563, !tbaa !1564
  %83 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1565, !tbaa !1309
  %db70 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %83, i32 0, i32 1, !dbg !1566
  %84 = load %struct.sqlite3*, %struct.sqlite3** %db70, align 8, !dbg !1566, !tbaa !1401
  %85 = load double, double* %timeout, align 8, !dbg !1567, !tbaa !1335
  %mul = fmul double %85, 1.000000e+03, !dbg !1568
  %conv = fptosi double %mul to i32, !dbg !1569
  %call71 = call i32 @sqlite3_busy_timeout(%struct.sqlite3* %84, i32 %conv), !dbg !1570
  %call72 = call i64 @PyThread_get_thread_ident(), !dbg !1571
  %86 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1572, !tbaa !1309
  %thread_ident = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %86, i32 0, i32 10, !dbg !1573
  store i64 %call72, i64* %thread_ident, align 8, !dbg !1574, !tbaa !1575
  %87 = load i32, i32* %check_same_thread, align 4, !dbg !1576, !tbaa !1321
  %88 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1577, !tbaa !1309
  %check_same_thread73 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %88, i32 0, i32 8, !dbg !1578
  store i32 %87, i32* %check_same_thread73, align 4, !dbg !1579, !tbaa !1580
  %call74 = call %struct._object* @PyDict_New(), !dbg !1581
  %89 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1582, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %89, i32 0, i32 18, !dbg !1583
  store %struct._object* %call74, %struct._object** %function_pinboard, align 8, !dbg !1584, !tbaa !1585
  %90 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1586, !tbaa !1309
  %function_pinboard75 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %90, i32 0, i32 18, !dbg !1588
  %91 = load %struct._object*, %struct._object** %function_pinboard75, align 8, !dbg !1588, !tbaa !1585
  %tobool76 = icmp ne %struct._object* %91, null, !dbg !1586
  br i1 %tobool76, label %if.end.78, label %if.then.77, !dbg !1589

if.then.77:                                       ; preds = %do.end.67
  store i32 -1, i32* %retval, !dbg !1590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1590

if.end.78:                                        ; preds = %do.end.67
  %call79 = call %struct._object* @PyDict_New(), !dbg !1592
  %92 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1593, !tbaa !1309
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %92, i32 0, i32 19, !dbg !1594
  store %struct._object* %call79, %struct._object** %collations, align 8, !dbg !1595, !tbaa !1596
  %93 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1597, !tbaa !1309
  %collations80 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %93, i32 0, i32 19, !dbg !1599
  %94 = load %struct._object*, %struct._object** %collations80, align 8, !dbg !1599, !tbaa !1596
  %tobool81 = icmp ne %struct._object* %94, null, !dbg !1597
  br i1 %tobool81, label %if.end.83, label %if.then.82, !dbg !1600

if.then.82:                                       ; preds = %if.end.78
  store i32 -1, i32* %retval, !dbg !1601
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1601

if.end.83:                                        ; preds = %if.end.78
  %95 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8, !dbg !1603, !tbaa !1309
  %96 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1604, !tbaa !1309
  %Warning = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %96, i32 0, i32 20, !dbg !1605
  store %struct._object* %95, %struct._object** %Warning, align 8, !dbg !1606, !tbaa !1607
  %97 = load %struct._object*, %struct._object** @pysqlite_Error, align 8, !dbg !1608, !tbaa !1309
  %98 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1609, !tbaa !1309
  %Error = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %98, i32 0, i32 21, !dbg !1610
  store %struct._object* %97, %struct._object** %Error, align 8, !dbg !1611, !tbaa !1612
  %99 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !1613, !tbaa !1309
  %100 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1614, !tbaa !1309
  %InterfaceError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %100, i32 0, i32 22, !dbg !1615
  store %struct._object* %99, %struct._object** %InterfaceError, align 8, !dbg !1616, !tbaa !1617
  %101 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !1618, !tbaa !1309
  %102 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1619, !tbaa !1309
  %DatabaseError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %102, i32 0, i32 23, !dbg !1620
  store %struct._object* %101, %struct._object** %DatabaseError, align 8, !dbg !1621, !tbaa !1622
  %103 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8, !dbg !1623, !tbaa !1309
  %104 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1624, !tbaa !1309
  %DataError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %104, i32 0, i32 24, !dbg !1625
  store %struct._object* %103, %struct._object** %DataError, align 8, !dbg !1626, !tbaa !1627
  %105 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !1628, !tbaa !1309
  %106 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1629, !tbaa !1309
  %OperationalError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %106, i32 0, i32 25, !dbg !1630
  store %struct._object* %105, %struct._object** %OperationalError, align 8, !dbg !1631, !tbaa !1632
  %107 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8, !dbg !1633, !tbaa !1309
  %108 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1634, !tbaa !1309
  %IntegrityError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %108, i32 0, i32 26, !dbg !1635
  store %struct._object* %107, %struct._object** %IntegrityError, align 8, !dbg !1636, !tbaa !1637
  %109 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8, !dbg !1638, !tbaa !1309
  %110 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1639, !tbaa !1309
  %InternalError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %110, i32 0, i32 27, !dbg !1640
  store %struct._object* %109, %struct._object** %InternalError, align 8, !dbg !1641, !tbaa !1642
  %111 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !1643, !tbaa !1309
  %112 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1644, !tbaa !1309
  %ProgrammingError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %112, i32 0, i32 28, !dbg !1645
  store %struct._object* %111, %struct._object** %ProgrammingError, align 8, !dbg !1646, !tbaa !1647
  %113 = load %struct._object*, %struct._object** @pysqlite_NotSupportedError, align 8, !dbg !1648, !tbaa !1309
  %114 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1649, !tbaa !1309
  %NotSupportedError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %114, i32 0, i32 29, !dbg !1650
  store %struct._object* %113, %struct._object** %NotSupportedError, align 8, !dbg !1651, !tbaa !1652
  store i32 0, i32* %retval, !dbg !1653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1653

cleanup:                                          ; preds = %if.end.83, %if.then.82, %if.then.77, %if.then.53, %if.then.43, %do.end, %if.then.13, %if.then.5, %if.then
  %115 = bitcast i32* %rc to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 4, i8* %115) #2, !dbg !1654
  %116 = bitcast double* %timeout to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %116) #2, !dbg !1654
  %117 = bitcast i32* %uri to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 4, i8* %117) #2, !dbg !1654
  %118 = bitcast i32* %cached_statements to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 4, i8* %118) #2, !dbg !1654
  %119 = bitcast i32* %check_same_thread to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 4, i8* %119) #2, !dbg !1654
  %120 = bitcast %struct._object** %factory to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %120) #2, !dbg !1654
  %121 = bitcast %struct._object** %isolation_level to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %121) #2, !dbg !1654
  %122 = bitcast i32* %detect_types to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 4, i8* %122) #2, !dbg !1654
  %123 = bitcast i8** %database to i8*, !dbg !1654
  call void @llvm.lifetime.end(i64 8, i8* %123) #2, !dbg !1654
  %124 = load i32, i32* %retval, !dbg !1654
  ret i32 %124, !dbg !1654
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @sqlite3_open_v2(i8*, %struct.sqlite3**, i32, i8*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @_pysqlite_seterror(%struct.sqlite3*, %struct.sqlite3_stmt*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_connection_set_isolation_level(%struct.pysqlite_Connection* %self, %struct._object* %isolation_level) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %isolation_level.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %begin_statement = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %statement = alloca i8*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1040, metadata !1313), !dbg !1655
  store %struct._object* %isolation_level, %struct._object** %isolation_level.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %isolation_level.addr, metadata !1041, metadata !1313), !dbg !1656
  %0 = bitcast %struct._object** %res to i8*, !dbg !1657
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1657
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !1042, metadata !1313), !dbg !1658
  %1 = bitcast %struct._object** %begin_statement to i8*, !dbg !1659
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1659
  call void @llvm.dbg.declare(metadata %struct._object** %begin_statement, metadata !1043, metadata !1313), !dbg !1660
  br label %do.body, !dbg !1661

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1044, metadata !1313), !dbg !1664
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1665, !tbaa !1309
  %isolation_level1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 6, !dbg !1666
  %4 = load %struct._object*, %struct._object** %isolation_level1, align 8, !dbg !1666, !tbaa !1423
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1664, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1667, !tbaa !1309
  %cmp = icmp ne %struct._object* %5, null, !dbg !1668
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1669

if.then:                                          ; preds = %do.body
  br label %do.body.2, !dbg !1670

do.body.2:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1672
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1046, metadata !1313), !dbg !1674
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1675, !tbaa !1309
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1674, !tbaa !1309
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1676, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1678
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1679, !tbaa !1370
  %dec = add i64 %9, -1, !dbg !1679
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1679, !tbaa !1370
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1680
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1681

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1682

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1684, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1686
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1686, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1687
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1687, !tbaa !1447
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1688, !tbaa !1309
  call void %12(%struct._object* %13), !dbg !1689
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !1690
  br label %do.cond, !dbg !1692

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1693

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1695

if.end.5:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !1697
  br label %do.cond.6, !dbg !1700

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !1701

do.end.7:                                         ; preds = %do.cond.6
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1703, !tbaa !1309
  %begin_statement8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %16, i32 0, i32 7, !dbg !1705
  %17 = load i8*, i8** %begin_statement8, align 8, !dbg !1705, !tbaa !1356
  %tobool = icmp ne i8* %17, null, !dbg !1703
  br i1 %tobool, label %if.then.9, label %if.end.12, !dbg !1706

if.then.9:                                        ; preds = %do.end.7
  %18 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1707, !tbaa !1309
  %begin_statement10 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %18, i32 0, i32 7, !dbg !1709
  %19 = load i8*, i8** %begin_statement10, align 8, !dbg !1709, !tbaa !1356
  call void @PyMem_Free(i8* %19), !dbg !1710
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1711, !tbaa !1309
  %begin_statement11 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 7, !dbg !1712
  store i8* null, i8** %begin_statement11, align 8, !dbg !1713, !tbaa !1356
  br label %if.end.12, !dbg !1714

if.end.12:                                        ; preds = %if.then.9, %do.end.7
  %21 = load %struct._object*, %struct._object** %isolation_level.addr, align 8, !dbg !1715, !tbaa !1309
  %cmp13 = icmp eq %struct._object* %21, @_Py_NoneStruct, !dbg !1716
  br i1 %cmp13, label %if.then.14, label %if.else.31, !dbg !1717

if.then.14:                                       ; preds = %if.end.12
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1718, !tbaa !1370
  %inc = add i64 %22, 1, !dbg !1718
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1718, !tbaa !1370
  %23 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1719, !tbaa !1309
  %isolation_level15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %23, i32 0, i32 6, !dbg !1720
  store %struct._object* @_Py_NoneStruct, %struct._object** %isolation_level15, align 8, !dbg !1721, !tbaa !1423
  %24 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1722, !tbaa !1309
  %call = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %24, %struct._object* null), !dbg !1723
  store %struct._object* %call, %struct._object** %res, align 8, !dbg !1724, !tbaa !1309
  %25 = load %struct._object*, %struct._object** %res, align 8, !dbg !1725, !tbaa !1309
  %tobool16 = icmp ne %struct._object* %25, null, !dbg !1725
  br i1 %tobool16, label %if.end.18, label %if.then.17, !dbg !1727

if.then.17:                                       ; preds = %if.then.14
  store i32 -1, i32* %retval, !dbg !1728
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !1728

if.end.18:                                        ; preds = %if.then.14
  br label %do.body.19, !dbg !1730

do.body.19:                                       ; preds = %if.end.18
  %26 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1731
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !1049, metadata !1313), !dbg !1733
  %27 = load %struct._object*, %struct._object** %res, align 8, !dbg !1734, !tbaa !1309
  store %struct._object* %27, %struct._object** %_py_decref_tmp20, align 8, !dbg !1733, !tbaa !1309
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1735, !tbaa !1309
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1737
  %29 = load i64, i64* %ob_refcnt21, align 8, !dbg !1738, !tbaa !1370
  %dec22 = add i64 %29, -1, !dbg !1738
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !1738, !tbaa !1370
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !1739
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !1740

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !1741

if.else.25:                                       ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1743, !tbaa !1309
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1745
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !1745, !tbaa !1445
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1746
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !1746, !tbaa !1447
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !1747, !tbaa !1309
  call void %32(%struct._object* %33), !dbg !1748
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %34 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !1749
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !1749
  br label %do.cond.29, !dbg !1751

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !1752

do.end.30:                                        ; preds = %do.cond.29
  %35 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1754, !tbaa !1309
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %35, i32 0, i32 2, !dbg !1755
  store i8 0, i8* %inTransaction, align 1, !dbg !1756, !tbaa !1554
  br label %if.end.95, !dbg !1757

if.else.31:                                       ; preds = %if.end.12
  %36 = bitcast i8** %statement to i8*, !dbg !1758
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !1758
  call void @llvm.dbg.declare(metadata i8** %statement, metadata !1053, metadata !1313), !dbg !1759
  %37 = bitcast i64* %size to i8*, !dbg !1760
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !1760
  call void @llvm.dbg.declare(metadata i64* %size, metadata !1055, metadata !1313), !dbg !1761
  %38 = load %struct._object*, %struct._object** %isolation_level.addr, align 8, !dbg !1762, !tbaa !1309
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1763
  %39 = load i64, i64* %ob_refcnt32, align 8, !dbg !1764, !tbaa !1370
  %inc33 = add i64 %39, 1, !dbg !1764
  store i64 %inc33, i64* %ob_refcnt32, align 8, !dbg !1764, !tbaa !1370
  %40 = load %struct._object*, %struct._object** %isolation_level.addr, align 8, !dbg !1765, !tbaa !1309
  %41 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1766, !tbaa !1309
  %isolation_level34 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %41, i32 0, i32 6, !dbg !1767
  store %struct._object* %40, %struct._object** %isolation_level34, align 8, !dbg !1768, !tbaa !1423
  %42 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8, !dbg !1769, !tbaa !1309
  %tobool35 = icmp ne %struct._object* %42, null, !dbg !1769
  br i1 %tobool35, label %if.end.41, label %if.then.36, !dbg !1771

if.then.36:                                       ; preds = %if.else.31
  %call37 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)), !dbg !1772
  store %struct._object* %call37, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8, !dbg !1774, !tbaa !1309
  %43 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8, !dbg !1775, !tbaa !1309
  %tobool38 = icmp ne %struct._object* %43, null, !dbg !1775
  br i1 %tobool38, label %if.end.40, label %if.then.39, !dbg !1777

if.then.39:                                       ; preds = %if.then.36
  store i32 -1, i32* %retval, !dbg !1778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1780

if.end.40:                                        ; preds = %if.then.36
  br label %if.end.41, !dbg !1781

if.end.41:                                        ; preds = %if.end.40, %if.else.31
  %44 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8, !dbg !1782, !tbaa !1309
  %45 = load %struct._object*, %struct._object** %isolation_level.addr, align 8, !dbg !1783, !tbaa !1309
  %call42 = call %struct._object* @PyUnicode_Concat(%struct._object* %44, %struct._object* %45), !dbg !1784
  store %struct._object* %call42, %struct._object** %begin_statement, align 8, !dbg !1785, !tbaa !1309
  %46 = load %struct._object*, %struct._object** %begin_statement, align 8, !dbg !1786, !tbaa !1309
  %tobool43 = icmp ne %struct._object* %46, null, !dbg !1786
  br i1 %tobool43, label %if.end.45, label %if.then.44, !dbg !1788

if.then.44:                                       ; preds = %if.end.41
  store i32 -1, i32* %retval, !dbg !1789
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1789

if.end.45:                                        ; preds = %if.end.41
  %47 = load %struct._object*, %struct._object** %begin_statement, align 8, !dbg !1791, !tbaa !1309
  %call46 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %47, i64* %size), !dbg !1792
  store i8* %call46, i8** %statement, align 8, !dbg !1793, !tbaa !1309
  %48 = load i8*, i8** %statement, align 8, !dbg !1794, !tbaa !1309
  %tobool47 = icmp ne i8* %48, null, !dbg !1794
  br i1 %tobool47, label %if.end.61, label %if.then.48, !dbg !1795

if.then.48:                                       ; preds = %if.end.45
  br label %do.body.49, !dbg !1796

do.body.49:                                       ; preds = %if.then.48
  %49 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1797
  call void @llvm.lifetime.start(i64 8, i8* %49) #2, !dbg !1797
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !1056, metadata !1313), !dbg !1799
  %50 = load %struct._object*, %struct._object** %begin_statement, align 8, !dbg !1800, !tbaa !1309
  store %struct._object* %50, %struct._object** %_py_decref_tmp50, align 8, !dbg !1799, !tbaa !1309
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1801, !tbaa !1309
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !1803
  %52 = load i64, i64* %ob_refcnt51, align 8, !dbg !1804, !tbaa !1370
  %dec52 = add i64 %52, -1, !dbg !1804
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1804, !tbaa !1370
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !1805
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !1806

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !1807

if.else.55:                                       ; preds = %do.body.49
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1809, !tbaa !1309
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !1811
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1811, !tbaa !1445
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !1812
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1812, !tbaa !1447
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !1813, !tbaa !1309
  call void %55(%struct._object* %56), !dbg !1814
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %57 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !1815
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !1815
  br label %do.cond.59, !dbg !1817

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1818

do.end.60:                                        ; preds = %do.cond.59
  store i32 -1, i32* %retval, !dbg !1820
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1820

if.end.61:                                        ; preds = %if.end.45
  %58 = load i64, i64* %size, align 8, !dbg !1821, !tbaa !1822
  %add = add i64 %58, 2, !dbg !1823
  %call62 = call i8* @PyMem_Malloc(i64 %add), !dbg !1824
  %59 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1825, !tbaa !1309
  %begin_statement63 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %59, i32 0, i32 7, !dbg !1826
  store i8* %call62, i8** %begin_statement63, align 8, !dbg !1827, !tbaa !1356
  %60 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1828, !tbaa !1309
  %begin_statement64 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %60, i32 0, i32 7, !dbg !1829
  %61 = load i8*, i8** %begin_statement64, align 8, !dbg !1829, !tbaa !1356
  %tobool65 = icmp ne i8* %61, null, !dbg !1828
  br i1 %tobool65, label %if.end.79, label %if.then.66, !dbg !1830

if.then.66:                                       ; preds = %if.end.61
  br label %do.body.67, !dbg !1831

do.body.67:                                       ; preds = %if.then.66
  %62 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1832
  call void @llvm.lifetime.start(i64 8, i8* %62) #2, !dbg !1832
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp68, metadata !1060, metadata !1313), !dbg !1834
  %63 = load %struct._object*, %struct._object** %begin_statement, align 8, !dbg !1835, !tbaa !1309
  store %struct._object* %63, %struct._object** %_py_decref_tmp68, align 8, !dbg !1834, !tbaa !1309
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1836, !tbaa !1309
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0, !dbg !1838
  %65 = load i64, i64* %ob_refcnt69, align 8, !dbg !1839, !tbaa !1370
  %dec70 = add i64 %65, -1, !dbg !1839
  store i64 %dec70, i64* %ob_refcnt69, align 8, !dbg !1839, !tbaa !1370
  %cmp71 = icmp ne i64 %dec70, 0, !dbg !1840
  br i1 %cmp71, label %if.then.72, label %if.else.73, !dbg !1841

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76, !dbg !1842

if.else.73:                                       ; preds = %do.body.67
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1844, !tbaa !1309
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1, !dbg !1846
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !1846, !tbaa !1445
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4, !dbg !1847
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !1847, !tbaa !1447
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8, !dbg !1848, !tbaa !1309
  call void %68(%struct._object* %69), !dbg !1849
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  %70 = bitcast %struct._object** %_py_decref_tmp68 to i8*, !dbg !1850
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !1850
  br label %do.cond.77, !dbg !1852

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !1853

do.end.78:                                        ; preds = %do.cond.77
  store i32 -1, i32* %retval, !dbg !1855
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1855

if.end.79:                                        ; preds = %if.end.61
  %71 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1856, !tbaa !1309
  %begin_statement80 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %71, i32 0, i32 7, !dbg !1857
  %72 = load i8*, i8** %begin_statement80, align 8, !dbg !1857, !tbaa !1356
  %73 = load i8*, i8** %statement, align 8, !dbg !1858, !tbaa !1309
  %call81 = call i8* @strcpy(i8* %72, i8* %73) #2, !dbg !1859
  br label %do.body.82, !dbg !1860

do.body.82:                                       ; preds = %if.end.79
  %74 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !1861
  call void @llvm.lifetime.start(i64 8, i8* %74) #2, !dbg !1861
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp83, metadata !1064, metadata !1313), !dbg !1863
  %75 = load %struct._object*, %struct._object** %begin_statement, align 8, !dbg !1864, !tbaa !1309
  store %struct._object* %75, %struct._object** %_py_decref_tmp83, align 8, !dbg !1863, !tbaa !1309
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !1865, !tbaa !1309
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !1867
  %77 = load i64, i64* %ob_refcnt84, align 8, !dbg !1868, !tbaa !1370
  %dec85 = add i64 %77, -1, !dbg !1868
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !1868, !tbaa !1370
  %cmp86 = icmp ne i64 %dec85, 0, !dbg !1869
  br i1 %cmp86, label %if.then.87, label %if.else.88, !dbg !1870

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91, !dbg !1871

if.else.88:                                       ; preds = %do.body.82
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !1873, !tbaa !1309
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !1875
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !1875, !tbaa !1445
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !1876
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !1876, !tbaa !1447
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !1877, !tbaa !1309
  call void %80(%struct._object* %81), !dbg !1878
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  %82 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !1879
  call void @llvm.lifetime.end(i64 8, i8* %82) #2, !dbg !1879
  br label %do.cond.92, !dbg !1881

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !1882

do.end.93:                                        ; preds = %do.cond.92
  store i32 0, i32* %cleanup.dest.slot, !dbg !1884
  br label %cleanup, !dbg !1884

cleanup:                                          ; preds = %do.end.93, %do.end.78, %do.end.60, %if.then.44, %if.then.39
  %83 = bitcast i64* %size to i8*, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %83) #2, !dbg !1885
  %84 = bitcast i8** %statement to i8*, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %84) #2, !dbg !1885
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.96 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.95

if.end.95:                                        ; preds = %cleanup.cont, %do.end.30
  store i32 0, i32* %retval, !dbg !1887
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.96, !dbg !1887

cleanup.96:                                       ; preds = %if.end.95, %cleanup, %if.then.17
  %85 = bitcast %struct._object** %begin_statement to i8*, !dbg !1888
  call void @llvm.lifetime.end(i64 8, i8* %85) #2, !dbg !1888
  %86 = bitcast %struct._object** %res to i8*, !dbg !1888
  call void @llvm.lifetime.end(i64 8, i8* %86) #2, !dbg !1888
  %87 = load i32, i32* %retval, !dbg !1888
  ret i32 %87, !dbg !1888
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyList_New(i64) #3

declare i32 @sqlite3_busy_timeout(%struct.sqlite3*, i32) #3

declare i64 @PyThread_get_thread_ident() #3

declare %struct._object* @PyDict_New() #3

; Function Attrs: nounwind uwtable
define void @pysqlite_flush_statement_cache(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %statement = alloca %struct.pysqlite_Statement*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !601, metadata !1313), !dbg !1889
  %0 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct._pysqlite_Node** %node, metadata !602, metadata !1313), !dbg !1891
  %1 = bitcast %struct.pysqlite_Statement** %statement to i8*, !dbg !1892
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1892
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %statement, metadata !603, metadata !1313), !dbg !1893
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1894, !tbaa !1309
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 11, !dbg !1895
  %3 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8, !dbg !1895, !tbaa !1360
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %3, i32 0, i32 4, !dbg !1896
  %4 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8, !dbg !1896, !tbaa !1897
  store %struct._pysqlite_Node* %4, %struct._pysqlite_Node** %node, align 8, !dbg !1898, !tbaa !1309
  br label %while.cond, !dbg !1899

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1900, !tbaa !1309
  %tobool = icmp ne %struct._pysqlite_Node* %5, null, !dbg !1899
  br i1 %tobool, label %while.body, label %while.end, !dbg !1899

while.body:                                       ; preds = %while.cond
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1903, !tbaa !1309
  %data = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %6, i32 0, i32 2, !dbg !1905
  %7 = load %struct._object*, %struct._object** %data, align 8, !dbg !1905, !tbaa !1906
  %8 = bitcast %struct._object* %7 to %struct.pysqlite_Statement*, !dbg !1908
  store %struct.pysqlite_Statement* %8, %struct.pysqlite_Statement** %statement, align 8, !dbg !1909, !tbaa !1309
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !1910, !tbaa !1309
  %call = call i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %9), !dbg !1911
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8, !dbg !1912, !tbaa !1309
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 5, !dbg !1913
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8, !dbg !1913, !tbaa !1914
  store %struct._pysqlite_Node* %11, %struct._pysqlite_Node** %node, align 8, !dbg !1915, !tbaa !1309
  br label %while.cond, !dbg !1899

while.end:                                        ; preds = %while.cond
  br label %do.body, !dbg !1916

do.body:                                          ; preds = %while.end
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1917
  call void @llvm.lifetime.start(i64 8, i8* %12) #2, !dbg !1917
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !604, metadata !1313), !dbg !1919
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1920, !tbaa !1309
  %statement_cache1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 11, !dbg !1921
  %14 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache1, align 8, !dbg !1921, !tbaa !1360
  %15 = bitcast %struct.pysqlite_Cache* %14 to %struct._object*, !dbg !1922
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1919, !tbaa !1309
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1923, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1925
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1926, !tbaa !1370
  %dec = add i64 %17, -1, !dbg !1926
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1926, !tbaa !1370
  %cmp = icmp ne i64 %dec, 0, !dbg !1927
  br i1 %cmp, label %if.then, label %if.else, !dbg !1928

if.then:                                          ; preds = %do.body
  br label %if.end, !dbg !1929

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1931, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1933
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1933, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1934
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1934, !tbaa !1447
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1935, !tbaa !1309
  call void %20(%struct._object* %21), !dbg !1936
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1937
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1937
  br label %do.cond, !dbg !1939

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1940

do.end:                                           ; preds = %do.cond
  %23 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1942, !tbaa !1309
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.pysqlite_Connection* %23), !dbg !1943
  %24 = bitcast %struct._object* %call2 to %struct.pysqlite_Cache*, !dbg !1944
  %25 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1945, !tbaa !1309
  %statement_cache3 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %25, i32 0, i32 11, !dbg !1946
  store %struct.pysqlite_Cache* %24, %struct.pysqlite_Cache** %statement_cache3, align 8, !dbg !1947, !tbaa !1360
  br label %do.body.4, !dbg !1948

do.body.4:                                        ; preds = %do.end
  %26 = bitcast %struct._object** %_py_decref_tmp5 to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp5, metadata !606, metadata !1313), !dbg !1951
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1952, !tbaa !1309
  %28 = bitcast %struct.pysqlite_Connection* %27 to %struct._object*, !dbg !1953
  store %struct._object* %28, %struct._object** %_py_decref_tmp5, align 8, !dbg !1951, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1954, !tbaa !1309
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !1956
  %30 = load i64, i64* %ob_refcnt6, align 8, !dbg !1957, !tbaa !1370
  %dec7 = add i64 %30, -1, !dbg !1957
  store i64 %dec7, i64* %ob_refcnt6, align 8, !dbg !1957, !tbaa !1370
  %cmp8 = icmp ne i64 %dec7, 0, !dbg !1958
  br i1 %cmp8, label %if.then.9, label %if.else.10, !dbg !1959

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13, !dbg !1960

if.else.10:                                       ; preds = %do.body.4
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1962, !tbaa !1309
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !1964
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !1964, !tbaa !1445
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !1965
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8, !dbg !1965, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8, !dbg !1966, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !1967
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  %35 = bitcast %struct._object** %_py_decref_tmp5 to i8*, !dbg !1968
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !1968
  br label %do.cond.14, !dbg !1969

do.cond.14:                                       ; preds = %if.end.13
  br label %do.end.15, !dbg !1970

do.end.15:                                        ; preds = %do.cond.14
  %36 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1972, !tbaa !1309
  %statement_cache16 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %36, i32 0, i32 11, !dbg !1973
  %37 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache16, align 8, !dbg !1973, !tbaa !1360
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %37, i32 0, i32 6, !dbg !1974
  store i32 0, i32* %decref_factory, align 4, !dbg !1975, !tbaa !1525
  %38 = bitcast %struct.pysqlite_Statement** %statement to i8*, !dbg !1976
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !1976
  %39 = bitcast %struct._pysqlite_Node** %node to i8*, !dbg !1976
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !1976
  ret void, !dbg !1976
}

declare i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement*) #3

; Function Attrs: nounwind uwtable
define void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %self, i32 %action, i32 %reset_cursors) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %action.addr = alloca i32, align 4
  %reset_cursors.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %weakref = alloca %struct._object*, align 8
  %statement = alloca %struct._object*, align 8
  %cursor = alloca %struct.pysqlite_Cursor*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !612, metadata !1313), !dbg !1977
  store i32 %action, i32* %action.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !613, metadata !1313), !dbg !1978
  store i32 %reset_cursors, i32* %reset_cursors.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %reset_cursors.addr, metadata !614, metadata !1313), !dbg !1979
  %0 = bitcast i32* %i to i8*, !dbg !1980
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1980
  call void @llvm.dbg.declare(metadata i32* %i, metadata !615, metadata !1313), !dbg !1981
  %1 = bitcast %struct._object** %weakref to i8*, !dbg !1982
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1982
  call void @llvm.dbg.declare(metadata %struct._object** %weakref, metadata !616, metadata !1313), !dbg !1983
  %2 = bitcast %struct._object** %statement to i8*, !dbg !1984
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1984
  call void @llvm.dbg.declare(metadata %struct._object** %statement, metadata !617, metadata !1313), !dbg !1985
  %3 = bitcast %struct.pysqlite_Cursor** %cursor to i8*, !dbg !1986
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1986
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Cursor** %cursor, metadata !618, metadata !1313), !dbg !1987
  store i32 0, i32* %i, align 4, !dbg !1988, !tbaa !1321
  br label %for.cond, !dbg !1989

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !1990, !tbaa !1321
  %conv = sext i32 %4 to i64, !dbg !1990
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1993, !tbaa !1309
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 12, !dbg !1994
  %6 = load %struct._object*, %struct._object** %statements, align 8, !dbg !1994, !tbaa !1364
  %call = call i64 @PyList_Size(%struct._object* %6), !dbg !1995
  %cmp = icmp slt i64 %conv, %call, !dbg !1996
  br i1 %cmp, label %for.body, label %for.end, !dbg !1997

for.body:                                         ; preds = %for.cond
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !1998, !tbaa !1309
  %statements2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 12, !dbg !1999
  %8 = load %struct._object*, %struct._object** %statements2, align 8, !dbg !1999, !tbaa !1364
  %9 = load i32, i32* %i, align 4, !dbg !2000, !tbaa !1321
  %conv3 = sext i32 %9 to i64, !dbg !2000
  %call4 = call %struct._object* @PyList_GetItem(%struct._object* %8, i64 %conv3), !dbg !2001
  store %struct._object* %call4, %struct._object** %weakref, align 8, !dbg !2002, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2003, !tbaa !1309
  %call5 = call %struct._object* @PyWeakref_GetObject(%struct._object* %10), !dbg !2004
  store %struct._object* %call5, %struct._object** %statement, align 8, !dbg !2005, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %statement, align 8, !dbg !2006, !tbaa !1309
  %cmp6 = icmp ne %struct._object* %11, @_Py_NoneStruct, !dbg !2007
  br i1 %cmp6, label %if.then, label %if.end.19, !dbg !2008

if.then:                                          ; preds = %for.body
  %12 = load %struct._object*, %struct._object** %statement, align 8, !dbg !2009, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2010
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2011, !tbaa !1370
  %inc = add i64 %13, 1, !dbg !2011
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2011, !tbaa !1370
  %14 = load i32, i32* %action.addr, align 4, !dbg !2012, !tbaa !1321
  %cmp8 = icmp eq i32 %14, 2, !dbg !2014
  br i1 %cmp8, label %if.then.10, label %if.else, !dbg !2015

if.then.10:                                       ; preds = %if.then
  %15 = load %struct._object*, %struct._object** %statement, align 8, !dbg !2016, !tbaa !1309
  %16 = bitcast %struct._object* %15 to %struct.pysqlite_Statement*, !dbg !2018
  %call11 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %16), !dbg !2019
  br label %if.end, !dbg !2020

if.else:                                          ; preds = %if.then
  %17 = load %struct._object*, %struct._object** %statement, align 8, !dbg !2021, !tbaa !1309
  %18 = bitcast %struct._object* %17 to %struct.pysqlite_Statement*, !dbg !2023
  %call12 = call i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %18), !dbg !2024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.body, !dbg !2025

do.body:                                          ; preds = %if.end
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2026
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !2026
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !619, metadata !1313), !dbg !2028
  %20 = load %struct._object*, %struct._object** %statement, align 8, !dbg !2029, !tbaa !1309
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8, !dbg !2028, !tbaa !1309
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2030, !tbaa !1309
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2032
  %22 = load i64, i64* %ob_refcnt13, align 8, !dbg !2033, !tbaa !1370
  %dec = add i64 %22, -1, !dbg !2033
  store i64 %dec, i64* %ob_refcnt13, align 8, !dbg !2033, !tbaa !1370
  %cmp14 = icmp ne i64 %dec, 0, !dbg !2034
  br i1 %cmp14, label %if.then.16, label %if.else.17, !dbg !2035

if.then.16:                                       ; preds = %do.body
  br label %if.end.18, !dbg !2036

if.else.17:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2038, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2040
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2040, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2041
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2041, !tbaa !1447
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2042, !tbaa !1309
  call void %25(%struct._object* %26), !dbg !2043
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2044
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2044
  br label %do.cond, !dbg !2046

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !2047

do.end:                                           ; preds = %do.cond
  br label %if.end.19, !dbg !2049

if.end.19:                                        ; preds = %do.end, %for.body
  br label %for.inc, !dbg !2050

for.inc:                                          ; preds = %if.end.19
  %28 = load i32, i32* %i, align 4, !dbg !2051, !tbaa !1321
  %inc20 = add i32 %28, 1, !dbg !2051
  store i32 %inc20, i32* %i, align 4, !dbg !2051, !tbaa !1321
  br label %for.cond, !dbg !2052

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %reset_cursors.addr, align 4, !dbg !2053, !tbaa !1321
  %tobool = icmp ne i32 %29, 0, !dbg !2053
  br i1 %tobool, label %if.then.21, label %if.end.39, !dbg !2055

if.then.21:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4, !dbg !2056, !tbaa !1321
  br label %for.cond.22, !dbg !2059

for.cond.22:                                      ; preds = %for.inc.36, %if.then.21
  %30 = load i32, i32* %i, align 4, !dbg !2060, !tbaa !1321
  %conv23 = sext i32 %30 to i64, !dbg !2060
  %31 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2064, !tbaa !1309
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %31, i32 0, i32 13, !dbg !2065
  %32 = load %struct._object*, %struct._object** %cursors, align 8, !dbg !2065, !tbaa !1368
  %call24 = call i64 @PyList_Size(%struct._object* %32), !dbg !2066
  %cmp25 = icmp slt i64 %conv23, %call24, !dbg !2067
  br i1 %cmp25, label %for.body.27, label %for.end.38, !dbg !2068

for.body.27:                                      ; preds = %for.cond.22
  %33 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2069, !tbaa !1309
  %cursors28 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %33, i32 0, i32 13, !dbg !2071
  %34 = load %struct._object*, %struct._object** %cursors28, align 8, !dbg !2071, !tbaa !1368
  %35 = load i32, i32* %i, align 4, !dbg !2072, !tbaa !1321
  %conv29 = sext i32 %35 to i64, !dbg !2072
  %call30 = call %struct._object* @PyList_GetItem(%struct._object* %34, i64 %conv29), !dbg !2073
  store %struct._object* %call30, %struct._object** %weakref, align 8, !dbg !2074, !tbaa !1309
  %36 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2075, !tbaa !1309
  %call31 = call %struct._object* @PyWeakref_GetObject(%struct._object* %36), !dbg !2076
  %37 = bitcast %struct._object* %call31 to %struct.pysqlite_Cursor*, !dbg !2077
  store %struct.pysqlite_Cursor* %37, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !2078, !tbaa !1309
  %38 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !2079, !tbaa !1309
  %39 = bitcast %struct.pysqlite_Cursor* %38 to %struct._object*, !dbg !2081
  %cmp32 = icmp ne %struct._object* %39, @_Py_NoneStruct, !dbg !2082
  br i1 %cmp32, label %if.then.34, label %if.end.35, !dbg !2083

if.then.34:                                       ; preds = %for.body.27
  %40 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8, !dbg !2084, !tbaa !1309
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %40, i32 0, i32 10, !dbg !2086
  store i32 1, i32* %reset, align 4, !dbg !2087, !tbaa !2088
  br label %if.end.35, !dbg !2090

if.end.35:                                        ; preds = %if.then.34, %for.body.27
  br label %for.inc.36, !dbg !2091

for.inc.36:                                       ; preds = %if.end.35
  %41 = load i32, i32* %i, align 4, !dbg !2092, !tbaa !1321
  %inc37 = add i32 %41, 1, !dbg !2092
  store i32 %inc37, i32* %i, align 4, !dbg !2092, !tbaa !1321
  br label %for.cond.22, !dbg !2093

for.end.38:                                       ; preds = %for.cond.22
  br label %if.end.39, !dbg !2094

if.end.39:                                        ; preds = %for.end.38, %for.end
  %42 = bitcast %struct.pysqlite_Cursor** %cursor to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !2095
  %43 = bitcast %struct._object** %statement to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !2095
  %44 = bitcast %struct._object** %weakref to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !2095
  %45 = bitcast i32* %i to i8*, !dbg !2095
  call void @llvm.lifetime.end(i64 4, i8* %45) #2, !dbg !2095
  ret void, !dbg !2095
}

declare i64 @PyList_Size(%struct._object*) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyWeakref_GetObject(%struct._object*) #3

declare i32 @pysqlite_statement_reset(%struct.pysqlite_Statement*) #3

; Function Attrs: nounwind uwtable
define void @pysqlite_connection_dealloc(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_xdecref_tmp54 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_xdecref_tmp92 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_xdecref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_xdecref_tmp130 = alloca %struct._object*, align 8
  %_py_decref_tmp134 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !628, metadata !1313), !dbg !2096
  br label %do.body, !dbg !2097

do.body:                                          ; preds = %entry
  %0 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2098
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !629, metadata !1313), !dbg !2100
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2101, !tbaa !1309
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 11, !dbg !2102
  %2 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8, !dbg !2102, !tbaa !1360
  %3 = bitcast %struct.pysqlite_Cache* %2 to %struct._object*, !dbg !2103
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2100, !tbaa !1309
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2104, !tbaa !1309
  %cmp = icmp ne %struct._object* %4, null, !dbg !2105
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !2106

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !2107

do.body.1:                                        ; preds = %if.then
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2109
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !631, metadata !1313), !dbg !2111
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2112, !tbaa !1309
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !2111, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2113, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !2115
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2116, !tbaa !1370
  %dec = add i64 %8, -1, !dbg !2116
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2116, !tbaa !1370
  %cmp2 = icmp ne i64 %dec, 0, !dbg !2117
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2118

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !2119

if.else:                                          ; preds = %do.body.1
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2121, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !2123
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2123, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !2124
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2124, !tbaa !1447
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2125, !tbaa !1309
  call void %11(%struct._object* %12), !dbg !2126
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2127
  call void @llvm.lifetime.end(i64 8, i8* %13) #2, !dbg !2127
  br label %do.cond, !dbg !2129

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2130

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !2132

if.end.4:                                         ; preds = %do.end, %do.body
  %14 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2134
  call void @llvm.lifetime.end(i64 8, i8* %14) #2, !dbg !2134
  br label %do.end.6, !dbg !2137

do.end.6:                                         ; preds = %if.end.4
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2138, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 1, !dbg !2139
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2139, !tbaa !1401
  %tobool = icmp ne %struct.sqlite3* %16, null, !dbg !2138
  br i1 %tobool, label %if.then.7, label %if.end.10, !dbg !2140

if.then.7:                                        ; preds = %do.end.6
  %17 = bitcast %struct._ts** %_save to i8*, !dbg !2141
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !634, metadata !1313), !dbg !2142
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2143
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2144, !tbaa !1309
  %18 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2145, !tbaa !1309
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %18, i32 0, i32 1, !dbg !2146
  %19 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8, !dbg !2146, !tbaa !1401
  %call9 = call i32 @sqlite3_close(%struct.sqlite3* %19), !dbg !2147
  %20 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2148, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %20), !dbg !2149
  %21 = bitcast %struct._ts** %_save to i8*, !dbg !2150
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !2150
  br label %if.end.10, !dbg !2151

if.end.10:                                        ; preds = %if.then.7, %do.end.6
  %22 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2152, !tbaa !1309
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %22, i32 0, i32 7, !dbg !2154
  %23 = load i8*, i8** %begin_statement, align 8, !dbg !2154, !tbaa !1356
  %tobool11 = icmp ne i8* %23, null, !dbg !2152
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !2155

if.then.12:                                       ; preds = %if.end.10
  %24 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2156, !tbaa !1309
  %begin_statement13 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %24, i32 0, i32 7, !dbg !2158
  %25 = load i8*, i8** %begin_statement13, align 8, !dbg !2158, !tbaa !1356
  call void @PyMem_Free(i8* %25), !dbg !2159
  br label %if.end.14, !dbg !2160

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  br label %do.body.15, !dbg !2161

do.body.15:                                       ; preds = %if.end.14
  %26 = bitcast %struct._object** %_py_xdecref_tmp16 to i8*, !dbg !2162
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !2162
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp16, metadata !638, metadata !1313), !dbg !2164
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2165, !tbaa !1309
  %isolation_level = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 6, !dbg !2166
  %28 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !2166, !tbaa !1423
  store %struct._object* %28, %struct._object** %_py_xdecref_tmp16, align 8, !dbg !2164, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8, !dbg !2167, !tbaa !1309
  %cmp17 = icmp ne %struct._object* %29, null, !dbg !2168
  br i1 %cmp17, label %if.then.18, label %if.end.31, !dbg !2169

if.then.18:                                       ; preds = %do.body.15
  br label %do.body.19, !dbg !2170

do.body.19:                                       ; preds = %if.then.18
  %30 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2172
  call void @llvm.lifetime.start(i64 8, i8* %30) #2, !dbg !2172
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp20, metadata !640, metadata !1313), !dbg !2174
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp16, align 8, !dbg !2175, !tbaa !1309
  store %struct._object* %31, %struct._object** %_py_decref_tmp20, align 8, !dbg !2174, !tbaa !1309
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2176, !tbaa !1309
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2178
  %33 = load i64, i64* %ob_refcnt21, align 8, !dbg !2179, !tbaa !1370
  %dec22 = add i64 %33, -1, !dbg !2179
  store i64 %dec22, i64* %ob_refcnt21, align 8, !dbg !2179, !tbaa !1370
  %cmp23 = icmp ne i64 %dec22, 0, !dbg !2180
  br i1 %cmp23, label %if.then.24, label %if.else.25, !dbg !2181

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28, !dbg !2182

if.else.25:                                       ; preds = %do.body.19
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2184, !tbaa !1309
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !2186
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8, !dbg !2186, !tbaa !1445
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !2187
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8, !dbg !2187, !tbaa !1447
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8, !dbg !2188, !tbaa !1309
  call void %36(%struct._object* %37), !dbg !2189
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %38 = bitcast %struct._object** %_py_decref_tmp20 to i8*, !dbg !2190
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !2190
  br label %do.cond.29, !dbg !2192

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30, !dbg !2193

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31, !dbg !2195

if.end.31:                                        ; preds = %do.end.30, %do.body.15
  %39 = bitcast %struct._object** %_py_xdecref_tmp16 to i8*, !dbg !2197
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !2197
  br label %do.end.33, !dbg !2198

do.end.33:                                        ; preds = %if.end.31
  br label %do.body.34, !dbg !2199

do.body.34:                                       ; preds = %do.end.33
  %40 = bitcast %struct._object** %_py_xdecref_tmp35 to i8*, !dbg !2200
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !2200
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp35, metadata !643, metadata !1313), !dbg !2202
  %41 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2203, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %41, i32 0, i32 18, !dbg !2204
  %42 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !2204, !tbaa !1585
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp35, align 8, !dbg !2202, !tbaa !1309
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8, !dbg !2205, !tbaa !1309
  %cmp36 = icmp ne %struct._object* %43, null, !dbg !2206
  br i1 %cmp36, label %if.then.37, label %if.end.50, !dbg !2207

if.then.37:                                       ; preds = %do.body.34
  br label %do.body.38, !dbg !2208

do.body.38:                                       ; preds = %if.then.37
  %44 = bitcast %struct._object** %_py_decref_tmp39 to i8*, !dbg !2210
  call void @llvm.lifetime.start(i64 8, i8* %44) #2, !dbg !2210
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp39, metadata !645, metadata !1313), !dbg !2212
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8, !dbg !2213, !tbaa !1309
  store %struct._object* %45, %struct._object** %_py_decref_tmp39, align 8, !dbg !2212, !tbaa !1309
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !2214, !tbaa !1309
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !2216
  %47 = load i64, i64* %ob_refcnt40, align 8, !dbg !2217, !tbaa !1370
  %dec41 = add i64 %47, -1, !dbg !2217
  store i64 %dec41, i64* %ob_refcnt40, align 8, !dbg !2217, !tbaa !1370
  %cmp42 = icmp ne i64 %dec41, 0, !dbg !2218
  br i1 %cmp42, label %if.then.43, label %if.else.44, !dbg !2219

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47, !dbg !2220

if.else.44:                                       ; preds = %do.body.38
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !2222, !tbaa !1309
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !2224
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !2224, !tbaa !1445
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !2225
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8, !dbg !2225, !tbaa !1447
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8, !dbg !2226, !tbaa !1309
  call void %50(%struct._object* %51), !dbg !2227
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  %52 = bitcast %struct._object** %_py_decref_tmp39 to i8*, !dbg !2228
  call void @llvm.lifetime.end(i64 8, i8* %52) #2, !dbg !2228
  br label %do.cond.48, !dbg !2230

do.cond.48:                                       ; preds = %if.end.47
  br label %do.end.49, !dbg !2231

do.end.49:                                        ; preds = %do.cond.48
  br label %if.end.50, !dbg !2233

if.end.50:                                        ; preds = %do.end.49, %do.body.34
  %53 = bitcast %struct._object** %_py_xdecref_tmp35 to i8*, !dbg !2235
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !2235
  br label %do.end.52, !dbg !2236

do.end.52:                                        ; preds = %if.end.50
  br label %do.body.53, !dbg !2237

do.body.53:                                       ; preds = %do.end.52
  %54 = bitcast %struct._object** %_py_xdecref_tmp54 to i8*, !dbg !2238
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !2238
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp54, metadata !648, metadata !1313), !dbg !2240
  %55 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2241, !tbaa !1309
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %55, i32 0, i32 16, !dbg !2242
  %56 = load %struct._object*, %struct._object** %row_factory, align 8, !dbg !2242, !tbaa !1374
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp54, align 8, !dbg !2240, !tbaa !1309
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp54, align 8, !dbg !2243, !tbaa !1309
  %cmp55 = icmp ne %struct._object* %57, null, !dbg !2244
  br i1 %cmp55, label %if.then.56, label %if.end.69, !dbg !2245

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57, !dbg !2246

do.body.57:                                       ; preds = %if.then.56
  %58 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2248
  call void @llvm.lifetime.start(i64 8, i8* %58) #2, !dbg !2248
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !650, metadata !1313), !dbg !2250
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp54, align 8, !dbg !2251, !tbaa !1309
  store %struct._object* %59, %struct._object** %_py_decref_tmp58, align 8, !dbg !2250, !tbaa !1309
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2252, !tbaa !1309
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !2254
  %61 = load i64, i64* %ob_refcnt59, align 8, !dbg !2255, !tbaa !1370
  %dec60 = add i64 %61, -1, !dbg !2255
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !2255, !tbaa !1370
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !2256
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !2257

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !2258

if.else.63:                                       ; preds = %do.body.57
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2260, !tbaa !1309
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !2262
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2262, !tbaa !1445
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !2263
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2263, !tbaa !1447
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !2264, !tbaa !1309
  call void %64(%struct._object* %65), !dbg !2265
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %66 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !2266
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !2266
  br label %do.cond.67, !dbg !2268

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !2269

do.end.68:                                        ; preds = %do.cond.67
  br label %if.end.69, !dbg !2271

if.end.69:                                        ; preds = %do.end.68, %do.body.53
  %67 = bitcast %struct._object** %_py_xdecref_tmp54 to i8*, !dbg !2273
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !2273
  br label %do.end.71, !dbg !2274

do.end.71:                                        ; preds = %if.end.69
  br label %do.body.72, !dbg !2275

do.body.72:                                       ; preds = %do.end.71
  %68 = bitcast %struct._object** %_py_xdecref_tmp73 to i8*, !dbg !2276
  call void @llvm.lifetime.start(i64 8, i8* %68) #2, !dbg !2276
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp73, metadata !653, metadata !1313), !dbg !2278
  %69 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2279, !tbaa !1309
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %69, i32 0, i32 17, !dbg !2280
  %70 = load %struct._object*, %struct._object** %text_factory, align 8, !dbg !2280, !tbaa !1379
  store %struct._object* %70, %struct._object** %_py_xdecref_tmp73, align 8, !dbg !2278, !tbaa !1309
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8, !dbg !2281, !tbaa !1309
  %cmp74 = icmp ne %struct._object* %71, null, !dbg !2282
  br i1 %cmp74, label %if.then.75, label %if.end.88, !dbg !2283

if.then.75:                                       ; preds = %do.body.72
  br label %do.body.76, !dbg !2284

do.body.76:                                       ; preds = %if.then.75
  %72 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2286
  call void @llvm.lifetime.start(i64 8, i8* %72) #2, !dbg !2286
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp77, metadata !655, metadata !1313), !dbg !2288
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8, !dbg !2289, !tbaa !1309
  store %struct._object* %73, %struct._object** %_py_decref_tmp77, align 8, !dbg !2288, !tbaa !1309
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2290, !tbaa !1309
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !2292
  %75 = load i64, i64* %ob_refcnt78, align 8, !dbg !2293, !tbaa !1370
  %dec79 = add i64 %75, -1, !dbg !2293
  store i64 %dec79, i64* %ob_refcnt78, align 8, !dbg !2293, !tbaa !1370
  %cmp80 = icmp ne i64 %dec79, 0, !dbg !2294
  br i1 %cmp80, label %if.then.81, label %if.else.82, !dbg !2295

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85, !dbg !2296

if.else.82:                                       ; preds = %do.body.76
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2298, !tbaa !1309
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !2300
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8, !dbg !2300, !tbaa !1445
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !2301
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8, !dbg !2301, !tbaa !1447
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8, !dbg !2302, !tbaa !1309
  call void %78(%struct._object* %79), !dbg !2303
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  %80 = bitcast %struct._object** %_py_decref_tmp77 to i8*, !dbg !2304
  call void @llvm.lifetime.end(i64 8, i8* %80) #2, !dbg !2304
  br label %do.cond.86, !dbg !2306

do.cond.86:                                       ; preds = %if.end.85
  br label %do.end.87, !dbg !2307

do.end.87:                                        ; preds = %do.cond.86
  br label %if.end.88, !dbg !2309

if.end.88:                                        ; preds = %do.end.87, %do.body.72
  %81 = bitcast %struct._object** %_py_xdecref_tmp73 to i8*, !dbg !2311
  call void @llvm.lifetime.end(i64 8, i8* %81) #2, !dbg !2311
  br label %do.end.90, !dbg !2312

do.end.90:                                        ; preds = %if.end.88
  br label %do.body.91, !dbg !2313

do.body.91:                                       ; preds = %do.end.90
  %82 = bitcast %struct._object** %_py_xdecref_tmp92 to i8*, !dbg !2314
  call void @llvm.lifetime.start(i64 8, i8* %82) #2, !dbg !2314
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp92, metadata !658, metadata !1313), !dbg !2316
  %83 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2317, !tbaa !1309
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %83, i32 0, i32 19, !dbg !2318
  %84 = load %struct._object*, %struct._object** %collations, align 8, !dbg !2318, !tbaa !1596
  store %struct._object* %84, %struct._object** %_py_xdecref_tmp92, align 8, !dbg !2316, !tbaa !1309
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp92, align 8, !dbg !2319, !tbaa !1309
  %cmp93 = icmp ne %struct._object* %85, null, !dbg !2320
  br i1 %cmp93, label %if.then.94, label %if.end.107, !dbg !2321

if.then.94:                                       ; preds = %do.body.91
  br label %do.body.95, !dbg !2322

do.body.95:                                       ; preds = %if.then.94
  %86 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !2324
  call void @llvm.lifetime.start(i64 8, i8* %86) #2, !dbg !2324
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp96, metadata !660, metadata !1313), !dbg !2326
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp92, align 8, !dbg !2327, !tbaa !1309
  store %struct._object* %87, %struct._object** %_py_decref_tmp96, align 8, !dbg !2326, !tbaa !1309
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2328, !tbaa !1309
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0, !dbg !2330
  %89 = load i64, i64* %ob_refcnt97, align 8, !dbg !2331, !tbaa !1370
  %dec98 = add i64 %89, -1, !dbg !2331
  store i64 %dec98, i64* %ob_refcnt97, align 8, !dbg !2331, !tbaa !1370
  %cmp99 = icmp ne i64 %dec98, 0, !dbg !2332
  br i1 %cmp99, label %if.then.100, label %if.else.101, !dbg !2333

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104, !dbg !2334

if.else.101:                                      ; preds = %do.body.95
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2336, !tbaa !1309
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1, !dbg !2338
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !2338, !tbaa !1445
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4, !dbg !2339
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !2339, !tbaa !1447
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2340, !tbaa !1309
  call void %92(%struct._object* %93), !dbg !2341
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %94 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !2342
  call void @llvm.lifetime.end(i64 8, i8* %94) #2, !dbg !2342
  br label %do.cond.105, !dbg !2344

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !2345

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107, !dbg !2347

if.end.107:                                       ; preds = %do.end.106, %do.body.91
  %95 = bitcast %struct._object** %_py_xdecref_tmp92 to i8*, !dbg !2349
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !2349
  br label %do.end.109, !dbg !2350

do.end.109:                                       ; preds = %if.end.107
  br label %do.body.110, !dbg !2351

do.body.110:                                      ; preds = %do.end.109
  %96 = bitcast %struct._object** %_py_xdecref_tmp111 to i8*, !dbg !2352
  call void @llvm.lifetime.start(i64 8, i8* %96) #2, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp111, metadata !663, metadata !1313), !dbg !2354
  %97 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2355, !tbaa !1309
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %97, i32 0, i32 12, !dbg !2356
  %98 = load %struct._object*, %struct._object** %statements, align 8, !dbg !2356, !tbaa !1364
  store %struct._object* %98, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2354, !tbaa !1309
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2357, !tbaa !1309
  %cmp112 = icmp ne %struct._object* %99, null, !dbg !2358
  br i1 %cmp112, label %if.then.113, label %if.end.126, !dbg !2359

if.then.113:                                      ; preds = %do.body.110
  br label %do.body.114, !dbg !2360

do.body.114:                                      ; preds = %if.then.113
  %100 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2362
  call void @llvm.lifetime.start(i64 8, i8* %100) #2, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !665, metadata !1313), !dbg !2364
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2365, !tbaa !1309
  store %struct._object* %101, %struct._object** %_py_decref_tmp115, align 8, !dbg !2364, !tbaa !1309
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2366, !tbaa !1309
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0, !dbg !2368
  %103 = load i64, i64* %ob_refcnt116, align 8, !dbg !2369, !tbaa !1370
  %dec117 = add i64 %103, -1, !dbg !2369
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2369, !tbaa !1370
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !2370
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !2371

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123, !dbg !2372

if.else.120:                                      ; preds = %do.body.114
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2374, !tbaa !1309
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1, !dbg !2376
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !2376, !tbaa !1445
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4, !dbg !2377
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !2377, !tbaa !1447
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2378, !tbaa !1309
  call void %106(%struct._object* %107), !dbg !2379
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %108 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2380
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !2380
  br label %do.cond.124, !dbg !2382

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !2383

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126, !dbg !2385

if.end.126:                                       ; preds = %do.end.125, %do.body.110
  %109 = bitcast %struct._object** %_py_xdecref_tmp111 to i8*, !dbg !2387
  call void @llvm.lifetime.end(i64 8, i8* %109) #2, !dbg !2387
  br label %do.end.128, !dbg !2388

do.end.128:                                       ; preds = %if.end.126
  br label %do.body.129, !dbg !2389

do.body.129:                                      ; preds = %do.end.128
  %110 = bitcast %struct._object** %_py_xdecref_tmp130 to i8*, !dbg !2390
  call void @llvm.lifetime.start(i64 8, i8* %110) #2, !dbg !2390
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp130, metadata !668, metadata !1313), !dbg !2392
  %111 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2393, !tbaa !1309
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %111, i32 0, i32 13, !dbg !2394
  %112 = load %struct._object*, %struct._object** %cursors, align 8, !dbg !2394, !tbaa !1368
  store %struct._object* %112, %struct._object** %_py_xdecref_tmp130, align 8, !dbg !2392, !tbaa !1309
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8, !dbg !2395, !tbaa !1309
  %cmp131 = icmp ne %struct._object* %113, null, !dbg !2396
  br i1 %cmp131, label %if.then.132, label %if.end.145, !dbg !2397

if.then.132:                                      ; preds = %do.body.129
  br label %do.body.133, !dbg !2398

do.body.133:                                      ; preds = %if.then.132
  %114 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !2400
  call void @llvm.lifetime.start(i64 8, i8* %114) #2, !dbg !2400
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp134, metadata !670, metadata !1313), !dbg !2402
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8, !dbg !2403, !tbaa !1309
  store %struct._object* %115, %struct._object** %_py_decref_tmp134, align 8, !dbg !2402, !tbaa !1309
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2404, !tbaa !1309
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !2406
  %117 = load i64, i64* %ob_refcnt135, align 8, !dbg !2407, !tbaa !1370
  %dec136 = add i64 %117, -1, !dbg !2407
  store i64 %dec136, i64* %ob_refcnt135, align 8, !dbg !2407, !tbaa !1370
  %cmp137 = icmp ne i64 %dec136, 0, !dbg !2408
  br i1 %cmp137, label %if.then.138, label %if.else.139, !dbg !2409

if.then.138:                                      ; preds = %do.body.133
  br label %if.end.142, !dbg !2410

if.else.139:                                      ; preds = %do.body.133
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2412, !tbaa !1309
  %ob_type140 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !2414
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type140, align 8, !dbg !2414, !tbaa !1445
  %tp_dealloc141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !2415
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc141, align 8, !dbg !2415, !tbaa !1447
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp134, align 8, !dbg !2416, !tbaa !1309
  call void %120(%struct._object* %121), !dbg !2417
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.then.138
  %122 = bitcast %struct._object** %_py_decref_tmp134 to i8*, !dbg !2418
  call void @llvm.lifetime.end(i64 8, i8* %122) #2, !dbg !2418
  br label %do.cond.143, !dbg !2420

do.cond.143:                                      ; preds = %if.end.142
  br label %do.end.144, !dbg !2421

do.end.144:                                       ; preds = %do.cond.143
  br label %if.end.145, !dbg !2423

if.end.145:                                       ; preds = %do.end.144, %do.body.129
  %123 = bitcast %struct._object** %_py_xdecref_tmp130 to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %123) #2, !dbg !2425
  br label %do.end.147, !dbg !2426

do.end.147:                                       ; preds = %if.end.145
  %124 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2427, !tbaa !1309
  %125 = bitcast %struct.pysqlite_Connection* %124 to %struct._object*, !dbg !2428
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 1, !dbg !2429
  %126 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8, !dbg !2429, !tbaa !1445
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %126, i32 0, i32 38, !dbg !2430
  %127 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2430, !tbaa !2431
  %128 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2432, !tbaa !1309
  %129 = bitcast %struct.pysqlite_Connection* %128 to %struct._object*, !dbg !2433
  %130 = bitcast %struct._object* %129 to i8*, !dbg !2433
  call void %127(i8* %130), !dbg !2434
  ret void, !dbg !2435
}

declare i32 @sqlite3_close(%struct.sqlite3*) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection* %connection, %struct._object* %cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.pysqlite_Connection*, align 8
  %cursor.addr = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %connection.addr, metadata !677, metadata !1313), !dbg !2436
  store %struct._object* %cursor, %struct._object** %cursor.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %cursor.addr, metadata !678, metadata !1313), !dbg !2437
  %0 = bitcast %struct._object** %weakref to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct._object** %weakref, metadata !679, metadata !1313), !dbg !2439
  %1 = load %struct._object*, %struct._object** %cursor.addr, align 8, !dbg !2440, !tbaa !1309
  %call = call %struct._object* @PyWeakref_NewRef(%struct._object* %1, %struct._object* null), !dbg !2441
  store %struct._object* %call, %struct._object** %weakref, align 8, !dbg !2442, !tbaa !1309
  %2 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2443, !tbaa !1309
  %tobool = icmp ne %struct._object* %2, null, !dbg !2443
  br i1 %tobool, label %if.end, label %if.then, !dbg !2445

if.then:                                          ; preds = %entry
  br label %error, !dbg !2446

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8, !dbg !2448, !tbaa !1309
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 13, !dbg !2449
  %4 = load %struct._object*, %struct._object** %cursors, align 8, !dbg !2449, !tbaa !1368
  %5 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2450, !tbaa !1309
  %call1 = call i32 @PyList_Append(%struct._object* %4, %struct._object* %5), !dbg !2451
  %cmp = icmp ne i32 %call1, 0, !dbg !2452
  br i1 %cmp, label %if.then.2, label %if.end.12, !dbg !2453

if.then.2:                                        ; preds = %if.end
  br label %do.body, !dbg !2454

do.body:                                          ; preds = %if.then.2
  %6 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2455
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !680, metadata !1313), !dbg !2457
  %7 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2458, !tbaa !1309
  store %struct._object* %7, %struct._object** %_py_tmp, align 8, !dbg !2457, !tbaa !1309
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2459, !tbaa !1309
  %cmp3 = icmp ne %struct._object* %8, null, !dbg !2460
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !2461

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %weakref, align 8, !dbg !2462, !tbaa !1309
  br label %do.body.5, !dbg !2464

do.body.5:                                        ; preds = %if.then.4
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2465
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !2465
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !684, metadata !1313), !dbg !2467
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2468, !tbaa !1309
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !2467, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2469, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2471
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2472, !tbaa !1370
  %dec = add i64 %12, -1, !dbg !2472
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2472, !tbaa !1370
  %cmp6 = icmp ne i64 %dec, 0, !dbg !2473
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !2474

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !2475

if.else:                                          ; preds = %do.body.5
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2477, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2479
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2479, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !2480
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2480, !tbaa !1447
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2481, !tbaa !1309
  call void %15(%struct._object* %16), !dbg !2482
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2483
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !2483
  br label %do.cond, !dbg !2485

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !2486

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !2488

if.end.9:                                         ; preds = %do.end, %do.body
  %18 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2490
  call void @llvm.lifetime.end(i64 8, i8* %18) #2, !dbg !2490
  br label %do.cond.10, !dbg !2493

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !2494

do.end.11:                                        ; preds = %do.cond.10
  br label %error, !dbg !2496

if.end.12:                                        ; preds = %if.end
  br label %do.body.13, !dbg !2497

do.body.13:                                       ; preds = %if.end.12
  %19 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2498
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !2498
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !688, metadata !1313), !dbg !2500
  %20 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2501, !tbaa !1309
  store %struct._object* %20, %struct._object** %_py_decref_tmp14, align 8, !dbg !2500, !tbaa !1309
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2502, !tbaa !1309
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2504
  %22 = load i64, i64* %ob_refcnt15, align 8, !dbg !2505, !tbaa !1370
  %dec16 = add i64 %22, -1, !dbg !2505
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2505, !tbaa !1370
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2506
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2507

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !2508

if.else.19:                                       ; preds = %do.body.13
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2510, !tbaa !1309
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !2512
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2512, !tbaa !1445
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !2513
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2513, !tbaa !1447
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2514, !tbaa !1309
  call void %25(%struct._object* %26), !dbg !2515
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %27 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2516
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2516
  br label %do.cond.23, !dbg !2518

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2519

do.end.24:                                        ; preds = %do.cond.23
  store i32 1, i32* %retval, !dbg !2521
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2521

error:                                            ; preds = %do.end.11, %if.then
  store i32 0, i32* %retval, !dbg !2522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2522

cleanup:                                          ; preds = %error, %do.end.24
  %28 = bitcast %struct._object** %weakref to i8*, !dbg !2523
  call void @llvm.lifetime.end(i64 8, i8* %28) #2, !dbg !2523
  %29 = load i32, i32* %retval, !dbg !2523
  ret i32 %29, !dbg !2523
}

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_cursor(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %cursor = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !694, metadata !1313), !dbg !2524
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !695, metadata !1313), !dbg !2525
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !696, metadata !1313), !dbg !2526
  %0 = bitcast %struct._object** %factory to i8*, !dbg !2527
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct._object** %factory, metadata !697, metadata !1313), !dbg !2528
  store %struct._object* null, %struct._object** %factory, align 8, !dbg !2528, !tbaa !1309
  %1 = bitcast %struct._object** %cursor to i8*, !dbg !2529
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2529
  call void @llvm.dbg.declare(metadata %struct._object** %cursor, metadata !698, metadata !1313), !dbg !2530
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2531, !tbaa !1309
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !2533, !tbaa !1309
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_connection_cursor.kwlist, i32 0, i32 0), %struct._object** %factory), !dbg !2534
  %tobool = icmp ne i32 %call, 0, !dbg !2534
  br i1 %tobool, label %if.end, label %if.then, !dbg !2535

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2536
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2536

if.end:                                           ; preds = %entry
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2538, !tbaa !1309
  %call1 = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %4), !dbg !2540
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2540
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5, !dbg !2541

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2542, !tbaa !1309
  %call3 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %5), !dbg !2544
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2544
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !2545

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2546
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2546

if.end.6:                                         ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %factory, align 8, !dbg !2548, !tbaa !1309
  %cmp = icmp eq %struct._object* %6, null, !dbg !2550
  br i1 %cmp, label %if.then.7, label %if.end.8, !dbg !2551

if.then.7:                                        ; preds = %if.end.6
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0), %struct._object** %factory, align 8, !dbg !2552, !tbaa !1309
  br label %if.end.8, !dbg !2554

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  %7 = load %struct._object*, %struct._object** %factory, align 8, !dbg !2555, !tbaa !1309
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2556, !tbaa !1309
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.pysqlite_Connection* %8), !dbg !2557
  store %struct._object* %call9, %struct._object** %cursor, align 8, !dbg !2558, !tbaa !1309
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2559, !tbaa !1309
  call void @_pysqlite_drop_unused_cursor_references(%struct.pysqlite_Connection* %9), !dbg !2560
  %10 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !2561, !tbaa !1309
  %tobool10 = icmp ne %struct._object* %10, null, !dbg !2561
  br i1 %tobool10, label %land.lhs.true, label %if.end.27, !dbg !2562

land.lhs.true:                                    ; preds = %if.end.8
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2563, !tbaa !1309
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 16, !dbg !2565
  %12 = load %struct._object*, %struct._object** %row_factory, align 8, !dbg !2565, !tbaa !1374
  %cmp11 = icmp ne %struct._object* %12, @_Py_NoneStruct, !dbg !2566
  br i1 %cmp11, label %if.then.12, label %if.end.27, !dbg !2567

if.then.12:                                       ; preds = %land.lhs.true
  br label %do.body, !dbg !2568

do.body:                                          ; preds = %if.then.12
  %13 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2569
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !699, metadata !1313), !dbg !2571
  %14 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !2572, !tbaa !1309
  %15 = bitcast %struct._object* %14 to %struct.pysqlite_Cursor*, !dbg !2573
  %row_factory13 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %15, i32 0, i32 7, !dbg !2574
  %16 = load %struct._object*, %struct._object** %row_factory13, align 8, !dbg !2574, !tbaa !2575
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2571, !tbaa !1309
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2576, !tbaa !1309
  %cmp14 = icmp ne %struct._object* %17, null, !dbg !2577
  br i1 %cmp14, label %if.then.15, label %if.end.20, !dbg !2578

if.then.15:                                       ; preds = %do.body
  br label %do.body.16, !dbg !2579

do.body.16:                                       ; preds = %if.then.15
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2581
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !2581
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !703, metadata !1313), !dbg !2583
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2584, !tbaa !1309
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !2583, !tbaa !1309
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2585, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !2587
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !2588, !tbaa !1370
  %dec = add i64 %21, -1, !dbg !2588
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2588, !tbaa !1370
  %cmp17 = icmp ne i64 %dec, 0, !dbg !2589
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !2590

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19, !dbg !2591

if.else:                                          ; preds = %do.body.16
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2593, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !2595
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2595, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !2596
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2596, !tbaa !1447
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2597, !tbaa !1309
  call void %24(%struct._object* %25), !dbg !2598
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2599
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2599
  br label %do.cond, !dbg !2601

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !2602

do.end:                                           ; preds = %do.cond
  br label %if.end.20, !dbg !2604

if.end.20:                                        ; preds = %do.end, %do.body
  %27 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2606
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !2606
  br label %do.cond.21, !dbg !2609

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !2610

do.end.22:                                        ; preds = %do.cond.21
  %28 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2612, !tbaa !1309
  %row_factory23 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %28, i32 0, i32 16, !dbg !2613
  %29 = load %struct._object*, %struct._object** %row_factory23, align 8, !dbg !2613, !tbaa !1374
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2614
  %30 = load i64, i64* %ob_refcnt24, align 8, !dbg !2615, !tbaa !1370
  %inc = add i64 %30, 1, !dbg !2615
  store i64 %inc, i64* %ob_refcnt24, align 8, !dbg !2615, !tbaa !1370
  %31 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2616, !tbaa !1309
  %row_factory25 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %31, i32 0, i32 16, !dbg !2617
  %32 = load %struct._object*, %struct._object** %row_factory25, align 8, !dbg !2617, !tbaa !1374
  %33 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !2618, !tbaa !1309
  %34 = bitcast %struct._object* %33 to %struct.pysqlite_Cursor*, !dbg !2619
  %row_factory26 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %34, i32 0, i32 7, !dbg !2620
  store %struct._object* %32, %struct._object** %row_factory26, align 8, !dbg !2621, !tbaa !2575
  br label %if.end.27, !dbg !2622

if.end.27:                                        ; preds = %do.end.22, %land.lhs.true, %if.end.8
  %35 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !2623, !tbaa !1309
  store %struct._object* %35, %struct._object** %retval, !dbg !2624
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2624

cleanup:                                          ; preds = %if.end.27, %if.then.5, %if.then
  %36 = bitcast %struct._object** %cursor to i8*, !dbg !2625
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !2625
  %37 = bitcast %struct._object** %factory to i8*, !dbg !2625
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !2625
  %38 = load %struct._object*, %struct._object** %retval, !dbg !2625
  ret %struct._object* %38, !dbg !2625
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !847, metadata !1313), !dbg !2626
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2627, !tbaa !1309
  %check_same_thread = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 8, !dbg !2629
  %1 = load i32, i32* %check_same_thread, align 4, !dbg !2629, !tbaa !1580
  %tobool = icmp ne i32 %1, 0, !dbg !2627
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !2630

if.then:                                          ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident(), !dbg !2631
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2634, !tbaa !1309
  %thread_ident = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 10, !dbg !2635
  %3 = load i64, i64* %thread_ident, align 8, !dbg !2635, !tbaa !1575
  %cmp = icmp ne i64 %call, %3, !dbg !2636
  br i1 %cmp, label %if.then.1, label %if.end, !dbg !2637

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !2638, !tbaa !1309
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2640, !tbaa !1309
  %thread_ident2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 10, !dbg !2641
  %6 = load i64, i64* %thread_ident2, align 8, !dbg !2641, !tbaa !1575
  %call3 = call i64 @PyThread_get_thread_ident(), !dbg !2642
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.29, i32 0, i32 0), i64 %6, i64 %call3), !dbg !2643
  store i32 0, i32* %retval, !dbg !2644
  br label %return, !dbg !2644

if.end:                                           ; preds = %if.then
  br label %if.end.5, !dbg !2645

if.end.5:                                         ; preds = %if.end, %entry
  store i32 1, i32* %retval, !dbg !2646
  br label %return, !dbg !2646

return:                                           ; preds = %if.end.5, %if.then.1
  %7 = load i32, i32* %retval, !dbg !2647
  ret i32 %7, !dbg !2647
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %con) #0 {
entry:
  %retval = alloca i32, align 4
  %con.addr = alloca %struct.pysqlite_Connection*, align 8
  store %struct.pysqlite_Connection* %con, %struct.pysqlite_Connection** %con.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %con.addr, metadata !721, metadata !1313), !dbg !2648
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %con.addr, align 8, !dbg !2649, !tbaa !1309
  %initialized = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 9, !dbg !2651
  %1 = load i32, i32* %initialized, align 4, !dbg !2651, !tbaa !1349
  %tobool = icmp ne i32 %1, 0, !dbg !2649
  br i1 %tobool, label %if.end, label %if.then, !dbg !2652

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !2653, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)), !dbg !2655
  store i32 0, i32* %retval, !dbg !2656
  br label %return, !dbg !2656

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %con.addr, align 8, !dbg !2657, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 1, !dbg !2659
  %4 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2659, !tbaa !1401
  %tobool1 = icmp ne %struct.sqlite3* %4, null, !dbg !2657
  br i1 %tobool1, label %if.else, label %if.then.2, !dbg !2660

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !2661, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0)), !dbg !2663
  store i32 0, i32* %retval, !dbg !2664
  br label %return, !dbg !2664

if.else:                                          ; preds = %if.end
  store i32 1, i32* %retval, !dbg !2665
  br label %return, !dbg !2665

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %6 = load i32, i32* %retval, !dbg !2667
  ret i32 %6, !dbg !2667
}

; Function Attrs: nounwind uwtable
define internal void @_pysqlite_drop_unused_cursor_references(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %new_list = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1000, metadata !1313), !dbg !2668
  %0 = bitcast %struct._object** %new_list to i8*, !dbg !2669
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2669
  call void @llvm.dbg.declare(metadata %struct._object** %new_list, metadata !1001, metadata !1313), !dbg !2670
  %1 = bitcast %struct._object** %weakref to i8*, !dbg !2671
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2671
  call void @llvm.dbg.declare(metadata %struct._object** %weakref, metadata !1002, metadata !1313), !dbg !2672
  %2 = bitcast i32* %i to i8*, !dbg !2673
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !2673
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1003, metadata !1313), !dbg !2674
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2675, !tbaa !1309
  %created_cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 15, !dbg !2677
  %4 = load i32, i32* %created_cursors, align 4, !dbg !2678, !tbaa !1501
  %inc = add i32 %4, 1, !dbg !2678
  store i32 %inc, i32* %created_cursors, align 4, !dbg !2678, !tbaa !1501
  %cmp = icmp slt i32 %4, 200, !dbg !2679
  br i1 %cmp, label %if.then, label %if.end, !dbg !2680

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2681

if.end:                                           ; preds = %entry
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2683, !tbaa !1309
  %created_cursors1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 15, !dbg !2684
  store i32 0, i32* %created_cursors1, align 4, !dbg !2685, !tbaa !1501
  %call = call %struct._object* @PyList_New(i64 0), !dbg !2686
  store %struct._object* %call, %struct._object** %new_list, align 8, !dbg !2687, !tbaa !1309
  %6 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !2688, !tbaa !1309
  %tobool = icmp ne %struct._object* %6, null, !dbg !2688
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2690

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2691

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2693, !tbaa !1321
  br label %for.cond, !dbg !2694

for.cond:                                         ; preds = %for.inc, %if.end.3
  %7 = load i32, i32* %i, align 4, !dbg !2695, !tbaa !1321
  %conv = sext i32 %7 to i64, !dbg !2695
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2698, !tbaa !1309
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 13, !dbg !2699
  %9 = load %struct._object*, %struct._object** %cursors, align 8, !dbg !2699, !tbaa !1368
  %call4 = call i64 @PyList_Size(%struct._object* %9), !dbg !2700
  %cmp5 = icmp slt i64 %conv, %call4, !dbg !2701
  br i1 %cmp5, label %for.body, label %for.end, !dbg !2702

for.body:                                         ; preds = %for.cond
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2703, !tbaa !1309
  %cursors7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 13, !dbg !2704
  %11 = load %struct._object*, %struct._object** %cursors7, align 8, !dbg !2704, !tbaa !1368
  %12 = load i32, i32* %i, align 4, !dbg !2705, !tbaa !1321
  %conv8 = sext i32 %12 to i64, !dbg !2705
  %call9 = call %struct._object* @PyList_GetItem(%struct._object* %11, i64 %conv8), !dbg !2706
  store %struct._object* %call9, %struct._object** %weakref, align 8, !dbg !2707, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2708, !tbaa !1309
  %call10 = call %struct._object* @PyWeakref_GetObject(%struct._object* %13), !dbg !2709
  %cmp11 = icmp ne %struct._object* %call10, @_Py_NoneStruct, !dbg !2710
  br i1 %cmp11, label %if.then.13, label %if.end.23, !dbg !2711

if.then.13:                                       ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !2712, !tbaa !1309
  %15 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !2713, !tbaa !1309
  %call14 = call i32 @PyList_Append(%struct._object* %14, %struct._object* %15), !dbg !2714
  %cmp15 = icmp ne i32 %call14, 0, !dbg !2715
  br i1 %cmp15, label %if.then.17, label %if.end.22, !dbg !2716

if.then.17:                                       ; preds = %if.then.13
  br label %do.body, !dbg !2717

do.body:                                          ; preds = %if.then.17
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2718
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !2718
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1004, metadata !1313), !dbg !2720
  %17 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !2721, !tbaa !1309
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !2720, !tbaa !1309
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2722, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !2724
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !2725, !tbaa !1370
  %dec = add i64 %19, -1, !dbg !2725
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2725, !tbaa !1370
  %cmp18 = icmp ne i64 %dec, 0, !dbg !2726
  br i1 %cmp18, label %if.then.20, label %if.else, !dbg !2727

if.then.20:                                       ; preds = %do.body
  br label %if.end.21, !dbg !2728

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2730, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !2732
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2732, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !2733
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2733, !tbaa !1447
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2734, !tbaa !1309
  call void %22(%struct._object* %23), !dbg !2735
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2736
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2736
  br label %do.cond, !dbg !2738

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !2739

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2741

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23, !dbg !2742

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc, !dbg !2743

for.inc:                                          ; preds = %if.end.23
  %25 = load i32, i32* %i, align 4, !dbg !2744, !tbaa !1321
  %inc24 = add i32 %25, 1, !dbg !2744
  store i32 %inc24, i32* %i, align 4, !dbg !2744, !tbaa !1321
  br label %for.cond, !dbg !2745

for.end:                                          ; preds = %for.cond
  br label %do.body.25, !dbg !2746

do.body.25:                                       ; preds = %for.end
  %26 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2747
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !1013, metadata !1313), !dbg !2749
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2750, !tbaa !1309
  %cursors27 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 13, !dbg !2751
  %28 = load %struct._object*, %struct._object** %cursors27, align 8, !dbg !2751, !tbaa !1368
  store %struct._object* %28, %struct._object** %_py_decref_tmp26, align 8, !dbg !2749, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2752, !tbaa !1309
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2754
  %30 = load i64, i64* %ob_refcnt28, align 8, !dbg !2755, !tbaa !1370
  %dec29 = add i64 %30, -1, !dbg !2755
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !2755, !tbaa !1370
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !2756
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !2757

if.then.32:                                       ; preds = %do.body.25
  br label %if.end.36, !dbg !2758

if.else.33:                                       ; preds = %do.body.25
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2760, !tbaa !1309
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2762
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !2762, !tbaa !1445
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2763
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !2763, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2764, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !2765
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %35 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2766
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !2766
  br label %do.cond.37, !dbg !2768

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !2769

do.end.38:                                        ; preds = %do.cond.37
  %36 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !2771, !tbaa !1309
  %37 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2772, !tbaa !1309
  %cursors39 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %37, i32 0, i32 13, !dbg !2773
  store %struct._object* %36, %struct._object** %cursors39, align 8, !dbg !2774, !tbaa !1368
  store i32 0, i32* %cleanup.dest.slot, !dbg !2775
  br label %cleanup, !dbg !2775

cleanup:                                          ; preds = %do.end.38, %do.end, %if.then.2, %if.then
  %38 = bitcast i32* %i to i8*, !dbg !2776
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !2776
  %39 = bitcast %struct._object** %weakref to i8*, !dbg !2776
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !2776
  %40 = bitcast %struct._object** %new_list to i8*, !dbg !2776
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !2776
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2775

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_close(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !710, metadata !1313), !dbg !2778
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !711, metadata !1313), !dbg !2779
  %0 = bitcast i32* %rc to i8*, !dbg !2780
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2780
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !712, metadata !1313), !dbg !2781
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2782, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %1), !dbg !2784
  %tobool = icmp ne i32 %call, 0, !dbg !2784
  br i1 %tobool, label %if.end, label %if.then, !dbg !2785

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2786
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2786

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2788, !tbaa !1309
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %2, i32 1, i32 1), !dbg !2789
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2790, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 1, !dbg !2791
  %4 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2791, !tbaa !1401
  %tobool1 = icmp ne %struct.sqlite3* %4, null, !dbg !2790
  br i1 %tobool1, label %if.then.2, label %if.end.11, !dbg !2792

if.then.2:                                        ; preds = %if.end
  %5 = bitcast %struct._ts** %_save to i8*, !dbg !2793
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !2793
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !713, metadata !1313), !dbg !2794
  %call3 = call %struct._ts* @PyEval_SaveThread(), !dbg !2795
  store %struct._ts* %call3, %struct._ts** %_save, align 8, !dbg !2796, !tbaa !1309
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2797, !tbaa !1309
  %db4 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 1, !dbg !2798
  %7 = load %struct.sqlite3*, %struct.sqlite3** %db4, align 8, !dbg !2798, !tbaa !1401
  %call5 = call i32 @sqlite3_close(%struct.sqlite3* %7), !dbg !2799
  store i32 %call5, i32* %rc, align 4, !dbg !2800, !tbaa !1321
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2801, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !2802
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2803
  %10 = load i32, i32* %rc, align 4, !dbg !2804, !tbaa !1321
  %cmp = icmp ne i32 %10, 0, !dbg !2806
  br i1 %cmp, label %if.then.6, label %if.else, !dbg !2807

if.then.6:                                        ; preds = %if.then.2
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2808, !tbaa !1309
  %db7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 1, !dbg !2810
  %12 = load %struct.sqlite3*, %struct.sqlite3** %db7, align 8, !dbg !2810, !tbaa !1401
  %call8 = call i32 @_pysqlite_seterror(%struct.sqlite3* %12, %struct.sqlite3_stmt* null), !dbg !2811
  store %struct._object* null, %struct._object** %retval, !dbg !2812
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2812

if.else:                                          ; preds = %if.then.2
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2813, !tbaa !1309
  %db9 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 1, !dbg !2815
  store %struct.sqlite3* null, %struct.sqlite3** %db9, align 8, !dbg !2816, !tbaa !1401
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %if.end.11, !dbg !2817

if.end.11:                                        ; preds = %if.end.10, %if.end
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2818, !tbaa !1370
  %inc = add i64 %14, 1, !dbg !2818
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2818, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2819
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2819

cleanup:                                          ; preds = %if.end.11, %if.then.6, %if.then
  %15 = bitcast i32* %rc to i8*, !dbg !2820
  call void @llvm.lifetime.end(i64 4, i8* %15) #2, !dbg !2820
  %16 = load %struct._object*, %struct._object** %retval, !dbg !2820
  ret %struct._object* %16, !dbg !2820
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_connection_begin(%struct.pysqlite_Connection* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %rc = alloca i32, align 4
  %tail = alloca i8*, align 8
  %statement = alloca %struct.sqlite3_stmt*, align 8
  %_save = alloca %struct._ts*, align 8
  %_save10 = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !726, metadata !1313), !dbg !2821
  %0 = bitcast i32* %rc to i8*, !dbg !2822
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2822
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !727, metadata !1313), !dbg !2823
  %1 = bitcast i8** %tail to i8*, !dbg !2824
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2824
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !728, metadata !1313), !dbg !2825
  %2 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !2826
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2826
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %statement, metadata !729, metadata !1313), !dbg !2827
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !2828
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2828
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !730, metadata !1313), !dbg !2829
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !2830
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !2831, !tbaa !1309
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2832, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 1, !dbg !2833
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2833, !tbaa !1401
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2834, !tbaa !1309
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 7, !dbg !2835
  %7 = load i8*, i8** %begin_statement, align 8, !dbg !2835, !tbaa !1356
  %call1 = call i32 @sqlite3_prepare(%struct.sqlite3* %5, i8* %7, i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail), !dbg !2836
  store i32 %call1, i32* %rc, align 4, !dbg !2837, !tbaa !1321
  %8 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2838, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %8), !dbg !2839
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !2840
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !2840
  %10 = load i32, i32* %rc, align 4, !dbg !2841, !tbaa !1321
  %cmp = icmp ne i32 %10, 0, !dbg !2843
  br i1 %cmp, label %if.then, label %if.end, !dbg !2844

if.then:                                          ; preds = %entry
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2845, !tbaa !1309
  %db2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 1, !dbg !2847
  %12 = load %struct.sqlite3*, %struct.sqlite3** %db2, align 8, !dbg !2847, !tbaa !1401
  %13 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2848, !tbaa !1309
  %call3 = call i32 @_pysqlite_seterror(%struct.sqlite3* %12, %struct.sqlite3_stmt* %13), !dbg !2849
  br label %error, !dbg !2850

if.end:                                           ; preds = %entry
  %14 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2851, !tbaa !1309
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2852, !tbaa !1309
  %call4 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %14, %struct.pysqlite_Connection* %15), !dbg !2853
  store i32 %call4, i32* %rc, align 4, !dbg !2854, !tbaa !1321
  %16 = load i32, i32* %rc, align 4, !dbg !2855, !tbaa !1321
  %cmp5 = icmp eq i32 %16, 101, !dbg !2857
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2858

if.then.6:                                        ; preds = %if.end
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2859, !tbaa !1309
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %17, i32 0, i32 2, !dbg !2861
  store i8 1, i8* %inTransaction, align 1, !dbg !2862, !tbaa !1554
  br label %if.end.9, !dbg !2863

if.else:                                          ; preds = %if.end
  %18 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2864, !tbaa !1309
  %db7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %18, i32 0, i32 1, !dbg !2866
  %19 = load %struct.sqlite3*, %struct.sqlite3** %db7, align 8, !dbg !2866, !tbaa !1401
  %20 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2867, !tbaa !1309
  %call8 = call i32 @_pysqlite_seterror(%struct.sqlite3* %19, %struct.sqlite3_stmt* %20), !dbg !2868
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %21 = bitcast %struct._ts** %_save10 to i8*, !dbg !2869
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !2869
  call void @llvm.dbg.declare(metadata %struct._ts** %_save10, metadata !732, metadata !1313), !dbg !2870
  %call11 = call %struct._ts* @PyEval_SaveThread(), !dbg !2871
  store %struct._ts* %call11, %struct._ts** %_save10, align 8, !dbg !2872, !tbaa !1309
  %22 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2873, !tbaa !1309
  %call12 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %22), !dbg !2874
  store i32 %call12, i32* %rc, align 4, !dbg !2875, !tbaa !1321
  %23 = load %struct._ts*, %struct._ts** %_save10, align 8, !dbg !2876, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %23), !dbg !2877
  %24 = bitcast %struct._ts** %_save10 to i8*, !dbg !2878
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !2878
  %25 = load i32, i32* %rc, align 4, !dbg !2879, !tbaa !1321
  %cmp13 = icmp ne i32 %25, 0, !dbg !2881
  br i1 %cmp13, label %land.lhs.true, label %if.end.18, !dbg !2882

land.lhs.true:                                    ; preds = %if.end.9
  %call14 = call %struct._object* @PyErr_Occurred(), !dbg !2883
  %tobool = icmp ne %struct._object* %call14, null, !dbg !2883
  br i1 %tobool, label %if.end.18, label %if.then.15, !dbg !2885

if.then.15:                                       ; preds = %land.lhs.true
  %26 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2886, !tbaa !1309
  %db16 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %26, i32 0, i32 1, !dbg !2888
  %27 = load %struct.sqlite3*, %struct.sqlite3** %db16, align 8, !dbg !2888, !tbaa !1401
  %call17 = call i32 @_pysqlite_seterror(%struct.sqlite3* %27, %struct.sqlite3_stmt* null), !dbg !2889
  br label %if.end.18, !dbg !2890

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.9
  br label %error, !dbg !2891

error:                                            ; preds = %if.end.18, %if.then
  %call19 = call %struct._object* @PyErr_Occurred(), !dbg !2894
  %tobool20 = icmp ne %struct._object* %call19, null, !dbg !2894
  br i1 %tobool20, label %if.then.21, label %if.else.22, !dbg !2896

if.then.21:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval, !dbg !2897
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2897

if.else.22:                                       ; preds = %error
  %28 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2899, !tbaa !1370
  %inc = add i64 %28, 1, !dbg !2899
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2899, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2901

cleanup:                                          ; preds = %if.else.22, %if.then.21
  %29 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !2902
  %30 = bitcast i8** %tail to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !2902
  %31 = bitcast i32* %rc to i8*, !dbg !2902
  call void @llvm.lifetime.end(i64 4, i8* %31) #2, !dbg !2902
  %32 = load %struct._object*, %struct._object** %retval, !dbg !2902
  ret %struct._object* %32, !dbg !2902
}

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #3

declare i32 @pysqlite_step(%struct.sqlite3_stmt*, %struct.pysqlite_Connection*) #3

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %tail = alloca i8*, align 8
  %statement = alloca %struct.sqlite3_stmt*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save18 = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !736, metadata !1313), !dbg !2903
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !737, metadata !1313), !dbg !2904
  %0 = bitcast i32* %rc to i8*, !dbg !2905
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !738, metadata !1313), !dbg !2906
  %1 = bitcast i8** %tail to i8*, !dbg !2907
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2907
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !739, metadata !1313), !dbg !2908
  %2 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !2909
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2909
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %statement, metadata !740, metadata !1313), !dbg !2910
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2911, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %3), !dbg !2913
  %tobool = icmp ne i32 %call, 0, !dbg !2913
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2914

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2915, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %4), !dbg !2917
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2917
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2918

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2919
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2919

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2921, !tbaa !1309
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 2, !dbg !2922
  %6 = load i8, i8* %inTransaction, align 1, !dbg !2922, !tbaa !1554
  %tobool3 = icmp ne i8 %6, 0, !dbg !2921
  br i1 %tobool3, label %if.then.4, label %if.end.28, !dbg !2923

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2924, !tbaa !1309
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %7, i32 2, i32 0), !dbg !2925
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !2926
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !741, metadata !1313), !dbg !2927
  %call5 = call %struct._ts* @PyEval_SaveThread(), !dbg !2928
  store %struct._ts* %call5, %struct._ts** %_save, align 8, !dbg !2929, !tbaa !1309
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2930, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 1, !dbg !2931
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !2931, !tbaa !1401
  %call6 = call i32 @sqlite3_prepare(%struct.sqlite3* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail), !dbg !2932
  store i32 %call6, i32* %rc, align 4, !dbg !2933, !tbaa !1321
  %11 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2934, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %11), !dbg !2935
  %12 = bitcast %struct._ts** %_save to i8*, !dbg !2936
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !2936
  %13 = load i32, i32* %rc, align 4, !dbg !2937, !tbaa !1321
  %cmp = icmp ne i32 %13, 0, !dbg !2939
  br i1 %cmp, label %if.then.7, label %if.end.10, !dbg !2940

if.then.7:                                        ; preds = %if.then.4
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2941, !tbaa !1309
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 1, !dbg !2943
  %15 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8, !dbg !2943, !tbaa !1401
  %call9 = call i32 @_pysqlite_seterror(%struct.sqlite3* %15, %struct.sqlite3_stmt* null), !dbg !2944
  br label %error, !dbg !2945

if.end.10:                                        ; preds = %if.then.4
  %16 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2946, !tbaa !1309
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2947, !tbaa !1309
  %call11 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %16, %struct.pysqlite_Connection* %17), !dbg !2948
  store i32 %call11, i32* %rc, align 4, !dbg !2949, !tbaa !1321
  %18 = load i32, i32* %rc, align 4, !dbg !2950, !tbaa !1321
  %cmp12 = icmp eq i32 %18, 101, !dbg !2952
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !2953

if.then.13:                                       ; preds = %if.end.10
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2954, !tbaa !1309
  %inTransaction14 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %19, i32 0, i32 2, !dbg !2956
  store i8 0, i8* %inTransaction14, align 1, !dbg !2957, !tbaa !1554
  br label %if.end.17, !dbg !2958

if.else:                                          ; preds = %if.end.10
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2959, !tbaa !1309
  %db15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 1, !dbg !2961
  %21 = load %struct.sqlite3*, %struct.sqlite3** %db15, align 8, !dbg !2961, !tbaa !1401
  %22 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2962, !tbaa !1309
  %call16 = call i32 @_pysqlite_seterror(%struct.sqlite3* %21, %struct.sqlite3_stmt* %22), !dbg !2963
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %23 = bitcast %struct._ts** %_save18 to i8*, !dbg !2964
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !2964
  call void @llvm.dbg.declare(metadata %struct._ts** %_save18, metadata !745, metadata !1313), !dbg !2965
  %call19 = call %struct._ts* @PyEval_SaveThread(), !dbg !2966
  store %struct._ts* %call19, %struct._ts** %_save18, align 8, !dbg !2967, !tbaa !1309
  %24 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !2968, !tbaa !1309
  %call20 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %24), !dbg !2969
  store i32 %call20, i32* %rc, align 4, !dbg !2970, !tbaa !1321
  %25 = load %struct._ts*, %struct._ts** %_save18, align 8, !dbg !2971, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %25), !dbg !2972
  %26 = bitcast %struct._ts** %_save18 to i8*, !dbg !2973
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !2973
  %27 = load i32, i32* %rc, align 4, !dbg !2974, !tbaa !1321
  %cmp21 = icmp ne i32 %27, 0, !dbg !2976
  br i1 %cmp21, label %land.lhs.true, label %if.end.27, !dbg !2977

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred(), !dbg !2978
  %tobool23 = icmp ne %struct._object* %call22, null, !dbg !2978
  br i1 %tobool23, label %if.end.27, label %if.then.24, !dbg !2980

if.then.24:                                       ; preds = %land.lhs.true
  %28 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !2981, !tbaa !1309
  %db25 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %28, i32 0, i32 1, !dbg !2983
  %29 = load %struct.sqlite3*, %struct.sqlite3** %db25, align 8, !dbg !2983, !tbaa !1401
  %call26 = call i32 @_pysqlite_seterror(%struct.sqlite3* %29, %struct.sqlite3_stmt* null), !dbg !2984
  br label %if.end.27, !dbg !2985

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.17
  br label %if.end.28, !dbg !2986

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %error, !dbg !2987

error:                                            ; preds = %if.end.28, %if.then.7
  %call29 = call %struct._object* @PyErr_Occurred(), !dbg !2989
  %tobool30 = icmp ne %struct._object* %call29, null, !dbg !2989
  br i1 %tobool30, label %if.then.31, label %if.else.32, !dbg !2991

if.then.31:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval, !dbg !2992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2992

if.else.32:                                       ; preds = %error
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2994, !tbaa !1370
  %inc = add i64 %30, 1, !dbg !2994
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2994, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2996
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2996

cleanup:                                          ; preds = %if.else.32, %if.then.31, %if.then
  %31 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !2997
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !2997
  %32 = bitcast i8** %tail to i8*, !dbg !2997
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !2997
  %33 = bitcast i32* %rc to i8*, !dbg !2997
  call void @llvm.lifetime.end(i64 4, i8* %33) #2, !dbg !2997
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2997
  ret %struct._object* %34, !dbg !2997
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_rollback(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %tail = alloca i8*, align 8
  %statement = alloca %struct.sqlite3_stmt*, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save18 = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !749, metadata !1313), !dbg !2998
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !750, metadata !1313), !dbg !2999
  %0 = bitcast i32* %rc to i8*, !dbg !3000
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3000
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !751, metadata !1313), !dbg !3001
  %1 = bitcast i8** %tail to i8*, !dbg !3002
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3002
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !752, metadata !1313), !dbg !3003
  %2 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !3004
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.sqlite3_stmt** %statement, metadata !753, metadata !1313), !dbg !3005
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3006, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %3), !dbg !3008
  %tobool = icmp ne i32 %call, 0, !dbg !3008
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3009

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3010, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %4), !dbg !3012
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3012
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3013

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3014
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3014

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3016, !tbaa !1309
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 2, !dbg !3017
  %6 = load i8, i8* %inTransaction, align 1, !dbg !3017, !tbaa !1554
  %tobool3 = icmp ne i8 %6, 0, !dbg !3016
  br i1 %tobool3, label %if.then.4, label %if.end.28, !dbg !3018

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3019, !tbaa !1309
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %7, i32 2, i32 1), !dbg !3020
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !3021
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !3021
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !754, metadata !1313), !dbg !3022
  %call5 = call %struct._ts* @PyEval_SaveThread(), !dbg !3023
  store %struct._ts* %call5, %struct._ts** %_save, align 8, !dbg !3024, !tbaa !1309
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3025, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 1, !dbg !3026
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !3026, !tbaa !1401
  %call6 = call i32 @sqlite3_prepare(%struct.sqlite3* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail), !dbg !3027
  store i32 %call6, i32* %rc, align 4, !dbg !3028, !tbaa !1321
  %11 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3029, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %11), !dbg !3030
  %12 = bitcast %struct._ts** %_save to i8*, !dbg !3031
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !3031
  %13 = load i32, i32* %rc, align 4, !dbg !3032, !tbaa !1321
  %cmp = icmp ne i32 %13, 0, !dbg !3034
  br i1 %cmp, label %if.then.7, label %if.end.10, !dbg !3035

if.then.7:                                        ; preds = %if.then.4
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3036, !tbaa !1309
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 1, !dbg !3038
  %15 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8, !dbg !3038, !tbaa !1401
  %call9 = call i32 @_pysqlite_seterror(%struct.sqlite3* %15, %struct.sqlite3_stmt* null), !dbg !3039
  br label %error, !dbg !3040

if.end.10:                                        ; preds = %if.then.4
  %16 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3041, !tbaa !1309
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3042, !tbaa !1309
  %call11 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %16, %struct.pysqlite_Connection* %17), !dbg !3043
  store i32 %call11, i32* %rc, align 4, !dbg !3044, !tbaa !1321
  %18 = load i32, i32* %rc, align 4, !dbg !3045, !tbaa !1321
  %cmp12 = icmp eq i32 %18, 101, !dbg !3047
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !3048

if.then.13:                                       ; preds = %if.end.10
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3049, !tbaa !1309
  %inTransaction14 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %19, i32 0, i32 2, !dbg !3051
  store i8 0, i8* %inTransaction14, align 1, !dbg !3052, !tbaa !1554
  br label %if.end.17, !dbg !3053

if.else:                                          ; preds = %if.end.10
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3054, !tbaa !1309
  %db15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 1, !dbg !3056
  %21 = load %struct.sqlite3*, %struct.sqlite3** %db15, align 8, !dbg !3056, !tbaa !1401
  %22 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3057, !tbaa !1309
  %call16 = call i32 @_pysqlite_seterror(%struct.sqlite3* %21, %struct.sqlite3_stmt* %22), !dbg !3058
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %23 = bitcast %struct._ts** %_save18 to i8*, !dbg !3059
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !3059
  call void @llvm.dbg.declare(metadata %struct._ts** %_save18, metadata !758, metadata !1313), !dbg !3060
  %call19 = call %struct._ts* @PyEval_SaveThread(), !dbg !3061
  store %struct._ts* %call19, %struct._ts** %_save18, align 8, !dbg !3062, !tbaa !1309
  %24 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8, !dbg !3063, !tbaa !1309
  %call20 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %24), !dbg !3064
  store i32 %call20, i32* %rc, align 4, !dbg !3065, !tbaa !1321
  %25 = load %struct._ts*, %struct._ts** %_save18, align 8, !dbg !3066, !tbaa !1309
  call void @PyEval_RestoreThread(%struct._ts* %25), !dbg !3067
  %26 = bitcast %struct._ts** %_save18 to i8*, !dbg !3068
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !3068
  %27 = load i32, i32* %rc, align 4, !dbg !3069, !tbaa !1321
  %cmp21 = icmp ne i32 %27, 0, !dbg !3071
  br i1 %cmp21, label %land.lhs.true, label %if.end.27, !dbg !3072

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred(), !dbg !3073
  %tobool23 = icmp ne %struct._object* %call22, null, !dbg !3073
  br i1 %tobool23, label %if.end.27, label %if.then.24, !dbg !3075

if.then.24:                                       ; preds = %land.lhs.true
  %28 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3076, !tbaa !1309
  %db25 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %28, i32 0, i32 1, !dbg !3078
  %29 = load %struct.sqlite3*, %struct.sqlite3** %db25, align 8, !dbg !3078, !tbaa !1401
  %call26 = call i32 @_pysqlite_seterror(%struct.sqlite3* %29, %struct.sqlite3_stmt* null), !dbg !3079
  br label %if.end.27, !dbg !3080

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.17
  br label %if.end.28, !dbg !3081

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %error, !dbg !3082

error:                                            ; preds = %if.end.28, %if.then.7
  %call29 = call %struct._object* @PyErr_Occurred(), !dbg !3084
  %tobool30 = icmp ne %struct._object* %call29, null, !dbg !3084
  br i1 %tobool30, label %if.then.31, label %if.else.32, !dbg !3086

if.then.31:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval, !dbg !3087
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3087

if.else.32:                                       ; preds = %error
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3089, !tbaa !1370
  %inc = add i64 %30, 1, !dbg !3089
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3089, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3091
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3091

cleanup:                                          ; preds = %if.else.32, %if.then.31, %if.then
  %31 = bitcast %struct.sqlite3_stmt** %statement to i8*, !dbg !3092
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !3092
  %32 = bitcast i8** %tail to i8*, !dbg !3092
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !3092
  %33 = bitcast i32* %rc to i8*, !dbg !3092
  call void @llvm.lifetime.end(i64 4, i8* %33) #2, !dbg !3092
  %34 = load %struct._object*, %struct._object** %retval, !dbg !3092
  ret %struct._object* %34, !dbg !3092
}

; Function Attrs: nounwind uwtable
define %struct._object* @_pysqlite_build_py_params(%struct.sqlite3_context* %context, i32 %argc, %struct.Mem** %argv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.Mem**, align 8
  %args = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cur_value = alloca %struct.Mem*, align 8
  %cur_py_value = alloca %struct._object*, align 8
  %val_str = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %context.addr, metadata !771, metadata !1313), !dbg !3093
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !772, metadata !1313), !dbg !3094
  store %struct.Mem** %argv, %struct.Mem*** %argv.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.Mem*** %argv.addr, metadata !773, metadata !1313), !dbg !3095
  %0 = bitcast %struct._object** %args to i8*, !dbg !3096
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3096
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !774, metadata !1313), !dbg !3097
  %1 = bitcast i32* %i to i8*, !dbg !3098
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3098
  call void @llvm.dbg.declare(metadata i32* %i, metadata !775, metadata !1313), !dbg !3099
  %2 = bitcast %struct.Mem** %cur_value to i8*, !dbg !3100
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3100
  call void @llvm.dbg.declare(metadata %struct.Mem** %cur_value, metadata !776, metadata !1313), !dbg !3101
  %3 = bitcast %struct._object** %cur_py_value to i8*, !dbg !3102
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct._object** %cur_py_value, metadata !777, metadata !1313), !dbg !3103
  %4 = bitcast i8** %val_str to i8*, !dbg !3104
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3104
  call void @llvm.dbg.declare(metadata i8** %val_str, metadata !778, metadata !1313), !dbg !3105
  %5 = bitcast i64* %buflen to i8*, !dbg !3106
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3106
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !779, metadata !1313), !dbg !3107
  %6 = load i32, i32* %argc.addr, align 4, !dbg !3108, !tbaa !1321
  %conv = sext i32 %6 to i64, !dbg !3108
  %call = call %struct._object* @PyTuple_New(i64 %conv), !dbg !3109
  store %struct._object* %call, %struct._object** %args, align 8, !dbg !3110, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %args, align 8, !dbg !3111, !tbaa !1309
  %tobool = icmp ne %struct._object* %7, null, !dbg !3111
  br i1 %tobool, label %if.end, label %if.then, !dbg !3113

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3114
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3114

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !3116, !tbaa !1321
  br label %for.cond, !dbg !3117

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !3118, !tbaa !1321
  %9 = load i32, i32* %argc.addr, align 4, !dbg !3121, !tbaa !1321
  %cmp = icmp slt i32 %8, %9, !dbg !3122
  br i1 %cmp, label %for.body, label %for.end, !dbg !3123

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !3124, !tbaa !1321
  %idxprom = sext i32 %10 to i64, !dbg !3125
  %11 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8, !dbg !3125, !tbaa !1309
  %arrayidx = getelementptr %struct.Mem*, %struct.Mem** %11, i64 %idxprom, !dbg !3125
  %12 = load %struct.Mem*, %struct.Mem** %arrayidx, align 8, !dbg !3125, !tbaa !1309
  store %struct.Mem* %12, %struct.Mem** %cur_value, align 8, !dbg !3126, !tbaa !1309
  %13 = load i32, i32* %i, align 4, !dbg !3127, !tbaa !1321
  %idxprom2 = sext i32 %13 to i64, !dbg !3128
  %14 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8, !dbg !3128, !tbaa !1309
  %arrayidx3 = getelementptr %struct.Mem*, %struct.Mem** %14, i64 %idxprom2, !dbg !3128
  %15 = load %struct.Mem*, %struct.Mem** %arrayidx3, align 8, !dbg !3128, !tbaa !1309
  %call4 = call i32 @sqlite3_value_type(%struct.Mem* %15), !dbg !3129
  switch i32 %call4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.21
  ], !dbg !3130

sw.bb:                                            ; preds = %for.body
  %16 = load %struct.Mem*, %struct.Mem** %cur_value, align 8, !dbg !3131, !tbaa !1309
  %call5 = call i64 @sqlite3_value_int64(%struct.Mem* %16), !dbg !3133
  %call6 = call %struct._object* @_pysqlite_long_from_int64(i64 %call5), !dbg !3134
  store %struct._object* %call6, %struct._object** %cur_py_value, align 8, !dbg !3135, !tbaa !1309
  br label %sw.epilog, !dbg !3136

sw.bb.7:                                          ; preds = %for.body
  %17 = load %struct.Mem*, %struct.Mem** %cur_value, align 8, !dbg !3137, !tbaa !1309
  %call8 = call double @sqlite3_value_double(%struct.Mem* %17), !dbg !3138
  %call9 = call %struct._object* @PyFloat_FromDouble(double %call8), !dbg !3139
  store %struct._object* %call9, %struct._object** %cur_py_value, align 8, !dbg !3140, !tbaa !1309
  br label %sw.epilog, !dbg !3141

sw.bb.10:                                         ; preds = %for.body
  %18 = load %struct.Mem*, %struct.Mem** %cur_value, align 8, !dbg !3142, !tbaa !1309
  %call11 = call i8* @sqlite3_value_text(%struct.Mem* %18), !dbg !3143
  store i8* %call11, i8** %val_str, align 8, !dbg !3144, !tbaa !1309
  %19 = load i8*, i8** %val_str, align 8, !dbg !3145, !tbaa !1309
  %call12 = call %struct._object* @PyUnicode_FromString(i8* %19), !dbg !3146
  store %struct._object* %call12, %struct._object** %cur_py_value, align 8, !dbg !3147, !tbaa !1309
  %20 = load %struct._object*, %struct._object** %cur_py_value, align 8, !dbg !3148, !tbaa !1309
  %tobool13 = icmp ne %struct._object* %20, null, !dbg !3148
  br i1 %tobool13, label %if.end.15, label %if.then.14, !dbg !3150

if.then.14:                                       ; preds = %sw.bb.10
  call void @PyErr_Clear(), !dbg !3151
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3153, !tbaa !1370
  %inc = add i64 %21, 1, !dbg !3153
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3153, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %cur_py_value, align 8, !dbg !3154, !tbaa !1309
  br label %if.end.15, !dbg !3155

if.end.15:                                        ; preds = %if.then.14, %sw.bb.10
  br label %sw.epilog, !dbg !3156

sw.bb.16:                                         ; preds = %for.body
  %22 = load %struct.Mem*, %struct.Mem** %cur_value, align 8, !dbg !3157, !tbaa !1309
  %call17 = call i32 @sqlite3_value_bytes(%struct.Mem* %22), !dbg !3158
  %conv18 = sext i32 %call17 to i64, !dbg !3158
  store i64 %conv18, i64* %buflen, align 8, !dbg !3159, !tbaa !1822
  %23 = load %struct.Mem*, %struct.Mem** %cur_value, align 8, !dbg !3160, !tbaa !1309
  %call19 = call i8* @sqlite3_value_blob(%struct.Mem* %23), !dbg !3161
  %24 = load i64, i64* %buflen, align 8, !dbg !3162, !tbaa !1822
  %call20 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call19, i64 %24), !dbg !3163
  store %struct._object* %call20, %struct._object** %cur_py_value, align 8, !dbg !3164, !tbaa !1309
  br label %sw.epilog, !dbg !3165

sw.bb.21:                                         ; preds = %for.body
  br label %sw.default, !dbg !3165

sw.default:                                       ; preds = %for.body, %sw.bb.21
  %25 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3166, !tbaa !1370
  %inc22 = add i64 %25, 1, !dbg !3166
  store i64 %inc22, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3166, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %cur_py_value, align 8, !dbg !3167, !tbaa !1309
  br label %sw.epilog, !dbg !3168

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %if.end.15, %sw.bb.7, %sw.bb
  %26 = load %struct._object*, %struct._object** %cur_py_value, align 8, !dbg !3169, !tbaa !1309
  %tobool23 = icmp ne %struct._object* %26, null, !dbg !3169
  br i1 %tobool23, label %if.end.29, label %if.then.24, !dbg !3170

if.then.24:                                       ; preds = %sw.epilog
  br label %do.body, !dbg !3171

do.body:                                          ; preds = %if.then.24
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3172
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !780, metadata !1313), !dbg !3174
  %28 = load %struct._object*, %struct._object** %args, align 8, !dbg !3175, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !3174, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3176, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !3178
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !3179, !tbaa !1370
  %dec = add i64 %30, -1, !dbg !3179
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3179, !tbaa !1370
  %cmp25 = icmp ne i64 %dec, 0, !dbg !3180
  br i1 %cmp25, label %if.then.27, label %if.else, !dbg !3181

if.then.27:                                       ; preds = %do.body
  br label %if.end.28, !dbg !3182

if.else:                                          ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3184, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !3186
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3186, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !3187
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3187, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3188, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !3189
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3190
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3190
  br label %do.cond, !dbg !3192

do.cond:                                          ; preds = %if.end.28
  br label %do.end, !dbg !3193

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !3195
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3195

if.end.29:                                        ; preds = %sw.epilog
  %36 = load %struct._object*, %struct._object** %args, align 8, !dbg !3196, !tbaa !1309
  %37 = load i32, i32* %i, align 4, !dbg !3197, !tbaa !1321
  %conv30 = sext i32 %37 to i64, !dbg !3197
  %38 = load %struct._object*, %struct._object** %cur_py_value, align 8, !dbg !3198, !tbaa !1309
  %call31 = call i32 @PyTuple_SetItem(%struct._object* %36, i64 %conv30, %struct._object* %38), !dbg !3199
  br label %for.inc, !dbg !3200

for.inc:                                          ; preds = %if.end.29
  %39 = load i32, i32* %i, align 4, !dbg !3201, !tbaa !1321
  %inc32 = add i32 %39, 1, !dbg !3201
  store i32 %inc32, i32* %i, align 4, !dbg !3201, !tbaa !1321
  br label %for.cond, !dbg !3202

for.end:                                          ; preds = %for.cond
  %40 = load %struct._object*, %struct._object** %args, align 8, !dbg !3203, !tbaa !1309
  store %struct._object* %40, %struct._object** %retval, !dbg !3204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3204

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  %41 = bitcast i64* %buflen to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3205
  %42 = bitcast i8** %val_str to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3205
  %43 = bitcast %struct._object** %cur_py_value to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3205
  %44 = bitcast %struct.Mem** %cur_value to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !3205
  %45 = bitcast i32* %i to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 4, i8* %45) #2, !dbg !3205
  %46 = bitcast %struct._object** %args to i8*, !dbg !3205
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3205
  %47 = load %struct._object*, %struct._object** %retval, !dbg !3205
  ret %struct._object* %47, !dbg !3205
}

declare %struct._object* @PyTuple_New(i64) #3

declare i32 @sqlite3_value_type(%struct.Mem*) #3

declare %struct._object* @_pysqlite_long_from_int64(i64) #3

declare i64 @sqlite3_value_int64(%struct.Mem*) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare double @sqlite3_value_double(%struct.Mem*) #3

declare i8* @sqlite3_value_text(%struct.Mem*) #3

declare void @PyErr_Clear() #3

declare i32 @sqlite3_value_bytes(%struct.Mem*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i8* @sqlite3_value_blob(%struct.Mem*) #3

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @_pysqlite_func_callback(%struct.sqlite3_context* %context, i32 %argc, %struct.Mem** %argv) #0 {
entry:
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.Mem**, align 8
  %args = alloca %struct._object*, align 8
  %py_func = alloca %struct._object*, align 8
  %py_retval = alloca %struct._object*, align 8
  %ok = alloca i32, align 4
  %threadstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %context.addr, metadata !791, metadata !1313), !dbg !3206
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !792, metadata !1313), !dbg !3207
  store %struct.Mem** %argv, %struct.Mem*** %argv.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.Mem*** %argv.addr, metadata !793, metadata !1313), !dbg !3208
  %0 = bitcast %struct._object** %args to i8*, !dbg !3209
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3209
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !794, metadata !1313), !dbg !3210
  %1 = bitcast %struct._object** %py_func to i8*, !dbg !3211
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3211
  call void @llvm.dbg.declare(metadata %struct._object** %py_func, metadata !795, metadata !1313), !dbg !3212
  %2 = bitcast %struct._object** %py_retval to i8*, !dbg !3213
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3213
  call void @llvm.dbg.declare(metadata %struct._object** %py_retval, metadata !796, metadata !1313), !dbg !3214
  store %struct._object* null, %struct._object** %py_retval, align 8, !dbg !3214, !tbaa !1309
  %3 = bitcast i32* %ok to i8*, !dbg !3215
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3215
  call void @llvm.dbg.declare(metadata i32* %ok, metadata !797, metadata !1313), !dbg !3216
  %4 = bitcast i32* %threadstate to i8*, !dbg !3217
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !3217
  call void @llvm.dbg.declare(metadata i32* %threadstate, metadata !798, metadata !1313), !dbg !3218
  %call = call i32 @PyGILState_Ensure(), !dbg !3219
  store i32 %call, i32* %threadstate, align 4, !dbg !3220, !tbaa !3221
  %5 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3222, !tbaa !1309
  %call1 = call i8* @sqlite3_user_data(%struct.sqlite3_context* %5), !dbg !3223
  %6 = bitcast i8* %call1 to %struct._object*, !dbg !3224
  store %struct._object* %6, %struct._object** %py_func, align 8, !dbg !3225, !tbaa !1309
  %7 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3226, !tbaa !1309
  %8 = load i32, i32* %argc.addr, align 4, !dbg !3227, !tbaa !1321
  %9 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8, !dbg !3228, !tbaa !1309
  %call2 = call %struct._object* @_pysqlite_build_py_params(%struct.sqlite3_context* %7, i32 %8, %struct.Mem** %9), !dbg !3229
  store %struct._object* %call2, %struct._object** %args, align 8, !dbg !3230, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %args, align 8, !dbg !3231, !tbaa !1309
  %tobool = icmp ne %struct._object* %10, null, !dbg !3231
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !3232

if.then:                                          ; preds = %entry
  %11 = load %struct._object*, %struct._object** %py_func, align 8, !dbg !3233, !tbaa !1309
  %12 = load %struct._object*, %struct._object** %args, align 8, !dbg !3234, !tbaa !1309
  %call3 = call %struct._object* @PyObject_CallObject(%struct._object* %11, %struct._object* %12), !dbg !3235
  store %struct._object* %call3, %struct._object** %py_retval, align 8, !dbg !3236, !tbaa !1309
  br label %do.body, !dbg !3237

do.body:                                          ; preds = %if.then
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3238
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !3238
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !800, metadata !1313), !dbg !3240
  %14 = load %struct._object*, %struct._object** %args, align 8, !dbg !3241, !tbaa !1309
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !3240, !tbaa !1309
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3242, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3244
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3245, !tbaa !1370
  %dec = add i64 %16, -1, !dbg !3245
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3245, !tbaa !1370
  %cmp = icmp ne i64 %dec, 0, !dbg !3246
  br i1 %cmp, label %if.then.4, label %if.else, !dbg !3247

if.then.4:                                        ; preds = %do.body
  br label %if.end, !dbg !3248

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3250, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3252
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3252, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !3253
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3253, !tbaa !1447
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3254, !tbaa !1309
  call void %19(%struct._object* %20), !dbg !3255
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3256
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !3256
  br label %do.cond, !dbg !3258

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3259

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3261

if.end.5:                                         ; preds = %do.end, %entry
  store i32 0, i32* %ok, align 4, !dbg !3262, !tbaa !1321
  %22 = load %struct._object*, %struct._object** %py_retval, align 8, !dbg !3263, !tbaa !1309
  %tobool6 = icmp ne %struct._object* %22, null, !dbg !3263
  br i1 %tobool6, label %if.then.7, label %if.end.23, !dbg !3264

if.then.7:                                        ; preds = %if.end.5
  %23 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3265, !tbaa !1309
  %24 = load %struct._object*, %struct._object** %py_retval, align 8, !dbg !3266, !tbaa !1309
  %call8 = call i32 @_pysqlite_set_result(%struct.sqlite3_context* %23, %struct._object* %24), !dbg !3267
  %cmp9 = icmp eq i32 %call8, 0, !dbg !3268
  %conv = zext i1 %cmp9 to i32, !dbg !3268
  store i32 %conv, i32* %ok, align 4, !dbg !3269, !tbaa !1321
  br label %do.body.10, !dbg !3270

do.body.10:                                       ; preds = %if.then.7
  %25 = bitcast %struct._object** %_py_decref_tmp11 to i8*, !dbg !3271
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !3271
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp11, metadata !804, metadata !1313), !dbg !3273
  %26 = load %struct._object*, %struct._object** %py_retval, align 8, !dbg !3274, !tbaa !1309
  store %struct._object* %26, %struct._object** %_py_decref_tmp11, align 8, !dbg !3273, !tbaa !1309
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !3275, !tbaa !1309
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3277
  %28 = load i64, i64* %ob_refcnt12, align 8, !dbg !3278, !tbaa !1370
  %dec13 = add i64 %28, -1, !dbg !3278
  store i64 %dec13, i64* %ob_refcnt12, align 8, !dbg !3278, !tbaa !1370
  %cmp14 = icmp ne i64 %dec13, 0, !dbg !3279
  br i1 %cmp14, label %if.then.16, label %if.else.17, !dbg !3280

if.then.16:                                       ; preds = %do.body.10
  br label %if.end.20, !dbg !3281

if.else.17:                                       ; preds = %do.body.10
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !3283, !tbaa !1309
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3285
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !3285, !tbaa !1445
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !3286
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !3286, !tbaa !1447
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8, !dbg !3287, !tbaa !1309
  call void %31(%struct._object* %32), !dbg !3288
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %33 = bitcast %struct._object** %_py_decref_tmp11 to i8*, !dbg !3289
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !3289
  br label %do.cond.21, !dbg !3291

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !3292

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !3294

if.end.23:                                        ; preds = %do.end.22, %if.end.5
  %34 = load i32, i32* %ok, align 4, !dbg !3295, !tbaa !1321
  %tobool24 = icmp ne i32 %34, 0, !dbg !3295
  br i1 %tobool24, label %if.end.30, label %if.then.25, !dbg !3297

if.then.25:                                       ; preds = %if.end.23
  %35 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !3298, !tbaa !1321
  %tobool26 = icmp ne i32 %35, 0, !dbg !3298
  br i1 %tobool26, label %if.then.27, label %if.else.28, !dbg !3301

if.then.27:                                       ; preds = %if.then.25
  call void @PyErr_Print(), !dbg !3302
  br label %if.end.29, !dbg !3304

if.else.28:                                       ; preds = %if.then.25
  call void @PyErr_Clear(), !dbg !3305
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  %36 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3307, !tbaa !1309
  call void @_sqlite3_result_error(%struct.sqlite3_context* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !3308
  br label %if.end.30, !dbg !3309

if.end.30:                                        ; preds = %if.end.29, %if.end.23
  %37 = load i32, i32* %threadstate, align 4, !dbg !3310, !tbaa !3221
  call void @PyGILState_Release(i32 %37), !dbg !3311
  %38 = bitcast i32* %threadstate to i8*, !dbg !3312
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !3312
  %39 = bitcast i32* %ok to i8*, !dbg !3312
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !3312
  %40 = bitcast %struct._object** %py_retval to i8*, !dbg !3312
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !3312
  %41 = bitcast %struct._object** %py_func to i8*, !dbg !3312
  call void @llvm.lifetime.end(i64 8, i8* %41) #2, !dbg !3312
  %42 = bitcast %struct._object** %args to i8*, !dbg !3312
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3312
  ret void, !dbg !3312
}

declare i32 @PyGILState_Ensure() #3

declare i8* @sqlite3_user_data(%struct.sqlite3_context*) #3

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_pysqlite_set_result(%struct.sqlite3_context* %context, %struct._object* %py_val) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %py_val.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %str = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %buflen = alloca i64, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %context.addr, metadata !975, metadata !1313), !dbg !3313
  store %struct._object* %py_val, %struct._object** %py_val.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %py_val.addr, metadata !976, metadata !1313), !dbg !3314
  %0 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3315, !tbaa !1309
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct, !dbg !3316
  br i1 %cmp, label %if.then, label %if.else, !dbg !3317

if.then:                                          ; preds = %entry
  %1 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3318, !tbaa !1309
  call void @sqlite3_result_null(%struct.sqlite3_context* %1), !dbg !3320
  br label %if.end.51, !dbg !3321

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3322, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3323
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3323, !tbaa !1445
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !3324
  %4 = load i64, i64* %tp_flags, align 8, !dbg !3324, !tbaa !3325
  %and = and i64 %4, 16777216, !dbg !3326
  %cmp1 = icmp ne i64 %and, 0, !dbg !3327
  br i1 %cmp1, label %if.then.2, label %if.else.6, !dbg !3328

if.then.2:                                        ; preds = %if.else
  %5 = bitcast i64* %value to i8*, !dbg !3329
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3329
  call void @llvm.dbg.declare(metadata i64* %value, metadata !977, metadata !1313), !dbg !3330
  %6 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3331, !tbaa !1309
  %call = call i64 @_pysqlite_long_as_int64(%struct._object* %6), !dbg !3332
  store i64 %call, i64* %value, align 8, !dbg !3330, !tbaa !3333
  %7 = load i64, i64* %value, align 8, !dbg !3335, !tbaa !3333
  %cmp3 = icmp eq i64 %7, -1, !dbg !3337
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !3338

land.lhs.true:                                    ; preds = %if.then.2
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3339
  %tobool = icmp ne %struct._object* %call4, null, !dbg !3339
  br i1 %tobool, label %if.then.5, label %if.end, !dbg !3341

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !3342
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3342

if.end:                                           ; preds = %land.lhs.true, %if.then.2
  %8 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3343, !tbaa !1309
  %9 = load i64, i64* %value, align 8, !dbg !3344, !tbaa !3333
  call void @sqlite3_result_int64(%struct.sqlite3_context* %8, i64 %9), !dbg !3345
  store i32 0, i32* %cleanup.dest.slot, !dbg !3346
  br label %cleanup, !dbg !3346

cleanup:                                          ; preds = %if.end, %if.then.5
  %10 = bitcast i64* %value to i8*, !dbg !3347
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !3347
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50, !dbg !3349

if.else.6:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3350, !tbaa !1309
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3351
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !3351, !tbaa !1445
  %cmp8 = icmp eq %struct._typeobject* %12, @PyFloat_Type, !dbg !3352
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false, !dbg !3353

lor.lhs.false:                                    ; preds = %if.else.6
  %13 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3354, !tbaa !1309
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3356
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3356, !tbaa !1445
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyFloat_Type), !dbg !3357
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3357
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3358

if.then.12:                                       ; preds = %lor.lhs.false, %if.else.6
  %15 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3359, !tbaa !1309
  %16 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3361, !tbaa !1309
  %call13 = call double @PyFloat_AsDouble(%struct._object* %16), !dbg !3362
  call void @sqlite3_result_double(%struct.sqlite3_context* %15, double %call13), !dbg !3363
  br label %if.end.49, !dbg !3364

if.else.14:                                       ; preds = %lor.lhs.false
  %17 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3365, !tbaa !1309
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3366
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !3366, !tbaa !1445
  %tp_flags16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19, !dbg !3367
  %19 = load i64, i64* %tp_flags16, align 8, !dbg !3367, !tbaa !3325
  %and17 = and i64 %19, 268435456, !dbg !3368
  %cmp18 = icmp ne i64 %and17, 0, !dbg !3369
  br i1 %cmp18, label %if.then.19, label %if.else.27, !dbg !3370

if.then.19:                                       ; preds = %if.else.14
  %20 = bitcast i8** %str to i8*, !dbg !3371
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3371
  call void @llvm.dbg.declare(metadata i8** %str, metadata !983, metadata !1313), !dbg !3372
  %21 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3373, !tbaa !1309
  %call20 = call i8* @PyUnicode_AsUTF8(%struct._object* %21), !dbg !3374
  store i8* %call20, i8** %str, align 8, !dbg !3372, !tbaa !1309
  %22 = load i8*, i8** %str, align 8, !dbg !3375, !tbaa !1309
  %cmp21 = icmp eq i8* %22, null, !dbg !3377
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !3378

if.then.22:                                       ; preds = %if.then.19
  store i32 -1, i32* %retval, !dbg !3379
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.24, !dbg !3379

if.end.23:                                        ; preds = %if.then.19
  %23 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3380, !tbaa !1309
  %24 = load i8*, i8** %str, align 8, !dbg !3381, !tbaa !1309
  call void @sqlite3_result_text(%struct.sqlite3_context* %23, i8* %24, i32 -1, void (i8*)* inttoptr (i64 -1 to void (i8*)*)), !dbg !3382
  store i32 0, i32* %cleanup.dest.slot, !dbg !3383
  br label %cleanup.24, !dbg !3383

cleanup.24:                                       ; preds = %if.end.23, %if.then.22
  %25 = bitcast i8** %str to i8*, !dbg !3384
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !3384
  %cleanup.dest.25 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.25, label %unreachable [
    i32 0, label %cleanup.cont.26
    i32 1, label %return
  ]

cleanup.cont.26:                                  ; preds = %cleanup.24
  br label %if.end.48, !dbg !3386

if.else.27:                                       ; preds = %if.else.14
  %26 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3387, !tbaa !1309
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !3388
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3388, !tbaa !1445
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 18, !dbg !3389
  %28 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !3389, !tbaa !3390
  %cmp29 = icmp ne %struct.PyBufferProcs* %28, null, !dbg !3391
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.46, !dbg !3392

land.lhs.true.30:                                 ; preds = %if.else.27
  %29 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3393, !tbaa !1309
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3395
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !3395, !tbaa !1445
  %tp_as_buffer32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 18, !dbg !3396
  %31 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer32, align 8, !dbg !3396, !tbaa !3390
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %31, i32 0, i32 0, !dbg !3397
  %32 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !3397, !tbaa !3398
  %cmp33 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %32, null, !dbg !3400
  br i1 %cmp33, label %if.then.34, label %if.else.46, !dbg !3401

if.then.34:                                       ; preds = %land.lhs.true.30
  %33 = bitcast i8** %buffer to i8*, !dbg !3402
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !3402
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !987, metadata !1313), !dbg !3403
  %34 = bitcast i64* %buflen to i8*, !dbg !3404
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !3404
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !990, metadata !1313), !dbg !3405
  %35 = load %struct._object*, %struct._object** %py_val.addr, align 8, !dbg !3406, !tbaa !1309
  %call35 = call i32 @PyObject_AsCharBuffer(%struct._object* %35, i8** %buffer, i64* %buflen), !dbg !3408
  %cmp36 = icmp ne i32 %call35, 0, !dbg !3409
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !3410

if.then.37:                                       ; preds = %if.then.34
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3411, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0)), !dbg !3413
  store i32 -1, i32* %retval, !dbg !3414
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !3414

if.end.38:                                        ; preds = %if.then.34
  %37 = load i64, i64* %buflen, align 8, !dbg !3415, !tbaa !1822
  %cmp39 = icmp sgt i64 %37, 2147483647, !dbg !3417
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !3418

if.then.40:                                       ; preds = %if.end.38
  %38 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3419, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0)), !dbg !3421
  store i32 -1, i32* %retval, !dbg !3422
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !3422

if.end.41:                                        ; preds = %if.end.38
  %39 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3423, !tbaa !1309
  %40 = load i8*, i8** %buffer, align 8, !dbg !3424, !tbaa !1309
  %41 = load i64, i64* %buflen, align 8, !dbg !3425, !tbaa !1822
  %conv = trunc i64 %41 to i32, !dbg !3426
  call void @sqlite3_result_blob(%struct.sqlite3_context* %39, i8* %40, i32 %conv, void (i8*)* inttoptr (i64 -1 to void (i8*)*)), !dbg !3427
  store i32 0, i32* %cleanup.dest.slot, !dbg !3428
  br label %cleanup.42, !dbg !3428

cleanup.42:                                       ; preds = %if.end.41, %if.then.40, %if.then.37
  %42 = bitcast i64* %buflen to i8*, !dbg !3429
  call void @llvm.lifetime.end(i64 8, i8* %42) #2, !dbg !3429
  %43 = bitcast i8** %buffer to i8*, !dbg !3429
  call void @llvm.lifetime.end(i64 8, i8* %43) #2, !dbg !3429
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %unreachable [
    i32 0, label %cleanup.cont.45
    i32 1, label %return
  ]

cleanup.cont.45:                                  ; preds = %cleanup.42
  br label %if.end.47, !dbg !3431

if.else.46:                                       ; preds = %land.lhs.true.30, %if.else.27
  store i32 -1, i32* %retval, !dbg !3432
  br label %return, !dbg !3432

if.end.47:                                        ; preds = %cleanup.cont.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %cleanup.cont.26
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.12
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %cleanup.cont
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  store i32 0, i32* %retval, !dbg !3434
  br label %return, !dbg !3434

return:                                           ; preds = %if.end.51, %if.else.46, %cleanup.42, %cleanup.24, %cleanup
  %44 = load i32, i32* %retval, !dbg !3435
  ret i32 %44, !dbg !3435

unreachable:                                      ; preds = %cleanup.42, %cleanup.24, %cleanup
  unreachable
}

declare void @PyErr_Print() #3

; Function Attrs: nounwind uwtable
define internal void @_sqlite3_result_error(%struct.sqlite3_context* %ctx, i8* %errmsg, i32 %len) #0 {
entry:
  %ctx.addr = alloca %struct.sqlite3_context*, align 8
  %errmsg.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.sqlite3_context* %ctx, %struct.sqlite3_context** %ctx.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %ctx.addr, metadata !995, metadata !1313), !dbg !3436
  store i8* %errmsg, i8** %errmsg.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %errmsg.addr, metadata !996, metadata !1313), !dbg !3437
  store i32 %len, i32* %len.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !997, metadata !1313), !dbg !3438
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %ctx.addr, align 8, !dbg !3439, !tbaa !1309
  %1 = load i8*, i8** %errmsg.addr, align 8, !dbg !3440, !tbaa !1309
  %2 = load i32, i32* %len.addr, align 4, !dbg !3441, !tbaa !1321
  call void @sqlite3_result_error(%struct.sqlite3_context* %0, i8* %1, i32 %2), !dbg !3442
  ret void, !dbg !3443
}

declare void @PyGILState_Release(i32) #3

; Function Attrs: nounwind uwtable
define void @_pysqlite_final_callback(%struct.sqlite3_context* %context) #0 {
entry:
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %function_result = alloca %struct._object*, align 8
  %aggregate_instance = alloca %struct._object**, align 8
  %ok = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %restore = alloca i32, align 4
  %threadstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %context.addr, metadata !812, metadata !1313), !dbg !3444
  %0 = bitcast %struct._object** %function_result to i8*, !dbg !3445
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3445
  call void @llvm.dbg.declare(metadata %struct._object** %function_result, metadata !813, metadata !1313), !dbg !3446
  %1 = bitcast %struct._object*** %aggregate_instance to i8*, !dbg !3447
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3447
  call void @llvm.dbg.declare(metadata %struct._object*** %aggregate_instance, metadata !814, metadata !1313), !dbg !3448
  %2 = bitcast i32* %ok to i8*, !dbg !3449
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3449
  call void @llvm.dbg.declare(metadata i32* %ok, metadata !815, metadata !1313), !dbg !3450
  %3 = bitcast %struct._object** %exception to i8*, !dbg !3451
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct._object** %exception, metadata !816, metadata !1313), !dbg !3452
  %4 = bitcast %struct._object** %value to i8*, !dbg !3451
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !817, metadata !1313), !dbg !3453
  %5 = bitcast %struct._object** %tb to i8*, !dbg !3451
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !818, metadata !1313), !dbg !3454
  %6 = bitcast i32* %restore to i8*, !dbg !3455
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !3455
  call void @llvm.dbg.declare(metadata i32* %restore, metadata !819, metadata !1313), !dbg !3456
  %7 = bitcast i32* %threadstate to i8*, !dbg !3457
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !3457
  call void @llvm.dbg.declare(metadata i32* %threadstate, metadata !820, metadata !1313), !dbg !3458
  %call = call i32 @PyGILState_Ensure(), !dbg !3459
  store i32 %call, i32* %threadstate, align 4, !dbg !3460, !tbaa !3221
  %8 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3461, !tbaa !1309
  %call1 = call i8* @sqlite3_aggregate_context(%struct.sqlite3_context* %8, i32 8), !dbg !3462
  %9 = bitcast i8* %call1 to %struct._object**, !dbg !3463
  store %struct._object** %9, %struct._object*** %aggregate_instance, align 8, !dbg !3464, !tbaa !1309
  %10 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3465, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !3467, !tbaa !1309
  %tobool = icmp ne %struct._object* %11, null, !dbg !3467
  br i1 %tobool, label %if.end, label %if.then, !dbg !3468

if.then:                                          ; preds = %entry
  br label %error, !dbg !3469

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb), !dbg !3471
  store i32 1, i32* %restore, align 4, !dbg !3472, !tbaa !1321
  %12 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3473, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %12, align 8, !dbg !3474, !tbaa !1309
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %13, %struct._Py_Identifier* @_pysqlite_final_callback.PyId_finalize, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !3475
  store %struct._object* %call2, %struct._object** %function_result, align 8, !dbg !3476, !tbaa !1309
  br label %do.body, !dbg !3477

do.body:                                          ; preds = %if.end
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3478
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !3478
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !821, metadata !1313), !dbg !3480
  %15 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3481, !tbaa !1309
  %16 = load %struct._object*, %struct._object** %15, align 8, !dbg !3482, !tbaa !1309
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !3480, !tbaa !1309
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3483, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !3485
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !3486, !tbaa !1370
  %dec = add i64 %18, -1, !dbg !3486
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3486, !tbaa !1370
  %cmp = icmp ne i64 %dec, 0, !dbg !3487
  br i1 %cmp, label %if.then.3, label %if.else, !dbg !3488

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !3489

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3491, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !3493
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3493, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !3494
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3494, !tbaa !1447
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3495, !tbaa !1309
  call void %21(%struct._object* %22), !dbg !3496
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3497
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !3497
  br label %do.cond, !dbg !3499

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3500

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %ok, align 4, !dbg !3502, !tbaa !1321
  %24 = load %struct._object*, %struct._object** %function_result, align 8, !dbg !3503, !tbaa !1309
  %tobool5 = icmp ne %struct._object* %24, null, !dbg !3503
  br i1 %tobool5, label %if.then.6, label %if.end.22, !dbg !3504

if.then.6:                                        ; preds = %do.end
  %25 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3505, !tbaa !1309
  %26 = load %struct._object*, %struct._object** %function_result, align 8, !dbg !3506, !tbaa !1309
  %call7 = call i32 @_pysqlite_set_result(%struct.sqlite3_context* %25, %struct._object* %26), !dbg !3507
  %cmp8 = icmp eq i32 %call7, 0, !dbg !3508
  %conv = zext i1 %cmp8 to i32, !dbg !3508
  store i32 %conv, i32* %ok, align 4, !dbg !3509, !tbaa !1321
  br label %do.body.9, !dbg !3510

do.body.9:                                        ; preds = %if.then.6
  %27 = bitcast %struct._object** %_py_decref_tmp10 to i8*, !dbg !3511
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !3511
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp10, metadata !823, metadata !1313), !dbg !3513
  %28 = load %struct._object*, %struct._object** %function_result, align 8, !dbg !3514, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp10, align 8, !dbg !3513, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !3515, !tbaa !1309
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !3517
  %30 = load i64, i64* %ob_refcnt11, align 8, !dbg !3518, !tbaa !1370
  %dec12 = add i64 %30, -1, !dbg !3518
  store i64 %dec12, i64* %ob_refcnt11, align 8, !dbg !3518, !tbaa !1370
  %cmp13 = icmp ne i64 %dec12, 0, !dbg !3519
  br i1 %cmp13, label %if.then.15, label %if.else.16, !dbg !3520

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19, !dbg !3521

if.else.16:                                       ; preds = %do.body.9
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !3523, !tbaa !1309
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !3525
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !3525, !tbaa !1445
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !3526
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8, !dbg !3526, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8, !dbg !3527, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !3528
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  %35 = bitcast %struct._object** %_py_decref_tmp10 to i8*, !dbg !3529
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !3529
  br label %do.cond.20, !dbg !3531

do.cond.20:                                       ; preds = %if.end.19
  br label %do.end.21, !dbg !3532

do.end.21:                                        ; preds = %do.cond.20
  br label %if.end.22, !dbg !3534

if.end.22:                                        ; preds = %do.end.21, %do.end
  %36 = load i32, i32* %ok, align 4, !dbg !3535, !tbaa !1321
  %tobool23 = icmp ne i32 %36, 0, !dbg !3535
  br i1 %tobool23, label %if.end.29, label %if.then.24, !dbg !3537

if.then.24:                                       ; preds = %if.end.22
  %37 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !3538, !tbaa !1321
  %tobool25 = icmp ne i32 %37, 0, !dbg !3538
  br i1 %tobool25, label %if.then.26, label %if.else.27, !dbg !3541

if.then.26:                                       ; preds = %if.then.24
  call void @PyErr_Print(), !dbg !3542
  br label %if.end.28, !dbg !3544

if.else.27:                                       ; preds = %if.then.24
  call void @PyErr_Clear(), !dbg !3545
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %38 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3547, !tbaa !1309
  call void @_sqlite3_result_error(%struct.sqlite3_context* %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0), i32 -1), !dbg !3548
  br label %if.end.29, !dbg !3549

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %39 = load i32, i32* %restore, align 4, !dbg !3550, !tbaa !1321
  %tobool30 = icmp ne i32 %39, 0, !dbg !3550
  br i1 %tobool30, label %if.then.31, label %if.end.32, !dbg !3552

if.then.31:                                       ; preds = %if.end.29
  %40 = load %struct._object*, %struct._object** %exception, align 8, !dbg !3553, !tbaa !1309
  %41 = load %struct._object*, %struct._object** %value, align 8, !dbg !3555, !tbaa !1309
  %42 = load %struct._object*, %struct._object** %tb, align 8, !dbg !3556, !tbaa !1309
  call void @PyErr_Restore(%struct._object* %40, %struct._object* %41, %struct._object* %42), !dbg !3557
  br label %if.end.32, !dbg !3558

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  br label %error, !dbg !3559

error:                                            ; preds = %if.end.32, %if.then
  %43 = load i32, i32* %threadstate, align 4, !dbg !3561, !tbaa !3221
  call void @PyGILState_Release(i32 %43), !dbg !3562
  %44 = bitcast i32* %threadstate to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %44) #2, !dbg !3563
  %45 = bitcast i32* %restore to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %45) #2, !dbg !3563
  %46 = bitcast %struct._object** %tb to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !3563
  %47 = bitcast %struct._object** %value to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !3563
  %48 = bitcast %struct._object** %exception to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !3563
  %49 = bitcast i32* %ok to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 4, i8* %49) #2, !dbg !3563
  %50 = bitcast %struct._object*** %aggregate_instance to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !3563
  %51 = bitcast %struct._object** %function_result to i8*, !dbg !3563
  call void @llvm.lifetime.end(i64 8, i8* %51) #2, !dbg !3563
  ret void, !dbg !3563
}

declare i8* @sqlite3_aggregate_context(%struct.sqlite3_context*, i32) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_create_function(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %narg = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !829, metadata !1313), !dbg !3564
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !830, metadata !1313), !dbg !3565
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !831, metadata !1313), !dbg !3566
  %0 = bitcast %struct._object** %func to i8*, !dbg !3567
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3567
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !832, metadata !1313), !dbg !3568
  %1 = bitcast i8** %name to i8*, !dbg !3569
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3569
  call void @llvm.dbg.declare(metadata i8** %name, metadata !833, metadata !1313), !dbg !3570
  %2 = bitcast i32* %narg to i8*, !dbg !3571
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !3571
  call void @llvm.dbg.declare(metadata i32* %narg, metadata !834, metadata !1313), !dbg !3572
  %3 = bitcast i32* %rc to i8*, !dbg !3573
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3573
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !835, metadata !1313), !dbg !3574
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3575, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %4), !dbg !3577
  %tobool = icmp ne i32 %call, 0, !dbg !3577
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3578

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3579, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %5), !dbg !3581
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3581
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3582

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3583
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3583

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3585, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !3587, !tbaa !1309
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @pysqlite_connection_create_function.kwlist, i32 0, i32 0), i8** %name, i32* %narg, %struct._object** %func), !dbg !3588
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3588
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !3589

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3590

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3592, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 1, !dbg !3593
  %9 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !3593, !tbaa !1401
  %10 = load i8*, i8** %name, align 8, !dbg !3594, !tbaa !1309
  %11 = load i32, i32* %narg, align 4, !dbg !3595, !tbaa !1321
  %12 = load %struct._object*, %struct._object** %func, align 8, !dbg !3596, !tbaa !1309
  %13 = bitcast %struct._object* %12 to i8*, !dbg !3597
  %call7 = call i32 @sqlite3_create_function(%struct.sqlite3* %9, i8* %10, i32 %11, i32 1, i8* %13, void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_func_callback, void (%struct.sqlite3_context*, i32, %struct.Mem**)* null, void (%struct.sqlite3_context*)* null), !dbg !3598
  store i32 %call7, i32* %rc, align 4, !dbg !3599, !tbaa !1321
  %14 = load i32, i32* %rc, align 4, !dbg !3600, !tbaa !1321
  %cmp = icmp ne i32 %14, 0, !dbg !3602
  br i1 %cmp, label %if.then.8, label %if.else, !dbg !3603

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !3604, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0)), !dbg !3606
  store %struct._object* null, %struct._object** %retval, !dbg !3607
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3607

if.else:                                          ; preds = %if.end.6
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3608, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %16, i32 0, i32 18, !dbg !3611
  %17 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !3611, !tbaa !1585
  %18 = load %struct._object*, %struct._object** %func, align 8, !dbg !3612, !tbaa !1309
  %call9 = call i32 @PyDict_SetItem(%struct._object* %17, %struct._object* %18, %struct._object* @_Py_NoneStruct), !dbg !3613
  %cmp10 = icmp eq i32 %call9, -1, !dbg !3614
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !3615

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !3616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3616

if.end.12:                                        ; preds = %if.else
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3617, !tbaa !1370
  %inc = add i64 %19, 1, !dbg !3617
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3617, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3618
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3618

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %20 = bitcast i32* %rc to i8*, !dbg !3619
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !3619
  %21 = bitcast i32* %narg to i8*, !dbg !3619
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !3619
  %22 = bitcast i8** %name to i8*, !dbg !3619
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !3619
  %23 = bitcast %struct._object** %func to i8*, !dbg !3619
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !3619
  %24 = load %struct._object*, %struct._object** %retval, !dbg !3619
  ret %struct._object* %24, !dbg !3619
}

declare i32 @sqlite3_create_function(%struct.sqlite3*, i8*, i32, i32, i8*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*)*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_create_aggregate(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %aggregate_class = alloca %struct._object*, align 8
  %n_arg = alloca i32, align 4
  %name = alloca i8*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !838, metadata !1313), !dbg !3620
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !839, metadata !1313), !dbg !3621
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !840, metadata !1313), !dbg !3622
  %0 = bitcast %struct._object** %aggregate_class to i8*, !dbg !3623
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3623
  call void @llvm.dbg.declare(metadata %struct._object** %aggregate_class, metadata !841, metadata !1313), !dbg !3624
  %1 = bitcast i32* %n_arg to i8*, !dbg !3625
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !3625
  call void @llvm.dbg.declare(metadata i32* %n_arg, metadata !842, metadata !1313), !dbg !3626
  %2 = bitcast i8** %name to i8*, !dbg !3627
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3627
  call void @llvm.dbg.declare(metadata i8** %name, metadata !843, metadata !1313), !dbg !3628
  %3 = bitcast i32* %rc to i8*, !dbg !3629
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3629
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !844, metadata !1313), !dbg !3630
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3631, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %4), !dbg !3633
  %tobool = icmp ne i32 %call, 0, !dbg !3633
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3634

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3635, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %5), !dbg !3637
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3637
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3638

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3639

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3641, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !3643, !tbaa !1309
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @pysqlite_connection_create_aggregate.kwlist, i32 0, i32 0), i8** %name, i32* %n_arg, %struct._object** %aggregate_class), !dbg !3644
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3644
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !3645

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3646
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3646

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3648, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 1, !dbg !3649
  %9 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !3649, !tbaa !1401
  %10 = load i8*, i8** %name, align 8, !dbg !3650, !tbaa !1309
  %11 = load i32, i32* %n_arg, align 4, !dbg !3651, !tbaa !1321
  %12 = load %struct._object*, %struct._object** %aggregate_class, align 8, !dbg !3652, !tbaa !1309
  %13 = bitcast %struct._object* %12 to i8*, !dbg !3653
  %call7 = call i32 @sqlite3_create_function(%struct.sqlite3* %9, i8* %10, i32 %11, i32 1, i8* %13, void (%struct.sqlite3_context*, i32, %struct.Mem**)* null, void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_step_callback, void (%struct.sqlite3_context*)* @_pysqlite_final_callback), !dbg !3654
  store i32 %call7, i32* %rc, align 4, !dbg !3655, !tbaa !1321
  %14 = load i32, i32* %rc, align 4, !dbg !3656, !tbaa !1321
  %cmp = icmp ne i32 %14, 0, !dbg !3658
  br i1 %cmp, label %if.then.8, label %if.else, !dbg !3659

if.then.8:                                        ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !3660, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)), !dbg !3662
  store %struct._object* null, %struct._object** %retval, !dbg !3663
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3663

if.else:                                          ; preds = %if.end.6
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3664, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %16, i32 0, i32 18, !dbg !3667
  %17 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !3667, !tbaa !1585
  %18 = load %struct._object*, %struct._object** %aggregate_class, align 8, !dbg !3668, !tbaa !1309
  %call9 = call i32 @PyDict_SetItem(%struct._object* %17, %struct._object* %18, %struct._object* @_Py_NoneStruct), !dbg !3669
  %cmp10 = icmp eq i32 %call9, -1, !dbg !3670
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !3671

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !3672
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3672

if.end.12:                                        ; preds = %if.else
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3673, !tbaa !1370
  %inc = add i64 %19, 1, !dbg !3673
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3673, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3674
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3674

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %20 = bitcast i32* %rc to i8*, !dbg !3675
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !3675
  %21 = bitcast i8** %name to i8*, !dbg !3675
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !3675
  %22 = bitcast i32* %n_arg to i8*, !dbg !3675
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !3675
  %23 = bitcast %struct._object** %aggregate_class to i8*, !dbg !3675
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !3675
  %24 = load %struct._object*, %struct._object** %retval, !dbg !3675
  ret %struct._object* %24, !dbg !3675
}

; Function Attrs: nounwind uwtable
define internal void @_pysqlite_step_callback(%struct.sqlite3_context* %context, i32 %argc, %struct.Mem** %params) #0 {
entry:
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %argc.addr = alloca i32, align 4
  %params.addr = alloca %struct.Mem**, align 8
  %args = alloca %struct._object*, align 8
  %function_result = alloca %struct._object*, align 8
  %aggregate_class = alloca %struct._object*, align 8
  %aggregate_instance = alloca %struct._object**, align 8
  %stepmethod = alloca %struct._object*, align 8
  %threadstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.sqlite3_context** %context.addr, metadata !1017, metadata !1313), !dbg !3676
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1018, metadata !1313), !dbg !3677
  store %struct.Mem** %params, %struct.Mem*** %params.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.Mem*** %params.addr, metadata !1019, metadata !1313), !dbg !3678
  %0 = bitcast %struct._object** %args to i8*, !dbg !3679
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3679
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !1020, metadata !1313), !dbg !3680
  %1 = bitcast %struct._object** %function_result to i8*, !dbg !3681
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3681
  call void @llvm.dbg.declare(metadata %struct._object** %function_result, metadata !1021, metadata !1313), !dbg !3682
  store %struct._object* null, %struct._object** %function_result, align 8, !dbg !3682, !tbaa !1309
  %2 = bitcast %struct._object** %aggregate_class to i8*, !dbg !3683
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3683
  call void @llvm.dbg.declare(metadata %struct._object** %aggregate_class, metadata !1022, metadata !1313), !dbg !3684
  %3 = bitcast %struct._object*** %aggregate_instance to i8*, !dbg !3685
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !3685
  call void @llvm.dbg.declare(metadata %struct._object*** %aggregate_instance, metadata !1023, metadata !1313), !dbg !3686
  %4 = bitcast %struct._object** %stepmethod to i8*, !dbg !3687
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !3687
  call void @llvm.dbg.declare(metadata %struct._object** %stepmethod, metadata !1024, metadata !1313), !dbg !3688
  store %struct._object* null, %struct._object** %stepmethod, align 8, !dbg !3688, !tbaa !1309
  %5 = bitcast i32* %threadstate to i8*, !dbg !3689
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !3689
  call void @llvm.dbg.declare(metadata i32* %threadstate, metadata !1025, metadata !1313), !dbg !3690
  %call = call i32 @PyGILState_Ensure(), !dbg !3691
  store i32 %call, i32* %threadstate, align 4, !dbg !3692, !tbaa !3221
  %6 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3693, !tbaa !1309
  %call1 = call i8* @sqlite3_user_data(%struct.sqlite3_context* %6), !dbg !3694
  %7 = bitcast i8* %call1 to %struct._object*, !dbg !3695
  store %struct._object* %7, %struct._object** %aggregate_class, align 8, !dbg !3696, !tbaa !1309
  %8 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3697, !tbaa !1309
  %call2 = call i8* @sqlite3_aggregate_context(%struct.sqlite3_context* %8, i32 8), !dbg !3698
  %9 = bitcast i8* %call2 to %struct._object**, !dbg !3699
  store %struct._object** %9, %struct._object*** %aggregate_instance, align 8, !dbg !3700, !tbaa !1309
  %10 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3701, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !3703, !tbaa !1309
  %cmp = icmp eq %struct._object* %11, null, !dbg !3704
  br i1 %cmp, label %if.then, label %if.end.9, !dbg !3705

if.then:                                          ; preds = %entry
  %12 = load %struct._object*, %struct._object** %aggregate_class, align 8, !dbg !3706, !tbaa !1309
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !3708
  %13 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3709, !tbaa !1309
  store %struct._object* %call3, %struct._object** %13, align 8, !dbg !3710, !tbaa !1309
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3711
  %tobool = icmp ne %struct._object* %call4, null, !dbg !3711
  br i1 %tobool, label %if.then.5, label %if.end.8, !dbg !3713

if.then.5:                                        ; preds = %if.then
  %14 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3714, !tbaa !1309
  store %struct._object* null, %struct._object** %14, align 8, !dbg !3716, !tbaa !1309
  %15 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !3717, !tbaa !1321
  %tobool6 = icmp ne i32 %15, 0, !dbg !3717
  br i1 %tobool6, label %if.then.7, label %if.else, !dbg !3719

if.then.7:                                        ; preds = %if.then.5
  call void @PyErr_Print(), !dbg !3720
  br label %if.end, !dbg !3722

if.else:                                          ; preds = %if.then.5
  call void @PyErr_Clear(), !dbg !3723
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %16 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3725, !tbaa !1309
  call void @_sqlite3_result_error(%struct.sqlite3_context* %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0), i32 -1), !dbg !3726
  br label %error, !dbg !3727

if.end.8:                                         ; preds = %if.then
  br label %if.end.9, !dbg !3728

if.end.9:                                         ; preds = %if.end.8, %entry
  %17 = load %struct._object**, %struct._object*** %aggregate_instance, align 8, !dbg !3729, !tbaa !1309
  %18 = load %struct._object*, %struct._object** %17, align 8, !dbg !3730, !tbaa !1309
  %call10 = call %struct._object* @PyObject_GetAttrString(%struct._object* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)), !dbg !3731
  store %struct._object* %call10, %struct._object** %stepmethod, align 8, !dbg !3732, !tbaa !1309
  %19 = load %struct._object*, %struct._object** %stepmethod, align 8, !dbg !3733, !tbaa !1309
  %tobool11 = icmp ne %struct._object* %19, null, !dbg !3733
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !3735

if.then.12:                                       ; preds = %if.end.9
  br label %error, !dbg !3736

if.end.13:                                        ; preds = %if.end.9
  %20 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3738, !tbaa !1309
  %21 = load i32, i32* %argc.addr, align 4, !dbg !3739, !tbaa !1321
  %22 = load %struct.Mem**, %struct.Mem*** %params.addr, align 8, !dbg !3740, !tbaa !1309
  %call14 = call %struct._object* @_pysqlite_build_py_params(%struct.sqlite3_context* %20, i32 %21, %struct.Mem** %22), !dbg !3741
  store %struct._object* %call14, %struct._object** %args, align 8, !dbg !3742, !tbaa !1309
  %23 = load %struct._object*, %struct._object** %args, align 8, !dbg !3743, !tbaa !1309
  %tobool15 = icmp ne %struct._object* %23, null, !dbg !3743
  br i1 %tobool15, label %if.end.17, label %if.then.16, !dbg !3745

if.then.16:                                       ; preds = %if.end.13
  br label %error, !dbg !3746

if.end.17:                                        ; preds = %if.end.13
  %24 = load %struct._object*, %struct._object** %stepmethod, align 8, !dbg !3748, !tbaa !1309
  %25 = load %struct._object*, %struct._object** %args, align 8, !dbg !3749, !tbaa !1309
  %call18 = call %struct._object* @PyObject_CallObject(%struct._object* %24, %struct._object* %25), !dbg !3750
  store %struct._object* %call18, %struct._object** %function_result, align 8, !dbg !3751, !tbaa !1309
  br label %do.body, !dbg !3752

do.body:                                          ; preds = %if.end.17
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3753
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !3753
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1026, metadata !1313), !dbg !3755
  %27 = load %struct._object*, %struct._object** %args, align 8, !dbg !3756, !tbaa !1309
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !3755, !tbaa !1309
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3757, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !3759
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !3760, !tbaa !1370
  %dec = add i64 %29, -1, !dbg !3760
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3760, !tbaa !1370
  %cmp19 = icmp ne i64 %dec, 0, !dbg !3761
  br i1 %cmp19, label %if.then.20, label %if.else.21, !dbg !3762

if.then.20:                                       ; preds = %do.body
  br label %if.end.22, !dbg !3763

if.else.21:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3765, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !3767
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3767, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !3768
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3768, !tbaa !1447
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3769, !tbaa !1309
  call void %32(%struct._object* %33), !dbg !3770
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3771
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !3771
  br label %do.cond, !dbg !3773

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !3774

do.end:                                           ; preds = %do.cond
  %35 = load %struct._object*, %struct._object** %function_result, align 8, !dbg !3776, !tbaa !1309
  %tobool23 = icmp ne %struct._object* %35, null, !dbg !3776
  br i1 %tobool23, label %if.end.29, label %if.then.24, !dbg !3778

if.then.24:                                       ; preds = %do.end
  %36 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !3779, !tbaa !1321
  %tobool25 = icmp ne i32 %36, 0, !dbg !3779
  br i1 %tobool25, label %if.then.26, label %if.else.27, !dbg !3782

if.then.26:                                       ; preds = %if.then.24
  call void @PyErr_Print(), !dbg !3783
  br label %if.end.28, !dbg !3785

if.else.27:                                       ; preds = %if.then.24
  call void @PyErr_Clear(), !dbg !3786
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %37 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8, !dbg !3788, !tbaa !1309
  call void @_sqlite3_result_error(%struct.sqlite3_context* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0), i32 -1), !dbg !3789
  br label %if.end.29, !dbg !3790

if.end.29:                                        ; preds = %if.end.28, %do.end
  br label %error, !dbg !3791

error:                                            ; preds = %if.end.29, %if.then.16, %if.then.12, %if.end
  br label %do.body.30, !dbg !3793

do.body.30:                                       ; preds = %error
  %38 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3794
  call void @llvm.lifetime.start(i64 8, i8* %38) #2, !dbg !3794
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1028, metadata !1313), !dbg !3796
  %39 = load %struct._object*, %struct._object** %stepmethod, align 8, !dbg !3797, !tbaa !1309
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3796, !tbaa !1309
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3798, !tbaa !1309
  %cmp31 = icmp ne %struct._object* %40, null, !dbg !3799
  br i1 %cmp31, label %if.then.32, label %if.end.45, !dbg !3800

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33, !dbg !3801

do.body.33:                                       ; preds = %if.then.32
  %41 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3803
  call void @llvm.lifetime.start(i64 8, i8* %41) #2, !dbg !3803
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !1030, metadata !1313), !dbg !3805
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3806, !tbaa !1309
  store %struct._object* %42, %struct._object** %_py_decref_tmp34, align 8, !dbg !3805, !tbaa !1309
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3807, !tbaa !1309
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !3809
  %44 = load i64, i64* %ob_refcnt35, align 8, !dbg !3810, !tbaa !1370
  %dec36 = add i64 %44, -1, !dbg !3810
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !3810, !tbaa !1370
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !3811
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !3812

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !3813

if.else.39:                                       ; preds = %do.body.33
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3815, !tbaa !1309
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !3817
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !3817, !tbaa !1445
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !3818
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !3818, !tbaa !1447
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3819, !tbaa !1309
  call void %47(%struct._object* %48), !dbg !3820
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %49 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3821
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !3821
  br label %do.cond.43, !dbg !3823

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !3824

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !3826

if.end.45:                                        ; preds = %do.end.44, %do.body.30
  %50 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3828
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !3828
  br label %do.cond.46, !dbg !3831

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !3832

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !3834

do.body.48:                                       ; preds = %do.end.47
  %51 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !3835
  call void @llvm.lifetime.start(i64 8, i8* %51) #2, !dbg !3835
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp49, metadata !1033, metadata !1313), !dbg !3837
  %52 = load %struct._object*, %struct._object** %function_result, align 8, !dbg !3838, !tbaa !1309
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3837, !tbaa !1309
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3839, !tbaa !1309
  %cmp50 = icmp ne %struct._object* %53, null, !dbg !3840
  br i1 %cmp50, label %if.then.51, label %if.end.64, !dbg !3841

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52, !dbg !3842

do.body.52:                                       ; preds = %if.then.51
  %54 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !3844
  call void @llvm.lifetime.start(i64 8, i8* %54) #2, !dbg !3844
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp53, metadata !1035, metadata !1313), !dbg !3846
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3847, !tbaa !1309
  store %struct._object* %55, %struct._object** %_py_decref_tmp53, align 8, !dbg !3846, !tbaa !1309
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !3848, !tbaa !1309
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !3850
  %57 = load i64, i64* %ob_refcnt54, align 8, !dbg !3851, !tbaa !1370
  %dec55 = add i64 %57, -1, !dbg !3851
  store i64 %dec55, i64* %ob_refcnt54, align 8, !dbg !3851, !tbaa !1370
  %cmp56 = icmp ne i64 %dec55, 0, !dbg !3852
  br i1 %cmp56, label %if.then.57, label %if.else.58, !dbg !3853

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61, !dbg !3854

if.else.58:                                       ; preds = %do.body.52
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !3856, !tbaa !1309
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !3858
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !3858, !tbaa !1445
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !3859
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8, !dbg !3859, !tbaa !1447
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8, !dbg !3860, !tbaa !1309
  call void %60(%struct._object* %61), !dbg !3861
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  %62 = bitcast %struct._object** %_py_decref_tmp53 to i8*, !dbg !3862
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !3862
  br label %do.cond.62, !dbg !3864

do.cond.62:                                       ; preds = %if.end.61
  br label %do.end.63, !dbg !3865

do.end.63:                                        ; preds = %do.cond.62
  br label %if.end.64, !dbg !3867

if.end.64:                                        ; preds = %do.end.63, %do.body.48
  %63 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !3869
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !3869
  br label %do.cond.65, !dbg !3870

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !3871

do.end.66:                                        ; preds = %do.cond.65
  %64 = load i32, i32* %threadstate, align 4, !dbg !3873, !tbaa !3221
  call void @PyGILState_Release(i32 %64), !dbg !3874
  %65 = bitcast i32* %threadstate to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !3875
  %66 = bitcast %struct._object** %stepmethod to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !3875
  %67 = bitcast %struct._object*** %aggregate_instance to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !3875
  %68 = bitcast %struct._object** %aggregate_class to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !3875
  %69 = bitcast %struct._object** %function_result to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !3875
  %70 = bitcast %struct._object** %args to i8*, !dbg !3875
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !3875
  ret void, !dbg !3875
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_call(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %sql = alloca %struct._object*, align 8
  %statement = alloca %struct.pysqlite_Statement*, align 8
  %weakref = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !850, metadata !1313), !dbg !3876
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !851, metadata !1313), !dbg !3877
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !852, metadata !1313), !dbg !3878
  %0 = bitcast %struct._object** %sql to i8*, !dbg !3879
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3879
  call void @llvm.dbg.declare(metadata %struct._object** %sql, metadata !853, metadata !1313), !dbg !3880
  %1 = bitcast %struct.pysqlite_Statement** %statement to i8*, !dbg !3881
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3881
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Statement** %statement, metadata !854, metadata !1313), !dbg !3882
  %2 = bitcast %struct._object** %weakref to i8*, !dbg !3883
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !3883
  call void @llvm.dbg.declare(metadata %struct._object** %weakref, metadata !855, metadata !1313), !dbg !3884
  %3 = bitcast i32* %rc to i8*, !dbg !3885
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !3885
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !856, metadata !1313), !dbg !3886
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3887, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %4), !dbg !3889
  %tobool = icmp ne i32 %call, 0, !dbg !3889
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3890

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3891, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %5), !dbg !3893
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3893
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3894

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3895
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3895

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3897, !tbaa !1309
  %call3 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct._object** %sql), !dbg !3899
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3899
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !3900

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3901

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3902, !tbaa !1309
  call void @_pysqlite_drop_unused_statement_references(%struct.pysqlite_Connection* %7), !dbg !3903
  %call7 = call %struct._object* @_PyObject_New(%struct._typeobject* @pysqlite_StatementType), !dbg !3904
  %8 = bitcast %struct._object* %call7 to %struct.pysqlite_Statement*, !dbg !3905
  store %struct.pysqlite_Statement* %8, %struct.pysqlite_Statement** %statement, align 8, !dbg !3906, !tbaa !1309
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3907, !tbaa !1309
  %tobool8 = icmp ne %struct.pysqlite_Statement* %9, null, !dbg !3907
  br i1 %tobool8, label %if.end.10, label %if.then.9, !dbg !3909

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !3910
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3910

if.end.10:                                        ; preds = %if.end.6
  %10 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3912, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %10, i32 0, i32 1, !dbg !3913
  store %struct.sqlite3* null, %struct.sqlite3** %db, align 8, !dbg !3914, !tbaa !3915
  %11 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3917, !tbaa !1309
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %11, i32 0, i32 2, !dbg !3918
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st, align 8, !dbg !3919, !tbaa !3920
  %12 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3921, !tbaa !1309
  %sql11 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %12, i32 0, i32 3, !dbg !3922
  store %struct._object* null, %struct._object** %sql11, align 8, !dbg !3923, !tbaa !3924
  %13 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3925, !tbaa !1309
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %13, i32 0, i32 4, !dbg !3926
  store i32 0, i32* %in_use, align 4, !dbg !3927, !tbaa !3928
  %14 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3929, !tbaa !1309
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %14, i32 0, i32 5, !dbg !3930
  store %struct._object* null, %struct._object** %in_weakreflist, align 8, !dbg !3931, !tbaa !3932
  %15 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3933, !tbaa !1309
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3934, !tbaa !1309
  %17 = load %struct._object*, %struct._object** %sql, align 8, !dbg !3935, !tbaa !1309
  %call12 = call i32 @pysqlite_statement_create(%struct.pysqlite_Statement* %15, %struct.pysqlite_Connection* %16, %struct._object* %17), !dbg !3936
  store i32 %call12, i32* %rc, align 4, !dbg !3937, !tbaa !1321
  %18 = load i32, i32* %rc, align 4, !dbg !3938, !tbaa !1321
  %cmp = icmp ne i32 %18, 0, !dbg !3940
  br i1 %cmp, label %if.then.13, label %if.end.24, !dbg !3941

if.then.13:                                       ; preds = %if.end.10
  %19 = load i32, i32* %rc, align 4, !dbg !3942, !tbaa !1321
  %cmp14 = icmp eq i32 %19, -100, !dbg !3945
  br i1 %cmp14, label %if.then.15, label %if.else, !dbg !3946

if.then.15:                                       ; preds = %if.then.13
  %20 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8, !dbg !3947, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0)), !dbg !3949
  br label %if.end.23, !dbg !3950

if.else:                                          ; preds = %if.then.13
  %21 = load i32, i32* %rc, align 4, !dbg !3951, !tbaa !1321
  %cmp16 = icmp eq i32 %21, -101, !dbg !3953
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !3954

if.then.17:                                       ; preds = %if.else
  %22 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8, !dbg !3955, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0)), !dbg !3957
  br label %if.end.22, !dbg !3958

if.else.18:                                       ; preds = %if.else
  %23 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3959, !tbaa !1309
  %call19 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %23), !dbg !3961
  %24 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3962, !tbaa !1309
  %db20 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %24, i32 0, i32 1, !dbg !3963
  %25 = load %struct.sqlite3*, %struct.sqlite3** %db20, align 8, !dbg !3963, !tbaa !1401
  %call21 = call i32 @_pysqlite_seterror(%struct.sqlite3* %25, %struct.sqlite3_stmt* null), !dbg !3964
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  br label %error, !dbg !3965

if.end.24:                                        ; preds = %if.end.10
  %26 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !3966, !tbaa !1309
  %27 = bitcast %struct.pysqlite_Statement* %26 to %struct._object*, !dbg !3967
  %call25 = call %struct._object* @PyWeakref_NewRef(%struct._object* %27, %struct._object* null), !dbg !3968
  store %struct._object* %call25, %struct._object** %weakref, align 8, !dbg !3969, !tbaa !1309
  %28 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !3970, !tbaa !1309
  %cmp26 = icmp eq %struct._object* %28, null, !dbg !3972
  br i1 %cmp26, label %if.then.27, label %if.end.28, !dbg !3973

if.then.27:                                       ; preds = %if.end.24
  br label %error, !dbg !3974

if.end.28:                                        ; preds = %if.end.24
  %29 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !3975, !tbaa !1309
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %29, i32 0, i32 12, !dbg !3976
  %30 = load %struct._object*, %struct._object** %statements, align 8, !dbg !3976, !tbaa !1364
  %31 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !3977, !tbaa !1309
  %call29 = call i32 @PyList_Append(%struct._object* %30, %struct._object* %31), !dbg !3978
  %cmp30 = icmp ne i32 %call29, 0, !dbg !3979
  br i1 %cmp30, label %if.then.31, label %if.end.36, !dbg !3980

if.then.31:                                       ; preds = %if.end.28
  br label %do.body, !dbg !3981

do.body:                                          ; preds = %if.then.31
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3982
  call void @llvm.lifetime.start(i64 8, i8* %32) #2, !dbg !3982
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !857, metadata !1313), !dbg !3984
  %33 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !3985, !tbaa !1309
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8, !dbg !3984, !tbaa !1309
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3986, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !3988
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !3989, !tbaa !1370
  %dec = add i64 %35, -1, !dbg !3989
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3989, !tbaa !1370
  %cmp32 = icmp ne i64 %dec, 0, !dbg !3990
  br i1 %cmp32, label %if.then.33, label %if.else.34, !dbg !3991

if.then.33:                                       ; preds = %do.body
  br label %if.end.35, !dbg !3992

if.else.34:                                       ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3994, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !3996
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3996, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !3997
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3997, !tbaa !1447
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3998, !tbaa !1309
  call void %38(%struct._object* %39), !dbg !3999
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4000
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !4000
  br label %do.cond, !dbg !4002

do.cond:                                          ; preds = %if.end.35
  br label %do.end, !dbg !4003

do.end:                                           ; preds = %do.cond
  br label %error, !dbg !4005

if.end.36:                                        ; preds = %if.end.28
  br label %do.body.37, !dbg !4006

do.body.37:                                       ; preds = %if.end.36
  %41 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !4007
  call void @llvm.lifetime.start(i64 8, i8* %41) #2, !dbg !4007
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp38, metadata !861, metadata !1313), !dbg !4009
  %42 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !4010, !tbaa !1309
  store %struct._object* %42, %struct._object** %_py_decref_tmp38, align 8, !dbg !4009, !tbaa !1309
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !4011, !tbaa !1309
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !4013
  %44 = load i64, i64* %ob_refcnt39, align 8, !dbg !4014, !tbaa !1370
  %dec40 = add i64 %44, -1, !dbg !4014
  store i64 %dec40, i64* %ob_refcnt39, align 8, !dbg !4014, !tbaa !1370
  %cmp41 = icmp ne i64 %dec40, 0, !dbg !4015
  br i1 %cmp41, label %if.then.42, label %if.else.43, !dbg !4016

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46, !dbg !4017

if.else.43:                                       ; preds = %do.body.37
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !4019, !tbaa !1309
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !4021
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !4021, !tbaa !1445
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !4022
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8, !dbg !4022, !tbaa !1447
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8, !dbg !4023, !tbaa !1309
  call void %47(%struct._object* %48), !dbg !4024
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  %49 = bitcast %struct._object** %_py_decref_tmp38 to i8*, !dbg !4025
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !4025
  br label %do.cond.47, !dbg !4027

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !4028

do.end.48:                                        ; preds = %do.cond.47
  %50 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !4030, !tbaa !1309
  %51 = bitcast %struct.pysqlite_Statement* %50 to %struct._object*, !dbg !4031
  store %struct._object* %51, %struct._object** %retval, !dbg !4032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4032

error:                                            ; preds = %do.end, %if.then.27, %if.end.23
  br label %do.body.49, !dbg !4033

do.body.49:                                       ; preds = %error
  %52 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !4034
  call void @llvm.lifetime.start(i64 8, i8* %52) #2, !dbg !4034
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !863, metadata !1313), !dbg !4036
  %53 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8, !dbg !4037, !tbaa !1309
  %54 = bitcast %struct.pysqlite_Statement* %53 to %struct._object*, !dbg !4038
  store %struct._object* %54, %struct._object** %_py_decref_tmp50, align 8, !dbg !4036, !tbaa !1309
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !4039, !tbaa !1309
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4041
  %56 = load i64, i64* %ob_refcnt51, align 8, !dbg !4042, !tbaa !1370
  %dec52 = add i64 %56, -1, !dbg !4042
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !4042, !tbaa !1370
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !4043
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !4044

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !4045

if.else.55:                                       ; preds = %do.body.49
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !4047, !tbaa !1309
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4049
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !4049, !tbaa !1445
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4050
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !4050, !tbaa !1447
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !4051, !tbaa !1309
  call void %59(%struct._object* %60), !dbg !4052
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %61 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !4053
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !4053
  br label %do.cond.59, !dbg !4054

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !4055

do.end.60:                                        ; preds = %do.cond.59
  store %struct._object* null, %struct._object** %retval, !dbg !4057
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4057

cleanup:                                          ; preds = %do.end.60, %do.end.48, %if.then.9, %if.then.5, %if.then
  %62 = bitcast i32* %rc to i8*, !dbg !4058
  call void @llvm.lifetime.end(i64 4, i8* %62) #2, !dbg !4058
  %63 = bitcast %struct._object** %weakref to i8*, !dbg !4058
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !4058
  %64 = bitcast %struct.pysqlite_Statement** %statement to i8*, !dbg !4058
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4058
  %65 = bitcast %struct._object** %sql to i8*, !dbg !4058
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !4058
  %66 = load %struct._object*, %struct._object** %retval, !dbg !4058
  ret %struct._object* %66, !dbg !4058
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @_pysqlite_drop_unused_statement_references(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %new_list = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1068, metadata !1313), !dbg !4059
  %0 = bitcast %struct._object** %new_list to i8*, !dbg !4060
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4060
  call void @llvm.dbg.declare(metadata %struct._object** %new_list, metadata !1069, metadata !1313), !dbg !4061
  %1 = bitcast %struct._object** %weakref to i8*, !dbg !4062
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4062
  call void @llvm.dbg.declare(metadata %struct._object** %weakref, metadata !1070, metadata !1313), !dbg !4063
  %2 = bitcast i32* %i to i8*, !dbg !4064
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !4064
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1071, metadata !1313), !dbg !4065
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4066, !tbaa !1309
  %created_statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 14, !dbg !4068
  %4 = load i32, i32* %created_statements, align 4, !dbg !4069, !tbaa !1497
  %inc = add i32 %4, 1, !dbg !4069
  store i32 %inc, i32* %created_statements, align 4, !dbg !4069, !tbaa !1497
  %cmp = icmp slt i32 %4, 200, !dbg !4070
  br i1 %cmp, label %if.then, label %if.end, !dbg !4071

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4072

if.end:                                           ; preds = %entry
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4074, !tbaa !1309
  %created_statements1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 14, !dbg !4075
  store i32 0, i32* %created_statements1, align 4, !dbg !4076, !tbaa !1497
  %call = call %struct._object* @PyList_New(i64 0), !dbg !4077
  store %struct._object* %call, %struct._object** %new_list, align 8, !dbg !4078, !tbaa !1309
  %6 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !4079, !tbaa !1309
  %tobool = icmp ne %struct._object* %6, null, !dbg !4079
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !4081

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4082

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4084, !tbaa !1321
  br label %for.cond, !dbg !4085

for.cond:                                         ; preds = %for.inc, %if.end.3
  %7 = load i32, i32* %i, align 4, !dbg !4086, !tbaa !1321
  %conv = sext i32 %7 to i64, !dbg !4086
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4089, !tbaa !1309
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 12, !dbg !4090
  %9 = load %struct._object*, %struct._object** %statements, align 8, !dbg !4090, !tbaa !1364
  %call4 = call i64 @PyList_Size(%struct._object* %9), !dbg !4091
  %cmp5 = icmp slt i64 %conv, %call4, !dbg !4092
  br i1 %cmp5, label %for.body, label %for.end, !dbg !4093

for.body:                                         ; preds = %for.cond
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4094, !tbaa !1309
  %statements7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 12, !dbg !4095
  %11 = load %struct._object*, %struct._object** %statements7, align 8, !dbg !4095, !tbaa !1364
  %12 = load i32, i32* %i, align 4, !dbg !4096, !tbaa !1321
  %conv8 = sext i32 %12 to i64, !dbg !4096
  %call9 = call %struct._object* @PyList_GetItem(%struct._object* %11, i64 %conv8), !dbg !4097
  store %struct._object* %call9, %struct._object** %weakref, align 8, !dbg !4098, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !4099, !tbaa !1309
  %call10 = call %struct._object* @PyWeakref_GetObject(%struct._object* %13), !dbg !4100
  %cmp11 = icmp ne %struct._object* %call10, @_Py_NoneStruct, !dbg !4101
  br i1 %cmp11, label %if.then.13, label %if.end.23, !dbg !4102

if.then.13:                                       ; preds = %for.body
  %14 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !4103, !tbaa !1309
  %15 = load %struct._object*, %struct._object** %weakref, align 8, !dbg !4104, !tbaa !1309
  %call14 = call i32 @PyList_Append(%struct._object* %14, %struct._object* %15), !dbg !4105
  %cmp15 = icmp ne i32 %call14, 0, !dbg !4106
  br i1 %cmp15, label %if.then.17, label %if.end.22, !dbg !4107

if.then.17:                                       ; preds = %if.then.13
  br label %do.body, !dbg !4108

do.body:                                          ; preds = %if.then.17
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4109
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !4109
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1072, metadata !1313), !dbg !4111
  %17 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !4112, !tbaa !1309
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8, !dbg !4111, !tbaa !1309
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4113, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !4115
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !4116, !tbaa !1370
  %dec = add i64 %19, -1, !dbg !4116
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4116, !tbaa !1370
  %cmp18 = icmp ne i64 %dec, 0, !dbg !4117
  br i1 %cmp18, label %if.then.20, label %if.else, !dbg !4118

if.then.20:                                       ; preds = %do.body
  br label %if.end.21, !dbg !4119

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4121, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !4123
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4123, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4, !dbg !4124
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4124, !tbaa !1447
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4125, !tbaa !1309
  call void %22(%struct._object* %23), !dbg !4126
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  %24 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4127
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !4127
  br label %do.cond, !dbg !4129

do.cond:                                          ; preds = %if.end.21
  br label %do.end, !dbg !4130

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4132

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23, !dbg !4133

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc, !dbg !4134

for.inc:                                          ; preds = %if.end.23
  %25 = load i32, i32* %i, align 4, !dbg !4135, !tbaa !1321
  %inc24 = add i32 %25, 1, !dbg !4135
  store i32 %inc24, i32* %i, align 4, !dbg !4135, !tbaa !1321
  br label %for.cond, !dbg !4136

for.end:                                          ; preds = %for.cond
  br label %do.body.25, !dbg !4137

do.body.25:                                       ; preds = %for.end
  %26 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4138
  call void @llvm.lifetime.start(i64 8, i8* %26) #2, !dbg !4138
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !1081, metadata !1313), !dbg !4140
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4141, !tbaa !1309
  %statements27 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 12, !dbg !4142
  %28 = load %struct._object*, %struct._object** %statements27, align 8, !dbg !4142, !tbaa !1364
  store %struct._object* %28, %struct._object** %_py_decref_tmp26, align 8, !dbg !4140, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4143, !tbaa !1309
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4145
  %30 = load i64, i64* %ob_refcnt28, align 8, !dbg !4146, !tbaa !1370
  %dec29 = add i64 %30, -1, !dbg !4146
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !4146, !tbaa !1370
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !4147
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !4148

if.then.32:                                       ; preds = %do.body.25
  br label %if.end.36, !dbg !4149

if.else.33:                                       ; preds = %do.body.25
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4151, !tbaa !1309
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4153
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !4153, !tbaa !1445
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4154
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !4154, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !4155, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !4156
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %35 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !4157
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !4157
  br label %do.cond.37, !dbg !4159

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !4160

do.end.38:                                        ; preds = %do.cond.37
  %36 = load %struct._object*, %struct._object** %new_list, align 8, !dbg !4162, !tbaa !1309
  %37 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4163, !tbaa !1309
  %statements39 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %37, i32 0, i32 12, !dbg !4164
  store %struct._object* %36, %struct._object** %statements39, align 8, !dbg !4165, !tbaa !1364
  store i32 0, i32* %cleanup.dest.slot, !dbg !4166
  br label %cleanup, !dbg !4166

cleanup:                                          ; preds = %do.end.38, %do.end, %if.then.2, %if.then
  %38 = bitcast i32* %i to i8*, !dbg !4167
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !4167
  %39 = bitcast %struct._object** %weakref to i8*, !dbg !4167
  call void @llvm.lifetime.end(i64 8, i8* %39) #2, !dbg !4167
  %40 = bitcast %struct._object** %new_list to i8*, !dbg !4167
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !4167
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4166

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare i32 @pysqlite_statement_create(%struct.pysqlite_Statement*, %struct.pysqlite_Connection*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_execute(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %cursor = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !867, metadata !1313), !dbg !4169
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !868, metadata !1313), !dbg !4170
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !869, metadata !1313), !dbg !4171
  %0 = bitcast %struct._object** %cursor to i8*, !dbg !4172
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4172
  call void @llvm.dbg.declare(metadata %struct._object** %cursor, metadata !870, metadata !1313), !dbg !4173
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4173, !tbaa !1309
  %1 = bitcast %struct._object** %result to i8*, !dbg !4174
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4174
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !871, metadata !1313), !dbg !4175
  store %struct._object* null, %struct._object** %result, align 8, !dbg !4175, !tbaa !1309
  %2 = bitcast %struct._object** %method to i8*, !dbg !4176
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4176
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !872, metadata !1313), !dbg !4177
  store %struct._object* null, %struct._object** %method, align 8, !dbg !4177, !tbaa !1309
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4178, !tbaa !1309
  %4 = bitcast %struct.pysqlite_Connection* %3 to %struct._object*, !dbg !4179
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %4, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !4180
  store %struct._object* %call, %struct._object** %cursor, align 8, !dbg !4181, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4182, !tbaa !1309
  %tobool = icmp ne %struct._object* %5, null, !dbg !4182
  br i1 %tobool, label %if.end, label %if.then, !dbg !4184

if.then:                                          ; preds = %entry
  br label %error, !dbg !4185

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4187, !tbaa !1309
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)), !dbg !4188
  store %struct._object* %call1, %struct._object** %method, align 8, !dbg !4189, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !4190, !tbaa !1309
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !4190
  br i1 %tobool2, label %if.end.12, label %if.then.3, !dbg !4191

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !4192

do.body:                                          ; preds = %if.then.3
  %8 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4193
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4193
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !873, metadata !1313), !dbg !4195
  %9 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4196, !tbaa !1309
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !4195, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4197, !tbaa !1309
  %cmp = icmp ne %struct._object* %10, null, !dbg !4198
  br i1 %cmp, label %if.then.4, label %if.end.9, !dbg !4199

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4200, !tbaa !1309
  br label %do.body.5, !dbg !4202

do.body.5:                                        ; preds = %if.then.4
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4203
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4203
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !877, metadata !1313), !dbg !4205
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4206, !tbaa !1309
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4205, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4207, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4209
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4210, !tbaa !1370
  %dec = add i64 %14, -1, !dbg !4210
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4210, !tbaa !1370
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4211
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !4212

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !4213

if.else:                                          ; preds = %do.body.5
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4215, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4217
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4217, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4218
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4218, !tbaa !1447
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4219, !tbaa !1309
  call void %17(%struct._object* %18), !dbg !4220
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4221
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !4221
  br label %do.cond, !dbg !4223

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4224

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !4226

if.end.9:                                         ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4228
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4228
  br label %do.cond.10, !dbg !4231

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !4232

do.end.11:                                        ; preds = %do.cond.10
  br label %error, !dbg !4234

if.end.12:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %method, align 8, !dbg !4235, !tbaa !1309
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4236, !tbaa !1309
  %call13 = call %struct._object* @PyObject_CallObject(%struct._object* %21, %struct._object* %22), !dbg !4237
  store %struct._object* %call13, %struct._object** %result, align 8, !dbg !4238, !tbaa !1309
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !4239, !tbaa !1309
  %tobool14 = icmp ne %struct._object* %23, null, !dbg !4239
  br i1 %tobool14, label %if.end.35, label %if.then.15, !dbg !4240

if.then.15:                                       ; preds = %if.end.12
  br label %do.body.16, !dbg !4241

do.body.16:                                       ; preds = %if.then.15
  %24 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4242
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !4242
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp17, metadata !881, metadata !1313), !dbg !4244
  %25 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4245, !tbaa !1309
  store %struct._object* %25, %struct._object** %_py_tmp17, align 8, !dbg !4244, !tbaa !1309
  %26 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4246, !tbaa !1309
  %cmp18 = icmp ne %struct._object* %26, null, !dbg !4247
  br i1 %cmp18, label %if.then.19, label %if.end.32, !dbg !4248

if.then.19:                                       ; preds = %do.body.16
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4249, !tbaa !1309
  br label %do.body.20, !dbg !4251

do.body.20:                                       ; preds = %if.then.19
  %27 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4252
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !4252
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !885, metadata !1313), !dbg !4254
  %28 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4255, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8, !dbg !4254, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4256, !tbaa !1309
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4258
  %30 = load i64, i64* %ob_refcnt22, align 8, !dbg !4259, !tbaa !1370
  %dec23 = add i64 %30, -1, !dbg !4259
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !4259, !tbaa !1370
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !4260
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !4261

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !4262

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4264, !tbaa !1309
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4266
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !4266, !tbaa !1445
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4267
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !4267, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4268, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !4269
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4270
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !4270
  br label %do.cond.30, !dbg !4272

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !4273

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32, !dbg !4275

if.end.32:                                        ; preds = %do.end.31, %do.body.16
  %36 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4277
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4277
  br label %do.cond.33, !dbg !4280

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !4281

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !4283

if.end.35:                                        ; preds = %do.end.34, %if.end.12
  br label %error, !dbg !4284

error:                                            ; preds = %if.end.35, %do.end.11, %if.then
  br label %do.body.36, !dbg !4286

do.body.36:                                       ; preds = %error
  %37 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4287
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !4287
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !889, metadata !1313), !dbg !4289
  %38 = load %struct._object*, %struct._object** %result, align 8, !dbg !4290, !tbaa !1309
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4289, !tbaa !1309
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4291, !tbaa !1309
  %cmp37 = icmp ne %struct._object* %39, null, !dbg !4292
  br i1 %cmp37, label %if.then.38, label %if.end.51, !dbg !4293

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39, !dbg !4294

do.body.39:                                       ; preds = %if.then.38
  %40 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4296
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !4296
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !891, metadata !1313), !dbg !4298
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4299, !tbaa !1309
  store %struct._object* %41, %struct._object** %_py_decref_tmp40, align 8, !dbg !4298, !tbaa !1309
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4300, !tbaa !1309
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !4302
  %43 = load i64, i64* %ob_refcnt41, align 8, !dbg !4303, !tbaa !1370
  %dec42 = add i64 %43, -1, !dbg !4303
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !4303, !tbaa !1370
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !4304
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !4305

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !4306

if.else.45:                                       ; preds = %do.body.39
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4308, !tbaa !1309
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !4310
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !4310, !tbaa !1445
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !4311
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !4311, !tbaa !1447
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4312, !tbaa !1309
  call void %46(%struct._object* %47), !dbg !4313
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %48 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4314
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !4314
  br label %do.cond.49, !dbg !4316

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !4317

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51, !dbg !4319

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  %49 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4321
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !4321
  br label %do.cond.52, !dbg !4324

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !4325

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54, !dbg !4327

do.body.54:                                       ; preds = %do.end.53
  %50 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4328
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !4328
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp55, metadata !894, metadata !1313), !dbg !4330
  %51 = load %struct._object*, %struct._object** %method, align 8, !dbg !4331, !tbaa !1309
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4330, !tbaa !1309
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4332, !tbaa !1309
  %cmp56 = icmp ne %struct._object* %52, null, !dbg !4333
  br i1 %cmp56, label %if.then.57, label %if.end.70, !dbg !4334

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58, !dbg !4335

do.body.58:                                       ; preds = %if.then.57
  %53 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4337
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !4337
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !896, metadata !1313), !dbg !4339
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4340, !tbaa !1309
  store %struct._object* %54, %struct._object** %_py_decref_tmp59, align 8, !dbg !4339, !tbaa !1309
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4341, !tbaa !1309
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4343
  %56 = load i64, i64* %ob_refcnt60, align 8, !dbg !4344, !tbaa !1370
  %dec61 = add i64 %56, -1, !dbg !4344
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !4344, !tbaa !1370
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !4345
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !4346

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !4347

if.else.64:                                       ; preds = %do.body.58
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4349, !tbaa !1309
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4351
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !4351, !tbaa !1445
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4352
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !4352, !tbaa !1447
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4353, !tbaa !1309
  call void %59(%struct._object* %60), !dbg !4354
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %61 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4355
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !4355
  br label %do.cond.68, !dbg !4357

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !4358

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !4360

if.end.70:                                        ; preds = %do.end.69, %do.body.54
  %62 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4362
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !4362
  br label %do.cond.71, !dbg !4363

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !4364

do.end.72:                                        ; preds = %do.cond.71
  %63 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4366, !tbaa !1309
  %64 = bitcast %struct._object** %method to i8*, !dbg !4367
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4367
  %65 = bitcast %struct._object** %result to i8*, !dbg !4367
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !4367
  %66 = bitcast %struct._object** %cursor to i8*, !dbg !4367
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !4367
  ret %struct._object* %63, !dbg !4368
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_executemany(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %cursor = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !901, metadata !1313), !dbg !4369
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !902, metadata !1313), !dbg !4370
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !903, metadata !1313), !dbg !4371
  %0 = bitcast %struct._object** %cursor to i8*, !dbg !4372
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4372
  call void @llvm.dbg.declare(metadata %struct._object** %cursor, metadata !904, metadata !1313), !dbg !4373
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4373, !tbaa !1309
  %1 = bitcast %struct._object** %result to i8*, !dbg !4374
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4374
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !905, metadata !1313), !dbg !4375
  store %struct._object* null, %struct._object** %result, align 8, !dbg !4375, !tbaa !1309
  %2 = bitcast %struct._object** %method to i8*, !dbg !4376
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4376
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !906, metadata !1313), !dbg !4377
  store %struct._object* null, %struct._object** %method, align 8, !dbg !4377, !tbaa !1309
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4378, !tbaa !1309
  %4 = bitcast %struct.pysqlite_Connection* %3 to %struct._object*, !dbg !4379
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %4, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !4380
  store %struct._object* %call, %struct._object** %cursor, align 8, !dbg !4381, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4382, !tbaa !1309
  %tobool = icmp ne %struct._object* %5, null, !dbg !4382
  br i1 %tobool, label %if.end, label %if.then, !dbg !4384

if.then:                                          ; preds = %entry
  br label %error, !dbg !4385

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4387, !tbaa !1309
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)), !dbg !4388
  store %struct._object* %call1, %struct._object** %method, align 8, !dbg !4389, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !4390, !tbaa !1309
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !4390
  br i1 %tobool2, label %if.end.12, label %if.then.3, !dbg !4391

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !4392

do.body:                                          ; preds = %if.then.3
  %8 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4393
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4393
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !907, metadata !1313), !dbg !4395
  %9 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4396, !tbaa !1309
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !4395, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4397, !tbaa !1309
  %cmp = icmp ne %struct._object* %10, null, !dbg !4398
  br i1 %cmp, label %if.then.4, label %if.end.9, !dbg !4399

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4400, !tbaa !1309
  br label %do.body.5, !dbg !4402

do.body.5:                                        ; preds = %if.then.4
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4403
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4403
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !911, metadata !1313), !dbg !4405
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4406, !tbaa !1309
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4405, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4407, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4409
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4410, !tbaa !1370
  %dec = add i64 %14, -1, !dbg !4410
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4410, !tbaa !1370
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4411
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !4412

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !4413

if.else:                                          ; preds = %do.body.5
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4415, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4417
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4417, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4418
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4418, !tbaa !1447
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4419, !tbaa !1309
  call void %17(%struct._object* %18), !dbg !4420
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4421
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !4421
  br label %do.cond, !dbg !4423

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4424

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !4426

if.end.9:                                         ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4428
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4428
  br label %do.cond.10, !dbg !4431

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !4432

do.end.11:                                        ; preds = %do.cond.10
  br label %error, !dbg !4434

if.end.12:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %method, align 8, !dbg !4435, !tbaa !1309
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4436, !tbaa !1309
  %call13 = call %struct._object* @PyObject_CallObject(%struct._object* %21, %struct._object* %22), !dbg !4437
  store %struct._object* %call13, %struct._object** %result, align 8, !dbg !4438, !tbaa !1309
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !4439, !tbaa !1309
  %tobool14 = icmp ne %struct._object* %23, null, !dbg !4439
  br i1 %tobool14, label %if.end.35, label %if.then.15, !dbg !4440

if.then.15:                                       ; preds = %if.end.12
  br label %do.body.16, !dbg !4441

do.body.16:                                       ; preds = %if.then.15
  %24 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4442
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !4442
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp17, metadata !915, metadata !1313), !dbg !4444
  %25 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4445, !tbaa !1309
  store %struct._object* %25, %struct._object** %_py_tmp17, align 8, !dbg !4444, !tbaa !1309
  %26 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4446, !tbaa !1309
  %cmp18 = icmp ne %struct._object* %26, null, !dbg !4447
  br i1 %cmp18, label %if.then.19, label %if.end.32, !dbg !4448

if.then.19:                                       ; preds = %do.body.16
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4449, !tbaa !1309
  br label %do.body.20, !dbg !4451

do.body.20:                                       ; preds = %if.then.19
  %27 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4452
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !4452
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !919, metadata !1313), !dbg !4454
  %28 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4455, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8, !dbg !4454, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4456, !tbaa !1309
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4458
  %30 = load i64, i64* %ob_refcnt22, align 8, !dbg !4459, !tbaa !1370
  %dec23 = add i64 %30, -1, !dbg !4459
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !4459, !tbaa !1370
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !4460
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !4461

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !4462

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4464, !tbaa !1309
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4466
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !4466, !tbaa !1445
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4467
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !4467, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4468, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !4469
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4470
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !4470
  br label %do.cond.30, !dbg !4472

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !4473

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32, !dbg !4475

if.end.32:                                        ; preds = %do.end.31, %do.body.16
  %36 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4477
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4477
  br label %do.cond.33, !dbg !4480

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !4481

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !4483

if.end.35:                                        ; preds = %do.end.34, %if.end.12
  br label %error, !dbg !4484

error:                                            ; preds = %if.end.35, %do.end.11, %if.then
  br label %do.body.36, !dbg !4486

do.body.36:                                       ; preds = %error
  %37 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4487
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !4487
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !923, metadata !1313), !dbg !4489
  %38 = load %struct._object*, %struct._object** %result, align 8, !dbg !4490, !tbaa !1309
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4489, !tbaa !1309
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4491, !tbaa !1309
  %cmp37 = icmp ne %struct._object* %39, null, !dbg !4492
  br i1 %cmp37, label %if.then.38, label %if.end.51, !dbg !4493

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39, !dbg !4494

do.body.39:                                       ; preds = %if.then.38
  %40 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4496
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !4496
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !925, metadata !1313), !dbg !4498
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4499, !tbaa !1309
  store %struct._object* %41, %struct._object** %_py_decref_tmp40, align 8, !dbg !4498, !tbaa !1309
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4500, !tbaa !1309
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !4502
  %43 = load i64, i64* %ob_refcnt41, align 8, !dbg !4503, !tbaa !1370
  %dec42 = add i64 %43, -1, !dbg !4503
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !4503, !tbaa !1370
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !4504
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !4505

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !4506

if.else.45:                                       ; preds = %do.body.39
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4508, !tbaa !1309
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !4510
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !4510, !tbaa !1445
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !4511
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !4511, !tbaa !1447
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4512, !tbaa !1309
  call void %46(%struct._object* %47), !dbg !4513
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %48 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4514
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !4514
  br label %do.cond.49, !dbg !4516

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !4517

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51, !dbg !4519

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  %49 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4521
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !4521
  br label %do.cond.52, !dbg !4524

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !4525

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54, !dbg !4527

do.body.54:                                       ; preds = %do.end.53
  %50 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4528
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !4528
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp55, metadata !928, metadata !1313), !dbg !4530
  %51 = load %struct._object*, %struct._object** %method, align 8, !dbg !4531, !tbaa !1309
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4530, !tbaa !1309
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4532, !tbaa !1309
  %cmp56 = icmp ne %struct._object* %52, null, !dbg !4533
  br i1 %cmp56, label %if.then.57, label %if.end.70, !dbg !4534

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58, !dbg !4535

do.body.58:                                       ; preds = %if.then.57
  %53 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4537
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !4537
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !930, metadata !1313), !dbg !4539
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4540, !tbaa !1309
  store %struct._object* %54, %struct._object** %_py_decref_tmp59, align 8, !dbg !4539, !tbaa !1309
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4541, !tbaa !1309
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4543
  %56 = load i64, i64* %ob_refcnt60, align 8, !dbg !4544, !tbaa !1370
  %dec61 = add i64 %56, -1, !dbg !4544
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !4544, !tbaa !1370
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !4545
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !4546

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !4547

if.else.64:                                       ; preds = %do.body.58
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4549, !tbaa !1309
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4551
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !4551, !tbaa !1445
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4552
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !4552, !tbaa !1447
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4553, !tbaa !1309
  call void %59(%struct._object* %60), !dbg !4554
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %61 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4555
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !4555
  br label %do.cond.68, !dbg !4557

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !4558

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !4560

if.end.70:                                        ; preds = %do.end.69, %do.body.54
  %62 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4562
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !4562
  br label %do.cond.71, !dbg !4563

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !4564

do.end.72:                                        ; preds = %do.cond.71
  %63 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4566, !tbaa !1309
  %64 = bitcast %struct._object** %method to i8*, !dbg !4567
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4567
  %65 = bitcast %struct._object** %result to i8*, !dbg !4567
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !4567
  %66 = bitcast %struct._object** %cursor to i8*, !dbg !4567
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !4567
  ret %struct._object* %63, !dbg !4568
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_executescript(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %cursor = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp17 = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !935, metadata !1313), !dbg !4569
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !936, metadata !1313), !dbg !4570
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !937, metadata !1313), !dbg !4571
  %0 = bitcast %struct._object** %cursor to i8*, !dbg !4572
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4572
  call void @llvm.dbg.declare(metadata %struct._object** %cursor, metadata !938, metadata !1313), !dbg !4573
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4573, !tbaa !1309
  %1 = bitcast %struct._object** %result to i8*, !dbg !4574
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4574
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !939, metadata !1313), !dbg !4575
  store %struct._object* null, %struct._object** %result, align 8, !dbg !4575, !tbaa !1309
  %2 = bitcast %struct._object** %method to i8*, !dbg !4576
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4576
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !940, metadata !1313), !dbg !4577
  store %struct._object* null, %struct._object** %method, align 8, !dbg !4577, !tbaa !1309
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4578, !tbaa !1309
  %4 = bitcast %struct.pysqlite_Connection* %3 to %struct._object*, !dbg !4579
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %4, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !4580
  store %struct._object* %call, %struct._object** %cursor, align 8, !dbg !4581, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4582, !tbaa !1309
  %tobool = icmp ne %struct._object* %5, null, !dbg !4582
  br i1 %tobool, label %if.end, label %if.then, !dbg !4584

if.then:                                          ; preds = %entry
  br label %error, !dbg !4585

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4587, !tbaa !1309
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0)), !dbg !4588
  store %struct._object* %call1, %struct._object** %method, align 8, !dbg !4589, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !4590, !tbaa !1309
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !4590
  br i1 %tobool2, label %if.end.12, label %if.then.3, !dbg !4591

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !4592

do.body:                                          ; preds = %if.then.3
  %8 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4593
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !4593
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !941, metadata !1313), !dbg !4595
  %9 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4596, !tbaa !1309
  store %struct._object* %9, %struct._object** %_py_tmp, align 8, !dbg !4595, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4597, !tbaa !1309
  %cmp = icmp ne %struct._object* %10, null, !dbg !4598
  br i1 %cmp, label %if.then.4, label %if.end.9, !dbg !4599

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4600, !tbaa !1309
  br label %do.body.5, !dbg !4602

do.body.5:                                        ; preds = %if.then.4
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4603
  call void @llvm.lifetime.start(i64 8, i8* %11) #2, !dbg !4603
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !945, metadata !1313), !dbg !4605
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4606, !tbaa !1309
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !4605, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4607, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !4609
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !4610, !tbaa !1370
  %dec = add i64 %14, -1, !dbg !4610
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4610, !tbaa !1370
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4611
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !4612

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8, !dbg !4613

if.else:                                          ; preds = %do.body.5
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4615, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !4617
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4617, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !4618
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4618, !tbaa !1447
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4619, !tbaa !1309
  call void %17(%struct._object* %18), !dbg !4620
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4621
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !4621
  br label %do.cond, !dbg !4623

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !4624

do.end:                                           ; preds = %do.cond
  br label %if.end.9, !dbg !4626

if.end.9:                                         ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4628
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !4628
  br label %do.cond.10, !dbg !4631

do.cond.10:                                       ; preds = %if.end.9
  br label %do.end.11, !dbg !4632

do.end.11:                                        ; preds = %do.cond.10
  br label %error, !dbg !4634

if.end.12:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %method, align 8, !dbg !4635, !tbaa !1309
  %22 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4636, !tbaa !1309
  %call13 = call %struct._object* @PyObject_CallObject(%struct._object* %21, %struct._object* %22), !dbg !4637
  store %struct._object* %call13, %struct._object** %result, align 8, !dbg !4638, !tbaa !1309
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !4639, !tbaa !1309
  %tobool14 = icmp ne %struct._object* %23, null, !dbg !4639
  br i1 %tobool14, label %if.end.35, label %if.then.15, !dbg !4640

if.then.15:                                       ; preds = %if.end.12
  br label %do.body.16, !dbg !4641

do.body.16:                                       ; preds = %if.then.15
  %24 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4642
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !4642
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp17, metadata !949, metadata !1313), !dbg !4644
  %25 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4645, !tbaa !1309
  store %struct._object* %25, %struct._object** %_py_tmp17, align 8, !dbg !4644, !tbaa !1309
  %26 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4646, !tbaa !1309
  %cmp18 = icmp ne %struct._object* %26, null, !dbg !4647
  br i1 %cmp18, label %if.then.19, label %if.end.32, !dbg !4648

if.then.19:                                       ; preds = %do.body.16
  store %struct._object* null, %struct._object** %cursor, align 8, !dbg !4649, !tbaa !1309
  br label %do.body.20, !dbg !4651

do.body.20:                                       ; preds = %if.then.19
  %27 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4652
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !4652
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp21, metadata !953, metadata !1313), !dbg !4654
  %28 = load %struct._object*, %struct._object** %_py_tmp17, align 8, !dbg !4655, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp21, align 8, !dbg !4654, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4656, !tbaa !1309
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4658
  %30 = load i64, i64* %ob_refcnt22, align 8, !dbg !4659, !tbaa !1370
  %dec23 = add i64 %30, -1, !dbg !4659
  store i64 %dec23, i64* %ob_refcnt22, align 8, !dbg !4659, !tbaa !1370
  %cmp24 = icmp ne i64 %dec23, 0, !dbg !4660
  br i1 %cmp24, label %if.then.25, label %if.else.26, !dbg !4661

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29, !dbg !4662

if.else.26:                                       ; preds = %do.body.20
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4664, !tbaa !1309
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4666
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8, !dbg !4666, !tbaa !1445
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4667
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8, !dbg !4667, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8, !dbg !4668, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !4669
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  %35 = bitcast %struct._object** %_py_decref_tmp21 to i8*, !dbg !4670
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !4670
  br label %do.cond.30, !dbg !4672

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31, !dbg !4673

do.end.31:                                        ; preds = %do.cond.30
  br label %if.end.32, !dbg !4675

if.end.32:                                        ; preds = %do.end.31, %do.body.16
  %36 = bitcast %struct._object** %_py_tmp17 to i8*, !dbg !4677
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !4677
  br label %do.cond.33, !dbg !4680

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !4681

do.end.34:                                        ; preds = %do.cond.33
  br label %if.end.35, !dbg !4683

if.end.35:                                        ; preds = %do.end.34, %if.end.12
  br label %error, !dbg !4684

error:                                            ; preds = %if.end.35, %do.end.11, %if.then
  br label %do.body.36, !dbg !4686

do.body.36:                                       ; preds = %error
  %37 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4687
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !4687
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !957, metadata !1313), !dbg !4689
  %38 = load %struct._object*, %struct._object** %result, align 8, !dbg !4690, !tbaa !1309
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4689, !tbaa !1309
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4691, !tbaa !1309
  %cmp37 = icmp ne %struct._object* %39, null, !dbg !4692
  br i1 %cmp37, label %if.then.38, label %if.end.51, !dbg !4693

if.then.38:                                       ; preds = %do.body.36
  br label %do.body.39, !dbg !4694

do.body.39:                                       ; preds = %if.then.38
  %40 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4696
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !4696
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !959, metadata !1313), !dbg !4698
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4699, !tbaa !1309
  store %struct._object* %41, %struct._object** %_py_decref_tmp40, align 8, !dbg !4698, !tbaa !1309
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4700, !tbaa !1309
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !4702
  %43 = load i64, i64* %ob_refcnt41, align 8, !dbg !4703, !tbaa !1370
  %dec42 = add i64 %43, -1, !dbg !4703
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !4703, !tbaa !1370
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !4704
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !4705

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !4706

if.else.45:                                       ; preds = %do.body.39
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4708, !tbaa !1309
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !4710
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !4710, !tbaa !1445
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !4711
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !4711, !tbaa !1447
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4712, !tbaa !1309
  call void %46(%struct._object* %47), !dbg !4713
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %48 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4714
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !4714
  br label %do.cond.49, !dbg !4716

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !4717

do.end.50:                                        ; preds = %do.cond.49
  br label %if.end.51, !dbg !4719

if.end.51:                                        ; preds = %do.end.50, %do.body.36
  %49 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4721
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !4721
  br label %do.cond.52, !dbg !4724

do.cond.52:                                       ; preds = %if.end.51
  br label %do.end.53, !dbg !4725

do.end.53:                                        ; preds = %do.cond.52
  br label %do.body.54, !dbg !4727

do.body.54:                                       ; preds = %do.end.53
  %50 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4728
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !4728
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp55, metadata !962, metadata !1313), !dbg !4730
  %51 = load %struct._object*, %struct._object** %method, align 8, !dbg !4731, !tbaa !1309
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4730, !tbaa !1309
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4732, !tbaa !1309
  %cmp56 = icmp ne %struct._object* %52, null, !dbg !4733
  br i1 %cmp56, label %if.then.57, label %if.end.70, !dbg !4734

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58, !dbg !4735

do.body.58:                                       ; preds = %if.then.57
  %53 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4737
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !4737
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp59, metadata !964, metadata !1313), !dbg !4739
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8, !dbg !4740, !tbaa !1309
  store %struct._object* %54, %struct._object** %_py_decref_tmp59, align 8, !dbg !4739, !tbaa !1309
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4741, !tbaa !1309
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4743
  %56 = load i64, i64* %ob_refcnt60, align 8, !dbg !4744, !tbaa !1370
  %dec61 = add i64 %56, -1, !dbg !4744
  store i64 %dec61, i64* %ob_refcnt60, align 8, !dbg !4744, !tbaa !1370
  %cmp62 = icmp ne i64 %dec61, 0, !dbg !4745
  br i1 %cmp62, label %if.then.63, label %if.else.64, !dbg !4746

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67, !dbg !4747

if.else.64:                                       ; preds = %do.body.58
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4749, !tbaa !1309
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4751
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8, !dbg !4751, !tbaa !1445
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4752
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8, !dbg !4752, !tbaa !1447
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8, !dbg !4753, !tbaa !1309
  call void %59(%struct._object* %60), !dbg !4754
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %61 = bitcast %struct._object** %_py_decref_tmp59 to i8*, !dbg !4755
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !4755
  br label %do.cond.68, !dbg !4757

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69, !dbg !4758

do.end.69:                                        ; preds = %do.cond.68
  br label %if.end.70, !dbg !4760

if.end.70:                                        ; preds = %do.end.69, %do.body.54
  %62 = bitcast %struct._object** %_py_xdecref_tmp55 to i8*, !dbg !4762
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !4762
  br label %do.cond.71, !dbg !4763

do.cond.71:                                       ; preds = %if.end.70
  br label %do.end.72, !dbg !4764

do.end.72:                                        ; preds = %do.cond.71
  %63 = load %struct._object*, %struct._object** %cursor, align 8, !dbg !4766, !tbaa !1309
  %64 = bitcast %struct._object** %method to i8*, !dbg !4767
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !4767
  %65 = bitcast %struct._object** %result to i8*, !dbg !4767
  call void @llvm.lifetime.end(i64 8, i8* %65) #2, !dbg !4767
  %66 = bitcast %struct._object** %cursor to i8*, !dbg !4767
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !4767
  ret %struct._object* %63, !dbg !4768
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_connection_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 37), align 8, !dbg !4769, !tbaa !4770
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_ConnectionType), !dbg !4771
  ret i32 %call, !dbg !4772
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare void @sqlite3_result_null(%struct.sqlite3_context*) #3

declare i64 @_pysqlite_long_as_int64(%struct._object*) #3

declare void @sqlite3_result_int64(%struct.sqlite3_context*, i64) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @sqlite3_result_double(%struct.sqlite3_context*, double) #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

declare void @sqlite3_result_text(%struct.sqlite3_context*, i8*, i32, void (i8*)*) #3

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #3

declare void @sqlite3_result_blob(%struct.sqlite3_context*, i8*, i32, void (i8*)*) #3

declare void @sqlite3_result_error(%struct.sqlite3_context*, i8*, i32) #3

declare %struct._object* @PyUnicode_Concat(%struct._object*, %struct._object*) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_set_authorizer(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %authorizer_cb = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1085, metadata !1313), !dbg !4773
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1086, metadata !1313), !dbg !4774
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !1087, metadata !1313), !dbg !4775
  %0 = bitcast %struct._object** %authorizer_cb to i8*, !dbg !4776
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4776
  call void @llvm.dbg.declare(metadata %struct._object** %authorizer_cb, metadata !1088, metadata !1313), !dbg !4777
  %1 = bitcast i32* %rc to i8*, !dbg !4778
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4778
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1089, metadata !1313), !dbg !4779
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4780, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %2), !dbg !4782
  %tobool = icmp ne i32 %call, 0, !dbg !4782
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4783

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4784, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %3), !dbg !4786
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4786
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4787

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4788
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4788

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4790, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !4792, !tbaa !1309
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pysqlite_connection_set_authorizer.kwlist, i32 0, i32 0), %struct._object** %authorizer_cb), !dbg !4793
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4793
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !4794

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4795
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4795

if.end.6:                                         ; preds = %if.end
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4797, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 1, !dbg !4798
  %7 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !4798, !tbaa !1401
  %8 = load %struct._object*, %struct._object** %authorizer_cb, align 8, !dbg !4799, !tbaa !1309
  %9 = bitcast %struct._object* %8 to i8*, !dbg !4800
  %call7 = call i32 @sqlite3_set_authorizer(%struct.sqlite3* %7, i32 (i8*, i32, i8*, i8*, i8*, i8*)* @_authorizer_callback, i8* %9), !dbg !4801
  store i32 %call7, i32* %rc, align 4, !dbg !4802, !tbaa !1321
  %10 = load i32, i32* %rc, align 4, !dbg !4803, !tbaa !1321
  %cmp = icmp ne i32 %10, 0, !dbg !4805
  br i1 %cmp, label %if.then.8, label %if.else, !dbg !4806

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !4807, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0)), !dbg !4809
  store %struct._object* null, %struct._object** %retval, !dbg !4810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4810

if.else:                                          ; preds = %if.end.6
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4811, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 18, !dbg !4814
  %13 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !4814, !tbaa !1585
  %14 = load %struct._object*, %struct._object** %authorizer_cb, align 8, !dbg !4815, !tbaa !1309
  %call9 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* @_Py_NoneStruct), !dbg !4816
  %cmp10 = icmp eq i32 %call9, -1, !dbg !4817
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4818

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !4819
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4819

if.end.12:                                        ; preds = %if.else
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4820, !tbaa !1370
  %inc = add i64 %15, 1, !dbg !4820
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4820, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4821
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4821

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %16 = bitcast i32* %rc to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !4822
  %17 = bitcast %struct._object** %authorizer_cb to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !4822
  %18 = load %struct._object*, %struct._object** %retval, !dbg !4822
  ret %struct._object* %18, !dbg !4822
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_set_progress_handler(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %progress_handler = alloca %struct._object*, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1109, metadata !1313), !dbg !4823
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1110, metadata !1313), !dbg !4824
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !1111, metadata !1313), !dbg !4825
  %0 = bitcast %struct._object** %progress_handler to i8*, !dbg !4826
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4826
  call void @llvm.dbg.declare(metadata %struct._object** %progress_handler, metadata !1112, metadata !1313), !dbg !4827
  %1 = bitcast i32* %n to i8*, !dbg !4828
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !4828
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1113, metadata !1313), !dbg !4829
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4830, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %2), !dbg !4832
  %tobool = icmp ne i32 %call, 0, !dbg !4832
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4833

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4834, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %3), !dbg !4836
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4836
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4837

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4838
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4838

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4840, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !4842, !tbaa !1309
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_connection_set_progress_handler.kwlist, i32 0, i32 0), %struct._object** %progress_handler, i32* %n), !dbg !4843
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4843
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !4844

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4845
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4845

if.end.6:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %progress_handler, align 8, !dbg !4847, !tbaa !1309
  %cmp = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !4849
  br i1 %cmp, label %if.then.7, label %if.else, !dbg !4850

if.then.7:                                        ; preds = %if.end.6
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4851, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 1, !dbg !4853
  %8 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !4853, !tbaa !1401
  call void @sqlite3_progress_handler(%struct.sqlite3* %8, i32 0, i32 (i8*)* null, i8* null), !dbg !4854
  br label %if.end.13, !dbg !4855

if.else:                                          ; preds = %if.end.6
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4856, !tbaa !1309
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 1, !dbg !4858
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8, !dbg !4858, !tbaa !1401
  %11 = load i32, i32* %n, align 4, !dbg !4859, !tbaa !1321
  %12 = load %struct._object*, %struct._object** %progress_handler, align 8, !dbg !4860, !tbaa !1309
  %13 = bitcast %struct._object* %12 to i8*, !dbg !4860
  call void @sqlite3_progress_handler(%struct.sqlite3* %10, i32 %11, i32 (i8*)* @_progress_handler, i8* %13), !dbg !4861
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4862, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 18, !dbg !4864
  %15 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !4864, !tbaa !1585
  %16 = load %struct._object*, %struct._object** %progress_handler, align 8, !dbg !4865, !tbaa !1309
  %call9 = call i32 @PyDict_SetItem(%struct._object* %15, %struct._object* %16, %struct._object* @_Py_NoneStruct), !dbg !4866
  %cmp10 = icmp eq i32 %call9, -1, !dbg !4867
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4868

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !4869
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4869

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4870, !tbaa !1370
  %inc = add i64 %17, 1, !dbg !4870
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4870, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4871
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4871

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %18 = bitcast i32* %n to i8*, !dbg !4872
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !4872
  %19 = bitcast %struct._object** %progress_handler to i8*, !dbg !4872
  call void @llvm.lifetime.end(i64 8, i8* %19) #2, !dbg !4872
  %20 = load %struct._object*, %struct._object** %retval, !dbg !4872
  ret %struct._object* %20, !dbg !4872
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_set_trace_callback(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %trace_callback = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1128, metadata !1313), !dbg !4873
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1129, metadata !1313), !dbg !4874
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !1130, metadata !1313), !dbg !4875
  %0 = bitcast %struct._object** %trace_callback to i8*, !dbg !4876
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4876
  call void @llvm.dbg.declare(metadata %struct._object** %trace_callback, metadata !1131, metadata !1313), !dbg !4877
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4878, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %1), !dbg !4880
  %tobool = icmp ne i32 %call, 0, !dbg !4880
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4881

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4882, !tbaa !1309
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %2), !dbg !4884
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4884
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4885

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4886

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4888, !tbaa !1309
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !4890, !tbaa !1309
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pysqlite_connection_set_trace_callback.kwlist, i32 0, i32 0), %struct._object** %trace_callback), !dbg !4891
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4891
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !4892

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4893
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4893

if.end.6:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %trace_callback, align 8, !dbg !4895, !tbaa !1309
  %cmp = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !4897
  br i1 %cmp, label %if.then.7, label %if.else, !dbg !4898

if.then.7:                                        ; preds = %if.end.6
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4899, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 1, !dbg !4901
  %7 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !4901, !tbaa !1401
  %call8 = call i8* @sqlite3_trace(%struct.sqlite3* %7, void (i8*, i8*)* null, i8* null), !dbg !4902
  br label %if.end.15, !dbg !4903

if.else:                                          ; preds = %if.end.6
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4904, !tbaa !1309
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 18, !dbg !4907
  %9 = load %struct._object*, %struct._object** %function_pinboard, align 8, !dbg !4907, !tbaa !1585
  %10 = load %struct._object*, %struct._object** %trace_callback, align 8, !dbg !4908, !tbaa !1309
  %call9 = call i32 @PyDict_SetItem(%struct._object* %9, %struct._object* %10, %struct._object* @_Py_NoneStruct), !dbg !4909
  %cmp10 = icmp eq i32 %call9, -1, !dbg !4910
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !4911

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !4912
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4912

if.end.12:                                        ; preds = %if.else
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4913, !tbaa !1309
  %db13 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 1, !dbg !4914
  %12 = load %struct.sqlite3*, %struct.sqlite3** %db13, align 8, !dbg !4914, !tbaa !1401
  %13 = load %struct._object*, %struct._object** %trace_callback, align 8, !dbg !4915, !tbaa !1309
  %14 = bitcast %struct._object* %13 to i8*, !dbg !4915
  %call14 = call i8* @sqlite3_trace(%struct.sqlite3* %12, void (i8*, i8*)* @_trace_callback, i8* %14), !dbg !4916
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.12, %if.then.7
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4917, !tbaa !1370
  %inc = add i64 %15, 1, !dbg !4917
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4917, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4918

cleanup:                                          ; preds = %if.end.15, %if.then.11, %if.then.5, %if.then
  %16 = bitcast %struct._object** %trace_callback to i8*, !dbg !4919
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !4919
  %17 = load %struct._object*, %struct._object** %retval, !dbg !4919
  ret %struct._object* %17, !dbg !4919
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_create_collation(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %callable = alloca %struct._object*, align 8
  %uppercase_name = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %uppercase_name_str = alloca i8*, align 8
  %rc = alloca i32, align 4
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1151, metadata !1313), !dbg !4920
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1152, metadata !1313), !dbg !4921
  %0 = bitcast %struct._object** %callable to i8*, !dbg !4922
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4922
  call void @llvm.dbg.declare(metadata %struct._object** %callable, metadata !1153, metadata !1313), !dbg !4923
  %1 = bitcast %struct._object** %uppercase_name to i8*, !dbg !4924
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4924
  call void @llvm.dbg.declare(metadata %struct._object** %uppercase_name, metadata !1154, metadata !1313), !dbg !4925
  store %struct._object* null, %struct._object** %uppercase_name, align 8, !dbg !4925, !tbaa !1309
  %2 = bitcast %struct._object** %name to i8*, !dbg !4926
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !4926
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !1155, metadata !1313), !dbg !4927
  %3 = bitcast %struct._object** %retval1 to i8*, !dbg !4928
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !4928
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !1156, metadata !1313), !dbg !4929
  %4 = bitcast i64* %i to i8*, !dbg !4930
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !4930
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1157, metadata !1313), !dbg !4931
  %5 = bitcast i64* %len to i8*, !dbg !4930
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !4930
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1158, metadata !1313), !dbg !4932
  %6 = bitcast i8** %uppercase_name_str to i8*, !dbg !4933
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !4933
  call void @llvm.dbg.declare(metadata i8** %uppercase_name_str, metadata !1159, metadata !1313), !dbg !4934
  %7 = bitcast i32* %rc to i8*, !dbg !4935
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !4935
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1160, metadata !1313), !dbg !4936
  %8 = bitcast i32* %kind to i8*, !dbg !4937
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !1161, metadata !1313), !dbg !4938
  %9 = bitcast i8** %data to i8*, !dbg !4939
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !4939
  call void @llvm.dbg.declare(metadata i8** %data, metadata !1162, metadata !1313), !dbg !4940
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4941, !tbaa !1309
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %10), !dbg !4943
  %tobool = icmp ne i32 %call, 0, !dbg !4943
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4944

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !4945, !tbaa !1309
  %call2 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %11), !dbg !4947
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4947
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4948

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %finally, !dbg !4949

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !4951, !tbaa !1309
  %call4 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i32 0, i32 0), %struct._typeobject* @PyUnicode_Type, %struct._object** %name, %struct._object** %callable), !dbg !4953
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4953
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !4954

if.then.6:                                        ; preds = %if.end
  br label %finally, !dbg !4955

if.end.7:                                         ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %name, align 8, !dbg !4957, !tbaa !1309
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %13, %struct._Py_Identifier* @pysqlite_connection_create_collation.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !4958
  store %struct._object* %call8, %struct._object** %uppercase_name, align 8, !dbg !4959, !tbaa !1309
  %14 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4960, !tbaa !1309
  %tobool9 = icmp ne %struct._object* %14, null, !dbg !4960
  br i1 %tobool9, label %if.end.11, label %if.then.10, !dbg !4962

if.then.10:                                       ; preds = %if.end.7
  br label %finally, !dbg !4963

if.end.11:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4965, !tbaa !1309
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*, !dbg !4967
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3, !dbg !4968
  %17 = bitcast %struct.anon* %state to i32*, !dbg !4969
  %bf.load = load i32, i32* %17, align 4, !dbg !4969
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !4969
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4969
  %tobool12 = icmp ne i32 %bf.clear, 0, !dbg !4970
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !4970

cond.true:                                        ; preds = %if.end.11
  br label %cond.end, !dbg !4971

cond.false:                                       ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4973, !tbaa !1309
  %call13 = call i32 @_PyUnicode_Ready(%struct._object* %18), !dbg !4975
  br label %cond.end, !dbg !4970

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call13, %cond.false ], !dbg !4970
  %tobool14 = icmp ne i32 %cond, 0, !dbg !4976
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !4979

if.then.15:                                       ; preds = %cond.end
  br label %finally, !dbg !4980

if.end.16:                                        ; preds = %cond.end
  %19 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4981, !tbaa !1309
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*, !dbg !4982
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 1, !dbg !4983
  %21 = load i64, i64* %length, align 8, !dbg !4983, !tbaa !4984
  store i64 %21, i64* %len, align 8, !dbg !4987, !tbaa !1822
  %22 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4988, !tbaa !1309
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*, !dbg !4989
  %state17 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3, !dbg !4990
  %24 = bitcast %struct.anon* %state17 to i32*, !dbg !4991
  %bf.load18 = load i32, i32* %24, align 4, !dbg !4991
  %bf.lshr19 = lshr i32 %bf.load18, 2, !dbg !4991
  %bf.clear20 = and i32 %bf.lshr19, 7, !dbg !4991
  store i32 %bf.clear20, i32* %kind, align 4, !dbg !4992, !tbaa !1321
  %25 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4993, !tbaa !1309
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !4994
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 3, !dbg !4995
  %27 = bitcast %struct.anon* %state21 to i32*, !dbg !4996
  %bf.load22 = load i32, i32* %27, align 4, !dbg !4996
  %bf.lshr23 = lshr i32 %bf.load22, 5, !dbg !4996
  %bf.clear24 = and i32 %bf.lshr23, 1, !dbg !4996
  %tobool25 = icmp ne i32 %bf.clear24, 0, !dbg !4997
  br i1 %tobool25, label %cond.true.26, label %cond.false.37, !dbg !4997

cond.true.26:                                     ; preds = %if.end.16
  %28 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !4998, !tbaa !1309
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*, !dbg !5000
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3, !dbg !5001
  %30 = bitcast %struct.anon* %state27 to i32*, !dbg !5002
  %bf.load28 = load i32, i32* %30, align 4, !dbg !5002
  %bf.lshr29 = lshr i32 %bf.load28, 6, !dbg !5002
  %bf.clear30 = and i32 %bf.lshr29, 1, !dbg !5002
  %tobool31 = icmp ne i32 %bf.clear30, 0, !dbg !5003
  br i1 %tobool31, label %cond.true.32, label %cond.false.33, !dbg !5003

cond.true.32:                                     ; preds = %cond.true.26
  %31 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5004, !tbaa !1309
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*, !dbg !5006
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i64 1, !dbg !5007
  %33 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !5008
  br label %cond.end.35, !dbg !5003

cond.false.33:                                    ; preds = %cond.true.26
  %34 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5009, !tbaa !1309
  %35 = bitcast %struct._object* %34 to %struct.PyCompactUnicodeObject*, !dbg !5011
  %add.ptr34 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %35, i64 1, !dbg !5012
  %36 = bitcast %struct.PyCompactUnicodeObject* %add.ptr34 to i8*, !dbg !5013
  br label %cond.end.35, !dbg !5003

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i8* [ %33, %cond.true.32 ], [ %36, %cond.false.33 ], !dbg !5003
  br label %cond.end.39, !dbg !5014

cond.false.37:                                    ; preds = %if.end.16
  %37 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5017, !tbaa !1309
  %38 = bitcast %struct._object* %37 to %struct.PyUnicodeObject*, !dbg !5019
  %data38 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %38, i32 0, i32 1, !dbg !5020
  %any = bitcast %union.anon* %data38 to i8**, !dbg !5021
  %39 = load i8*, i8** %any, align 8, !dbg !5021, !tbaa !1309
  br label %cond.end.39, !dbg !4997

cond.end.39:                                      ; preds = %cond.false.37, %cond.end.35
  %cond40 = phi i8* [ %cond36, %cond.end.35 ], [ %39, %cond.false.37 ], !dbg !4997
  store i8* %cond40, i8** %data, align 8, !dbg !5022, !tbaa !1309
  store i64 0, i64* %i, align 8, !dbg !5025, !tbaa !1822
  br label %for.cond, !dbg !5026

for.cond:                                         ; preds = %for.inc, %cond.end.39
  %40 = load i64, i64* %i, align 8, !dbg !5027, !tbaa !1822
  %41 = load i64, i64* %len, align 8, !dbg !5030, !tbaa !1822
  %cmp = icmp slt i64 %40, %41, !dbg !5031
  br i1 %cmp, label %for.body, label %for.end, !dbg !5032

for.body:                                         ; preds = %for.cond
  %42 = bitcast i32* %ch to i8*, !dbg !5033
  call void @llvm.lifetime.start(i64 4, i8* %42) #2, !dbg !5033
  call void @llvm.dbg.declare(metadata i32* %ch, metadata !1163, metadata !1313), !dbg !5034
  %43 = load i32, i32* %kind, align 4, !dbg !5035, !tbaa !1321
  %cmp41 = icmp eq i32 %43, 1, !dbg !5036
  br i1 %cmp41, label %cond.true.42, label %cond.false.43, !dbg !5037

cond.true.42:                                     ; preds = %for.body
  %44 = load i64, i64* %i, align 8, !dbg !5038, !tbaa !1822
  %45 = load i8*, i8** %data, align 8, !dbg !5040, !tbaa !1309
  %arrayidx = getelementptr i8, i8* %45, i64 %44, !dbg !5041
  %46 = load i8, i8* %arrayidx, align 1, !dbg !5041, !tbaa !3221
  %conv = zext i8 %46 to i32, !dbg !5041
  br label %cond.end.53, !dbg !5037

cond.false.43:                                    ; preds = %for.body
  %47 = load i32, i32* %kind, align 4, !dbg !5042, !tbaa !1321
  %cmp44 = icmp eq i32 %47, 2, !dbg !5044
  br i1 %cmp44, label %cond.true.46, label %cond.false.49, !dbg !5045

cond.true.46:                                     ; preds = %cond.false.43
  %48 = load i64, i64* %i, align 8, !dbg !5046, !tbaa !1822
  %49 = load i8*, i8** %data, align 8, !dbg !5048, !tbaa !1309
  %50 = bitcast i8* %49 to i16*, !dbg !5049
  %arrayidx47 = getelementptr i16, i16* %50, i64 %48, !dbg !5050
  %51 = load i16, i16* %arrayidx47, align 2, !dbg !5050, !tbaa !5051
  %conv48 = zext i16 %51 to i32, !dbg !5050
  br label %cond.end.51, !dbg !5045

cond.false.49:                                    ; preds = %cond.false.43
  %52 = load i64, i64* %i, align 8, !dbg !5053, !tbaa !1822
  %53 = load i8*, i8** %data, align 8, !dbg !5055, !tbaa !1309
  %54 = bitcast i8* %53 to i32*, !dbg !5056
  %arrayidx50 = getelementptr i32, i32* %54, i64 %52, !dbg !5057
  %55 = load i32, i32* %arrayidx50, align 4, !dbg !5057, !tbaa !1321
  br label %cond.end.51, !dbg !5045

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.46
  %cond52 = phi i32 [ %conv48, %cond.true.46 ], [ %55, %cond.false.49 ], !dbg !5045
  br label %cond.end.53, !dbg !5058

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.42
  %cond54 = phi i32 [ %conv, %cond.true.42 ], [ %cond52, %cond.end.51 ], !dbg !5037
  store i32 %cond54, i32* %ch, align 4, !dbg !5061, !tbaa !1321
  %56 = load i32, i32* %ch, align 4, !dbg !5064, !tbaa !1321
  %cmp55 = icmp uge i32 %56, 48, !dbg !5066
  br i1 %cmp55, label %land.lhs.true, label %lor.lhs.false.59, !dbg !5067

land.lhs.true:                                    ; preds = %cond.end.53
  %57 = load i32, i32* %ch, align 4, !dbg !5068, !tbaa !1321
  %cmp57 = icmp ule i32 %57, 57, !dbg !5070
  br i1 %cmp57, label %if.then.68, label %lor.lhs.false.59, !dbg !5071

lor.lhs.false.59:                                 ; preds = %land.lhs.true, %cond.end.53
  %58 = load i32, i32* %ch, align 4, !dbg !5072, !tbaa !1321
  %cmp60 = icmp uge i32 %58, 65, !dbg !5073
  br i1 %cmp60, label %land.lhs.true.62, label %lor.lhs.false.65, !dbg !5074

land.lhs.true.62:                                 ; preds = %lor.lhs.false.59
  %59 = load i32, i32* %ch, align 4, !dbg !5075, !tbaa !1321
  %cmp63 = icmp ule i32 %59, 90, !dbg !5077
  br i1 %cmp63, label %if.then.68, label %lor.lhs.false.65, !dbg !5078

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %lor.lhs.false.59
  %60 = load i32, i32* %ch, align 4, !dbg !5079, !tbaa !1321
  %cmp66 = icmp eq i32 %60, 95, !dbg !5080
  br i1 %cmp66, label %if.then.68, label %if.else, !dbg !5081

if.then.68:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.62, %land.lhs.true
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5082

if.else:                                          ; preds = %lor.lhs.false.65
  %61 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !5084, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0)), !dbg !5086
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5087

cleanup:                                          ; preds = %if.else, %if.then.68
  %62 = bitcast i32* %ch to i8*, !dbg !5088
  call void @llvm.lifetime.end(i64 4, i8* %62) #2, !dbg !5088
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.132 [
    i32 5, label %for.inc
    i32 2, label %finally
  ]

for.inc:                                          ; preds = %cleanup
  %63 = load i64, i64* %i, align 8, !dbg !5089, !tbaa !1822
  %inc = add i64 %63, 1, !dbg !5089
  store i64 %inc, i64* %i, align 8, !dbg !5089, !tbaa !1822
  br label %for.cond, !dbg !5090

for.end:                                          ; preds = %for.cond
  %64 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5091, !tbaa !1309
  %call69 = call i8* @PyUnicode_AsUTF8(%struct._object* %64), !dbg !5092
  store i8* %call69, i8** %uppercase_name_str, align 8, !dbg !5093, !tbaa !1309
  %65 = load i8*, i8** %uppercase_name_str, align 8, !dbg !5094, !tbaa !1309
  %tobool70 = icmp ne i8* %65, null, !dbg !5094
  br i1 %tobool70, label %if.end.72, label %if.then.71, !dbg !5096

if.then.71:                                       ; preds = %for.end
  br label %finally, !dbg !5097

if.end.72:                                        ; preds = %for.end
  %66 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5098, !tbaa !1309
  %cmp73 = icmp ne %struct._object* %66, @_Py_NoneStruct, !dbg !5100
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.79, !dbg !5101

land.lhs.true.75:                                 ; preds = %if.end.72
  %67 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5102, !tbaa !1309
  %call76 = call i32 @PyCallable_Check(%struct._object* %67), !dbg !5104
  %tobool77 = icmp ne i32 %call76, 0, !dbg !5104
  br i1 %tobool77, label %if.end.79, label %if.then.78, !dbg !5105

if.then.78:                                       ; preds = %land.lhs.true.75
  %68 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5106, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0)), !dbg !5108
  br label %finally, !dbg !5109

if.end.79:                                        ; preds = %land.lhs.true.75, %if.end.72
  %69 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5110, !tbaa !1309
  %cmp80 = icmp ne %struct._object* %69, @_Py_NoneStruct, !dbg !5112
  br i1 %cmp80, label %if.then.82, label %if.else.88, !dbg !5113

if.then.82:                                       ; preds = %if.end.79
  %70 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5114, !tbaa !1309
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %70, i32 0, i32 19, !dbg !5117
  %71 = load %struct._object*, %struct._object** %collations, align 8, !dbg !5117, !tbaa !1596
  %72 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5118, !tbaa !1309
  %73 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5119, !tbaa !1309
  %call83 = call i32 @PyDict_SetItem(%struct._object* %71, %struct._object* %72, %struct._object* %73), !dbg !5120
  %cmp84 = icmp eq i32 %call83, -1, !dbg !5121
  br i1 %cmp84, label %if.then.86, label %if.end.87, !dbg !5122

if.then.86:                                       ; preds = %if.then.82
  br label %finally, !dbg !5123

if.end.87:                                        ; preds = %if.then.82
  br label %if.end.95, !dbg !5124

if.else.88:                                       ; preds = %if.end.79
  %74 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5125, !tbaa !1309
  %collations89 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %74, i32 0, i32 19, !dbg !5128
  %75 = load %struct._object*, %struct._object** %collations89, align 8, !dbg !5128, !tbaa !1596
  %76 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5129, !tbaa !1309
  %call90 = call i32 @PyDict_DelItem(%struct._object* %75, %struct._object* %76), !dbg !5130
  %cmp91 = icmp eq i32 %call90, -1, !dbg !5131
  br i1 %cmp91, label %if.then.93, label %if.end.94, !dbg !5132

if.then.93:                                       ; preds = %if.else.88
  br label %finally, !dbg !5133

if.end.94:                                        ; preds = %if.else.88
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.87
  %77 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5134, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %77, i32 0, i32 1, !dbg !5135
  %78 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !5135, !tbaa !1401
  %79 = load i8*, i8** %uppercase_name_str, align 8, !dbg !5136, !tbaa !1309
  %80 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5137, !tbaa !1309
  %cmp96 = icmp ne %struct._object* %80, @_Py_NoneStruct, !dbg !5138
  br i1 %cmp96, label %cond.true.98, label %cond.false.99, !dbg !5139

cond.true.98:                                     ; preds = %if.end.95
  %81 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5140, !tbaa !1309
  br label %cond.end.100, !dbg !5139

cond.false.99:                                    ; preds = %if.end.95
  br label %cond.end.100, !dbg !5141

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi %struct._object* [ %81, %cond.true.98 ], [ null, %cond.false.99 ], !dbg !5139
  %82 = bitcast %struct._object* %cond101 to i8*, !dbg !5142
  %83 = load %struct._object*, %struct._object** %callable, align 8, !dbg !5144, !tbaa !1309
  %cmp102 = icmp ne %struct._object* %83, @_Py_NoneStruct, !dbg !5145
  %cond104 = select i1 %cmp102, i32 (i8*, i32, i8*, i32, i8*)* @pysqlite_collation_callback, i32 (i8*, i32, i8*, i32, i8*)* null, !dbg !5146
  %call105 = call i32 @sqlite3_create_collation(%struct.sqlite3* %78, i8* %79, i32 1, i8* %82, i32 (i8*, i32, i8*, i32, i8*)* %cond104), !dbg !5147
  store i32 %call105, i32* %rc, align 4, !dbg !5148, !tbaa !1321
  %84 = load i32, i32* %rc, align 4, !dbg !5149, !tbaa !1321
  %cmp106 = icmp ne i32 %84, 0, !dbg !5151
  br i1 %cmp106, label %if.then.108, label %if.end.113, !dbg !5152

if.then.108:                                      ; preds = %cond.end.100
  %85 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5153, !tbaa !1309
  %collations109 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %85, i32 0, i32 19, !dbg !5155
  %86 = load %struct._object*, %struct._object** %collations109, align 8, !dbg !5155, !tbaa !1596
  %87 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5156, !tbaa !1309
  %call110 = call i32 @PyDict_DelItem(%struct._object* %86, %struct._object* %87), !dbg !5157
  %88 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5158, !tbaa !1309
  %db111 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %88, i32 0, i32 1, !dbg !5159
  %89 = load %struct.sqlite3*, %struct.sqlite3** %db111, align 8, !dbg !5159, !tbaa !1401
  %call112 = call i32 @_pysqlite_seterror(%struct.sqlite3* %89, %struct.sqlite3_stmt* null), !dbg !5160
  br label %finally, !dbg !5161

if.end.113:                                       ; preds = %cond.end.100
  br label %finally, !dbg !5162

finally:                                          ; preds = %if.end.113, %cleanup, %if.then.108, %if.then.93, %if.then.86, %if.then.78, %if.then.71, %if.then.15, %if.then.10, %if.then.6, %if.then
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %finally
  %90 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5165
  call void @llvm.lifetime.start(i64 8, i8* %90) #2, !dbg !5165
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1167, metadata !1313), !dbg !5167
  %91 = load %struct._object*, %struct._object** %uppercase_name, align 8, !dbg !5168, !tbaa !1309
  store %struct._object* %91, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5167, !tbaa !1309
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5169, !tbaa !1309
  %cmp114 = icmp ne %struct._object* %92, null, !dbg !5170
  br i1 %cmp114, label %if.then.116, label %if.end.123, !dbg !5171

if.then.116:                                      ; preds = %do.body
  br label %do.body.117, !dbg !5172

do.body.117:                                      ; preds = %if.then.116
  %93 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5174
  call void @llvm.lifetime.start(i64 8, i8* %93) #2, !dbg !5174
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1169, metadata !1313), !dbg !5176
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5177, !tbaa !1309
  store %struct._object* %94, %struct._object** %_py_decref_tmp, align 8, !dbg !5176, !tbaa !1309
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5178, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0, !dbg !5180
  %96 = load i64, i64* %ob_refcnt, align 8, !dbg !5181, !tbaa !1370
  %dec = add i64 %96, -1, !dbg !5181
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5181, !tbaa !1370
  %cmp118 = icmp ne i64 %dec, 0, !dbg !5182
  br i1 %cmp118, label %if.then.120, label %if.else.121, !dbg !5183

if.then.120:                                      ; preds = %do.body.117
  br label %if.end.122, !dbg !5184

if.else.121:                                      ; preds = %do.body.117
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5186, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1, !dbg !5188
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5188, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4, !dbg !5189
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5189, !tbaa !1447
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5190, !tbaa !1309
  call void %99(%struct._object* %100), !dbg !5191
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %101 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5192
  call void @llvm.lifetime.end(i64 8, i8* %101) #2, !dbg !5192
  br label %do.cond, !dbg !5194

do.cond:                                          ; preds = %if.end.122
  br label %do.end, !dbg !5195

do.end:                                           ; preds = %do.cond
  br label %if.end.123, !dbg !5197

if.end.123:                                       ; preds = %do.end, %do.body
  %102 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5199
  call void @llvm.lifetime.end(i64 8, i8* %102) #2, !dbg !5199
  br label %do.cond.124, !dbg !5201

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !5202

do.end.125:                                       ; preds = %do.cond.124
  %call126 = call %struct._object* @PyErr_Occurred(), !dbg !5204
  %tobool127 = icmp ne %struct._object* %call126, null, !dbg !5204
  br i1 %tobool127, label %if.then.128, label %if.else.129, !dbg !5206

if.then.128:                                      ; preds = %do.end.125
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !5207, !tbaa !1309
  br label %if.end.131, !dbg !5209

if.else.129:                                      ; preds = %do.end.125
  %103 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5210, !tbaa !1370
  %inc130 = add i64 %103, 1, !dbg !5210
  store i64 %inc130, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5210, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8, !dbg !5212, !tbaa !1309
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.128
  %104 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5213, !tbaa !1309
  store %struct._object* %104, %struct._object** %retval, !dbg !5214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.132, !dbg !5214

cleanup.132:                                      ; preds = %if.end.131, %cleanup
  %105 = bitcast i8** %data to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %105) #2, !dbg !5215
  %106 = bitcast i32* %kind to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 4, i8* %106) #2, !dbg !5215
  %107 = bitcast i32* %rc to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 4, i8* %107) #2, !dbg !5215
  %108 = bitcast i8** %uppercase_name_str to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %108) #2, !dbg !5215
  %109 = bitcast i64* %len to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %109) #2, !dbg !5215
  %110 = bitcast i64* %i to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %110) #2, !dbg !5215
  %111 = bitcast %struct._object** %retval1 to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %111) #2, !dbg !5215
  %112 = bitcast %struct._object** %name to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !5215
  %113 = bitcast %struct._object** %uppercase_name to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %113) #2, !dbg !5215
  %114 = bitcast %struct._object** %callable to i8*, !dbg !5215
  call void @llvm.lifetime.end(i64 8, i8* %114) #2, !dbg !5215
  %115 = load %struct._object*, %struct._object** %retval, !dbg !5215
  ret %struct._object* %115, !dbg !5215
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_interrupt(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1207, metadata !1313), !dbg !5216
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1208, metadata !1313), !dbg !5217
  %0 = bitcast %struct._object** %retval1 to i8*, !dbg !5218
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5218
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !1209, metadata !1313), !dbg !5219
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !5219, !tbaa !1309
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5220, !tbaa !1309
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1), !dbg !5222
  %tobool = icmp ne i32 %call, 0, !dbg !5222
  br i1 %tobool, label %if.end, label %if.then, !dbg !5223

if.then:                                          ; preds = %entry
  br label %finally, !dbg !5224

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5226, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 1, !dbg !5227
  %3 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !5227, !tbaa !1401
  call void @sqlite3_interrupt(%struct.sqlite3* %3), !dbg !5228
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5229, !tbaa !1370
  %inc = add i64 %4, 1, !dbg !5229
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5229, !tbaa !1370
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8, !dbg !5230, !tbaa !1309
  br label %finally, !dbg !5231

finally:                                          ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5232, !tbaa !1309
  %6 = bitcast %struct._object** %retval1 to i8*, !dbg !5233
  call void @llvm.lifetime.end(i64 8, i8* %6) #2, !dbg !5233
  ret %struct._object* %5, !dbg !5234
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_iterdump(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %module_dict = alloca %struct._object*, align 8
  %pyfn_iterdump = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1212, metadata !1313), !dbg !5235
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1213, metadata !1313), !dbg !5236
  %0 = bitcast %struct._object** %retval1 to i8*, !dbg !5237
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5237
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !1214, metadata !1313), !dbg !5238
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !5238, !tbaa !1309
  %1 = bitcast %struct._object** %module to i8*, !dbg !5239
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5239
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !1215, metadata !1313), !dbg !5240
  store %struct._object* null, %struct._object** %module, align 8, !dbg !5240, !tbaa !1309
  %2 = bitcast %struct._object** %module_dict to i8*, !dbg !5241
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5241
  call void @llvm.dbg.declare(metadata %struct._object** %module_dict, metadata !1216, metadata !1313), !dbg !5242
  %3 = bitcast %struct._object** %pyfn_iterdump to i8*, !dbg !5243
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !5243
  call void @llvm.dbg.declare(metadata %struct._object** %pyfn_iterdump, metadata !1217, metadata !1313), !dbg !5244
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5245, !tbaa !1309
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %4), !dbg !5247
  %tobool = icmp ne i32 %call, 0, !dbg !5247
  br i1 %tobool, label %if.end, label %if.then, !dbg !5248

if.then:                                          ; preds = %entry
  br label %finally, !dbg !5249

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0)), !dbg !5251
  store %struct._object* %call2, %struct._object** %module, align 8, !dbg !5252, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %module, align 8, !dbg !5253, !tbaa !1309
  %tobool3 = icmp ne %struct._object* %5, null, !dbg !5253
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !5255

if.then.4:                                        ; preds = %if.end
  br label %finally, !dbg !5256

if.end.5:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %module, align 8, !dbg !5258, !tbaa !1309
  %call6 = call %struct._object* @PyModule_GetDict(%struct._object* %6), !dbg !5259
  store %struct._object* %call6, %struct._object** %module_dict, align 8, !dbg !5260, !tbaa !1309
  %7 = load %struct._object*, %struct._object** %module_dict, align 8, !dbg !5261, !tbaa !1309
  %tobool7 = icmp ne %struct._object* %7, null, !dbg !5261
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !5263

if.then.8:                                        ; preds = %if.end.5
  br label %finally, !dbg !5264

if.end.9:                                         ; preds = %if.end.5
  %8 = load %struct._object*, %struct._object** %module_dict, align 8, !dbg !5266, !tbaa !1309
  %call10 = call %struct._object* @PyDict_GetItemString(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0)), !dbg !5267
  store %struct._object* %call10, %struct._object** %pyfn_iterdump, align 8, !dbg !5268, !tbaa !1309
  %9 = load %struct._object*, %struct._object** %pyfn_iterdump, align 8, !dbg !5269, !tbaa !1309
  %tobool11 = icmp ne %struct._object* %9, null, !dbg !5269
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !5271

if.then.12:                                       ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !5272, !tbaa !1309
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0)), !dbg !5274
  br label %finally, !dbg !5275

if.end.13:                                        ; preds = %if.end.9
  %call14 = call %struct._object* @PyTuple_New(i64 1), !dbg !5276
  store %struct._object* %call14, %struct._object** %args.addr, align 8, !dbg !5277, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5278, !tbaa !1309
  %tobool15 = icmp ne %struct._object* %11, null, !dbg !5278
  br i1 %tobool15, label %if.end.17, label %if.then.16, !dbg !5280

if.then.16:                                       ; preds = %if.end.13
  br label %finally, !dbg !5281

if.end.17:                                        ; preds = %if.end.13
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5283, !tbaa !1309
  %13 = bitcast %struct.pysqlite_Connection* %12 to %struct._object*, !dbg !5284
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !5285
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !5286, !tbaa !1370
  %inc = add i64 %14, 1, !dbg !5286
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !5286, !tbaa !1370
  %15 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5287, !tbaa !1309
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5288, !tbaa !1309
  %17 = bitcast %struct.pysqlite_Connection* %16 to %struct._object*, !dbg !5289
  %call18 = call i32 @PyTuple_SetItem(%struct._object* %15, i64 0, %struct._object* %17), !dbg !5290
  %18 = load %struct._object*, %struct._object** %pyfn_iterdump, align 8, !dbg !5291, !tbaa !1309
  %19 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5292, !tbaa !1309
  %call19 = call %struct._object* @PyObject_CallObject(%struct._object* %18, %struct._object* %19), !dbg !5293
  store %struct._object* %call19, %struct._object** %retval1, align 8, !dbg !5294, !tbaa !1309
  br label %finally, !dbg !5295

finally:                                          ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  br label %do.body, !dbg !5296

do.body:                                          ; preds = %finally
  %20 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5297
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !5297
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1218, metadata !1313), !dbg !5299
  %21 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5300, !tbaa !1309
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5299, !tbaa !1309
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5301, !tbaa !1309
  %cmp = icmp ne %struct._object* %22, null, !dbg !5302
  br i1 %cmp, label %if.then.20, label %if.end.26, !dbg !5303

if.then.20:                                       ; preds = %do.body
  br label %do.body.21, !dbg !5304

do.body.21:                                       ; preds = %if.then.20
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5306
  call void @llvm.lifetime.start(i64 8, i8* %23) #2, !dbg !5306
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1220, metadata !1313), !dbg !5308
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5309, !tbaa !1309
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !5308, !tbaa !1309
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5310, !tbaa !1309
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !5312
  %26 = load i64, i64* %ob_refcnt22, align 8, !dbg !5313, !tbaa !1370
  %dec = add i64 %26, -1, !dbg !5313
  store i64 %dec, i64* %ob_refcnt22, align 8, !dbg !5313, !tbaa !1370
  %cmp23 = icmp ne i64 %dec, 0, !dbg !5314
  br i1 %cmp23, label %if.then.24, label %if.else, !dbg !5315

if.then.24:                                       ; preds = %do.body.21
  br label %if.end.25, !dbg !5316

if.else:                                          ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5318, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !5320
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5320, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !5321
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5321, !tbaa !1447
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5322, !tbaa !1309
  call void %29(%struct._object* %30), !dbg !5323
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5324
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !5324
  br label %do.cond, !dbg !5326

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !5327

do.end:                                           ; preds = %do.cond
  br label %if.end.26, !dbg !5329

if.end.26:                                        ; preds = %do.end, %do.body
  %32 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5331
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !5331
  br label %do.cond.27, !dbg !5334

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28, !dbg !5335

do.end.28:                                        ; preds = %do.cond.27
  br label %do.body.29, !dbg !5337

do.body.29:                                       ; preds = %do.end.28
  %33 = bitcast %struct._object** %_py_xdecref_tmp30 to i8*, !dbg !5338
  call void @llvm.lifetime.start(i64 8, i8* %33) #2, !dbg !5338
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp30, metadata !1223, metadata !1313), !dbg !5340
  %34 = load %struct._object*, %struct._object** %module, align 8, !dbg !5341, !tbaa !1309
  store %struct._object* %34, %struct._object** %_py_xdecref_tmp30, align 8, !dbg !5340, !tbaa !1309
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp30, align 8, !dbg !5342, !tbaa !1309
  %cmp31 = icmp ne %struct._object* %35, null, !dbg !5343
  br i1 %cmp31, label %if.then.32, label %if.end.45, !dbg !5344

if.then.32:                                       ; preds = %do.body.29
  br label %do.body.33, !dbg !5345

do.body.33:                                       ; preds = %if.then.32
  %36 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !5347
  call void @llvm.lifetime.start(i64 8, i8* %36) #2, !dbg !5347
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !1225, metadata !1313), !dbg !5349
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp30, align 8, !dbg !5350, !tbaa !1309
  store %struct._object* %37, %struct._object** %_py_decref_tmp34, align 8, !dbg !5349, !tbaa !1309
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !5351, !tbaa !1309
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !5353
  %39 = load i64, i64* %ob_refcnt35, align 8, !dbg !5354, !tbaa !1370
  %dec36 = add i64 %39, -1, !dbg !5354
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !5354, !tbaa !1370
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !5355
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !5356

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !5357

if.else.39:                                       ; preds = %do.body.33
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !5359, !tbaa !1309
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !5361
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !5361, !tbaa !1445
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !5362
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !5362, !tbaa !1447
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !5363, !tbaa !1309
  call void %42(%struct._object* %43), !dbg !5364
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %44 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !5365
  call void @llvm.lifetime.end(i64 8, i8* %44) #2, !dbg !5365
  br label %do.cond.43, !dbg !5367

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !5368

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !5370

if.end.45:                                        ; preds = %do.end.44, %do.body.29
  %45 = bitcast %struct._object** %_py_xdecref_tmp30 to i8*, !dbg !5372
  call void @llvm.lifetime.end(i64 8, i8* %45) #2, !dbg !5372
  br label %do.cond.46, !dbg !5373

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !5374

do.end.47:                                        ; preds = %do.cond.46
  %46 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5376, !tbaa !1309
  %47 = bitcast %struct._object** %pyfn_iterdump to i8*, !dbg !5377
  call void @llvm.lifetime.end(i64 8, i8* %47) #2, !dbg !5377
  %48 = bitcast %struct._object** %module_dict to i8*, !dbg !5377
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !5377
  %49 = bitcast %struct._object** %module to i8*, !dbg !5377
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !5377
  %50 = bitcast %struct._object** %retval1 to i8*, !dbg !5377
  call void @llvm.lifetime.end(i64 8, i8* %50) #2, !dbg !5377
  ret %struct._object* %46, !dbg !5378
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_enter(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1230, metadata !1313), !dbg !5379
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1231, metadata !1313), !dbg !5380
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5381, !tbaa !1309
  %1 = bitcast %struct.pysqlite_Connection* %0 to %struct._object*, !dbg !5382
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !5383
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !5384, !tbaa !1370
  %inc = add i64 %2, 1, !dbg !5384
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !5384, !tbaa !1370
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5385, !tbaa !1309
  %4 = bitcast %struct.pysqlite_Connection* %3 to %struct._object*, !dbg !5386
  ret %struct._object* %4, !dbg !5387
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_exit(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %exc_type = alloca %struct._object*, align 8
  %exc_value = alloca %struct._object*, align 8
  %exc_tb = alloca %struct._object*, align 8
  %method_name = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1234, metadata !1313), !dbg !5388
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1235, metadata !1313), !dbg !5389
  %0 = bitcast %struct._object** %exc_type to i8*, !dbg !5390
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5390
  call void @llvm.dbg.declare(metadata %struct._object** %exc_type, metadata !1236, metadata !1313), !dbg !5391
  %1 = bitcast %struct._object** %exc_value to i8*, !dbg !5390
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5390
  call void @llvm.dbg.declare(metadata %struct._object** %exc_value, metadata !1237, metadata !1313), !dbg !5392
  %2 = bitcast %struct._object** %exc_tb to i8*, !dbg !5390
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !5390
  call void @llvm.dbg.declare(metadata %struct._object** %exc_tb, metadata !1238, metadata !1313), !dbg !5393
  %3 = bitcast i8** %method_name to i8*, !dbg !5394
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !5394
  call void @llvm.dbg.declare(metadata i8** %method_name, metadata !1239, metadata !1313), !dbg !5395
  %4 = bitcast %struct._object** %result to i8*, !dbg !5396
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5396
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !1240, metadata !1313), !dbg !5397
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5398, !tbaa !1309
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), %struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb), !dbg !5400
  %tobool = icmp ne i32 %call, 0, !dbg !5400
  br i1 %tobool, label %if.end, label %if.then, !dbg !5401

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5402
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5402

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %exc_type, align 8, !dbg !5404, !tbaa !1309
  %cmp = icmp eq %struct._object* %6, @_Py_NoneStruct, !dbg !5406
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5407

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %exc_value, align 8, !dbg !5408, !tbaa !1309
  %cmp1 = icmp eq %struct._object* %7, @_Py_NoneStruct, !dbg !5410
  br i1 %cmp1, label %land.lhs.true.2, label %if.else, !dbg !5411

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %exc_tb, align 8, !dbg !5412, !tbaa !1309
  %cmp3 = icmp eq %struct._object* %8, @_Py_NoneStruct, !dbg !5414
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !5415

if.then.4:                                        ; preds = %land.lhs.true.2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8** %method_name, align 8, !dbg !5416, !tbaa !1309
  br label %if.end.5, !dbg !5418

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8** %method_name, align 8, !dbg !5419, !tbaa !1309
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5421, !tbaa !1309
  %10 = bitcast %struct.pysqlite_Connection* %9 to %struct._object*, !dbg !5422
  %11 = load i8*, i8** %method_name, align 8, !dbg !5423, !tbaa !1309
  %call6 = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !5424
  store %struct._object* %call6, %struct._object** %result, align 8, !dbg !5425, !tbaa !1309
  %12 = load %struct._object*, %struct._object** %result, align 8, !dbg !5426, !tbaa !1309
  %tobool7 = icmp ne %struct._object* %12, null, !dbg !5426
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !5428

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval, !dbg !5429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5429

if.end.9:                                         ; preds = %if.end.5
  br label %do.body, !dbg !5431

do.body:                                          ; preds = %if.end.9
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5432
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !5432
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1241, metadata !1313), !dbg !5434
  %14 = load %struct._object*, %struct._object** %result, align 8, !dbg !5435, !tbaa !1309
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !5434, !tbaa !1309
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5436, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !5438
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !5439, !tbaa !1370
  %dec = add i64 %16, -1, !dbg !5439
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5439, !tbaa !1370
  %cmp10 = icmp ne i64 %dec, 0, !dbg !5440
  br i1 %cmp10, label %if.then.11, label %if.else.12, !dbg !5441

if.then.11:                                       ; preds = %do.body
  br label %if.end.13, !dbg !5442

if.else.12:                                       ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5444, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !5446
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5446, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !5447
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5447, !tbaa !1447
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5448, !tbaa !1309
  call void %19(%struct._object* %20), !dbg !5449
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5450
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !5450
  br label %do.cond, !dbg !5452

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !5453

do.end:                                           ; preds = %do.cond
  %22 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !5455, !tbaa !1370
  %inc = add i64 %22, 1, !dbg !5455
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !5455, !tbaa !1370
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !5456
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5456

cleanup:                                          ; preds = %do.end, %if.then.8, %if.then
  %23 = bitcast %struct._object** %result to i8*, !dbg !5457
  call void @llvm.lifetime.end(i64 8, i8* %23) #2, !dbg !5457
  %24 = bitcast i8** %method_name to i8*, !dbg !5457
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !5457
  %25 = bitcast %struct._object** %exc_tb to i8*, !dbg !5457
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !5457
  %26 = bitcast %struct._object** %exc_value to i8*, !dbg !5457
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !5457
  %27 = bitcast %struct._object** %exc_type to i8*, !dbg !5457
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !5457
  %28 = load %struct._object*, %struct._object** %retval, !dbg !5457
  ret %struct._object* %28, !dbg !5457
}

declare i32 @sqlite3_set_authorizer(%struct.sqlite3*, i32 (i8*, i32, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_authorizer_callback(i8* %user_arg, i32 %action, i8* %arg1, i8* %arg2, i8* %dbname, i8* %access_attempt_source) #0 {
entry:
  %user_arg.addr = alloca i8*, align 8
  %action.addr = alloca i32, align 4
  %arg1.addr = alloca i8*, align 8
  %arg2.addr = alloca i8*, align 8
  %dbname.addr = alloca i8*, align 8
  %access_attempt_source.addr = alloca i8*, align 8
  %ret = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %gilstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %user_arg, i8** %user_arg.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %user_arg.addr, metadata !1094, metadata !1313), !dbg !5458
  store i32 %action, i32* %action.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %action.addr, metadata !1095, metadata !1313), !dbg !5459
  store i8* %arg1, i8** %arg1.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %arg1.addr, metadata !1096, metadata !1313), !dbg !5460
  store i8* %arg2, i8** %arg2.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %arg2.addr, metadata !1097, metadata !1313), !dbg !5461
  store i8* %dbname, i8** %dbname.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %dbname.addr, metadata !1098, metadata !1313), !dbg !5462
  store i8* %access_attempt_source, i8** %access_attempt_source.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %access_attempt_source.addr, metadata !1099, metadata !1313), !dbg !5463
  %0 = bitcast %struct._object** %ret to i8*, !dbg !5464
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5464
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !1100, metadata !1313), !dbg !5465
  %1 = bitcast i32* %rc to i8*, !dbg !5466
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !5466
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1101, metadata !1313), !dbg !5467
  %2 = bitcast i32* %gilstate to i8*, !dbg !5468
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !5468
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !1102, metadata !1313), !dbg !5469
  %call = call i32 @PyGILState_Ensure(), !dbg !5470
  store i32 %call, i32* %gilstate, align 4, !dbg !5471, !tbaa !3221
  %3 = load i8*, i8** %user_arg.addr, align 8, !dbg !5472, !tbaa !1309
  %4 = bitcast i8* %3 to %struct._object*, !dbg !5473
  %5 = load i32, i32* %action.addr, align 4, !dbg !5474, !tbaa !1321
  %6 = load i8*, i8** %arg1.addr, align 8, !dbg !5475, !tbaa !1309
  %7 = load i8*, i8** %arg2.addr, align 8, !dbg !5476, !tbaa !1309
  %8 = load i8*, i8** %dbname.addr, align 8, !dbg !5477, !tbaa !1309
  %9 = load i8*, i8** %access_attempt_source.addr, align 8, !dbg !5478, !tbaa !1309
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 %5, i8* %6, i8* %7, i8* %8, i8* %9), !dbg !5479
  store %struct._object* %call1, %struct._object** %ret, align 8, !dbg !5480, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5481, !tbaa !1309
  %cmp = icmp eq %struct._object* %10, null, !dbg !5482
  br i1 %cmp, label %if.then, label %if.else.3, !dbg !5483

if.then:                                          ; preds = %entry
  %11 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !5484, !tbaa !1321
  %tobool = icmp ne i32 %11, 0, !dbg !5484
  br i1 %tobool, label %if.then.2, label %if.else, !dbg !5487

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Print(), !dbg !5488
  br label %if.end, !dbg !5488

if.else:                                          ; preds = %if.then
  call void @PyErr_Clear(), !dbg !5489
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 1, i32* %rc, align 4, !dbg !5490, !tbaa !1321
  br label %if.end.23, !dbg !5491

if.else.3:                                        ; preds = %entry
  %12 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5492, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !5494
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5494, !tbaa !1445
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 19, !dbg !5495
  %14 = load i64, i64* %tp_flags, align 8, !dbg !5495, !tbaa !3325
  %and = and i64 %14, 16777216, !dbg !5496
  %cmp4 = icmp ne i64 %and, 0, !dbg !5497
  br i1 %cmp4, label %if.then.5, label %if.else.16, !dbg !5498

if.then.5:                                        ; preds = %if.else.3
  %15 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5499, !tbaa !1309
  %call6 = call i32 @_PyLong_AsInt(%struct._object* %15), !dbg !5501
  store i32 %call6, i32* %rc, align 4, !dbg !5502, !tbaa !1321
  %16 = load i32, i32* %rc, align 4, !dbg !5503, !tbaa !1321
  %cmp7 = icmp eq i32 %16, -1, !dbg !5505
  br i1 %cmp7, label %land.lhs.true, label %if.end.15, !dbg !5506

land.lhs.true:                                    ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !5507
  %tobool9 = icmp ne %struct._object* %call8, null, !dbg !5507
  br i1 %tobool9, label %if.then.10, label %if.end.15, !dbg !5509

if.then.10:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !5510, !tbaa !1321
  %tobool11 = icmp ne i32 %17, 0, !dbg !5510
  br i1 %tobool11, label %if.then.12, label %if.else.13, !dbg !5513

if.then.12:                                       ; preds = %if.then.10
  call void @PyErr_Print(), !dbg !5514
  br label %if.end.14, !dbg !5514

if.else.13:                                       ; preds = %if.then.10
  call void @PyErr_Clear(), !dbg !5515
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  store i32 1, i32* %rc, align 4, !dbg !5516, !tbaa !1321
  br label %if.end.15, !dbg !5517

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.then.5
  br label %if.end.17, !dbg !5518

if.else.16:                                       ; preds = %if.else.3
  store i32 1, i32* %rc, align 4, !dbg !5519, !tbaa !1321
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.15
  br label %do.body, !dbg !5521

do.body:                                          ; preds = %if.end.17
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5522
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !5522
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1103, metadata !1313), !dbg !5524
  %19 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5525, !tbaa !1309
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !5524, !tbaa !1309
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5526, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !5528
  %21 = load i64, i64* %ob_refcnt, align 8, !dbg !5529, !tbaa !1370
  %dec = add i64 %21, -1, !dbg !5529
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5529, !tbaa !1370
  %cmp18 = icmp ne i64 %dec, 0, !dbg !5530
  br i1 %cmp18, label %if.then.19, label %if.else.20, !dbg !5531

if.then.19:                                       ; preds = %do.body
  br label %if.end.22, !dbg !5532

if.else.20:                                       ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5534, !tbaa !1309
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !5536
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !5536, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !5537
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5537, !tbaa !1447
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5538, !tbaa !1309
  call void %24(%struct._object* %25), !dbg !5539
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5540
  call void @llvm.lifetime.end(i64 8, i8* %26) #2, !dbg !5540
  br label %do.cond, !dbg !5542

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !5543

do.end:                                           ; preds = %do.cond
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %if.end
  %27 = load i32, i32* %gilstate, align 4, !dbg !5545, !tbaa !3221
  call void @PyGILState_Release(i32 %27), !dbg !5546
  %28 = load i32, i32* %rc, align 4, !dbg !5547, !tbaa !1321
  %29 = bitcast i32* %gilstate to i8*, !dbg !5548
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !5548
  %30 = bitcast i32* %rc to i8*, !dbg !5548
  call void @llvm.lifetime.end(i64 4, i8* %30) #2, !dbg !5548
  %31 = bitcast %struct._object** %ret to i8*, !dbg !5548
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !5548
  ret i32 %28, !dbg !5549
}

declare i32 @_PyLong_AsInt(%struct._object*) #3

declare void @sqlite3_progress_handler(%struct.sqlite3*, i32, i32 (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @_progress_handler(i8* %user_arg) #0 {
entry:
  %user_arg.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %ret = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %user_arg, i8** %user_arg.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %user_arg.addr, metadata !1118, metadata !1313), !dbg !5550
  %0 = bitcast i32* %rc to i8*, !dbg !5551
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !5551
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !1119, metadata !1313), !dbg !5552
  %1 = bitcast %struct._object** %ret to i8*, !dbg !5553
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5553
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !1120, metadata !1313), !dbg !5554
  %2 = bitcast i32* %gilstate to i8*, !dbg !5555
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !5555
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !1121, metadata !1313), !dbg !5556
  %call = call i32 @PyGILState_Ensure(), !dbg !5557
  store i32 %call, i32* %gilstate, align 4, !dbg !5558, !tbaa !3221
  %3 = load i8*, i8** %user_arg.addr, align 8, !dbg !5559, !tbaa !1309
  %4 = bitcast i8* %3 to %struct._object*, !dbg !5560
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)), !dbg !5561
  store %struct._object* %call1, %struct._object** %ret, align 8, !dbg !5562, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5563, !tbaa !1309
  %tobool = icmp ne %struct._object* %5, null, !dbg !5563
  br i1 %tobool, label %if.else.4, label %if.then, !dbg !5564

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !5565, !tbaa !1321
  %tobool2 = icmp ne i32 %6, 0, !dbg !5565
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !5568

if.then.3:                                        ; preds = %if.then
  call void @PyErr_Print(), !dbg !5569
  br label %if.end, !dbg !5571

if.else:                                          ; preds = %if.then
  call void @PyErr_Clear(), !dbg !5572
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i32 1, i32* %rc, align 4, !dbg !5574, !tbaa !1321
  br label %if.end.9, !dbg !5575

if.else.4:                                        ; preds = %entry
  %7 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5576, !tbaa !1309
  %call5 = call i32 @PyObject_IsTrue(%struct._object* %7), !dbg !5577
  store i32 %call5, i32* %rc, align 4, !dbg !5578, !tbaa !1321
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %if.else.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5580
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !5580
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1122, metadata !1313), !dbg !5582
  %9 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5583, !tbaa !1309
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !5582, !tbaa !1309
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5584, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !5586
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !5587, !tbaa !1370
  %dec = add i64 %11, -1, !dbg !5587
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5587, !tbaa !1370
  %cmp = icmp ne i64 %dec, 0, !dbg !5588
  br i1 %cmp, label %if.then.6, label %if.else.7, !dbg !5589

if.then.6:                                        ; preds = %do.body
  br label %if.end.8, !dbg !5590

if.else.7:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5592, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !5594
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5594, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !5595
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5595, !tbaa !1447
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5596, !tbaa !1309
  call void %14(%struct._object* %15), !dbg !5597
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5598
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !5598
  br label %do.cond, !dbg !5600

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !5601

do.end:                                           ; preds = %do.cond
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.end
  %17 = load i32, i32* %gilstate, align 4, !dbg !5603, !tbaa !3221
  call void @PyGILState_Release(i32 %17), !dbg !5604
  %18 = load i32, i32* %rc, align 4, !dbg !5605, !tbaa !1321
  %19 = bitcast i32* %gilstate to i8*, !dbg !5606
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !5606
  %20 = bitcast %struct._object** %ret to i8*, !dbg !5606
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !5606
  %21 = bitcast i32* %rc to i8*, !dbg !5606
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !5606
  ret i32 %18, !dbg !5607
}

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare i8* @sqlite3_trace(%struct.sqlite3*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @_trace_callback(i8* %user_arg, i8* %statement_string) #0 {
entry:
  %user_arg.addr = alloca i8*, align 8
  %statement_string.addr = alloca i8*, align 8
  %py_statement = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  store i8* %user_arg, i8** %user_arg.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %user_arg.addr, metadata !1136, metadata !1313), !dbg !5608
  store i8* %statement_string, i8** %statement_string.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %statement_string.addr, metadata !1137, metadata !1313), !dbg !5609
  %0 = bitcast %struct._object** %py_statement to i8*, !dbg !5610
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5610
  call void @llvm.dbg.declare(metadata %struct._object** %py_statement, metadata !1138, metadata !1313), !dbg !5611
  store %struct._object* null, %struct._object** %py_statement, align 8, !dbg !5611, !tbaa !1309
  %1 = bitcast %struct._object** %ret to i8*, !dbg !5612
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !5612
  call void @llvm.dbg.declare(metadata %struct._object** %ret, metadata !1139, metadata !1313), !dbg !5613
  store %struct._object* null, %struct._object** %ret, align 8, !dbg !5613, !tbaa !1309
  %2 = bitcast i32* %gilstate to i8*, !dbg !5614
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !5614
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !1140, metadata !1313), !dbg !5615
  %call = call i32 @PyGILState_Ensure(), !dbg !5616
  store i32 %call, i32* %gilstate, align 4, !dbg !5617, !tbaa !3221
  %3 = load i8*, i8** %statement_string.addr, align 8, !dbg !5618, !tbaa !1309
  %4 = load i8*, i8** %statement_string.addr, align 8, !dbg !5619, !tbaa !1309
  %call1 = call i64 @strlen(i8* %4) #6, !dbg !5620
  %call2 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %3, i64 %call1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0)), !dbg !5621
  store %struct._object* %call2, %struct._object** %py_statement, align 8, !dbg !5622, !tbaa !1309
  %5 = load %struct._object*, %struct._object** %py_statement, align 8, !dbg !5623, !tbaa !1309
  %tobool = icmp ne %struct._object* %5, null, !dbg !5623
  br i1 %tobool, label %if.then, label %if.end.5, !dbg !5624

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %user_arg.addr, align 8, !dbg !5625, !tbaa !1309
  %7 = bitcast i8* %6 to %struct._object*, !dbg !5626
  %8 = load %struct._object*, %struct._object** %py_statement, align 8, !dbg !5627, !tbaa !1309
  %call3 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %7, %struct._object* %8, i8* null), !dbg !5628
  store %struct._object* %call3, %struct._object** %ret, align 8, !dbg !5629, !tbaa !1309
  br label %do.body, !dbg !5630

do.body:                                          ; preds = %if.then
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5631
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !5631
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1141, metadata !1313), !dbg !5633
  %10 = load %struct._object*, %struct._object** %py_statement, align 8, !dbg !5634, !tbaa !1309
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !5633, !tbaa !1309
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5635, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !5637
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !5638, !tbaa !1370
  %dec = add i64 %12, -1, !dbg !5638
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5638, !tbaa !1370
  %cmp = icmp ne i64 %dec, 0, !dbg !5639
  br i1 %cmp, label %if.then.4, label %if.else, !dbg !5640

if.then.4:                                        ; preds = %do.body
  br label %if.end, !dbg !5641

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5643, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !5645
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5645, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !5646
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5646, !tbaa !1447
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5647, !tbaa !1309
  call void %15(%struct._object* %16), !dbg !5648
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5649
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !5649
  br label %do.cond, !dbg !5651

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5652

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !5654

if.end.5:                                         ; preds = %do.end, %entry
  %18 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5655, !tbaa !1309
  %tobool6 = icmp ne %struct._object* %18, null, !dbg !5655
  br i1 %tobool6, label %if.then.7, label %if.else.20, !dbg !5656

if.then.7:                                        ; preds = %if.end.5
  br label %do.body.8, !dbg !5657

do.body.8:                                        ; preds = %if.then.7
  %19 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !5658
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !5658
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp9, metadata !1145, metadata !1313), !dbg !5660
  %20 = load %struct._object*, %struct._object** %ret, align 8, !dbg !5661, !tbaa !1309
  store %struct._object* %20, %struct._object** %_py_decref_tmp9, align 8, !dbg !5660, !tbaa !1309
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !5662, !tbaa !1309
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !5664
  %22 = load i64, i64* %ob_refcnt10, align 8, !dbg !5665, !tbaa !1370
  %dec11 = add i64 %22, -1, !dbg !5665
  store i64 %dec11, i64* %ob_refcnt10, align 8, !dbg !5665, !tbaa !1370
  %cmp12 = icmp ne i64 %dec11, 0, !dbg !5666
  br i1 %cmp12, label %if.then.13, label %if.else.14, !dbg !5667

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17, !dbg !5668

if.else.14:                                       ; preds = %do.body.8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !5670, !tbaa !1309
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1, !dbg !5672
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8, !dbg !5672, !tbaa !1445
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4, !dbg !5673
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8, !dbg !5673, !tbaa !1447
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8, !dbg !5674, !tbaa !1309
  call void %25(%struct._object* %26), !dbg !5675
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  %27 = bitcast %struct._object** %_py_decref_tmp9 to i8*, !dbg !5676
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !5676
  br label %do.cond.18, !dbg !5678

do.cond.18:                                       ; preds = %if.end.17
  br label %do.end.19, !dbg !5679

do.end.19:                                        ; preds = %do.cond.18
  br label %if.end.25, !dbg !5681

if.else.20:                                       ; preds = %if.end.5
  %28 = load i32, i32* @_enable_callback_tracebacks, align 4, !dbg !5682, !tbaa !1321
  %tobool21 = icmp ne i32 %28, 0, !dbg !5682
  br i1 %tobool21, label %if.then.22, label %if.else.23, !dbg !5685

if.then.22:                                       ; preds = %if.else.20
  call void @PyErr_Print(), !dbg !5686
  br label %if.end.24, !dbg !5688

if.else.23:                                       ; preds = %if.else.20
  call void @PyErr_Clear(), !dbg !5689
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.end.19
  %29 = load i32, i32* %gilstate, align 4, !dbg !5691, !tbaa !3221
  call void @PyGILState_Release(i32 %29), !dbg !5692
  %30 = bitcast i32* %gilstate to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 4, i8* %30) #2, !dbg !5693
  %31 = bitcast %struct._object** %ret to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 8, i8* %31) #2, !dbg !5693
  %32 = bitcast %struct._object** %py_statement to i8*, !dbg !5693
  call void @llvm.lifetime.end(i64 8, i8* %32) #2, !dbg !5693
  ret void, !dbg !5693
}

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

declare i32 @sqlite3_create_collation(%struct.sqlite3*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pysqlite_collation_callback(i8* %context, i32 %text1_length, i8* %text1_data, i32 %text2_length, i8* %text2_data) #0 {
entry:
  %context.addr = alloca i8*, align 8
  %text1_length.addr = alloca i32, align 4
  %text1_data.addr = alloca i8*, align 8
  %text2_length.addr = alloca i32, align 4
  %text2_data.addr = alloca i8*, align 8
  %callback = alloca %struct._object*, align 8
  %string1 = alloca %struct._object*, align 8
  %string2 = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %retval1 = alloca %struct._object*, align 8
  %longval = alloca i64, align 8
  %result = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  store i8* %context, i8** %context.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1178, metadata !1313), !dbg !5694
  store i32 %text1_length, i32* %text1_length.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %text1_length.addr, metadata !1179, metadata !1313), !dbg !5695
  store i8* %text1_data, i8** %text1_data.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %text1_data.addr, metadata !1180, metadata !1313), !dbg !5696
  store i32 %text2_length, i32* %text2_length.addr, align 4, !tbaa !1321
  call void @llvm.dbg.declare(metadata i32* %text2_length.addr, metadata !1181, metadata !1313), !dbg !5697
  store i8* %text2_data, i8** %text2_data.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %text2_data.addr, metadata !1182, metadata !1313), !dbg !5698
  %0 = bitcast %struct._object** %callback to i8*, !dbg !5699
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !5699
  call void @llvm.dbg.declare(metadata %struct._object** %callback, metadata !1183, metadata !1313), !dbg !5700
  %1 = load i8*, i8** %context.addr, align 8, !dbg !5701, !tbaa !1309
  %2 = bitcast i8* %1 to %struct._object*, !dbg !5702
  store %struct._object* %2, %struct._object** %callback, align 8, !dbg !5700, !tbaa !1309
  %3 = bitcast %struct._object** %string1 to i8*, !dbg !5703
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !5703
  call void @llvm.dbg.declare(metadata %struct._object** %string1, metadata !1184, metadata !1313), !dbg !5704
  store %struct._object* null, %struct._object** %string1, align 8, !dbg !5704, !tbaa !1309
  %4 = bitcast %struct._object** %string2 to i8*, !dbg !5705
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !5705
  call void @llvm.dbg.declare(metadata %struct._object** %string2, metadata !1185, metadata !1313), !dbg !5706
  store %struct._object* null, %struct._object** %string2, align 8, !dbg !5706, !tbaa !1309
  %5 = bitcast i32* %gilstate to i8*, !dbg !5707
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !5707
  call void @llvm.dbg.declare(metadata i32* %gilstate, metadata !1186, metadata !1313), !dbg !5708
  %6 = bitcast %struct._object** %retval1 to i8*, !dbg !5709
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !5709
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !1187, metadata !1313), !dbg !5710
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !5710, !tbaa !1309
  %7 = bitcast i64* %longval to i8*, !dbg !5711
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !5711
  call void @llvm.dbg.declare(metadata i64* %longval, metadata !1188, metadata !1313), !dbg !5712
  %8 = bitcast i32* %result to i8*, !dbg !5713
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !5713
  call void @llvm.dbg.declare(metadata i32* %result, metadata !1189, metadata !1313), !dbg !5714
  store i32 0, i32* %result, align 4, !dbg !5714, !tbaa !1321
  %call = call i32 @PyGILState_Ensure(), !dbg !5715
  store i32 %call, i32* %gilstate, align 4, !dbg !5716, !tbaa !3221
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !5717
  %tobool = icmp ne %struct._object* %call2, null, !dbg !5717
  br i1 %tobool, label %if.then, label %if.end, !dbg !5719

if.then:                                          ; preds = %entry
  br label %finally, !dbg !5720

if.end:                                           ; preds = %entry
  %9 = load i8*, i8** %text1_data.addr, align 8, !dbg !5722, !tbaa !1309
  %10 = load i32, i32* %text1_length.addr, align 4, !dbg !5723, !tbaa !1321
  %conv = sext i32 %10 to i64, !dbg !5723
  %call3 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %9, i64 %conv), !dbg !5724
  store %struct._object* %call3, %struct._object** %string1, align 8, !dbg !5725, !tbaa !1309
  %11 = load i8*, i8** %text2_data.addr, align 8, !dbg !5726, !tbaa !1309
  %12 = load i32, i32* %text2_length.addr, align 4, !dbg !5727, !tbaa !1321
  %conv4 = sext i32 %12 to i64, !dbg !5727
  %call5 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %11, i64 %conv4), !dbg !5728
  store %struct._object* %call5, %struct._object** %string2, align 8, !dbg !5729, !tbaa !1309
  %13 = load %struct._object*, %struct._object** %string1, align 8, !dbg !5730, !tbaa !1309
  %tobool6 = icmp ne %struct._object* %13, null, !dbg !5730
  br i1 %tobool6, label %lor.lhs.false, label %if.then.8, !dbg !5732

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %string2, align 8, !dbg !5733, !tbaa !1309
  %tobool7 = icmp ne %struct._object* %14, null, !dbg !5733
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !5735

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %finally, !dbg !5736

if.end.9:                                         ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %callback, align 8, !dbg !5738, !tbaa !1309
  %16 = load %struct._object*, %struct._object** %string1, align 8, !dbg !5739, !tbaa !1309
  %17 = load %struct._object*, %struct._object** %string2, align 8, !dbg !5740, !tbaa !1309
  %call10 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %15, %struct._object* %16, %struct._object* %17, i8* null), !dbg !5741
  store %struct._object* %call10, %struct._object** %retval1, align 8, !dbg !5742, !tbaa !1309
  %18 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5743, !tbaa !1309
  %tobool11 = icmp ne %struct._object* %18, null, !dbg !5743
  br i1 %tobool11, label %if.end.13, label %if.then.12, !dbg !5745

if.then.12:                                       ; preds = %if.end.9
  br label %finally, !dbg !5746

if.end.13:                                        ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5748, !tbaa !1309
  %call14 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %19, i32* %result), !dbg !5749
  store i64 %call14, i64* %longval, align 8, !dbg !5750, !tbaa !1822
  %20 = load i64, i64* %longval, align 8, !dbg !5751, !tbaa !1822
  %cmp = icmp eq i64 %20, -1, !dbg !5753
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5754

land.lhs.true:                                    ; preds = %if.end.13
  %call16 = call %struct._object* @PyErr_Occurred(), !dbg !5755
  %tobool17 = icmp ne %struct._object* %call16, null, !dbg !5755
  br i1 %tobool17, label %if.then.18, label %if.else, !dbg !5757

if.then.18:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !5758
  store i32 0, i32* %result, align 4, !dbg !5760, !tbaa !1321
  br label %if.end.31, !dbg !5761

if.else:                                          ; preds = %land.lhs.true, %if.end.13
  %21 = load i32, i32* %result, align 4, !dbg !5762, !tbaa !1321
  %tobool19 = icmp ne i32 %21, 0, !dbg !5762
  br i1 %tobool19, label %if.end.30, label %if.then.20, !dbg !5764

if.then.20:                                       ; preds = %if.else
  %22 = load i64, i64* %longval, align 8, !dbg !5765, !tbaa !1822
  %cmp21 = icmp sgt i64 %22, 0, !dbg !5768
  br i1 %cmp21, label %if.then.23, label %if.else.24, !dbg !5769

if.then.23:                                       ; preds = %if.then.20
  store i32 1, i32* %result, align 4, !dbg !5770, !tbaa !1321
  br label %if.end.29, !dbg !5771

if.else.24:                                       ; preds = %if.then.20
  %23 = load i64, i64* %longval, align 8, !dbg !5772, !tbaa !1822
  %cmp25 = icmp slt i64 %23, 0, !dbg !5774
  br i1 %cmp25, label %if.then.27, label %if.end.28, !dbg !5775

if.then.27:                                       ; preds = %if.else.24
  store i32 -1, i32* %result, align 4, !dbg !5776, !tbaa !1321
  br label %if.end.28, !dbg !5777

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.23
  br label %if.end.30, !dbg !5778

if.end.30:                                        ; preds = %if.end.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  br label %finally, !dbg !5779

finally:                                          ; preds = %if.end.31, %if.then.12, %if.then.8, %if.then
  br label %do.body, !dbg !5780

do.body:                                          ; preds = %finally
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5781
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !5781
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1190, metadata !1313), !dbg !5783
  %25 = load %struct._object*, %struct._object** %string1, align 8, !dbg !5784, !tbaa !1309
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5783, !tbaa !1309
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5785, !tbaa !1309
  %cmp32 = icmp ne %struct._object* %26, null, !dbg !5786
  br i1 %cmp32, label %if.then.34, label %if.end.41, !dbg !5787

if.then.34:                                       ; preds = %do.body
  br label %do.body.35, !dbg !5788

do.body.35:                                       ; preds = %if.then.34
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5790
  call void @llvm.lifetime.start(i64 8, i8* %27) #2, !dbg !5790
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1192, metadata !1313), !dbg !5792
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5793, !tbaa !1309
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !5792, !tbaa !1309
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5794, !tbaa !1309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !5796
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !5797, !tbaa !1370
  %dec = add i64 %30, -1, !dbg !5797
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5797, !tbaa !1370
  %cmp36 = icmp ne i64 %dec, 0, !dbg !5798
  br i1 %cmp36, label %if.then.38, label %if.else.39, !dbg !5799

if.then.38:                                       ; preds = %do.body.35
  br label %if.end.40, !dbg !5800

if.else.39:                                       ; preds = %do.body.35
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5802, !tbaa !1309
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !5804
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5804, !tbaa !1445
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !5805
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5805, !tbaa !1447
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5806, !tbaa !1309
  call void %33(%struct._object* %34), !dbg !5807
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5808
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !5808
  br label %do.cond, !dbg !5810

do.cond:                                          ; preds = %if.end.40
  br label %do.end, !dbg !5811

do.end:                                           ; preds = %do.cond
  br label %if.end.41, !dbg !5813

if.end.41:                                        ; preds = %do.end, %do.body
  %36 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5815
  call void @llvm.lifetime.end(i64 8, i8* %36) #2, !dbg !5815
  br label %do.cond.42, !dbg !5818

do.cond.42:                                       ; preds = %if.end.41
  br label %do.end.43, !dbg !5819

do.end.43:                                        ; preds = %do.cond.42
  br label %do.body.44, !dbg !5821

do.body.44:                                       ; preds = %do.end.43
  %37 = bitcast %struct._object** %_py_xdecref_tmp45 to i8*, !dbg !5822
  call void @llvm.lifetime.start(i64 8, i8* %37) #2, !dbg !5822
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp45, metadata !1195, metadata !1313), !dbg !5824
  %38 = load %struct._object*, %struct._object** %string2, align 8, !dbg !5825, !tbaa !1309
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp45, align 8, !dbg !5824, !tbaa !1309
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8, !dbg !5826, !tbaa !1309
  %cmp46 = icmp ne %struct._object* %39, null, !dbg !5827
  br i1 %cmp46, label %if.then.48, label %if.end.62, !dbg !5828

if.then.48:                                       ; preds = %do.body.44
  br label %do.body.49, !dbg !5829

do.body.49:                                       ; preds = %if.then.48
  %40 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5831
  call void @llvm.lifetime.start(i64 8, i8* %40) #2, !dbg !5831
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !1197, metadata !1313), !dbg !5833
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8, !dbg !5834, !tbaa !1309
  store %struct._object* %41, %struct._object** %_py_decref_tmp50, align 8, !dbg !5833, !tbaa !1309
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5835, !tbaa !1309
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !5837
  %43 = load i64, i64* %ob_refcnt51, align 8, !dbg !5838, !tbaa !1370
  %dec52 = add i64 %43, -1, !dbg !5838
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !5838, !tbaa !1370
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !5839
  br i1 %cmp53, label %if.then.55, label %if.else.56, !dbg !5840

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59, !dbg !5841

if.else.56:                                       ; preds = %do.body.49
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5843, !tbaa !1309
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !5845
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8, !dbg !5845, !tbaa !1445
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !5846
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8, !dbg !5846, !tbaa !1447
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !5847, !tbaa !1309
  call void %46(%struct._object* %47), !dbg !5848
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  %48 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !5849
  call void @llvm.lifetime.end(i64 8, i8* %48) #2, !dbg !5849
  br label %do.cond.60, !dbg !5851

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61, !dbg !5852

do.end.61:                                        ; preds = %do.cond.60
  br label %if.end.62, !dbg !5854

if.end.62:                                        ; preds = %do.end.61, %do.body.44
  %49 = bitcast %struct._object** %_py_xdecref_tmp45 to i8*, !dbg !5856
  call void @llvm.lifetime.end(i64 8, i8* %49) #2, !dbg !5856
  br label %do.cond.63, !dbg !5857

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !5858

do.end.64:                                        ; preds = %do.cond.63
  br label %do.body.65, !dbg !5860

do.body.65:                                       ; preds = %do.end.64
  %50 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !5861
  call void @llvm.lifetime.start(i64 8, i8* %50) #2, !dbg !5861
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp66, metadata !1200, metadata !1313), !dbg !5863
  %51 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !5864, !tbaa !1309
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !5863, !tbaa !1309
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !5865, !tbaa !1309
  %cmp67 = icmp ne %struct._object* %52, null, !dbg !5866
  br i1 %cmp67, label %if.then.69, label %if.end.83, !dbg !5867

if.then.69:                                       ; preds = %do.body.65
  br label %do.body.70, !dbg !5868

do.body.70:                                       ; preds = %if.then.69
  %53 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !5870
  call void @llvm.lifetime.start(i64 8, i8* %53) #2, !dbg !5870
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp71, metadata !1202, metadata !1313), !dbg !5872
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8, !dbg !5873, !tbaa !1309
  store %struct._object* %54, %struct._object** %_py_decref_tmp71, align 8, !dbg !5872, !tbaa !1309
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !5874, !tbaa !1309
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !5876
  %56 = load i64, i64* %ob_refcnt72, align 8, !dbg !5877, !tbaa !1370
  %dec73 = add i64 %56, -1, !dbg !5877
  store i64 %dec73, i64* %ob_refcnt72, align 8, !dbg !5877, !tbaa !1370
  %cmp74 = icmp ne i64 %dec73, 0, !dbg !5878
  br i1 %cmp74, label %if.then.76, label %if.else.77, !dbg !5879

if.then.76:                                       ; preds = %do.body.70
  br label %if.end.80, !dbg !5880

if.else.77:                                       ; preds = %do.body.70
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !5882, !tbaa !1309
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !5884
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8, !dbg !5884, !tbaa !1445
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !5885
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8, !dbg !5885, !tbaa !1447
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8, !dbg !5886, !tbaa !1309
  call void %59(%struct._object* %60), !dbg !5887
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  %61 = bitcast %struct._object** %_py_decref_tmp71 to i8*, !dbg !5888
  call void @llvm.lifetime.end(i64 8, i8* %61) #2, !dbg !5888
  br label %do.cond.81, !dbg !5890

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !5891

do.end.82:                                        ; preds = %do.cond.81
  br label %if.end.83, !dbg !5893

if.end.83:                                        ; preds = %do.end.82, %do.body.65
  %62 = bitcast %struct._object** %_py_xdecref_tmp66 to i8*, !dbg !5895
  call void @llvm.lifetime.end(i64 8, i8* %62) #2, !dbg !5895
  br label %do.cond.84, !dbg !5896

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85, !dbg !5897

do.end.85:                                        ; preds = %do.cond.84
  %63 = load i32, i32* %gilstate, align 4, !dbg !5899, !tbaa !3221
  call void @PyGILState_Release(i32 %63), !dbg !5900
  %64 = load i32, i32* %result, align 4, !dbg !5901, !tbaa !1321
  %65 = bitcast i32* %result to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 4, i8* %65) #2, !dbg !5902
  %66 = bitcast i64* %longval to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 8, i8* %66) #2, !dbg !5902
  %67 = bitcast %struct._object** %retval1 to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !5902
  %68 = bitcast i32* %gilstate to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 4, i8* %68) #2, !dbg !5902
  %69 = bitcast %struct._object** %string2 to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 8, i8* %69) #2, !dbg !5902
  %70 = bitcast %struct._object** %string1 to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 8, i8* %70) #2, !dbg !5902
  %71 = bitcast %struct._object** %callback to i8*, !dbg !5902
  call void @llvm.lifetime.end(i64 8, i8* %71) #2, !dbg !5902
  ret i32 %64, !dbg !5903
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #3

declare void @sqlite3_interrupt(%struct.sqlite3*) #3

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_get_isolation_level(%struct.pysqlite_Connection* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1247, metadata !1313), !dbg !5904
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !1248, metadata !1313), !dbg !5905
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5906, !tbaa !1309
  %isolation_level = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 6, !dbg !5907
  %1 = load %struct._object*, %struct._object** %isolation_level, align 8, !dbg !5907, !tbaa !1423
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0, !dbg !5908
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !5909, !tbaa !1370
  %inc = add i64 %2, 1, !dbg !5909
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !5909, !tbaa !1370
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5910, !tbaa !1309
  %isolation_level1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 6, !dbg !5911
  %4 = load %struct._object*, %struct._object** %isolation_level1, align 8, !dbg !5911, !tbaa !1423
  ret %struct._object* %4, !dbg !5912
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_get_total_changes(%struct.pysqlite_Connection* %self, i8* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata %struct.pysqlite_Connection** %self.addr, metadata !1251, metadata !1313), !dbg !5913
  store i8* %unused, i8** %unused.addr, align 8, !tbaa !1309
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !1252, metadata !1313), !dbg !5914
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5915, !tbaa !1309
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %0), !dbg !5917
  %tobool = icmp ne i32 %call, 0, !dbg !5917
  br i1 %tobool, label %if.else, label %if.then, !dbg !5918

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5919
  br label %return, !dbg !5919

if.else:                                          ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8, !dbg !5921, !tbaa !1309
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 1, !dbg !5923
  %2 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8, !dbg !5923, !tbaa !1401
  %call1 = call i32 @sqlite3_total_changes(%struct.sqlite3* %2), !dbg !5924
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i32 %call1), !dbg !5925
  store %struct._object* %call2, %struct._object** %retval, !dbg !5926
  br label %return, !dbg !5926

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval, !dbg !5927
  ret %struct._object* %3, !dbg !5927
}

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i32 @sqlite3_total_changes(%struct.sqlite3*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1305, !1306, !1307}
!llvm.ident = !{!1308}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !15, subprograms: !512, globals: !1253)
!1 = !DIFile(filename: "connection.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 190, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "PyGILState_LOCKED", value: 0)
!7 = !DIEnumerator(name: "PyGILState_UNLOCKED", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !9, line: 451, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !{!11, !12, !13, !14}
!11 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!12 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!13 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!14 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!15 = !{!16, !362, !55, !385, !403, !101, !40, !459, !460, !461, !479, !487, !505, !506, !508, !510}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !18, line: 109, baseType: !19)
!18 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !18, line: 105, size: 128, align: 64, elements: !20)
!20 = !{!21, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !19, file: !18, line: 107, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !23, line: 177, baseType: !24)
!23 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !25, line: 102, baseType: !26)
!25 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !27, line: 181, baseType: !28)
!27 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !19, file: !18, line: 108, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !18, line: 334, size: 3200, align: 64, elements: !32)
!32 = !{!33, !39, !43, !44, !45, !50, !114, !119, !124, !125, !130, !182, !213, !225, !231, !232, !233, !235, !237, !268, !269, !270, !279, !280, !285, !286, !288, !290, !300, !310, !328, !329, !330, !332, !334, !335, !337, !342, !347, !352, !353, !354, !355, !356, !357, !358, !359, !361}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !18, line: 335, baseType: !34, size: 192, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !18, line: 114, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 111, size: 192, align: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !35, file: !18, line: 112, baseType: !17, size: 128, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !35, file: !18, line: 113, baseType: !22, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !31, file: !18, line: 336, baseType: !40, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !31, file: !18, line: 337, baseType: !22, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !31, file: !18, line: 341, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !18, line: 308, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !16}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !31, file: !18, line: 342, baseType: !51, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !18, line: 314, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !16, !56, !55}
!55 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 48, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !59, line: 246, size: 1728, align: 64, elements: !60)
!59 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!60 = !{!61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !82, !83, !84, !85, !87, !89, !91, !95, !98, !100, !102, !103, !104, !105, !109, !110}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !58, file: !59, line: 247, baseType: !55, size: 32, align: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !58, file: !59, line: 252, baseType: !63, size: 64, align: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !58, file: !59, line: 253, baseType: !63, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !58, file: !59, line: 254, baseType: !63, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !58, file: !59, line: 255, baseType: !63, size: 64, align: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !58, file: !59, line: 256, baseType: !63, size: 64, align: 64, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !58, file: !59, line: 257, baseType: !63, size: 64, align: 64, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !58, file: !59, line: 258, baseType: !63, size: 64, align: 64, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !58, file: !59, line: 259, baseType: !63, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !58, file: !59, line: 261, baseType: !63, size: 64, align: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !58, file: !59, line: 262, baseType: !63, size: 64, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !58, file: !59, line: 263, baseType: !63, size: 64, align: 64, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !58, file: !59, line: 265, baseType: !75, size: 64, align: 64, offset: 768)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !59, line: 161, size: 192, align: 64, elements: !77)
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !76, file: !59, line: 162, baseType: !75, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !76, file: !59, line: 163, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !76, file: !59, line: 167, baseType: !55, size: 32, align: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !58, file: !59, line: 267, baseType: !80, size: 64, align: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !58, file: !59, line: 269, baseType: !55, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !58, file: !59, line: 273, baseType: !55, size: 32, align: 32, offset: 928)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !58, file: !59, line: 275, baseType: !86, size: 64, align: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !27, line: 140, baseType: !28)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !58, file: !59, line: 279, baseType: !88, size: 16, align: 16, offset: 1024)
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !58, file: !59, line: 280, baseType: !90, size: 8, align: 8, offset: 1040)
!90 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !58, file: !59, line: 281, baseType: !92, size: 8, align: 8, offset: 1048)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !58, file: !59, line: 285, baseType: !96, size: 64, align: 64, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !59, line: 155, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !58, file: !59, line: 294, baseType: !99, size: 64, align: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !27, line: 141, baseType: !28)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !58, file: !59, line: 303, baseType: !101, size: 64, align: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !58, file: !59, line: 304, baseType: !101, size: 64, align: 64, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !58, file: !59, line: 305, baseType: !101, size: 64, align: 64, offset: 1344)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !58, file: !59, line: 306, baseType: !101, size: 64, align: 64, offset: 1408)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !58, file: !59, line: 307, baseType: !106, size: 64, align: 64, offset: 1472)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 62, baseType: !108)
!107 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!108 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !58, file: !59, line: 309, baseType: !55, size: 32, align: 32, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !58, file: !59, line: 311, baseType: !111, size: 160, align: 8, offset: 1568)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 20)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !31, file: !18, line: 343, baseType: !115, size: 64, align: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !18, line: 316, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!16, !16, !63}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !31, file: !18, line: 344, baseType: !120, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !18, line: 318, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!55, !16, !63, !16}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !31, file: !18, line: 345, baseType: !101, size: 64, align: 64, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !31, file: !18, line: 346, baseType: !126, size: 64, align: 64, offset: 704)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !18, line: 320, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!16, !16}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !31, file: !18, line: 350, baseType: !131, size: 64, align: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !18, line: 278, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 236, size: 2176, align: 64, elements: !134)
!134 = !{!135, !140, !141, !142, !143, !144, !149, !151, !152, !153, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !133, file: !18, line: 241, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !18, line: 166, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!16, !16, !16}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !133, file: !18, line: 242, baseType: !136, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !133, file: !18, line: 243, baseType: !136, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !133, file: !18, line: 244, baseType: !136, size: 64, align: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !133, file: !18, line: 245, baseType: !136, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !133, file: !18, line: 246, baseType: !145, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !18, line: 167, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!16, !16, !16, !16}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !133, file: !18, line: 247, baseType: !150, size: 64, align: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !18, line: 165, baseType: !127)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !133, file: !18, line: 248, baseType: !150, size: 64, align: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !133, file: !18, line: 249, baseType: !150, size: 64, align: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !133, file: !18, line: 250, baseType: !154, size: 64, align: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !18, line: 168, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!55, !16}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !133, file: !18, line: 251, baseType: !150, size: 64, align: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !133, file: !18, line: 252, baseType: !136, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !133, file: !18, line: 253, baseType: !136, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !133, file: !18, line: 254, baseType: !136, size: 64, align: 64, offset: 832)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !133, file: !18, line: 255, baseType: !136, size: 64, align: 64, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !133, file: !18, line: 256, baseType: !136, size: 64, align: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !133, file: !18, line: 257, baseType: !150, size: 64, align: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !133, file: !18, line: 258, baseType: !101, size: 64, align: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !133, file: !18, line: 259, baseType: !150, size: 64, align: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !133, file: !18, line: 261, baseType: !136, size: 64, align: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !133, file: !18, line: 262, baseType: !136, size: 64, align: 64, offset: 1280)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !133, file: !18, line: 263, baseType: !136, size: 64, align: 64, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !133, file: !18, line: 264, baseType: !136, size: 64, align: 64, offset: 1408)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !133, file: !18, line: 265, baseType: !145, size: 64, align: 64, offset: 1472)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !133, file: !18, line: 266, baseType: !136, size: 64, align: 64, offset: 1536)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !133, file: !18, line: 267, baseType: !136, size: 64, align: 64, offset: 1600)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !133, file: !18, line: 268, baseType: !136, size: 64, align: 64, offset: 1664)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !133, file: !18, line: 269, baseType: !136, size: 64, align: 64, offset: 1728)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !133, file: !18, line: 270, baseType: !136, size: 64, align: 64, offset: 1792)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !133, file: !18, line: 272, baseType: !136, size: 64, align: 64, offset: 1856)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !133, file: !18, line: 273, baseType: !136, size: 64, align: 64, offset: 1920)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !133, file: !18, line: 274, baseType: !136, size: 64, align: 64, offset: 1984)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !133, file: !18, line: 275, baseType: !136, size: 64, align: 64, offset: 2048)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !133, file: !18, line: 277, baseType: !150, size: 64, align: 64, offset: 2112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !31, file: !18, line: 351, baseType: !183, size: 64, align: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !18, line: 292, baseType: !185)
!185 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 280, size: 640, align: 64, elements: !186)
!186 = !{!187, !192, !193, !198, !199, !200, !205, !206, !211, !212}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !185, file: !18, line: 281, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !18, line: 169, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!22, !16}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !185, file: !18, line: 282, baseType: !136, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !185, file: !18, line: 283, baseType: !194, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !18, line: 170, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!16, !16, !22}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !185, file: !18, line: 284, baseType: !194, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !185, file: !18, line: 285, baseType: !101, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !185, file: !18, line: 286, baseType: !201, size: 64, align: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !18, line: 172, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!55, !16, !22, !16}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !185, file: !18, line: 287, baseType: !101, size: 64, align: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !185, file: !18, line: 288, baseType: !207, size: 64, align: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !18, line: 231, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!55, !16, !16}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !185, file: !18, line: 290, baseType: !136, size: 64, align: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !185, file: !18, line: 291, baseType: !194, size: 64, align: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !31, file: !18, line: 352, baseType: !214, size: 64, align: 64, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !18, line: 298, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 294, size: 192, align: 64, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !216, file: !18, line: 295, baseType: !188, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !216, file: !18, line: 296, baseType: !136, size: 64, align: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !216, file: !18, line: 297, baseType: !221, size: 64, align: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !18, line: 174, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!55, !16, !16, !16}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !31, file: !18, line: 356, baseType: !226, size: 64, align: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !18, line: 321, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !16}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !23, line: 186, baseType: !22)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !31, file: !18, line: 357, baseType: !145, size: 64, align: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !31, file: !18, line: 358, baseType: !126, size: 64, align: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !31, file: !18, line: 359, baseType: !234, size: 64, align: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !18, line: 317, baseType: !137)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !31, file: !18, line: 360, baseType: !236, size: 64, align: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !18, line: 319, baseType: !222)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !31, file: !18, line: 363, baseType: !238, size: 64, align: 64, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !18, line: 304, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 301, size: 128, align: 64, elements: !241)
!241 = !{!242, !263}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !240, file: !18, line: 302, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !18, line: 193, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!55, !16, !247, !55}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !18, line: 191, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !18, line: 178, size: 640, align: 64, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !249, file: !18, line: 179, baseType: !101, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !249, file: !18, line: 180, baseType: !16, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !249, file: !18, line: 181, baseType: !22, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !249, file: !18, line: 182, baseType: !22, size: 64, align: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !249, file: !18, line: 184, baseType: !55, size: 32, align: 32, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !249, file: !18, line: 185, baseType: !55, size: 32, align: 32, offset: 288)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !249, file: !18, line: 186, baseType: !63, size: 64, align: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !249, file: !18, line: 187, baseType: !259, size: 64, align: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !249, file: !18, line: 188, baseType: !259, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !249, file: !18, line: 189, baseType: !259, size: 64, align: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !249, file: !18, line: 190, baseType: !101, size: 64, align: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !240, file: !18, line: 303, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !18, line: 194, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !16, !247}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !31, file: !18, line: 366, baseType: !108, size: 64, align: 64, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !31, file: !18, line: 368, baseType: !40, size: 64, align: 64, offset: 1408)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !31, file: !18, line: 372, baseType: !271, size: 64, align: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !18, line: 233, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!55, !16, !275, !101}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !18, line: 232, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!55, !16, !101}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !31, file: !18, line: 375, baseType: !154, size: 64, align: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !31, file: !18, line: 379, baseType: !281, size: 64, align: 64, offset: 1600)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !18, line: 322, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!16, !16, !16, !55}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !31, file: !18, line: 382, baseType: !22, size: 64, align: 64, offset: 1664)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !31, file: !18, line: 385, baseType: !287, size: 64, align: 64, offset: 1728)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !18, line: 323, baseType: !127)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !31, file: !18, line: 386, baseType: !289, size: 64, align: 64, offset: 1792)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !18, line: 324, baseType: !127)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !31, file: !18, line: 389, baseType: !291, size: 64, align: 64, offset: 1856)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !293, line: 40, size: 256, align: 64, elements: !294)
!293 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!294 = !{!295, !296, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !292, file: !293, line: 41, baseType: !40, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !292, file: !293, line: 42, baseType: !297, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !293, line: 18, baseType: !137)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !292, file: !293, line: 43, baseType: !55, size: 32, align: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !292, file: !293, line: 45, baseType: !40, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !31, file: !18, line: 390, baseType: !301, size: 64, align: 64, offset: 1920)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !303, line: 18, size: 320, align: 64, elements: !304)
!303 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!304 = !{!305, !306, !307, !308, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !303, line: 19, baseType: !63, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !303, line: 20, baseType: !55, size: 32, align: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !302, file: !303, line: 21, baseType: !22, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !303, line: 22, baseType: !55, size: 32, align: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !302, file: !303, line: 23, baseType: !63, size: 64, align: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !31, file: !18, line: 391, baseType: !311, size: 64, align: 64, offset: 1984)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !313, line: 11, size: 320, align: 64, elements: !314)
!313 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!314 = !{!315, !316, !321, !326, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !313, line: 12, baseType: !63, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !312, file: !313, line: 13, baseType: !317, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !313, line: 8, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!16, !16, !101}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !312, file: !313, line: 14, baseType: !322, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !313, line: 9, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!55, !16, !16, !101}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !312, file: !313, line: 15, baseType: !63, size: 64, align: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !312, file: !313, line: 16, baseType: !101, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !31, file: !18, line: 392, baseType: !30, size: 64, align: 64, offset: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !31, file: !18, line: 393, baseType: !16, size: 64, align: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !31, file: !18, line: 394, baseType: !331, size: 64, align: 64, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !18, line: 325, baseType: !146)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !31, file: !18, line: 395, baseType: !333, size: 64, align: 64, offset: 2240)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !18, line: 326, baseType: !222)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !31, file: !18, line: 396, baseType: !22, size: 64, align: 64, offset: 2304)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !31, file: !18, line: 397, baseType: !336, size: 64, align: 64, offset: 2368)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !18, line: 327, baseType: !222)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !31, file: !18, line: 398, baseType: !338, size: 64, align: 64, offset: 2432)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !18, line: 329, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!16, !30, !22}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !31, file: !18, line: 399, baseType: !343, size: 64, align: 64, offset: 2496)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !18, line: 328, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!16, !30, !16, !16}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !31, file: !18, line: 400, baseType: !348, size: 64, align: 64, offset: 2560)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !18, line: 307, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !101}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !31, file: !18, line: 401, baseType: !154, size: 64, align: 64, offset: 2624)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !31, file: !18, line: 402, baseType: !16, size: 64, align: 64, offset: 2688)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !31, file: !18, line: 403, baseType: !16, size: 64, align: 64, offset: 2752)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !31, file: !18, line: 404, baseType: !16, size: 64, align: 64, offset: 2816)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !31, file: !18, line: 405, baseType: !16, size: 64, align: 64, offset: 2880)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !31, file: !18, line: 406, baseType: !16, size: 64, align: 64, offset: 2944)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !31, file: !18, line: 407, baseType: !46, size: 64, align: 64, offset: 3008)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !31, file: !18, line: 410, baseType: !360, size: 32, align: 32, offset: 3072)
!360 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !31, file: !18, line: 412, baseType: !46, size: 64, align: 64, offset: 3136)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cache", file: !364, line: 59, baseType: !365)
!364 = !DIFile(filename: "Modules/_sqlite/cache.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 42, size: 512, align: 64, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !383, !384}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !365, file: !364, line: 44, baseType: !17, size: 128, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !364, line: 45, baseType: !55, size: 32, align: 32, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !365, file: !364, line: 48, baseType: !16, size: 64, align: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "factory", scope: !365, file: !364, line: 51, baseType: !16, size: 64, align: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !365, file: !364, line: 53, baseType: !372, size: 64, align: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Node", file: !364, line: 40, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "_pysqlite_Node", file: !364, line: 32, size: 448, align: 64, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !374, file: !364, line: 34, baseType: !17, size: 128, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !374, file: !364, line: 35, baseType: !16, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !374, file: !364, line: 36, baseType: !16, size: 64, align: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !374, file: !364, line: 37, baseType: !28, size: 64, align: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !374, file: !364, line: 38, baseType: !381, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !364, line: 39, baseType: !381, size: 64, align: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !365, file: !364, line: 54, baseType: !372, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "decref_factory", scope: !365, file: !364, line: 58, baseType: !55, size: 32, align: 32, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Statement", file: !387, line: 42, baseType: !388)
!387 = !DIFile(filename: "Modules/_sqlite/statement.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!388 = !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 34, size: 448, align: 64, elements: !389)
!389 = !{!390, !391, !396, !400, !401, !402}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !388, file: !387, line: 36, baseType: !17, size: 128, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !388, file: !387, line: 37, baseType: !392, size: 64, align: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !394, line: 228, baseType: !395)
!394 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !394, line: 228, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !388, file: !387, line: 38, baseType: !397, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !394, line: 2911, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !394, line: 2911, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sql", scope: !388, file: !387, line: 39, baseType: !16, size: 64, align: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !388, file: !387, line: 40, baseType: !55, size: 32, align: 32, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !388, file: !387, line: 41, baseType: !16, size: 64, align: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Cursor", file: !405, line: 52, baseType: !406)
!405 = !DIFile(filename: "Modules/_sqlite/cursor.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!406 = !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 32, size: 896, align: 64, elements: !407)
!407 = !{!408, !409, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !406, file: !405, line: 34, baseType: !17, size: 128, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !406, file: !405, line: 35, baseType: !410, size: 64, align: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pysqlite_Connection", file: !412, line: 112, baseType: !413)
!412 = !DIFile(filename: "Modules/_sqlite/connection.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 35, size: 1792, align: 64, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !413, file: !412, line: 37, baseType: !17, size: 128, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !413, file: !412, line: 38, baseType: !392, size: 64, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "inTransaction", scope: !413, file: !412, line: 42, baseType: !42, size: 8, align: 8, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "detect_types", scope: !413, file: !412, line: 46, baseType: !55, size: 32, align: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !413, file: !412, line: 49, baseType: !420, size: 64, align: 64, offset: 256)
!420 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_started", scope: !413, file: !412, line: 53, baseType: !420, size: 64, align: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "isolation_level", scope: !413, file: !412, line: 56, baseType: !16, size: 64, align: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "begin_statement", scope: !413, file: !412, line: 60, baseType: !63, size: 64, align: 64, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "check_same_thread", scope: !413, file: !412, line: 64, baseType: !55, size: 32, align: 32, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !413, file: !412, line: 66, baseType: !55, size: 32, align: 32, offset: 544)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_ident", scope: !413, file: !412, line: 69, baseType: !28, size: 64, align: 64, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "statement_cache", scope: !413, file: !412, line: 71, baseType: !362, size: 64, align: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "statements", scope: !413, file: !412, line: 74, baseType: !16, size: 64, align: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !413, file: !412, line: 75, baseType: !16, size: 64, align: 64, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "created_statements", scope: !413, file: !412, line: 79, baseType: !55, size: 32, align: 32, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "created_cursors", scope: !413, file: !412, line: 80, baseType: !55, size: 32, align: 32, offset: 864)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !413, file: !412, line: 82, baseType: !16, size: 64, align: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "text_factory", scope: !413, file: !412, line: 90, baseType: !16, size: 64, align: 64, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "function_pinboard", scope: !413, file: !412, line: 96, baseType: !16, size: 64, align: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "collations", scope: !413, file: !412, line: 99, baseType: !16, size: 64, align: 64, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Warning", scope: !413, file: !412, line: 102, baseType: !16, size: 64, align: 64, offset: 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !413, file: !412, line: 103, baseType: !16, size: 64, align: 64, offset: 1216)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceError", scope: !413, file: !412, line: 104, baseType: !16, size: 64, align: 64, offset: 1280)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "DatabaseError", scope: !413, file: !412, line: 105, baseType: !16, size: 64, align: 64, offset: 1344)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "DataError", scope: !413, file: !412, line: 106, baseType: !16, size: 64, align: 64, offset: 1408)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "OperationalError", scope: !413, file: !412, line: 107, baseType: !16, size: 64, align: 64, offset: 1472)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "IntegrityError", scope: !413, file: !412, line: 108, baseType: !16, size: 64, align: 64, offset: 1536)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "InternalError", scope: !413, file: !412, line: 109, baseType: !16, size: 64, align: 64, offset: 1600)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ProgrammingError", scope: !413, file: !412, line: 110, baseType: !16, size: 64, align: 64, offset: 1664)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "NotSupportedError", scope: !413, file: !412, line: 111, baseType: !16, size: 64, align: 64, offset: 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !406, file: !405, line: 36, baseType: !16, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "row_cast_map", scope: !406, file: !405, line: 37, baseType: !16, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arraysize", scope: !406, file: !405, line: 38, baseType: !55, size: 32, align: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lastrowid", scope: !406, file: !405, line: 39, baseType: !16, size: 64, align: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rowcount", scope: !406, file: !405, line: 40, baseType: !28, size: 64, align: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "row_factory", scope: !406, file: !405, line: 41, baseType: !16, size: 64, align: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !406, file: !405, line: 42, baseType: !385, size: 64, align: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "closed", scope: !406, file: !405, line: 43, baseType: !55, size: 32, align: 32, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !406, file: !405, line: 44, baseType: !55, size: 32, align: 32, offset: 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !406, file: !405, line: 45, baseType: !55, size: 32, align: 32, offset: 704)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !406, file: !405, line: 46, baseType: !55, size: 32, align: 32, offset: 736)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_row", scope: !406, file: !405, line: 49, baseType: !16, size: 64, align: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !406, file: !405, line: 51, baseType: !16, size: 64, align: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_destructor_type", file: !394, line: 4239, baseType: !349)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !9, line: 351, baseType: !463)
!463 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 217, size: 384, align: 64, elements: !464)
!464 = !{!465, !466, !467, !468, !476}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !463, file: !9, line: 291, baseType: !17, size: 128, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !463, file: !9, line: 292, baseType: !22, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !463, file: !9, line: 293, baseType: !230, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !463, file: !9, line: 349, baseType: !469, size: 32, align: 32, offset: 256)
!469 = !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !9, line: 294, size: 32, align: 32, elements: !470)
!470 = !{!471, !472, !473, !474, !475}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !469, file: !9, line: 303, baseType: !360, size: 2, align: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !469, file: !9, line: 331, baseType: !360, size: 3, align: 32, offset: 2)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !469, file: !9, line: 336, baseType: !360, size: 1, align: 32, offset: 5)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !469, file: !9, line: 340, baseType: !360, size: 1, align: 32, offset: 6)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !469, file: !9, line: 345, baseType: !360, size: 1, align: 32, offset: 7)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !463, file: !9, line: 350, baseType: !477, size: 64, align: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !107, line: 90, baseType: !55)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !9, line: 363, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 356, size: 576, align: 64, elements: !482)
!482 = !{!483, !484, !485, !486}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !481, file: !9, line: 357, baseType: !462, size: 384, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !481, file: !9, line: 358, baseType: !22, size: 64, align: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !481, file: !9, line: 360, baseType: !63, size: 64, align: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !481, file: !9, line: 361, baseType: !22, size: 64, align: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !9, line: 376, baseType: !489)
!489 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 368, size: 640, align: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !489, file: !9, line: 369, baseType: !480, size: 576, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !489, file: !9, line: 375, baseType: !493, size: 64, align: 64, offset: 576)
!493 = !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !9, line: 370, size: 64, align: 64, elements: !494)
!494 = !{!495, !496, !500, !503}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !493, file: !9, line: 371, baseType: !101, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !493, file: !9, line: 372, baseType: !497, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !9, line: 134, baseType: !499)
!499 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !493, file: !9, line: 373, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !9, line: 129, baseType: !88)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !493, file: !9, line: 374, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !9, line: 121, baseType: !360)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!512 = !{!513, !597, !608, !626, !673, !690, !706, !717, !722, !734, !747, !760, !787, !808, !827, !836, !845, !848, !865, !899, !933, !967, !971, !991, !998, !1015, !1038, !1066, !1083, !1090, !1107, !1114, !1126, !1132, !1149, !1172, !1205, !1210, !1228, !1232, !1243, !1249}
!513 = !DISubprogram(name: "pysqlite_connection_init", scope: !514, file: !514, line: 62, type: !515, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_init, variables: !517)
!514 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/connection.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!515 = !DISubroutineType(types: !516)
!516 = !{!55, !410, !16, !16}
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !589, !593, !595}
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !513, file: !514, line: 62, type: !410)
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !513, file: !514, line: 62, type: !16)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !513, file: !514, line: 62, type: !16)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "database", scope: !513, file: !514, line: 70, type: !63)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detect_types", scope: !513, file: !514, line: 71, type: !55)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isolation_level", scope: !513, file: !514, line: 72, type: !16)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factory", scope: !513, file: !514, line: 73, type: !16)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "check_same_thread", scope: !513, file: !514, line: 74, type: !55)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cached_statements", scope: !513, file: !514, line: 75, type: !55)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uri", scope: !513, file: !514, line: 76, type: !55)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !513, file: !514, line: 77, type: !420)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !513, file: !514, line: 78, type: !55)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !531, file: !514, line: 103, type: !532)
!531 = distinct !DILexicalBlock(scope: !513, file: !514, line: 103, column: 5)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !4, line: 139, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !4, line: 69, size: 1536, align: 64, elements: !535)
!535 = !{!536, !538, !539, !559, !562, !563, !564, !565, !566, !567, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !534, file: !4, line: 72, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !4, line: 73, baseType: !537, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !534, file: !4, line: 74, baseType: !540, size: 64, align: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !4, line: 44, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !4, line: 19, size: 832, align: 64, elements: !543)
!543 = !{!544, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !4, line: 21, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !542, file: !4, line: 22, baseType: !537, size: 64, align: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !542, file: !4, line: 24, baseType: !16, size: 64, align: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !542, file: !4, line: 25, baseType: !16, size: 64, align: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !542, file: !4, line: 26, baseType: !16, size: 64, align: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !542, file: !4, line: 27, baseType: !16, size: 64, align: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !542, file: !4, line: 28, baseType: !16, size: 64, align: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !542, file: !4, line: 30, baseType: !16, size: 64, align: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !542, file: !4, line: 31, baseType: !16, size: 64, align: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !542, file: !4, line: 32, baseType: !16, size: 64, align: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !542, file: !4, line: 33, baseType: !55, size: 32, align: 32, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !542, file: !4, line: 34, baseType: !55, size: 32, align: 32, offset: 672)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !542, file: !4, line: 37, baseType: !55, size: 32, align: 32, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !542, file: !4, line: 43, baseType: !16, size: 64, align: 64, offset: 768)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !534, file: !4, line: 76, baseType: !560, size: 64, align: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !4, line: 50, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !534, file: !4, line: 77, baseType: !55, size: 32, align: 32, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !534, file: !4, line: 78, baseType: !42, size: 8, align: 8, offset: 288)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !534, file: !4, line: 80, baseType: !42, size: 8, align: 8, offset: 296)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !534, file: !4, line: 85, baseType: !55, size: 32, align: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !534, file: !4, line: 86, baseType: !55, size: 32, align: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !534, file: !4, line: 88, baseType: !568, size: 64, align: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !4, line: 54, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!55, !16, !560, !55, !16}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !534, file: !4, line: 89, baseType: !568, size: 64, align: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !534, file: !4, line: 90, baseType: !16, size: 64, align: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !534, file: !4, line: 91, baseType: !16, size: 64, align: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !534, file: !4, line: 93, baseType: !16, size: 64, align: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !534, file: !4, line: 94, baseType: !16, size: 64, align: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !534, file: !4, line: 95, baseType: !16, size: 64, align: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !534, file: !4, line: 97, baseType: !16, size: 64, align: 64, offset: 832)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !534, file: !4, line: 98, baseType: !16, size: 64, align: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !534, file: !4, line: 99, baseType: !16, size: 64, align: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !534, file: !4, line: 101, baseType: !16, size: 64, align: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !534, file: !4, line: 103, baseType: !55, size: 32, align: 32, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !534, file: !4, line: 105, baseType: !16, size: 64, align: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !534, file: !4, line: 106, baseType: !28, size: 64, align: 64, offset: 1216)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !534, file: !4, line: 108, baseType: !55, size: 32, align: 32, offset: 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !534, file: !4, line: 109, baseType: !16, size: 64, align: 64, offset: 1344)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !534, file: !4, line: 134, baseType: !349, size: 64, align: 64, offset: 1408)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !534, file: !4, line: 135, baseType: !101, size: 64, align: 64, offset: 1472)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !514, line: 132, type: !16)
!590 = distinct !DILexicalBlock(scope: !591, file: !514, line: 132, column: 12)
!591 = distinct !DILexicalBlock(scope: !592, file: !514, line: 131, column: 77)
!592 = distinct !DILexicalBlock(scope: !513, file: !514, line: 131, column: 9)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !514, line: 135, type: !16)
!594 = distinct !DILexicalBlock(scope: !513, file: !514, line: 135, column: 8)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !514, line: 158, type: !16)
!596 = distinct !DILexicalBlock(scope: !513, file: !514, line: 158, column: 8)
!597 = !DISubprogram(name: "pysqlite_flush_statement_cache", scope: !514, file: !514, line: 194, type: !598, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Connection*)* @pysqlite_flush_statement_cache, variables: !600)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !410}
!600 = !{!601, !602, !603, !604, !606}
!601 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !597, file: !514, line: 194, type: !410)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !597, file: !514, line: 196, type: !372)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !597, file: !514, line: 197, type: !385)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !514, line: 207, type: !16)
!605 = distinct !DILexicalBlock(scope: !597, file: !514, line: 207, column: 8)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !607, file: !514, line: 209, type: !16)
!607 = distinct !DILexicalBlock(scope: !597, file: !514, line: 209, column: 8)
!608 = !DISubprogram(name: "pysqlite_do_all_statements", scope: !514, file: !514, line: 214, type: !609, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Connection*, i32, i32)* @pysqlite_do_all_statements, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !410, !55, !55}
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !608, file: !514, line: 214, type: !410)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "action", arg: 2, scope: !608, file: !514, line: 214, type: !55)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reset_cursors", arg: 3, scope: !608, file: !514, line: 214, type: !55)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !608, file: !514, line: 216, type: !55)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weakref", scope: !608, file: !514, line: 217, type: !16)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !608, file: !514, line: 218, type: !16)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !608, file: !514, line: 219, type: !403)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !514, line: 231, type: !16)
!620 = distinct !DILexicalBlock(scope: !621, file: !514, line: 231, column: 16)
!621 = distinct !DILexicalBlock(scope: !622, file: !514, line: 224, column: 45)
!622 = distinct !DILexicalBlock(scope: !623, file: !514, line: 224, column: 13)
!623 = distinct !DILexicalBlock(scope: !624, file: !514, line: 221, column: 57)
!624 = distinct !DILexicalBlock(scope: !625, file: !514, line: 221, column: 5)
!625 = distinct !DILexicalBlock(scope: !608, file: !514, line: 221, column: 5)
!626 = !DISubprogram(name: "pysqlite_connection_dealloc", scope: !514, file: !514, line: 246, type: !598, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Connection*)* @pysqlite_connection_dealloc, variables: !627)
!627 = !{!628, !629, !631, !634, !638, !640, !643, !645, !648, !650, !653, !655, !658, !660, !663, !665, !668, !670}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !626, file: !514, line: 246, type: !410)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !630, file: !514, line: 248, type: !16)
!630 = distinct !DILexicalBlock(scope: !626, file: !514, line: 248, column: 8)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !632, file: !514, line: 248, type: !16)
!632 = distinct !DILexicalBlock(scope: !633, file: !514, line: 248, column: 113)
!633 = distinct !DILexicalBlock(scope: !630, file: !514, line: 248, column: 79)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !635, file: !514, line: 252, type: !532)
!635 = distinct !DILexicalBlock(scope: !636, file: !514, line: 252, column: 9)
!636 = distinct !DILexicalBlock(scope: !637, file: !514, line: 251, column: 19)
!637 = distinct !DILexicalBlock(scope: !626, file: !514, line: 251, column: 9)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !639, file: !514, line: 260, type: !16)
!639 = distinct !DILexicalBlock(scope: !626, file: !514, line: 260, column: 8)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !641, file: !514, line: 260, type: !16)
!641 = distinct !DILexicalBlock(scope: !642, file: !514, line: 260, column: 113)
!642 = distinct !DILexicalBlock(scope: !639, file: !514, line: 260, column: 79)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !644, file: !514, line: 261, type: !16)
!644 = distinct !DILexicalBlock(scope: !626, file: !514, line: 261, column: 8)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !646, file: !514, line: 261, type: !16)
!646 = distinct !DILexicalBlock(scope: !647, file: !514, line: 261, column: 115)
!647 = distinct !DILexicalBlock(scope: !644, file: !514, line: 261, column: 81)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !649, file: !514, line: 262, type: !16)
!649 = distinct !DILexicalBlock(scope: !626, file: !514, line: 262, column: 8)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !651, file: !514, line: 262, type: !16)
!651 = distinct !DILexicalBlock(scope: !652, file: !514, line: 262, column: 109)
!652 = distinct !DILexicalBlock(scope: !649, file: !514, line: 262, column: 75)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !654, file: !514, line: 263, type: !16)
!654 = distinct !DILexicalBlock(scope: !626, file: !514, line: 263, column: 8)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !514, line: 263, type: !16)
!656 = distinct !DILexicalBlock(scope: !657, file: !514, line: 263, column: 110)
!657 = distinct !DILexicalBlock(scope: !654, file: !514, line: 263, column: 76)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !659, file: !514, line: 264, type: !16)
!659 = distinct !DILexicalBlock(scope: !626, file: !514, line: 264, column: 8)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !661, file: !514, line: 264, type: !16)
!661 = distinct !DILexicalBlock(scope: !662, file: !514, line: 264, column: 108)
!662 = distinct !DILexicalBlock(scope: !659, file: !514, line: 264, column: 74)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !664, file: !514, line: 265, type: !16)
!664 = distinct !DILexicalBlock(scope: !626, file: !514, line: 265, column: 8)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !666, file: !514, line: 265, type: !16)
!666 = distinct !DILexicalBlock(scope: !667, file: !514, line: 265, column: 108)
!667 = distinct !DILexicalBlock(scope: !664, file: !514, line: 265, column: 74)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !669, file: !514, line: 266, type: !16)
!669 = distinct !DILexicalBlock(scope: !626, file: !514, line: 266, column: 8)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !671, file: !514, line: 266, type: !16)
!671 = distinct !DILexicalBlock(scope: !672, file: !514, line: 266, column: 105)
!672 = distinct !DILexicalBlock(scope: !669, file: !514, line: 266, column: 71)
!673 = !DISubprogram(name: "pysqlite_connection_register_cursor", scope: !514, file: !514, line: 276, type: !674, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_register_cursor, variables: !676)
!674 = !DISubroutineType(types: !675)
!675 = !{!55, !410, !16}
!676 = !{!677, !678, !679, !680, !684, !688}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "connection", arg: 1, scope: !673, file: !514, line: 276, type: !410)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cursor", arg: 2, scope: !673, file: !514, line: 276, type: !16)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weakref", scope: !673, file: !514, line: 278, type: !16)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !681, file: !514, line: 286, type: !16)
!681 = distinct !DILexicalBlock(scope: !682, file: !514, line: 286, column: 12)
!682 = distinct !DILexicalBlock(scope: !683, file: !514, line: 285, column: 59)
!683 = distinct !DILexicalBlock(scope: !673, file: !514, line: 285, column: 9)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !514, line: 286, type: !16)
!685 = distinct !DILexicalBlock(scope: !686, file: !514, line: 286, column: 113)
!686 = distinct !DILexicalBlock(scope: !687, file: !514, line: 286, column: 84)
!687 = distinct !DILexicalBlock(scope: !681, file: !514, line: 286, column: 61)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !689, file: !514, line: 290, type: !16)
!689 = distinct !DILexicalBlock(scope: !673, file: !514, line: 290, column: 8)
!690 = !DISubprogram(name: "pysqlite_connection_cursor", scope: !514, file: !514, line: 297, type: !691, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_cursor, variables: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!16, !410, !16, !16}
!693 = !{!694, !695, !696, !697, !698, !699, !703}
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !690, file: !514, line: 297, type: !410)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !690, file: !514, line: 297, type: !16)
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !690, file: !514, line: 297, type: !16)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factory", scope: !690, file: !514, line: 300, type: !16)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !690, file: !514, line: 301, type: !16)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !700, file: !514, line: 321, type: !16)
!700 = distinct !DILexicalBlock(scope: !701, file: !514, line: 321, column: 12)
!701 = distinct !DILexicalBlock(scope: !702, file: !514, line: 320, column: 59)
!702 = distinct !DILexicalBlock(scope: !690, file: !514, line: 320, column: 9)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !514, line: 321, type: !16)
!704 = distinct !DILexicalBlock(scope: !705, file: !514, line: 321, column: 135)
!705 = distinct !DILexicalBlock(scope: !700, file: !514, line: 321, column: 101)
!706 = !DISubprogram(name: "pysqlite_connection_close", scope: !514, file: !514, line: 329, type: !707, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_close, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!16, !410, !16}
!709 = !{!710, !711, !712, !713}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !706, file: !514, line: 329, type: !410)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !706, file: !514, line: 329, type: !16)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !706, file: !514, line: 331, type: !55)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !714, file: !514, line: 340, type: !532)
!714 = distinct !DILexicalBlock(scope: !715, file: !514, line: 340, column: 9)
!715 = distinct !DILexicalBlock(scope: !716, file: !514, line: 339, column: 19)
!716 = distinct !DILexicalBlock(scope: !706, file: !514, line: 339, column: 9)
!717 = !DISubprogram(name: "pysqlite_check_connection", scope: !514, file: !514, line: 361, type: !718, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Connection*)* @pysqlite_check_connection, variables: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!55, !410}
!720 = !{!721}
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "con", arg: 1, scope: !717, file: !514, line: 361, type: !410)
!722 = !DISubprogram(name: "_pysqlite_connection_begin", scope: !514, file: !514, line: 376, type: !723, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*)* @_pysqlite_connection_begin, variables: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!16, !410}
!725 = !{!726, !727, !728, !729, !730, !732}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !722, file: !514, line: 376, type: !410)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !722, file: !514, line: 378, type: !55)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !722, file: !514, line: 379, type: !40)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !722, file: !514, line: 380, type: !397)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !731, file: !514, line: 382, type: !532)
!731 = distinct !DILexicalBlock(scope: !722, file: !514, line: 382, column: 5)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !733, file: !514, line: 398, type: !532)
!733 = distinct !DILexicalBlock(scope: !722, file: !514, line: 398, column: 5)
!734 = !DISubprogram(name: "pysqlite_connection_commit", scope: !514, file: !514, line: 415, type: !707, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_commit, variables: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !745}
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !734, file: !514, line: 415, type: !410)
!737 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !734, file: !514, line: 415, type: !16)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !734, file: !514, line: 417, type: !55)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !734, file: !514, line: 418, type: !40)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !734, file: !514, line: 419, type: !397)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !742, file: !514, line: 428, type: !532)
!742 = distinct !DILexicalBlock(scope: !743, file: !514, line: 428, column: 9)
!743 = distinct !DILexicalBlock(scope: !744, file: !514, line: 425, column: 30)
!744 = distinct !DILexicalBlock(scope: !734, file: !514, line: 425, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !746, file: !514, line: 443, type: !532)
!746 = distinct !DILexicalBlock(scope: !743, file: !514, line: 443, column: 9)
!747 = !DISubprogram(name: "pysqlite_connection_rollback", scope: !514, file: !514, line: 461, type: !707, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_rollback, variables: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !758}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !747, file: !514, line: 461, type: !410)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !747, file: !514, line: 461, type: !16)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !747, file: !514, line: 463, type: !55)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !747, file: !514, line: 464, type: !40)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !747, file: !514, line: 465, type: !397)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !755, file: !514, line: 474, type: !532)
!755 = distinct !DILexicalBlock(scope: !756, file: !514, line: 474, column: 9)
!756 = distinct !DILexicalBlock(scope: !757, file: !514, line: 471, column: 30)
!757 = distinct !DILexicalBlock(scope: !747, file: !514, line: 471, column: 9)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !759, file: !514, line: 489, type: !532)
!759 = distinct !DILexicalBlock(scope: !756, file: !514, line: 489, column: 9)
!760 = !DISubprogram(name: "_pysqlite_build_py_params", scope: !514, file: !514, line: 544, type: !761, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_build_py_params, variables: !770)
!761 = !DISubroutineType(types: !762)
!762 = !{!16, !763, !55, !766}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_context", file: !394, line: 3239, baseType: !765)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_context", file: !394, line: 3239, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64, align: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_value", file: !394, line: 3225, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "Mem", file: !394, line: 3225, flags: DIFlagFwdDecl)
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779, !780}
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !760, file: !514, line: 544, type: !763)
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 2, scope: !760, file: !514, line: 544, type: !55)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 3, scope: !760, file: !514, line: 544, type: !766)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !760, file: !514, line: 546, type: !16)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !760, file: !514, line: 547, type: !55)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur_value", scope: !760, file: !514, line: 548, type: !767)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur_py_value", scope: !760, file: !514, line: 549, type: !16)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val_str", scope: !760, file: !514, line: 550, type: !40)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !760, file: !514, line: 551, type: !22)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !781, file: !514, line: 589, type: !16)
!781 = distinct !DILexicalBlock(scope: !782, file: !514, line: 589, column: 16)
!782 = distinct !DILexicalBlock(scope: !783, file: !514, line: 588, column: 28)
!783 = distinct !DILexicalBlock(scope: !784, file: !514, line: 588, column: 13)
!784 = distinct !DILexicalBlock(scope: !785, file: !514, line: 558, column: 32)
!785 = distinct !DILexicalBlock(scope: !786, file: !514, line: 558, column: 5)
!786 = distinct !DILexicalBlock(scope: !760, file: !514, line: 558, column: 5)
!787 = !DISubprogram(name: "_pysqlite_func_callback", scope: !514, file: !514, line: 600, type: !788, isLocal: false, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_func_callback, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !763, !55, !766}
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !800, !804}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !787, file: !514, line: 600, type: !763)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 2, scope: !787, file: !514, line: 600, type: !55)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 3, scope: !787, file: !514, line: 600, type: !766)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !787, file: !514, line: 602, type: !16)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_func", scope: !787, file: !514, line: 603, type: !16)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_retval", scope: !787, file: !514, line: 604, type: !16)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !787, file: !514, line: 605, type: !55)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadstate", scope: !787, file: !514, line: 608, type: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGILState_STATE", file: !4, line: 191, baseType: !3)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !801, file: !514, line: 618, type: !16)
!801 = distinct !DILexicalBlock(scope: !802, file: !514, line: 618, column: 12)
!802 = distinct !DILexicalBlock(scope: !803, file: !514, line: 616, column: 15)
!803 = distinct !DILexicalBlock(scope: !787, file: !514, line: 616, column: 9)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !805, file: !514, line: 624, type: !16)
!805 = distinct !DILexicalBlock(scope: !806, file: !514, line: 624, column: 12)
!806 = distinct !DILexicalBlock(scope: !807, file: !514, line: 622, column: 20)
!807 = distinct !DILexicalBlock(scope: !787, file: !514, line: 622, column: 9)
!808 = !DISubprogram(name: "_pysqlite_final_callback", scope: !514, file: !514, line: 704, type: !809, isLocal: false, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.sqlite3_context*)* @_pysqlite_final_callback, variables: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !763}
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !823}
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !808, file: !514, line: 704, type: !763)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function_result", scope: !808, file: !514, line: 706, type: !16)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aggregate_instance", scope: !808, file: !514, line: 707, type: !459)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ok", scope: !808, file: !514, line: 709, type: !55)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !808, file: !514, line: 710, type: !16)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !808, file: !514, line: 710, type: !16)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !808, file: !514, line: 710, type: !16)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restore", scope: !808, file: !514, line: 711, type: !55)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadstate", scope: !808, file: !514, line: 714, type: !799)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !822, file: !514, line: 733, type: !16)
!822 = distinct !DILexicalBlock(scope: !808, file: !514, line: 733, column: 8)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !824, file: !514, line: 738, type: !16)
!824 = distinct !DILexicalBlock(scope: !825, file: !514, line: 738, column: 12)
!825 = distinct !DILexicalBlock(scope: !826, file: !514, line: 736, column: 26)
!826 = distinct !DILexicalBlock(scope: !808, file: !514, line: 736, column: 9)
!827 = !DISubprogram(name: "pysqlite_connection_create_function", scope: !514, file: !514, line: 833, type: !691, isLocal: false, isDefinition: true, scopeLine: 834, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_create_function, variables: !828)
!828 = !{!829, !830, !831, !832, !833, !834, !835}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !827, file: !514, line: 833, type: !410)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !827, file: !514, line: 833, type: !16)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !827, file: !514, line: 833, type: !16)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !827, file: !514, line: 837, type: !16)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !827, file: !514, line: 838, type: !63)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "narg", scope: !827, file: !514, line: 839, type: !55)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !827, file: !514, line: 840, type: !55)
!836 = !DISubprogram(name: "pysqlite_connection_create_aggregate", scope: !514, file: !514, line: 867, type: !691, isLocal: false, isDefinition: true, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_create_aggregate, variables: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844}
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !836, file: !514, line: 867, type: !410)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !836, file: !514, line: 867, type: !16)
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !836, file: !514, line: 867, type: !16)
!841 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aggregate_class", scope: !836, file: !514, line: 869, type: !16)
!842 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n_arg", scope: !836, file: !514, line: 871, type: !55)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !836, file: !514, line: 872, type: !63)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !836, file: !514, line: 874, type: !55)
!845 = !DISubprogram(name: "pysqlite_check_thread", scope: !514, file: !514, line: 1142, type: !718, isLocal: false, isDefinition: true, scopeLine: 1143, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Connection*)* @pysqlite_check_thread, variables: !846)
!846 = !{!847}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !845, file: !514, line: 1142, type: !410)
!848 = !DISubprogram(name: "pysqlite_connection_call", scope: !514, file: !514, line: 1232, type: !691, isLocal: false, isDefinition: true, scopeLine: 1233, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_call, variables: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !861, !863}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !848, file: !514, line: 1232, type: !410)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !848, file: !514, line: 1232, type: !16)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !848, file: !514, line: 1232, type: !16)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sql", scope: !848, file: !514, line: 1234, type: !16)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !848, file: !514, line: 1235, type: !385)
!855 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weakref", scope: !848, file: !514, line: 1236, type: !16)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !848, file: !514, line: 1237, type: !55)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !858, file: !514, line: 1276, type: !16)
!858 = distinct !DILexicalBlock(scope: !859, file: !514, line: 1276, column: 12)
!859 = distinct !DILexicalBlock(scope: !860, file: !514, line: 1275, column: 56)
!860 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1275, column: 9)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !862, file: !514, line: 1279, type: !16)
!862 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1279, column: 8)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !514, line: 1284, type: !16)
!864 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1284, column: 8)
!865 = !DISubprogram(name: "pysqlite_connection_execute", scope: !514, file: !514, line: 1288, type: !691, isLocal: false, isDefinition: true, scopeLine: 1289, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_execute, variables: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !877, !881, !885, !889, !891, !894, !896}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !865, file: !514, line: 1288, type: !410)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !865, file: !514, line: 1288, type: !16)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !865, file: !514, line: 1288, type: !16)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !865, file: !514, line: 1290, type: !16)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !865, file: !514, line: 1291, type: !16)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !865, file: !514, line: 1292, type: !16)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !874, file: !514, line: 1301, type: !16)
!874 = distinct !DILexicalBlock(scope: !875, file: !514, line: 1301, column: 12)
!875 = distinct !DILexicalBlock(scope: !876, file: !514, line: 1300, column: 18)
!876 = distinct !DILexicalBlock(scope: !865, file: !514, line: 1300, column: 9)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !878, file: !514, line: 1301, type: !16)
!878 = distinct !DILexicalBlock(scope: !879, file: !514, line: 1301, column: 111)
!879 = distinct !DILexicalBlock(scope: !880, file: !514, line: 1301, column: 83)
!880 = distinct !DILexicalBlock(scope: !874, file: !514, line: 1301, column: 60)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !882, file: !514, line: 1307, type: !16)
!882 = distinct !DILexicalBlock(scope: !883, file: !514, line: 1307, column: 12)
!883 = distinct !DILexicalBlock(scope: !884, file: !514, line: 1306, column: 18)
!884 = distinct !DILexicalBlock(scope: !865, file: !514, line: 1306, column: 9)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !886, file: !514, line: 1307, type: !16)
!886 = distinct !DILexicalBlock(scope: !887, file: !514, line: 1307, column: 111)
!887 = distinct !DILexicalBlock(scope: !888, file: !514, line: 1307, column: 83)
!888 = distinct !DILexicalBlock(scope: !882, file: !514, line: 1307, column: 60)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !890, file: !514, line: 1311, type: !16)
!890 = distinct !DILexicalBlock(scope: !865, file: !514, line: 1311, column: 8)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !892, file: !514, line: 1311, type: !16)
!892 = distinct !DILexicalBlock(scope: !893, file: !514, line: 1311, column: 98)
!893 = distinct !DILexicalBlock(scope: !890, file: !514, line: 1311, column: 64)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !895, file: !514, line: 1312, type: !16)
!895 = distinct !DILexicalBlock(scope: !865, file: !514, line: 1312, column: 8)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !897, file: !514, line: 1312, type: !16)
!897 = distinct !DILexicalBlock(scope: !898, file: !514, line: 1312, column: 98)
!898 = distinct !DILexicalBlock(scope: !895, file: !514, line: 1312, column: 64)
!899 = !DISubprogram(name: "pysqlite_connection_executemany", scope: !514, file: !514, line: 1317, type: !691, isLocal: false, isDefinition: true, scopeLine: 1318, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_executemany, variables: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !911, !915, !919, !923, !925, !928, !930}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !899, file: !514, line: 1317, type: !410)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !899, file: !514, line: 1317, type: !16)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !899, file: !514, line: 1317, type: !16)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !899, file: !514, line: 1319, type: !16)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !899, file: !514, line: 1320, type: !16)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !899, file: !514, line: 1321, type: !16)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !908, file: !514, line: 1330, type: !16)
!908 = distinct !DILexicalBlock(scope: !909, file: !514, line: 1330, column: 12)
!909 = distinct !DILexicalBlock(scope: !910, file: !514, line: 1329, column: 18)
!910 = distinct !DILexicalBlock(scope: !899, file: !514, line: 1329, column: 9)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !912, file: !514, line: 1330, type: !16)
!912 = distinct !DILexicalBlock(scope: !913, file: !514, line: 1330, column: 111)
!913 = distinct !DILexicalBlock(scope: !914, file: !514, line: 1330, column: 83)
!914 = distinct !DILexicalBlock(scope: !908, file: !514, line: 1330, column: 60)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !916, file: !514, line: 1336, type: !16)
!916 = distinct !DILexicalBlock(scope: !917, file: !514, line: 1336, column: 12)
!917 = distinct !DILexicalBlock(scope: !918, file: !514, line: 1335, column: 18)
!918 = distinct !DILexicalBlock(scope: !899, file: !514, line: 1335, column: 9)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !920, file: !514, line: 1336, type: !16)
!920 = distinct !DILexicalBlock(scope: !921, file: !514, line: 1336, column: 111)
!921 = distinct !DILexicalBlock(scope: !922, file: !514, line: 1336, column: 83)
!922 = distinct !DILexicalBlock(scope: !916, file: !514, line: 1336, column: 60)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !924, file: !514, line: 1340, type: !16)
!924 = distinct !DILexicalBlock(scope: !899, file: !514, line: 1340, column: 8)
!925 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !926, file: !514, line: 1340, type: !16)
!926 = distinct !DILexicalBlock(scope: !927, file: !514, line: 1340, column: 98)
!927 = distinct !DILexicalBlock(scope: !924, file: !514, line: 1340, column: 64)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !929, file: !514, line: 1341, type: !16)
!929 = distinct !DILexicalBlock(scope: !899, file: !514, line: 1341, column: 8)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !931, file: !514, line: 1341, type: !16)
!931 = distinct !DILexicalBlock(scope: !932, file: !514, line: 1341, column: 98)
!932 = distinct !DILexicalBlock(scope: !929, file: !514, line: 1341, column: 64)
!933 = !DISubprogram(name: "pysqlite_connection_executescript", scope: !514, file: !514, line: 1346, type: !691, isLocal: false, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_executescript, variables: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !945, !949, !953, !957, !959, !962, !964}
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !933, file: !514, line: 1346, type: !410)
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !933, file: !514, line: 1346, type: !16)
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !933, file: !514, line: 1346, type: !16)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cursor", scope: !933, file: !514, line: 1348, type: !16)
!939 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !933, file: !514, line: 1349, type: !16)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !933, file: !514, line: 1350, type: !16)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !942, file: !514, line: 1359, type: !16)
!942 = distinct !DILexicalBlock(scope: !943, file: !514, line: 1359, column: 12)
!943 = distinct !DILexicalBlock(scope: !944, file: !514, line: 1358, column: 18)
!944 = distinct !DILexicalBlock(scope: !933, file: !514, line: 1358, column: 9)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !946, file: !514, line: 1359, type: !16)
!946 = distinct !DILexicalBlock(scope: !947, file: !514, line: 1359, column: 111)
!947 = distinct !DILexicalBlock(scope: !948, file: !514, line: 1359, column: 83)
!948 = distinct !DILexicalBlock(scope: !942, file: !514, line: 1359, column: 60)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !950, file: !514, line: 1365, type: !16)
!950 = distinct !DILexicalBlock(scope: !951, file: !514, line: 1365, column: 12)
!951 = distinct !DILexicalBlock(scope: !952, file: !514, line: 1364, column: 18)
!952 = distinct !DILexicalBlock(scope: !933, file: !514, line: 1364, column: 9)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !954, file: !514, line: 1365, type: !16)
!954 = distinct !DILexicalBlock(scope: !955, file: !514, line: 1365, column: 111)
!955 = distinct !DILexicalBlock(scope: !956, file: !514, line: 1365, column: 83)
!956 = distinct !DILexicalBlock(scope: !950, file: !514, line: 1365, column: 60)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !958, file: !514, line: 1369, type: !16)
!958 = distinct !DILexicalBlock(scope: !933, file: !514, line: 1369, column: 8)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !960, file: !514, line: 1369, type: !16)
!960 = distinct !DILexicalBlock(scope: !961, file: !514, line: 1369, column: 98)
!961 = distinct !DILexicalBlock(scope: !958, file: !514, line: 1369, column: 64)
!962 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !963, file: !514, line: 1370, type: !16)
!963 = distinct !DILexicalBlock(scope: !933, file: !514, line: 1370, column: 8)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !965, file: !514, line: 1370, type: !16)
!965 = distinct !DILexicalBlock(scope: !966, file: !514, line: 1370, column: 98)
!966 = distinct !DILexicalBlock(scope: !963, file: !514, line: 1370, column: 64)
!967 = !DISubprogram(name: "pysqlite_connection_setup_types", scope: !514, file: !514, line: 1736, type: !968, isLocal: false, isDefinition: true, scopeLine: 1737, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @pysqlite_connection_setup_types, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!55}
!970 = !{}
!971 = !DISubprogram(name: "_pysqlite_set_result", scope: !514, file: !514, line: 508, type: !972, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.sqlite3_context*, %struct._object*)* @_pysqlite_set_result, variables: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!55, !763, !16}
!974 = !{!975, !976, !977, !983, !987, !990}
!975 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !971, file: !514, line: 508, type: !763)
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "py_val", arg: 2, scope: !971, file: !514, line: 508, type: !16)
!977 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !978, file: !514, line: 513, type: !981)
!978 = distinct !DILexicalBlock(scope: !979, file: !514, line: 512, column: 87)
!979 = distinct !DILexicalBlock(scope: !980, file: !514, line: 512, column: 16)
!980 = distinct !DILexicalBlock(scope: !971, file: !514, line: 510, column: 9)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite_int64", file: !394, line: 253, baseType: !982)
!982 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !984, file: !514, line: 520, type: !40)
!984 = distinct !DILexicalBlock(scope: !985, file: !514, line: 519, column: 87)
!985 = distinct !DILexicalBlock(scope: !986, file: !514, line: 519, column: 16)
!986 = distinct !DILexicalBlock(scope: !979, file: !514, line: 517, column: 16)
!987 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !988, file: !514, line: 525, type: !40)
!988 = distinct !DILexicalBlock(scope: !989, file: !514, line: 524, column: 132)
!989 = distinct !DILexicalBlock(scope: !985, file: !514, line: 524, column: 16)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !988, file: !514, line: 526, type: !22)
!991 = !DISubprogram(name: "_sqlite3_result_error", scope: !514, file: !514, line: 50, type: !992, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.sqlite3_context*, i8*, i32)* @_sqlite3_result_error, variables: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !763, !40, !55}
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !991, file: !514, line: 50, type: !763)
!996 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errmsg", arg: 2, scope: !991, file: !514, line: 50, type: !40)
!997 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !991, file: !514, line: 50, type: !55)
!998 = !DISubprogram(name: "_pysqlite_drop_unused_cursor_references", scope: !514, file: !514, line: 801, type: !598, isLocal: true, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Connection*)* @_pysqlite_drop_unused_cursor_references, variables: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004, !1013}
!1000 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !998, file: !514, line: 801, type: !410)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_list", scope: !998, file: !514, line: 803, type: !16)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weakref", scope: !998, file: !514, line: 804, type: !16)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !998, file: !514, line: 805, type: !55)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1005, file: !514, line: 823, type: !16)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !514, line: 823, column: 20)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !514, line: 822, column: 56)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !514, line: 822, column: 17)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !514, line: 821, column: 64)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !514, line: 821, column: 13)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !514, line: 819, column: 54)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !514, line: 819, column: 5)
!1012 = distinct !DILexicalBlock(scope: !998, file: !514, line: 819, column: 5)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1014, file: !514, line: 829, type: !16)
!1014 = distinct !DILexicalBlock(scope: !998, file: !514, line: 829, column: 8)
!1015 = !DISubprogram(name: "_pysqlite_step_callback", scope: !514, file: !514, line: 640, type: !788, isLocal: true, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_step_callback, variables: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1028, !1030, !1033, !1035}
!1017 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !1015, file: !514, line: 640, type: !763)
!1018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 2, scope: !1015, file: !514, line: 640, type: !55)
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "params", arg: 3, scope: !1015, file: !514, line: 640, type: !766)
!1020 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !1015, file: !514, line: 642, type: !16)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function_result", scope: !1015, file: !514, line: 643, type: !16)
!1022 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aggregate_class", scope: !1015, file: !514, line: 644, type: !16)
!1023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aggregate_instance", scope: !1015, file: !514, line: 645, type: !459)
!1024 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stepmethod", scope: !1015, file: !514, line: 646, type: !16)
!1025 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "threadstate", scope: !1015, file: !514, line: 649, type: !799)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1027, file: !514, line: 684, type: !16)
!1027 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 684, column: 8)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1029, file: !514, line: 696, type: !16)
!1029 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 696, column: 8)
!1030 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1031, file: !514, line: 696, type: !16)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !514, line: 696, column: 102)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !514, line: 696, column: 68)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1034, file: !514, line: 697, type: !16)
!1034 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 697, column: 8)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1036, file: !514, line: 697, type: !16)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !514, line: 697, column: 107)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !514, line: 697, column: 73)
!1038 = !DISubprogram(name: "pysqlite_connection_set_isolation_level", scope: !514, file: !514, line: 1174, type: !674, isLocal: true, isDefinition: true, scopeLine: 1175, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_set_isolation_level, variables: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1046, !1049, !1053, !1055, !1056, !1060, !1064}
!1040 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1038, file: !514, line: 1174, type: !410)
!1041 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isolation_level", arg: 2, scope: !1038, file: !514, line: 1174, type: !16)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !1038, file: !514, line: 1176, type: !16)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "begin_statement", scope: !1038, file: !514, line: 1177, type: !16)
!1044 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1045, file: !514, line: 1180, type: !16)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !514, line: 1180, column: 8)
!1046 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1047, file: !514, line: 1180, type: !16)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !514, line: 1180, column: 113)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !514, line: 1180, column: 79)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1050, file: !514, line: 1195, type: !16)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !514, line: 1195, column: 12)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !514, line: 1187, column: 47)
!1052 = distinct !DILexicalBlock(scope: !1038, file: !514, line: 1187, column: 9)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !1054, file: !514, line: 1199, type: !40)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !514, line: 1198, column: 12)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !1054, file: !514, line: 1200, type: !22)
!1056 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1057, file: !514, line: 1216, type: !16)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !514, line: 1216, column: 16)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !514, line: 1215, column: 25)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !514, line: 1215, column: 13)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1061, file: !514, line: 1221, type: !16)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !514, line: 1221, column: 16)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !514, line: 1220, column: 37)
!1063 = distinct !DILexicalBlock(scope: !1054, file: !514, line: 1220, column: 13)
!1064 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1065, file: !514, line: 1226, type: !16)
!1065 = distinct !DILexicalBlock(scope: !1054, file: !514, line: 1226, column: 12)
!1066 = !DISubprogram(name: "_pysqlite_drop_unused_statement_references", scope: !514, file: !514, line: 769, type: !598, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.pysqlite_Connection*)* @_pysqlite_drop_unused_statement_references, variables: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1081}
!1068 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1066, file: !514, line: 769, type: !410)
!1069 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_list", scope: !1066, file: !514, line: 771, type: !16)
!1070 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weakref", scope: !1066, file: !514, line: 772, type: !16)
!1071 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1066, file: !514, line: 773, type: !55)
!1072 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1073, file: !514, line: 791, type: !16)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !514, line: 791, column: 20)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !514, line: 790, column: 56)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !514, line: 790, column: 17)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !514, line: 789, column: 64)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !514, line: 789, column: 13)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !514, line: 787, column: 57)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !514, line: 787, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1066, file: !514, line: 787, column: 5)
!1081 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1082, file: !514, line: 797, type: !16)
!1082 = distinct !DILexicalBlock(scope: !1066, file: !514, line: 797, column: 8)
!1083 = !DISubprogram(name: "pysqlite_connection_set_authorizer", scope: !514, file: !514, line: 1005, type: !691, isLocal: true, isDefinition: true, scopeLine: 1006, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_authorizer, variables: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089}
!1085 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1083, file: !514, line: 1005, type: !410)
!1086 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1083, file: !514, line: 1005, type: !16)
!1087 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !1083, file: !514, line: 1005, type: !16)
!1088 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "authorizer_cb", scope: !1083, file: !514, line: 1007, type: !16)
!1089 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !1083, file: !514, line: 1010, type: !55)
!1090 = !DISubprogram(name: "_authorizer_callback", scope: !514, file: !514, line: 899, type: !1091, isLocal: true, isDefinition: true, scopeLine: 900, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i8*, i8*, i8*, i8*)* @_authorizer_callback, variables: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!55, !101, !55, !40, !40, !40, !40}
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1094 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_arg", arg: 1, scope: !1090, file: !514, line: 899, type: !101)
!1095 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "action", arg: 2, scope: !1090, file: !514, line: 899, type: !55)
!1096 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg1", arg: 3, scope: !1090, file: !514, line: 899, type: !40)
!1097 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg2", arg: 4, scope: !1090, file: !514, line: 899, type: !40)
!1098 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dbname", arg: 5, scope: !1090, file: !514, line: 899, type: !40)
!1099 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "access_attempt_source", arg: 6, scope: !1090, file: !514, line: 899, type: !40)
!1100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !1090, file: !514, line: 901, type: !16)
!1101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !1090, file: !514, line: 902, type: !55)
!1102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !1090, file: !514, line: 904, type: !799)
!1103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1104, file: !514, line: 933, type: !16)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !514, line: 933, column: 12)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !514, line: 919, column: 10)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !514, line: 911, column: 9)
!1107 = !DISubprogram(name: "pysqlite_connection_set_progress_handler", scope: !514, file: !514, line: 1035, type: !691, isLocal: true, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_progress_handler, variables: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113}
!1109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1107, file: !514, line: 1035, type: !410)
!1110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1107, file: !514, line: 1035, type: !16)
!1111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !1107, file: !514, line: 1035, type: !16)
!1112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "progress_handler", scope: !1107, file: !514, line: 1037, type: !16)
!1113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !1107, file: !514, line: 1038, type: !55)
!1114 = !DISubprogram(name: "_progress_handler", scope: !514, file: !514, line: 942, type: !1115, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @_progress_handler, variables: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!55, !101}
!1117 = !{!1118, !1119, !1120, !1121, !1122}
!1118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_arg", arg: 1, scope: !1114, file: !514, line: 942, type: !101)
!1119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !1114, file: !514, line: 944, type: !55)
!1120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !1114, file: !514, line: 945, type: !16)
!1121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !1114, file: !514, line: 947, type: !799)
!1122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1123, file: !514, line: 964, type: !16)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !514, line: 964, column: 12)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !514, line: 962, column: 12)
!1125 = distinct !DILexicalBlock(scope: !1114, file: !514, line: 953, column: 9)
!1126 = !DISubprogram(name: "pysqlite_connection_set_trace_callback", scope: !514, file: !514, line: 1064, type: !691, isLocal: true, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*, %struct._object*)* @pysqlite_connection_set_trace_callback, variables: !1127)
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1126, file: !514, line: 1064, type: !410)
!1129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1126, file: !514, line: 1064, type: !16)
!1130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !1126, file: !514, line: 1064, type: !16)
!1131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trace_callback", scope: !1126, file: !514, line: 1066, type: !16)
!1132 = !DISubprogram(name: "_trace_callback", scope: !514, file: !514, line: 973, type: !1133, isLocal: true, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @_trace_callback, variables: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !101, !40}
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1145}
!1136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "user_arg", arg: 1, scope: !1132, file: !514, line: 973, type: !101)
!1137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statement_string", arg: 2, scope: !1132, file: !514, line: 973, type: !40)
!1138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_statement", scope: !1132, file: !514, line: 975, type: !16)
!1139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !1132, file: !514, line: 976, type: !16)
!1140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !1132, file: !514, line: 979, type: !799)
!1141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1142, file: !514, line: 987, type: !16)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !514, line: 987, column: 12)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !514, line: 985, column: 23)
!1144 = distinct !DILexicalBlock(scope: !1132, file: !514, line: 985, column: 9)
!1145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1146, file: !514, line: 991, type: !16)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !514, line: 991, column: 12)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !514, line: 990, column: 14)
!1148 = distinct !DILexicalBlock(scope: !1132, file: !514, line: 990, column: 9)
!1149 = !DISubprogram(name: "pysqlite_connection_create_collation", scope: !514, file: !514, line: 1501, type: !707, isLocal: true, isDefinition: true, scopeLine: 1502, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_create_collation, variables: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1167, !1169}
!1151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1149, file: !514, line: 1501, type: !410)
!1152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1149, file: !514, line: 1501, type: !16)
!1153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !1149, file: !514, line: 1503, type: !16)
!1154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uppercase_name", scope: !1149, file: !514, line: 1504, type: !16)
!1155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1149, file: !514, line: 1505, type: !16)
!1156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !1149, file: !514, line: 1506, type: !16)
!1157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1149, file: !514, line: 1507, type: !22)
!1158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !1149, file: !514, line: 1507, type: !22)
!1159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uppercase_name_str", scope: !1149, file: !514, line: 1509, type: !63)
!1160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !1149, file: !514, line: 1510, type: !55)
!1161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !1149, file: !514, line: 1511, type: !360)
!1162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !1149, file: !514, line: 1512, type: !101)
!1163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch", scope: !1164, file: !514, line: 1533, type: !505)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !514, line: 1532, column: 27)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !514, line: 1532, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1532, column: 5)
!1167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1168, file: !514, line: 1574, type: !16)
!1168 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1574, column: 8)
!1169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1170, file: !514, line: 1574, type: !16)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !514, line: 1574, column: 106)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !514, line: 1574, column: 72)
!1172 = !DISubprogram(name: "pysqlite_collation_callback", scope: !514, file: !514, line: 1378, type: !1173, isLocal: true, isDefinition: true, scopeLine: 1382, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i8*, i32, i8*)* @pysqlite_collation_callback, variables: !1177)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!55, !101, !55, !1175, !55, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1192, !1195, !1197, !1200, !1202}
!1178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "context", arg: 1, scope: !1172, file: !514, line: 1379, type: !101)
!1179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text1_length", arg: 2, scope: !1172, file: !514, line: 1380, type: !55)
!1180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text1_data", arg: 3, scope: !1172, file: !514, line: 1380, type: !1175)
!1181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text2_length", arg: 4, scope: !1172, file: !514, line: 1381, type: !55)
!1182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "text2_data", arg: 5, scope: !1172, file: !514, line: 1381, type: !1175)
!1183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callback", scope: !1172, file: !514, line: 1383, type: !16)
!1184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string1", scope: !1172, file: !514, line: 1384, type: !16)
!1185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string2", scope: !1172, file: !514, line: 1385, type: !16)
!1186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gilstate", scope: !1172, file: !514, line: 1387, type: !799)
!1187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !1172, file: !514, line: 1389, type: !16)
!1188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "longval", scope: !1172, file: !514, line: 1390, type: !28)
!1189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1172, file: !514, line: 1391, type: !55)
!1190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1191, file: !514, line: 1427, type: !16)
!1191 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1427, column: 8)
!1192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1193, file: !514, line: 1427, type: !16)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !514, line: 1427, column: 99)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !514, line: 1427, column: 65)
!1195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1196, file: !514, line: 1428, type: !16)
!1196 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1428, column: 8)
!1197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1198, file: !514, line: 1428, type: !16)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !514, line: 1428, column: 99)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !514, line: 1428, column: 65)
!1200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1201, file: !514, line: 1429, type: !16)
!1201 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1429, column: 8)
!1202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1203, file: !514, line: 1429, type: !16)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !514, line: 1429, column: 98)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !514, line: 1429, column: 64)
!1205 = !DISubprogram(name: "pysqlite_connection_interrupt", scope: !514, file: !514, line: 1437, type: !707, isLocal: true, isDefinition: true, scopeLine: 1438, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_interrupt, variables: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1205, file: !514, line: 1437, type: !410)
!1208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1205, file: !514, line: 1437, type: !16)
!1209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !1205, file: !514, line: 1439, type: !16)
!1210 = !DISubprogram(name: "pysqlite_connection_iterdump", scope: !514, file: !514, line: 1459, type: !707, isLocal: true, isDefinition: true, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_iterdump, variables: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1220, !1223, !1225}
!1212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1210, file: !514, line: 1459, type: !410)
!1213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1210, file: !514, line: 1459, type: !16)
!1214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !1210, file: !514, line: 1461, type: !16)
!1215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !1210, file: !514, line: 1462, type: !16)
!1216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module_dict", scope: !1210, file: !514, line: 1463, type: !16)
!1217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pyfn_iterdump", scope: !1210, file: !514, line: 1464, type: !16)
!1218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1219, file: !514, line: 1495, type: !16)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1495, column: 8)
!1220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1221, file: !514, line: 1495, type: !16)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !514, line: 1495, column: 96)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !514, line: 1495, column: 62)
!1223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1224, file: !514, line: 1496, type: !16)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1496, column: 8)
!1225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1226, file: !514, line: 1496, type: !16)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !514, line: 1496, column: 98)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !514, line: 1496, column: 64)
!1228 = !DISubprogram(name: "pysqlite_connection_enter", scope: !514, file: !514, line: 1589, type: !707, isLocal: true, isDefinition: true, scopeLine: 1590, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_enter, variables: !1229)
!1229 = !{!1230, !1231}
!1230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1228, file: !514, line: 1589, type: !410)
!1231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1228, file: !514, line: 1589, type: !16)
!1232 = !DISubprogram(name: "pysqlite_connection_exit", scope: !514, file: !514, line: 1598, type: !707, isLocal: true, isDefinition: true, scopeLine: 1599, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, %struct._object*)* @pysqlite_connection_exit, variables: !1233)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1232, file: !514, line: 1598, type: !410)
!1235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1232, file: !514, line: 1598, type: !16)
!1236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_type", scope: !1232, file: !514, line: 1600, type: !16)
!1237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_value", scope: !1232, file: !514, line: 1600, type: !16)
!1238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc_tb", scope: !1232, file: !514, line: 1600, type: !16)
!1239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method_name", scope: !1232, file: !514, line: 1601, type: !63)
!1240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1232, file: !514, line: 1602, type: !16)
!1241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1242, file: !514, line: 1618, type: !16)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !514, line: 1618, column: 8)
!1243 = !DISubprogram(name: "pysqlite_connection_get_isolation_level", scope: !514, file: !514, line: 1159, type: !1244, isLocal: true, isDefinition: true, scopeLine: 1160, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, i8*)* @pysqlite_connection_get_isolation_level, variables: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!16, !410, !101}
!1246 = !{!1247, !1248}
!1247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1243, file: !514, line: 1159, type: !410)
!1248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !1243, file: !514, line: 1159, type: !101)
!1249 = !DISubprogram(name: "pysqlite_connection_get_total_changes", scope: !514, file: !514, line: 1165, type: !1244, isLocal: true, isDefinition: true, scopeLine: 1166, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.pysqlite_Connection*, i8*)* @pysqlite_connection_get_total_changes, variables: !1250)
!1250 = !{!1251, !1252}
!1251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !1249, file: !514, line: 1165, type: !410)
!1252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !1249, file: !514, line: 1165, type: !101)
!1253 = !{!1254, !1258, !1262, !1270, !1274, !1278, !1280, !1281, !1282, !1286, !1291, !1295, !1296, !1297, !1298, !1302}
!1254 = !DIGlobalVariable(name: "kwlist", scope: !513, file: !514, line: 64, type: !1255, isLocal: true, isDefinition: true, variable: [9 x i8*]* @pysqlite_connection_init.kwlist)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 576, align: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 9)
!1258 = !DIGlobalVariable(name: "kwlist", scope: !690, file: !514, line: 299, type: !1259, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pysqlite_connection_cursor.kwlist)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, align: 64, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 3)
!1262 = !DIGlobalVariable(name: "PyId_finalize", scope: !808, file: !514, line: 708, type: !1263, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_pysqlite_final_callback.PyId_finalize)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !18, line: 144, baseType: !1264)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !18, line: 140, size: 192, align: 64, elements: !1265)
!1265 = !{!1266, !1268, !1269}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1264, file: !18, line: 141, baseType: !1267, size: 64, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1264, file: !18, line: 142, baseType: !40, size: 64, align: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1264, file: !18, line: 143, baseType: !16, size: 64, align: 64, offset: 128)
!1270 = !DIGlobalVariable(name: "kwlist", scope: !827, file: !514, line: 835, type: !1271, isLocal: true, isDefinition: true, variable: [5 x i8*]* @pysqlite_connection_create_function.kwlist)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 320, align: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 5)
!1274 = !DIGlobalVariable(name: "kwlist", scope: !836, file: !514, line: 873, type: !1275, isLocal: true, isDefinition: true, variable: [4 x i8*]* @pysqlite_connection_create_aggregate.kwlist)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, align: 64, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 4)
!1278 = !DIGlobalVariable(name: "pysqlite_ConnectionType", scope: !0, file: !514, line: 1694, type: !1279, isLocal: false, isDefinition: true, variable: %struct._typeobject* @pysqlite_ConnectionType)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !18, line: 422, baseType: !31)
!1280 = !DIGlobalVariable(name: "begin_word", scope: !1038, file: !514, line: 1178, type: !16, isLocal: true, isDefinition: true, variable: %struct._object** @pysqlite_connection_set_isolation_level.begin_word)
!1281 = !DIGlobalVariable(name: "PyId_cursor", scope: !0, file: !514, line: 44, type: !1263, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_cursor)
!1282 = !DIGlobalVariable(name: "connection_doc", scope: !0, file: !514, line: 1623, type: !1283, isLocal: true, isDefinition: true, variable: [35 x i8]* @connection_doc)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 280, align: 8, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 35)
!1286 = !DIGlobalVariable(name: "connection_methods", scope: !0, file: !514, line: 1632, type: !1287, isLocal: true, isDefinition: true, variable: [18 x %struct.PyMethodDef]* @connection_methods)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 4608, align: 64, elements: !1289)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !293, line: 47, baseType: !292)
!1289 = !{!1290}
!1290 = !DISubrange(count: 18)
!1291 = !DIGlobalVariable(name: "kwlist", scope: !1083, file: !514, line: 1009, type: !1292, isLocal: true, isDefinition: true, variable: [2 x i8*]* @pysqlite_connection_set_authorizer.kwlist)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, align: 64, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 2)
!1295 = !DIGlobalVariable(name: "kwlist", scope: !1107, file: !514, line: 1040, type: !1259, isLocal: true, isDefinition: true, variable: [3 x i8*]* @pysqlite_connection_set_progress_handler.kwlist)
!1296 = !DIGlobalVariable(name: "kwlist", scope: !1126, file: !514, line: 1068, type: !1292, isLocal: true, isDefinition: true, variable: [2 x i8*]* @pysqlite_connection_set_trace_callback.kwlist)
!1297 = !DIGlobalVariable(name: "PyId_upper", scope: !1149, file: !514, line: 1508, type: !1263, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @pysqlite_connection_create_collation.PyId_upper)
!1298 = !DIGlobalVariable(name: "connection_members", scope: !0, file: !514, line: 1676, type: !1299, isLocal: true, isDefinition: true, variable: [14 x %struct.PyMemberDef]* @connection_members)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4480, align: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 14)
!1302 = !DIGlobalVariable(name: "connection_getset", scope: !0, file: !514, line: 1626, type: !1303, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @connection_getset)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1304, size: 960, align: 64, elements: !1260)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !313, line: 17, baseType: !312)
!1305 = !{i32 2, !"Dwarf Version", i32 4}
!1306 = !{i32 2, !"Debug Info Version", i32 3}
!1307 = !{i32 1, !"PIC Level", i32 2}
!1308 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1309 = !{!1310, !1310, i64 0}
!1310 = !{!"any pointer", !1311, i64 0}
!1311 = !{!"omnipotent char", !1312, i64 0}
!1312 = !{!"Simple C/C++ TBAA"}
!1313 = !DIExpression()
!1314 = !DILocation(line: 62, column: 51, scope: !513)
!1315 = !DILocation(line: 62, column: 67, scope: !513)
!1316 = !DILocation(line: 62, column: 83, scope: !513)
!1317 = !DILocation(line: 70, column: 5, scope: !513)
!1318 = !DILocation(line: 70, column: 11, scope: !513)
!1319 = !DILocation(line: 71, column: 5, scope: !513)
!1320 = !DILocation(line: 71, column: 9, scope: !513)
!1321 = !{!1322, !1322, i64 0}
!1322 = !{!"int", !1311, i64 0}
!1323 = !DILocation(line: 72, column: 5, scope: !513)
!1324 = !DILocation(line: 72, column: 15, scope: !513)
!1325 = !DILocation(line: 73, column: 5, scope: !513)
!1326 = !DILocation(line: 73, column: 15, scope: !513)
!1327 = !DILocation(line: 74, column: 5, scope: !513)
!1328 = !DILocation(line: 74, column: 9, scope: !513)
!1329 = !DILocation(line: 75, column: 5, scope: !513)
!1330 = !DILocation(line: 75, column: 9, scope: !513)
!1331 = !DILocation(line: 76, column: 5, scope: !513)
!1332 = !DILocation(line: 76, column: 9, scope: !513)
!1333 = !DILocation(line: 77, column: 5, scope: !513)
!1334 = !DILocation(line: 77, column: 12, scope: !513)
!1335 = !{!1336, !1336, i64 0}
!1336 = !{!"double", !1311, i64 0}
!1337 = !DILocation(line: 78, column: 5, scope: !513)
!1338 = !DILocation(line: 78, column: 9, scope: !513)
!1339 = !DILocation(line: 80, column: 38, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !513, file: !514, line: 80, column: 9)
!1341 = !DILocation(line: 80, column: 44, scope: !1340)
!1342 = !DILocation(line: 80, column: 10, scope: !1340)
!1343 = !DILocation(line: 80, column: 9, scope: !513)
!1344 = !DILocation(line: 85, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !514, line: 84, column: 5)
!1346 = !DILocation(line: 88, column: 5, scope: !513)
!1347 = !DILocation(line: 88, column: 11, scope: !513)
!1348 = !DILocation(line: 88, column: 23, scope: !513)
!1349 = !{!1350, !1322, i64 68}
!1350 = !{!"", !1351, i64 0, !1310, i64 16, !1311, i64 24, !1322, i64 28, !1336, i64 32, !1336, i64 40, !1310, i64 48, !1310, i64 56, !1322, i64 64, !1322, i64 68, !1352, i64 72, !1310, i64 80, !1310, i64 88, !1310, i64 96, !1322, i64 104, !1322, i64 108, !1310, i64 112, !1310, i64 120, !1310, i64 128, !1310, i64 136, !1310, i64 144, !1310, i64 152, !1310, i64 160, !1310, i64 168, !1310, i64 176, !1310, i64 184, !1310, i64 192, !1310, i64 200, !1310, i64 208, !1310, i64 216}
!1351 = !{!"_object", !1352, i64 0, !1310, i64 8}
!1352 = !{!"long", !1311, i64 0}
!1353 = !DILocation(line: 90, column: 5, scope: !513)
!1354 = !DILocation(line: 90, column: 11, scope: !513)
!1355 = !DILocation(line: 90, column: 27, scope: !513)
!1356 = !{!1350, !1310, i64 56}
!1357 = !DILocation(line: 92, column: 5, scope: !513)
!1358 = !DILocation(line: 92, column: 11, scope: !513)
!1359 = !DILocation(line: 92, column: 27, scope: !513)
!1360 = !{!1350, !1310, i64 80}
!1361 = !DILocation(line: 93, column: 5, scope: !513)
!1362 = !DILocation(line: 93, column: 11, scope: !513)
!1363 = !DILocation(line: 93, column: 22, scope: !513)
!1364 = !{!1350, !1310, i64 88}
!1365 = !DILocation(line: 94, column: 5, scope: !513)
!1366 = !DILocation(line: 94, column: 11, scope: !513)
!1367 = !DILocation(line: 94, column: 19, scope: !513)
!1368 = !{!1350, !1310, i64 96}
!1369 = !DILocation(line: 96, column: 51, scope: !513)
!1370 = !{!1351, !1352, i64 0}
!1371 = !DILocation(line: 97, column: 5, scope: !513)
!1372 = !DILocation(line: 97, column: 11, scope: !513)
!1373 = !DILocation(line: 97, column: 23, scope: !513)
!1374 = !{!1350, !1310, i64 112}
!1375 = !DILocation(line: 99, column: 49, scope: !513)
!1376 = !DILocation(line: 100, column: 5, scope: !513)
!1377 = !DILocation(line: 100, column: 11, scope: !513)
!1378 = !DILocation(line: 100, column: 24, scope: !513)
!1379 = !{!1350, !1310, i64 120}
!1380 = !DILocation(line: 103, column: 7, scope: !531)
!1381 = !DILocation(line: 103, column: 22, scope: !531)
!1382 = !DILocation(line: 103, column: 37, scope: !531)
!1383 = !DILocation(line: 103, column: 35, scope: !531)
!1384 = !DILocation(line: 104, column: 26, scope: !531)
!1385 = !DILocation(line: 104, column: 37, scope: !531)
!1386 = !DILocation(line: 104, column: 43, scope: !531)
!1387 = !DILocation(line: 106, column: 27, scope: !531)
!1388 = !DILocation(line: 105, column: 50, scope: !531)
!1389 = !DILocation(line: 104, column: 10, scope: !531)
!1390 = !DILocation(line: 104, column: 8, scope: !531)
!1391 = !DILocation(line: 115, column: 26, scope: !531)
!1392 = !DILocation(line: 115, column: 5, scope: !531)
!1393 = !DILocation(line: 115, column: 34, scope: !513)
!1394 = !DILocation(line: 117, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !513, file: !514, line: 117, column: 9)
!1396 = !DILocation(line: 117, column: 12, scope: !1395)
!1397 = !DILocation(line: 117, column: 9, scope: !513)
!1398 = !DILocation(line: 118, column: 28, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !514, line: 117, column: 18)
!1400 = !DILocation(line: 118, column: 34, scope: !1399)
!1401 = !{!1350, !1310, i64 16}
!1402 = !DILocation(line: 118, column: 9, scope: !1399)
!1403 = !DILocation(line: 119, column: 9, scope: !1399)
!1404 = !DILocation(line: 122, column: 10, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !513, file: !514, line: 122, column: 9)
!1406 = !DILocation(line: 122, column: 9, scope: !513)
!1407 = !DILocation(line: 123, column: 27, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !514, line: 122, column: 27)
!1409 = !DILocation(line: 123, column: 25, scope: !1408)
!1410 = !DILocation(line: 124, column: 14, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !514, line: 124, column: 13)
!1412 = !DILocation(line: 124, column: 13, scope: !1408)
!1413 = !DILocation(line: 125, column: 13, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !514, line: 124, column: 31)
!1415 = !DILocation(line: 127, column: 5, scope: !1408)
!1416 = !DILocation(line: 128, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !514, line: 127, column: 12)
!1418 = !DILocation(line: 128, column: 44, scope: !1417)
!1419 = !DILocation(line: 128, column: 53, scope: !1417)
!1420 = !DILocation(line: 130, column: 5, scope: !513)
!1421 = !DILocation(line: 130, column: 11, scope: !513)
!1422 = !DILocation(line: 130, column: 27, scope: !513)
!1423 = !{!1350, !1310, i64 48}
!1424 = !DILocation(line: 131, column: 49, scope: !592)
!1425 = !DILocation(line: 131, column: 55, scope: !592)
!1426 = !DILocation(line: 131, column: 9, scope: !592)
!1427 = !DILocation(line: 131, column: 72, scope: !592)
!1428 = !DILocation(line: 131, column: 9, scope: !513)
!1429 = !DILocation(line: 132, column: 9, scope: !591)
!1430 = !DILocation(line: 132, column: 14, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !590, file: !514, discriminator: 1)
!1432 = !DILocation(line: 132, column: 24, scope: !590)
!1433 = !DILocation(line: 132, column: 54, scope: !590)
!1434 = !DILocation(line: 132, column: 80, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !590, file: !514, line: 132, column: 77)
!1436 = !DILocation(line: 132, column: 97, scope: !1435)
!1437 = !DILocation(line: 132, column: 77, scope: !1435)
!1438 = !DILocation(line: 132, column: 107, scope: !1435)
!1439 = !DILocation(line: 132, column: 77, scope: !590)
!1440 = !DILocation(line: 132, column: 77, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !590, file: !514, discriminator: 2)
!1442 = !DILocation(line: 132, column: 138, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1435, file: !514, discriminator: 3)
!1444 = !DILocation(line: 132, column: 156, scope: !1435)
!1445 = !{!1351, !1310, i64 8}
!1446 = !DILocation(line: 132, column: 166, scope: !1435)
!1447 = !{!1448, !1310, i64 48}
!1448 = !{!"_typeobject", !1449, i64 0, !1310, i64 24, !1352, i64 32, !1352, i64 40, !1310, i64 48, !1310, i64 56, !1310, i64 64, !1310, i64 72, !1310, i64 80, !1310, i64 88, !1310, i64 96, !1310, i64 104, !1310, i64 112, !1310, i64 120, !1310, i64 128, !1310, i64 136, !1310, i64 144, !1310, i64 152, !1310, i64 160, !1352, i64 168, !1310, i64 176, !1310, i64 184, !1310, i64 192, !1310, i64 200, !1352, i64 208, !1310, i64 216, !1310, i64 224, !1310, i64 232, !1310, i64 240, !1310, i64 248, !1310, i64 256, !1310, i64 264, !1310, i64 272, !1310, i64 280, !1352, i64 288, !1310, i64 296, !1310, i64 304, !1310, i64 312, !1310, i64 320, !1310, i64 328, !1310, i64 336, !1310, i64 344, !1310, i64 352, !1310, i64 360, !1310, i64 368, !1310, i64 376, !1322, i64 384, !1310, i64 392}
!1449 = !{!"", !1351, i64 0, !1352, i64 16}
!1450 = !DILocation(line: 132, column: 191, scope: !1435)
!1451 = !DILocation(line: 132, column: 122, scope: !1435)
!1452 = !DILocation(line: 132, column: 210, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !591, file: !514, discriminator: 4)
!1454 = !DILocation(line: 132, column: 210, scope: !590)
!1455 = !DILocation(line: 132, column: 210, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !590, file: !514, discriminator: 5)
!1457 = !DILocation(line: 133, column: 9, scope: !591)
!1458 = !DILocation(line: 135, column: 5, scope: !513)
!1459 = !DILocation(line: 135, column: 10, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !594, file: !514, discriminator: 1)
!1461 = !DILocation(line: 135, column: 20, scope: !594)
!1462 = !DILocation(line: 135, column: 50, scope: !594)
!1463 = !DILocation(line: 135, column: 76, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !594, file: !514, line: 135, column: 73)
!1465 = !DILocation(line: 135, column: 93, scope: !1464)
!1466 = !DILocation(line: 135, column: 73, scope: !1464)
!1467 = !DILocation(line: 135, column: 103, scope: !1464)
!1468 = !DILocation(line: 135, column: 73, scope: !594)
!1469 = !DILocation(line: 135, column: 73, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !594, file: !514, discriminator: 2)
!1471 = !DILocation(line: 135, column: 134, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1464, file: !514, discriminator: 3)
!1473 = !DILocation(line: 135, column: 152, scope: !1464)
!1474 = !DILocation(line: 135, column: 162, scope: !1464)
!1475 = !DILocation(line: 135, column: 187, scope: !1464)
!1476 = !DILocation(line: 135, column: 118, scope: !1464)
!1477 = !DILocation(line: 135, column: 206, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !513, file: !514, discriminator: 4)
!1479 = !DILocation(line: 135, column: 206, scope: !594)
!1480 = !DILocation(line: 135, column: 206, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !594, file: !514, discriminator: 5)
!1482 = !DILocation(line: 137, column: 106, scope: !513)
!1483 = !DILocation(line: 137, column: 112, scope: !513)
!1484 = !DILocation(line: 137, column: 46, scope: !513)
!1485 = !DILocation(line: 137, column: 29, scope: !513)
!1486 = !DILocation(line: 137, column: 5, scope: !513)
!1487 = !DILocation(line: 137, column: 11, scope: !513)
!1488 = !DILocation(line: 137, column: 27, scope: !513)
!1489 = !DILocation(line: 138, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !513, file: !514, line: 138, column: 9)
!1491 = !DILocation(line: 138, column: 9, scope: !513)
!1492 = !DILocation(line: 139, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !514, line: 138, column: 27)
!1494 = !DILocation(line: 142, column: 5, scope: !513)
!1495 = !DILocation(line: 142, column: 11, scope: !513)
!1496 = !DILocation(line: 142, column: 30, scope: !513)
!1497 = !{!1350, !1322, i64 104}
!1498 = !DILocation(line: 143, column: 5, scope: !513)
!1499 = !DILocation(line: 143, column: 11, scope: !513)
!1500 = !DILocation(line: 143, column: 27, scope: !513)
!1501 = !{!1350, !1322, i64 108}
!1502 = !DILocation(line: 146, column: 24, scope: !513)
!1503 = !DILocation(line: 146, column: 5, scope: !513)
!1504 = !DILocation(line: 146, column: 11, scope: !513)
!1505 = !DILocation(line: 146, column: 22, scope: !513)
!1506 = !DILocation(line: 147, column: 21, scope: !513)
!1507 = !DILocation(line: 147, column: 5, scope: !513)
!1508 = !DILocation(line: 147, column: 11, scope: !513)
!1509 = !DILocation(line: 147, column: 19, scope: !513)
!1510 = !DILocation(line: 148, column: 10, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !513, file: !514, line: 148, column: 9)
!1512 = !DILocation(line: 148, column: 16, scope: !1511)
!1513 = !DILocation(line: 148, column: 27, scope: !1511)
!1514 = !DILocation(line: 148, column: 31, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1511, file: !514, discriminator: 1)
!1516 = !DILocation(line: 148, column: 37, scope: !1511)
!1517 = !DILocation(line: 148, column: 31, scope: !1511)
!1518 = !DILocation(line: 148, column: 9, scope: !513)
!1519 = !DILocation(line: 149, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1511, file: !514, line: 148, column: 46)
!1521 = !DILocation(line: 157, column: 5, scope: !513)
!1522 = !DILocation(line: 157, column: 11, scope: !513)
!1523 = !DILocation(line: 157, column: 28, scope: !513)
!1524 = !DILocation(line: 157, column: 43, scope: !513)
!1525 = !{!1526, !1322, i64 56}
!1526 = !{!"", !1351, i64 0, !1322, i64 16, !1310, i64 24, !1310, i64 32, !1310, i64 40, !1310, i64 48, !1322, i64 56}
!1527 = !DILocation(line: 158, column: 5, scope: !513)
!1528 = !DILocation(line: 158, column: 10, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !596, file: !514, discriminator: 1)
!1530 = !DILocation(line: 158, column: 20, scope: !596)
!1531 = !DILocation(line: 158, column: 50, scope: !596)
!1532 = !DILocation(line: 158, column: 37, scope: !596)
!1533 = !DILocation(line: 158, column: 65, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !596, file: !514, line: 158, column: 62)
!1535 = !DILocation(line: 158, column: 82, scope: !1534)
!1536 = !DILocation(line: 158, column: 62, scope: !1534)
!1537 = !DILocation(line: 158, column: 92, scope: !1534)
!1538 = !DILocation(line: 158, column: 62, scope: !596)
!1539 = !DILocation(line: 158, column: 62, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !596, file: !514, discriminator: 2)
!1541 = !DILocation(line: 158, column: 123, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1534, file: !514, discriminator: 3)
!1543 = !DILocation(line: 158, column: 141, scope: !1534)
!1544 = !DILocation(line: 158, column: 151, scope: !1534)
!1545 = !DILocation(line: 158, column: 176, scope: !1534)
!1546 = !DILocation(line: 158, column: 107, scope: !1534)
!1547 = !DILocation(line: 158, column: 195, scope: !1478)
!1548 = !DILocation(line: 158, column: 195, scope: !596)
!1549 = !DILocation(line: 158, column: 195, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !596, file: !514, discriminator: 5)
!1551 = !DILocation(line: 160, column: 5, scope: !513)
!1552 = !DILocation(line: 160, column: 11, scope: !513)
!1553 = !DILocation(line: 160, column: 25, scope: !513)
!1554 = !{!1350, !1311, i64 24}
!1555 = !DILocation(line: 161, column: 26, scope: !513)
!1556 = !DILocation(line: 161, column: 5, scope: !513)
!1557 = !DILocation(line: 161, column: 11, scope: !513)
!1558 = !DILocation(line: 161, column: 24, scope: !513)
!1559 = !{!1350, !1322, i64 28}
!1560 = !DILocation(line: 162, column: 21, scope: !513)
!1561 = !DILocation(line: 162, column: 5, scope: !513)
!1562 = !DILocation(line: 162, column: 11, scope: !513)
!1563 = !DILocation(line: 162, column: 19, scope: !513)
!1564 = !{!1350, !1336, i64 32}
!1565 = !DILocation(line: 163, column: 32, scope: !513)
!1566 = !DILocation(line: 163, column: 38, scope: !513)
!1567 = !DILocation(line: 163, column: 48, scope: !513)
!1568 = !DILocation(line: 163, column: 55, scope: !513)
!1569 = !DILocation(line: 163, column: 42, scope: !513)
!1570 = !DILocation(line: 163, column: 11, scope: !513)
!1571 = !DILocation(line: 165, column: 26, scope: !513)
!1572 = !DILocation(line: 165, column: 5, scope: !513)
!1573 = !DILocation(line: 165, column: 11, scope: !513)
!1574 = !DILocation(line: 165, column: 24, scope: !513)
!1575 = !{!1350, !1352, i64 72}
!1576 = !DILocation(line: 167, column: 31, scope: !513)
!1577 = !DILocation(line: 167, column: 5, scope: !513)
!1578 = !DILocation(line: 167, column: 11, scope: !513)
!1579 = !DILocation(line: 167, column: 29, scope: !513)
!1580 = !{!1350, !1322, i64 64}
!1581 = !DILocation(line: 169, column: 31, scope: !513)
!1582 = !DILocation(line: 169, column: 5, scope: !513)
!1583 = !DILocation(line: 169, column: 11, scope: !513)
!1584 = !DILocation(line: 169, column: 29, scope: !513)
!1585 = !{!1350, !1310, i64 128}
!1586 = !DILocation(line: 170, column: 10, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !513, file: !514, line: 170, column: 9)
!1588 = !DILocation(line: 170, column: 16, scope: !1587)
!1589 = !DILocation(line: 170, column: 9, scope: !513)
!1590 = !DILocation(line: 171, column: 9, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !514, line: 170, column: 35)
!1592 = !DILocation(line: 174, column: 24, scope: !513)
!1593 = !DILocation(line: 174, column: 5, scope: !513)
!1594 = !DILocation(line: 174, column: 11, scope: !513)
!1595 = !DILocation(line: 174, column: 22, scope: !513)
!1596 = !{!1350, !1310, i64 136}
!1597 = !DILocation(line: 175, column: 10, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !513, file: !514, line: 175, column: 9)
!1599 = !DILocation(line: 175, column: 16, scope: !1598)
!1600 = !DILocation(line: 175, column: 9, scope: !513)
!1601 = !DILocation(line: 176, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !514, line: 175, column: 28)
!1603 = !DILocation(line: 179, column: 21, scope: !513)
!1604 = !DILocation(line: 179, column: 5, scope: !513)
!1605 = !DILocation(line: 179, column: 11, scope: !513)
!1606 = !DILocation(line: 179, column: 19, scope: !513)
!1607 = !{!1350, !1310, i64 144}
!1608 = !DILocation(line: 180, column: 19, scope: !513)
!1609 = !DILocation(line: 180, column: 5, scope: !513)
!1610 = !DILocation(line: 180, column: 11, scope: !513)
!1611 = !DILocation(line: 180, column: 17, scope: !513)
!1612 = !{!1350, !1310, i64 152}
!1613 = !DILocation(line: 181, column: 28, scope: !513)
!1614 = !DILocation(line: 181, column: 5, scope: !513)
!1615 = !DILocation(line: 181, column: 11, scope: !513)
!1616 = !DILocation(line: 181, column: 26, scope: !513)
!1617 = !{!1350, !1310, i64 160}
!1618 = !DILocation(line: 182, column: 27, scope: !513)
!1619 = !DILocation(line: 182, column: 5, scope: !513)
!1620 = !DILocation(line: 182, column: 11, scope: !513)
!1621 = !DILocation(line: 182, column: 25, scope: !513)
!1622 = !{!1350, !1310, i64 168}
!1623 = !DILocation(line: 183, column: 23, scope: !513)
!1624 = !DILocation(line: 183, column: 5, scope: !513)
!1625 = !DILocation(line: 183, column: 11, scope: !513)
!1626 = !DILocation(line: 183, column: 21, scope: !513)
!1627 = !{!1350, !1310, i64 176}
!1628 = !DILocation(line: 184, column: 30, scope: !513)
!1629 = !DILocation(line: 184, column: 5, scope: !513)
!1630 = !DILocation(line: 184, column: 11, scope: !513)
!1631 = !DILocation(line: 184, column: 28, scope: !513)
!1632 = !{!1350, !1310, i64 184}
!1633 = !DILocation(line: 185, column: 28, scope: !513)
!1634 = !DILocation(line: 185, column: 5, scope: !513)
!1635 = !DILocation(line: 185, column: 11, scope: !513)
!1636 = !DILocation(line: 185, column: 26, scope: !513)
!1637 = !{!1350, !1310, i64 192}
!1638 = !DILocation(line: 186, column: 27, scope: !513)
!1639 = !DILocation(line: 186, column: 5, scope: !513)
!1640 = !DILocation(line: 186, column: 11, scope: !513)
!1641 = !DILocation(line: 186, column: 25, scope: !513)
!1642 = !{!1350, !1310, i64 200}
!1643 = !DILocation(line: 187, column: 30, scope: !513)
!1644 = !DILocation(line: 187, column: 5, scope: !513)
!1645 = !DILocation(line: 187, column: 11, scope: !513)
!1646 = !DILocation(line: 187, column: 28, scope: !513)
!1647 = !{!1350, !1310, i64 208}
!1648 = !DILocation(line: 188, column: 31, scope: !513)
!1649 = !DILocation(line: 188, column: 5, scope: !513)
!1650 = !DILocation(line: 188, column: 11, scope: !513)
!1651 = !DILocation(line: 188, column: 29, scope: !513)
!1652 = !{!1350, !1310, i64 216}
!1653 = !DILocation(line: 190, column: 5, scope: !513)
!1654 = !DILocation(line: 191, column: 1, scope: !513)
!1655 = !DILocation(line: 1174, column: 73, scope: !1038)
!1656 = !DILocation(line: 1174, column: 89, scope: !1038)
!1657 = !DILocation(line: 1176, column: 5, scope: !1038)
!1658 = !DILocation(line: 1176, column: 15, scope: !1038)
!1659 = !DILocation(line: 1177, column: 5, scope: !1038)
!1660 = !DILocation(line: 1177, column: 15, scope: !1038)
!1661 = !DILocation(line: 1180, column: 5, scope: !1038)
!1662 = !DILocation(line: 1180, column: 10, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1045, file: !514, discriminator: 1)
!1664 = !DILocation(line: 1180, column: 20, scope: !1045)
!1665 = !DILocation(line: 1180, column: 51, scope: !1045)
!1666 = !DILocation(line: 1180, column: 57, scope: !1045)
!1667 = !DILocation(line: 1180, column: 79, scope: !1048)
!1668 = !DILocation(line: 1180, column: 95, scope: !1048)
!1669 = !DILocation(line: 1180, column: 79, scope: !1045)
!1670 = !DILocation(line: 1180, column: 110, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1048, file: !514, discriminator: 2)
!1672 = !DILocation(line: 1180, column: 115, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1047, file: !514, discriminator: 4)
!1674 = !DILocation(line: 1180, column: 125, scope: !1047)
!1675 = !DILocation(line: 1180, column: 155, scope: !1047)
!1676 = !DILocation(line: 1180, column: 181, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1047, file: !514, line: 1180, column: 178)
!1678 = !DILocation(line: 1180, column: 198, scope: !1677)
!1679 = !DILocation(line: 1180, column: 178, scope: !1677)
!1680 = !DILocation(line: 1180, column: 208, scope: !1677)
!1681 = !DILocation(line: 1180, column: 178, scope: !1047)
!1682 = !DILocation(line: 1180, column: 178, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1047, file: !514, discriminator: 5)
!1684 = !DILocation(line: 1180, column: 239, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1677, file: !514, discriminator: 6)
!1686 = !DILocation(line: 1180, column: 257, scope: !1677)
!1687 = !DILocation(line: 1180, column: 267, scope: !1677)
!1688 = !DILocation(line: 1180, column: 292, scope: !1677)
!1689 = !DILocation(line: 1180, column: 223, scope: !1677)
!1690 = !DILocation(line: 1180, column: 311, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1048, file: !514, discriminator: 7)
!1692 = !DILocation(line: 1180, column: 311, scope: !1047)
!1693 = !DILocation(line: 1180, column: 311, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1047, file: !514, discriminator: 8)
!1695 = !DILocation(line: 1180, column: 311, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1047, file: !514, discriminator: 9)
!1697 = !DILocation(line: 1180, column: 324, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !514, discriminator: 10)
!1699 = !DILexicalBlockFile(scope: !1038, file: !514, discriminator: 3)
!1700 = !DILocation(line: 1180, column: 324, scope: !1045)
!1701 = !DILocation(line: 1180, column: 324, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1045, file: !514, discriminator: 11)
!1703 = !DILocation(line: 1182, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1038, file: !514, line: 1182, column: 9)
!1705 = !DILocation(line: 1182, column: 15, scope: !1704)
!1706 = !DILocation(line: 1182, column: 9, scope: !1038)
!1707 = !DILocation(line: 1183, column: 20, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !514, line: 1182, column: 32)
!1709 = !DILocation(line: 1183, column: 26, scope: !1708)
!1710 = !DILocation(line: 1183, column: 9, scope: !1708)
!1711 = !DILocation(line: 1184, column: 9, scope: !1708)
!1712 = !DILocation(line: 1184, column: 15, scope: !1708)
!1713 = !DILocation(line: 1184, column: 31, scope: !1708)
!1714 = !DILocation(line: 1185, column: 5, scope: !1708)
!1715 = !DILocation(line: 1187, column: 9, scope: !1052)
!1716 = !DILocation(line: 1187, column: 25, scope: !1052)
!1717 = !DILocation(line: 1187, column: 9, scope: !1038)
!1718 = !DILocation(line: 1188, column: 55, scope: !1051)
!1719 = !DILocation(line: 1189, column: 9, scope: !1051)
!1720 = !DILocation(line: 1189, column: 15, scope: !1051)
!1721 = !DILocation(line: 1189, column: 31, scope: !1051)
!1722 = !DILocation(line: 1191, column: 42, scope: !1051)
!1723 = !DILocation(line: 1191, column: 15, scope: !1051)
!1724 = !DILocation(line: 1191, column: 13, scope: !1051)
!1725 = !DILocation(line: 1192, column: 14, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1051, file: !514, line: 1192, column: 13)
!1727 = !DILocation(line: 1192, column: 13, scope: !1051)
!1728 = !DILocation(line: 1193, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !514, line: 1192, column: 19)
!1730 = !DILocation(line: 1195, column: 9, scope: !1051)
!1731 = !DILocation(line: 1195, column: 14, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1050, file: !514, discriminator: 1)
!1733 = !DILocation(line: 1195, column: 24, scope: !1050)
!1734 = !DILocation(line: 1195, column: 54, scope: !1050)
!1735 = !DILocation(line: 1195, column: 68, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1050, file: !514, line: 1195, column: 65)
!1737 = !DILocation(line: 1195, column: 85, scope: !1736)
!1738 = !DILocation(line: 1195, column: 65, scope: !1736)
!1739 = !DILocation(line: 1195, column: 95, scope: !1736)
!1740 = !DILocation(line: 1195, column: 65, scope: !1050)
!1741 = !DILocation(line: 1195, column: 65, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1050, file: !514, discriminator: 2)
!1743 = !DILocation(line: 1195, column: 126, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1736, file: !514, discriminator: 3)
!1745 = !DILocation(line: 1195, column: 144, scope: !1736)
!1746 = !DILocation(line: 1195, column: 154, scope: !1736)
!1747 = !DILocation(line: 1195, column: 179, scope: !1736)
!1748 = !DILocation(line: 1195, column: 110, scope: !1736)
!1749 = !DILocation(line: 1195, column: 198, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1051, file: !514, discriminator: 4)
!1751 = !DILocation(line: 1195, column: 198, scope: !1050)
!1752 = !DILocation(line: 1195, column: 198, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1050, file: !514, discriminator: 5)
!1754 = !DILocation(line: 1197, column: 9, scope: !1051)
!1755 = !DILocation(line: 1197, column: 15, scope: !1051)
!1756 = !DILocation(line: 1197, column: 29, scope: !1051)
!1757 = !DILocation(line: 1198, column: 5, scope: !1051)
!1758 = !DILocation(line: 1199, column: 9, scope: !1054)
!1759 = !DILocation(line: 1199, column: 21, scope: !1054)
!1760 = !DILocation(line: 1200, column: 9, scope: !1054)
!1761 = !DILocation(line: 1200, column: 20, scope: !1054)
!1762 = !DILocation(line: 1202, column: 25, scope: !1054)
!1763 = !DILocation(line: 1202, column: 44, scope: !1054)
!1764 = !DILocation(line: 1202, column: 53, scope: !1054)
!1765 = !DILocation(line: 1203, column: 33, scope: !1054)
!1766 = !DILocation(line: 1203, column: 9, scope: !1054)
!1767 = !DILocation(line: 1203, column: 15, scope: !1054)
!1768 = !DILocation(line: 1203, column: 31, scope: !1054)
!1769 = !DILocation(line: 1205, column: 14, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1054, file: !514, line: 1205, column: 13)
!1771 = !DILocation(line: 1205, column: 13, scope: !1054)
!1772 = !DILocation(line: 1206, column: 26, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !514, line: 1205, column: 26)
!1774 = !DILocation(line: 1206, column: 24, scope: !1773)
!1775 = !DILocation(line: 1207, column: 18, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !514, line: 1207, column: 17)
!1777 = !DILocation(line: 1207, column: 17, scope: !1773)
!1778 = !DILocation(line: 1207, column: 30, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1776, file: !514, discriminator: 1)
!1780 = !DILocation(line: 1207, column: 30, scope: !1776)
!1781 = !DILocation(line: 1208, column: 9, scope: !1773)
!1782 = !DILocation(line: 1209, column: 44, scope: !1054)
!1783 = !DILocation(line: 1209, column: 56, scope: !1054)
!1784 = !DILocation(line: 1209, column: 27, scope: !1054)
!1785 = !DILocation(line: 1209, column: 25, scope: !1054)
!1786 = !DILocation(line: 1210, column: 14, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1054, file: !514, line: 1210, column: 13)
!1788 = !DILocation(line: 1210, column: 13, scope: !1054)
!1789 = !DILocation(line: 1211, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !514, line: 1210, column: 31)
!1791 = !DILocation(line: 1214, column: 45, scope: !1054)
!1792 = !DILocation(line: 1214, column: 21, scope: !1054)
!1793 = !DILocation(line: 1214, column: 19, scope: !1054)
!1794 = !DILocation(line: 1215, column: 14, scope: !1059)
!1795 = !DILocation(line: 1215, column: 13, scope: !1054)
!1796 = !DILocation(line: 1216, column: 13, scope: !1058)
!1797 = !DILocation(line: 1216, column: 18, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1057, file: !514, discriminator: 1)
!1799 = !DILocation(line: 1216, column: 28, scope: !1057)
!1800 = !DILocation(line: 1216, column: 58, scope: !1057)
!1801 = !DILocation(line: 1216, column: 84, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1057, file: !514, line: 1216, column: 81)
!1803 = !DILocation(line: 1216, column: 101, scope: !1802)
!1804 = !DILocation(line: 1216, column: 81, scope: !1802)
!1805 = !DILocation(line: 1216, column: 111, scope: !1802)
!1806 = !DILocation(line: 1216, column: 81, scope: !1057)
!1807 = !DILocation(line: 1216, column: 81, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1057, file: !514, discriminator: 2)
!1809 = !DILocation(line: 1216, column: 142, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1802, file: !514, discriminator: 3)
!1811 = !DILocation(line: 1216, column: 160, scope: !1802)
!1812 = !DILocation(line: 1216, column: 170, scope: !1802)
!1813 = !DILocation(line: 1216, column: 195, scope: !1802)
!1814 = !DILocation(line: 1216, column: 126, scope: !1802)
!1815 = !DILocation(line: 1216, column: 214, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1058, file: !514, discriminator: 4)
!1817 = !DILocation(line: 1216, column: 214, scope: !1057)
!1818 = !DILocation(line: 1216, column: 214, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1057, file: !514, discriminator: 5)
!1820 = !DILocation(line: 1217, column: 13, scope: !1058)
!1821 = !DILocation(line: 1219, column: 46, scope: !1054)
!1822 = !{!1352, !1352, i64 0}
!1823 = !DILocation(line: 1219, column: 51, scope: !1054)
!1824 = !DILocation(line: 1219, column: 33, scope: !1054)
!1825 = !DILocation(line: 1219, column: 9, scope: !1054)
!1826 = !DILocation(line: 1219, column: 15, scope: !1054)
!1827 = !DILocation(line: 1219, column: 31, scope: !1054)
!1828 = !DILocation(line: 1220, column: 14, scope: !1063)
!1829 = !DILocation(line: 1220, column: 20, scope: !1063)
!1830 = !DILocation(line: 1220, column: 13, scope: !1054)
!1831 = !DILocation(line: 1221, column: 13, scope: !1062)
!1832 = !DILocation(line: 1221, column: 18, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1061, file: !514, discriminator: 1)
!1834 = !DILocation(line: 1221, column: 28, scope: !1061)
!1835 = !DILocation(line: 1221, column: 58, scope: !1061)
!1836 = !DILocation(line: 1221, column: 84, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1061, file: !514, line: 1221, column: 81)
!1838 = !DILocation(line: 1221, column: 101, scope: !1837)
!1839 = !DILocation(line: 1221, column: 81, scope: !1837)
!1840 = !DILocation(line: 1221, column: 111, scope: !1837)
!1841 = !DILocation(line: 1221, column: 81, scope: !1061)
!1842 = !DILocation(line: 1221, column: 81, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1061, file: !514, discriminator: 2)
!1844 = !DILocation(line: 1221, column: 142, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1837, file: !514, discriminator: 3)
!1846 = !DILocation(line: 1221, column: 160, scope: !1837)
!1847 = !DILocation(line: 1221, column: 170, scope: !1837)
!1848 = !DILocation(line: 1221, column: 195, scope: !1837)
!1849 = !DILocation(line: 1221, column: 126, scope: !1837)
!1850 = !DILocation(line: 1221, column: 214, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1062, file: !514, discriminator: 4)
!1852 = !DILocation(line: 1221, column: 214, scope: !1061)
!1853 = !DILocation(line: 1221, column: 214, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1061, file: !514, discriminator: 5)
!1855 = !DILocation(line: 1222, column: 13, scope: !1062)
!1856 = !DILocation(line: 1225, column: 16, scope: !1054)
!1857 = !DILocation(line: 1225, column: 22, scope: !1054)
!1858 = !DILocation(line: 1225, column: 39, scope: !1054)
!1859 = !DILocation(line: 1225, column: 9, scope: !1054)
!1860 = !DILocation(line: 1226, column: 9, scope: !1054)
!1861 = !DILocation(line: 1226, column: 14, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1065, file: !514, discriminator: 1)
!1863 = !DILocation(line: 1226, column: 24, scope: !1065)
!1864 = !DILocation(line: 1226, column: 54, scope: !1065)
!1865 = !DILocation(line: 1226, column: 80, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1065, file: !514, line: 1226, column: 77)
!1867 = !DILocation(line: 1226, column: 97, scope: !1866)
!1868 = !DILocation(line: 1226, column: 77, scope: !1866)
!1869 = !DILocation(line: 1226, column: 107, scope: !1866)
!1870 = !DILocation(line: 1226, column: 77, scope: !1065)
!1871 = !DILocation(line: 1226, column: 77, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1065, file: !514, discriminator: 2)
!1873 = !DILocation(line: 1226, column: 138, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1866, file: !514, discriminator: 3)
!1875 = !DILocation(line: 1226, column: 156, scope: !1866)
!1876 = !DILocation(line: 1226, column: 166, scope: !1866)
!1877 = !DILocation(line: 1226, column: 191, scope: !1866)
!1878 = !DILocation(line: 1226, column: 122, scope: !1866)
!1879 = !DILocation(line: 1226, column: 210, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1054, file: !514, discriminator: 4)
!1881 = !DILocation(line: 1226, column: 210, scope: !1065)
!1882 = !DILocation(line: 1226, column: 210, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1065, file: !514, discriminator: 5)
!1884 = !DILocation(line: 1227, column: 5, scope: !1052)
!1885 = !DILocation(line: 1227, column: 5, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1052, file: !514, discriminator: 1)
!1887 = !DILocation(line: 1229, column: 5, scope: !1038)
!1888 = !DILocation(line: 1230, column: 1, scope: !1038)
!1889 = !DILocation(line: 194, column: 58, scope: !597)
!1890 = !DILocation(line: 196, column: 5, scope: !597)
!1891 = !DILocation(line: 196, column: 20, scope: !597)
!1892 = !DILocation(line: 197, column: 5, scope: !597)
!1893 = !DILocation(line: 197, column: 25, scope: !597)
!1894 = !DILocation(line: 199, column: 12, scope: !597)
!1895 = !DILocation(line: 199, column: 18, scope: !597)
!1896 = !DILocation(line: 199, column: 35, scope: !597)
!1897 = !{!1526, !1310, i64 40}
!1898 = !DILocation(line: 199, column: 10, scope: !597)
!1899 = !DILocation(line: 201, column: 5, scope: !597)
!1900 = !DILocation(line: 201, column: 12, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1902, file: !514, discriminator: 2)
!1902 = !DILexicalBlockFile(scope: !597, file: !514, discriminator: 1)
!1903 = !DILocation(line: 202, column: 43, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !597, file: !514, line: 201, column: 18)
!1905 = !DILocation(line: 202, column: 49, scope: !1904)
!1906 = !{!1907, !1310, i64 24}
!1907 = !{!"_pysqlite_Node", !1351, i64 0, !1310, i64 16, !1310, i64 24, !1352, i64 32, !1310, i64 40, !1310, i64 48}
!1908 = !DILocation(line: 202, column: 21, scope: !1904)
!1909 = !DILocation(line: 202, column: 19, scope: !1904)
!1910 = !DILocation(line: 203, column: 43, scope: !1904)
!1911 = !DILocation(line: 203, column: 15, scope: !1904)
!1912 = !DILocation(line: 204, column: 16, scope: !1904)
!1913 = !DILocation(line: 204, column: 22, scope: !1904)
!1914 = !{!1907, !1310, i64 48}
!1915 = !DILocation(line: 204, column: 14, scope: !1904)
!1916 = !DILocation(line: 207, column: 5, scope: !597)
!1917 = !DILocation(line: 207, column: 10, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !605, file: !514, discriminator: 1)
!1919 = !DILocation(line: 207, column: 20, scope: !605)
!1920 = !DILocation(line: 207, column: 50, scope: !605)
!1921 = !DILocation(line: 207, column: 56, scope: !605)
!1922 = !DILocation(line: 207, column: 37, scope: !605)
!1923 = !DILocation(line: 207, column: 82, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !605, file: !514, line: 207, column: 79)
!1925 = !DILocation(line: 207, column: 99, scope: !1924)
!1926 = !DILocation(line: 207, column: 79, scope: !1924)
!1927 = !DILocation(line: 207, column: 109, scope: !1924)
!1928 = !DILocation(line: 207, column: 79, scope: !605)
!1929 = !DILocation(line: 207, column: 79, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !605, file: !514, discriminator: 2)
!1931 = !DILocation(line: 207, column: 140, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1924, file: !514, discriminator: 3)
!1933 = !DILocation(line: 207, column: 158, scope: !1924)
!1934 = !DILocation(line: 207, column: 168, scope: !1924)
!1935 = !DILocation(line: 207, column: 193, scope: !1924)
!1936 = !DILocation(line: 207, column: 124, scope: !1924)
!1937 = !DILocation(line: 207, column: 212, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !597, file: !514, discriminator: 4)
!1939 = !DILocation(line: 207, column: 212, scope: !605)
!1940 = !DILocation(line: 207, column: 212, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !605, file: !514, discriminator: 5)
!1942 = !DILocation(line: 208, column: 105, scope: !597)
!1943 = !DILocation(line: 208, column: 46, scope: !597)
!1944 = !DILocation(line: 208, column: 29, scope: !597)
!1945 = !DILocation(line: 208, column: 5, scope: !597)
!1946 = !DILocation(line: 208, column: 11, scope: !597)
!1947 = !DILocation(line: 208, column: 27, scope: !597)
!1948 = !DILocation(line: 209, column: 5, scope: !597)
!1949 = !DILocation(line: 209, column: 10, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !607, file: !514, discriminator: 1)
!1951 = !DILocation(line: 209, column: 20, scope: !607)
!1952 = !DILocation(line: 209, column: 50, scope: !607)
!1953 = !DILocation(line: 209, column: 37, scope: !607)
!1954 = !DILocation(line: 209, column: 65, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !607, file: !514, line: 209, column: 62)
!1956 = !DILocation(line: 209, column: 82, scope: !1955)
!1957 = !DILocation(line: 209, column: 62, scope: !1955)
!1958 = !DILocation(line: 209, column: 92, scope: !1955)
!1959 = !DILocation(line: 209, column: 62, scope: !607)
!1960 = !DILocation(line: 209, column: 62, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !607, file: !514, discriminator: 2)
!1962 = !DILocation(line: 209, column: 123, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !1955, file: !514, discriminator: 3)
!1964 = !DILocation(line: 209, column: 141, scope: !1955)
!1965 = !DILocation(line: 209, column: 151, scope: !1955)
!1966 = !DILocation(line: 209, column: 176, scope: !1955)
!1967 = !DILocation(line: 209, column: 107, scope: !1955)
!1968 = !DILocation(line: 209, column: 195, scope: !1938)
!1969 = !DILocation(line: 209, column: 195, scope: !607)
!1970 = !DILocation(line: 209, column: 195, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !607, file: !514, discriminator: 5)
!1972 = !DILocation(line: 210, column: 5, scope: !597)
!1973 = !DILocation(line: 210, column: 11, scope: !597)
!1974 = !DILocation(line: 210, column: 28, scope: !597)
!1975 = !DILocation(line: 210, column: 43, scope: !597)
!1976 = !DILocation(line: 211, column: 1, scope: !597)
!1977 = !DILocation(line: 214, column: 54, scope: !608)
!1978 = !DILocation(line: 214, column: 64, scope: !608)
!1979 = !DILocation(line: 214, column: 76, scope: !608)
!1980 = !DILocation(line: 216, column: 5, scope: !608)
!1981 = !DILocation(line: 216, column: 9, scope: !608)
!1982 = !DILocation(line: 217, column: 5, scope: !608)
!1983 = !DILocation(line: 217, column: 15, scope: !608)
!1984 = !DILocation(line: 218, column: 5, scope: !608)
!1985 = !DILocation(line: 218, column: 15, scope: !608)
!1986 = !DILocation(line: 219, column: 5, scope: !608)
!1987 = !DILocation(line: 219, column: 22, scope: !608)
!1988 = !DILocation(line: 221, column: 12, scope: !625)
!1989 = !DILocation(line: 221, column: 10, scope: !625)
!1990 = !DILocation(line: 221, column: 17, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1992, file: !514, discriminator: 2)
!1992 = !DILexicalBlockFile(scope: !624, file: !514, discriminator: 1)
!1993 = !DILocation(line: 221, column: 33, scope: !624)
!1994 = !DILocation(line: 221, column: 39, scope: !624)
!1995 = !DILocation(line: 221, column: 21, scope: !624)
!1996 = !DILocation(line: 221, column: 19, scope: !624)
!1997 = !DILocation(line: 221, column: 5, scope: !625)
!1998 = !DILocation(line: 222, column: 34, scope: !623)
!1999 = !DILocation(line: 222, column: 40, scope: !623)
!2000 = !DILocation(line: 222, column: 52, scope: !623)
!2001 = !DILocation(line: 222, column: 19, scope: !623)
!2002 = !DILocation(line: 222, column: 17, scope: !623)
!2003 = !DILocation(line: 223, column: 41, scope: !623)
!2004 = !DILocation(line: 223, column: 21, scope: !623)
!2005 = !DILocation(line: 223, column: 19, scope: !623)
!2006 = !DILocation(line: 224, column: 13, scope: !622)
!2007 = !DILocation(line: 224, column: 23, scope: !622)
!2008 = !DILocation(line: 224, column: 13, scope: !623)
!2009 = !DILocation(line: 225, column: 29, scope: !621)
!2010 = !DILocation(line: 225, column: 42, scope: !621)
!2011 = !DILocation(line: 225, column: 51, scope: !621)
!2012 = !DILocation(line: 226, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !621, file: !514, line: 226, column: 17)
!2014 = !DILocation(line: 226, column: 24, scope: !2013)
!2015 = !DILocation(line: 226, column: 17, scope: !621)
!2016 = !DILocation(line: 227, column: 69, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !514, line: 226, column: 30)
!2018 = !DILocation(line: 227, column: 48, scope: !2017)
!2019 = !DILocation(line: 227, column: 23, scope: !2017)
!2020 = !DILocation(line: 228, column: 13, scope: !2017)
!2021 = !DILocation(line: 229, column: 72, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2013, file: !514, line: 228, column: 20)
!2023 = !DILocation(line: 229, column: 51, scope: !2022)
!2024 = !DILocation(line: 229, column: 23, scope: !2022)
!2025 = !DILocation(line: 231, column: 13, scope: !621)
!2026 = !DILocation(line: 231, column: 18, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !620, file: !514, discriminator: 1)
!2028 = !DILocation(line: 231, column: 28, scope: !620)
!2029 = !DILocation(line: 231, column: 58, scope: !620)
!2030 = !DILocation(line: 231, column: 78, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !620, file: !514, line: 231, column: 75)
!2032 = !DILocation(line: 231, column: 95, scope: !2031)
!2033 = !DILocation(line: 231, column: 75, scope: !2031)
!2034 = !DILocation(line: 231, column: 105, scope: !2031)
!2035 = !DILocation(line: 231, column: 75, scope: !620)
!2036 = !DILocation(line: 231, column: 75, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !620, file: !514, discriminator: 2)
!2038 = !DILocation(line: 231, column: 136, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2031, file: !514, discriminator: 3)
!2040 = !DILocation(line: 231, column: 154, scope: !2031)
!2041 = !DILocation(line: 231, column: 164, scope: !2031)
!2042 = !DILocation(line: 231, column: 189, scope: !2031)
!2043 = !DILocation(line: 231, column: 120, scope: !2031)
!2044 = !DILocation(line: 231, column: 208, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !621, file: !514, discriminator: 4)
!2046 = !DILocation(line: 231, column: 208, scope: !620)
!2047 = !DILocation(line: 231, column: 208, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !620, file: !514, discriminator: 5)
!2049 = !DILocation(line: 232, column: 9, scope: !621)
!2050 = !DILocation(line: 233, column: 5, scope: !623)
!2051 = !DILocation(line: 221, column: 53, scope: !624)
!2052 = !DILocation(line: 221, column: 5, scope: !624)
!2053 = !DILocation(line: 235, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !608, file: !514, line: 235, column: 9)
!2055 = !DILocation(line: 235, column: 9, scope: !608)
!2056 = !DILocation(line: 236, column: 16, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !514, line: 236, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !514, line: 235, column: 24)
!2059 = !DILocation(line: 236, column: 14, scope: !2057)
!2060 = !DILocation(line: 236, column: 21, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2062, file: !514, discriminator: 2)
!2062 = !DILexicalBlockFile(scope: !2063, file: !514, discriminator: 1)
!2063 = distinct !DILexicalBlock(scope: !2057, file: !514, line: 236, column: 9)
!2064 = !DILocation(line: 236, column: 37, scope: !2063)
!2065 = !DILocation(line: 236, column: 43, scope: !2063)
!2066 = !DILocation(line: 236, column: 25, scope: !2063)
!2067 = !DILocation(line: 236, column: 23, scope: !2063)
!2068 = !DILocation(line: 236, column: 9, scope: !2057)
!2069 = !DILocation(line: 237, column: 38, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2063, file: !514, line: 236, column: 58)
!2071 = !DILocation(line: 237, column: 44, scope: !2070)
!2072 = !DILocation(line: 237, column: 53, scope: !2070)
!2073 = !DILocation(line: 237, column: 23, scope: !2070)
!2074 = !DILocation(line: 237, column: 21, scope: !2070)
!2075 = !DILocation(line: 238, column: 60, scope: !2070)
!2076 = !DILocation(line: 238, column: 40, scope: !2070)
!2077 = !DILocation(line: 238, column: 22, scope: !2070)
!2078 = !DILocation(line: 238, column: 20, scope: !2070)
!2079 = !DILocation(line: 239, column: 28, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2070, file: !514, line: 239, column: 17)
!2081 = !DILocation(line: 239, column: 17, scope: !2080)
!2082 = !DILocation(line: 239, column: 35, scope: !2080)
!2083 = !DILocation(line: 239, column: 17, scope: !2070)
!2084 = !DILocation(line: 240, column: 17, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !514, line: 239, column: 57)
!2086 = !DILocation(line: 240, column: 25, scope: !2085)
!2087 = !DILocation(line: 240, column: 31, scope: !2085)
!2088 = !{!2089, !1322, i64 84}
!2089 = !{!"", !1351, i64 0, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1322, i64 40, !1310, i64 48, !1352, i64 56, !1310, i64 64, !1310, i64 72, !1322, i64 80, !1322, i64 84, !1322, i64 88, !1322, i64 92, !1310, i64 96, !1310, i64 104}
!2090 = !DILocation(line: 241, column: 13, scope: !2085)
!2091 = !DILocation(line: 242, column: 9, scope: !2070)
!2092 = !DILocation(line: 236, column: 54, scope: !2063)
!2093 = !DILocation(line: 236, column: 9, scope: !2063)
!2094 = !DILocation(line: 243, column: 5, scope: !2058)
!2095 = !DILocation(line: 244, column: 1, scope: !608)
!2096 = !DILocation(line: 246, column: 55, scope: !626)
!2097 = !DILocation(line: 248, column: 5, scope: !626)
!2098 = !DILocation(line: 248, column: 10, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !630, file: !514, discriminator: 1)
!2100 = !DILocation(line: 248, column: 20, scope: !630)
!2101 = !DILocation(line: 248, column: 51, scope: !630)
!2102 = !DILocation(line: 248, column: 57, scope: !630)
!2103 = !DILocation(line: 248, column: 38, scope: !630)
!2104 = !DILocation(line: 248, column: 79, scope: !633)
!2105 = !DILocation(line: 248, column: 95, scope: !633)
!2106 = !DILocation(line: 248, column: 79, scope: !630)
!2107 = !DILocation(line: 248, column: 110, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !633, file: !514, discriminator: 2)
!2109 = !DILocation(line: 248, column: 115, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !632, file: !514, discriminator: 4)
!2111 = !DILocation(line: 248, column: 125, scope: !632)
!2112 = !DILocation(line: 248, column: 155, scope: !632)
!2113 = !DILocation(line: 248, column: 181, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !632, file: !514, line: 248, column: 178)
!2115 = !DILocation(line: 248, column: 198, scope: !2114)
!2116 = !DILocation(line: 248, column: 178, scope: !2114)
!2117 = !DILocation(line: 248, column: 208, scope: !2114)
!2118 = !DILocation(line: 248, column: 178, scope: !632)
!2119 = !DILocation(line: 248, column: 178, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !632, file: !514, discriminator: 5)
!2121 = !DILocation(line: 248, column: 239, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2114, file: !514, discriminator: 6)
!2123 = !DILocation(line: 248, column: 257, scope: !2114)
!2124 = !DILocation(line: 248, column: 267, scope: !2114)
!2125 = !DILocation(line: 248, column: 292, scope: !2114)
!2126 = !DILocation(line: 248, column: 223, scope: !2114)
!2127 = !DILocation(line: 248, column: 311, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !633, file: !514, discriminator: 7)
!2129 = !DILocation(line: 248, column: 311, scope: !632)
!2130 = !DILocation(line: 248, column: 311, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !632, file: !514, discriminator: 8)
!2132 = !DILocation(line: 248, column: 311, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !632, file: !514, discriminator: 9)
!2134 = !DILocation(line: 248, column: 324, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !514, discriminator: 10)
!2136 = !DILexicalBlockFile(scope: !626, file: !514, discriminator: 3)
!2137 = !DILocation(line: 248, column: 324, scope: !630)
!2138 = !DILocation(line: 251, column: 9, scope: !637)
!2139 = !DILocation(line: 251, column: 15, scope: !637)
!2140 = !DILocation(line: 251, column: 9, scope: !626)
!2141 = !DILocation(line: 252, column: 11, scope: !635)
!2142 = !DILocation(line: 252, column: 26, scope: !635)
!2143 = !DILocation(line: 252, column: 41, scope: !635)
!2144 = !DILocation(line: 252, column: 39, scope: !635)
!2145 = !DILocation(line: 253, column: 23, scope: !635)
!2146 = !DILocation(line: 253, column: 29, scope: !635)
!2147 = !DILocation(line: 253, column: 9, scope: !635)
!2148 = !DILocation(line: 254, column: 30, scope: !635)
!2149 = !DILocation(line: 254, column: 9, scope: !635)
!2150 = !DILocation(line: 254, column: 38, scope: !636)
!2151 = !DILocation(line: 255, column: 5, scope: !636)
!2152 = !DILocation(line: 257, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !626, file: !514, line: 257, column: 9)
!2154 = !DILocation(line: 257, column: 15, scope: !2153)
!2155 = !DILocation(line: 257, column: 9, scope: !626)
!2156 = !DILocation(line: 258, column: 20, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !514, line: 257, column: 32)
!2158 = !DILocation(line: 258, column: 26, scope: !2157)
!2159 = !DILocation(line: 258, column: 9, scope: !2157)
!2160 = !DILocation(line: 259, column: 5, scope: !2157)
!2161 = !DILocation(line: 260, column: 5, scope: !626)
!2162 = !DILocation(line: 260, column: 10, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !639, file: !514, discriminator: 1)
!2164 = !DILocation(line: 260, column: 20, scope: !639)
!2165 = !DILocation(line: 260, column: 51, scope: !639)
!2166 = !DILocation(line: 260, column: 57, scope: !639)
!2167 = !DILocation(line: 260, column: 79, scope: !642)
!2168 = !DILocation(line: 260, column: 95, scope: !642)
!2169 = !DILocation(line: 260, column: 79, scope: !639)
!2170 = !DILocation(line: 260, column: 110, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !642, file: !514, discriminator: 2)
!2172 = !DILocation(line: 260, column: 115, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !641, file: !514, discriminator: 4)
!2174 = !DILocation(line: 260, column: 125, scope: !641)
!2175 = !DILocation(line: 260, column: 155, scope: !641)
!2176 = !DILocation(line: 260, column: 181, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !641, file: !514, line: 260, column: 178)
!2178 = !DILocation(line: 260, column: 198, scope: !2177)
!2179 = !DILocation(line: 260, column: 178, scope: !2177)
!2180 = !DILocation(line: 260, column: 208, scope: !2177)
!2181 = !DILocation(line: 260, column: 178, scope: !641)
!2182 = !DILocation(line: 260, column: 178, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !641, file: !514, discriminator: 5)
!2184 = !DILocation(line: 260, column: 239, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2177, file: !514, discriminator: 6)
!2186 = !DILocation(line: 260, column: 257, scope: !2177)
!2187 = !DILocation(line: 260, column: 267, scope: !2177)
!2188 = !DILocation(line: 260, column: 292, scope: !2177)
!2189 = !DILocation(line: 260, column: 223, scope: !2177)
!2190 = !DILocation(line: 260, column: 311, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !642, file: !514, discriminator: 7)
!2192 = !DILocation(line: 260, column: 311, scope: !641)
!2193 = !DILocation(line: 260, column: 311, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !641, file: !514, discriminator: 8)
!2195 = !DILocation(line: 260, column: 311, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !641, file: !514, discriminator: 9)
!2197 = !DILocation(line: 260, column: 324, scope: !2135)
!2198 = !DILocation(line: 260, column: 324, scope: !639)
!2199 = !DILocation(line: 261, column: 5, scope: !626)
!2200 = !DILocation(line: 261, column: 10, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !644, file: !514, discriminator: 1)
!2202 = !DILocation(line: 261, column: 20, scope: !644)
!2203 = !DILocation(line: 261, column: 51, scope: !644)
!2204 = !DILocation(line: 261, column: 57, scope: !644)
!2205 = !DILocation(line: 261, column: 81, scope: !647)
!2206 = !DILocation(line: 261, column: 97, scope: !647)
!2207 = !DILocation(line: 261, column: 81, scope: !644)
!2208 = !DILocation(line: 261, column: 112, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !647, file: !514, discriminator: 2)
!2210 = !DILocation(line: 261, column: 117, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !646, file: !514, discriminator: 4)
!2212 = !DILocation(line: 261, column: 127, scope: !646)
!2213 = !DILocation(line: 261, column: 157, scope: !646)
!2214 = !DILocation(line: 261, column: 183, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !646, file: !514, line: 261, column: 180)
!2216 = !DILocation(line: 261, column: 200, scope: !2215)
!2217 = !DILocation(line: 261, column: 180, scope: !2215)
!2218 = !DILocation(line: 261, column: 210, scope: !2215)
!2219 = !DILocation(line: 261, column: 180, scope: !646)
!2220 = !DILocation(line: 261, column: 180, scope: !2221)
!2221 = !DILexicalBlockFile(scope: !646, file: !514, discriminator: 5)
!2222 = !DILocation(line: 261, column: 241, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2215, file: !514, discriminator: 6)
!2224 = !DILocation(line: 261, column: 259, scope: !2215)
!2225 = !DILocation(line: 261, column: 269, scope: !2215)
!2226 = !DILocation(line: 261, column: 294, scope: !2215)
!2227 = !DILocation(line: 261, column: 225, scope: !2215)
!2228 = !DILocation(line: 261, column: 313, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !647, file: !514, discriminator: 7)
!2230 = !DILocation(line: 261, column: 313, scope: !646)
!2231 = !DILocation(line: 261, column: 313, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !646, file: !514, discriminator: 8)
!2233 = !DILocation(line: 261, column: 313, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !646, file: !514, discriminator: 9)
!2235 = !DILocation(line: 261, column: 326, scope: !2135)
!2236 = !DILocation(line: 261, column: 326, scope: !644)
!2237 = !DILocation(line: 262, column: 5, scope: !626)
!2238 = !DILocation(line: 262, column: 10, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !649, file: !514, discriminator: 1)
!2240 = !DILocation(line: 262, column: 20, scope: !649)
!2241 = !DILocation(line: 262, column: 51, scope: !649)
!2242 = !DILocation(line: 262, column: 57, scope: !649)
!2243 = !DILocation(line: 262, column: 75, scope: !652)
!2244 = !DILocation(line: 262, column: 91, scope: !652)
!2245 = !DILocation(line: 262, column: 75, scope: !649)
!2246 = !DILocation(line: 262, column: 106, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !652, file: !514, discriminator: 2)
!2248 = !DILocation(line: 262, column: 111, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !651, file: !514, discriminator: 4)
!2250 = !DILocation(line: 262, column: 121, scope: !651)
!2251 = !DILocation(line: 262, column: 151, scope: !651)
!2252 = !DILocation(line: 262, column: 177, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !651, file: !514, line: 262, column: 174)
!2254 = !DILocation(line: 262, column: 194, scope: !2253)
!2255 = !DILocation(line: 262, column: 174, scope: !2253)
!2256 = !DILocation(line: 262, column: 204, scope: !2253)
!2257 = !DILocation(line: 262, column: 174, scope: !651)
!2258 = !DILocation(line: 262, column: 174, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !651, file: !514, discriminator: 5)
!2260 = !DILocation(line: 262, column: 235, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2253, file: !514, discriminator: 6)
!2262 = !DILocation(line: 262, column: 253, scope: !2253)
!2263 = !DILocation(line: 262, column: 263, scope: !2253)
!2264 = !DILocation(line: 262, column: 288, scope: !2253)
!2265 = !DILocation(line: 262, column: 219, scope: !2253)
!2266 = !DILocation(line: 262, column: 307, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !652, file: !514, discriminator: 7)
!2268 = !DILocation(line: 262, column: 307, scope: !651)
!2269 = !DILocation(line: 262, column: 307, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !651, file: !514, discriminator: 8)
!2271 = !DILocation(line: 262, column: 307, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !651, file: !514, discriminator: 9)
!2273 = !DILocation(line: 262, column: 320, scope: !2135)
!2274 = !DILocation(line: 262, column: 320, scope: !649)
!2275 = !DILocation(line: 263, column: 5, scope: !626)
!2276 = !DILocation(line: 263, column: 10, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !654, file: !514, discriminator: 1)
!2278 = !DILocation(line: 263, column: 20, scope: !654)
!2279 = !DILocation(line: 263, column: 51, scope: !654)
!2280 = !DILocation(line: 263, column: 57, scope: !654)
!2281 = !DILocation(line: 263, column: 76, scope: !657)
!2282 = !DILocation(line: 263, column: 92, scope: !657)
!2283 = !DILocation(line: 263, column: 76, scope: !654)
!2284 = !DILocation(line: 263, column: 107, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !657, file: !514, discriminator: 2)
!2286 = !DILocation(line: 263, column: 112, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !656, file: !514, discriminator: 4)
!2288 = !DILocation(line: 263, column: 122, scope: !656)
!2289 = !DILocation(line: 263, column: 152, scope: !656)
!2290 = !DILocation(line: 263, column: 178, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !656, file: !514, line: 263, column: 175)
!2292 = !DILocation(line: 263, column: 195, scope: !2291)
!2293 = !DILocation(line: 263, column: 175, scope: !2291)
!2294 = !DILocation(line: 263, column: 205, scope: !2291)
!2295 = !DILocation(line: 263, column: 175, scope: !656)
!2296 = !DILocation(line: 263, column: 175, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !656, file: !514, discriminator: 5)
!2298 = !DILocation(line: 263, column: 236, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2291, file: !514, discriminator: 6)
!2300 = !DILocation(line: 263, column: 254, scope: !2291)
!2301 = !DILocation(line: 263, column: 264, scope: !2291)
!2302 = !DILocation(line: 263, column: 289, scope: !2291)
!2303 = !DILocation(line: 263, column: 220, scope: !2291)
!2304 = !DILocation(line: 263, column: 308, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !657, file: !514, discriminator: 7)
!2306 = !DILocation(line: 263, column: 308, scope: !656)
!2307 = !DILocation(line: 263, column: 308, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !656, file: !514, discriminator: 8)
!2309 = !DILocation(line: 263, column: 308, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !656, file: !514, discriminator: 9)
!2311 = !DILocation(line: 263, column: 321, scope: !2135)
!2312 = !DILocation(line: 263, column: 321, scope: !654)
!2313 = !DILocation(line: 264, column: 5, scope: !626)
!2314 = !DILocation(line: 264, column: 10, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !659, file: !514, discriminator: 1)
!2316 = !DILocation(line: 264, column: 20, scope: !659)
!2317 = !DILocation(line: 264, column: 51, scope: !659)
!2318 = !DILocation(line: 264, column: 57, scope: !659)
!2319 = !DILocation(line: 264, column: 74, scope: !662)
!2320 = !DILocation(line: 264, column: 90, scope: !662)
!2321 = !DILocation(line: 264, column: 74, scope: !659)
!2322 = !DILocation(line: 264, column: 105, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !662, file: !514, discriminator: 2)
!2324 = !DILocation(line: 264, column: 110, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !661, file: !514, discriminator: 4)
!2326 = !DILocation(line: 264, column: 120, scope: !661)
!2327 = !DILocation(line: 264, column: 150, scope: !661)
!2328 = !DILocation(line: 264, column: 176, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !661, file: !514, line: 264, column: 173)
!2330 = !DILocation(line: 264, column: 193, scope: !2329)
!2331 = !DILocation(line: 264, column: 173, scope: !2329)
!2332 = !DILocation(line: 264, column: 203, scope: !2329)
!2333 = !DILocation(line: 264, column: 173, scope: !661)
!2334 = !DILocation(line: 264, column: 173, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !661, file: !514, discriminator: 5)
!2336 = !DILocation(line: 264, column: 234, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2329, file: !514, discriminator: 6)
!2338 = !DILocation(line: 264, column: 252, scope: !2329)
!2339 = !DILocation(line: 264, column: 262, scope: !2329)
!2340 = !DILocation(line: 264, column: 287, scope: !2329)
!2341 = !DILocation(line: 264, column: 218, scope: !2329)
!2342 = !DILocation(line: 264, column: 306, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !662, file: !514, discriminator: 7)
!2344 = !DILocation(line: 264, column: 306, scope: !661)
!2345 = !DILocation(line: 264, column: 306, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !661, file: !514, discriminator: 8)
!2347 = !DILocation(line: 264, column: 306, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !661, file: !514, discriminator: 9)
!2349 = !DILocation(line: 264, column: 319, scope: !2135)
!2350 = !DILocation(line: 264, column: 319, scope: !659)
!2351 = !DILocation(line: 265, column: 5, scope: !626)
!2352 = !DILocation(line: 265, column: 10, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !664, file: !514, discriminator: 1)
!2354 = !DILocation(line: 265, column: 20, scope: !664)
!2355 = !DILocation(line: 265, column: 51, scope: !664)
!2356 = !DILocation(line: 265, column: 57, scope: !664)
!2357 = !DILocation(line: 265, column: 74, scope: !667)
!2358 = !DILocation(line: 265, column: 90, scope: !667)
!2359 = !DILocation(line: 265, column: 74, scope: !664)
!2360 = !DILocation(line: 265, column: 105, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !667, file: !514, discriminator: 2)
!2362 = !DILocation(line: 265, column: 110, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !666, file: !514, discriminator: 4)
!2364 = !DILocation(line: 265, column: 120, scope: !666)
!2365 = !DILocation(line: 265, column: 150, scope: !666)
!2366 = !DILocation(line: 265, column: 176, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !666, file: !514, line: 265, column: 173)
!2368 = !DILocation(line: 265, column: 193, scope: !2367)
!2369 = !DILocation(line: 265, column: 173, scope: !2367)
!2370 = !DILocation(line: 265, column: 203, scope: !2367)
!2371 = !DILocation(line: 265, column: 173, scope: !666)
!2372 = !DILocation(line: 265, column: 173, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !666, file: !514, discriminator: 5)
!2374 = !DILocation(line: 265, column: 234, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2367, file: !514, discriminator: 6)
!2376 = !DILocation(line: 265, column: 252, scope: !2367)
!2377 = !DILocation(line: 265, column: 262, scope: !2367)
!2378 = !DILocation(line: 265, column: 287, scope: !2367)
!2379 = !DILocation(line: 265, column: 218, scope: !2367)
!2380 = !DILocation(line: 265, column: 306, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !667, file: !514, discriminator: 7)
!2382 = !DILocation(line: 265, column: 306, scope: !666)
!2383 = !DILocation(line: 265, column: 306, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !666, file: !514, discriminator: 8)
!2385 = !DILocation(line: 265, column: 306, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !666, file: !514, discriminator: 9)
!2387 = !DILocation(line: 265, column: 319, scope: !2135)
!2388 = !DILocation(line: 265, column: 319, scope: !664)
!2389 = !DILocation(line: 266, column: 5, scope: !626)
!2390 = !DILocation(line: 266, column: 10, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !669, file: !514, discriminator: 1)
!2392 = !DILocation(line: 266, column: 20, scope: !669)
!2393 = !DILocation(line: 266, column: 51, scope: !669)
!2394 = !DILocation(line: 266, column: 57, scope: !669)
!2395 = !DILocation(line: 266, column: 71, scope: !672)
!2396 = !DILocation(line: 266, column: 87, scope: !672)
!2397 = !DILocation(line: 266, column: 71, scope: !669)
!2398 = !DILocation(line: 266, column: 102, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !672, file: !514, discriminator: 2)
!2400 = !DILocation(line: 266, column: 107, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !671, file: !514, discriminator: 4)
!2402 = !DILocation(line: 266, column: 117, scope: !671)
!2403 = !DILocation(line: 266, column: 147, scope: !671)
!2404 = !DILocation(line: 266, column: 173, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !671, file: !514, line: 266, column: 170)
!2406 = !DILocation(line: 266, column: 190, scope: !2405)
!2407 = !DILocation(line: 266, column: 170, scope: !2405)
!2408 = !DILocation(line: 266, column: 200, scope: !2405)
!2409 = !DILocation(line: 266, column: 170, scope: !671)
!2410 = !DILocation(line: 266, column: 170, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !671, file: !514, discriminator: 5)
!2412 = !DILocation(line: 266, column: 231, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2405, file: !514, discriminator: 6)
!2414 = !DILocation(line: 266, column: 249, scope: !2405)
!2415 = !DILocation(line: 266, column: 259, scope: !2405)
!2416 = !DILocation(line: 266, column: 284, scope: !2405)
!2417 = !DILocation(line: 266, column: 215, scope: !2405)
!2418 = !DILocation(line: 266, column: 303, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !672, file: !514, discriminator: 7)
!2420 = !DILocation(line: 266, column: 303, scope: !671)
!2421 = !DILocation(line: 266, column: 303, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !671, file: !514, discriminator: 8)
!2423 = !DILocation(line: 266, column: 303, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !671, file: !514, discriminator: 9)
!2425 = !DILocation(line: 266, column: 316, scope: !2135)
!2426 = !DILocation(line: 266, column: 316, scope: !669)
!2427 = !DILocation(line: 268, column: 19, scope: !626)
!2428 = !DILocation(line: 268, column: 7, scope: !626)
!2429 = !DILocation(line: 268, column: 27, scope: !626)
!2430 = !DILocation(line: 268, column: 37, scope: !626)
!2431 = !{!1448, !1310, i64 320}
!2432 = !DILocation(line: 268, column: 56, scope: !626)
!2433 = !DILocation(line: 268, column: 45, scope: !626)
!2434 = !DILocation(line: 268, column: 5, scope: !626)
!2435 = !DILocation(line: 269, column: 1, scope: !626)
!2436 = !DILocation(line: 276, column: 62, scope: !673)
!2437 = !DILocation(line: 276, column: 84, scope: !673)
!2438 = !DILocation(line: 278, column: 5, scope: !673)
!2439 = !DILocation(line: 278, column: 15, scope: !673)
!2440 = !DILocation(line: 280, column: 43, scope: !673)
!2441 = !DILocation(line: 280, column: 15, scope: !673)
!2442 = !DILocation(line: 280, column: 13, scope: !673)
!2443 = !DILocation(line: 281, column: 10, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !673, file: !514, line: 281, column: 9)
!2445 = !DILocation(line: 281, column: 9, scope: !673)
!2446 = !DILocation(line: 282, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !514, line: 281, column: 19)
!2448 = !DILocation(line: 285, column: 23, scope: !683)
!2449 = !DILocation(line: 285, column: 35, scope: !683)
!2450 = !DILocation(line: 285, column: 44, scope: !683)
!2451 = !DILocation(line: 285, column: 9, scope: !683)
!2452 = !DILocation(line: 285, column: 53, scope: !683)
!2453 = !DILocation(line: 285, column: 9, scope: !673)
!2454 = !DILocation(line: 286, column: 9, scope: !682)
!2455 = !DILocation(line: 286, column: 14, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !681, file: !514, discriminator: 1)
!2457 = !DILocation(line: 286, column: 24, scope: !681)
!2458 = !DILocation(line: 286, column: 47, scope: !681)
!2459 = !DILocation(line: 286, column: 61, scope: !687)
!2460 = !DILocation(line: 286, column: 69, scope: !687)
!2461 = !DILocation(line: 286, column: 61, scope: !681)
!2462 = !DILocation(line: 286, column: 96, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !686, file: !514, discriminator: 2)
!2464 = !DILocation(line: 286, column: 110, scope: !686)
!2465 = !DILocation(line: 286, column: 115, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !685, file: !514, discriminator: 4)
!2467 = !DILocation(line: 286, column: 125, scope: !685)
!2468 = !DILocation(line: 286, column: 155, scope: !685)
!2469 = !DILocation(line: 286, column: 173, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !685, file: !514, line: 286, column: 170)
!2471 = !DILocation(line: 286, column: 190, scope: !2470)
!2472 = !DILocation(line: 286, column: 170, scope: !2470)
!2473 = !DILocation(line: 286, column: 200, scope: !2470)
!2474 = !DILocation(line: 286, column: 170, scope: !685)
!2475 = !DILocation(line: 286, column: 170, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !685, file: !514, discriminator: 5)
!2477 = !DILocation(line: 286, column: 231, scope: !2478)
!2478 = !DILexicalBlockFile(scope: !2470, file: !514, discriminator: 6)
!2479 = !DILocation(line: 286, column: 249, scope: !2470)
!2480 = !DILocation(line: 286, column: 259, scope: !2470)
!2481 = !DILocation(line: 286, column: 284, scope: !2470)
!2482 = !DILocation(line: 286, column: 215, scope: !2470)
!2483 = !DILocation(line: 286, column: 303, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !686, file: !514, discriminator: 7)
!2485 = !DILocation(line: 286, column: 303, scope: !685)
!2486 = !DILocation(line: 286, column: 303, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !685, file: !514, discriminator: 8)
!2488 = !DILocation(line: 286, column: 316, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !686, file: !514, discriminator: 9)
!2490 = !DILocation(line: 286, column: 318, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2492, file: !514, discriminator: 10)
!2492 = !DILexicalBlockFile(scope: !682, file: !514, discriminator: 3)
!2493 = !DILocation(line: 286, column: 318, scope: !681)
!2494 = !DILocation(line: 286, column: 318, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !681, file: !514, discriminator: 11)
!2496 = !DILocation(line: 287, column: 9, scope: !682)
!2497 = !DILocation(line: 290, column: 5, scope: !673)
!2498 = !DILocation(line: 290, column: 10, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !689, file: !514, discriminator: 1)
!2500 = !DILocation(line: 290, column: 20, scope: !689)
!2501 = !DILocation(line: 290, column: 50, scope: !689)
!2502 = !DILocation(line: 290, column: 68, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !689, file: !514, line: 290, column: 65)
!2504 = !DILocation(line: 290, column: 85, scope: !2503)
!2505 = !DILocation(line: 290, column: 65, scope: !2503)
!2506 = !DILocation(line: 290, column: 95, scope: !2503)
!2507 = !DILocation(line: 290, column: 65, scope: !689)
!2508 = !DILocation(line: 290, column: 65, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !689, file: !514, discriminator: 2)
!2510 = !DILocation(line: 290, column: 126, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2503, file: !514, discriminator: 3)
!2512 = !DILocation(line: 290, column: 144, scope: !2503)
!2513 = !DILocation(line: 290, column: 154, scope: !2503)
!2514 = !DILocation(line: 290, column: 179, scope: !2503)
!2515 = !DILocation(line: 290, column: 110, scope: !2503)
!2516 = !DILocation(line: 290, column: 198, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !673, file: !514, discriminator: 4)
!2518 = !DILocation(line: 290, column: 198, scope: !689)
!2519 = !DILocation(line: 290, column: 198, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !689, file: !514, discriminator: 5)
!2521 = !DILocation(line: 292, column: 5, scope: !673)
!2522 = !DILocation(line: 294, column: 5, scope: !673)
!2523 = !DILocation(line: 295, column: 1, scope: !673)
!2524 = !DILocation(line: 297, column: 59, scope: !690)
!2525 = !DILocation(line: 297, column: 75, scope: !690)
!2526 = !DILocation(line: 297, column: 91, scope: !690)
!2527 = !DILocation(line: 300, column: 5, scope: !690)
!2528 = !DILocation(line: 300, column: 15, scope: !690)
!2529 = !DILocation(line: 301, column: 5, scope: !690)
!2530 = !DILocation(line: 301, column: 15, scope: !690)
!2531 = !DILocation(line: 303, column: 38, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !690, file: !514, line: 303, column: 9)
!2533 = !DILocation(line: 303, column: 44, scope: !2532)
!2534 = !DILocation(line: 303, column: 10, scope: !2532)
!2535 = !DILocation(line: 303, column: 9, scope: !690)
!2536 = !DILocation(line: 305, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !514, line: 304, column: 49)
!2538 = !DILocation(line: 308, column: 32, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !690, file: !514, line: 308, column: 9)
!2540 = !DILocation(line: 308, column: 10, scope: !2539)
!2541 = !DILocation(line: 308, column: 38, scope: !2539)
!2542 = !DILocation(line: 308, column: 68, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2539, file: !514, discriminator: 1)
!2544 = !DILocation(line: 308, column: 42, scope: !2539)
!2545 = !DILocation(line: 308, column: 9, scope: !690)
!2546 = !DILocation(line: 309, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2539, file: !514, line: 308, column: 75)
!2548 = !DILocation(line: 312, column: 9, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !690, file: !514, line: 312, column: 9)
!2550 = !DILocation(line: 312, column: 17, scope: !2549)
!2551 = !DILocation(line: 312, column: 9, scope: !690)
!2552 = !DILocation(line: 313, column: 17, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !514, line: 312, column: 32)
!2554 = !DILocation(line: 314, column: 5, scope: !2553)
!2555 = !DILocation(line: 316, column: 36, scope: !690)
!2556 = !DILocation(line: 316, column: 50, scope: !690)
!2557 = !DILocation(line: 316, column: 14, scope: !690)
!2558 = !DILocation(line: 316, column: 12, scope: !690)
!2559 = !DILocation(line: 318, column: 45, scope: !690)
!2560 = !DILocation(line: 318, column: 5, scope: !690)
!2561 = !DILocation(line: 320, column: 9, scope: !702)
!2562 = !DILocation(line: 320, column: 16, scope: !702)
!2563 = !DILocation(line: 320, column: 19, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !702, file: !514, discriminator: 1)
!2565 = !DILocation(line: 320, column: 25, scope: !702)
!2566 = !DILocation(line: 320, column: 37, scope: !702)
!2567 = !DILocation(line: 320, column: 9, scope: !690)
!2568 = !DILocation(line: 321, column: 9, scope: !701)
!2569 = !DILocation(line: 321, column: 14, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !700, file: !514, discriminator: 1)
!2571 = !DILocation(line: 321, column: 24, scope: !700)
!2572 = !DILocation(line: 321, column: 74, scope: !700)
!2573 = !DILocation(line: 321, column: 56, scope: !700)
!2574 = !DILocation(line: 321, column: 83, scope: !700)
!2575 = !{!2089, !1310, i64 64}
!2576 = !DILocation(line: 321, column: 101, scope: !705)
!2577 = !DILocation(line: 321, column: 117, scope: !705)
!2578 = !DILocation(line: 321, column: 101, scope: !700)
!2579 = !DILocation(line: 321, column: 132, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !705, file: !514, discriminator: 2)
!2581 = !DILocation(line: 321, column: 137, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !704, file: !514, discriminator: 4)
!2583 = !DILocation(line: 321, column: 147, scope: !704)
!2584 = !DILocation(line: 321, column: 177, scope: !704)
!2585 = !DILocation(line: 321, column: 203, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !704, file: !514, line: 321, column: 200)
!2587 = !DILocation(line: 321, column: 220, scope: !2586)
!2588 = !DILocation(line: 321, column: 200, scope: !2586)
!2589 = !DILocation(line: 321, column: 230, scope: !2586)
!2590 = !DILocation(line: 321, column: 200, scope: !704)
!2591 = !DILocation(line: 321, column: 200, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !704, file: !514, discriminator: 5)
!2593 = !DILocation(line: 321, column: 261, scope: !2594)
!2594 = !DILexicalBlockFile(scope: !2586, file: !514, discriminator: 6)
!2595 = !DILocation(line: 321, column: 279, scope: !2586)
!2596 = !DILocation(line: 321, column: 289, scope: !2586)
!2597 = !DILocation(line: 321, column: 314, scope: !2586)
!2598 = !DILocation(line: 321, column: 245, scope: !2586)
!2599 = !DILocation(line: 321, column: 333, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !705, file: !514, discriminator: 7)
!2601 = !DILocation(line: 321, column: 333, scope: !704)
!2602 = !DILocation(line: 321, column: 333, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !704, file: !514, discriminator: 8)
!2604 = !DILocation(line: 321, column: 333, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !704, file: !514, discriminator: 9)
!2606 = !DILocation(line: 321, column: 346, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2608, file: !514, discriminator: 10)
!2608 = !DILexicalBlockFile(scope: !701, file: !514, discriminator: 3)
!2609 = !DILocation(line: 321, column: 346, scope: !700)
!2610 = !DILocation(line: 321, column: 346, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !700, file: !514, discriminator: 11)
!2612 = !DILocation(line: 322, column: 25, scope: !701)
!2613 = !DILocation(line: 322, column: 31, scope: !701)
!2614 = !DILocation(line: 322, column: 46, scope: !701)
!2615 = !DILocation(line: 322, column: 55, scope: !701)
!2616 = !DILocation(line: 323, column: 51, scope: !701)
!2617 = !DILocation(line: 323, column: 57, scope: !701)
!2618 = !DILocation(line: 323, column: 28, scope: !701)
!2619 = !DILocation(line: 323, column: 10, scope: !701)
!2620 = !DILocation(line: 323, column: 37, scope: !701)
!2621 = !DILocation(line: 323, column: 49, scope: !701)
!2622 = !DILocation(line: 324, column: 5, scope: !701)
!2623 = !DILocation(line: 326, column: 12, scope: !690)
!2624 = !DILocation(line: 326, column: 5, scope: !690)
!2625 = !DILocation(line: 327, column: 1, scope: !690)
!2626 = !DILocation(line: 1142, column: 48, scope: !845)
!2627 = !DILocation(line: 1145, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !845, file: !514, line: 1145, column: 9)
!2629 = !DILocation(line: 1145, column: 15, scope: !2628)
!2630 = !DILocation(line: 1145, column: 9, scope: !845)
!2631 = !DILocation(line: 1146, column: 13, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !514, line: 1146, column: 13)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !514, line: 1145, column: 34)
!2634 = !DILocation(line: 1146, column: 44, scope: !2632)
!2635 = !DILocation(line: 1146, column: 50, scope: !2632)
!2636 = !DILocation(line: 1146, column: 41, scope: !2632)
!2637 = !DILocation(line: 1146, column: 13, scope: !2633)
!2638 = !DILocation(line: 1147, column: 26, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2632, file: !514, line: 1146, column: 64)
!2640 = !DILocation(line: 1150, column: 25, scope: !2639)
!2641 = !DILocation(line: 1150, column: 31, scope: !2639)
!2642 = !DILocation(line: 1150, column: 45, scope: !2639)
!2643 = !DILocation(line: 1147, column: 13, scope: !2639)
!2644 = !DILocation(line: 1151, column: 13, scope: !2639)
!2645 = !DILocation(line: 1154, column: 5, scope: !2633)
!2646 = !DILocation(line: 1156, column: 5, scope: !845)
!2647 = !DILocation(line: 1157, column: 1, scope: !845)
!2648 = !DILocation(line: 361, column: 52, scope: !717)
!2649 = !DILocation(line: 363, column: 10, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !717, file: !514, line: 363, column: 9)
!2651 = !DILocation(line: 363, column: 15, scope: !2650)
!2652 = !DILocation(line: 363, column: 9, scope: !717)
!2653 = !DILocation(line: 364, column: 25, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !514, line: 363, column: 28)
!2655 = !DILocation(line: 364, column: 9, scope: !2654)
!2656 = !DILocation(line: 365, column: 9, scope: !2654)
!2657 = !DILocation(line: 368, column: 10, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !717, file: !514, line: 368, column: 9)
!2659 = !DILocation(line: 368, column: 15, scope: !2658)
!2660 = !DILocation(line: 368, column: 9, scope: !717)
!2661 = !DILocation(line: 369, column: 25, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !514, line: 368, column: 19)
!2663 = !DILocation(line: 369, column: 9, scope: !2662)
!2664 = !DILocation(line: 370, column: 9, scope: !2662)
!2665 = !DILocation(line: 372, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !514, line: 371, column: 12)
!2667 = !DILocation(line: 374, column: 1, scope: !717)
!2668 = !DILocation(line: 801, column: 74, scope: !998)
!2669 = !DILocation(line: 803, column: 5, scope: !998)
!2670 = !DILocation(line: 803, column: 15, scope: !998)
!2671 = !DILocation(line: 804, column: 5, scope: !998)
!2672 = !DILocation(line: 804, column: 15, scope: !998)
!2673 = !DILocation(line: 805, column: 5, scope: !998)
!2674 = !DILocation(line: 805, column: 9, scope: !998)
!2675 = !DILocation(line: 808, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !998, file: !514, line: 808, column: 9)
!2677 = !DILocation(line: 808, column: 15, scope: !2676)
!2678 = !DILocation(line: 808, column: 30, scope: !2676)
!2679 = !DILocation(line: 808, column: 33, scope: !2676)
!2680 = !DILocation(line: 808, column: 9, scope: !998)
!2681 = !DILocation(line: 809, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !514, line: 808, column: 40)
!2683 = !DILocation(line: 812, column: 5, scope: !998)
!2684 = !DILocation(line: 812, column: 11, scope: !998)
!2685 = !DILocation(line: 812, column: 27, scope: !998)
!2686 = !DILocation(line: 814, column: 16, scope: !998)
!2687 = !DILocation(line: 814, column: 14, scope: !998)
!2688 = !DILocation(line: 815, column: 10, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !998, file: !514, line: 815, column: 9)
!2690 = !DILocation(line: 815, column: 9, scope: !998)
!2691 = !DILocation(line: 816, column: 9, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !514, line: 815, column: 20)
!2693 = !DILocation(line: 819, column: 12, scope: !1012)
!2694 = !DILocation(line: 819, column: 10, scope: !1012)
!2695 = !DILocation(line: 819, column: 17, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2697, file: !514, discriminator: 2)
!2697 = !DILexicalBlockFile(scope: !1011, file: !514, discriminator: 1)
!2698 = !DILocation(line: 819, column: 33, scope: !1011)
!2699 = !DILocation(line: 819, column: 39, scope: !1011)
!2700 = !DILocation(line: 819, column: 21, scope: !1011)
!2701 = !DILocation(line: 819, column: 19, scope: !1011)
!2702 = !DILocation(line: 819, column: 5, scope: !1012)
!2703 = !DILocation(line: 820, column: 34, scope: !1010)
!2704 = !DILocation(line: 820, column: 40, scope: !1010)
!2705 = !DILocation(line: 820, column: 49, scope: !1010)
!2706 = !DILocation(line: 820, column: 19, scope: !1010)
!2707 = !DILocation(line: 820, column: 17, scope: !1010)
!2708 = !DILocation(line: 821, column: 33, scope: !1009)
!2709 = !DILocation(line: 821, column: 13, scope: !1009)
!2710 = !DILocation(line: 821, column: 42, scope: !1009)
!2711 = !DILocation(line: 821, column: 13, scope: !1010)
!2712 = !DILocation(line: 822, column: 31, scope: !1007)
!2713 = !DILocation(line: 822, column: 41, scope: !1007)
!2714 = !DILocation(line: 822, column: 17, scope: !1007)
!2715 = !DILocation(line: 822, column: 50, scope: !1007)
!2716 = !DILocation(line: 822, column: 17, scope: !1008)
!2717 = !DILocation(line: 823, column: 17, scope: !1006)
!2718 = !DILocation(line: 823, column: 22, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !1005, file: !514, discriminator: 1)
!2720 = !DILocation(line: 823, column: 32, scope: !1005)
!2721 = !DILocation(line: 823, column: 62, scope: !1005)
!2722 = !DILocation(line: 823, column: 81, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !1005, file: !514, line: 823, column: 78)
!2724 = !DILocation(line: 823, column: 98, scope: !2723)
!2725 = !DILocation(line: 823, column: 78, scope: !2723)
!2726 = !DILocation(line: 823, column: 108, scope: !2723)
!2727 = !DILocation(line: 823, column: 78, scope: !1005)
!2728 = !DILocation(line: 823, column: 78, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !1005, file: !514, discriminator: 2)
!2730 = !DILocation(line: 823, column: 139, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2723, file: !514, discriminator: 3)
!2732 = !DILocation(line: 823, column: 157, scope: !2723)
!2733 = !DILocation(line: 823, column: 167, scope: !2723)
!2734 = !DILocation(line: 823, column: 192, scope: !2723)
!2735 = !DILocation(line: 823, column: 123, scope: !2723)
!2736 = !DILocation(line: 823, column: 211, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !1006, file: !514, discriminator: 4)
!2738 = !DILocation(line: 823, column: 211, scope: !1005)
!2739 = !DILocation(line: 823, column: 211, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !1005, file: !514, discriminator: 5)
!2741 = !DILocation(line: 824, column: 17, scope: !1006)
!2742 = !DILocation(line: 826, column: 9, scope: !1008)
!2743 = !DILocation(line: 827, column: 5, scope: !1010)
!2744 = !DILocation(line: 819, column: 50, scope: !1011)
!2745 = !DILocation(line: 819, column: 5, scope: !1011)
!2746 = !DILocation(line: 829, column: 5, scope: !998)
!2747 = !DILocation(line: 829, column: 10, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !1014, file: !514, discriminator: 1)
!2749 = !DILocation(line: 829, column: 20, scope: !1014)
!2750 = !DILocation(line: 829, column: 50, scope: !1014)
!2751 = !DILocation(line: 829, column: 56, scope: !1014)
!2752 = !DILocation(line: 829, column: 74, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !1014, file: !514, line: 829, column: 71)
!2754 = !DILocation(line: 829, column: 91, scope: !2753)
!2755 = !DILocation(line: 829, column: 71, scope: !2753)
!2756 = !DILocation(line: 829, column: 101, scope: !2753)
!2757 = !DILocation(line: 829, column: 71, scope: !1014)
!2758 = !DILocation(line: 829, column: 71, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !1014, file: !514, discriminator: 2)
!2760 = !DILocation(line: 829, column: 132, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2753, file: !514, discriminator: 3)
!2762 = !DILocation(line: 829, column: 150, scope: !2753)
!2763 = !DILocation(line: 829, column: 160, scope: !2753)
!2764 = !DILocation(line: 829, column: 185, scope: !2753)
!2765 = !DILocation(line: 829, column: 116, scope: !2753)
!2766 = !DILocation(line: 829, column: 204, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !998, file: !514, discriminator: 4)
!2768 = !DILocation(line: 829, column: 204, scope: !1014)
!2769 = !DILocation(line: 829, column: 204, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !1014, file: !514, discriminator: 5)
!2771 = !DILocation(line: 830, column: 21, scope: !998)
!2772 = !DILocation(line: 830, column: 5, scope: !998)
!2773 = !DILocation(line: 830, column: 11, scope: !998)
!2774 = !DILocation(line: 830, column: 19, scope: !998)
!2775 = !DILocation(line: 831, column: 1, scope: !998)
!2776 = !DILocation(line: 831, column: 1, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !998, file: !514, discriminator: 1)
!2778 = !DILocation(line: 329, column: 58, scope: !706)
!2779 = !DILocation(line: 329, column: 74, scope: !706)
!2780 = !DILocation(line: 331, column: 5, scope: !706)
!2781 = !DILocation(line: 331, column: 9, scope: !706)
!2782 = !DILocation(line: 333, column: 32, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !706, file: !514, line: 333, column: 9)
!2784 = !DILocation(line: 333, column: 10, scope: !2783)
!2785 = !DILocation(line: 333, column: 9, scope: !706)
!2786 = !DILocation(line: 334, column: 9, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !514, line: 333, column: 39)
!2788 = !DILocation(line: 337, column: 32, scope: !706)
!2789 = !DILocation(line: 337, column: 5, scope: !706)
!2790 = !DILocation(line: 339, column: 9, scope: !716)
!2791 = !DILocation(line: 339, column: 15, scope: !716)
!2792 = !DILocation(line: 339, column: 9, scope: !706)
!2793 = !DILocation(line: 340, column: 11, scope: !714)
!2794 = !DILocation(line: 340, column: 26, scope: !714)
!2795 = !DILocation(line: 340, column: 41, scope: !714)
!2796 = !DILocation(line: 340, column: 39, scope: !714)
!2797 = !DILocation(line: 341, column: 28, scope: !714)
!2798 = !DILocation(line: 341, column: 34, scope: !714)
!2799 = !DILocation(line: 341, column: 14, scope: !714)
!2800 = !DILocation(line: 341, column: 12, scope: !714)
!2801 = !DILocation(line: 342, column: 30, scope: !714)
!2802 = !DILocation(line: 342, column: 9, scope: !714)
!2803 = !DILocation(line: 342, column: 38, scope: !715)
!2804 = !DILocation(line: 344, column: 13, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !715, file: !514, line: 344, column: 13)
!2806 = !DILocation(line: 344, column: 16, scope: !2805)
!2807 = !DILocation(line: 344, column: 13, scope: !715)
!2808 = !DILocation(line: 345, column: 32, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !514, line: 344, column: 22)
!2810 = !DILocation(line: 345, column: 38, scope: !2809)
!2811 = !DILocation(line: 345, column: 13, scope: !2809)
!2812 = !DILocation(line: 346, column: 13, scope: !2809)
!2813 = !DILocation(line: 348, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2805, file: !514, line: 347, column: 16)
!2815 = !DILocation(line: 348, column: 19, scope: !2814)
!2816 = !DILocation(line: 348, column: 22, scope: !2814)
!2817 = !DILocation(line: 350, column: 5, scope: !715)
!2818 = !DILocation(line: 352, column: 51, scope: !706)
!2819 = !DILocation(line: 353, column: 5, scope: !706)
!2820 = !DILocation(line: 354, column: 1, scope: !706)
!2821 = !DILocation(line: 376, column: 59, scope: !722)
!2822 = !DILocation(line: 378, column: 5, scope: !722)
!2823 = !DILocation(line: 378, column: 9, scope: !722)
!2824 = !DILocation(line: 379, column: 5, scope: !722)
!2825 = !DILocation(line: 379, column: 17, scope: !722)
!2826 = !DILocation(line: 380, column: 5, scope: !722)
!2827 = !DILocation(line: 380, column: 19, scope: !722)
!2828 = !DILocation(line: 382, column: 7, scope: !731)
!2829 = !DILocation(line: 382, column: 22, scope: !731)
!2830 = !DILocation(line: 382, column: 37, scope: !731)
!2831 = !DILocation(line: 382, column: 35, scope: !731)
!2832 = !DILocation(line: 383, column: 26, scope: !731)
!2833 = !DILocation(line: 383, column: 32, scope: !731)
!2834 = !DILocation(line: 383, column: 36, scope: !731)
!2835 = !DILocation(line: 383, column: 42, scope: !731)
!2836 = !DILocation(line: 383, column: 10, scope: !731)
!2837 = !DILocation(line: 383, column: 8, scope: !731)
!2838 = !DILocation(line: 384, column: 26, scope: !731)
!2839 = !DILocation(line: 384, column: 5, scope: !731)
!2840 = !DILocation(line: 384, column: 34, scope: !722)
!2841 = !DILocation(line: 386, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !722, file: !514, line: 386, column: 9)
!2843 = !DILocation(line: 386, column: 12, scope: !2842)
!2844 = !DILocation(line: 386, column: 9, scope: !722)
!2845 = !DILocation(line: 387, column: 28, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !514, line: 386, column: 18)
!2847 = !DILocation(line: 387, column: 34, scope: !2846)
!2848 = !DILocation(line: 387, column: 38, scope: !2846)
!2849 = !DILocation(line: 387, column: 9, scope: !2846)
!2850 = !DILocation(line: 388, column: 9, scope: !2846)
!2851 = !DILocation(line: 391, column: 24, scope: !722)
!2852 = !DILocation(line: 391, column: 35, scope: !722)
!2853 = !DILocation(line: 391, column: 10, scope: !722)
!2854 = !DILocation(line: 391, column: 8, scope: !722)
!2855 = !DILocation(line: 392, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !722, file: !514, line: 392, column: 9)
!2857 = !DILocation(line: 392, column: 12, scope: !2856)
!2858 = !DILocation(line: 392, column: 9, scope: !722)
!2859 = !DILocation(line: 393, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !514, line: 392, column: 20)
!2861 = !DILocation(line: 393, column: 15, scope: !2860)
!2862 = !DILocation(line: 393, column: 29, scope: !2860)
!2863 = !DILocation(line: 394, column: 5, scope: !2860)
!2864 = !DILocation(line: 395, column: 28, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2856, file: !514, line: 394, column: 12)
!2866 = !DILocation(line: 395, column: 34, scope: !2865)
!2867 = !DILocation(line: 395, column: 38, scope: !2865)
!2868 = !DILocation(line: 395, column: 9, scope: !2865)
!2869 = !DILocation(line: 398, column: 7, scope: !733)
!2870 = !DILocation(line: 398, column: 22, scope: !733)
!2871 = !DILocation(line: 398, column: 37, scope: !733)
!2872 = !DILocation(line: 398, column: 35, scope: !733)
!2873 = !DILocation(line: 399, column: 27, scope: !733)
!2874 = !DILocation(line: 399, column: 10, scope: !733)
!2875 = !DILocation(line: 399, column: 8, scope: !733)
!2876 = !DILocation(line: 400, column: 26, scope: !733)
!2877 = !DILocation(line: 400, column: 5, scope: !733)
!2878 = !DILocation(line: 400, column: 34, scope: !722)
!2879 = !DILocation(line: 402, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !722, file: !514, line: 402, column: 9)
!2881 = !DILocation(line: 402, column: 12, scope: !2880)
!2882 = !DILocation(line: 402, column: 17, scope: !2880)
!2883 = !DILocation(line: 402, column: 21, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2880, file: !514, discriminator: 1)
!2885 = !DILocation(line: 402, column: 9, scope: !722)
!2886 = !DILocation(line: 403, column: 28, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !514, line: 402, column: 39)
!2888 = !DILocation(line: 403, column: 34, scope: !2887)
!2889 = !DILocation(line: 403, column: 9, scope: !2887)
!2890 = !DILocation(line: 404, column: 5, scope: !2887)
!2891 = !DILocation(line: 402, column: 36, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !514, discriminator: 3)
!2893 = !DILexicalBlockFile(scope: !2880, file: !514, discriminator: 2)
!2894 = !DILocation(line: 407, column: 9, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !722, file: !514, line: 407, column: 9)
!2896 = !DILocation(line: 407, column: 9, scope: !722)
!2897 = !DILocation(line: 408, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !514, line: 407, column: 27)
!2899 = !DILocation(line: 410, column: 55, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !514, line: 409, column: 12)
!2901 = !DILocation(line: 411, column: 9, scope: !2900)
!2902 = !DILocation(line: 413, column: 1, scope: !722)
!2903 = !DILocation(line: 415, column: 59, scope: !734)
!2904 = !DILocation(line: 415, column: 75, scope: !734)
!2905 = !DILocation(line: 417, column: 5, scope: !734)
!2906 = !DILocation(line: 417, column: 9, scope: !734)
!2907 = !DILocation(line: 418, column: 5, scope: !734)
!2908 = !DILocation(line: 418, column: 17, scope: !734)
!2909 = !DILocation(line: 419, column: 5, scope: !734)
!2910 = !DILocation(line: 419, column: 19, scope: !734)
!2911 = !DILocation(line: 421, column: 32, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !734, file: !514, line: 421, column: 9)
!2913 = !DILocation(line: 421, column: 10, scope: !2912)
!2914 = !DILocation(line: 421, column: 38, scope: !2912)
!2915 = !DILocation(line: 421, column: 68, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2912, file: !514, discriminator: 1)
!2917 = !DILocation(line: 421, column: 42, scope: !2912)
!2918 = !DILocation(line: 421, column: 9, scope: !734)
!2919 = !DILocation(line: 422, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !514, line: 421, column: 75)
!2921 = !DILocation(line: 425, column: 9, scope: !744)
!2922 = !DILocation(line: 425, column: 15, scope: !744)
!2923 = !DILocation(line: 425, column: 9, scope: !734)
!2924 = !DILocation(line: 426, column: 36, scope: !743)
!2925 = !DILocation(line: 426, column: 9, scope: !743)
!2926 = !DILocation(line: 428, column: 11, scope: !742)
!2927 = !DILocation(line: 428, column: 26, scope: !742)
!2928 = !DILocation(line: 428, column: 41, scope: !742)
!2929 = !DILocation(line: 428, column: 39, scope: !742)
!2930 = !DILocation(line: 429, column: 30, scope: !742)
!2931 = !DILocation(line: 429, column: 36, scope: !742)
!2932 = !DILocation(line: 429, column: 14, scope: !742)
!2933 = !DILocation(line: 429, column: 12, scope: !742)
!2934 = !DILocation(line: 430, column: 30, scope: !742)
!2935 = !DILocation(line: 430, column: 9, scope: !742)
!2936 = !DILocation(line: 430, column: 38, scope: !743)
!2937 = !DILocation(line: 431, column: 13, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !743, file: !514, line: 431, column: 13)
!2939 = !DILocation(line: 431, column: 16, scope: !2938)
!2940 = !DILocation(line: 431, column: 13, scope: !743)
!2941 = !DILocation(line: 432, column: 32, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !514, line: 431, column: 22)
!2943 = !DILocation(line: 432, column: 38, scope: !2942)
!2944 = !DILocation(line: 432, column: 13, scope: !2942)
!2945 = !DILocation(line: 433, column: 13, scope: !2942)
!2946 = !DILocation(line: 436, column: 28, scope: !743)
!2947 = !DILocation(line: 436, column: 39, scope: !743)
!2948 = !DILocation(line: 436, column: 14, scope: !743)
!2949 = !DILocation(line: 436, column: 12, scope: !743)
!2950 = !DILocation(line: 437, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !743, file: !514, line: 437, column: 13)
!2952 = !DILocation(line: 437, column: 16, scope: !2951)
!2953 = !DILocation(line: 437, column: 13, scope: !743)
!2954 = !DILocation(line: 438, column: 13, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !514, line: 437, column: 24)
!2956 = !DILocation(line: 438, column: 19, scope: !2955)
!2957 = !DILocation(line: 438, column: 33, scope: !2955)
!2958 = !DILocation(line: 439, column: 9, scope: !2955)
!2959 = !DILocation(line: 440, column: 32, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2951, file: !514, line: 439, column: 16)
!2961 = !DILocation(line: 440, column: 38, scope: !2960)
!2962 = !DILocation(line: 440, column: 42, scope: !2960)
!2963 = !DILocation(line: 440, column: 13, scope: !2960)
!2964 = !DILocation(line: 443, column: 11, scope: !746)
!2965 = !DILocation(line: 443, column: 26, scope: !746)
!2966 = !DILocation(line: 443, column: 41, scope: !746)
!2967 = !DILocation(line: 443, column: 39, scope: !746)
!2968 = !DILocation(line: 444, column: 31, scope: !746)
!2969 = !DILocation(line: 444, column: 14, scope: !746)
!2970 = !DILocation(line: 444, column: 12, scope: !746)
!2971 = !DILocation(line: 445, column: 30, scope: !746)
!2972 = !DILocation(line: 445, column: 9, scope: !746)
!2973 = !DILocation(line: 445, column: 38, scope: !743)
!2974 = !DILocation(line: 446, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !743, file: !514, line: 446, column: 13)
!2976 = !DILocation(line: 446, column: 16, scope: !2975)
!2977 = !DILocation(line: 446, column: 21, scope: !2975)
!2978 = !DILocation(line: 446, column: 25, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2975, file: !514, discriminator: 1)
!2980 = !DILocation(line: 446, column: 13, scope: !743)
!2981 = !DILocation(line: 447, column: 32, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !514, line: 446, column: 43)
!2983 = !DILocation(line: 447, column: 38, scope: !2982)
!2984 = !DILocation(line: 447, column: 13, scope: !2982)
!2985 = !DILocation(line: 448, column: 9, scope: !2982)
!2986 = !DILocation(line: 450, column: 5, scope: !743)
!2987 = !DILocation(line: 425, column: 15, scope: !2988)
!2988 = !DILexicalBlockFile(scope: !744, file: !514, discriminator: 1)
!2989 = !DILocation(line: 453, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !734, file: !514, line: 453, column: 9)
!2991 = !DILocation(line: 453, column: 9, scope: !734)
!2992 = !DILocation(line: 454, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !514, line: 453, column: 27)
!2994 = !DILocation(line: 456, column: 55, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !514, line: 455, column: 12)
!2996 = !DILocation(line: 457, column: 9, scope: !2995)
!2997 = !DILocation(line: 459, column: 1, scope: !734)
!2998 = !DILocation(line: 461, column: 61, scope: !747)
!2999 = !DILocation(line: 461, column: 77, scope: !747)
!3000 = !DILocation(line: 463, column: 5, scope: !747)
!3001 = !DILocation(line: 463, column: 9, scope: !747)
!3002 = !DILocation(line: 464, column: 5, scope: !747)
!3003 = !DILocation(line: 464, column: 17, scope: !747)
!3004 = !DILocation(line: 465, column: 5, scope: !747)
!3005 = !DILocation(line: 465, column: 19, scope: !747)
!3006 = !DILocation(line: 467, column: 32, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !747, file: !514, line: 467, column: 9)
!3008 = !DILocation(line: 467, column: 10, scope: !3007)
!3009 = !DILocation(line: 467, column: 38, scope: !3007)
!3010 = !DILocation(line: 467, column: 68, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3007, file: !514, discriminator: 1)
!3012 = !DILocation(line: 467, column: 42, scope: !3007)
!3013 = !DILocation(line: 467, column: 9, scope: !747)
!3014 = !DILocation(line: 468, column: 9, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3007, file: !514, line: 467, column: 75)
!3016 = !DILocation(line: 471, column: 9, scope: !757)
!3017 = !DILocation(line: 471, column: 15, scope: !757)
!3018 = !DILocation(line: 471, column: 9, scope: !747)
!3019 = !DILocation(line: 472, column: 36, scope: !756)
!3020 = !DILocation(line: 472, column: 9, scope: !756)
!3021 = !DILocation(line: 474, column: 11, scope: !755)
!3022 = !DILocation(line: 474, column: 26, scope: !755)
!3023 = !DILocation(line: 474, column: 41, scope: !755)
!3024 = !DILocation(line: 474, column: 39, scope: !755)
!3025 = !DILocation(line: 475, column: 30, scope: !755)
!3026 = !DILocation(line: 475, column: 36, scope: !755)
!3027 = !DILocation(line: 475, column: 14, scope: !755)
!3028 = !DILocation(line: 475, column: 12, scope: !755)
!3029 = !DILocation(line: 476, column: 30, scope: !755)
!3030 = !DILocation(line: 476, column: 9, scope: !755)
!3031 = !DILocation(line: 476, column: 38, scope: !756)
!3032 = !DILocation(line: 477, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !756, file: !514, line: 477, column: 13)
!3034 = !DILocation(line: 477, column: 16, scope: !3033)
!3035 = !DILocation(line: 477, column: 13, scope: !756)
!3036 = !DILocation(line: 478, column: 32, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !514, line: 477, column: 22)
!3038 = !DILocation(line: 478, column: 38, scope: !3037)
!3039 = !DILocation(line: 478, column: 13, scope: !3037)
!3040 = !DILocation(line: 479, column: 13, scope: !3037)
!3041 = !DILocation(line: 482, column: 28, scope: !756)
!3042 = !DILocation(line: 482, column: 39, scope: !756)
!3043 = !DILocation(line: 482, column: 14, scope: !756)
!3044 = !DILocation(line: 482, column: 12, scope: !756)
!3045 = !DILocation(line: 483, column: 13, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !756, file: !514, line: 483, column: 13)
!3047 = !DILocation(line: 483, column: 16, scope: !3046)
!3048 = !DILocation(line: 483, column: 13, scope: !756)
!3049 = !DILocation(line: 484, column: 13, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !514, line: 483, column: 24)
!3051 = !DILocation(line: 484, column: 19, scope: !3050)
!3052 = !DILocation(line: 484, column: 33, scope: !3050)
!3053 = !DILocation(line: 485, column: 9, scope: !3050)
!3054 = !DILocation(line: 486, column: 32, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3046, file: !514, line: 485, column: 16)
!3056 = !DILocation(line: 486, column: 38, scope: !3055)
!3057 = !DILocation(line: 486, column: 42, scope: !3055)
!3058 = !DILocation(line: 486, column: 13, scope: !3055)
!3059 = !DILocation(line: 489, column: 11, scope: !759)
!3060 = !DILocation(line: 489, column: 26, scope: !759)
!3061 = !DILocation(line: 489, column: 41, scope: !759)
!3062 = !DILocation(line: 489, column: 39, scope: !759)
!3063 = !DILocation(line: 490, column: 31, scope: !759)
!3064 = !DILocation(line: 490, column: 14, scope: !759)
!3065 = !DILocation(line: 490, column: 12, scope: !759)
!3066 = !DILocation(line: 491, column: 30, scope: !759)
!3067 = !DILocation(line: 491, column: 9, scope: !759)
!3068 = !DILocation(line: 491, column: 38, scope: !756)
!3069 = !DILocation(line: 492, column: 13, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !756, file: !514, line: 492, column: 13)
!3071 = !DILocation(line: 492, column: 16, scope: !3070)
!3072 = !DILocation(line: 492, column: 21, scope: !3070)
!3073 = !DILocation(line: 492, column: 25, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3070, file: !514, discriminator: 1)
!3075 = !DILocation(line: 492, column: 13, scope: !756)
!3076 = !DILocation(line: 493, column: 32, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3070, file: !514, line: 492, column: 43)
!3078 = !DILocation(line: 493, column: 38, scope: !3077)
!3079 = !DILocation(line: 493, column: 13, scope: !3077)
!3080 = !DILocation(line: 494, column: 9, scope: !3077)
!3081 = !DILocation(line: 496, column: 5, scope: !756)
!3082 = !DILocation(line: 471, column: 15, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !757, file: !514, discriminator: 1)
!3084 = !DILocation(line: 499, column: 9, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !747, file: !514, line: 499, column: 9)
!3086 = !DILocation(line: 499, column: 9, scope: !747)
!3087 = !DILocation(line: 500, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !514, line: 499, column: 27)
!3089 = !DILocation(line: 502, column: 55, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3085, file: !514, line: 501, column: 12)
!3091 = !DILocation(line: 503, column: 9, scope: !3090)
!3092 = !DILocation(line: 505, column: 1, scope: !747)
!3093 = !DILocation(line: 544, column: 54, scope: !760)
!3094 = !DILocation(line: 544, column: 67, scope: !760)
!3095 = !DILocation(line: 544, column: 89, scope: !760)
!3096 = !DILocation(line: 546, column: 5, scope: !760)
!3097 = !DILocation(line: 546, column: 15, scope: !760)
!3098 = !DILocation(line: 547, column: 5, scope: !760)
!3099 = !DILocation(line: 547, column: 9, scope: !760)
!3100 = !DILocation(line: 548, column: 5, scope: !760)
!3101 = !DILocation(line: 548, column: 20, scope: !760)
!3102 = !DILocation(line: 549, column: 5, scope: !760)
!3103 = !DILocation(line: 549, column: 15, scope: !760)
!3104 = !DILocation(line: 550, column: 5, scope: !760)
!3105 = !DILocation(line: 550, column: 17, scope: !760)
!3106 = !DILocation(line: 551, column: 5, scope: !760)
!3107 = !DILocation(line: 551, column: 16, scope: !760)
!3108 = !DILocation(line: 553, column: 24, scope: !760)
!3109 = !DILocation(line: 553, column: 12, scope: !760)
!3110 = !DILocation(line: 553, column: 10, scope: !760)
!3111 = !DILocation(line: 554, column: 10, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !760, file: !514, line: 554, column: 9)
!3113 = !DILocation(line: 554, column: 9, scope: !760)
!3114 = !DILocation(line: 555, column: 9, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !514, line: 554, column: 16)
!3116 = !DILocation(line: 558, column: 12, scope: !786)
!3117 = !DILocation(line: 558, column: 10, scope: !786)
!3118 = !DILocation(line: 558, column: 17, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3120, file: !514, discriminator: 2)
!3120 = !DILexicalBlockFile(scope: !785, file: !514, discriminator: 1)
!3121 = !DILocation(line: 558, column: 21, scope: !785)
!3122 = !DILocation(line: 558, column: 19, scope: !785)
!3123 = !DILocation(line: 558, column: 5, scope: !786)
!3124 = !DILocation(line: 559, column: 26, scope: !784)
!3125 = !DILocation(line: 559, column: 21, scope: !784)
!3126 = !DILocation(line: 559, column: 19, scope: !784)
!3127 = !DILocation(line: 560, column: 41, scope: !784)
!3128 = !DILocation(line: 560, column: 36, scope: !784)
!3129 = !DILocation(line: 560, column: 17, scope: !784)
!3130 = !DILocation(line: 560, column: 9, scope: !784)
!3131 = !DILocation(line: 562, column: 78, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !784, file: !514, line: 560, column: 46)
!3133 = !DILocation(line: 562, column: 58, scope: !3132)
!3134 = !DILocation(line: 562, column: 32, scope: !3132)
!3135 = !DILocation(line: 562, column: 30, scope: !3132)
!3136 = !DILocation(line: 563, column: 17, scope: !3132)
!3137 = !DILocation(line: 565, column: 72, scope: !3132)
!3138 = !DILocation(line: 565, column: 51, scope: !3132)
!3139 = !DILocation(line: 565, column: 32, scope: !3132)
!3140 = !DILocation(line: 565, column: 30, scope: !3132)
!3141 = !DILocation(line: 566, column: 17, scope: !3132)
!3142 = !DILocation(line: 568, column: 59, scope: !3132)
!3143 = !DILocation(line: 568, column: 40, scope: !3132)
!3144 = !DILocation(line: 568, column: 25, scope: !3132)
!3145 = !DILocation(line: 569, column: 53, scope: !3132)
!3146 = !DILocation(line: 569, column: 32, scope: !3132)
!3147 = !DILocation(line: 569, column: 30, scope: !3132)
!3148 = !DILocation(line: 571, column: 22, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3132, file: !514, line: 571, column: 21)
!3150 = !DILocation(line: 571, column: 21, scope: !3132)
!3151 = !DILocation(line: 572, column: 21, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !514, line: 571, column: 36)
!3153 = !DILocation(line: 573, column: 67, scope: !3152)
!3154 = !DILocation(line: 574, column: 34, scope: !3152)
!3155 = !DILocation(line: 575, column: 17, scope: !3152)
!3156 = !DILocation(line: 576, column: 17, scope: !3132)
!3157 = !DILocation(line: 578, column: 46, scope: !3132)
!3158 = !DILocation(line: 578, column: 26, scope: !3132)
!3159 = !DILocation(line: 578, column: 24, scope: !3132)
!3160 = !DILocation(line: 580, column: 40, scope: !3132)
!3161 = !DILocation(line: 580, column: 21, scope: !3132)
!3162 = !DILocation(line: 580, column: 52, scope: !3132)
!3163 = !DILocation(line: 579, column: 32, scope: !3132)
!3164 = !DILocation(line: 579, column: 30, scope: !3132)
!3165 = !DILocation(line: 581, column: 17, scope: !3132)
!3166 = !DILocation(line: 584, column: 63, scope: !3132)
!3167 = !DILocation(line: 585, column: 30, scope: !3132)
!3168 = !DILocation(line: 586, column: 9, scope: !3132)
!3169 = !DILocation(line: 588, column: 14, scope: !783)
!3170 = !DILocation(line: 588, column: 13, scope: !784)
!3171 = !DILocation(line: 589, column: 13, scope: !782)
!3172 = !DILocation(line: 589, column: 18, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !781, file: !514, discriminator: 1)
!3174 = !DILocation(line: 589, column: 28, scope: !781)
!3175 = !DILocation(line: 589, column: 58, scope: !781)
!3176 = !DILocation(line: 589, column: 73, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !781, file: !514, line: 589, column: 70)
!3178 = !DILocation(line: 589, column: 90, scope: !3177)
!3179 = !DILocation(line: 589, column: 70, scope: !3177)
!3180 = !DILocation(line: 589, column: 100, scope: !3177)
!3181 = !DILocation(line: 589, column: 70, scope: !781)
!3182 = !DILocation(line: 589, column: 70, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !781, file: !514, discriminator: 2)
!3184 = !DILocation(line: 589, column: 131, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3177, file: !514, discriminator: 3)
!3186 = !DILocation(line: 589, column: 149, scope: !3177)
!3187 = !DILocation(line: 589, column: 159, scope: !3177)
!3188 = !DILocation(line: 589, column: 184, scope: !3177)
!3189 = !DILocation(line: 589, column: 115, scope: !3177)
!3190 = !DILocation(line: 589, column: 203, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !782, file: !514, discriminator: 4)
!3192 = !DILocation(line: 589, column: 203, scope: !781)
!3193 = !DILocation(line: 589, column: 203, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !781, file: !514, discriminator: 5)
!3195 = !DILocation(line: 590, column: 13, scope: !782)
!3196 = !DILocation(line: 593, column: 25, scope: !784)
!3197 = !DILocation(line: 593, column: 31, scope: !784)
!3198 = !DILocation(line: 593, column: 34, scope: !784)
!3199 = !DILocation(line: 593, column: 9, scope: !784)
!3200 = !DILocation(line: 595, column: 5, scope: !784)
!3201 = !DILocation(line: 558, column: 28, scope: !785)
!3202 = !DILocation(line: 558, column: 5, scope: !785)
!3203 = !DILocation(line: 597, column: 12, scope: !760)
!3204 = !DILocation(line: 597, column: 5, scope: !760)
!3205 = !DILocation(line: 598, column: 1, scope: !760)
!3206 = !DILocation(line: 600, column: 47, scope: !787)
!3207 = !DILocation(line: 600, column: 60, scope: !787)
!3208 = !DILocation(line: 600, column: 82, scope: !787)
!3209 = !DILocation(line: 602, column: 5, scope: !787)
!3210 = !DILocation(line: 602, column: 15, scope: !787)
!3211 = !DILocation(line: 603, column: 5, scope: !787)
!3212 = !DILocation(line: 603, column: 15, scope: !787)
!3213 = !DILocation(line: 604, column: 5, scope: !787)
!3214 = !DILocation(line: 604, column: 15, scope: !787)
!3215 = !DILocation(line: 605, column: 5, scope: !787)
!3216 = !DILocation(line: 605, column: 9, scope: !787)
!3217 = !DILocation(line: 608, column: 5, scope: !787)
!3218 = !DILocation(line: 608, column: 22, scope: !787)
!3219 = !DILocation(line: 610, column: 19, scope: !787)
!3220 = !DILocation(line: 610, column: 17, scope: !787)
!3221 = !{!1311, !1311, i64 0}
!3222 = !DILocation(line: 613, column: 44, scope: !787)
!3223 = !DILocation(line: 613, column: 26, scope: !787)
!3224 = !DILocation(line: 613, column: 15, scope: !787)
!3225 = !DILocation(line: 613, column: 13, scope: !787)
!3226 = !DILocation(line: 615, column: 38, scope: !787)
!3227 = !DILocation(line: 615, column: 47, scope: !787)
!3228 = !DILocation(line: 615, column: 53, scope: !787)
!3229 = !DILocation(line: 615, column: 12, scope: !787)
!3230 = !DILocation(line: 615, column: 10, scope: !787)
!3231 = !DILocation(line: 616, column: 9, scope: !803)
!3232 = !DILocation(line: 616, column: 9, scope: !787)
!3233 = !DILocation(line: 617, column: 41, scope: !802)
!3234 = !DILocation(line: 617, column: 50, scope: !802)
!3235 = !DILocation(line: 617, column: 21, scope: !802)
!3236 = !DILocation(line: 617, column: 19, scope: !802)
!3237 = !DILocation(line: 618, column: 9, scope: !802)
!3238 = !DILocation(line: 618, column: 14, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !801, file: !514, discriminator: 1)
!3240 = !DILocation(line: 618, column: 24, scope: !801)
!3241 = !DILocation(line: 618, column: 54, scope: !801)
!3242 = !DILocation(line: 618, column: 69, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !801, file: !514, line: 618, column: 66)
!3244 = !DILocation(line: 618, column: 86, scope: !3243)
!3245 = !DILocation(line: 618, column: 66, scope: !3243)
!3246 = !DILocation(line: 618, column: 96, scope: !3243)
!3247 = !DILocation(line: 618, column: 66, scope: !801)
!3248 = !DILocation(line: 618, column: 66, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !801, file: !514, discriminator: 2)
!3250 = !DILocation(line: 618, column: 127, scope: !3251)
!3251 = !DILexicalBlockFile(scope: !3243, file: !514, discriminator: 3)
!3252 = !DILocation(line: 618, column: 145, scope: !3243)
!3253 = !DILocation(line: 618, column: 155, scope: !3243)
!3254 = !DILocation(line: 618, column: 180, scope: !3243)
!3255 = !DILocation(line: 618, column: 111, scope: !3243)
!3256 = !DILocation(line: 618, column: 199, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !802, file: !514, discriminator: 4)
!3258 = !DILocation(line: 618, column: 199, scope: !801)
!3259 = !DILocation(line: 618, column: 199, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !801, file: !514, discriminator: 5)
!3261 = !DILocation(line: 619, column: 5, scope: !802)
!3262 = !DILocation(line: 621, column: 8, scope: !787)
!3263 = !DILocation(line: 622, column: 9, scope: !807)
!3264 = !DILocation(line: 622, column: 9, scope: !787)
!3265 = !DILocation(line: 623, column: 35, scope: !806)
!3266 = !DILocation(line: 623, column: 44, scope: !806)
!3267 = !DILocation(line: 623, column: 14, scope: !806)
!3268 = !DILocation(line: 623, column: 55, scope: !806)
!3269 = !DILocation(line: 623, column: 12, scope: !806)
!3270 = !DILocation(line: 624, column: 9, scope: !806)
!3271 = !DILocation(line: 624, column: 14, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !805, file: !514, discriminator: 1)
!3273 = !DILocation(line: 624, column: 24, scope: !805)
!3274 = !DILocation(line: 624, column: 54, scope: !805)
!3275 = !DILocation(line: 624, column: 74, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !805, file: !514, line: 624, column: 71)
!3277 = !DILocation(line: 624, column: 91, scope: !3276)
!3278 = !DILocation(line: 624, column: 71, scope: !3276)
!3279 = !DILocation(line: 624, column: 101, scope: !3276)
!3280 = !DILocation(line: 624, column: 71, scope: !805)
!3281 = !DILocation(line: 624, column: 71, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !805, file: !514, discriminator: 2)
!3283 = !DILocation(line: 624, column: 132, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3276, file: !514, discriminator: 3)
!3285 = !DILocation(line: 624, column: 150, scope: !3276)
!3286 = !DILocation(line: 624, column: 160, scope: !3276)
!3287 = !DILocation(line: 624, column: 185, scope: !3276)
!3288 = !DILocation(line: 624, column: 116, scope: !3276)
!3289 = !DILocation(line: 624, column: 204, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !806, file: !514, discriminator: 4)
!3291 = !DILocation(line: 624, column: 204, scope: !805)
!3292 = !DILocation(line: 624, column: 204, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !805, file: !514, discriminator: 5)
!3294 = !DILocation(line: 625, column: 5, scope: !806)
!3295 = !DILocation(line: 626, column: 10, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !787, file: !514, line: 626, column: 9)
!3297 = !DILocation(line: 626, column: 9, scope: !787)
!3298 = !DILocation(line: 627, column: 13, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !514, line: 627, column: 13)
!3300 = distinct !DILexicalBlock(scope: !3296, file: !514, line: 626, column: 14)
!3301 = !DILocation(line: 627, column: 13, scope: !3300)
!3302 = !DILocation(line: 628, column: 13, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !514, line: 627, column: 42)
!3304 = !DILocation(line: 629, column: 9, scope: !3303)
!3305 = !DILocation(line: 630, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3299, file: !514, line: 629, column: 16)
!3307 = !DILocation(line: 632, column: 31, scope: !3300)
!3308 = !DILocation(line: 632, column: 9, scope: !3300)
!3309 = !DILocation(line: 633, column: 5, scope: !3300)
!3310 = !DILocation(line: 636, column: 24, scope: !787)
!3311 = !DILocation(line: 636, column: 5, scope: !787)
!3312 = !DILocation(line: 638, column: 1, scope: !787)
!3313 = !DILocation(line: 508, column: 39, scope: !971)
!3314 = !DILocation(line: 508, column: 58, scope: !971)
!3315 = !DILocation(line: 510, column: 9, scope: !980)
!3316 = !DILocation(line: 510, column: 16, scope: !980)
!3317 = !DILocation(line: 510, column: 9, scope: !971)
!3318 = !DILocation(line: 511, column: 29, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !980, file: !514, line: 510, column: 38)
!3320 = !DILocation(line: 511, column: 9, scope: !3319)
!3321 = !DILocation(line: 512, column: 5, scope: !3319)
!3322 = !DILocation(line: 512, column: 33, scope: !979)
!3323 = !DILocation(line: 512, column: 43, scope: !979)
!3324 = !DILocation(line: 512, column: 54, scope: !979)
!3325 = !{!1448, !1352, i64 168}
!3326 = !DILocation(line: 512, column: 63, scope: !979)
!3327 = !DILocation(line: 512, column: 80, scope: !979)
!3328 = !DILocation(line: 512, column: 16, scope: !980)
!3329 = !DILocation(line: 513, column: 9, scope: !978)
!3330 = !DILocation(line: 513, column: 22, scope: !978)
!3331 = !DILocation(line: 513, column: 54, scope: !978)
!3332 = !DILocation(line: 513, column: 30, scope: !978)
!3333 = !{!3334, !3334, i64 0}
!3334 = !{!"long long", !1311, i64 0}
!3335 = !DILocation(line: 514, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !978, file: !514, line: 514, column: 13)
!3337 = !DILocation(line: 514, column: 19, scope: !3336)
!3338 = !DILocation(line: 514, column: 25, scope: !3336)
!3339 = !DILocation(line: 514, column: 28, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !3336, file: !514, discriminator: 1)
!3341 = !DILocation(line: 514, column: 13, scope: !978)
!3342 = !DILocation(line: 515, column: 13, scope: !3336)
!3343 = !DILocation(line: 516, column: 30, scope: !978)
!3344 = !DILocation(line: 516, column: 39, scope: !978)
!3345 = !DILocation(line: 516, column: 9, scope: !978)
!3346 = !DILocation(line: 517, column: 5, scope: !979)
!3347 = !DILocation(line: 517, column: 5, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !979, file: !514, discriminator: 1)
!3349 = !DILocation(line: 517, column: 5, scope: !978)
!3350 = !DILocation(line: 517, column: 31, scope: !986)
!3351 = !DILocation(line: 517, column: 41, scope: !986)
!3352 = !DILocation(line: 517, column: 50, scope: !986)
!3353 = !DILocation(line: 517, column: 69, scope: !986)
!3354 = !DILocation(line: 517, column: 103, scope: !3355)
!3355 = !DILexicalBlockFile(scope: !986, file: !514, discriminator: 2)
!3356 = !DILocation(line: 517, column: 113, scope: !986)
!3357 = !DILocation(line: 517, column: 72, scope: !986)
!3358 = !DILocation(line: 517, column: 16, scope: !979)
!3359 = !DILocation(line: 518, column: 31, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !986, file: !514, line: 517, column: 142)
!3361 = !DILocation(line: 518, column: 57, scope: !3360)
!3362 = !DILocation(line: 518, column: 40, scope: !3360)
!3363 = !DILocation(line: 518, column: 9, scope: !3360)
!3364 = !DILocation(line: 519, column: 5, scope: !3360)
!3365 = !DILocation(line: 519, column: 33, scope: !985)
!3366 = !DILocation(line: 519, column: 43, scope: !985)
!3367 = !DILocation(line: 519, column: 54, scope: !985)
!3368 = !DILocation(line: 519, column: 63, scope: !985)
!3369 = !DILocation(line: 519, column: 80, scope: !985)
!3370 = !DILocation(line: 519, column: 16, scope: !986)
!3371 = !DILocation(line: 520, column: 9, scope: !984)
!3372 = !DILocation(line: 520, column: 21, scope: !984)
!3373 = !DILocation(line: 520, column: 44, scope: !984)
!3374 = !DILocation(line: 520, column: 27, scope: !984)
!3375 = !DILocation(line: 521, column: 13, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !984, file: !514, line: 521, column: 13)
!3377 = !DILocation(line: 521, column: 17, scope: !3376)
!3378 = !DILocation(line: 521, column: 13, scope: !984)
!3379 = !DILocation(line: 522, column: 13, scope: !3376)
!3380 = !DILocation(line: 523, column: 29, scope: !984)
!3381 = !DILocation(line: 523, column: 38, scope: !984)
!3382 = !DILocation(line: 523, column: 9, scope: !984)
!3383 = !DILocation(line: 524, column: 5, scope: !985)
!3384 = !DILocation(line: 524, column: 5, scope: !3385)
!3385 = !DILexicalBlockFile(scope: !985, file: !514, discriminator: 1)
!3386 = !DILocation(line: 524, column: 5, scope: !984)
!3387 = !DILocation(line: 524, column: 19, scope: !989)
!3388 = !DILocation(line: 524, column: 28, scope: !989)
!3389 = !DILocation(line: 524, column: 37, scope: !989)
!3390 = !{!1448, !1310, i64 160}
!3391 = !DILocation(line: 524, column: 50, scope: !989)
!3392 = !DILocation(line: 524, column: 65, scope: !989)
!3393 = !DILocation(line: 524, column: 70, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !989, file: !514, discriminator: 2)
!3395 = !DILocation(line: 524, column: 79, scope: !989)
!3396 = !DILocation(line: 524, column: 88, scope: !989)
!3397 = !DILocation(line: 524, column: 102, scope: !989)
!3398 = !{!3399, !1310, i64 0}
!3399 = !{!"", !1310, i64 0, !1310, i64 8}
!3400 = !DILocation(line: 524, column: 115, scope: !989)
!3401 = !DILocation(line: 524, column: 16, scope: !985)
!3402 = !DILocation(line: 525, column: 9, scope: !988)
!3403 = !DILocation(line: 525, column: 21, scope: !988)
!3404 = !DILocation(line: 526, column: 9, scope: !988)
!3405 = !DILocation(line: 526, column: 20, scope: !988)
!3406 = !DILocation(line: 527, column: 35, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !988, file: !514, line: 527, column: 13)
!3408 = !DILocation(line: 527, column: 13, scope: !3407)
!3409 = !DILocation(line: 527, column: 61, scope: !3407)
!3410 = !DILocation(line: 527, column: 13, scope: !988)
!3411 = !DILocation(line: 528, column: 29, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !514, line: 527, column: 67)
!3413 = !DILocation(line: 528, column: 13, scope: !3412)
!3414 = !DILocation(line: 530, column: 13, scope: !3412)
!3415 = !DILocation(line: 532, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !988, file: !514, line: 532, column: 13)
!3417 = !DILocation(line: 532, column: 20, scope: !3416)
!3418 = !DILocation(line: 532, column: 13, scope: !988)
!3419 = !DILocation(line: 533, column: 29, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3416, file: !514, line: 532, column: 34)
!3421 = !DILocation(line: 533, column: 13, scope: !3420)
!3422 = !DILocation(line: 535, column: 13, scope: !3420)
!3423 = !DILocation(line: 537, column: 29, scope: !988)
!3424 = !DILocation(line: 537, column: 38, scope: !988)
!3425 = !DILocation(line: 537, column: 51, scope: !988)
!3426 = !DILocation(line: 537, column: 46, scope: !988)
!3427 = !DILocation(line: 537, column: 9, scope: !988)
!3428 = !DILocation(line: 538, column: 5, scope: !989)
!3429 = !DILocation(line: 538, column: 5, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !989, file: !514, discriminator: 1)
!3431 = !DILocation(line: 538, column: 5, scope: !988)
!3432 = !DILocation(line: 539, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !989, file: !514, line: 538, column: 12)
!3434 = !DILocation(line: 541, column: 5, scope: !971)
!3435 = !DILocation(line: 542, column: 1, scope: !971)
!3436 = !DILocation(line: 50, column: 52, scope: !991)
!3437 = !DILocation(line: 50, column: 69, scope: !991)
!3438 = !DILocation(line: 50, column: 81, scope: !991)
!3439 = !DILocation(line: 56, column: 26, scope: !991)
!3440 = !DILocation(line: 56, column: 31, scope: !991)
!3441 = !DILocation(line: 56, column: 39, scope: !991)
!3442 = !DILocation(line: 56, column: 5, scope: !991)
!3443 = !DILocation(line: 60, column: 1, scope: !991)
!3444 = !DILocation(line: 704, column: 48, scope: !808)
!3445 = !DILocation(line: 706, column: 5, scope: !808)
!3446 = !DILocation(line: 706, column: 15, scope: !808)
!3447 = !DILocation(line: 707, column: 5, scope: !808)
!3448 = !DILocation(line: 707, column: 16, scope: !808)
!3449 = !DILocation(line: 709, column: 5, scope: !808)
!3450 = !DILocation(line: 709, column: 9, scope: !808)
!3451 = !DILocation(line: 710, column: 5, scope: !808)
!3452 = !DILocation(line: 710, column: 15, scope: !808)
!3453 = !DILocation(line: 710, column: 27, scope: !808)
!3454 = !DILocation(line: 710, column: 35, scope: !808)
!3455 = !DILocation(line: 711, column: 5, scope: !808)
!3456 = !DILocation(line: 711, column: 9, scope: !808)
!3457 = !DILocation(line: 714, column: 5, scope: !808)
!3458 = !DILocation(line: 714, column: 22, scope: !808)
!3459 = !DILocation(line: 716, column: 19, scope: !808)
!3460 = !DILocation(line: 716, column: 17, scope: !808)
!3461 = !DILocation(line: 719, column: 64, scope: !808)
!3462 = !DILocation(line: 719, column: 38, scope: !808)
!3463 = !DILocation(line: 719, column: 26, scope: !808)
!3464 = !DILocation(line: 719, column: 24, scope: !808)
!3465 = !DILocation(line: 720, column: 11, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !808, file: !514, line: 720, column: 9)
!3467 = !DILocation(line: 720, column: 10, scope: !3466)
!3468 = !DILocation(line: 720, column: 9, scope: !808)
!3469 = !DILocation(line: 724, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3466, file: !514, line: 720, column: 31)
!3471 = !DILocation(line: 728, column: 5, scope: !808)
!3472 = !DILocation(line: 729, column: 13, scope: !808)
!3473 = !DILocation(line: 731, column: 47, scope: !808)
!3474 = !DILocation(line: 731, column: 46, scope: !808)
!3475 = !DILocation(line: 731, column: 23, scope: !808)
!3476 = !DILocation(line: 731, column: 21, scope: !808)
!3477 = !DILocation(line: 733, column: 5, scope: !808)
!3478 = !DILocation(line: 733, column: 10, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !822, file: !514, discriminator: 1)
!3480 = !DILocation(line: 733, column: 20, scope: !822)
!3481 = !DILocation(line: 733, column: 51, scope: !822)
!3482 = !DILocation(line: 733, column: 50, scope: !822)
!3483 = !DILocation(line: 733, column: 80, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !822, file: !514, line: 733, column: 77)
!3485 = !DILocation(line: 733, column: 97, scope: !3484)
!3486 = !DILocation(line: 733, column: 77, scope: !3484)
!3487 = !DILocation(line: 733, column: 107, scope: !3484)
!3488 = !DILocation(line: 733, column: 77, scope: !822)
!3489 = !DILocation(line: 733, column: 77, scope: !3490)
!3490 = !DILexicalBlockFile(scope: !822, file: !514, discriminator: 2)
!3491 = !DILocation(line: 733, column: 138, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3484, file: !514, discriminator: 3)
!3493 = !DILocation(line: 733, column: 156, scope: !3484)
!3494 = !DILocation(line: 733, column: 166, scope: !3484)
!3495 = !DILocation(line: 733, column: 191, scope: !3484)
!3496 = !DILocation(line: 733, column: 122, scope: !3484)
!3497 = !DILocation(line: 733, column: 210, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !808, file: !514, discriminator: 4)
!3499 = !DILocation(line: 733, column: 210, scope: !822)
!3500 = !DILocation(line: 733, column: 210, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !822, file: !514, discriminator: 5)
!3502 = !DILocation(line: 735, column: 8, scope: !808)
!3503 = !DILocation(line: 736, column: 9, scope: !826)
!3504 = !DILocation(line: 736, column: 9, scope: !808)
!3505 = !DILocation(line: 737, column: 35, scope: !825)
!3506 = !DILocation(line: 737, column: 44, scope: !825)
!3507 = !DILocation(line: 737, column: 14, scope: !825)
!3508 = !DILocation(line: 737, column: 61, scope: !825)
!3509 = !DILocation(line: 737, column: 12, scope: !825)
!3510 = !DILocation(line: 738, column: 9, scope: !825)
!3511 = !DILocation(line: 738, column: 14, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !824, file: !514, discriminator: 1)
!3513 = !DILocation(line: 738, column: 24, scope: !824)
!3514 = !DILocation(line: 738, column: 54, scope: !824)
!3515 = !DILocation(line: 738, column: 80, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !824, file: !514, line: 738, column: 77)
!3517 = !DILocation(line: 738, column: 97, scope: !3516)
!3518 = !DILocation(line: 738, column: 77, scope: !3516)
!3519 = !DILocation(line: 738, column: 107, scope: !3516)
!3520 = !DILocation(line: 738, column: 77, scope: !824)
!3521 = !DILocation(line: 738, column: 77, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !824, file: !514, discriminator: 2)
!3523 = !DILocation(line: 738, column: 138, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3516, file: !514, discriminator: 3)
!3525 = !DILocation(line: 738, column: 156, scope: !3516)
!3526 = !DILocation(line: 738, column: 166, scope: !3516)
!3527 = !DILocation(line: 738, column: 191, scope: !3516)
!3528 = !DILocation(line: 738, column: 122, scope: !3516)
!3529 = !DILocation(line: 738, column: 210, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !825, file: !514, discriminator: 4)
!3531 = !DILocation(line: 738, column: 210, scope: !824)
!3532 = !DILocation(line: 738, column: 210, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !824, file: !514, discriminator: 5)
!3534 = !DILocation(line: 739, column: 5, scope: !825)
!3535 = !DILocation(line: 740, column: 10, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !808, file: !514, line: 740, column: 9)
!3537 = !DILocation(line: 740, column: 9, scope: !808)
!3538 = !DILocation(line: 741, column: 13, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !514, line: 741, column: 13)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !514, line: 740, column: 14)
!3541 = !DILocation(line: 741, column: 13, scope: !3540)
!3542 = !DILocation(line: 742, column: 13, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3539, file: !514, line: 741, column: 42)
!3544 = !DILocation(line: 743, column: 9, scope: !3543)
!3545 = !DILocation(line: 744, column: 13, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3539, file: !514, line: 743, column: 16)
!3547 = !DILocation(line: 746, column: 31, scope: !3540)
!3548 = !DILocation(line: 746, column: 9, scope: !3540)
!3549 = !DILocation(line: 752, column: 5, scope: !3540)
!3550 = !DILocation(line: 754, column: 9, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !808, file: !514, line: 754, column: 9)
!3552 = !DILocation(line: 754, column: 9, scope: !808)
!3553 = !DILocation(line: 757, column: 23, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !514, line: 754, column: 18)
!3555 = !DILocation(line: 757, column: 34, scope: !3554)
!3556 = !DILocation(line: 757, column: 41, scope: !3554)
!3557 = !DILocation(line: 757, column: 9, scope: !3554)
!3558 = !DILocation(line: 758, column: 5, scope: !3554)
!3559 = !DILocation(line: 754, column: 9, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3551, file: !514, discriminator: 1)
!3561 = !DILocation(line: 762, column: 24, scope: !808)
!3562 = !DILocation(line: 762, column: 5, scope: !808)
!3563 = !DILocation(line: 767, column: 1, scope: !808)
!3564 = !DILocation(line: 833, column: 68, scope: !827)
!3565 = !DILocation(line: 833, column: 84, scope: !827)
!3566 = !DILocation(line: 833, column: 100, scope: !827)
!3567 = !DILocation(line: 837, column: 5, scope: !827)
!3568 = !DILocation(line: 837, column: 15, scope: !827)
!3569 = !DILocation(line: 838, column: 5, scope: !827)
!3570 = !DILocation(line: 838, column: 11, scope: !827)
!3571 = !DILocation(line: 839, column: 5, scope: !827)
!3572 = !DILocation(line: 839, column: 9, scope: !827)
!3573 = !DILocation(line: 840, column: 5, scope: !827)
!3574 = !DILocation(line: 840, column: 9, scope: !827)
!3575 = !DILocation(line: 842, column: 32, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !827, file: !514, line: 842, column: 9)
!3577 = !DILocation(line: 842, column: 10, scope: !3576)
!3578 = !DILocation(line: 842, column: 38, scope: !3576)
!3579 = !DILocation(line: 842, column: 68, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3576, file: !514, discriminator: 1)
!3581 = !DILocation(line: 842, column: 42, scope: !3576)
!3582 = !DILocation(line: 842, column: 9, scope: !827)
!3583 = !DILocation(line: 843, column: 9, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3576, file: !514, line: 842, column: 75)
!3585 = !DILocation(line: 846, column: 38, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !827, file: !514, line: 846, column: 9)
!3587 = !DILocation(line: 846, column: 44, scope: !3586)
!3588 = !DILocation(line: 846, column: 10, scope: !3586)
!3589 = !DILocation(line: 846, column: 9, scope: !827)
!3590 = !DILocation(line: 849, column: 9, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3586, file: !514, line: 848, column: 5)
!3592 = !DILocation(line: 852, column: 34, scope: !827)
!3593 = !DILocation(line: 852, column: 40, scope: !827)
!3594 = !DILocation(line: 852, column: 44, scope: !827)
!3595 = !DILocation(line: 852, column: 50, scope: !827)
!3596 = !DILocation(line: 852, column: 66, scope: !827)
!3597 = !DILocation(line: 852, column: 59, scope: !827)
!3598 = !DILocation(line: 852, column: 10, scope: !827)
!3599 = !DILocation(line: 852, column: 8, scope: !827)
!3600 = !DILocation(line: 854, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !827, file: !514, line: 854, column: 9)
!3602 = !DILocation(line: 854, column: 12, scope: !3601)
!3603 = !DILocation(line: 854, column: 9, scope: !827)
!3604 = !DILocation(line: 856, column: 25, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !514, line: 854, column: 18)
!3606 = !DILocation(line: 856, column: 9, scope: !3605)
!3607 = !DILocation(line: 857, column: 9, scope: !3605)
!3608 = !DILocation(line: 859, column: 28, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !514, line: 859, column: 13)
!3610 = distinct !DILexicalBlock(scope: !3601, file: !514, line: 858, column: 12)
!3611 = !DILocation(line: 859, column: 34, scope: !3609)
!3612 = !DILocation(line: 859, column: 53, scope: !3609)
!3613 = !DILocation(line: 859, column: 13, scope: !3609)
!3614 = !DILocation(line: 859, column: 78, scope: !3609)
!3615 = !DILocation(line: 859, column: 13, scope: !3610)
!3616 = !DILocation(line: 860, column: 13, scope: !3609)
!3617 = !DILocation(line: 862, column: 55, scope: !3610)
!3618 = !DILocation(line: 863, column: 9, scope: !3610)
!3619 = !DILocation(line: 865, column: 1, scope: !827)
!3620 = !DILocation(line: 867, column: 69, scope: !836)
!3621 = !DILocation(line: 867, column: 85, scope: !836)
!3622 = !DILocation(line: 867, column: 101, scope: !836)
!3623 = !DILocation(line: 869, column: 5, scope: !836)
!3624 = !DILocation(line: 869, column: 15, scope: !836)
!3625 = !DILocation(line: 871, column: 5, scope: !836)
!3626 = !DILocation(line: 871, column: 9, scope: !836)
!3627 = !DILocation(line: 872, column: 5, scope: !836)
!3628 = !DILocation(line: 872, column: 11, scope: !836)
!3629 = !DILocation(line: 874, column: 5, scope: !836)
!3630 = !DILocation(line: 874, column: 9, scope: !836)
!3631 = !DILocation(line: 876, column: 32, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !836, file: !514, line: 876, column: 9)
!3633 = !DILocation(line: 876, column: 10, scope: !3632)
!3634 = !DILocation(line: 876, column: 38, scope: !3632)
!3635 = !DILocation(line: 876, column: 68, scope: !3636)
!3636 = !DILexicalBlockFile(scope: !3632, file: !514, discriminator: 1)
!3637 = !DILocation(line: 876, column: 42, scope: !3632)
!3638 = !DILocation(line: 876, column: 9, scope: !836)
!3639 = !DILocation(line: 877, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3632, file: !514, line: 876, column: 75)
!3641 = !DILocation(line: 880, column: 38, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !836, file: !514, line: 880, column: 9)
!3643 = !DILocation(line: 880, column: 44, scope: !3642)
!3644 = !DILocation(line: 880, column: 10, scope: !3642)
!3645 = !DILocation(line: 880, column: 9, scope: !836)
!3646 = !DILocation(line: 882, column: 9, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !514, line: 881, column: 81)
!3648 = !DILocation(line: 885, column: 34, scope: !836)
!3649 = !DILocation(line: 885, column: 40, scope: !836)
!3650 = !DILocation(line: 885, column: 44, scope: !836)
!3651 = !DILocation(line: 885, column: 50, scope: !836)
!3652 = !DILocation(line: 885, column: 67, scope: !836)
!3653 = !DILocation(line: 885, column: 60, scope: !836)
!3654 = !DILocation(line: 885, column: 10, scope: !836)
!3655 = !DILocation(line: 885, column: 8, scope: !836)
!3656 = !DILocation(line: 886, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !836, file: !514, line: 886, column: 9)
!3658 = !DILocation(line: 886, column: 12, scope: !3657)
!3659 = !DILocation(line: 886, column: 9, scope: !836)
!3660 = !DILocation(line: 888, column: 25, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3657, file: !514, line: 886, column: 18)
!3662 = !DILocation(line: 888, column: 9, scope: !3661)
!3663 = !DILocation(line: 889, column: 9, scope: !3661)
!3664 = !DILocation(line: 891, column: 28, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !514, line: 891, column: 13)
!3666 = distinct !DILexicalBlock(scope: !3657, file: !514, line: 890, column: 12)
!3667 = !DILocation(line: 891, column: 34, scope: !3665)
!3668 = !DILocation(line: 891, column: 53, scope: !3665)
!3669 = !DILocation(line: 891, column: 13, scope: !3665)
!3670 = !DILocation(line: 891, column: 89, scope: !3665)
!3671 = !DILocation(line: 891, column: 13, scope: !3666)
!3672 = !DILocation(line: 892, column: 13, scope: !3665)
!3673 = !DILocation(line: 894, column: 55, scope: !3666)
!3674 = !DILocation(line: 895, column: 9, scope: !3666)
!3675 = !DILocation(line: 897, column: 1, scope: !836)
!3676 = !DILocation(line: 640, column: 54, scope: !1015)
!3677 = !DILocation(line: 640, column: 67, scope: !1015)
!3678 = !DILocation(line: 640, column: 89, scope: !1015)
!3679 = !DILocation(line: 642, column: 5, scope: !1015)
!3680 = !DILocation(line: 642, column: 15, scope: !1015)
!3681 = !DILocation(line: 643, column: 5, scope: !1015)
!3682 = !DILocation(line: 643, column: 15, scope: !1015)
!3683 = !DILocation(line: 644, column: 5, scope: !1015)
!3684 = !DILocation(line: 644, column: 15, scope: !1015)
!3685 = !DILocation(line: 645, column: 5, scope: !1015)
!3686 = !DILocation(line: 645, column: 16, scope: !1015)
!3687 = !DILocation(line: 646, column: 5, scope: !1015)
!3688 = !DILocation(line: 646, column: 15, scope: !1015)
!3689 = !DILocation(line: 649, column: 5, scope: !1015)
!3690 = !DILocation(line: 649, column: 22, scope: !1015)
!3691 = !DILocation(line: 651, column: 19, scope: !1015)
!3692 = !DILocation(line: 651, column: 17, scope: !1015)
!3693 = !DILocation(line: 654, column: 52, scope: !1015)
!3694 = !DILocation(line: 654, column: 34, scope: !1015)
!3695 = !DILocation(line: 654, column: 23, scope: !1015)
!3696 = !DILocation(line: 654, column: 21, scope: !1015)
!3697 = !DILocation(line: 656, column: 64, scope: !1015)
!3698 = !DILocation(line: 656, column: 38, scope: !1015)
!3699 = !DILocation(line: 656, column: 26, scope: !1015)
!3700 = !DILocation(line: 656, column: 24, scope: !1015)
!3701 = !DILocation(line: 658, column: 10, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 658, column: 9)
!3703 = !DILocation(line: 658, column: 9, scope: !3702)
!3704 = !DILocation(line: 658, column: 29, scope: !3702)
!3705 = !DILocation(line: 658, column: 9, scope: !1015)
!3706 = !DILocation(line: 659, column: 53, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3702, file: !514, line: 658, column: 35)
!3708 = !DILocation(line: 659, column: 31, scope: !3707)
!3709 = !DILocation(line: 659, column: 10, scope: !3707)
!3710 = !DILocation(line: 659, column: 29, scope: !3707)
!3711 = !DILocation(line: 661, column: 13, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3707, file: !514, line: 661, column: 13)
!3713 = !DILocation(line: 661, column: 13, scope: !3707)
!3714 = !DILocation(line: 662, column: 14, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !514, line: 661, column: 31)
!3716 = !DILocation(line: 662, column: 33, scope: !3715)
!3717 = !DILocation(line: 663, column: 17, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !514, line: 663, column: 17)
!3719 = !DILocation(line: 663, column: 17, scope: !3715)
!3720 = !DILocation(line: 664, column: 17, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !514, line: 663, column: 46)
!3722 = !DILocation(line: 665, column: 13, scope: !3721)
!3723 = !DILocation(line: 666, column: 17, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3718, file: !514, line: 665, column: 20)
!3725 = !DILocation(line: 668, column: 35, scope: !3715)
!3726 = !DILocation(line: 668, column: 13, scope: !3715)
!3727 = !DILocation(line: 669, column: 13, scope: !3715)
!3728 = !DILocation(line: 671, column: 5, scope: !3707)
!3729 = !DILocation(line: 673, column: 42, scope: !1015)
!3730 = !DILocation(line: 673, column: 41, scope: !1015)
!3731 = !DILocation(line: 673, column: 18, scope: !1015)
!3732 = !DILocation(line: 673, column: 16, scope: !1015)
!3733 = !DILocation(line: 674, column: 10, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 674, column: 9)
!3735 = !DILocation(line: 674, column: 9, scope: !1015)
!3736 = !DILocation(line: 675, column: 9, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !514, line: 674, column: 22)
!3738 = !DILocation(line: 678, column: 38, scope: !1015)
!3739 = !DILocation(line: 678, column: 47, scope: !1015)
!3740 = !DILocation(line: 678, column: 53, scope: !1015)
!3741 = !DILocation(line: 678, column: 12, scope: !1015)
!3742 = !DILocation(line: 678, column: 10, scope: !1015)
!3743 = !DILocation(line: 679, column: 10, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 679, column: 9)
!3745 = !DILocation(line: 679, column: 9, scope: !1015)
!3746 = !DILocation(line: 680, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3744, file: !514, line: 679, column: 16)
!3748 = !DILocation(line: 683, column: 43, scope: !1015)
!3749 = !DILocation(line: 683, column: 55, scope: !1015)
!3750 = !DILocation(line: 683, column: 23, scope: !1015)
!3751 = !DILocation(line: 683, column: 21, scope: !1015)
!3752 = !DILocation(line: 684, column: 5, scope: !1015)
!3753 = !DILocation(line: 684, column: 10, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !1027, file: !514, discriminator: 1)
!3755 = !DILocation(line: 684, column: 20, scope: !1027)
!3756 = !DILocation(line: 684, column: 50, scope: !1027)
!3757 = !DILocation(line: 684, column: 65, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !1027, file: !514, line: 684, column: 62)
!3759 = !DILocation(line: 684, column: 82, scope: !3758)
!3760 = !DILocation(line: 684, column: 62, scope: !3758)
!3761 = !DILocation(line: 684, column: 92, scope: !3758)
!3762 = !DILocation(line: 684, column: 62, scope: !1027)
!3763 = !DILocation(line: 684, column: 62, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !1027, file: !514, discriminator: 2)
!3765 = !DILocation(line: 684, column: 123, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3758, file: !514, discriminator: 3)
!3767 = !DILocation(line: 684, column: 141, scope: !3758)
!3768 = !DILocation(line: 684, column: 151, scope: !3758)
!3769 = !DILocation(line: 684, column: 176, scope: !3758)
!3770 = !DILocation(line: 684, column: 107, scope: !3758)
!3771 = !DILocation(line: 684, column: 195, scope: !3772)
!3772 = !DILexicalBlockFile(scope: !1015, file: !514, discriminator: 4)
!3773 = !DILocation(line: 684, column: 195, scope: !1027)
!3774 = !DILocation(line: 684, column: 195, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !1027, file: !514, discriminator: 5)
!3776 = !DILocation(line: 686, column: 10, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !1015, file: !514, line: 686, column: 9)
!3778 = !DILocation(line: 686, column: 9, scope: !1015)
!3779 = !DILocation(line: 687, column: 13, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !514, line: 687, column: 13)
!3781 = distinct !DILexicalBlock(scope: !3777, file: !514, line: 686, column: 27)
!3782 = !DILocation(line: 687, column: 13, scope: !3781)
!3783 = !DILocation(line: 688, column: 13, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3780, file: !514, line: 687, column: 42)
!3785 = !DILocation(line: 689, column: 9, scope: !3784)
!3786 = !DILocation(line: 690, column: 13, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3780, file: !514, line: 689, column: 16)
!3788 = !DILocation(line: 692, column: 31, scope: !3781)
!3789 = !DILocation(line: 692, column: 9, scope: !3781)
!3790 = !DILocation(line: 693, column: 5, scope: !3781)
!3791 = !DILocation(line: 686, column: 10, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3777, file: !514, discriminator: 1)
!3793 = !DILocation(line: 696, column: 5, scope: !1015)
!3794 = !DILocation(line: 696, column: 10, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !1029, file: !514, discriminator: 1)
!3796 = !DILocation(line: 696, column: 20, scope: !1029)
!3797 = !DILocation(line: 696, column: 51, scope: !1029)
!3798 = !DILocation(line: 696, column: 68, scope: !1032)
!3799 = !DILocation(line: 696, column: 84, scope: !1032)
!3800 = !DILocation(line: 696, column: 68, scope: !1029)
!3801 = !DILocation(line: 696, column: 99, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !1032, file: !514, discriminator: 2)
!3803 = !DILocation(line: 696, column: 104, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !1031, file: !514, discriminator: 4)
!3805 = !DILocation(line: 696, column: 114, scope: !1031)
!3806 = !DILocation(line: 696, column: 144, scope: !1031)
!3807 = !DILocation(line: 696, column: 170, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !1031, file: !514, line: 696, column: 167)
!3809 = !DILocation(line: 696, column: 187, scope: !3808)
!3810 = !DILocation(line: 696, column: 167, scope: !3808)
!3811 = !DILocation(line: 696, column: 197, scope: !3808)
!3812 = !DILocation(line: 696, column: 167, scope: !1031)
!3813 = !DILocation(line: 696, column: 167, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !1031, file: !514, discriminator: 5)
!3815 = !DILocation(line: 696, column: 228, scope: !3816)
!3816 = !DILexicalBlockFile(scope: !3808, file: !514, discriminator: 6)
!3817 = !DILocation(line: 696, column: 246, scope: !3808)
!3818 = !DILocation(line: 696, column: 256, scope: !3808)
!3819 = !DILocation(line: 696, column: 281, scope: !3808)
!3820 = !DILocation(line: 696, column: 212, scope: !3808)
!3821 = !DILocation(line: 696, column: 300, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !1032, file: !514, discriminator: 7)
!3823 = !DILocation(line: 696, column: 300, scope: !1031)
!3824 = !DILocation(line: 696, column: 300, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !1031, file: !514, discriminator: 8)
!3826 = !DILocation(line: 696, column: 300, scope: !3827)
!3827 = !DILexicalBlockFile(scope: !1031, file: !514, discriminator: 9)
!3828 = !DILocation(line: 696, column: 313, scope: !3829)
!3829 = !DILexicalBlockFile(scope: !3830, file: !514, discriminator: 10)
!3830 = !DILexicalBlockFile(scope: !1015, file: !514, discriminator: 3)
!3831 = !DILocation(line: 696, column: 313, scope: !1029)
!3832 = !DILocation(line: 696, column: 313, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !1029, file: !514, discriminator: 11)
!3834 = !DILocation(line: 697, column: 5, scope: !1015)
!3835 = !DILocation(line: 697, column: 10, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !1034, file: !514, discriminator: 1)
!3837 = !DILocation(line: 697, column: 20, scope: !1034)
!3838 = !DILocation(line: 697, column: 51, scope: !1034)
!3839 = !DILocation(line: 697, column: 73, scope: !1037)
!3840 = !DILocation(line: 697, column: 89, scope: !1037)
!3841 = !DILocation(line: 697, column: 73, scope: !1034)
!3842 = !DILocation(line: 697, column: 104, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !1037, file: !514, discriminator: 2)
!3844 = !DILocation(line: 697, column: 109, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !1036, file: !514, discriminator: 4)
!3846 = !DILocation(line: 697, column: 119, scope: !1036)
!3847 = !DILocation(line: 697, column: 149, scope: !1036)
!3848 = !DILocation(line: 697, column: 175, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !1036, file: !514, line: 697, column: 172)
!3850 = !DILocation(line: 697, column: 192, scope: !3849)
!3851 = !DILocation(line: 697, column: 172, scope: !3849)
!3852 = !DILocation(line: 697, column: 202, scope: !3849)
!3853 = !DILocation(line: 697, column: 172, scope: !1036)
!3854 = !DILocation(line: 697, column: 172, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !1036, file: !514, discriminator: 5)
!3856 = !DILocation(line: 697, column: 233, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3849, file: !514, discriminator: 6)
!3858 = !DILocation(line: 697, column: 251, scope: !3849)
!3859 = !DILocation(line: 697, column: 261, scope: !3849)
!3860 = !DILocation(line: 697, column: 286, scope: !3849)
!3861 = !DILocation(line: 697, column: 217, scope: !3849)
!3862 = !DILocation(line: 697, column: 305, scope: !3863)
!3863 = !DILexicalBlockFile(scope: !1037, file: !514, discriminator: 7)
!3864 = !DILocation(line: 697, column: 305, scope: !1036)
!3865 = !DILocation(line: 697, column: 305, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !1036, file: !514, discriminator: 8)
!3867 = !DILocation(line: 697, column: 305, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !1036, file: !514, discriminator: 9)
!3869 = !DILocation(line: 697, column: 318, scope: !3829)
!3870 = !DILocation(line: 697, column: 318, scope: !1034)
!3871 = !DILocation(line: 697, column: 318, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !1034, file: !514, discriminator: 11)
!3873 = !DILocation(line: 700, column: 24, scope: !1015)
!3874 = !DILocation(line: 700, column: 5, scope: !1015)
!3875 = !DILocation(line: 702, column: 1, scope: !1015)
!3876 = !DILocation(line: 1232, column: 57, scope: !848)
!3877 = !DILocation(line: 1232, column: 73, scope: !848)
!3878 = !DILocation(line: 1232, column: 89, scope: !848)
!3879 = !DILocation(line: 1234, column: 5, scope: !848)
!3880 = !DILocation(line: 1234, column: 15, scope: !848)
!3881 = !DILocation(line: 1235, column: 5, scope: !848)
!3882 = !DILocation(line: 1235, column: 25, scope: !848)
!3883 = !DILocation(line: 1236, column: 5, scope: !848)
!3884 = !DILocation(line: 1236, column: 15, scope: !848)
!3885 = !DILocation(line: 1237, column: 5, scope: !848)
!3886 = !DILocation(line: 1237, column: 9, scope: !848)
!3887 = !DILocation(line: 1239, column: 32, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1239, column: 9)
!3889 = !DILocation(line: 1239, column: 10, scope: !3888)
!3890 = !DILocation(line: 1239, column: 38, scope: !3888)
!3891 = !DILocation(line: 1239, column: 68, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !3888, file: !514, discriminator: 1)
!3893 = !DILocation(line: 1239, column: 42, scope: !3888)
!3894 = !DILocation(line: 1239, column: 9, scope: !848)
!3895 = !DILocation(line: 1240, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3888, file: !514, line: 1239, column: 75)
!3897 = !DILocation(line: 1243, column: 27, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1243, column: 9)
!3899 = !DILocation(line: 1243, column: 10, scope: !3898)
!3900 = !DILocation(line: 1243, column: 9, scope: !848)
!3901 = !DILocation(line: 1244, column: 9, scope: !3898)
!3902 = !DILocation(line: 1246, column: 48, scope: !848)
!3903 = !DILocation(line: 1246, column: 5, scope: !848)
!3904 = !DILocation(line: 1248, column: 42, scope: !848)
!3905 = !DILocation(line: 1248, column: 19, scope: !848)
!3906 = !DILocation(line: 1248, column: 15, scope: !848)
!3907 = !DILocation(line: 1249, column: 10, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1249, column: 9)
!3909 = !DILocation(line: 1249, column: 9, scope: !848)
!3910 = !DILocation(line: 1250, column: 9, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !514, line: 1249, column: 21)
!3912 = !DILocation(line: 1253, column: 5, scope: !848)
!3913 = !DILocation(line: 1253, column: 16, scope: !848)
!3914 = !DILocation(line: 1253, column: 19, scope: !848)
!3915 = !{!3916, !1310, i64 16}
!3916 = !{!"", !1351, i64 0, !1310, i64 16, !1310, i64 24, !1310, i64 32, !1322, i64 40, !1310, i64 48}
!3917 = !DILocation(line: 1254, column: 5, scope: !848)
!3918 = !DILocation(line: 1254, column: 16, scope: !848)
!3919 = !DILocation(line: 1254, column: 19, scope: !848)
!3920 = !{!3916, !1310, i64 24}
!3921 = !DILocation(line: 1255, column: 5, scope: !848)
!3922 = !DILocation(line: 1255, column: 16, scope: !848)
!3923 = !DILocation(line: 1255, column: 20, scope: !848)
!3924 = !{!3916, !1310, i64 32}
!3925 = !DILocation(line: 1256, column: 5, scope: !848)
!3926 = !DILocation(line: 1256, column: 16, scope: !848)
!3927 = !DILocation(line: 1256, column: 23, scope: !848)
!3928 = !{!3916, !1322, i64 40}
!3929 = !DILocation(line: 1257, column: 5, scope: !848)
!3930 = !DILocation(line: 1257, column: 16, scope: !848)
!3931 = !DILocation(line: 1257, column: 31, scope: !848)
!3932 = !{!3916, !1310, i64 48}
!3933 = !DILocation(line: 1259, column: 36, scope: !848)
!3934 = !DILocation(line: 1259, column: 47, scope: !848)
!3935 = !DILocation(line: 1259, column: 53, scope: !848)
!3936 = !DILocation(line: 1259, column: 10, scope: !848)
!3937 = !DILocation(line: 1259, column: 8, scope: !848)
!3938 = !DILocation(line: 1260, column: 9, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1260, column: 9)
!3940 = !DILocation(line: 1260, column: 12, scope: !3939)
!3941 = !DILocation(line: 1260, column: 9, scope: !848)
!3942 = !DILocation(line: 1261, column: 13, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !514, line: 1261, column: 13)
!3944 = distinct !DILexicalBlock(scope: !3939, file: !514, line: 1260, column: 18)
!3945 = !DILocation(line: 1261, column: 16, scope: !3943)
!3946 = !DILocation(line: 1261, column: 13, scope: !3944)
!3947 = !DILocation(line: 1262, column: 29, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3943, file: !514, line: 1261, column: 27)
!3949 = !DILocation(line: 1262, column: 13, scope: !3948)
!3950 = !DILocation(line: 1263, column: 9, scope: !3948)
!3951 = !DILocation(line: 1263, column: 20, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3943, file: !514, line: 1263, column: 20)
!3953 = !DILocation(line: 1263, column: 23, scope: !3952)
!3954 = !DILocation(line: 1263, column: 20, scope: !3943)
!3955 = !DILocation(line: 1264, column: 29, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !514, line: 1263, column: 34)
!3957 = !DILocation(line: 1264, column: 13, scope: !3956)
!3958 = !DILocation(line: 1265, column: 9, scope: !3956)
!3959 = !DILocation(line: 1266, column: 44, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3952, file: !514, line: 1265, column: 16)
!3961 = !DILocation(line: 1266, column: 19, scope: !3960)
!3962 = !DILocation(line: 1267, column: 32, scope: !3960)
!3963 = !DILocation(line: 1267, column: 38, scope: !3960)
!3964 = !DILocation(line: 1267, column: 13, scope: !3960)
!3965 = !DILocation(line: 1269, column: 9, scope: !3944)
!3966 = !DILocation(line: 1272, column: 43, scope: !848)
!3967 = !DILocation(line: 1272, column: 32, scope: !848)
!3968 = !DILocation(line: 1272, column: 15, scope: !848)
!3969 = !DILocation(line: 1272, column: 13, scope: !848)
!3970 = !DILocation(line: 1273, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !848, file: !514, line: 1273, column: 9)
!3972 = !DILocation(line: 1273, column: 17, scope: !3971)
!3973 = !DILocation(line: 1273, column: 9, scope: !848)
!3974 = !DILocation(line: 1274, column: 9, scope: !3971)
!3975 = !DILocation(line: 1275, column: 23, scope: !860)
!3976 = !DILocation(line: 1275, column: 29, scope: !860)
!3977 = !DILocation(line: 1275, column: 41, scope: !860)
!3978 = !DILocation(line: 1275, column: 9, scope: !860)
!3979 = !DILocation(line: 1275, column: 50, scope: !860)
!3980 = !DILocation(line: 1275, column: 9, scope: !848)
!3981 = !DILocation(line: 1276, column: 9, scope: !859)
!3982 = !DILocation(line: 1276, column: 14, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !858, file: !514, discriminator: 1)
!3984 = !DILocation(line: 1276, column: 24, scope: !858)
!3985 = !DILocation(line: 1276, column: 54, scope: !858)
!3986 = !DILocation(line: 1276, column: 72, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !858, file: !514, line: 1276, column: 69)
!3988 = !DILocation(line: 1276, column: 89, scope: !3987)
!3989 = !DILocation(line: 1276, column: 69, scope: !3987)
!3990 = !DILocation(line: 1276, column: 99, scope: !3987)
!3991 = !DILocation(line: 1276, column: 69, scope: !858)
!3992 = !DILocation(line: 1276, column: 69, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !858, file: !514, discriminator: 2)
!3994 = !DILocation(line: 1276, column: 130, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !3987, file: !514, discriminator: 3)
!3996 = !DILocation(line: 1276, column: 148, scope: !3987)
!3997 = !DILocation(line: 1276, column: 158, scope: !3987)
!3998 = !DILocation(line: 1276, column: 183, scope: !3987)
!3999 = !DILocation(line: 1276, column: 114, scope: !3987)
!4000 = !DILocation(line: 1276, column: 202, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !859, file: !514, discriminator: 4)
!4002 = !DILocation(line: 1276, column: 202, scope: !858)
!4003 = !DILocation(line: 1276, column: 202, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !858, file: !514, discriminator: 5)
!4005 = !DILocation(line: 1277, column: 9, scope: !859)
!4006 = !DILocation(line: 1279, column: 5, scope: !848)
!4007 = !DILocation(line: 1279, column: 10, scope: !4008)
!4008 = !DILexicalBlockFile(scope: !862, file: !514, discriminator: 1)
!4009 = !DILocation(line: 1279, column: 20, scope: !862)
!4010 = !DILocation(line: 1279, column: 50, scope: !862)
!4011 = !DILocation(line: 1279, column: 68, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !862, file: !514, line: 1279, column: 65)
!4013 = !DILocation(line: 1279, column: 85, scope: !4012)
!4014 = !DILocation(line: 1279, column: 65, scope: !4012)
!4015 = !DILocation(line: 1279, column: 95, scope: !4012)
!4016 = !DILocation(line: 1279, column: 65, scope: !862)
!4017 = !DILocation(line: 1279, column: 65, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !862, file: !514, discriminator: 2)
!4019 = !DILocation(line: 1279, column: 126, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4012, file: !514, discriminator: 3)
!4021 = !DILocation(line: 1279, column: 144, scope: !4012)
!4022 = !DILocation(line: 1279, column: 154, scope: !4012)
!4023 = !DILocation(line: 1279, column: 179, scope: !4012)
!4024 = !DILocation(line: 1279, column: 110, scope: !4012)
!4025 = !DILocation(line: 1279, column: 198, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !848, file: !514, discriminator: 4)
!4027 = !DILocation(line: 1279, column: 198, scope: !862)
!4028 = !DILocation(line: 1279, column: 198, scope: !4029)
!4029 = !DILexicalBlockFile(scope: !862, file: !514, discriminator: 5)
!4030 = !DILocation(line: 1281, column: 23, scope: !848)
!4031 = !DILocation(line: 1281, column: 12, scope: !848)
!4032 = !DILocation(line: 1281, column: 5, scope: !848)
!4033 = !DILocation(line: 1284, column: 5, scope: !848)
!4034 = !DILocation(line: 1284, column: 10, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !864, file: !514, discriminator: 1)
!4036 = !DILocation(line: 1284, column: 20, scope: !864)
!4037 = !DILocation(line: 1284, column: 50, scope: !864)
!4038 = !DILocation(line: 1284, column: 37, scope: !864)
!4039 = !DILocation(line: 1284, column: 70, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !864, file: !514, line: 1284, column: 67)
!4041 = !DILocation(line: 1284, column: 87, scope: !4040)
!4042 = !DILocation(line: 1284, column: 67, scope: !4040)
!4043 = !DILocation(line: 1284, column: 97, scope: !4040)
!4044 = !DILocation(line: 1284, column: 67, scope: !864)
!4045 = !DILocation(line: 1284, column: 67, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !864, file: !514, discriminator: 2)
!4047 = !DILocation(line: 1284, column: 128, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !4040, file: !514, discriminator: 3)
!4049 = !DILocation(line: 1284, column: 146, scope: !4040)
!4050 = !DILocation(line: 1284, column: 156, scope: !4040)
!4051 = !DILocation(line: 1284, column: 181, scope: !4040)
!4052 = !DILocation(line: 1284, column: 112, scope: !4040)
!4053 = !DILocation(line: 1284, column: 200, scope: !4026)
!4054 = !DILocation(line: 1284, column: 200, scope: !864)
!4055 = !DILocation(line: 1284, column: 200, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !864, file: !514, discriminator: 5)
!4057 = !DILocation(line: 1285, column: 5, scope: !848)
!4058 = !DILocation(line: 1286, column: 1, scope: !848)
!4059 = !DILocation(line: 769, column: 77, scope: !1066)
!4060 = !DILocation(line: 771, column: 5, scope: !1066)
!4061 = !DILocation(line: 771, column: 15, scope: !1066)
!4062 = !DILocation(line: 772, column: 5, scope: !1066)
!4063 = !DILocation(line: 772, column: 15, scope: !1066)
!4064 = !DILocation(line: 773, column: 5, scope: !1066)
!4065 = !DILocation(line: 773, column: 9, scope: !1066)
!4066 = !DILocation(line: 776, column: 9, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !1066, file: !514, line: 776, column: 9)
!4068 = !DILocation(line: 776, column: 15, scope: !4067)
!4069 = !DILocation(line: 776, column: 33, scope: !4067)
!4070 = !DILocation(line: 776, column: 36, scope: !4067)
!4071 = !DILocation(line: 776, column: 9, scope: !1066)
!4072 = !DILocation(line: 777, column: 9, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4067, file: !514, line: 776, column: 43)
!4074 = !DILocation(line: 780, column: 5, scope: !1066)
!4075 = !DILocation(line: 780, column: 11, scope: !1066)
!4076 = !DILocation(line: 780, column: 30, scope: !1066)
!4077 = !DILocation(line: 782, column: 16, scope: !1066)
!4078 = !DILocation(line: 782, column: 14, scope: !1066)
!4079 = !DILocation(line: 783, column: 10, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !1066, file: !514, line: 783, column: 9)
!4081 = !DILocation(line: 783, column: 9, scope: !1066)
!4082 = !DILocation(line: 784, column: 9, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4080, file: !514, line: 783, column: 20)
!4084 = !DILocation(line: 787, column: 12, scope: !1080)
!4085 = !DILocation(line: 787, column: 10, scope: !1080)
!4086 = !DILocation(line: 787, column: 17, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4088, file: !514, discriminator: 2)
!4088 = !DILexicalBlockFile(scope: !1079, file: !514, discriminator: 1)
!4089 = !DILocation(line: 787, column: 33, scope: !1079)
!4090 = !DILocation(line: 787, column: 39, scope: !1079)
!4091 = !DILocation(line: 787, column: 21, scope: !1079)
!4092 = !DILocation(line: 787, column: 19, scope: !1079)
!4093 = !DILocation(line: 787, column: 5, scope: !1080)
!4094 = !DILocation(line: 788, column: 34, scope: !1078)
!4095 = !DILocation(line: 788, column: 40, scope: !1078)
!4096 = !DILocation(line: 788, column: 52, scope: !1078)
!4097 = !DILocation(line: 788, column: 19, scope: !1078)
!4098 = !DILocation(line: 788, column: 17, scope: !1078)
!4099 = !DILocation(line: 789, column: 33, scope: !1077)
!4100 = !DILocation(line: 789, column: 13, scope: !1077)
!4101 = !DILocation(line: 789, column: 42, scope: !1077)
!4102 = !DILocation(line: 789, column: 13, scope: !1078)
!4103 = !DILocation(line: 790, column: 31, scope: !1075)
!4104 = !DILocation(line: 790, column: 41, scope: !1075)
!4105 = !DILocation(line: 790, column: 17, scope: !1075)
!4106 = !DILocation(line: 790, column: 50, scope: !1075)
!4107 = !DILocation(line: 790, column: 17, scope: !1076)
!4108 = !DILocation(line: 791, column: 17, scope: !1074)
!4109 = !DILocation(line: 791, column: 22, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !1073, file: !514, discriminator: 1)
!4111 = !DILocation(line: 791, column: 32, scope: !1073)
!4112 = !DILocation(line: 791, column: 62, scope: !1073)
!4113 = !DILocation(line: 791, column: 81, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !1073, file: !514, line: 791, column: 78)
!4115 = !DILocation(line: 791, column: 98, scope: !4114)
!4116 = !DILocation(line: 791, column: 78, scope: !4114)
!4117 = !DILocation(line: 791, column: 108, scope: !4114)
!4118 = !DILocation(line: 791, column: 78, scope: !1073)
!4119 = !DILocation(line: 791, column: 78, scope: !4120)
!4120 = !DILexicalBlockFile(scope: !1073, file: !514, discriminator: 2)
!4121 = !DILocation(line: 791, column: 139, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !4114, file: !514, discriminator: 3)
!4123 = !DILocation(line: 791, column: 157, scope: !4114)
!4124 = !DILocation(line: 791, column: 167, scope: !4114)
!4125 = !DILocation(line: 791, column: 192, scope: !4114)
!4126 = !DILocation(line: 791, column: 123, scope: !4114)
!4127 = !DILocation(line: 791, column: 211, scope: !4128)
!4128 = !DILexicalBlockFile(scope: !1074, file: !514, discriminator: 4)
!4129 = !DILocation(line: 791, column: 211, scope: !1073)
!4130 = !DILocation(line: 791, column: 211, scope: !4131)
!4131 = !DILexicalBlockFile(scope: !1073, file: !514, discriminator: 5)
!4132 = !DILocation(line: 792, column: 17, scope: !1074)
!4133 = !DILocation(line: 794, column: 9, scope: !1076)
!4134 = !DILocation(line: 795, column: 5, scope: !1078)
!4135 = !DILocation(line: 787, column: 53, scope: !1079)
!4136 = !DILocation(line: 787, column: 5, scope: !1079)
!4137 = !DILocation(line: 797, column: 5, scope: !1066)
!4138 = !DILocation(line: 797, column: 10, scope: !4139)
!4139 = !DILexicalBlockFile(scope: !1082, file: !514, discriminator: 1)
!4140 = !DILocation(line: 797, column: 20, scope: !1082)
!4141 = !DILocation(line: 797, column: 50, scope: !1082)
!4142 = !DILocation(line: 797, column: 56, scope: !1082)
!4143 = !DILocation(line: 797, column: 77, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !1082, file: !514, line: 797, column: 74)
!4145 = !DILocation(line: 797, column: 94, scope: !4144)
!4146 = !DILocation(line: 797, column: 74, scope: !4144)
!4147 = !DILocation(line: 797, column: 104, scope: !4144)
!4148 = !DILocation(line: 797, column: 74, scope: !1082)
!4149 = !DILocation(line: 797, column: 74, scope: !4150)
!4150 = !DILexicalBlockFile(scope: !1082, file: !514, discriminator: 2)
!4151 = !DILocation(line: 797, column: 135, scope: !4152)
!4152 = !DILexicalBlockFile(scope: !4144, file: !514, discriminator: 3)
!4153 = !DILocation(line: 797, column: 153, scope: !4144)
!4154 = !DILocation(line: 797, column: 163, scope: !4144)
!4155 = !DILocation(line: 797, column: 188, scope: !4144)
!4156 = !DILocation(line: 797, column: 119, scope: !4144)
!4157 = !DILocation(line: 797, column: 207, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !1066, file: !514, discriminator: 4)
!4159 = !DILocation(line: 797, column: 207, scope: !1082)
!4160 = !DILocation(line: 797, column: 207, scope: !4161)
!4161 = !DILexicalBlockFile(scope: !1082, file: !514, discriminator: 5)
!4162 = !DILocation(line: 798, column: 24, scope: !1066)
!4163 = !DILocation(line: 798, column: 5, scope: !1066)
!4164 = !DILocation(line: 798, column: 11, scope: !1066)
!4165 = !DILocation(line: 798, column: 22, scope: !1066)
!4166 = !DILocation(line: 799, column: 1, scope: !1066)
!4167 = !DILocation(line: 799, column: 1, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !1066, file: !514, discriminator: 1)
!4169 = !DILocation(line: 1288, column: 60, scope: !865)
!4170 = !DILocation(line: 1288, column: 76, scope: !865)
!4171 = !DILocation(line: 1288, column: 92, scope: !865)
!4172 = !DILocation(line: 1290, column: 5, scope: !865)
!4173 = !DILocation(line: 1290, column: 15, scope: !865)
!4174 = !DILocation(line: 1291, column: 5, scope: !865)
!4175 = !DILocation(line: 1291, column: 15, scope: !865)
!4176 = !DILocation(line: 1292, column: 5, scope: !865)
!4177 = !DILocation(line: 1292, column: 15, scope: !865)
!4178 = !DILocation(line: 1294, column: 48, scope: !865)
!4179 = !DILocation(line: 1294, column: 37, scope: !865)
!4180 = !DILocation(line: 1294, column: 14, scope: !865)
!4181 = !DILocation(line: 1294, column: 12, scope: !865)
!4182 = !DILocation(line: 1295, column: 10, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !865, file: !514, line: 1295, column: 9)
!4184 = !DILocation(line: 1295, column: 9, scope: !865)
!4185 = !DILocation(line: 1296, column: 9, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !514, line: 1295, column: 18)
!4187 = !DILocation(line: 1299, column: 37, scope: !865)
!4188 = !DILocation(line: 1299, column: 14, scope: !865)
!4189 = !DILocation(line: 1299, column: 12, scope: !865)
!4190 = !DILocation(line: 1300, column: 10, scope: !876)
!4191 = !DILocation(line: 1300, column: 9, scope: !865)
!4192 = !DILocation(line: 1301, column: 9, scope: !875)
!4193 = !DILocation(line: 1301, column: 14, scope: !4194)
!4194 = !DILexicalBlockFile(scope: !874, file: !514, discriminator: 1)
!4195 = !DILocation(line: 1301, column: 24, scope: !874)
!4196 = !DILocation(line: 1301, column: 47, scope: !874)
!4197 = !DILocation(line: 1301, column: 60, scope: !880)
!4198 = !DILocation(line: 1301, column: 68, scope: !880)
!4199 = !DILocation(line: 1301, column: 60, scope: !874)
!4200 = !DILocation(line: 1301, column: 94, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !879, file: !514, discriminator: 2)
!4202 = !DILocation(line: 1301, column: 108, scope: !879)
!4203 = !DILocation(line: 1301, column: 113, scope: !4204)
!4204 = !DILexicalBlockFile(scope: !878, file: !514, discriminator: 4)
!4205 = !DILocation(line: 1301, column: 123, scope: !878)
!4206 = !DILocation(line: 1301, column: 153, scope: !878)
!4207 = !DILocation(line: 1301, column: 171, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !878, file: !514, line: 1301, column: 168)
!4209 = !DILocation(line: 1301, column: 188, scope: !4208)
!4210 = !DILocation(line: 1301, column: 168, scope: !4208)
!4211 = !DILocation(line: 1301, column: 198, scope: !4208)
!4212 = !DILocation(line: 1301, column: 168, scope: !878)
!4213 = !DILocation(line: 1301, column: 168, scope: !4214)
!4214 = !DILexicalBlockFile(scope: !878, file: !514, discriminator: 5)
!4215 = !DILocation(line: 1301, column: 229, scope: !4216)
!4216 = !DILexicalBlockFile(scope: !4208, file: !514, discriminator: 6)
!4217 = !DILocation(line: 1301, column: 247, scope: !4208)
!4218 = !DILocation(line: 1301, column: 257, scope: !4208)
!4219 = !DILocation(line: 1301, column: 282, scope: !4208)
!4220 = !DILocation(line: 1301, column: 213, scope: !4208)
!4221 = !DILocation(line: 1301, column: 301, scope: !4222)
!4222 = !DILexicalBlockFile(scope: !879, file: !514, discriminator: 7)
!4223 = !DILocation(line: 1301, column: 301, scope: !878)
!4224 = !DILocation(line: 1301, column: 301, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !878, file: !514, discriminator: 8)
!4226 = !DILocation(line: 1301, column: 314, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !879, file: !514, discriminator: 9)
!4228 = !DILocation(line: 1301, column: 316, scope: !4229)
!4229 = !DILexicalBlockFile(scope: !4230, file: !514, discriminator: 10)
!4230 = !DILexicalBlockFile(scope: !875, file: !514, discriminator: 3)
!4231 = !DILocation(line: 1301, column: 316, scope: !874)
!4232 = !DILocation(line: 1301, column: 316, scope: !4233)
!4233 = !DILexicalBlockFile(scope: !874, file: !514, discriminator: 11)
!4234 = !DILocation(line: 1302, column: 9, scope: !875)
!4235 = !DILocation(line: 1305, column: 34, scope: !865)
!4236 = !DILocation(line: 1305, column: 42, scope: !865)
!4237 = !DILocation(line: 1305, column: 14, scope: !865)
!4238 = !DILocation(line: 1305, column: 12, scope: !865)
!4239 = !DILocation(line: 1306, column: 10, scope: !884)
!4240 = !DILocation(line: 1306, column: 9, scope: !865)
!4241 = !DILocation(line: 1307, column: 9, scope: !883)
!4242 = !DILocation(line: 1307, column: 14, scope: !4243)
!4243 = !DILexicalBlockFile(scope: !882, file: !514, discriminator: 1)
!4244 = !DILocation(line: 1307, column: 24, scope: !882)
!4245 = !DILocation(line: 1307, column: 47, scope: !882)
!4246 = !DILocation(line: 1307, column: 60, scope: !888)
!4247 = !DILocation(line: 1307, column: 68, scope: !888)
!4248 = !DILocation(line: 1307, column: 60, scope: !882)
!4249 = !DILocation(line: 1307, column: 94, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !887, file: !514, discriminator: 2)
!4251 = !DILocation(line: 1307, column: 108, scope: !887)
!4252 = !DILocation(line: 1307, column: 113, scope: !4253)
!4253 = !DILexicalBlockFile(scope: !886, file: !514, discriminator: 4)
!4254 = !DILocation(line: 1307, column: 123, scope: !886)
!4255 = !DILocation(line: 1307, column: 153, scope: !886)
!4256 = !DILocation(line: 1307, column: 171, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !886, file: !514, line: 1307, column: 168)
!4258 = !DILocation(line: 1307, column: 188, scope: !4257)
!4259 = !DILocation(line: 1307, column: 168, scope: !4257)
!4260 = !DILocation(line: 1307, column: 198, scope: !4257)
!4261 = !DILocation(line: 1307, column: 168, scope: !886)
!4262 = !DILocation(line: 1307, column: 168, scope: !4263)
!4263 = !DILexicalBlockFile(scope: !886, file: !514, discriminator: 5)
!4264 = !DILocation(line: 1307, column: 229, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !4257, file: !514, discriminator: 6)
!4266 = !DILocation(line: 1307, column: 247, scope: !4257)
!4267 = !DILocation(line: 1307, column: 257, scope: !4257)
!4268 = !DILocation(line: 1307, column: 282, scope: !4257)
!4269 = !DILocation(line: 1307, column: 213, scope: !4257)
!4270 = !DILocation(line: 1307, column: 301, scope: !4271)
!4271 = !DILexicalBlockFile(scope: !887, file: !514, discriminator: 7)
!4272 = !DILocation(line: 1307, column: 301, scope: !886)
!4273 = !DILocation(line: 1307, column: 301, scope: !4274)
!4274 = !DILexicalBlockFile(scope: !886, file: !514, discriminator: 8)
!4275 = !DILocation(line: 1307, column: 314, scope: !4276)
!4276 = !DILexicalBlockFile(scope: !887, file: !514, discriminator: 9)
!4277 = !DILocation(line: 1307, column: 316, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !4279, file: !514, discriminator: 10)
!4279 = !DILexicalBlockFile(scope: !883, file: !514, discriminator: 3)
!4280 = !DILocation(line: 1307, column: 316, scope: !882)
!4281 = !DILocation(line: 1307, column: 316, scope: !4282)
!4282 = !DILexicalBlockFile(scope: !882, file: !514, discriminator: 11)
!4283 = !DILocation(line: 1308, column: 5, scope: !883)
!4284 = !DILocation(line: 1306, column: 10, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !884, file: !514, discriminator: 1)
!4286 = !DILocation(line: 1311, column: 5, scope: !865)
!4287 = !DILocation(line: 1311, column: 10, scope: !4288)
!4288 = !DILexicalBlockFile(scope: !890, file: !514, discriminator: 1)
!4289 = !DILocation(line: 1311, column: 20, scope: !890)
!4290 = !DILocation(line: 1311, column: 51, scope: !890)
!4291 = !DILocation(line: 1311, column: 64, scope: !893)
!4292 = !DILocation(line: 1311, column: 80, scope: !893)
!4293 = !DILocation(line: 1311, column: 64, scope: !890)
!4294 = !DILocation(line: 1311, column: 95, scope: !4295)
!4295 = !DILexicalBlockFile(scope: !893, file: !514, discriminator: 2)
!4296 = !DILocation(line: 1311, column: 100, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !892, file: !514, discriminator: 4)
!4298 = !DILocation(line: 1311, column: 110, scope: !892)
!4299 = !DILocation(line: 1311, column: 140, scope: !892)
!4300 = !DILocation(line: 1311, column: 166, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !892, file: !514, line: 1311, column: 163)
!4302 = !DILocation(line: 1311, column: 183, scope: !4301)
!4303 = !DILocation(line: 1311, column: 163, scope: !4301)
!4304 = !DILocation(line: 1311, column: 193, scope: !4301)
!4305 = !DILocation(line: 1311, column: 163, scope: !892)
!4306 = !DILocation(line: 1311, column: 163, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !892, file: !514, discriminator: 5)
!4308 = !DILocation(line: 1311, column: 224, scope: !4309)
!4309 = !DILexicalBlockFile(scope: !4301, file: !514, discriminator: 6)
!4310 = !DILocation(line: 1311, column: 242, scope: !4301)
!4311 = !DILocation(line: 1311, column: 252, scope: !4301)
!4312 = !DILocation(line: 1311, column: 277, scope: !4301)
!4313 = !DILocation(line: 1311, column: 208, scope: !4301)
!4314 = !DILocation(line: 1311, column: 296, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !893, file: !514, discriminator: 7)
!4316 = !DILocation(line: 1311, column: 296, scope: !892)
!4317 = !DILocation(line: 1311, column: 296, scope: !4318)
!4318 = !DILexicalBlockFile(scope: !892, file: !514, discriminator: 8)
!4319 = !DILocation(line: 1311, column: 296, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !892, file: !514, discriminator: 9)
!4321 = !DILocation(line: 1311, column: 309, scope: !4322)
!4322 = !DILexicalBlockFile(scope: !4323, file: !514, discriminator: 10)
!4323 = !DILexicalBlockFile(scope: !865, file: !514, discriminator: 3)
!4324 = !DILocation(line: 1311, column: 309, scope: !890)
!4325 = !DILocation(line: 1311, column: 309, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !890, file: !514, discriminator: 11)
!4327 = !DILocation(line: 1312, column: 5, scope: !865)
!4328 = !DILocation(line: 1312, column: 10, scope: !4329)
!4329 = !DILexicalBlockFile(scope: !895, file: !514, discriminator: 1)
!4330 = !DILocation(line: 1312, column: 20, scope: !895)
!4331 = !DILocation(line: 1312, column: 51, scope: !895)
!4332 = !DILocation(line: 1312, column: 64, scope: !898)
!4333 = !DILocation(line: 1312, column: 80, scope: !898)
!4334 = !DILocation(line: 1312, column: 64, scope: !895)
!4335 = !DILocation(line: 1312, column: 95, scope: !4336)
!4336 = !DILexicalBlockFile(scope: !898, file: !514, discriminator: 2)
!4337 = !DILocation(line: 1312, column: 100, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !897, file: !514, discriminator: 4)
!4339 = !DILocation(line: 1312, column: 110, scope: !897)
!4340 = !DILocation(line: 1312, column: 140, scope: !897)
!4341 = !DILocation(line: 1312, column: 166, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !897, file: !514, line: 1312, column: 163)
!4343 = !DILocation(line: 1312, column: 183, scope: !4342)
!4344 = !DILocation(line: 1312, column: 163, scope: !4342)
!4345 = !DILocation(line: 1312, column: 193, scope: !4342)
!4346 = !DILocation(line: 1312, column: 163, scope: !897)
!4347 = !DILocation(line: 1312, column: 163, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !897, file: !514, discriminator: 5)
!4349 = !DILocation(line: 1312, column: 224, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !4342, file: !514, discriminator: 6)
!4351 = !DILocation(line: 1312, column: 242, scope: !4342)
!4352 = !DILocation(line: 1312, column: 252, scope: !4342)
!4353 = !DILocation(line: 1312, column: 277, scope: !4342)
!4354 = !DILocation(line: 1312, column: 208, scope: !4342)
!4355 = !DILocation(line: 1312, column: 296, scope: !4356)
!4356 = !DILexicalBlockFile(scope: !898, file: !514, discriminator: 7)
!4357 = !DILocation(line: 1312, column: 296, scope: !897)
!4358 = !DILocation(line: 1312, column: 296, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !897, file: !514, discriminator: 8)
!4360 = !DILocation(line: 1312, column: 296, scope: !4361)
!4361 = !DILexicalBlockFile(scope: !897, file: !514, discriminator: 9)
!4362 = !DILocation(line: 1312, column: 309, scope: !4322)
!4363 = !DILocation(line: 1312, column: 309, scope: !895)
!4364 = !DILocation(line: 1312, column: 309, scope: !4365)
!4365 = !DILexicalBlockFile(scope: !895, file: !514, discriminator: 11)
!4366 = !DILocation(line: 1314, column: 12, scope: !865)
!4367 = !DILocation(line: 1315, column: 1, scope: !865)
!4368 = !DILocation(line: 1314, column: 5, scope: !865)
!4369 = !DILocation(line: 1317, column: 64, scope: !899)
!4370 = !DILocation(line: 1317, column: 80, scope: !899)
!4371 = !DILocation(line: 1317, column: 96, scope: !899)
!4372 = !DILocation(line: 1319, column: 5, scope: !899)
!4373 = !DILocation(line: 1319, column: 15, scope: !899)
!4374 = !DILocation(line: 1320, column: 5, scope: !899)
!4375 = !DILocation(line: 1320, column: 15, scope: !899)
!4376 = !DILocation(line: 1321, column: 5, scope: !899)
!4377 = !DILocation(line: 1321, column: 15, scope: !899)
!4378 = !DILocation(line: 1323, column: 48, scope: !899)
!4379 = !DILocation(line: 1323, column: 37, scope: !899)
!4380 = !DILocation(line: 1323, column: 14, scope: !899)
!4381 = !DILocation(line: 1323, column: 12, scope: !899)
!4382 = !DILocation(line: 1324, column: 10, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !899, file: !514, line: 1324, column: 9)
!4384 = !DILocation(line: 1324, column: 9, scope: !899)
!4385 = !DILocation(line: 1325, column: 9, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4383, file: !514, line: 1324, column: 18)
!4387 = !DILocation(line: 1328, column: 37, scope: !899)
!4388 = !DILocation(line: 1328, column: 14, scope: !899)
!4389 = !DILocation(line: 1328, column: 12, scope: !899)
!4390 = !DILocation(line: 1329, column: 10, scope: !910)
!4391 = !DILocation(line: 1329, column: 9, scope: !899)
!4392 = !DILocation(line: 1330, column: 9, scope: !909)
!4393 = !DILocation(line: 1330, column: 14, scope: !4394)
!4394 = !DILexicalBlockFile(scope: !908, file: !514, discriminator: 1)
!4395 = !DILocation(line: 1330, column: 24, scope: !908)
!4396 = !DILocation(line: 1330, column: 47, scope: !908)
!4397 = !DILocation(line: 1330, column: 60, scope: !914)
!4398 = !DILocation(line: 1330, column: 68, scope: !914)
!4399 = !DILocation(line: 1330, column: 60, scope: !908)
!4400 = !DILocation(line: 1330, column: 94, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !913, file: !514, discriminator: 2)
!4402 = !DILocation(line: 1330, column: 108, scope: !913)
!4403 = !DILocation(line: 1330, column: 113, scope: !4404)
!4404 = !DILexicalBlockFile(scope: !912, file: !514, discriminator: 4)
!4405 = !DILocation(line: 1330, column: 123, scope: !912)
!4406 = !DILocation(line: 1330, column: 153, scope: !912)
!4407 = !DILocation(line: 1330, column: 171, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !912, file: !514, line: 1330, column: 168)
!4409 = !DILocation(line: 1330, column: 188, scope: !4408)
!4410 = !DILocation(line: 1330, column: 168, scope: !4408)
!4411 = !DILocation(line: 1330, column: 198, scope: !4408)
!4412 = !DILocation(line: 1330, column: 168, scope: !912)
!4413 = !DILocation(line: 1330, column: 168, scope: !4414)
!4414 = !DILexicalBlockFile(scope: !912, file: !514, discriminator: 5)
!4415 = !DILocation(line: 1330, column: 229, scope: !4416)
!4416 = !DILexicalBlockFile(scope: !4408, file: !514, discriminator: 6)
!4417 = !DILocation(line: 1330, column: 247, scope: !4408)
!4418 = !DILocation(line: 1330, column: 257, scope: !4408)
!4419 = !DILocation(line: 1330, column: 282, scope: !4408)
!4420 = !DILocation(line: 1330, column: 213, scope: !4408)
!4421 = !DILocation(line: 1330, column: 301, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !913, file: !514, discriminator: 7)
!4423 = !DILocation(line: 1330, column: 301, scope: !912)
!4424 = !DILocation(line: 1330, column: 301, scope: !4425)
!4425 = !DILexicalBlockFile(scope: !912, file: !514, discriminator: 8)
!4426 = !DILocation(line: 1330, column: 314, scope: !4427)
!4427 = !DILexicalBlockFile(scope: !913, file: !514, discriminator: 9)
!4428 = !DILocation(line: 1330, column: 316, scope: !4429)
!4429 = !DILexicalBlockFile(scope: !4430, file: !514, discriminator: 10)
!4430 = !DILexicalBlockFile(scope: !909, file: !514, discriminator: 3)
!4431 = !DILocation(line: 1330, column: 316, scope: !908)
!4432 = !DILocation(line: 1330, column: 316, scope: !4433)
!4433 = !DILexicalBlockFile(scope: !908, file: !514, discriminator: 11)
!4434 = !DILocation(line: 1331, column: 9, scope: !909)
!4435 = !DILocation(line: 1334, column: 34, scope: !899)
!4436 = !DILocation(line: 1334, column: 42, scope: !899)
!4437 = !DILocation(line: 1334, column: 14, scope: !899)
!4438 = !DILocation(line: 1334, column: 12, scope: !899)
!4439 = !DILocation(line: 1335, column: 10, scope: !918)
!4440 = !DILocation(line: 1335, column: 9, scope: !899)
!4441 = !DILocation(line: 1336, column: 9, scope: !917)
!4442 = !DILocation(line: 1336, column: 14, scope: !4443)
!4443 = !DILexicalBlockFile(scope: !916, file: !514, discriminator: 1)
!4444 = !DILocation(line: 1336, column: 24, scope: !916)
!4445 = !DILocation(line: 1336, column: 47, scope: !916)
!4446 = !DILocation(line: 1336, column: 60, scope: !922)
!4447 = !DILocation(line: 1336, column: 68, scope: !922)
!4448 = !DILocation(line: 1336, column: 60, scope: !916)
!4449 = !DILocation(line: 1336, column: 94, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !921, file: !514, discriminator: 2)
!4451 = !DILocation(line: 1336, column: 108, scope: !921)
!4452 = !DILocation(line: 1336, column: 113, scope: !4453)
!4453 = !DILexicalBlockFile(scope: !920, file: !514, discriminator: 4)
!4454 = !DILocation(line: 1336, column: 123, scope: !920)
!4455 = !DILocation(line: 1336, column: 153, scope: !920)
!4456 = !DILocation(line: 1336, column: 171, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !920, file: !514, line: 1336, column: 168)
!4458 = !DILocation(line: 1336, column: 188, scope: !4457)
!4459 = !DILocation(line: 1336, column: 168, scope: !4457)
!4460 = !DILocation(line: 1336, column: 198, scope: !4457)
!4461 = !DILocation(line: 1336, column: 168, scope: !920)
!4462 = !DILocation(line: 1336, column: 168, scope: !4463)
!4463 = !DILexicalBlockFile(scope: !920, file: !514, discriminator: 5)
!4464 = !DILocation(line: 1336, column: 229, scope: !4465)
!4465 = !DILexicalBlockFile(scope: !4457, file: !514, discriminator: 6)
!4466 = !DILocation(line: 1336, column: 247, scope: !4457)
!4467 = !DILocation(line: 1336, column: 257, scope: !4457)
!4468 = !DILocation(line: 1336, column: 282, scope: !4457)
!4469 = !DILocation(line: 1336, column: 213, scope: !4457)
!4470 = !DILocation(line: 1336, column: 301, scope: !4471)
!4471 = !DILexicalBlockFile(scope: !921, file: !514, discriminator: 7)
!4472 = !DILocation(line: 1336, column: 301, scope: !920)
!4473 = !DILocation(line: 1336, column: 301, scope: !4474)
!4474 = !DILexicalBlockFile(scope: !920, file: !514, discriminator: 8)
!4475 = !DILocation(line: 1336, column: 314, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !921, file: !514, discriminator: 9)
!4477 = !DILocation(line: 1336, column: 316, scope: !4478)
!4478 = !DILexicalBlockFile(scope: !4479, file: !514, discriminator: 10)
!4479 = !DILexicalBlockFile(scope: !917, file: !514, discriminator: 3)
!4480 = !DILocation(line: 1336, column: 316, scope: !916)
!4481 = !DILocation(line: 1336, column: 316, scope: !4482)
!4482 = !DILexicalBlockFile(scope: !916, file: !514, discriminator: 11)
!4483 = !DILocation(line: 1337, column: 5, scope: !917)
!4484 = !DILocation(line: 1335, column: 10, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !918, file: !514, discriminator: 1)
!4486 = !DILocation(line: 1340, column: 5, scope: !899)
!4487 = !DILocation(line: 1340, column: 10, scope: !4488)
!4488 = !DILexicalBlockFile(scope: !924, file: !514, discriminator: 1)
!4489 = !DILocation(line: 1340, column: 20, scope: !924)
!4490 = !DILocation(line: 1340, column: 51, scope: !924)
!4491 = !DILocation(line: 1340, column: 64, scope: !927)
!4492 = !DILocation(line: 1340, column: 80, scope: !927)
!4493 = !DILocation(line: 1340, column: 64, scope: !924)
!4494 = !DILocation(line: 1340, column: 95, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !927, file: !514, discriminator: 2)
!4496 = !DILocation(line: 1340, column: 100, scope: !4497)
!4497 = !DILexicalBlockFile(scope: !926, file: !514, discriminator: 4)
!4498 = !DILocation(line: 1340, column: 110, scope: !926)
!4499 = !DILocation(line: 1340, column: 140, scope: !926)
!4500 = !DILocation(line: 1340, column: 166, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !926, file: !514, line: 1340, column: 163)
!4502 = !DILocation(line: 1340, column: 183, scope: !4501)
!4503 = !DILocation(line: 1340, column: 163, scope: !4501)
!4504 = !DILocation(line: 1340, column: 193, scope: !4501)
!4505 = !DILocation(line: 1340, column: 163, scope: !926)
!4506 = !DILocation(line: 1340, column: 163, scope: !4507)
!4507 = !DILexicalBlockFile(scope: !926, file: !514, discriminator: 5)
!4508 = !DILocation(line: 1340, column: 224, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !4501, file: !514, discriminator: 6)
!4510 = !DILocation(line: 1340, column: 242, scope: !4501)
!4511 = !DILocation(line: 1340, column: 252, scope: !4501)
!4512 = !DILocation(line: 1340, column: 277, scope: !4501)
!4513 = !DILocation(line: 1340, column: 208, scope: !4501)
!4514 = !DILocation(line: 1340, column: 296, scope: !4515)
!4515 = !DILexicalBlockFile(scope: !927, file: !514, discriminator: 7)
!4516 = !DILocation(line: 1340, column: 296, scope: !926)
!4517 = !DILocation(line: 1340, column: 296, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !926, file: !514, discriminator: 8)
!4519 = !DILocation(line: 1340, column: 296, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !926, file: !514, discriminator: 9)
!4521 = !DILocation(line: 1340, column: 309, scope: !4522)
!4522 = !DILexicalBlockFile(scope: !4523, file: !514, discriminator: 10)
!4523 = !DILexicalBlockFile(scope: !899, file: !514, discriminator: 3)
!4524 = !DILocation(line: 1340, column: 309, scope: !924)
!4525 = !DILocation(line: 1340, column: 309, scope: !4526)
!4526 = !DILexicalBlockFile(scope: !924, file: !514, discriminator: 11)
!4527 = !DILocation(line: 1341, column: 5, scope: !899)
!4528 = !DILocation(line: 1341, column: 10, scope: !4529)
!4529 = !DILexicalBlockFile(scope: !929, file: !514, discriminator: 1)
!4530 = !DILocation(line: 1341, column: 20, scope: !929)
!4531 = !DILocation(line: 1341, column: 51, scope: !929)
!4532 = !DILocation(line: 1341, column: 64, scope: !932)
!4533 = !DILocation(line: 1341, column: 80, scope: !932)
!4534 = !DILocation(line: 1341, column: 64, scope: !929)
!4535 = !DILocation(line: 1341, column: 95, scope: !4536)
!4536 = !DILexicalBlockFile(scope: !932, file: !514, discriminator: 2)
!4537 = !DILocation(line: 1341, column: 100, scope: !4538)
!4538 = !DILexicalBlockFile(scope: !931, file: !514, discriminator: 4)
!4539 = !DILocation(line: 1341, column: 110, scope: !931)
!4540 = !DILocation(line: 1341, column: 140, scope: !931)
!4541 = !DILocation(line: 1341, column: 166, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !931, file: !514, line: 1341, column: 163)
!4543 = !DILocation(line: 1341, column: 183, scope: !4542)
!4544 = !DILocation(line: 1341, column: 163, scope: !4542)
!4545 = !DILocation(line: 1341, column: 193, scope: !4542)
!4546 = !DILocation(line: 1341, column: 163, scope: !931)
!4547 = !DILocation(line: 1341, column: 163, scope: !4548)
!4548 = !DILexicalBlockFile(scope: !931, file: !514, discriminator: 5)
!4549 = !DILocation(line: 1341, column: 224, scope: !4550)
!4550 = !DILexicalBlockFile(scope: !4542, file: !514, discriminator: 6)
!4551 = !DILocation(line: 1341, column: 242, scope: !4542)
!4552 = !DILocation(line: 1341, column: 252, scope: !4542)
!4553 = !DILocation(line: 1341, column: 277, scope: !4542)
!4554 = !DILocation(line: 1341, column: 208, scope: !4542)
!4555 = !DILocation(line: 1341, column: 296, scope: !4556)
!4556 = !DILexicalBlockFile(scope: !932, file: !514, discriminator: 7)
!4557 = !DILocation(line: 1341, column: 296, scope: !931)
!4558 = !DILocation(line: 1341, column: 296, scope: !4559)
!4559 = !DILexicalBlockFile(scope: !931, file: !514, discriminator: 8)
!4560 = !DILocation(line: 1341, column: 296, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !931, file: !514, discriminator: 9)
!4562 = !DILocation(line: 1341, column: 309, scope: !4522)
!4563 = !DILocation(line: 1341, column: 309, scope: !929)
!4564 = !DILocation(line: 1341, column: 309, scope: !4565)
!4565 = !DILexicalBlockFile(scope: !929, file: !514, discriminator: 11)
!4566 = !DILocation(line: 1343, column: 12, scope: !899)
!4567 = !DILocation(line: 1344, column: 1, scope: !899)
!4568 = !DILocation(line: 1343, column: 5, scope: !899)
!4569 = !DILocation(line: 1346, column: 66, scope: !933)
!4570 = !DILocation(line: 1346, column: 82, scope: !933)
!4571 = !DILocation(line: 1346, column: 98, scope: !933)
!4572 = !DILocation(line: 1348, column: 5, scope: !933)
!4573 = !DILocation(line: 1348, column: 15, scope: !933)
!4574 = !DILocation(line: 1349, column: 5, scope: !933)
!4575 = !DILocation(line: 1349, column: 15, scope: !933)
!4576 = !DILocation(line: 1350, column: 5, scope: !933)
!4577 = !DILocation(line: 1350, column: 15, scope: !933)
!4578 = !DILocation(line: 1352, column: 48, scope: !933)
!4579 = !DILocation(line: 1352, column: 37, scope: !933)
!4580 = !DILocation(line: 1352, column: 14, scope: !933)
!4581 = !DILocation(line: 1352, column: 12, scope: !933)
!4582 = !DILocation(line: 1353, column: 10, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !933, file: !514, line: 1353, column: 9)
!4584 = !DILocation(line: 1353, column: 9, scope: !933)
!4585 = !DILocation(line: 1354, column: 9, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4583, file: !514, line: 1353, column: 18)
!4587 = !DILocation(line: 1357, column: 37, scope: !933)
!4588 = !DILocation(line: 1357, column: 14, scope: !933)
!4589 = !DILocation(line: 1357, column: 12, scope: !933)
!4590 = !DILocation(line: 1358, column: 10, scope: !944)
!4591 = !DILocation(line: 1358, column: 9, scope: !933)
!4592 = !DILocation(line: 1359, column: 9, scope: !943)
!4593 = !DILocation(line: 1359, column: 14, scope: !4594)
!4594 = !DILexicalBlockFile(scope: !942, file: !514, discriminator: 1)
!4595 = !DILocation(line: 1359, column: 24, scope: !942)
!4596 = !DILocation(line: 1359, column: 47, scope: !942)
!4597 = !DILocation(line: 1359, column: 60, scope: !948)
!4598 = !DILocation(line: 1359, column: 68, scope: !948)
!4599 = !DILocation(line: 1359, column: 60, scope: !942)
!4600 = !DILocation(line: 1359, column: 94, scope: !4601)
!4601 = !DILexicalBlockFile(scope: !947, file: !514, discriminator: 2)
!4602 = !DILocation(line: 1359, column: 108, scope: !947)
!4603 = !DILocation(line: 1359, column: 113, scope: !4604)
!4604 = !DILexicalBlockFile(scope: !946, file: !514, discriminator: 4)
!4605 = !DILocation(line: 1359, column: 123, scope: !946)
!4606 = !DILocation(line: 1359, column: 153, scope: !946)
!4607 = !DILocation(line: 1359, column: 171, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !946, file: !514, line: 1359, column: 168)
!4609 = !DILocation(line: 1359, column: 188, scope: !4608)
!4610 = !DILocation(line: 1359, column: 168, scope: !4608)
!4611 = !DILocation(line: 1359, column: 198, scope: !4608)
!4612 = !DILocation(line: 1359, column: 168, scope: !946)
!4613 = !DILocation(line: 1359, column: 168, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !946, file: !514, discriminator: 5)
!4615 = !DILocation(line: 1359, column: 229, scope: !4616)
!4616 = !DILexicalBlockFile(scope: !4608, file: !514, discriminator: 6)
!4617 = !DILocation(line: 1359, column: 247, scope: !4608)
!4618 = !DILocation(line: 1359, column: 257, scope: !4608)
!4619 = !DILocation(line: 1359, column: 282, scope: !4608)
!4620 = !DILocation(line: 1359, column: 213, scope: !4608)
!4621 = !DILocation(line: 1359, column: 301, scope: !4622)
!4622 = !DILexicalBlockFile(scope: !947, file: !514, discriminator: 7)
!4623 = !DILocation(line: 1359, column: 301, scope: !946)
!4624 = !DILocation(line: 1359, column: 301, scope: !4625)
!4625 = !DILexicalBlockFile(scope: !946, file: !514, discriminator: 8)
!4626 = !DILocation(line: 1359, column: 314, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !947, file: !514, discriminator: 9)
!4628 = !DILocation(line: 1359, column: 316, scope: !4629)
!4629 = !DILexicalBlockFile(scope: !4630, file: !514, discriminator: 10)
!4630 = !DILexicalBlockFile(scope: !943, file: !514, discriminator: 3)
!4631 = !DILocation(line: 1359, column: 316, scope: !942)
!4632 = !DILocation(line: 1359, column: 316, scope: !4633)
!4633 = !DILexicalBlockFile(scope: !942, file: !514, discriminator: 11)
!4634 = !DILocation(line: 1360, column: 9, scope: !943)
!4635 = !DILocation(line: 1363, column: 34, scope: !933)
!4636 = !DILocation(line: 1363, column: 42, scope: !933)
!4637 = !DILocation(line: 1363, column: 14, scope: !933)
!4638 = !DILocation(line: 1363, column: 12, scope: !933)
!4639 = !DILocation(line: 1364, column: 10, scope: !952)
!4640 = !DILocation(line: 1364, column: 9, scope: !933)
!4641 = !DILocation(line: 1365, column: 9, scope: !951)
!4642 = !DILocation(line: 1365, column: 14, scope: !4643)
!4643 = !DILexicalBlockFile(scope: !950, file: !514, discriminator: 1)
!4644 = !DILocation(line: 1365, column: 24, scope: !950)
!4645 = !DILocation(line: 1365, column: 47, scope: !950)
!4646 = !DILocation(line: 1365, column: 60, scope: !956)
!4647 = !DILocation(line: 1365, column: 68, scope: !956)
!4648 = !DILocation(line: 1365, column: 60, scope: !950)
!4649 = !DILocation(line: 1365, column: 94, scope: !4650)
!4650 = !DILexicalBlockFile(scope: !955, file: !514, discriminator: 2)
!4651 = !DILocation(line: 1365, column: 108, scope: !955)
!4652 = !DILocation(line: 1365, column: 113, scope: !4653)
!4653 = !DILexicalBlockFile(scope: !954, file: !514, discriminator: 4)
!4654 = !DILocation(line: 1365, column: 123, scope: !954)
!4655 = !DILocation(line: 1365, column: 153, scope: !954)
!4656 = !DILocation(line: 1365, column: 171, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !954, file: !514, line: 1365, column: 168)
!4658 = !DILocation(line: 1365, column: 188, scope: !4657)
!4659 = !DILocation(line: 1365, column: 168, scope: !4657)
!4660 = !DILocation(line: 1365, column: 198, scope: !4657)
!4661 = !DILocation(line: 1365, column: 168, scope: !954)
!4662 = !DILocation(line: 1365, column: 168, scope: !4663)
!4663 = !DILexicalBlockFile(scope: !954, file: !514, discriminator: 5)
!4664 = !DILocation(line: 1365, column: 229, scope: !4665)
!4665 = !DILexicalBlockFile(scope: !4657, file: !514, discriminator: 6)
!4666 = !DILocation(line: 1365, column: 247, scope: !4657)
!4667 = !DILocation(line: 1365, column: 257, scope: !4657)
!4668 = !DILocation(line: 1365, column: 282, scope: !4657)
!4669 = !DILocation(line: 1365, column: 213, scope: !4657)
!4670 = !DILocation(line: 1365, column: 301, scope: !4671)
!4671 = !DILexicalBlockFile(scope: !955, file: !514, discriminator: 7)
!4672 = !DILocation(line: 1365, column: 301, scope: !954)
!4673 = !DILocation(line: 1365, column: 301, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !954, file: !514, discriminator: 8)
!4675 = !DILocation(line: 1365, column: 314, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !955, file: !514, discriminator: 9)
!4677 = !DILocation(line: 1365, column: 316, scope: !4678)
!4678 = !DILexicalBlockFile(scope: !4679, file: !514, discriminator: 10)
!4679 = !DILexicalBlockFile(scope: !951, file: !514, discriminator: 3)
!4680 = !DILocation(line: 1365, column: 316, scope: !950)
!4681 = !DILocation(line: 1365, column: 316, scope: !4682)
!4682 = !DILexicalBlockFile(scope: !950, file: !514, discriminator: 11)
!4683 = !DILocation(line: 1366, column: 5, scope: !951)
!4684 = !DILocation(line: 1364, column: 10, scope: !4685)
!4685 = !DILexicalBlockFile(scope: !952, file: !514, discriminator: 1)
!4686 = !DILocation(line: 1369, column: 5, scope: !933)
!4687 = !DILocation(line: 1369, column: 10, scope: !4688)
!4688 = !DILexicalBlockFile(scope: !958, file: !514, discriminator: 1)
!4689 = !DILocation(line: 1369, column: 20, scope: !958)
!4690 = !DILocation(line: 1369, column: 51, scope: !958)
!4691 = !DILocation(line: 1369, column: 64, scope: !961)
!4692 = !DILocation(line: 1369, column: 80, scope: !961)
!4693 = !DILocation(line: 1369, column: 64, scope: !958)
!4694 = !DILocation(line: 1369, column: 95, scope: !4695)
!4695 = !DILexicalBlockFile(scope: !961, file: !514, discriminator: 2)
!4696 = !DILocation(line: 1369, column: 100, scope: !4697)
!4697 = !DILexicalBlockFile(scope: !960, file: !514, discriminator: 4)
!4698 = !DILocation(line: 1369, column: 110, scope: !960)
!4699 = !DILocation(line: 1369, column: 140, scope: !960)
!4700 = !DILocation(line: 1369, column: 166, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !960, file: !514, line: 1369, column: 163)
!4702 = !DILocation(line: 1369, column: 183, scope: !4701)
!4703 = !DILocation(line: 1369, column: 163, scope: !4701)
!4704 = !DILocation(line: 1369, column: 193, scope: !4701)
!4705 = !DILocation(line: 1369, column: 163, scope: !960)
!4706 = !DILocation(line: 1369, column: 163, scope: !4707)
!4707 = !DILexicalBlockFile(scope: !960, file: !514, discriminator: 5)
!4708 = !DILocation(line: 1369, column: 224, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4701, file: !514, discriminator: 6)
!4710 = !DILocation(line: 1369, column: 242, scope: !4701)
!4711 = !DILocation(line: 1369, column: 252, scope: !4701)
!4712 = !DILocation(line: 1369, column: 277, scope: !4701)
!4713 = !DILocation(line: 1369, column: 208, scope: !4701)
!4714 = !DILocation(line: 1369, column: 296, scope: !4715)
!4715 = !DILexicalBlockFile(scope: !961, file: !514, discriminator: 7)
!4716 = !DILocation(line: 1369, column: 296, scope: !960)
!4717 = !DILocation(line: 1369, column: 296, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !960, file: !514, discriminator: 8)
!4719 = !DILocation(line: 1369, column: 296, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !960, file: !514, discriminator: 9)
!4721 = !DILocation(line: 1369, column: 309, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4723, file: !514, discriminator: 10)
!4723 = !DILexicalBlockFile(scope: !933, file: !514, discriminator: 3)
!4724 = !DILocation(line: 1369, column: 309, scope: !958)
!4725 = !DILocation(line: 1369, column: 309, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !958, file: !514, discriminator: 11)
!4727 = !DILocation(line: 1370, column: 5, scope: !933)
!4728 = !DILocation(line: 1370, column: 10, scope: !4729)
!4729 = !DILexicalBlockFile(scope: !963, file: !514, discriminator: 1)
!4730 = !DILocation(line: 1370, column: 20, scope: !963)
!4731 = !DILocation(line: 1370, column: 51, scope: !963)
!4732 = !DILocation(line: 1370, column: 64, scope: !966)
!4733 = !DILocation(line: 1370, column: 80, scope: !966)
!4734 = !DILocation(line: 1370, column: 64, scope: !963)
!4735 = !DILocation(line: 1370, column: 95, scope: !4736)
!4736 = !DILexicalBlockFile(scope: !966, file: !514, discriminator: 2)
!4737 = !DILocation(line: 1370, column: 100, scope: !4738)
!4738 = !DILexicalBlockFile(scope: !965, file: !514, discriminator: 4)
!4739 = !DILocation(line: 1370, column: 110, scope: !965)
!4740 = !DILocation(line: 1370, column: 140, scope: !965)
!4741 = !DILocation(line: 1370, column: 166, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !965, file: !514, line: 1370, column: 163)
!4743 = !DILocation(line: 1370, column: 183, scope: !4742)
!4744 = !DILocation(line: 1370, column: 163, scope: !4742)
!4745 = !DILocation(line: 1370, column: 193, scope: !4742)
!4746 = !DILocation(line: 1370, column: 163, scope: !965)
!4747 = !DILocation(line: 1370, column: 163, scope: !4748)
!4748 = !DILexicalBlockFile(scope: !965, file: !514, discriminator: 5)
!4749 = !DILocation(line: 1370, column: 224, scope: !4750)
!4750 = !DILexicalBlockFile(scope: !4742, file: !514, discriminator: 6)
!4751 = !DILocation(line: 1370, column: 242, scope: !4742)
!4752 = !DILocation(line: 1370, column: 252, scope: !4742)
!4753 = !DILocation(line: 1370, column: 277, scope: !4742)
!4754 = !DILocation(line: 1370, column: 208, scope: !4742)
!4755 = !DILocation(line: 1370, column: 296, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !966, file: !514, discriminator: 7)
!4757 = !DILocation(line: 1370, column: 296, scope: !965)
!4758 = !DILocation(line: 1370, column: 296, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !965, file: !514, discriminator: 8)
!4760 = !DILocation(line: 1370, column: 296, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !965, file: !514, discriminator: 9)
!4762 = !DILocation(line: 1370, column: 309, scope: !4722)
!4763 = !DILocation(line: 1370, column: 309, scope: !963)
!4764 = !DILocation(line: 1370, column: 309, scope: !4765)
!4765 = !DILexicalBlockFile(scope: !963, file: !514, discriminator: 11)
!4766 = !DILocation(line: 1372, column: 12, scope: !933)
!4767 = !DILocation(line: 1373, column: 1, scope: !933)
!4768 = !DILocation(line: 1372, column: 5, scope: !933)
!4769 = !DILocation(line: 1738, column: 36, scope: !967)
!4770 = !{!1448, !1310, i64 312}
!4771 = !DILocation(line: 1739, column: 12, scope: !967)
!4772 = !DILocation(line: 1739, column: 5, scope: !967)
!4773 = !DILocation(line: 1005, column: 74, scope: !1083)
!4774 = !DILocation(line: 1005, column: 90, scope: !1083)
!4775 = !DILocation(line: 1005, column: 106, scope: !1083)
!4776 = !DILocation(line: 1007, column: 5, scope: !1083)
!4777 = !DILocation(line: 1007, column: 15, scope: !1083)
!4778 = !DILocation(line: 1010, column: 5, scope: !1083)
!4779 = !DILocation(line: 1010, column: 9, scope: !1083)
!4780 = !DILocation(line: 1012, column: 32, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !1083, file: !514, line: 1012, column: 9)
!4782 = !DILocation(line: 1012, column: 10, scope: !4781)
!4783 = !DILocation(line: 1012, column: 38, scope: !4781)
!4784 = !DILocation(line: 1012, column: 68, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4781, file: !514, discriminator: 1)
!4786 = !DILocation(line: 1012, column: 42, scope: !4781)
!4787 = !DILocation(line: 1012, column: 9, scope: !1083)
!4788 = !DILocation(line: 1013, column: 9, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4781, file: !514, line: 1012, column: 75)
!4790 = !DILocation(line: 1016, column: 38, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !1083, file: !514, line: 1016, column: 9)
!4792 = !DILocation(line: 1016, column: 44, scope: !4791)
!4793 = !DILocation(line: 1016, column: 10, scope: !4791)
!4794 = !DILocation(line: 1016, column: 9, scope: !1083)
!4795 = !DILocation(line: 1018, column: 9, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4791, file: !514, line: 1017, column: 64)
!4797 = !DILocation(line: 1021, column: 33, scope: !1083)
!4798 = !DILocation(line: 1021, column: 39, scope: !1083)
!4799 = !DILocation(line: 1021, column: 72, scope: !1083)
!4800 = !DILocation(line: 1021, column: 65, scope: !1083)
!4801 = !DILocation(line: 1021, column: 10, scope: !1083)
!4802 = !DILocation(line: 1021, column: 8, scope: !1083)
!4803 = !DILocation(line: 1023, column: 9, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !1083, file: !514, line: 1023, column: 9)
!4805 = !DILocation(line: 1023, column: 12, scope: !4804)
!4806 = !DILocation(line: 1023, column: 9, scope: !1083)
!4807 = !DILocation(line: 1024, column: 25, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !514, line: 1023, column: 18)
!4809 = !DILocation(line: 1024, column: 9, scope: !4808)
!4810 = !DILocation(line: 1025, column: 9, scope: !4808)
!4811 = !DILocation(line: 1027, column: 28, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !514, line: 1027, column: 13)
!4813 = distinct !DILexicalBlock(scope: !4804, file: !514, line: 1026, column: 12)
!4814 = !DILocation(line: 1027, column: 34, scope: !4812)
!4815 = !DILocation(line: 1027, column: 53, scope: !4812)
!4816 = !DILocation(line: 1027, column: 13, scope: !4812)
!4817 = !DILocation(line: 1027, column: 87, scope: !4812)
!4818 = !DILocation(line: 1027, column: 13, scope: !4813)
!4819 = !DILocation(line: 1028, column: 13, scope: !4812)
!4820 = !DILocation(line: 1030, column: 55, scope: !4813)
!4821 = !DILocation(line: 1031, column: 9, scope: !4813)
!4822 = !DILocation(line: 1033, column: 1, scope: !1083)
!4823 = !DILocation(line: 1035, column: 80, scope: !1107)
!4824 = !DILocation(line: 1035, column: 96, scope: !1107)
!4825 = !DILocation(line: 1035, column: 112, scope: !1107)
!4826 = !DILocation(line: 1037, column: 5, scope: !1107)
!4827 = !DILocation(line: 1037, column: 15, scope: !1107)
!4828 = !DILocation(line: 1038, column: 5, scope: !1107)
!4829 = !DILocation(line: 1038, column: 9, scope: !1107)
!4830 = !DILocation(line: 1042, column: 32, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !1107, file: !514, line: 1042, column: 9)
!4832 = !DILocation(line: 1042, column: 10, scope: !4831)
!4833 = !DILocation(line: 1042, column: 38, scope: !4831)
!4834 = !DILocation(line: 1042, column: 68, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4831, file: !514, discriminator: 1)
!4836 = !DILocation(line: 1042, column: 42, scope: !4831)
!4837 = !DILocation(line: 1042, column: 9, scope: !1107)
!4838 = !DILocation(line: 1043, column: 9, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4831, file: !514, line: 1042, column: 75)
!4840 = !DILocation(line: 1046, column: 38, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !1107, file: !514, line: 1046, column: 9)
!4842 = !DILocation(line: 1046, column: 44, scope: !4841)
!4843 = !DILocation(line: 1046, column: 10, scope: !4841)
!4844 = !DILocation(line: 1046, column: 9, scope: !1107)
!4845 = !DILocation(line: 1048, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4841, file: !514, line: 1047, column: 71)
!4847 = !DILocation(line: 1051, column: 9, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !1107, file: !514, line: 1051, column: 9)
!4849 = !DILocation(line: 1051, column: 26, scope: !4848)
!4850 = !DILocation(line: 1051, column: 9, scope: !1107)
!4851 = !DILocation(line: 1053, column: 34, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4848, file: !514, line: 1051, column: 48)
!4853 = !DILocation(line: 1053, column: 40, scope: !4852)
!4854 = !DILocation(line: 1053, column: 9, scope: !4852)
!4855 = !DILocation(line: 1054, column: 5, scope: !4852)
!4856 = !DILocation(line: 1055, column: 34, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4848, file: !514, line: 1054, column: 12)
!4858 = !DILocation(line: 1055, column: 40, scope: !4857)
!4859 = !DILocation(line: 1055, column: 44, scope: !4857)
!4860 = !DILocation(line: 1055, column: 66, scope: !4857)
!4861 = !DILocation(line: 1055, column: 9, scope: !4857)
!4862 = !DILocation(line: 1056, column: 28, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4857, file: !514, line: 1056, column: 13)
!4864 = !DILocation(line: 1056, column: 34, scope: !4863)
!4865 = !DILocation(line: 1056, column: 53, scope: !4863)
!4866 = !DILocation(line: 1056, column: 13, scope: !4863)
!4867 = !DILocation(line: 1056, column: 90, scope: !4863)
!4868 = !DILocation(line: 1056, column: 13, scope: !4857)
!4869 = !DILocation(line: 1057, column: 13, scope: !4863)
!4870 = !DILocation(line: 1060, column: 51, scope: !1107)
!4871 = !DILocation(line: 1061, column: 5, scope: !1107)
!4872 = !DILocation(line: 1062, column: 1, scope: !1107)
!4873 = !DILocation(line: 1064, column: 78, scope: !1126)
!4874 = !DILocation(line: 1064, column: 94, scope: !1126)
!4875 = !DILocation(line: 1064, column: 110, scope: !1126)
!4876 = !DILocation(line: 1066, column: 5, scope: !1126)
!4877 = !DILocation(line: 1066, column: 15, scope: !1126)
!4878 = !DILocation(line: 1070, column: 32, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !1126, file: !514, line: 1070, column: 9)
!4880 = !DILocation(line: 1070, column: 10, scope: !4879)
!4881 = !DILocation(line: 1070, column: 38, scope: !4879)
!4882 = !DILocation(line: 1070, column: 68, scope: !4883)
!4883 = !DILexicalBlockFile(scope: !4879, file: !514, discriminator: 1)
!4884 = !DILocation(line: 1070, column: 42, scope: !4879)
!4885 = !DILocation(line: 1070, column: 9, scope: !1126)
!4886 = !DILocation(line: 1071, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4879, file: !514, line: 1070, column: 75)
!4888 = !DILocation(line: 1074, column: 38, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !1126, file: !514, line: 1074, column: 9)
!4890 = !DILocation(line: 1074, column: 44, scope: !4889)
!4891 = !DILocation(line: 1074, column: 10, scope: !4889)
!4892 = !DILocation(line: 1074, column: 9, scope: !1126)
!4893 = !DILocation(line: 1076, column: 9, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4889, file: !514, line: 1075, column: 65)
!4895 = !DILocation(line: 1079, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !1126, file: !514, line: 1079, column: 9)
!4897 = !DILocation(line: 1079, column: 24, scope: !4896)
!4898 = !DILocation(line: 1079, column: 9, scope: !1126)
!4899 = !DILocation(line: 1081, column: 23, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4896, file: !514, line: 1079, column: 46)
!4901 = !DILocation(line: 1081, column: 29, scope: !4900)
!4902 = !DILocation(line: 1081, column: 9, scope: !4900)
!4903 = !DILocation(line: 1082, column: 5, scope: !4900)
!4904 = !DILocation(line: 1083, column: 28, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !514, line: 1083, column: 13)
!4906 = distinct !DILexicalBlock(scope: !4896, file: !514, line: 1082, column: 12)
!4907 = !DILocation(line: 1083, column: 34, scope: !4905)
!4908 = !DILocation(line: 1083, column: 53, scope: !4905)
!4909 = !DILocation(line: 1083, column: 13, scope: !4905)
!4910 = !DILocation(line: 1083, column: 88, scope: !4905)
!4911 = !DILocation(line: 1083, column: 13, scope: !4906)
!4912 = !DILocation(line: 1084, column: 13, scope: !4905)
!4913 = !DILocation(line: 1085, column: 23, scope: !4906)
!4914 = !DILocation(line: 1085, column: 29, scope: !4906)
!4915 = !DILocation(line: 1085, column: 50, scope: !4906)
!4916 = !DILocation(line: 1085, column: 9, scope: !4906)
!4917 = !DILocation(line: 1088, column: 51, scope: !1126)
!4918 = !DILocation(line: 1089, column: 5, scope: !1126)
!4919 = !DILocation(line: 1090, column: 1, scope: !1126)
!4920 = !DILocation(line: 1501, column: 59, scope: !1149)
!4921 = !DILocation(line: 1501, column: 75, scope: !1149)
!4922 = !DILocation(line: 1503, column: 5, scope: !1149)
!4923 = !DILocation(line: 1503, column: 15, scope: !1149)
!4924 = !DILocation(line: 1504, column: 5, scope: !1149)
!4925 = !DILocation(line: 1504, column: 15, scope: !1149)
!4926 = !DILocation(line: 1505, column: 5, scope: !1149)
!4927 = !DILocation(line: 1505, column: 15, scope: !1149)
!4928 = !DILocation(line: 1506, column: 5, scope: !1149)
!4929 = !DILocation(line: 1506, column: 15, scope: !1149)
!4930 = !DILocation(line: 1507, column: 5, scope: !1149)
!4931 = !DILocation(line: 1507, column: 16, scope: !1149)
!4932 = !DILocation(line: 1507, column: 19, scope: !1149)
!4933 = !DILocation(line: 1509, column: 5, scope: !1149)
!4934 = !DILocation(line: 1509, column: 11, scope: !1149)
!4935 = !DILocation(line: 1510, column: 5, scope: !1149)
!4936 = !DILocation(line: 1510, column: 9, scope: !1149)
!4937 = !DILocation(line: 1511, column: 5, scope: !1149)
!4938 = !DILocation(line: 1511, column: 18, scope: !1149)
!4939 = !DILocation(line: 1512, column: 5, scope: !1149)
!4940 = !DILocation(line: 1512, column: 11, scope: !1149)
!4941 = !DILocation(line: 1514, column: 32, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1514, column: 9)
!4943 = !DILocation(line: 1514, column: 10, scope: !4942)
!4944 = !DILocation(line: 1514, column: 38, scope: !4942)
!4945 = !DILocation(line: 1514, column: 68, scope: !4946)
!4946 = !DILexicalBlockFile(scope: !4942, file: !514, discriminator: 1)
!4947 = !DILocation(line: 1514, column: 42, scope: !4942)
!4948 = !DILocation(line: 1514, column: 9, scope: !1149)
!4949 = !DILocation(line: 1515, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4942, file: !514, line: 1514, column: 75)
!4951 = !DILocation(line: 1518, column: 27, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1518, column: 9)
!4953 = !DILocation(line: 1518, column: 10, scope: !4952)
!4954 = !DILocation(line: 1518, column: 9, scope: !1149)
!4955 = !DILocation(line: 1519, column: 9, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4952, file: !514, line: 1518, column: 109)
!4957 = !DILocation(line: 1522, column: 45, scope: !1149)
!4958 = !DILocation(line: 1522, column: 22, scope: !1149)
!4959 = !DILocation(line: 1522, column: 20, scope: !1149)
!4960 = !DILocation(line: 1523, column: 10, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1523, column: 9)
!4962 = !DILocation(line: 1523, column: 9, scope: !1149)
!4963 = !DILocation(line: 1524, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4961, file: !514, line: 1523, column: 26)
!4965 = !DILocation(line: 1527, column: 43, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1527, column: 9)
!4967 = !DILocation(line: 1527, column: 27, scope: !4966)
!4968 = !DILocation(line: 1527, column: 60, scope: !4966)
!4969 = !DILocation(line: 1527, column: 66, scope: !4966)
!4970 = !DILocation(line: 1527, column: 25, scope: !4966)
!4971 = !DILocation(line: 1527, column: 25, scope: !4972)
!4972 = !DILexicalBlockFile(scope: !4966, file: !514, discriminator: 1)
!4973 = !DILocation(line: 1527, column: 109, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4966, file: !514, discriminator: 2)
!4975 = !DILocation(line: 1527, column: 79, scope: !4966)
!4976 = !DILocation(line: 1527, column: 22, scope: !4977)
!4977 = !DILexicalBlockFile(scope: !4978, file: !514, discriminator: 4)
!4978 = !DILexicalBlockFile(scope: !4966, file: !514, discriminator: 3)
!4979 = !DILocation(line: 1527, column: 9, scope: !1149)
!4980 = !DILocation(line: 1528, column: 9, scope: !4966)
!4981 = !DILocation(line: 1529, column: 59, scope: !1149)
!4982 = !DILocation(line: 1529, column: 41, scope: !1149)
!4983 = !DILocation(line: 1529, column: 77, scope: !1149)
!4984 = !{!4985, !1352, i64 16}
!4985 = !{!"", !1351, i64 0, !1352, i64 16, !1352, i64 24, !4986, i64 32, !1310, i64 40}
!4986 = !{!"", !1322, i64 0, !1322, i64 0, !1322, i64 0, !1322, i64 0, !1322, i64 0, !1322, i64 1}
!4987 = !DILocation(line: 1529, column: 9, scope: !1149)
!4988 = !DILocation(line: 1530, column: 60, scope: !1149)
!4989 = !DILocation(line: 1530, column: 42, scope: !1149)
!4990 = !DILocation(line: 1530, column: 78, scope: !1149)
!4991 = !DILocation(line: 1530, column: 84, scope: !1149)
!4992 = !DILocation(line: 1530, column: 10, scope: !1149)
!4993 = !DILocation(line: 1531, column: 46, scope: !1149)
!4994 = !DILocation(line: 1531, column: 29, scope: !1149)
!4995 = !DILocation(line: 1531, column: 64, scope: !1149)
!4996 = !DILocation(line: 1531, column: 70, scope: !1149)
!4997 = !DILocation(line: 1531, column: 27, scope: !1149)
!4998 = !DILocation(line: 1531, column: 128, scope: !4999)
!4999 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 1)
!5000 = !DILocation(line: 1531, column: 112, scope: !1149)
!5001 = !DILocation(line: 1531, column: 145, scope: !1149)
!5002 = !DILocation(line: 1531, column: 151, scope: !1149)
!5003 = !DILocation(line: 1531, column: 82, scope: !1149)
!5004 = !DILocation(line: 1531, column: 186, scope: !5005)
!5005 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 3)
!5006 = !DILocation(line: 1531, column: 169, scope: !1149)
!5007 = !DILocation(line: 1531, column: 202, scope: !1149)
!5008 = !DILocation(line: 1531, column: 161, scope: !1149)
!5009 = !DILocation(line: 1531, column: 245, scope: !5010)
!5010 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 4)
!5011 = !DILocation(line: 1531, column: 219, scope: !1149)
!5012 = !DILocation(line: 1531, column: 261, scope: !1149)
!5013 = !DILocation(line: 1531, column: 211, scope: !1149)
!5014 = !DILocation(line: 1531, column: 27, scope: !5015)
!5015 = !DILexicalBlockFile(scope: !5016, file: !514, discriminator: 6)
!5016 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 5)
!5017 = !DILocation(line: 1531, column: 308, scope: !5018)
!5018 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 2)
!5019 = !DILocation(line: 1531, column: 288, scope: !1149)
!5020 = !DILocation(line: 1531, column: 326, scope: !1149)
!5021 = !DILocation(line: 1531, column: 331, scope: !1149)
!5022 = !DILocation(line: 1531, column: 10, scope: !5023)
!5023 = !DILexicalBlockFile(scope: !5024, file: !514, discriminator: 8)
!5024 = !DILexicalBlockFile(scope: !1149, file: !514, discriminator: 7)
!5025 = !DILocation(line: 1532, column: 11, scope: !1166)
!5026 = !DILocation(line: 1532, column: 10, scope: !1166)
!5027 = !DILocation(line: 1532, column: 15, scope: !5028)
!5028 = !DILexicalBlockFile(scope: !5029, file: !514, discriminator: 2)
!5029 = !DILexicalBlockFile(scope: !1165, file: !514, discriminator: 1)
!5030 = !DILocation(line: 1532, column: 17, scope: !1165)
!5031 = !DILocation(line: 1532, column: 16, scope: !1165)
!5032 = !DILocation(line: 1532, column: 5, scope: !1166)
!5033 = !DILocation(line: 1533, column: 9, scope: !1164)
!5034 = !DILocation(line: 1533, column: 17, scope: !1164)
!5035 = !DILocation(line: 1533, column: 35, scope: !1164)
!5036 = !DILocation(line: 1533, column: 41, scope: !1164)
!5037 = !DILocation(line: 1533, column: 34, scope: !1164)
!5038 = !DILocation(line: 1533, column: 94, scope: !5039)
!5039 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 1)
!5040 = !DILocation(line: 1533, column: 86, scope: !1164)
!5041 = !DILocation(line: 1533, column: 67, scope: !1164)
!5042 = !DILocation(line: 1533, column: 102, scope: !5043)
!5043 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 2)
!5044 = !DILocation(line: 1533, column: 108, scope: !1164)
!5045 = !DILocation(line: 1533, column: 101, scope: !1164)
!5046 = !DILocation(line: 1533, column: 161, scope: !5047)
!5047 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 4)
!5048 = !DILocation(line: 1533, column: 153, scope: !1164)
!5049 = !DILocation(line: 1533, column: 135, scope: !1164)
!5050 = !DILocation(line: 1533, column: 134, scope: !1164)
!5051 = !{!5052, !5052, i64 0}
!5052 = !{!"short", !1311, i64 0}
!5053 = !DILocation(line: 1533, column: 194, scope: !5054)
!5054 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 5)
!5055 = !DILocation(line: 1533, column: 186, scope: !1164)
!5056 = !DILocation(line: 1533, column: 168, scope: !1164)
!5057 = !DILocation(line: 1533, column: 167, scope: !1164)
!5058 = !DILocation(line: 1533, column: 34, scope: !5059)
!5059 = !DILexicalBlockFile(scope: !5060, file: !514, discriminator: 7)
!5060 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 6)
!5061 = !DILocation(line: 1533, column: 17, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !5063, file: !514, discriminator: 8)
!5063 = !DILexicalBlockFile(scope: !1164, file: !514, discriminator: 3)
!5064 = !DILocation(line: 1534, column: 14, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !1164, file: !514, line: 1534, column: 13)
!5066 = !DILocation(line: 1534, column: 17, scope: !5065)
!5067 = !DILocation(line: 1534, column: 24, scope: !5065)
!5068 = !DILocation(line: 1534, column: 27, scope: !5069)
!5069 = !DILexicalBlockFile(scope: !5065, file: !514, discriminator: 1)
!5070 = !DILocation(line: 1534, column: 30, scope: !5065)
!5071 = !DILocation(line: 1535, column: 10, scope: !5065)
!5072 = !DILocation(line: 1535, column: 14, scope: !5069)
!5073 = !DILocation(line: 1535, column: 17, scope: !5065)
!5074 = !DILocation(line: 1535, column: 24, scope: !5065)
!5075 = !DILocation(line: 1535, column: 27, scope: !5076)
!5076 = !DILexicalBlockFile(scope: !5065, file: !514, discriminator: 2)
!5077 = !DILocation(line: 1535, column: 30, scope: !5065)
!5078 = !DILocation(line: 1536, column: 10, scope: !5065)
!5079 = !DILocation(line: 1536, column: 14, scope: !5069)
!5080 = !DILocation(line: 1536, column: 17, scope: !5065)
!5081 = !DILocation(line: 1534, column: 13, scope: !1164)
!5082 = !DILocation(line: 1538, column: 13, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5065, file: !514, line: 1537, column: 9)
!5084 = !DILocation(line: 1540, column: 29, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5065, file: !514, line: 1539, column: 16)
!5086 = !DILocation(line: 1540, column: 13, scope: !5085)
!5087 = !DILocation(line: 1541, column: 13, scope: !5085)
!5088 = !DILocation(line: 1543, column: 5, scope: !1165)
!5089 = !DILocation(line: 1532, column: 23, scope: !1165)
!5090 = !DILocation(line: 1532, column: 5, scope: !1165)
!5091 = !DILocation(line: 1545, column: 43, scope: !1149)
!5092 = !DILocation(line: 1545, column: 26, scope: !1149)
!5093 = !DILocation(line: 1545, column: 24, scope: !1149)
!5094 = !DILocation(line: 1546, column: 10, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1546, column: 9)
!5096 = !DILocation(line: 1546, column: 9, scope: !1149)
!5097 = !DILocation(line: 1547, column: 9, scope: !5095)
!5098 = !DILocation(line: 1549, column: 9, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1549, column: 9)
!5100 = !DILocation(line: 1549, column: 18, scope: !5099)
!5101 = !DILocation(line: 1549, column: 39, scope: !5099)
!5102 = !DILocation(line: 1549, column: 60, scope: !5103)
!5103 = !DILexicalBlockFile(scope: !5099, file: !514, discriminator: 1)
!5104 = !DILocation(line: 1549, column: 43, scope: !5099)
!5105 = !DILocation(line: 1549, column: 9, scope: !1149)
!5106 = !DILocation(line: 1550, column: 25, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5099, file: !514, line: 1549, column: 71)
!5108 = !DILocation(line: 1550, column: 9, scope: !5107)
!5109 = !DILocation(line: 1551, column: 9, scope: !5107)
!5110 = !DILocation(line: 1554, column: 9, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1554, column: 9)
!5112 = !DILocation(line: 1554, column: 18, scope: !5111)
!5113 = !DILocation(line: 1554, column: 9, scope: !1149)
!5114 = !DILocation(line: 1555, column: 28, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !514, line: 1555, column: 13)
!5116 = distinct !DILexicalBlock(scope: !5111, file: !514, line: 1554, column: 40)
!5117 = !DILocation(line: 1555, column: 34, scope: !5115)
!5118 = !DILocation(line: 1555, column: 46, scope: !5115)
!5119 = !DILocation(line: 1555, column: 62, scope: !5115)
!5120 = !DILocation(line: 1555, column: 13, scope: !5115)
!5121 = !DILocation(line: 1555, column: 72, scope: !5115)
!5122 = !DILocation(line: 1555, column: 13, scope: !5116)
!5123 = !DILocation(line: 1556, column: 13, scope: !5115)
!5124 = !DILocation(line: 1557, column: 5, scope: !5116)
!5125 = !DILocation(line: 1558, column: 28, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !514, line: 1558, column: 13)
!5127 = distinct !DILexicalBlock(scope: !5111, file: !514, line: 1557, column: 12)
!5128 = !DILocation(line: 1558, column: 34, scope: !5126)
!5129 = !DILocation(line: 1558, column: 46, scope: !5126)
!5130 = !DILocation(line: 1558, column: 13, scope: !5126)
!5131 = !DILocation(line: 1558, column: 62, scope: !5126)
!5132 = !DILocation(line: 1558, column: 13, scope: !5127)
!5133 = !DILocation(line: 1559, column: 13, scope: !5126)
!5134 = !DILocation(line: 1562, column: 35, scope: !1149)
!5135 = !DILocation(line: 1562, column: 41, scope: !1149)
!5136 = !DILocation(line: 1563, column: 35, scope: !1149)
!5137 = !DILocation(line: 1565, column: 36, scope: !1149)
!5138 = !DILocation(line: 1565, column: 45, scope: !1149)
!5139 = !DILocation(line: 1565, column: 35, scope: !1149)
!5140 = !DILocation(line: 1565, column: 69, scope: !4999)
!5141 = !DILocation(line: 1565, column: 35, scope: !5018)
!5142 = !DILocation(line: 1565, column: 35, scope: !5143)
!5143 = !DILexicalBlockFile(scope: !5005, file: !514, discriminator: 4)
!5144 = !DILocation(line: 1566, column: 36, scope: !1149)
!5145 = !DILocation(line: 1566, column: 45, scope: !1149)
!5146 = !DILocation(line: 1566, column: 35, scope: !1149)
!5147 = !DILocation(line: 1562, column: 10, scope: !1149)
!5148 = !DILocation(line: 1562, column: 8, scope: !1149)
!5149 = !DILocation(line: 1567, column: 9, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1567, column: 9)
!5151 = !DILocation(line: 1567, column: 12, scope: !5150)
!5152 = !DILocation(line: 1567, column: 9, scope: !1149)
!5153 = !DILocation(line: 1568, column: 24, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5150, file: !514, line: 1567, column: 18)
!5155 = !DILocation(line: 1568, column: 30, scope: !5154)
!5156 = !DILocation(line: 1568, column: 42, scope: !5154)
!5157 = !DILocation(line: 1568, column: 9, scope: !5154)
!5158 = !DILocation(line: 1569, column: 28, scope: !5154)
!5159 = !DILocation(line: 1569, column: 34, scope: !5154)
!5160 = !DILocation(line: 1569, column: 9, scope: !5154)
!5161 = !DILocation(line: 1570, column: 9, scope: !5154)
!5162 = !DILocation(line: 1567, column: 15, scope: !5163)
!5163 = !DILexicalBlockFile(scope: !5150, file: !514, discriminator: 1)
!5164 = !DILocation(line: 1574, column: 5, scope: !1149)
!5165 = !DILocation(line: 1574, column: 10, scope: !5166)
!5166 = !DILexicalBlockFile(scope: !1168, file: !514, discriminator: 1)
!5167 = !DILocation(line: 1574, column: 20, scope: !1168)
!5168 = !DILocation(line: 1574, column: 51, scope: !1168)
!5169 = !DILocation(line: 1574, column: 72, scope: !1171)
!5170 = !DILocation(line: 1574, column: 88, scope: !1171)
!5171 = !DILocation(line: 1574, column: 72, scope: !1168)
!5172 = !DILocation(line: 1574, column: 103, scope: !5173)
!5173 = !DILexicalBlockFile(scope: !1171, file: !514, discriminator: 2)
!5174 = !DILocation(line: 1574, column: 108, scope: !5175)
!5175 = !DILexicalBlockFile(scope: !1170, file: !514, discriminator: 4)
!5176 = !DILocation(line: 1574, column: 118, scope: !1170)
!5177 = !DILocation(line: 1574, column: 148, scope: !1170)
!5178 = !DILocation(line: 1574, column: 174, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !1170, file: !514, line: 1574, column: 171)
!5180 = !DILocation(line: 1574, column: 191, scope: !5179)
!5181 = !DILocation(line: 1574, column: 171, scope: !5179)
!5182 = !DILocation(line: 1574, column: 201, scope: !5179)
!5183 = !DILocation(line: 1574, column: 171, scope: !1170)
!5184 = !DILocation(line: 1574, column: 171, scope: !5185)
!5185 = !DILexicalBlockFile(scope: !1170, file: !514, discriminator: 5)
!5186 = !DILocation(line: 1574, column: 232, scope: !5187)
!5187 = !DILexicalBlockFile(scope: !5179, file: !514, discriminator: 6)
!5188 = !DILocation(line: 1574, column: 250, scope: !5179)
!5189 = !DILocation(line: 1574, column: 260, scope: !5179)
!5190 = !DILocation(line: 1574, column: 285, scope: !5179)
!5191 = !DILocation(line: 1574, column: 216, scope: !5179)
!5192 = !DILocation(line: 1574, column: 304, scope: !5193)
!5193 = !DILexicalBlockFile(scope: !1171, file: !514, discriminator: 7)
!5194 = !DILocation(line: 1574, column: 304, scope: !1170)
!5195 = !DILocation(line: 1574, column: 304, scope: !5196)
!5196 = !DILexicalBlockFile(scope: !1170, file: !514, discriminator: 8)
!5197 = !DILocation(line: 1574, column: 304, scope: !5198)
!5198 = !DILexicalBlockFile(scope: !1170, file: !514, discriminator: 9)
!5199 = !DILocation(line: 1574, column: 317, scope: !5200)
!5200 = !DILexicalBlockFile(scope: !5005, file: !514, discriminator: 10)
!5201 = !DILocation(line: 1574, column: 317, scope: !1168)
!5202 = !DILocation(line: 1574, column: 317, scope: !5203)
!5203 = !DILexicalBlockFile(scope: !1168, file: !514, discriminator: 11)
!5204 = !DILocation(line: 1576, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !1149, file: !514, line: 1576, column: 9)
!5206 = !DILocation(line: 1576, column: 9, scope: !1149)
!5207 = !DILocation(line: 1577, column: 16, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5205, file: !514, line: 1576, column: 27)
!5209 = !DILocation(line: 1578, column: 5, scope: !5208)
!5210 = !DILocation(line: 1579, column: 55, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5205, file: !514, line: 1578, column: 12)
!5212 = !DILocation(line: 1580, column: 16, scope: !5211)
!5213 = !DILocation(line: 1583, column: 12, scope: !1149)
!5214 = !DILocation(line: 1583, column: 5, scope: !1149)
!5215 = !DILocation(line: 1584, column: 1, scope: !1149)
!5216 = !DILocation(line: 1437, column: 52, scope: !1205)
!5217 = !DILocation(line: 1437, column: 68, scope: !1205)
!5218 = !DILocation(line: 1439, column: 5, scope: !1205)
!5219 = !DILocation(line: 1439, column: 15, scope: !1205)
!5220 = !DILocation(line: 1441, column: 36, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !1205, file: !514, line: 1441, column: 9)
!5222 = !DILocation(line: 1441, column: 10, scope: !5221)
!5223 = !DILocation(line: 1441, column: 9, scope: !1205)
!5224 = !DILocation(line: 1442, column: 9, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5221, file: !514, line: 1441, column: 43)
!5226 = !DILocation(line: 1445, column: 23, scope: !1205)
!5227 = !DILocation(line: 1445, column: 29, scope: !1205)
!5228 = !DILocation(line: 1445, column: 5, scope: !1205)
!5229 = !DILocation(line: 1447, column: 51, scope: !1205)
!5230 = !DILocation(line: 1448, column: 12, scope: !1205)
!5231 = !DILocation(line: 1448, column: 5, scope: !1205)
!5232 = !DILocation(line: 1451, column: 12, scope: !1205)
!5233 = !DILocation(line: 1452, column: 1, scope: !1205)
!5234 = !DILocation(line: 1451, column: 5, scope: !1205)
!5235 = !DILocation(line: 1459, column: 51, scope: !1210)
!5236 = !DILocation(line: 1459, column: 67, scope: !1210)
!5237 = !DILocation(line: 1461, column: 5, scope: !1210)
!5238 = !DILocation(line: 1461, column: 15, scope: !1210)
!5239 = !DILocation(line: 1462, column: 5, scope: !1210)
!5240 = !DILocation(line: 1462, column: 15, scope: !1210)
!5241 = !DILocation(line: 1463, column: 5, scope: !1210)
!5242 = !DILocation(line: 1463, column: 15, scope: !1210)
!5243 = !DILocation(line: 1464, column: 5, scope: !1210)
!5244 = !DILocation(line: 1464, column: 15, scope: !1210)
!5245 = !DILocation(line: 1466, column: 36, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1466, column: 9)
!5247 = !DILocation(line: 1466, column: 10, scope: !5246)
!5248 = !DILocation(line: 1466, column: 9, scope: !1210)
!5249 = !DILocation(line: 1467, column: 9, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !514, line: 1466, column: 43)
!5251 = !DILocation(line: 1470, column: 14, scope: !1210)
!5252 = !DILocation(line: 1470, column: 12, scope: !1210)
!5253 = !DILocation(line: 1471, column: 10, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1471, column: 9)
!5255 = !DILocation(line: 1471, column: 9, scope: !1210)
!5256 = !DILocation(line: 1472, column: 9, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5254, file: !514, line: 1471, column: 18)
!5258 = !DILocation(line: 1475, column: 36, scope: !1210)
!5259 = !DILocation(line: 1475, column: 19, scope: !1210)
!5260 = !DILocation(line: 1475, column: 17, scope: !1210)
!5261 = !DILocation(line: 1476, column: 10, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1476, column: 9)
!5263 = !DILocation(line: 1476, column: 9, scope: !1210)
!5264 = !DILocation(line: 1477, column: 9, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5262, file: !514, line: 1476, column: 23)
!5266 = !DILocation(line: 1480, column: 42, scope: !1210)
!5267 = !DILocation(line: 1480, column: 21, scope: !1210)
!5268 = !DILocation(line: 1480, column: 19, scope: !1210)
!5269 = !DILocation(line: 1481, column: 10, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1481, column: 9)
!5271 = !DILocation(line: 1481, column: 9, scope: !1210)
!5272 = !DILocation(line: 1482, column: 25, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5270, file: !514, line: 1481, column: 25)
!5274 = !DILocation(line: 1482, column: 9, scope: !5273)
!5275 = !DILocation(line: 1483, column: 9, scope: !5273)
!5276 = !DILocation(line: 1486, column: 12, scope: !1210)
!5277 = !DILocation(line: 1486, column: 10, scope: !1210)
!5278 = !DILocation(line: 1487, column: 10, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !1210, file: !514, line: 1487, column: 9)
!5280 = !DILocation(line: 1487, column: 9, scope: !1210)
!5281 = !DILocation(line: 1488, column: 9, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5279, file: !514, line: 1487, column: 16)
!5283 = !DILocation(line: 1490, column: 21, scope: !1210)
!5284 = !DILocation(line: 1490, column: 8, scope: !1210)
!5285 = !DILocation(line: 1490, column: 29, scope: !1210)
!5286 = !DILocation(line: 1490, column: 38, scope: !1210)
!5287 = !DILocation(line: 1491, column: 21, scope: !1210)
!5288 = !DILocation(line: 1491, column: 41, scope: !1210)
!5289 = !DILocation(line: 1491, column: 30, scope: !1210)
!5290 = !DILocation(line: 1491, column: 5, scope: !1210)
!5291 = !DILocation(line: 1492, column: 34, scope: !1210)
!5292 = !DILocation(line: 1492, column: 49, scope: !1210)
!5293 = !DILocation(line: 1492, column: 14, scope: !1210)
!5294 = !DILocation(line: 1492, column: 12, scope: !1210)
!5295 = !DILocation(line: 1492, column: 5, scope: !1210)
!5296 = !DILocation(line: 1495, column: 5, scope: !1210)
!5297 = !DILocation(line: 1495, column: 10, scope: !5298)
!5298 = !DILexicalBlockFile(scope: !1219, file: !514, discriminator: 1)
!5299 = !DILocation(line: 1495, column: 20, scope: !1219)
!5300 = !DILocation(line: 1495, column: 51, scope: !1219)
!5301 = !DILocation(line: 1495, column: 62, scope: !1222)
!5302 = !DILocation(line: 1495, column: 78, scope: !1222)
!5303 = !DILocation(line: 1495, column: 62, scope: !1219)
!5304 = !DILocation(line: 1495, column: 93, scope: !5305)
!5305 = !DILexicalBlockFile(scope: !1222, file: !514, discriminator: 2)
!5306 = !DILocation(line: 1495, column: 98, scope: !5307)
!5307 = !DILexicalBlockFile(scope: !1221, file: !514, discriminator: 4)
!5308 = !DILocation(line: 1495, column: 108, scope: !1221)
!5309 = !DILocation(line: 1495, column: 138, scope: !1221)
!5310 = !DILocation(line: 1495, column: 164, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !1221, file: !514, line: 1495, column: 161)
!5312 = !DILocation(line: 1495, column: 181, scope: !5311)
!5313 = !DILocation(line: 1495, column: 161, scope: !5311)
!5314 = !DILocation(line: 1495, column: 191, scope: !5311)
!5315 = !DILocation(line: 1495, column: 161, scope: !1221)
!5316 = !DILocation(line: 1495, column: 161, scope: !5317)
!5317 = !DILexicalBlockFile(scope: !1221, file: !514, discriminator: 5)
!5318 = !DILocation(line: 1495, column: 222, scope: !5319)
!5319 = !DILexicalBlockFile(scope: !5311, file: !514, discriminator: 6)
!5320 = !DILocation(line: 1495, column: 240, scope: !5311)
!5321 = !DILocation(line: 1495, column: 250, scope: !5311)
!5322 = !DILocation(line: 1495, column: 275, scope: !5311)
!5323 = !DILocation(line: 1495, column: 206, scope: !5311)
!5324 = !DILocation(line: 1495, column: 294, scope: !5325)
!5325 = !DILexicalBlockFile(scope: !1222, file: !514, discriminator: 7)
!5326 = !DILocation(line: 1495, column: 294, scope: !1221)
!5327 = !DILocation(line: 1495, column: 294, scope: !5328)
!5328 = !DILexicalBlockFile(scope: !1221, file: !514, discriminator: 8)
!5329 = !DILocation(line: 1495, column: 294, scope: !5330)
!5330 = !DILexicalBlockFile(scope: !1221, file: !514, discriminator: 9)
!5331 = !DILocation(line: 1495, column: 307, scope: !5332)
!5332 = !DILexicalBlockFile(scope: !5333, file: !514, discriminator: 10)
!5333 = !DILexicalBlockFile(scope: !1210, file: !514, discriminator: 3)
!5334 = !DILocation(line: 1495, column: 307, scope: !1219)
!5335 = !DILocation(line: 1495, column: 307, scope: !5336)
!5336 = !DILexicalBlockFile(scope: !1219, file: !514, discriminator: 11)
!5337 = !DILocation(line: 1496, column: 5, scope: !1210)
!5338 = !DILocation(line: 1496, column: 10, scope: !5339)
!5339 = !DILexicalBlockFile(scope: !1224, file: !514, discriminator: 1)
!5340 = !DILocation(line: 1496, column: 20, scope: !1224)
!5341 = !DILocation(line: 1496, column: 51, scope: !1224)
!5342 = !DILocation(line: 1496, column: 64, scope: !1227)
!5343 = !DILocation(line: 1496, column: 80, scope: !1227)
!5344 = !DILocation(line: 1496, column: 64, scope: !1224)
!5345 = !DILocation(line: 1496, column: 95, scope: !5346)
!5346 = !DILexicalBlockFile(scope: !1227, file: !514, discriminator: 2)
!5347 = !DILocation(line: 1496, column: 100, scope: !5348)
!5348 = !DILexicalBlockFile(scope: !1226, file: !514, discriminator: 4)
!5349 = !DILocation(line: 1496, column: 110, scope: !1226)
!5350 = !DILocation(line: 1496, column: 140, scope: !1226)
!5351 = !DILocation(line: 1496, column: 166, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !1226, file: !514, line: 1496, column: 163)
!5353 = !DILocation(line: 1496, column: 183, scope: !5352)
!5354 = !DILocation(line: 1496, column: 163, scope: !5352)
!5355 = !DILocation(line: 1496, column: 193, scope: !5352)
!5356 = !DILocation(line: 1496, column: 163, scope: !1226)
!5357 = !DILocation(line: 1496, column: 163, scope: !5358)
!5358 = !DILexicalBlockFile(scope: !1226, file: !514, discriminator: 5)
!5359 = !DILocation(line: 1496, column: 224, scope: !5360)
!5360 = !DILexicalBlockFile(scope: !5352, file: !514, discriminator: 6)
!5361 = !DILocation(line: 1496, column: 242, scope: !5352)
!5362 = !DILocation(line: 1496, column: 252, scope: !5352)
!5363 = !DILocation(line: 1496, column: 277, scope: !5352)
!5364 = !DILocation(line: 1496, column: 208, scope: !5352)
!5365 = !DILocation(line: 1496, column: 296, scope: !5366)
!5366 = !DILexicalBlockFile(scope: !1227, file: !514, discriminator: 7)
!5367 = !DILocation(line: 1496, column: 296, scope: !1226)
!5368 = !DILocation(line: 1496, column: 296, scope: !5369)
!5369 = !DILexicalBlockFile(scope: !1226, file: !514, discriminator: 8)
!5370 = !DILocation(line: 1496, column: 296, scope: !5371)
!5371 = !DILexicalBlockFile(scope: !1226, file: !514, discriminator: 9)
!5372 = !DILocation(line: 1496, column: 309, scope: !5332)
!5373 = !DILocation(line: 1496, column: 309, scope: !1224)
!5374 = !DILocation(line: 1496, column: 309, scope: !5375)
!5375 = !DILexicalBlockFile(scope: !1224, file: !514, discriminator: 11)
!5376 = !DILocation(line: 1497, column: 12, scope: !1210)
!5377 = !DILocation(line: 1498, column: 1, scope: !1210)
!5378 = !DILocation(line: 1497, column: 5, scope: !1210)
!5379 = !DILocation(line: 1589, column: 48, scope: !1228)
!5380 = !DILocation(line: 1589, column: 64, scope: !1228)
!5381 = !DILocation(line: 1591, column: 21, scope: !1228)
!5382 = !DILocation(line: 1591, column: 8, scope: !1228)
!5383 = !DILocation(line: 1591, column: 29, scope: !1228)
!5384 = !DILocation(line: 1591, column: 38, scope: !1228)
!5385 = !DILocation(line: 1592, column: 23, scope: !1228)
!5386 = !DILocation(line: 1592, column: 12, scope: !1228)
!5387 = !DILocation(line: 1592, column: 5, scope: !1228)
!5388 = !DILocation(line: 1598, column: 47, scope: !1232)
!5389 = !DILocation(line: 1598, column: 63, scope: !1232)
!5390 = !DILocation(line: 1600, column: 5, scope: !1232)
!5391 = !DILocation(line: 1600, column: 15, scope: !1232)
!5392 = !DILocation(line: 1600, column: 26, scope: !1232)
!5393 = !DILocation(line: 1600, column: 38, scope: !1232)
!5394 = !DILocation(line: 1601, column: 5, scope: !1232)
!5395 = !DILocation(line: 1601, column: 11, scope: !1232)
!5396 = !DILocation(line: 1602, column: 5, scope: !1232)
!5397 = !DILocation(line: 1602, column: 15, scope: !1232)
!5398 = !DILocation(line: 1604, column: 27, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !1232, file: !514, line: 1604, column: 9)
!5400 = !DILocation(line: 1604, column: 10, scope: !5399)
!5401 = !DILocation(line: 1604, column: 9, scope: !1232)
!5402 = !DILocation(line: 1605, column: 9, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5399, file: !514, line: 1604, column: 73)
!5404 = !DILocation(line: 1608, column: 9, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !1232, file: !514, line: 1608, column: 9)
!5406 = !DILocation(line: 1608, column: 18, scope: !5405)
!5407 = !DILocation(line: 1608, column: 39, scope: !5405)
!5408 = !DILocation(line: 1608, column: 42, scope: !5409)
!5409 = !DILexicalBlockFile(scope: !5405, file: !514, discriminator: 1)
!5410 = !DILocation(line: 1608, column: 52, scope: !5405)
!5411 = !DILocation(line: 1608, column: 73, scope: !5405)
!5412 = !DILocation(line: 1608, column: 76, scope: !5413)
!5413 = !DILexicalBlockFile(scope: !5405, file: !514, discriminator: 2)
!5414 = !DILocation(line: 1608, column: 83, scope: !5405)
!5415 = !DILocation(line: 1608, column: 9, scope: !1232)
!5416 = !DILocation(line: 1609, column: 21, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5405, file: !514, line: 1608, column: 105)
!5418 = !DILocation(line: 1610, column: 5, scope: !5417)
!5419 = !DILocation(line: 1611, column: 21, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5405, file: !514, line: 1610, column: 12)
!5421 = !DILocation(line: 1614, column: 45, scope: !1232)
!5422 = !DILocation(line: 1614, column: 34, scope: !1232)
!5423 = !DILocation(line: 1614, column: 51, scope: !1232)
!5424 = !DILocation(line: 1614, column: 14, scope: !1232)
!5425 = !DILocation(line: 1614, column: 12, scope: !1232)
!5426 = !DILocation(line: 1615, column: 10, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !1232, file: !514, line: 1615, column: 9)
!5428 = !DILocation(line: 1615, column: 9, scope: !1232)
!5429 = !DILocation(line: 1616, column: 9, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5427, file: !514, line: 1615, column: 18)
!5431 = !DILocation(line: 1618, column: 5, scope: !1232)
!5432 = !DILocation(line: 1618, column: 10, scope: !5433)
!5433 = !DILexicalBlockFile(scope: !1242, file: !514, discriminator: 1)
!5434 = !DILocation(line: 1618, column: 20, scope: !1242)
!5435 = !DILocation(line: 1618, column: 50, scope: !1242)
!5436 = !DILocation(line: 1618, column: 67, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !1242, file: !514, line: 1618, column: 64)
!5438 = !DILocation(line: 1618, column: 84, scope: !5437)
!5439 = !DILocation(line: 1618, column: 64, scope: !5437)
!5440 = !DILocation(line: 1618, column: 94, scope: !5437)
!5441 = !DILocation(line: 1618, column: 64, scope: !1242)
!5442 = !DILocation(line: 1618, column: 64, scope: !5443)
!5443 = !DILexicalBlockFile(scope: !1242, file: !514, discriminator: 2)
!5444 = !DILocation(line: 1618, column: 125, scope: !5445)
!5445 = !DILexicalBlockFile(scope: !5437, file: !514, discriminator: 3)
!5446 = !DILocation(line: 1618, column: 143, scope: !5437)
!5447 = !DILocation(line: 1618, column: 153, scope: !5437)
!5448 = !DILocation(line: 1618, column: 178, scope: !5437)
!5449 = !DILocation(line: 1618, column: 109, scope: !5437)
!5450 = !DILocation(line: 1618, column: 197, scope: !5451)
!5451 = !DILexicalBlockFile(scope: !1232, file: !514, discriminator: 4)
!5452 = !DILocation(line: 1618, column: 197, scope: !1242)
!5453 = !DILocation(line: 1618, column: 197, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !1242, file: !514, discriminator: 5)
!5455 = !DILocation(line: 1620, column: 72, scope: !1232)
!5456 = !DILocation(line: 1620, column: 5, scope: !1232)
!5457 = !DILocation(line: 1621, column: 1, scope: !1232)
!5458 = !DILocation(line: 899, column: 39, scope: !1090)
!5459 = !DILocation(line: 899, column: 53, scope: !1090)
!5460 = !DILocation(line: 899, column: 73, scope: !1090)
!5461 = !DILocation(line: 899, column: 91, scope: !1090)
!5462 = !DILocation(line: 899, column: 110, scope: !1090)
!5463 = !DILocation(line: 899, column: 130, scope: !1090)
!5464 = !DILocation(line: 901, column: 5, scope: !1090)
!5465 = !DILocation(line: 901, column: 15, scope: !1090)
!5466 = !DILocation(line: 902, column: 5, scope: !1090)
!5467 = !DILocation(line: 902, column: 9, scope: !1090)
!5468 = !DILocation(line: 904, column: 5, scope: !1090)
!5469 = !DILocation(line: 904, column: 22, scope: !1090)
!5470 = !DILocation(line: 906, column: 16, scope: !1090)
!5471 = !DILocation(line: 906, column: 14, scope: !1090)
!5472 = !DILocation(line: 909, column: 44, scope: !1090)
!5473 = !DILocation(line: 909, column: 33, scope: !1090)
!5474 = !DILocation(line: 909, column: 63, scope: !1090)
!5475 = !DILocation(line: 909, column: 71, scope: !1090)
!5476 = !DILocation(line: 909, column: 77, scope: !1090)
!5477 = !DILocation(line: 909, column: 83, scope: !1090)
!5478 = !DILocation(line: 909, column: 91, scope: !1090)
!5479 = !DILocation(line: 909, column: 11, scope: !1090)
!5480 = !DILocation(line: 909, column: 9, scope: !1090)
!5481 = !DILocation(line: 911, column: 9, scope: !1106)
!5482 = !DILocation(line: 911, column: 13, scope: !1106)
!5483 = !DILocation(line: 911, column: 9, scope: !1090)
!5484 = !DILocation(line: 912, column: 13, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !514, line: 912, column: 13)
!5486 = distinct !DILexicalBlock(scope: !1106, file: !514, line: 911, column: 28)
!5487 = !DILocation(line: 912, column: 13, scope: !5486)
!5488 = !DILocation(line: 913, column: 13, scope: !5485)
!5489 = !DILocation(line: 915, column: 13, scope: !5485)
!5490 = !DILocation(line: 917, column: 12, scope: !5486)
!5491 = !DILocation(line: 918, column: 5, scope: !5486)
!5492 = !DILocation(line: 920, column: 30, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !1105, file: !514, line: 920, column: 13)
!5494 = !DILocation(line: 920, column: 37, scope: !5493)
!5495 = !DILocation(line: 920, column: 48, scope: !5493)
!5496 = !DILocation(line: 920, column: 57, scope: !5493)
!5497 = !DILocation(line: 920, column: 74, scope: !5493)
!5498 = !DILocation(line: 920, column: 13, scope: !1105)
!5499 = !DILocation(line: 921, column: 32, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5493, file: !514, line: 920, column: 81)
!5501 = !DILocation(line: 921, column: 18, scope: !5500)
!5502 = !DILocation(line: 921, column: 16, scope: !5500)
!5503 = !DILocation(line: 922, column: 17, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5500, file: !514, line: 922, column: 17)
!5505 = !DILocation(line: 922, column: 20, scope: !5504)
!5506 = !DILocation(line: 922, column: 26, scope: !5504)
!5507 = !DILocation(line: 922, column: 29, scope: !5508)
!5508 = !DILexicalBlockFile(scope: !5504, file: !514, discriminator: 1)
!5509 = !DILocation(line: 922, column: 17, scope: !5500)
!5510 = !DILocation(line: 923, column: 21, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !514, line: 923, column: 21)
!5512 = distinct !DILexicalBlock(scope: !5504, file: !514, line: 922, column: 47)
!5513 = !DILocation(line: 923, column: 21, scope: !5512)
!5514 = !DILocation(line: 924, column: 21, scope: !5511)
!5515 = !DILocation(line: 926, column: 21, scope: !5511)
!5516 = !DILocation(line: 927, column: 20, scope: !5512)
!5517 = !DILocation(line: 928, column: 13, scope: !5512)
!5518 = !DILocation(line: 929, column: 9, scope: !5500)
!5519 = !DILocation(line: 931, column: 16, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5493, file: !514, line: 930, column: 14)
!5521 = !DILocation(line: 933, column: 9, scope: !1105)
!5522 = !DILocation(line: 933, column: 14, scope: !5523)
!5523 = !DILexicalBlockFile(scope: !1104, file: !514, discriminator: 1)
!5524 = !DILocation(line: 933, column: 24, scope: !1104)
!5525 = !DILocation(line: 933, column: 54, scope: !1104)
!5526 = !DILocation(line: 933, column: 68, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !1104, file: !514, line: 933, column: 65)
!5528 = !DILocation(line: 933, column: 85, scope: !5527)
!5529 = !DILocation(line: 933, column: 65, scope: !5527)
!5530 = !DILocation(line: 933, column: 95, scope: !5527)
!5531 = !DILocation(line: 933, column: 65, scope: !1104)
!5532 = !DILocation(line: 933, column: 65, scope: !5533)
!5533 = !DILexicalBlockFile(scope: !1104, file: !514, discriminator: 2)
!5534 = !DILocation(line: 933, column: 126, scope: !5535)
!5535 = !DILexicalBlockFile(scope: !5527, file: !514, discriminator: 3)
!5536 = !DILocation(line: 933, column: 144, scope: !5527)
!5537 = !DILocation(line: 933, column: 154, scope: !5527)
!5538 = !DILocation(line: 933, column: 179, scope: !5527)
!5539 = !DILocation(line: 933, column: 110, scope: !5527)
!5540 = !DILocation(line: 933, column: 198, scope: !5541)
!5541 = !DILexicalBlockFile(scope: !1105, file: !514, discriminator: 4)
!5542 = !DILocation(line: 933, column: 198, scope: !1104)
!5543 = !DILocation(line: 933, column: 198, scope: !5544)
!5544 = !DILexicalBlockFile(scope: !1104, file: !514, discriminator: 5)
!5545 = !DILocation(line: 937, column: 24, scope: !1090)
!5546 = !DILocation(line: 937, column: 5, scope: !1090)
!5547 = !DILocation(line: 939, column: 12, scope: !1090)
!5548 = !DILocation(line: 940, column: 1, scope: !1090)
!5549 = !DILocation(line: 939, column: 5, scope: !1090)
!5550 = !DILocation(line: 942, column: 36, scope: !1114)
!5551 = !DILocation(line: 944, column: 5, scope: !1114)
!5552 = !DILocation(line: 944, column: 9, scope: !1114)
!5553 = !DILocation(line: 945, column: 5, scope: !1114)
!5554 = !DILocation(line: 945, column: 15, scope: !1114)
!5555 = !DILocation(line: 947, column: 5, scope: !1114)
!5556 = !DILocation(line: 947, column: 22, scope: !1114)
!5557 = !DILocation(line: 949, column: 16, scope: !1114)
!5558 = !DILocation(line: 949, column: 14, scope: !1114)
!5559 = !DILocation(line: 951, column: 44, scope: !1114)
!5560 = !DILocation(line: 951, column: 33, scope: !1114)
!5561 = !DILocation(line: 951, column: 11, scope: !1114)
!5562 = !DILocation(line: 951, column: 9, scope: !1114)
!5563 = !DILocation(line: 953, column: 10, scope: !1125)
!5564 = !DILocation(line: 953, column: 9, scope: !1114)
!5565 = !DILocation(line: 954, column: 13, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !514, line: 954, column: 13)
!5567 = distinct !DILexicalBlock(scope: !1125, file: !514, line: 953, column: 15)
!5568 = !DILocation(line: 954, column: 13, scope: !5567)
!5569 = !DILocation(line: 955, column: 13, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !514, line: 954, column: 42)
!5571 = !DILocation(line: 956, column: 9, scope: !5570)
!5572 = !DILocation(line: 957, column: 13, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5566, file: !514, line: 956, column: 16)
!5574 = !DILocation(line: 961, column: 12, scope: !5567)
!5575 = !DILocation(line: 962, column: 5, scope: !5567)
!5576 = !DILocation(line: 963, column: 35, scope: !1124)
!5577 = !DILocation(line: 963, column: 19, scope: !1124)
!5578 = !DILocation(line: 963, column: 12, scope: !1124)
!5579 = !DILocation(line: 964, column: 9, scope: !1124)
!5580 = !DILocation(line: 964, column: 14, scope: !5581)
!5581 = !DILexicalBlockFile(scope: !1123, file: !514, discriminator: 1)
!5582 = !DILocation(line: 964, column: 24, scope: !1123)
!5583 = !DILocation(line: 964, column: 54, scope: !1123)
!5584 = !DILocation(line: 964, column: 68, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !1123, file: !514, line: 964, column: 65)
!5586 = !DILocation(line: 964, column: 85, scope: !5585)
!5587 = !DILocation(line: 964, column: 65, scope: !5585)
!5588 = !DILocation(line: 964, column: 95, scope: !5585)
!5589 = !DILocation(line: 964, column: 65, scope: !1123)
!5590 = !DILocation(line: 964, column: 65, scope: !5591)
!5591 = !DILexicalBlockFile(scope: !1123, file: !514, discriminator: 2)
!5592 = !DILocation(line: 964, column: 126, scope: !5593)
!5593 = !DILexicalBlockFile(scope: !5585, file: !514, discriminator: 3)
!5594 = !DILocation(line: 964, column: 144, scope: !5585)
!5595 = !DILocation(line: 964, column: 154, scope: !5585)
!5596 = !DILocation(line: 964, column: 179, scope: !5585)
!5597 = !DILocation(line: 964, column: 110, scope: !5585)
!5598 = !DILocation(line: 964, column: 198, scope: !5599)
!5599 = !DILexicalBlockFile(scope: !1124, file: !514, discriminator: 4)
!5600 = !DILocation(line: 964, column: 198, scope: !1123)
!5601 = !DILocation(line: 964, column: 198, scope: !5602)
!5602 = !DILexicalBlockFile(scope: !1123, file: !514, discriminator: 5)
!5603 = !DILocation(line: 968, column: 24, scope: !1114)
!5604 = !DILocation(line: 968, column: 5, scope: !1114)
!5605 = !DILocation(line: 970, column: 12, scope: !1114)
!5606 = !DILocation(line: 971, column: 1, scope: !1114)
!5607 = !DILocation(line: 970, column: 5, scope: !1114)
!5608 = !DILocation(line: 973, column: 35, scope: !1132)
!5609 = !DILocation(line: 973, column: 57, scope: !1132)
!5610 = !DILocation(line: 975, column: 5, scope: !1132)
!5611 = !DILocation(line: 975, column: 15, scope: !1132)
!5612 = !DILocation(line: 976, column: 5, scope: !1132)
!5613 = !DILocation(line: 976, column: 15, scope: !1132)
!5614 = !DILocation(line: 979, column: 5, scope: !1132)
!5615 = !DILocation(line: 979, column: 22, scope: !1132)
!5616 = !DILocation(line: 981, column: 16, scope: !1132)
!5617 = !DILocation(line: 981, column: 14, scope: !1132)
!5618 = !DILocation(line: 983, column: 41, scope: !1132)
!5619 = !DILocation(line: 984, column: 20, scope: !1132)
!5620 = !DILocation(line: 984, column: 13, scope: !1132)
!5621 = !DILocation(line: 983, column: 20, scope: !1132)
!5622 = !DILocation(line: 983, column: 18, scope: !1132)
!5623 = !DILocation(line: 985, column: 9, scope: !1144)
!5624 = !DILocation(line: 985, column: 9, scope: !1132)
!5625 = !DILocation(line: 986, column: 55, scope: !1143)
!5626 = !DILocation(line: 986, column: 44, scope: !1143)
!5627 = !DILocation(line: 986, column: 65, scope: !1143)
!5628 = !DILocation(line: 986, column: 15, scope: !1143)
!5629 = !DILocation(line: 986, column: 13, scope: !1143)
!5630 = !DILocation(line: 987, column: 9, scope: !1143)
!5631 = !DILocation(line: 987, column: 14, scope: !5632)
!5632 = !DILexicalBlockFile(scope: !1142, file: !514, discriminator: 1)
!5633 = !DILocation(line: 987, column: 24, scope: !1142)
!5634 = !DILocation(line: 987, column: 54, scope: !1142)
!5635 = !DILocation(line: 987, column: 77, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !1142, file: !514, line: 987, column: 74)
!5637 = !DILocation(line: 987, column: 94, scope: !5636)
!5638 = !DILocation(line: 987, column: 74, scope: !5636)
!5639 = !DILocation(line: 987, column: 104, scope: !5636)
!5640 = !DILocation(line: 987, column: 74, scope: !1142)
!5641 = !DILocation(line: 987, column: 74, scope: !5642)
!5642 = !DILexicalBlockFile(scope: !1142, file: !514, discriminator: 2)
!5643 = !DILocation(line: 987, column: 135, scope: !5644)
!5644 = !DILexicalBlockFile(scope: !5636, file: !514, discriminator: 3)
!5645 = !DILocation(line: 987, column: 153, scope: !5636)
!5646 = !DILocation(line: 987, column: 163, scope: !5636)
!5647 = !DILocation(line: 987, column: 188, scope: !5636)
!5648 = !DILocation(line: 987, column: 119, scope: !5636)
!5649 = !DILocation(line: 987, column: 207, scope: !5650)
!5650 = !DILexicalBlockFile(scope: !1143, file: !514, discriminator: 4)
!5651 = !DILocation(line: 987, column: 207, scope: !1142)
!5652 = !DILocation(line: 987, column: 207, scope: !5653)
!5653 = !DILexicalBlockFile(scope: !1142, file: !514, discriminator: 5)
!5654 = !DILocation(line: 988, column: 5, scope: !1143)
!5655 = !DILocation(line: 990, column: 9, scope: !1148)
!5656 = !DILocation(line: 990, column: 9, scope: !1132)
!5657 = !DILocation(line: 991, column: 9, scope: !1147)
!5658 = !DILocation(line: 991, column: 14, scope: !5659)
!5659 = !DILexicalBlockFile(scope: !1146, file: !514, discriminator: 1)
!5660 = !DILocation(line: 991, column: 24, scope: !1146)
!5661 = !DILocation(line: 991, column: 54, scope: !1146)
!5662 = !DILocation(line: 991, column: 68, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !1146, file: !514, line: 991, column: 65)
!5664 = !DILocation(line: 991, column: 85, scope: !5663)
!5665 = !DILocation(line: 991, column: 65, scope: !5663)
!5666 = !DILocation(line: 991, column: 95, scope: !5663)
!5667 = !DILocation(line: 991, column: 65, scope: !1146)
!5668 = !DILocation(line: 991, column: 65, scope: !5669)
!5669 = !DILexicalBlockFile(scope: !1146, file: !514, discriminator: 2)
!5670 = !DILocation(line: 991, column: 126, scope: !5671)
!5671 = !DILexicalBlockFile(scope: !5663, file: !514, discriminator: 3)
!5672 = !DILocation(line: 991, column: 144, scope: !5663)
!5673 = !DILocation(line: 991, column: 154, scope: !5663)
!5674 = !DILocation(line: 991, column: 179, scope: !5663)
!5675 = !DILocation(line: 991, column: 110, scope: !5663)
!5676 = !DILocation(line: 991, column: 198, scope: !5677)
!5677 = !DILexicalBlockFile(scope: !1147, file: !514, discriminator: 4)
!5678 = !DILocation(line: 991, column: 198, scope: !1146)
!5679 = !DILocation(line: 991, column: 198, scope: !5680)
!5680 = !DILexicalBlockFile(scope: !1146, file: !514, discriminator: 5)
!5681 = !DILocation(line: 992, column: 5, scope: !1147)
!5682 = !DILocation(line: 993, column: 13, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !514, line: 993, column: 13)
!5684 = distinct !DILexicalBlock(scope: !1148, file: !514, line: 992, column: 12)
!5685 = !DILocation(line: 993, column: 13, scope: !5684)
!5686 = !DILocation(line: 994, column: 13, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !514, line: 993, column: 42)
!5688 = !DILocation(line: 995, column: 9, scope: !5687)
!5689 = !DILocation(line: 996, column: 13, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5683, file: !514, line: 995, column: 16)
!5691 = !DILocation(line: 1001, column: 24, scope: !1132)
!5692 = !DILocation(line: 1001, column: 5, scope: !1132)
!5693 = !DILocation(line: 1003, column: 1, scope: !1132)
!5694 = !DILocation(line: 1379, column: 15, scope: !1172)
!5695 = !DILocation(line: 1380, column: 13, scope: !1172)
!5696 = !DILocation(line: 1380, column: 39, scope: !1172)
!5697 = !DILocation(line: 1381, column: 13, scope: !1172)
!5698 = !DILocation(line: 1381, column: 39, scope: !1172)
!5699 = !DILocation(line: 1383, column: 5, scope: !1172)
!5700 = !DILocation(line: 1383, column: 15, scope: !1172)
!5701 = !DILocation(line: 1383, column: 37, scope: !1172)
!5702 = !DILocation(line: 1383, column: 26, scope: !1172)
!5703 = !DILocation(line: 1384, column: 5, scope: !1172)
!5704 = !DILocation(line: 1384, column: 15, scope: !1172)
!5705 = !DILocation(line: 1385, column: 5, scope: !1172)
!5706 = !DILocation(line: 1385, column: 15, scope: !1172)
!5707 = !DILocation(line: 1387, column: 5, scope: !1172)
!5708 = !DILocation(line: 1387, column: 22, scope: !1172)
!5709 = !DILocation(line: 1389, column: 5, scope: !1172)
!5710 = !DILocation(line: 1389, column: 15, scope: !1172)
!5711 = !DILocation(line: 1390, column: 5, scope: !1172)
!5712 = !DILocation(line: 1390, column: 10, scope: !1172)
!5713 = !DILocation(line: 1391, column: 5, scope: !1172)
!5714 = !DILocation(line: 1391, column: 9, scope: !1172)
!5715 = !DILocation(line: 1393, column: 16, scope: !1172)
!5716 = !DILocation(line: 1393, column: 14, scope: !1172)
!5717 = !DILocation(line: 1396, column: 9, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1396, column: 9)
!5719 = !DILocation(line: 1396, column: 9, scope: !1172)
!5720 = !DILocation(line: 1397, column: 9, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5718, file: !514, line: 1396, column: 27)
!5722 = !DILocation(line: 1400, column: 56, scope: !1172)
!5723 = !DILocation(line: 1400, column: 68, scope: !1172)
!5724 = !DILocation(line: 1400, column: 15, scope: !1172)
!5725 = !DILocation(line: 1400, column: 13, scope: !1172)
!5726 = !DILocation(line: 1401, column: 56, scope: !1172)
!5727 = !DILocation(line: 1401, column: 68, scope: !1172)
!5728 = !DILocation(line: 1401, column: 15, scope: !1172)
!5729 = !DILocation(line: 1401, column: 13, scope: !1172)
!5730 = !DILocation(line: 1403, column: 10, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1403, column: 9)
!5732 = !DILocation(line: 1403, column: 18, scope: !5731)
!5733 = !DILocation(line: 1403, column: 22, scope: !5734)
!5734 = !DILexicalBlockFile(scope: !5731, file: !514, discriminator: 1)
!5735 = !DILocation(line: 1403, column: 9, scope: !1172)
!5736 = !DILocation(line: 1404, column: 9, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5731, file: !514, line: 1403, column: 31)
!5738 = !DILocation(line: 1407, column: 43, scope: !1172)
!5739 = !DILocation(line: 1407, column: 53, scope: !1172)
!5740 = !DILocation(line: 1407, column: 62, scope: !1172)
!5741 = !DILocation(line: 1407, column: 14, scope: !1172)
!5742 = !DILocation(line: 1407, column: 12, scope: !1172)
!5743 = !DILocation(line: 1409, column: 10, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1409, column: 9)
!5745 = !DILocation(line: 1409, column: 9, scope: !1172)
!5746 = !DILocation(line: 1411, column: 9, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5744, file: !514, line: 1409, column: 18)
!5748 = !DILocation(line: 1414, column: 40, scope: !1172)
!5749 = !DILocation(line: 1414, column: 15, scope: !1172)
!5750 = !DILocation(line: 1414, column: 13, scope: !1172)
!5751 = !DILocation(line: 1415, column: 9, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !1172, file: !514, line: 1415, column: 9)
!5753 = !DILocation(line: 1415, column: 17, scope: !5752)
!5754 = !DILocation(line: 1415, column: 23, scope: !5752)
!5755 = !DILocation(line: 1415, column: 26, scope: !5756)
!5756 = !DILexicalBlockFile(scope: !5752, file: !514, discriminator: 1)
!5757 = !DILocation(line: 1415, column: 9, scope: !1172)
!5758 = !DILocation(line: 1416, column: 9, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5752, file: !514, line: 1415, column: 44)
!5760 = !DILocation(line: 1417, column: 16, scope: !5759)
!5761 = !DILocation(line: 1418, column: 5, scope: !5759)
!5762 = !DILocation(line: 1419, column: 15, scope: !5763)
!5763 = distinct !DILexicalBlock(scope: !5752, file: !514, line: 1419, column: 14)
!5764 = !DILocation(line: 1419, column: 14, scope: !5752)
!5765 = !DILocation(line: 1420, column: 13, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5767, file: !514, line: 1420, column: 13)
!5767 = distinct !DILexicalBlock(scope: !5763, file: !514, line: 1419, column: 23)
!5768 = !DILocation(line: 1420, column: 21, scope: !5766)
!5769 = !DILocation(line: 1420, column: 13, scope: !5767)
!5770 = !DILocation(line: 1421, column: 20, scope: !5766)
!5771 = !DILocation(line: 1421, column: 13, scope: !5766)
!5772 = !DILocation(line: 1422, column: 18, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5766, file: !514, line: 1422, column: 18)
!5774 = !DILocation(line: 1422, column: 26, scope: !5773)
!5775 = !DILocation(line: 1422, column: 18, scope: !5766)
!5776 = !DILocation(line: 1423, column: 20, scope: !5773)
!5777 = !DILocation(line: 1423, column: 13, scope: !5773)
!5778 = !DILocation(line: 1424, column: 5, scope: !5767)
!5779 = !DILocation(line: 1415, column: 41, scope: !5752)
!5780 = !DILocation(line: 1427, column: 5, scope: !1172)
!5781 = !DILocation(line: 1427, column: 10, scope: !5782)
!5782 = !DILexicalBlockFile(scope: !1191, file: !514, discriminator: 1)
!5783 = !DILocation(line: 1427, column: 20, scope: !1191)
!5784 = !DILocation(line: 1427, column: 51, scope: !1191)
!5785 = !DILocation(line: 1427, column: 65, scope: !1194)
!5786 = !DILocation(line: 1427, column: 81, scope: !1194)
!5787 = !DILocation(line: 1427, column: 65, scope: !1191)
!5788 = !DILocation(line: 1427, column: 96, scope: !5789)
!5789 = !DILexicalBlockFile(scope: !1194, file: !514, discriminator: 2)
!5790 = !DILocation(line: 1427, column: 101, scope: !5791)
!5791 = !DILexicalBlockFile(scope: !1193, file: !514, discriminator: 4)
!5792 = !DILocation(line: 1427, column: 111, scope: !1193)
!5793 = !DILocation(line: 1427, column: 141, scope: !1193)
!5794 = !DILocation(line: 1427, column: 167, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !1193, file: !514, line: 1427, column: 164)
!5796 = !DILocation(line: 1427, column: 184, scope: !5795)
!5797 = !DILocation(line: 1427, column: 164, scope: !5795)
!5798 = !DILocation(line: 1427, column: 194, scope: !5795)
!5799 = !DILocation(line: 1427, column: 164, scope: !1193)
!5800 = !DILocation(line: 1427, column: 164, scope: !5801)
!5801 = !DILexicalBlockFile(scope: !1193, file: !514, discriminator: 5)
!5802 = !DILocation(line: 1427, column: 225, scope: !5803)
!5803 = !DILexicalBlockFile(scope: !5795, file: !514, discriminator: 6)
!5804 = !DILocation(line: 1427, column: 243, scope: !5795)
!5805 = !DILocation(line: 1427, column: 253, scope: !5795)
!5806 = !DILocation(line: 1427, column: 278, scope: !5795)
!5807 = !DILocation(line: 1427, column: 209, scope: !5795)
!5808 = !DILocation(line: 1427, column: 297, scope: !5809)
!5809 = !DILexicalBlockFile(scope: !1194, file: !514, discriminator: 7)
!5810 = !DILocation(line: 1427, column: 297, scope: !1193)
!5811 = !DILocation(line: 1427, column: 297, scope: !5812)
!5812 = !DILexicalBlockFile(scope: !1193, file: !514, discriminator: 8)
!5813 = !DILocation(line: 1427, column: 297, scope: !5814)
!5814 = !DILexicalBlockFile(scope: !1193, file: !514, discriminator: 9)
!5815 = !DILocation(line: 1427, column: 310, scope: !5816)
!5816 = !DILexicalBlockFile(scope: !5817, file: !514, discriminator: 10)
!5817 = !DILexicalBlockFile(scope: !1172, file: !514, discriminator: 3)
!5818 = !DILocation(line: 1427, column: 310, scope: !1191)
!5819 = !DILocation(line: 1427, column: 310, scope: !5820)
!5820 = !DILexicalBlockFile(scope: !1191, file: !514, discriminator: 11)
!5821 = !DILocation(line: 1428, column: 5, scope: !1172)
!5822 = !DILocation(line: 1428, column: 10, scope: !5823)
!5823 = !DILexicalBlockFile(scope: !1196, file: !514, discriminator: 1)
!5824 = !DILocation(line: 1428, column: 20, scope: !1196)
!5825 = !DILocation(line: 1428, column: 51, scope: !1196)
!5826 = !DILocation(line: 1428, column: 65, scope: !1199)
!5827 = !DILocation(line: 1428, column: 81, scope: !1199)
!5828 = !DILocation(line: 1428, column: 65, scope: !1196)
!5829 = !DILocation(line: 1428, column: 96, scope: !5830)
!5830 = !DILexicalBlockFile(scope: !1199, file: !514, discriminator: 2)
!5831 = !DILocation(line: 1428, column: 101, scope: !5832)
!5832 = !DILexicalBlockFile(scope: !1198, file: !514, discriminator: 4)
!5833 = !DILocation(line: 1428, column: 111, scope: !1198)
!5834 = !DILocation(line: 1428, column: 141, scope: !1198)
!5835 = !DILocation(line: 1428, column: 167, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !1198, file: !514, line: 1428, column: 164)
!5837 = !DILocation(line: 1428, column: 184, scope: !5836)
!5838 = !DILocation(line: 1428, column: 164, scope: !5836)
!5839 = !DILocation(line: 1428, column: 194, scope: !5836)
!5840 = !DILocation(line: 1428, column: 164, scope: !1198)
!5841 = !DILocation(line: 1428, column: 164, scope: !5842)
!5842 = !DILexicalBlockFile(scope: !1198, file: !514, discriminator: 5)
!5843 = !DILocation(line: 1428, column: 225, scope: !5844)
!5844 = !DILexicalBlockFile(scope: !5836, file: !514, discriminator: 6)
!5845 = !DILocation(line: 1428, column: 243, scope: !5836)
!5846 = !DILocation(line: 1428, column: 253, scope: !5836)
!5847 = !DILocation(line: 1428, column: 278, scope: !5836)
!5848 = !DILocation(line: 1428, column: 209, scope: !5836)
!5849 = !DILocation(line: 1428, column: 297, scope: !5850)
!5850 = !DILexicalBlockFile(scope: !1199, file: !514, discriminator: 7)
!5851 = !DILocation(line: 1428, column: 297, scope: !1198)
!5852 = !DILocation(line: 1428, column: 297, scope: !5853)
!5853 = !DILexicalBlockFile(scope: !1198, file: !514, discriminator: 8)
!5854 = !DILocation(line: 1428, column: 297, scope: !5855)
!5855 = !DILexicalBlockFile(scope: !1198, file: !514, discriminator: 9)
!5856 = !DILocation(line: 1428, column: 310, scope: !5816)
!5857 = !DILocation(line: 1428, column: 310, scope: !1196)
!5858 = !DILocation(line: 1428, column: 310, scope: !5859)
!5859 = !DILexicalBlockFile(scope: !1196, file: !514, discriminator: 11)
!5860 = !DILocation(line: 1429, column: 5, scope: !1172)
!5861 = !DILocation(line: 1429, column: 10, scope: !5862)
!5862 = !DILexicalBlockFile(scope: !1201, file: !514, discriminator: 1)
!5863 = !DILocation(line: 1429, column: 20, scope: !1201)
!5864 = !DILocation(line: 1429, column: 51, scope: !1201)
!5865 = !DILocation(line: 1429, column: 64, scope: !1204)
!5866 = !DILocation(line: 1429, column: 80, scope: !1204)
!5867 = !DILocation(line: 1429, column: 64, scope: !1201)
!5868 = !DILocation(line: 1429, column: 95, scope: !5869)
!5869 = !DILexicalBlockFile(scope: !1204, file: !514, discriminator: 2)
!5870 = !DILocation(line: 1429, column: 100, scope: !5871)
!5871 = !DILexicalBlockFile(scope: !1203, file: !514, discriminator: 4)
!5872 = !DILocation(line: 1429, column: 110, scope: !1203)
!5873 = !DILocation(line: 1429, column: 140, scope: !1203)
!5874 = !DILocation(line: 1429, column: 166, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !1203, file: !514, line: 1429, column: 163)
!5876 = !DILocation(line: 1429, column: 183, scope: !5875)
!5877 = !DILocation(line: 1429, column: 163, scope: !5875)
!5878 = !DILocation(line: 1429, column: 193, scope: !5875)
!5879 = !DILocation(line: 1429, column: 163, scope: !1203)
!5880 = !DILocation(line: 1429, column: 163, scope: !5881)
!5881 = !DILexicalBlockFile(scope: !1203, file: !514, discriminator: 5)
!5882 = !DILocation(line: 1429, column: 224, scope: !5883)
!5883 = !DILexicalBlockFile(scope: !5875, file: !514, discriminator: 6)
!5884 = !DILocation(line: 1429, column: 242, scope: !5875)
!5885 = !DILocation(line: 1429, column: 252, scope: !5875)
!5886 = !DILocation(line: 1429, column: 277, scope: !5875)
!5887 = !DILocation(line: 1429, column: 208, scope: !5875)
!5888 = !DILocation(line: 1429, column: 296, scope: !5889)
!5889 = !DILexicalBlockFile(scope: !1204, file: !514, discriminator: 7)
!5890 = !DILocation(line: 1429, column: 296, scope: !1203)
!5891 = !DILocation(line: 1429, column: 296, scope: !5892)
!5892 = !DILexicalBlockFile(scope: !1203, file: !514, discriminator: 8)
!5893 = !DILocation(line: 1429, column: 296, scope: !5894)
!5894 = !DILexicalBlockFile(scope: !1203, file: !514, discriminator: 9)
!5895 = !DILocation(line: 1429, column: 309, scope: !5816)
!5896 = !DILocation(line: 1429, column: 309, scope: !1201)
!5897 = !DILocation(line: 1429, column: 309, scope: !5898)
!5898 = !DILexicalBlockFile(scope: !1201, file: !514, discriminator: 11)
!5899 = !DILocation(line: 1431, column: 24, scope: !1172)
!5900 = !DILocation(line: 1431, column: 5, scope: !1172)
!5901 = !DILocation(line: 1433, column: 12, scope: !1172)
!5902 = !DILocation(line: 1434, column: 1, scope: !1172)
!5903 = !DILocation(line: 1433, column: 5, scope: !1172)
!5904 = !DILocation(line: 1159, column: 79, scope: !1243)
!5905 = !DILocation(line: 1159, column: 91, scope: !1243)
!5906 = !DILocation(line: 1161, column: 21, scope: !1243)
!5907 = !DILocation(line: 1161, column: 27, scope: !1243)
!5908 = !DILocation(line: 1161, column: 46, scope: !1243)
!5909 = !DILocation(line: 1161, column: 55, scope: !1243)
!5910 = !DILocation(line: 1162, column: 12, scope: !1243)
!5911 = !DILocation(line: 1162, column: 18, scope: !1243)
!5912 = !DILocation(line: 1162, column: 5, scope: !1243)
!5913 = !DILocation(line: 1165, column: 77, scope: !1249)
!5914 = !DILocation(line: 1165, column: 89, scope: !1249)
!5915 = !DILocation(line: 1167, column: 36, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !1249, file: !514, line: 1167, column: 9)
!5917 = !DILocation(line: 1167, column: 10, scope: !5916)
!5918 = !DILocation(line: 1167, column: 9, scope: !1249)
!5919 = !DILocation(line: 1168, column: 9, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5916, file: !514, line: 1167, column: 43)
!5921 = !DILocation(line: 1170, column: 57, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5916, file: !514, line: 1169, column: 12)
!5923 = !DILocation(line: 1170, column: 63, scope: !5922)
!5924 = !DILocation(line: 1170, column: 35, scope: !5922)
!5925 = !DILocation(line: 1170, column: 16, scope: !5922)
!5926 = !DILocation(line: 1170, column: 9, scope: !5922)
!5927 = !DILocation(line: 1172, column: 1, scope: !1249)
