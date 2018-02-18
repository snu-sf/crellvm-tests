; ModuleID = './connection.bc'
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
  %_save = alloca %struct._ts*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 0, i32* %detect_types, align 4
  store %struct._object* null, %struct._object** %isolation_level, align 8
  store %struct._object* null, %struct._object** %factory, align 8
  store i32 1, i32* %check_same_thread, align 4
  store i32 100, i32* %cached_statements, align 4
  store i32 0, i32* %uri, align 4
  store double 5.000000e+00, double* %timeout, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @pysqlite_connection_init.kwlist, i32 0, i32 0), i8** %database, double* %timeout, i32* %detect_types, %struct._object** %isolation_level, i32* %check_same_thread, %struct._object** %factory, i32* %cached_statements, i32* %uri)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %initialized = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 9
  store i32 1, i32* %initialized, align 4
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 7
  store i8* null, i8** %begin_statement, align 8
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 11
  store %struct.pysqlite_Cache* null, %struct.pysqlite_Cache** %statement_cache, align 8
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 12
  store %struct._object* null, %struct._object** %statements, align 8
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 13
  store %struct._object* null, %struct._object** %cursors, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 16
  store %struct._object* @_Py_NoneStruct, %struct._object** %row_factory, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc1 = add i64 %9, 1
  store i64 %inc1, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 17
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0), %struct._object** %text_factory, align 8
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %11 = load i8*, i8** %database, align 8
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 1
  %13 = load i32, i32* %uri, align 4
  %tobool3 = icmp ne i32 %13, 0
  %cond = select i1 %tobool3, i32 64, i32 0
  %or = or i32 6, %cond
  %call4 = call i32 @sqlite3_open_v2(i8* %11, %struct.sqlite3** %db, i32 %or, i8* null)
  store i32 %call4, i32* %rc, align 4
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  %15 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db6 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %16, i32 0, i32 1
  %17 = load %struct.sqlite3*, %struct.sqlite3** %db6, align 8
  %call7 = call i32 @_pysqlite_seterror(%struct.sqlite3* %17, %struct.sqlite3_stmt* null)
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %isolation_level, align 8
  %tobool9 = icmp ne %struct._object* %18, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %call11 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %isolation_level, align 8
  %19 = load %struct._object*, %struct._object** %isolation_level, align 8
  %tobool12 = icmp ne %struct._object* %19, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.16

if.else:                                          ; preds = %if.end.8
  %20 = load %struct._object*, %struct._object** %isolation_level, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %inc15 = add i64 %21, 1
  store i64 %inc15, i64* %ob_refcnt, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end.14
  %22 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level17 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %22, i32 0, i32 6
  store %struct._object* null, %struct._object** %isolation_level17, align 8
  %23 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %24 = load %struct._object*, %struct._object** %isolation_level, align 8
  %call18 = call i32 @pysqlite_connection_set_isolation_level(%struct.pysqlite_Connection* %23, %struct._object* %24)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %25 = load %struct._object*, %struct._object** %isolation_level, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt21, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt21, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.25

if.else.24:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.25
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.26
  %32 = load %struct._object*, %struct._object** %isolation_level, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp28, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %34, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %37(%struct._object* %38)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %39 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %40 = load i32, i32* %cached_statements, align 4
  %call38 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), %struct.pysqlite_Connection* %39, i32 %40)
  %41 = bitcast %struct._object* %call38 to %struct.pysqlite_Cache*
  %42 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache39 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %42, i32 0, i32 11
  store %struct.pysqlite_Cache* %41, %struct.pysqlite_Cache** %statement_cache39, align 8
  %call40 = call %struct._object* @PyErr_Occurred()
  %tobool41 = icmp ne %struct._object* %call40, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end.37
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %do.end.37
  %43 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %43, i32 0, i32 14
  store i32 0, i32* %created_statements, align 4
  %44 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %44, i32 0, i32 15
  store i32 0, i32* %created_cursors, align 4
  %call44 = call %struct._object* @PyList_New(i64 0)
  %45 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements45 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %45, i32 0, i32 12
  store %struct._object* %call44, %struct._object** %statements45, align 8
  %call46 = call %struct._object* @PyList_New(i64 0)
  %46 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors47 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %46, i32 0, i32 13
  store %struct._object* %call46, %struct._object** %cursors47, align 8
  %47 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements48 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %47, i32 0, i32 12
  %48 = load %struct._object*, %struct._object** %statements48, align 8
  %tobool49 = icmp ne %struct._object* %48, null
  br i1 %tobool49, label %lor.lhs.false, label %if.then.52

lor.lhs.false:                                    ; preds = %if.end.43
  %49 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors50 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %49, i32 0, i32 13
  %50 = load %struct._object*, %struct._object** %cursors50, align 8
  %tobool51 = icmp ne %struct._object* %50, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.43
  store i32 -1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false
  %51 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache54 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %51, i32 0, i32 11
  %52 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache54, align 8
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %52, i32 0, i32 6
  store i32 0, i32* %decref_factory, align 4
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.53
  %53 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %54 = bitcast %struct.pysqlite_Connection* %53 to %struct._object*
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
  %61 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %61, i32 0, i32 2
  store i8 0, i8* %inTransaction, align 1
  %62 = load i32, i32* %detect_types, align 4
  %63 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %detect_types66 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %63, i32 0, i32 3
  store i32 %62, i32* %detect_types66, align 4
  %64 = load double, double* %timeout, align 8
  %65 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %timeout67 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %65, i32 0, i32 4
  store double %64, double* %timeout67, align 8
  %66 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db68 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %66, i32 0, i32 1
  %67 = load %struct.sqlite3*, %struct.sqlite3** %db68, align 8
  %68 = load double, double* %timeout, align 8
  %mul = fmul double %68, 1.000000e+03
  %conv = fptosi double %mul to i32
  %call69 = call i32 @sqlite3_busy_timeout(%struct.sqlite3* %67, i32 %conv)
  %call70 = call i64 @PyThread_get_thread_ident()
  %69 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %thread_ident = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %69, i32 0, i32 10
  store i64 %call70, i64* %thread_ident, align 8
  %70 = load i32, i32* %check_same_thread, align 4
  %71 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %check_same_thread71 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %71, i32 0, i32 8
  store i32 %70, i32* %check_same_thread71, align 4
  %call72 = call %struct._object* @PyDict_New()
  %72 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %72, i32 0, i32 18
  store %struct._object* %call72, %struct._object** %function_pinboard, align 8
  %73 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard73 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %73, i32 0, i32 18
  %74 = load %struct._object*, %struct._object** %function_pinboard73, align 8
  %tobool74 = icmp ne %struct._object* %74, null
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %do.end.65
  store i32 -1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %do.end.65
  %call77 = call %struct._object* @PyDict_New()
  %75 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %75, i32 0, i32 19
  store %struct._object* %call77, %struct._object** %collations, align 8
  %76 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations78 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %76, i32 0, i32 19
  %77 = load %struct._object*, %struct._object** %collations78, align 8
  %tobool79 = icmp ne %struct._object* %77, null
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.76
  store i32 -1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.76
  %78 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8
  %79 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %Warning = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %79, i32 0, i32 20
  store %struct._object* %78, %struct._object** %Warning, align 8
  %80 = load %struct._object*, %struct._object** @pysqlite_Error, align 8
  %81 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %Error = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %81, i32 0, i32 21
  store %struct._object* %80, %struct._object** %Error, align 8
  %82 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %83 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %InterfaceError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %83, i32 0, i32 22
  store %struct._object* %82, %struct._object** %InterfaceError, align 8
  %84 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %85 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %DatabaseError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %85, i32 0, i32 23
  store %struct._object* %84, %struct._object** %DatabaseError, align 8
  %86 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8
  %87 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %DataError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %87, i32 0, i32 24
  store %struct._object* %86, %struct._object** %DataError, align 8
  %88 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  %89 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %OperationalError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %89, i32 0, i32 25
  store %struct._object* %88, %struct._object** %OperationalError, align 8
  %90 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8
  %91 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %IntegrityError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %91, i32 0, i32 26
  store %struct._object* %90, %struct._object** %IntegrityError, align 8
  %92 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8
  %93 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %InternalError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %93, i32 0, i32 27
  store %struct._object* %92, %struct._object** %InternalError, align 8
  %94 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %95 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %ProgrammingError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %95, i32 0, i32 28
  store %struct._object* %94, %struct._object** %ProgrammingError, align 8
  %96 = load %struct._object*, %struct._object** @pysqlite_NotSupportedError, align 8
  %97 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %NotSupportedError = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %97, i32 0, i32 29
  store %struct._object* %96, %struct._object** %NotSupportedError, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.then.80, %if.then.75, %if.then.52, %if.then.42, %do.end, %if.then.13, %if.then.5, %if.then
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @sqlite3_open_v2(i8*, %struct.sqlite3**, i32, i8*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare i32 @_pysqlite_seterror(%struct.sqlite3*, %struct.sqlite3_stmt*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

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
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %statement = alloca i8*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp48 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %isolation_level, %struct._object** %isolation_level.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 6
  %1 = load %struct._object*, %struct._object** %isolation_level1, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 7
  %11 = load i8*, i8** %begin_statement7, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.end.6
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement9 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 7
  %13 = load i8*, i8** %begin_statement9, align 8
  call void @PyMem_Free(i8* %13)
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement10 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 7
  store i8* null, i8** %begin_statement10, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.end.6
  %15 = load %struct._object*, %struct._object** %isolation_level.addr, align 8
  %cmp12 = icmp eq %struct._object* %15, @_Py_NoneStruct
  br i1 %cmp12, label %if.then.13, label %if.else.29

if.then.13:                                       ; preds = %if.end.11
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %17 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level14 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %17, i32 0, i32 6
  store %struct._object* @_Py_NoneStruct, %struct._object** %isolation_level14, align 8
  %18 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %18, %struct._object* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %19 = load %struct._object*, %struct._object** %res, align 8
  %tobool15 = icmp ne %struct._object* %19, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %20 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp19, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %22, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %25(%struct._object* %26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 2
  store i8 0, i8* %inTransaction, align 1
  br label %if.end.89

if.else.29:                                       ; preds = %if.end.11
  %28 = load %struct._object*, %struct._object** %isolation_level.addr, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt30, align 8
  %inc31 = add i64 %29, 1
  store i64 %inc31, i64* %ob_refcnt30, align 8
  %30 = load %struct._object*, %struct._object** %isolation_level.addr, align 8
  %31 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level32 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %31, i32 0, i32 6
  store %struct._object* %30, %struct._object** %isolation_level32, align 8
  %32 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8
  %tobool33 = icmp ne %struct._object* %32, null
  br i1 %tobool33, label %if.end.39, label %if.then.34

if.then.34:                                       ; preds = %if.else.29
  %call35 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* %call35, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8
  %33 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8
  %tobool36 = icmp ne %struct._object* %33, null
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.else.29
  %34 = load %struct._object*, %struct._object** @pysqlite_connection_set_isolation_level.begin_word, align 8
  %35 = load %struct._object*, %struct._object** %isolation_level.addr, align 8
  %call40 = call %struct._object* @PyUnicode_Concat(%struct._object* %34, %struct._object* %35)
  store %struct._object* %call40, %struct._object** %begin_statement, align 8
  %36 = load %struct._object*, %struct._object** %begin_statement, align 8
  %tobool41 = icmp ne %struct._object* %36, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %37 = load %struct._object*, %struct._object** %begin_statement, align 8
  %call44 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %37, i64* %size)
  store i8* %call44, i8** %statement, align 8
  %38 = load i8*, i8** %statement, align 8
  %tobool45 = icmp ne i8* %38, null
  br i1 %tobool45, label %if.end.58, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  br label %do.body.47

do.body.47:                                       ; preds = %if.then.46
  %39 = load %struct._object*, %struct._object** %begin_statement, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp48, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt49, align 8
  %dec50 = add i64 %41, -1
  store i64 %dec50, i64* %ob_refcnt49, align 8
  %cmp51 = icmp ne i64 %dec50, 0
  br i1 %cmp51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.56

if.else.53:                                       ; preds = %do.body.47
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  %ob_type54 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type54, align 8
  %tp_dealloc55 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc55, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp48, align 8
  call void %44(%struct._object* %45)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.52
  br label %do.end.57

do.end.57:                                        ; preds = %if.end.56
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.43
  %46 = load i64, i64* %size, align 8
  %add = add i64 %46, 2
  %call59 = call i8* @PyMem_Malloc(i64 %add)
  %47 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement60 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %47, i32 0, i32 7
  store i8* %call59, i8** %begin_statement60, align 8
  %48 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement61 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %48, i32 0, i32 7
  %49 = load i8*, i8** %begin_statement61, align 8
  %tobool62 = icmp ne i8* %49, null
  br i1 %tobool62, label %if.end.75, label %if.then.63

if.then.63:                                       ; preds = %if.end.58
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %50 = load %struct._object*, %struct._object** %begin_statement, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp65, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %52, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %55(%struct._object* %56)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  store i32 -1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.58
  %57 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement76 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %57, i32 0, i32 7
  %58 = load i8*, i8** %begin_statement76, align 8
  %59 = load i8*, i8** %statement, align 8
  %call77 = call i8* @strcpy(i8* %58, i8* %59) #4
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.75
  %60 = load %struct._object*, %struct._object** %begin_statement, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp79, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %62, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %65(%struct._object* %66)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %do.end.74, %do.end.57, %if.then.42, %if.then.37, %if.then.16
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyList_New(i64) #1

declare i32 @sqlite3_busy_timeout(%struct.sqlite3*, i32) #1

declare i64 @PyThread_get_thread_ident() #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define void @pysqlite_flush_statement_cache(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %statement = alloca %struct.pysqlite_Statement*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 11
  %1 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %1, i32 0, i32 4
  %2 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8
  store %struct._pysqlite_Node* %2, %struct._pysqlite_Node** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %tobool = icmp ne %struct._pysqlite_Node* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %data = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %data, align 8
  %6 = bitcast %struct._object* %5 to %struct.pysqlite_Statement*
  store %struct.pysqlite_Statement* %6, %struct.pysqlite_Statement** %statement, align 8
  %7 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %call = call i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %7)
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %8, i32 0, i32 5
  %9 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8
  store %struct._pysqlite_Node* %9, %struct._pysqlite_Node** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.end
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 11
  %11 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache1, align 8
  %12 = bitcast %struct.pysqlite_Cache* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.pysqlite_Connection* %19)
  %20 = bitcast %struct._object* %call2 to %struct.pysqlite_Cache*
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache3 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 11
  store %struct.pysqlite_Cache* %20, %struct.pysqlite_Cache** %statement_cache3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %22 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %23 = bitcast %struct.pysqlite_Connection* %22 to %struct._object*
  store %struct._object* %23, %struct._object** %_py_decref_tmp5, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt6, align 8
  %dec7 = add i64 %25, -1
  store i64 %dec7, i64* %ob_refcnt6, align 8
  %cmp8 = icmp ne i64 %dec7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13

if.else.10:                                       ; preds = %do.body.4
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  call void %28(%struct._object* %29)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %30 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %30, i32 0, i32 11
  %31 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache15, align 8
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %31, i32 0, i32 6
  store i32 0, i32* %decref_factory, align 4
  ret void
}

declare i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement*) #1

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
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store i32 %reset_cursors, i32* %reset_cursors.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 12
  %2 = load %struct._object*, %struct._object** %statements, align 8
  %call = call i64 @PyList_Size(%struct._object* %2)
  %cmp = icmp slt i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 12
  %4 = load %struct._object*, %struct._object** %statements2, align 8
  %5 = load i32, i32* %i, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call %struct._object* @PyList_GetItem(%struct._object* %4, i64 %conv3)
  store %struct._object* %call4, %struct._object** %weakref, align 8
  %6 = load %struct._object*, %struct._object** %weakref, align 8
  %call5 = call %struct._object* @PyWeakref_GetObject(%struct._object* %6)
  store %struct._object* %call5, %struct._object** %statement, align 8
  %7 = load %struct._object*, %struct._object** %statement, align 8
  %cmp6 = icmp ne %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp6, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.body
  %8 = load %struct._object*, %struct._object** %statement, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load i32, i32* %action.addr, align 4
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %statement, align 8
  %12 = bitcast %struct._object* %11 to %struct.pysqlite_Statement*
  %call11 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._object*, %struct._object** %statement, align 8
  %14 = bitcast %struct._object* %13 to %struct.pysqlite_Statement*
  %call12 = call i32 @pysqlite_statement_finalize(%struct.pysqlite_Statement* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %statement, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt13, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt13, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else.17:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load i32, i32* %i, align 4
  %inc20 = add i32 %22, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %reset_cursors.addr, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.21, label %if.end.39

if.then.21:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %if.then.21
  %24 = load i32, i32* %i, align 4
  %conv23 = sext i32 %24 to i64
  %25 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %25, i32 0, i32 13
  %26 = load %struct._object*, %struct._object** %cursors, align 8
  %call24 = call i64 @PyList_Size(%struct._object* %26)
  %cmp25 = icmp slt i64 %conv23, %call24
  br i1 %cmp25, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.22
  %27 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors28 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %27, i32 0, i32 13
  %28 = load %struct._object*, %struct._object** %cursors28, align 8
  %29 = load i32, i32* %i, align 4
  %conv29 = sext i32 %29 to i64
  %call30 = call %struct._object* @PyList_GetItem(%struct._object* %28, i64 %conv29)
  store %struct._object* %call30, %struct._object** %weakref, align 8
  %30 = load %struct._object*, %struct._object** %weakref, align 8
  %call31 = call %struct._object* @PyWeakref_GetObject(%struct._object* %30)
  %31 = bitcast %struct._object* %call31 to %struct.pysqlite_Cursor*
  store %struct.pysqlite_Cursor* %31, %struct.pysqlite_Cursor** %cursor, align 8
  %32 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8
  %33 = bitcast %struct.pysqlite_Cursor* %32 to %struct._object*
  %cmp32 = icmp ne %struct._object* %33, @_Py_NoneStruct
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.27
  %34 = load %struct.pysqlite_Cursor*, %struct.pysqlite_Cursor** %cursor, align 8
  %reset = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %34, i32 0, i32 10
  store i32 1, i32* %reset, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.body.27
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %35 = load i32, i32* %i, align 4
  %inc37 = add i32 %35, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %for.cond.22
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %for.end
  ret void
}

declare i64 @PyList_Size(%struct._object*) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyWeakref_GetObject(%struct._object*) #1

declare i32 @pysqlite_statement_reset(%struct.pysqlite_Statement*) #1

; Function Attrs: nounwind uwtable
define void @pysqlite_connection_dealloc(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_xdecref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_xdecref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  %_py_xdecref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_xdecref_tmp100 = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_xdecref_tmp117 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statement_cache = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 11
  %1 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %statement_cache, align 8
  %2 = bitcast %struct.pysqlite_Cache* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %11 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %11, i32 0, i32 1
  %12 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %tobool = icmp ne %struct.sqlite3* %12, null
  br i1 %tobool, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %do.end.5
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 1
  %14 = load %struct.sqlite3*, %struct.sqlite3** %db7, align 8
  %call8 = call i32 @sqlite3_close(%struct.sqlite3* %14)
  %15 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %do.end.5
  %16 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %16, i32 0, i32 7
  %17 = load i8*, i8** %begin_statement, align 8
  %tobool10 = icmp ne i8* %17, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %18 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement12 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %18, i32 0, i32 7
  %19 = load i8*, i8** %begin_statement12, align 8
  call void @PyMem_Free(i8* %19)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.13
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 6
  %21 = load %struct._object*, %struct._object** %isolation_level, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp15, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  %cmp16 = icmp ne %struct._object* %22, null
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %do.body.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp15, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp19, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %25, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %28(%struct._object* %29)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.14
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %30 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %30, i32 0, i32 18
  %31 = load %struct._object*, %struct._object** %function_pinboard, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp32, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  %cmp33 = icmp ne %struct._object* %32, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp36, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %35, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %38(%struct._object* %39)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.31
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %40 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %40, i32 0, i32 16
  %41 = load %struct._object*, %struct._object** %row_factory, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp49, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %42, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp53, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %45, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %48(%struct._object* %49)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %50 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %text_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %50, i32 0, i32 17
  %51 = load %struct._object*, %struct._object** %text_factory, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp66, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8
  %cmp67 = icmp ne %struct._object* %52, null
  br i1 %cmp67, label %if.then.68, label %if.end.80

if.then.68:                                       ; preds = %do.body.65
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp66, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp70, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %55, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %58(%struct._object* %59)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.65
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %60 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %60, i32 0, i32 19
  %61 = load %struct._object*, %struct._object** %collations, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp83, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp83, align 8
  %cmp84 = icmp ne %struct._object* %62, null
  br i1 %cmp84, label %if.then.85, label %if.end.97

if.then.85:                                       ; preds = %do.body.82
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.85
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp83, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp87, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %65, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95

if.else.92:                                       ; preds = %do.body.86
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %68(%struct._object* %69)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %do.body.82
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %do.body.99

do.body.99:                                       ; preds = %do.end.98
  %70 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %70, i32 0, i32 12
  %71 = load %struct._object*, %struct._object** %statements, align 8
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp100, align 8
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp100, align 8
  %cmp101 = icmp ne %struct._object* %72, null
  br i1 %cmp101, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %do.body.99
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp100, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp104, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %75, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %do.body.103
  br label %if.end.112

if.else.109:                                      ; preds = %do.body.103
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type110 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type110, align 8
  %tp_dealloc111 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc111, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %78(%struct._object* %79)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.108
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %if.end.114

if.end.114:                                       ; preds = %do.end.113, %do.body.99
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %80 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %80, i32 0, i32 13
  %81 = load %struct._object*, %struct._object** %cursors, align 8
  store %struct._object* %81, %struct._object** %_py_xdecref_tmp117, align 8
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp117, align 8
  %cmp118 = icmp ne %struct._object* %82, null
  br i1 %cmp118, label %if.then.119, label %if.end.131

if.then.119:                                      ; preds = %do.body.116
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp117, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp121, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %85, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.120
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.120
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %88(%struct._object* %89)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %do.body.116
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  %90 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %91 = bitcast %struct.pysqlite_Connection* %90 to %struct._object*
  %ob_type133 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type133, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 38
  %93 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %94 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %95 = bitcast %struct.pysqlite_Connection* %94 to %struct._object*
  %96 = bitcast %struct._object* %95 to i8*
  call void %93(i8* %96)
  ret void
}

declare i32 @sqlite3_close(%struct.sqlite3*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_connection_register_cursor(%struct.pysqlite_Connection* %connection, %struct._object* %cursor) #0 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.pysqlite_Connection*, align 8
  %cursor.addr = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %connection, %struct.pysqlite_Connection** %connection.addr, align 8
  store %struct._object* %cursor, %struct._object** %cursor.addr, align 8
  %0 = load %struct._object*, %struct._object** %cursor.addr, align 8
  %call = call %struct._object* @PyWeakref_NewRef(%struct._object* %0, %struct._object* null)
  store %struct._object* %call, %struct._object** %weakref, align 8
  %1 = load %struct._object*, %struct._object** %weakref, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %connection.addr, align 8
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 13
  %3 = load %struct._object*, %struct._object** %cursors, align 8
  %4 = load %struct._object*, %struct._object** %weakref, align 8
  %call1 = call i32 @PyList_Append(%struct._object* %3, %struct._object* %4)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %weakref, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %weakref, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %error

if.end.11:                                        ; preds = %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %weakref, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp13, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %16, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %19(%struct._object* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

error:                                            ; preds = %do.end.10, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %error, %do.end.22
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_cursor(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %cursor = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %factory, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_connection_cursor.kwlist, i32 0, i32 0), %struct._object** %factory)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call3 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %factory, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0), %struct._object** %factory, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  %5 = load %struct._object*, %struct._object** %factory, align 8
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.pysqlite_Connection* %6)
  store %struct._object* %call9, %struct._object** %cursor, align 8
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  call void @_pysqlite_drop_unused_cursor_references(%struct.pysqlite_Connection* %7)
  %8 = load %struct._object*, %struct._object** %cursor, align 8
  %tobool10 = icmp ne %struct._object* %8, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.8
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %row_factory = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 16
  %10 = load %struct._object*, %struct._object** %row_factory, align 8
  %cmp11 = icmp ne %struct._object* %10, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %11 = load %struct._object*, %struct._object** %cursor, align 8
  %12 = bitcast %struct._object* %11 to %struct.pysqlite_Cursor*
  %row_factory13 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %12, i32 0, i32 7
  %13 = load %struct._object*, %struct._object** %row_factory13, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %14, null
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19

if.else:                                          ; preds = %do.body.16
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %22 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %row_factory22 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %22, i32 0, i32 16
  %23 = load %struct._object*, %struct._object** %row_factory22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt23, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt23, align 8
  %25 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %row_factory24 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %25, i32 0, i32 16
  %26 = load %struct._object*, %struct._object** %row_factory24, align 8
  %27 = load %struct._object*, %struct._object** %cursor, align 8
  %28 = bitcast %struct._object* %27 to %struct.pysqlite_Cursor*
  %row_factory25 = getelementptr inbounds %struct.pysqlite_Cursor, %struct.pysqlite_Cursor* %28, i32 0, i32 7
  store %struct._object* %26, %struct._object** %row_factory25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.21, %land.lhs.true, %if.end.8
  %29 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.5, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %check_same_thread = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 8
  %1 = load i32, i32* %check_same_thread, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident()
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %thread_ident = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 10
  %3 = load i64, i64* %thread_ident, align 8
  %cmp = icmp ne i64 %call, %3
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %thread_ident2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 10
  %6 = load i64, i64* %thread_ident2, align 8
  %call3 = call i64 @PyThread_get_thread_ident()
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.29, i32 0, i32 0), i64 %6, i64 %call3)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.1
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %con) #0 {
entry:
  %retval = alloca i32, align 4
  %con.addr = alloca %struct.pysqlite_Connection*, align 8
  store %struct.pysqlite_Connection* %con, %struct.pysqlite_Connection** %con.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %con.addr, align 8
  %initialized = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 9
  %1 = load i32, i32* %initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %con.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 1
  %4 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %tobool1 = icmp ne %struct.sqlite3* %4, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @_pysqlite_drop_unused_cursor_references(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %new_list = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 15
  %1 = load i32, i32* %created_cursors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %created_cursors, align 4
  %cmp = icmp slt i32 %1, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_cursors1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 15
  store i32 0, i32* %created_cursors1, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %new_list, align 8
  %3 = load %struct._object*, %struct._object** %new_list, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 13
  %6 = load %struct._object*, %struct._object** %cursors, align 8
  %call4 = call i64 @PyList_Size(%struct._object* %6)
  %cmp5 = icmp slt i64 %conv, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 13
  %8 = load %struct._object*, %struct._object** %cursors7, align 8
  %9 = load i32, i32* %i, align 4
  %conv8 = sext i32 %9 to i64
  %call9 = call %struct._object* @PyList_GetItem(%struct._object* %8, i64 %conv8)
  store %struct._object* %call9, %struct._object** %weakref, align 8
  %10 = load %struct._object*, %struct._object** %weakref, align 8
  %call10 = call %struct._object* @PyWeakref_GetObject(%struct._object* %10)
  %cmp11 = icmp ne %struct._object* %call10, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %new_list, align 8
  %12 = load %struct._object*, %struct._object** %weakref, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %11, %struct._object* %12)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.then.13
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %13 = load %struct._object*, %struct._object** %new_list, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %return

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %20 = load i32, i32* %i, align 4
  %inc24 = add i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.25

do.body.25:                                       ; preds = %for.end
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors27 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 13
  %22 = load %struct._object*, %struct._object** %cursors27, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %24, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.25
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.25
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %27(%struct._object* %28)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %29 = load %struct._object*, %struct._object** %new_list, align 8
  %30 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %cursors38 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %30, i32 0, i32 13
  store %struct._object* %29, %struct._object** %cursors38, align 8
  br label %return

return:                                           ; preds = %do.end.37, %do.end, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_close(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %1, i32 1, i32 1)
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 1
  %3 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %tobool1 = icmp ne %struct.sqlite3* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call3, %struct._ts** %_save, align 8
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db4 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 1
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db4, align 8
  %call5 = call i32 @sqlite3_close(%struct.sqlite3* %5)
  store i32 %call5, i32* %rc, align 4
  %6 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %6)
  %7 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %8, i32 0, i32 1
  %9 = load %struct.sqlite3*, %struct.sqlite3** %db7, align 8
  %call8 = call i32 @_pysqlite_seterror(%struct.sqlite3* %9, %struct.sqlite3_stmt* null)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db9 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 1
  store %struct.sqlite3* null, %struct.sqlite3** %db9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.6, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

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
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 1
  %1 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %begin_statement = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 7
  %3 = load i8*, i8** %begin_statement, align 8
  %call1 = call i32 @sqlite3_prepare(%struct.sqlite3* %1, i8* %3, i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail)
  store i32 %call1, i32* %rc, align 4
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db2 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %6, i32 0, i32 1
  %7 = load %struct.sqlite3*, %struct.sqlite3** %db2, align 8
  %8 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call3 = call i32 @_pysqlite_seterror(%struct.sqlite3* %7, %struct.sqlite3_stmt* %8)
  br label %error

if.end:                                           ; preds = %entry
  %9 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call4 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %9, %struct.pysqlite_Connection* %10)
  store i32 %call4, i32* %rc, align 4
  %11 = load i32, i32* %rc, align 4
  %cmp5 = icmp eq i32 %11, 101
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 2
  store i8 1, i8* %inTransaction, align 1
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %13 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %13, i32 0, i32 1
  %14 = load %struct.sqlite3*, %struct.sqlite3** %db7, align 8
  %15 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call8 = call i32 @_pysqlite_seterror(%struct.sqlite3* %14, %struct.sqlite3_stmt* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %call11 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call11, %struct._ts** %_save10, align 8
  %16 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call12 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %16)
  store i32 %call12, i32* %rc, align 4
  %17 = load %struct._ts*, %struct._ts** %_save10, align 8
  call void @PyEval_RestoreThread(%struct._ts* %17)
  %18 = load i32, i32* %rc, align 4
  %cmp13 = icmp ne i32 %18, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.9
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call14, null
  br i1 %tobool, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %19 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db16 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %19, i32 0, i32 1
  %20 = load %struct.sqlite3*, %struct.sqlite3** %db16, align 8
  %call17 = call i32 @_pysqlite_seterror(%struct.sqlite3* %20, %struct.sqlite3_stmt* null)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.9
  br label %error

error:                                            ; preds = %if.end.18, %if.then
  %call19 = call %struct._object* @PyErr_Occurred()
  %tobool20 = icmp ne %struct._object* %call19, null
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.22:                                       ; preds = %error
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.22, %if.then.21
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #1

declare i32 @pysqlite_step(%struct.sqlite3_stmt*, %struct.pysqlite_Connection*) #1

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_connection_commit(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %tail = alloca i8*, align 8
  %statement = alloca %struct.sqlite3_stmt*, align 8
  %_save = alloca %struct._ts*, align 8
  %_save18 = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 2
  %3 = load i8, i8* %inTransaction, align 1
  %tobool3 = icmp ne i8 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.28

if.then.4:                                        ; preds = %if.end
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %4, i32 2, i32 0)
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 1
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call6 = call i32 @sqlite3_prepare(%struct.sqlite3* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail)
  store i32 %call6, i32* %rc, align 4
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  %8 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 1
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8
  %call9 = call i32 @_pysqlite_seterror(%struct.sqlite3* %10, %struct.sqlite3_stmt* null)
  br label %error

if.end.10:                                        ; preds = %if.then.4
  %11 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call11 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %11, %struct.pysqlite_Connection* %12)
  store i32 %call11, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %cmp12 = icmp eq i32 %13, 101
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction14 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 2
  store i8 0, i8* %inTransaction14, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 1
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db15, align 8
  %17 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call16 = call i32 @_pysqlite_seterror(%struct.sqlite3* %16, %struct.sqlite3_stmt* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %call19 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call19, %struct._ts** %_save18, align 8
  %18 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call20 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %18)
  store i32 %call20, i32* %rc, align 4
  %19 = load %struct._ts*, %struct._ts** %_save18, align 8
  call void @PyEval_RestoreThread(%struct._ts* %19)
  %20 = load i32, i32* %rc, align 4
  %cmp21 = icmp ne i32 %20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred()
  %tobool23 = icmp ne %struct._object* %call22, null
  br i1 %tobool23, label %if.end.27, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db25 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 1
  %22 = load %struct.sqlite3*, %struct.sqlite3** %db25, align 8
  %call26 = call i32 @_pysqlite_seterror(%struct.sqlite3* %22, %struct.sqlite3_stmt* null)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %error

error:                                            ; preds = %if.end.28, %if.then.7
  %call29 = call %struct._object* @PyErr_Occurred()
  %tobool30 = icmp ne %struct._object* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.32:                                       ; preds = %error
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.32, %if.then.31, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
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
  %_save = alloca %struct._ts*, align 8
  %_save18 = alloca %struct._ts*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 2
  %3 = load i8, i8* %inTransaction, align 1
  %tobool3 = icmp ne i8 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end.28

if.then.4:                                        ; preds = %if.end
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  call void @pysqlite_do_all_statements(%struct.pysqlite_Connection* %4, i32 2, i32 1)
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 1
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call6 = call i32 @sqlite3_prepare(%struct.sqlite3* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 -1, %struct.sqlite3_stmt** %statement, i8** %tail)
  store i32 %call6, i32* %rc, align 4
  %7 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %7)
  %8 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %9 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %9, i32 0, i32 1
  %10 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8
  %call9 = call i32 @_pysqlite_seterror(%struct.sqlite3* %10, %struct.sqlite3_stmt* null)
  br label %error

if.end.10:                                        ; preds = %if.then.4
  %11 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call11 = call i32 @pysqlite_step(%struct.sqlite3_stmt* %11, %struct.pysqlite_Connection* %12)
  store i32 %call11, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %cmp12 = icmp eq i32 %13, 101
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %14 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %inTransaction14 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %14, i32 0, i32 2
  store i8 0, i8* %inTransaction14, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.end.10
  %15 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db15 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %15, i32 0, i32 1
  %16 = load %struct.sqlite3*, %struct.sqlite3** %db15, align 8
  %17 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call16 = call i32 @_pysqlite_seterror(%struct.sqlite3* %16, %struct.sqlite3_stmt* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %call19 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call19, %struct._ts** %_save18, align 8
  %18 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %statement, align 8
  %call20 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %18)
  store i32 %call20, i32* %rc, align 4
  %19 = load %struct._ts*, %struct._ts** %_save18, align 8
  call void @PyEval_RestoreThread(%struct._ts* %19)
  %20 = load i32, i32* %rc, align 4
  %cmp21 = icmp ne i32 %20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.17
  %call22 = call %struct._object* @PyErr_Occurred()
  %tobool23 = icmp ne %struct._object* %call22, null
  br i1 %tobool23, label %if.end.27, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db25 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 1
  %22 = load %struct.sqlite3*, %struct.sqlite3** %db25, align 8
  %call26 = call i32 @_pysqlite_seterror(%struct.sqlite3* %22, %struct.sqlite3_stmt* null)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  br label %error

error:                                            ; preds = %if.end.28, %if.then.7
  %call29 = call %struct._object* @PyErr_Occurred()
  %tobool30 = icmp ne %struct._object* %call29, null
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %error
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.32:                                       ; preds = %error
  %23 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.32, %if.then.31, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.Mem** %argv, %struct.Mem*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call, %struct._object** %args, align 8
  %1 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8
  %arrayidx = getelementptr %struct.Mem*, %struct.Mem** %5, i64 %idxprom
  %6 = load %struct.Mem*, %struct.Mem** %arrayidx, align 8
  store %struct.Mem* %6, %struct.Mem** %cur_value, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8
  %arrayidx3 = getelementptr %struct.Mem*, %struct.Mem** %8, i64 %idxprom2
  %9 = load %struct.Mem*, %struct.Mem** %arrayidx3, align 8
  %call4 = call i32 @sqlite3_value_type(%struct.Mem* %9)
  switch i32 %call4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.10
    i32 4, label %sw.bb.16
    i32 5, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body
  %10 = load %struct.Mem*, %struct.Mem** %cur_value, align 8
  %call5 = call i64 @sqlite3_value_int64(%struct.Mem* %10)
  %call6 = call %struct._object* @_pysqlite_long_from_int64(i64 %call5)
  store %struct._object* %call6, %struct._object** %cur_py_value, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %11 = load %struct.Mem*, %struct.Mem** %cur_value, align 8
  %call8 = call double @sqlite3_value_double(%struct.Mem* %11)
  %call9 = call %struct._object* @PyFloat_FromDouble(double %call8)
  store %struct._object* %call9, %struct._object** %cur_py_value, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body
  %12 = load %struct.Mem*, %struct.Mem** %cur_value, align 8
  %call11 = call i8* @sqlite3_value_text(%struct.Mem* %12)
  store i8* %call11, i8** %val_str, align 8
  %13 = load i8*, i8** %val_str, align 8
  %call12 = call %struct._object* @PyUnicode_FromString(i8* %13)
  store %struct._object* %call12, %struct._object** %cur_py_value, align 8
  %14 = load %struct._object*, %struct._object** %cur_py_value, align 8
  %tobool13 = icmp ne %struct._object* %14, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %sw.bb.10
  call void @PyErr_Clear()
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %cur_py_value, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %sw.bb.10
  br label %sw.epilog

sw.bb.16:                                         ; preds = %for.body
  %16 = load %struct.Mem*, %struct.Mem** %cur_value, align 8
  %call17 = call i32 @sqlite3_value_bytes(%struct.Mem* %16)
  %conv18 = sext i32 %call17 to i64
  store i64 %conv18, i64* %buflen, align 8
  %17 = load %struct.Mem*, %struct.Mem** %cur_value, align 8
  %call19 = call i8* @sqlite3_value_blob(%struct.Mem* %17)
  %18 = load i64, i64* %buflen, align 8
  %call20 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call19, i64 %18)
  store %struct._object* %call20, %struct._object** %cur_py_value, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.21
  %19 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc22 = add i64 %19, 1
  store i64 %inc22, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %cur_py_value, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %if.end.15, %sw.bb.7, %sw.bb
  %20 = load %struct._object*, %struct._object** %cur_py_value, align 8
  %tobool23 = icmp ne %struct._object* %20, null
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %sw.epilog
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %21 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %sw.epilog
  %28 = load %struct._object*, %struct._object** %args, align 8
  %29 = load i32, i32* %i, align 4
  %conv30 = sext i32 %29 to i64
  %30 = load %struct._object*, %struct._object** %cur_py_value, align 8
  %call31 = call i32 @PyTuple_SetItem(%struct._object* %28, i64 %conv30, %struct._object* %30)
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %31 = load i32, i32* %i, align 4
  %inc32 = add i32 %31, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare %struct._object* @PyTuple_New(i64) #1

declare i32 @sqlite3_value_type(%struct.Mem*) #1

declare %struct._object* @_pysqlite_long_from_int64(i64) #1

declare i64 @sqlite3_value_int64(%struct.Mem*) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare double @sqlite3_value_double(%struct.Mem*) #1

declare i8* @sqlite3_value_text(%struct.Mem*) #1

declare void @PyErr_Clear() #1

declare i32 @sqlite3_value_bytes(%struct.Mem*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i8* @sqlite3_value_blob(%struct.Mem*) #1

declare i32 @PyTuple_SetItem(%struct._object*, i64, %struct._object*) #1

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
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.Mem** %argv, %struct.Mem*** %argv.addr, align 8
  store %struct._object* null, %struct._object** %py_retval, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %threadstate, align 4
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %call1 = call i8* @sqlite3_user_data(%struct.sqlite3_context* %0)
  %1 = bitcast i8* %call1 to %struct._object*
  store %struct._object* %1, %struct._object** %py_func, align 8
  %2 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load %struct.Mem**, %struct.Mem*** %argv.addr, align 8
  %call2 = call %struct._object* @_pysqlite_build_py_params(%struct.sqlite3_context* %2, i32 %3, %struct.Mem** %4)
  store %struct._object* %call2, %struct._object** %args, align 8
  %5 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %py_func, align 8
  %7 = load %struct._object*, %struct._object** %args, align 8
  %call3 = call %struct._object* @PyObject_CallObject(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call3, %struct._object** %py_retval, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %entry
  store i32 0, i32* %ok, align 4
  %15 = load %struct._object*, %struct._object** %py_retval, align 8
  %tobool6 = icmp ne %struct._object* %15, null
  br i1 %tobool6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end.5
  %16 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %17 = load %struct._object*, %struct._object** %py_retval, align 8
  %call8 = call i32 @_pysqlite_set_result(%struct.sqlite3_context* %16, %struct._object* %17)
  %cmp9 = icmp eq i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  store i32 %conv, i32* %ok, align 4
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.7
  %18 = load %struct._object*, %struct._object** %py_retval, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp11, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %20, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.10
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.10
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %23(%struct._object* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %if.end.22

if.end.22:                                        ; preds = %do.end.21, %if.end.5
  %25 = load i32, i32* %ok, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %if.end.22
  %26 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.24
  call void @PyErr_Print()
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.24
  call void @PyErr_Clear()
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %27 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  call void @_sqlite3_result_error(%struct.sqlite3_context* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0), i32 -1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.22
  %28 = load i32, i32* %threadstate, align 4
  call void @PyGILState_Release(i32 %28)
  ret void
}

declare i32 @PyGILState_Ensure() #1

declare i8* @sqlite3_user_data(%struct.sqlite3_context*) #1

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_pysqlite_set_result(%struct.sqlite3_context* %context, %struct._object* %py_val) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %py_val.addr = alloca %struct._object*, align 8
  %value = alloca i64, align 8
  %str = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %buflen = alloca i64, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  store %struct._object* %py_val, %struct._object** %py_val.addr, align 8
  %0 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  call void @sqlite3_result_null(%struct.sqlite3_context* %1)
  br label %if.end.44

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 16777216
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %call = call i64 @_pysqlite_long_as_int64(%struct._object* %5)
  store i64 %call, i64* %value, align 8
  %6 = load i64, i64* %value, align 8
  %cmp3 = icmp eq i64 %6, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.2
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then.2
  %7 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %8 = load i64, i64* %value, align 8
  call void @sqlite3_result_int64(%struct.sqlite3_context* %7, i64 %8)
  br label %if.end.43

if.else.6:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %cmp8 = icmp eq %struct._typeobject* %10, @PyFloat_Type
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.6
  %11 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %12, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false, %if.else.6
  %13 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %14 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %call13 = call double @PyFloat_AsDouble(%struct._object* %14)
  call void @sqlite3_result_double(%struct.sqlite3_context* %13, double %call13)
  br label %if.end.42

if.else.14:                                       ; preds = %lor.lhs.false
  %15 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags16, align 8
  %and17 = and i64 %17, 268435456
  %cmp18 = icmp ne i64 %and17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.24

if.then.19:                                       ; preds = %if.else.14
  %18 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %call20 = call i8* @PyUnicode_AsUTF8(%struct._object* %18)
  store i8* %call20, i8** %str, align 8
  %19 = load i8*, i8** %str, align 8
  %cmp21 = icmp eq i8* %19, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  %20 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %21 = load i8*, i8** %str, align 8
  call void @sqlite3_result_text(%struct.sqlite3_context* %20, i8* %21, i32 -1, void (i8*)* inttoptr (i64 -1 to void (i8*)*))
  br label %if.end.41

if.else.24:                                       ; preds = %if.else.14
  %22 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 18
  %24 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp26 = icmp ne %struct.PyBufferProcs* %24, null
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.39

land.lhs.true.27:                                 ; preds = %if.else.24
  %25 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_as_buffer29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 18
  %27 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer29, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %27, i32 0, i32 0
  %28 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp30 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %28, null
  br i1 %cmp30, label %if.then.31, label %if.else.39

if.then.31:                                       ; preds = %land.lhs.true.27
  %29 = load %struct._object*, %struct._object** %py_val.addr, align 8
  %call32 = call i32 @PyObject_AsCharBuffer(%struct._object* %29, i8** %buffer, i64* %buflen)
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.31
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.31
  %31 = load i64, i64* %buflen, align 8
  %cmp36 = icmp sgt i64 %31, 2147483647
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %32 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.35
  %33 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %34 = load i8*, i8** %buffer, align 8
  %35 = load i64, i64* %buflen, align 8
  %conv = trunc i64 %35 to i32
  call void @sqlite3_result_blob(%struct.sqlite3_context* %33, i8* %34, i32 %conv, void (i8*)* inttoptr (i64 -1 to void (i8*)*))
  br label %if.end.40

if.else.39:                                       ; preds = %land.lhs.true.27, %if.else.24
  store i32 -1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.23
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.12
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.else.39, %if.then.37, %if.then.34, %if.then.22, %if.then.5
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare void @PyErr_Print() #1

; Function Attrs: nounwind uwtable
define internal void @_sqlite3_result_error(%struct.sqlite3_context* %ctx, i8* %errmsg, i32 %len) #0 {
entry:
  %ctx.addr = alloca %struct.sqlite3_context*, align 8
  %errmsg.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct.sqlite3_context* %ctx, %struct.sqlite3_context** %ctx.addr, align 8
  store i8* %errmsg, i8** %errmsg.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %ctx.addr, align 8
  %1 = load i8*, i8** %errmsg.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  call void @sqlite3_result_error(%struct.sqlite3_context* %0, i8* %1, i32 %2)
  ret void
}

declare void @PyGILState_Release(i32) #1

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
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %threadstate, align 4
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %call1 = call i8* @sqlite3_aggregate_context(%struct.sqlite3_context* %0, i32 8)
  %1 = bitcast i8* %call1 to %struct._object**
  store %struct._object** %1, %struct._object*** %aggregate_instance, align 8
  %2 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  %3 = load %struct._object*, %struct._object** %2, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %tb)
  store i32 1, i32* %restore, align 4
  %4 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  %5 = load %struct._object*, %struct._object** %4, align 8
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %5, %struct._Py_Identifier* @_pysqlite_final_callback.PyId_finalize, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %function_result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  %7 = load %struct._object*, %struct._object** %6, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %ok, align 4
  %14 = load %struct._object*, %struct._object** %function_result, align 8
  %tobool5 = icmp ne %struct._object* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.21

if.then.6:                                        ; preds = %do.end
  %15 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %16 = load %struct._object*, %struct._object** %function_result, align 8
  %call7 = call i32 @_pysqlite_set_result(%struct.sqlite3_context* %15, %struct._object* %16)
  %cmp8 = icmp eq i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  store i32 %conv, i32* %ok, align 4
  br label %do.body.9

do.body.9:                                        ; preds = %if.then.6
  %17 = load %struct._object*, %struct._object** %function_result, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp10, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %19, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.9
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.9
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %22(%struct._object* %23)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.end
  %24 = load i32, i32* %ok, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.end.28, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %25 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.23
  call void @PyErr_Print()
  br label %if.end.27

if.else.26:                                       ; preds = %if.then.23
  call void @PyErr_Clear()
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  %26 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  call void @_sqlite3_result_error(%struct.sqlite3_context* %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0), i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.21
  %27 = load i32, i32* %restore, align 4
  %tobool29 = icmp ne i32 %27, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %28 = load %struct._object*, %struct._object** %exception, align 8
  %29 = load %struct._object*, %struct._object** %value, align 8
  %30 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %28, %struct._object* %29, %struct._object* %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  br label %error

error:                                            ; preds = %if.end.31, %if.then
  %31 = load i32, i32* %threadstate, align 4
  call void @PyGILState_Release(i32 %31)
  ret void
}

declare i8* @sqlite3_aggregate_context(%struct.sqlite3_context*, i32) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

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
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @pysqlite_connection_create_function.kwlist, i32 0, i32 0), i8** %name, i32* %narg, %struct._object** %func)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 1
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %narg, align 4
  %8 = load %struct._object*, %struct._object** %func, align 8
  %9 = bitcast %struct._object* %8 to i8*
  %call7 = call i32 @sqlite3_create_function(%struct.sqlite3* %5, i8* %6, i32 %7, i32 1, i8* %9, void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_func_callback, void (%struct.sqlite3_context*, i32, %struct.Mem**)* null, void (%struct.sqlite3_context*)* null)
  store i32 %call7, i32* %rc, align 4
  %10 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 18
  %13 = load %struct._object*, %struct._object** %function_pinboard, align 8
  %14 = load %struct._object*, %struct._object** %func, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* @_Py_NoneStruct)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @sqlite3_create_function(%struct.sqlite3*, i8*, i32, i32, i8*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*)*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

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
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @pysqlite_connection_create_aggregate.kwlist, i32 0, i32 0), i8** %name, i32* %n_arg, %struct._object** %aggregate_class)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 1
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %6 = load i8*, i8** %name, align 8
  %7 = load i32, i32* %n_arg, align 4
  %8 = load %struct._object*, %struct._object** %aggregate_class, align 8
  %9 = bitcast %struct._object* %8 to i8*
  %call7 = call i32 @sqlite3_create_function(%struct.sqlite3* %5, i8* %6, i32 %7, i32 1, i8* %9, void (%struct.sqlite3_context*, i32, %struct.Mem**)* null, void (%struct.sqlite3_context*, i32, %struct.Mem**)* @_pysqlite_step_callback, void (%struct.sqlite3_context*)* @_pysqlite_final_callback)
  store i32 %call7, i32* %rc, align 4
  %10 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 18
  %13 = load %struct._object*, %struct._object** %function_pinboard, align 8
  %14 = load %struct._object*, %struct._object** %aggregate_class, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* @_Py_NoneStruct)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
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
  %_py_xdecref_tmp47 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.Mem** %params, %struct.Mem*** %params.addr, align 8
  store %struct._object* null, %struct._object** %function_result, align 8
  store %struct._object* null, %struct._object** %stepmethod, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %threadstate, align 4
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %call1 = call i8* @sqlite3_user_data(%struct.sqlite3_context* %0)
  %1 = bitcast i8* %call1 to %struct._object*
  store %struct._object* %1, %struct._object** %aggregate_class, align 8
  %2 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %call2 = call i8* @sqlite3_aggregate_context(%struct.sqlite3_context* %2, i32 8)
  %3 = bitcast i8* %call2 to %struct._object**
  store %struct._object** %3, %struct._object*** %aggregate_instance, align 8
  %4 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  %5 = load %struct._object*, %struct._object** %4, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %aggregate_class, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  %7 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  store %struct._object* %call3, %struct._object** %7, align 8
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call4, null
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.then
  %8 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  store %struct._object* null, %struct._object** %8, align 8
  %9 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  call void @PyErr_Print()
  br label %if.end

if.else:                                          ; preds = %if.then.5
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %10 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  call void @_sqlite3_result_error(%struct.sqlite3_context* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0), i32 -1)
  br label %error

if.end.8:                                         ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %11 = load %struct._object**, %struct._object*** %aggregate_instance, align 8
  %12 = load %struct._object*, %struct._object** %11, align 8
  %call10 = call %struct._object* @PyObject_GetAttrString(%struct._object* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %stepmethod, align 8
  %13 = load %struct._object*, %struct._object** %stepmethod, align 8
  %tobool11 = icmp ne %struct._object* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %error

if.end.13:                                        ; preds = %if.end.9
  %14 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %15 = load i32, i32* %argc.addr, align 4
  %16 = load %struct.Mem**, %struct.Mem*** %params.addr, align 8
  %call14 = call %struct._object* @_pysqlite_build_py_params(%struct.sqlite3_context* %14, i32 %15, %struct.Mem** %16)
  store %struct._object* %call14, %struct._object** %args, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %tobool15 = icmp ne %struct._object* %17, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %error

if.end.17:                                        ; preds = %if.end.13
  %18 = load %struct._object*, %struct._object** %stepmethod, align 8
  %19 = load %struct._object*, %struct._object** %args, align 8
  %call18 = call %struct._object* @PyObject_CallObject(%struct._object* %18, %struct._object* %19)
  store %struct._object* %call18, %struct._object** %function_result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %20 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.22

if.else.21:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %27 = load %struct._object*, %struct._object** %function_result, align 8
  %tobool23 = icmp ne %struct._object* %27, null
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %do.end
  %28 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool25 = icmp ne i32 %28, 0
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.24
  call void @PyErr_Print()
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.24
  call void @PyErr_Clear()
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %29 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  call void @_sqlite3_result_error(%struct.sqlite3_context* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0), i32 -1)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.end
  br label %error

error:                                            ; preds = %if.end.29, %if.then.16, %if.then.12, %if.end
  br label %do.body.30

do.body.30:                                       ; preds = %error
  %30 = load %struct._object*, %struct._object** %stepmethod, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp31 = icmp ne %struct._object* %31, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp34, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %34, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %37(%struct._object* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.30
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %39 = load %struct._object*, %struct._object** %function_result, align 8
  store %struct._object* %39, %struct._object** %_py_xdecref_tmp47, align 8
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8
  %cmp48 = icmp ne %struct._object* %40, null
  br i1 %cmp48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %do.body.46
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %41 = load %struct._object*, %struct._object** %_py_xdecref_tmp47, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp51, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %43, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %46(%struct._object* %47)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.body.46
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %48 = load i32, i32* %threadstate, align 4
  call void @PyGILState_Release(i32 %48)
  ret void
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call3 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct._object** %sql)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  call void @_pysqlite_drop_unused_statement_references(%struct.pysqlite_Connection* %3)
  %call7 = call %struct._object* @_PyObject_New(%struct._typeobject* @pysqlite_StatementType)
  %4 = bitcast %struct._object* %call7 to %struct.pysqlite_Statement*
  store %struct.pysqlite_Statement* %4, %struct.pysqlite_Statement** %statement, align 8
  %5 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %tobool8 = icmp ne %struct.pysqlite_Statement* %5, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %db = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %6, i32 0, i32 1
  store %struct.sqlite3* null, %struct.sqlite3** %db, align 8
  %7 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %st = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %7, i32 0, i32 2
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %st, align 8
  %8 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %sql11 = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %8, i32 0, i32 3
  store %struct._object* null, %struct._object** %sql11, align 8
  %9 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %in_use = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %9, i32 0, i32 4
  store i32 0, i32* %in_use, align 4
  %10 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %in_weakreflist = getelementptr inbounds %struct.pysqlite_Statement, %struct.pysqlite_Statement* %10, i32 0, i32 5
  store %struct._object* null, %struct._object** %in_weakreflist, align 8
  %11 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %13 = load %struct._object*, %struct._object** %sql, align 8
  %call12 = call i32 @pysqlite_statement_create(%struct.pysqlite_Statement* %11, %struct.pysqlite_Connection* %12, %struct._object* %13)
  store i32 %call12, i32* %rc, align 4
  %14 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %14, 0
  br i1 %cmp, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %if.end.10
  %15 = load i32, i32* %rc, align 4
  %cmp14 = icmp eq i32 %15, -100
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %16 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.23

if.else:                                          ; preds = %if.then.13
  %17 = load i32, i32* %rc, align 4
  %cmp16 = icmp eq i32 %17, -101
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  %18 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.22

if.else.18:                                       ; preds = %if.else
  %19 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %call19 = call i32 @pysqlite_statement_reset(%struct.pysqlite_Statement* %19)
  %20 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db20 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %20, i32 0, i32 1
  %21 = load %struct.sqlite3*, %struct.sqlite3** %db20, align 8
  %call21 = call i32 @_pysqlite_seterror(%struct.sqlite3* %21, %struct.sqlite3_stmt* null)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  br label %error

if.end.24:                                        ; preds = %if.end.10
  %22 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %23 = bitcast %struct.pysqlite_Statement* %22 to %struct._object*
  %call25 = call %struct._object* @PyWeakref_NewRef(%struct._object* %23, %struct._object* null)
  store %struct._object* %call25, %struct._object** %weakref, align 8
  %24 = load %struct._object*, %struct._object** %weakref, align 8
  %cmp26 = icmp eq %struct._object* %24, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %error

if.end.28:                                        ; preds = %if.end.24
  %25 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %25, i32 0, i32 12
  %26 = load %struct._object*, %struct._object** %statements, align 8
  %27 = load %struct._object*, %struct._object** %weakref, align 8
  %call29 = call i32 @PyList_Append(%struct._object* %26, %struct._object* %27)
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.28
  br label %do.body

do.body:                                          ; preds = %if.then.31
  %28 = load %struct._object*, %struct._object** %weakref, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.35

if.else.34:                                       ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %33(%struct._object* %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.35
  br label %error

if.end.36:                                        ; preds = %if.end.28
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.36
  %35 = load %struct._object*, %struct._object** %weakref, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp38, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %37, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %40(%struct._object* %41)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %42 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %43 = bitcast %struct.pysqlite_Statement* %42 to %struct._object*
  store %struct._object* %43, %struct._object** %retval
  br label %return

error:                                            ; preds = %do.end, %if.then.27, %if.end.23
  br label %do.body.48

do.body.48:                                       ; preds = %error
  %44 = load %struct.pysqlite_Statement*, %struct.pysqlite_Statement** %statement, align 8
  %45 = bitcast %struct.pysqlite_Statement* %44 to %struct._object*
  store %struct._object* %45, %struct._object** %_py_decref_tmp49, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %47, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %50(%struct._object* %51)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.58, %do.end.47, %if.then.9, %if.then.5, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @_pysqlite_drop_unused_statement_references(%struct.pysqlite_Connection* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %new_list = alloca %struct._object*, align 8
  %weakref = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 14
  %1 = load i32, i32* %created_statements, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %created_statements, align 4
  %cmp = icmp slt i32 %1, 200
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %created_statements1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %2, i32 0, i32 14
  store i32 0, i32* %created_statements1, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %new_list, align 8
  %3 = load %struct._object*, %struct._object** %new_list, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 12
  %6 = load %struct._object*, %struct._object** %statements, align 8
  %call4 = call i64 @PyList_Size(%struct._object* %6)
  %cmp5 = icmp slt i64 %conv, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements7 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 12
  %8 = load %struct._object*, %struct._object** %statements7, align 8
  %9 = load i32, i32* %i, align 4
  %conv8 = sext i32 %9 to i64
  %call9 = call %struct._object* @PyList_GetItem(%struct._object* %8, i64 %conv8)
  store %struct._object* %call9, %struct._object** %weakref, align 8
  %10 = load %struct._object*, %struct._object** %weakref, align 8
  %call10 = call %struct._object* @PyWeakref_GetObject(%struct._object* %10)
  %cmp11 = icmp ne %struct._object* %call10, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %for.body
  %11 = load %struct._object*, %struct._object** %new_list, align 8
  %12 = load %struct._object*, %struct._object** %weakref, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %11, %struct._object* %12)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.then.13
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %13 = load %struct._object*, %struct._object** %new_list, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %return

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %20 = load i32, i32* %i, align 4
  %inc24 = add i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.25

do.body.25:                                       ; preds = %for.end
  %21 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements27 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %21, i32 0, i32 12
  %22 = load %struct._object*, %struct._object** %statements27, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp26, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %24, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.25
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.25
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %27(%struct._object* %28)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %29 = load %struct._object*, %struct._object** %new_list, align 8
  %30 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %statements38 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %30, i32 0, i32 12
  store %struct._object* %29, %struct._object** %statements38, align 8
  br label %return

return:                                           ; preds = %do.end.37, %do.end, %if.then.2, %if.then
  ret void
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare i32 @pysqlite_statement_create(%struct.pysqlite_Statement*, %struct.pysqlite_Connection*, %struct._object*) #1

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
  %_py_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_xdecref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %cursor, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %method, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %1 = bitcast %struct.pysqlite_Connection* %0 to %struct._object*
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %cursor, align 8
  %2 = load %struct._object*, %struct._object** %cursor, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %cursor, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %method, align 8
  %4 = load %struct._object*, %struct._object** %method, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.end.11, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %error

if.end.11:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %method, align 8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call12 = call %struct._object* @PyObject_CallObject(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call12, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %tobool13 = icmp ne %struct._object* %16, null
  br i1 %tobool13, label %if.end.32, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %17, %struct._object** %_py_tmp16, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %do.body.15
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %21, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %24(%struct._object* %25)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.15
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.end.11
  br label %error

error:                                            ; preds = %if.end.32, %do.end.10, %if.then
  br label %do.body.33

do.body.33:                                       ; preds = %error
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %27, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %30, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %33(%struct._object* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %35 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp50, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  %cmp51 = icmp ne %struct._object* %36, null
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %do.body.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp54, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %39, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %42(%struct._object* %43)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.49
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %44 = load %struct._object*, %struct._object** %cursor, align 8
  ret %struct._object* %44
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

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
  %_py_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_xdecref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %cursor, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %method, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %1 = bitcast %struct.pysqlite_Connection* %0 to %struct._object*
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %cursor, align 8
  %2 = load %struct._object*, %struct._object** %cursor, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %cursor, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %method, align 8
  %4 = load %struct._object*, %struct._object** %method, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.end.11, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %error

if.end.11:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %method, align 8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call12 = call %struct._object* @PyObject_CallObject(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call12, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %tobool13 = icmp ne %struct._object* %16, null
  br i1 %tobool13, label %if.end.32, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %17, %struct._object** %_py_tmp16, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %do.body.15
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %21, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %24(%struct._object* %25)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.15
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.end.11
  br label %error

error:                                            ; preds = %if.end.32, %do.end.10, %if.then
  br label %do.body.33

do.body.33:                                       ; preds = %error
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %27, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %30, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %33(%struct._object* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %35 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp50, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  %cmp51 = icmp ne %struct._object* %36, null
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %do.body.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp54, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %39, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %42(%struct._object* %43)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.49
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %44 = load %struct._object*, %struct._object** %cursor, align 8
  ret %struct._object* %44
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
  %_py_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_xdecref_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %cursor, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %method, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %1 = bitcast %struct.pysqlite_Connection* %0 to %struct._object*
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @PyId_cursor, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %cursor, align 8
  %2 = load %struct._object*, %struct._object** %cursor, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %cursor, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %method, align 8
  %4 = load %struct._object*, %struct._object** %method, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.end.11, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %error

if.end.11:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %method, align 8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call12 = call %struct._object* @PyObject_CallObject(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call12, %struct._object** %result, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  %tobool13 = icmp ne %struct._object* %16, null
  br i1 %tobool13, label %if.end.32, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %cursor, align 8
  store %struct._object* %17, %struct._object** %_py_tmp16, align 8
  %18 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %do.body.15
  store %struct._object* null, %struct._object** %cursor, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %19 = load %struct._object*, %struct._object** %_py_tmp16, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp20, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %21, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %24(%struct._object* %25)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.15
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %if.end.11
  br label %error

error:                                            ; preds = %if.end.32, %do.end.10, %if.then
  br label %do.body.33

do.body.33:                                       ; preds = %error
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp34 = icmp ne %struct._object* %27, null
  br i1 %cmp34, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %do.body.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %30, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %33(%struct._object* %34)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.body.33
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %35 = load %struct._object*, %struct._object** %method, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp50, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  %cmp51 = icmp ne %struct._object* %36, null
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %do.body.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp50, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp54, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %39, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %42(%struct._object* %43)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %do.end.63, %do.body.49
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %44 = load %struct._object*, %struct._object** %cursor, align 8
  ret %struct._object* %44
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_connection_setup_types() #0 {
entry:
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 37), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_ConnectionType)
  ret i32 %call
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare void @sqlite3_result_null(%struct.sqlite3_context*) #1

declare i64 @_pysqlite_long_as_int64(%struct._object*) #1

declare void @sqlite3_result_int64(%struct.sqlite3_context*, i64) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare void @sqlite3_result_double(%struct.sqlite3_context*, double) #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare void @sqlite3_result_text(%struct.sqlite3_context*, i8*, i32, void (i8*)*) #1

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #1

declare void @sqlite3_result_blob(%struct.sqlite3_context*, i8*, i32, void (i8*)*) #1

declare void @sqlite3_result_error(%struct.sqlite3_context*, i8*, i32) #1

declare %struct._object* @PyUnicode_Concat(%struct._object*, %struct._object*) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_set_authorizer(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %authorizer_cb = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pysqlite_connection_set_authorizer.kwlist, i32 0, i32 0), %struct._object** %authorizer_cb)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %4, i32 0, i32 1
  %5 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %6 = load %struct._object*, %struct._object** %authorizer_cb, align 8
  %7 = bitcast %struct._object* %6 to i8*
  %call7 = call i32 @sqlite3_set_authorizer(%struct.sqlite3* %5, i32 (i8*, i32, i8*, i8*, i8*, i8*)* @_authorizer_callback, i8* %7)
  store i32 %call7, i32* %rc, align 4
  %8 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %9 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.6
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 18
  %11 = load %struct._object*, %struct._object** %function_pinboard, align 8
  %12 = load %struct._object*, %struct._object** %authorizer_cb, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %11, %struct._object* %12, %struct._object* @_Py_NoneStruct)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then.8, %if.then.5, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
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
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @pysqlite_connection_set_progress_handler.kwlist, i32 0, i32 0), %struct._object** %progress_handler, i32* %n)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %progress_handler, align 8
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 1
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  call void @sqlite3_progress_handler(%struct.sqlite3* %6, i32 0, i32 (i8*)* null, i8* null)
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db8 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 1
  %8 = load %struct.sqlite3*, %struct.sqlite3** %db8, align 8
  %9 = load i32, i32* %n, align 4
  %10 = load %struct._object*, %struct._object** %progress_handler, align 8
  %11 = bitcast %struct._object* %10 to i8*
  call void @sqlite3_progress_handler(%struct.sqlite3* %8, i32 %9, i32 (i8*)* @_progress_handler, i8* %11)
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %12, i32 0, i32 18
  %13 = load %struct._object*, %struct._object** %function_pinboard, align 8
  %14 = load %struct._object*, %struct._object** %progress_handler, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %13, %struct._object* %14, %struct._object* @_Py_NoneStruct)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %15 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.11, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_set_trace_callback(%struct.pysqlite_Connection* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %trace_callback = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call1 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @pysqlite_connection_set_trace_callback.kwlist, i32 0, i32 0), %struct._object** %trace_callback)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %trace_callback, align 8
  %cmp = icmp eq %struct._object* %4, @_Py_NoneStruct
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %5 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %5, i32 0, i32 1
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call8 = call i8* @sqlite3_trace(%struct.sqlite3* %6, void (i8*, i8*)* null, i8* null)
  br label %if.end.15

if.else:                                          ; preds = %if.end.6
  %7 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %function_pinboard = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %7, i32 0, i32 18
  %8 = load %struct._object*, %struct._object** %function_pinboard, align 8
  %9 = load %struct._object*, %struct._object** %trace_callback, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %8, %struct._object* %9, %struct._object* @_Py_NoneStruct)
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  %10 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db13 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %10, i32 0, i32 1
  %11 = load %struct.sqlite3*, %struct.sqlite3** %db13, align 8
  %12 = load %struct._object*, %struct._object** %trace_callback, align 8
  %13 = bitcast %struct._object* %12 to i8*
  %call14 = call i8* @sqlite3_trace(%struct.sqlite3* %11, void (i8*, i8*)* @_trace_callback, i8* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.12, %if.then.7
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.11, %if.then.5, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_create_collation(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %uppercase_name, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_thread(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call2 = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %finally

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.83, i32 0, i32 0), %struct._typeobject* @PyUnicode_Type, %struct._object** %name, %struct._object** %callable)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  br label %finally

if.end.7:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %name, align 8
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %3, %struct._Py_Identifier* @pysqlite_connection_create_collation.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call8, %struct._object** %uppercase_name, align 8
  %4 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %tobool9 = icmp ne %struct._object* %4, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  br label %finally

if.end.11:                                        ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool12 = icmp ne i32 %bf.clear, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %call13 = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call13, %cond.false ]
  %tobool14 = icmp ne i32 %cond, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  br label %finally

if.end.16:                                        ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 1
  %11 = load i64, i64* %length, align 8
  store i64 %11, i64* %len, align 8
  %12 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*
  %state17 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3
  %14 = bitcast %struct.anon* %state17 to i32*
  %bf.load18 = load i32, i32* %14, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 2
  %bf.clear20 = and i32 %bf.lshr19, 7
  store i32 %bf.clear20, i32* %kind, align 4
  %15 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 3
  %17 = bitcast %struct.anon* %state21 to i32*
  %bf.load22 = load i32, i32* %17, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 5
  %bf.clear24 = and i32 %bf.lshr23, 1
  %tobool25 = icmp ne i32 %bf.clear24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.37

cond.true.26:                                     ; preds = %if.end.16
  %18 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %state27 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3
  %20 = bitcast %struct.anon* %state27 to i32*
  %bf.load28 = load i32, i32* %20, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 6
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.true.26
  %21 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %22, i64 1
  %23 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.35

cond.false.33:                                    ; preds = %cond.true.26
  %24 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyCompactUnicodeObject*
  %add.ptr34 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %25, i64 1
  %26 = bitcast %struct.PyCompactUnicodeObject* %add.ptr34 to i8*
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.32
  %cond36 = phi i8* [ %23, %cond.true.32 ], [ %26, %cond.false.33 ]
  br label %cond.end.39

cond.false.37:                                    ; preds = %if.end.16
  %27 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyUnicodeObject*
  %data38 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %28, i32 0, i32 1
  %any = bitcast %union.anon* %data38 to i8**
  %29 = load i8*, i8** %any, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.end.35
  %cond40 = phi i8* [ %cond36, %cond.end.35 ], [ %29, %cond.false.37 ]
  store i8* %cond40, i8** %data, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.39
  %30 = load i64, i64* %i, align 8
  %31 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %30, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %kind, align 4
  %cmp41 = icmp eq i32 %32, 1
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %for.body
  %33 = load i64, i64* %i, align 8
  %34 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %34, i64 %33
  %35 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %35 to i32
  br label %cond.end.53

cond.false.43:                                    ; preds = %for.body
  %36 = load i32, i32* %kind, align 4
  %cmp44 = icmp eq i32 %36, 2
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false.43
  %37 = load i64, i64* %i, align 8
  %38 = load i8*, i8** %data, align 8
  %39 = bitcast i8* %38 to i16*
  %arrayidx47 = getelementptr i16, i16* %39, i64 %37
  %40 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %40 to i32
  br label %cond.end.51

cond.false.49:                                    ; preds = %cond.false.43
  %41 = load i64, i64* %i, align 8
  %42 = load i8*, i8** %data, align 8
  %43 = bitcast i8* %42 to i32*
  %arrayidx50 = getelementptr i32, i32* %43, i64 %41
  %44 = load i32, i32* %arrayidx50, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.46
  %cond52 = phi i32 [ %conv48, %cond.true.46 ], [ %44, %cond.false.49 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.42
  %cond54 = phi i32 [ %conv, %cond.true.42 ], [ %cond52, %cond.end.51 ]
  store i32 %cond54, i32* %ch, align 4
  %45 = load i32, i32* %ch, align 4
  %cmp55 = icmp uge i32 %45, 48
  br i1 %cmp55, label %land.lhs.true, label %lor.lhs.false.59

land.lhs.true:                                    ; preds = %cond.end.53
  %46 = load i32, i32* %ch, align 4
  %cmp57 = icmp ule i32 %46, 57
  br i1 %cmp57, label %if.then.68, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true, %cond.end.53
  %47 = load i32, i32* %ch, align 4
  %cmp60 = icmp uge i32 %47, 65
  br i1 %cmp60, label %land.lhs.true.62, label %lor.lhs.false.65

land.lhs.true.62:                                 ; preds = %lor.lhs.false.59
  %48 = load i32, i32* %ch, align 4
  %cmp63 = icmp ule i32 %48, 90
  br i1 %cmp63, label %if.then.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62, %lor.lhs.false.59
  %49 = load i32, i32* %ch, align 4
  %cmp66 = icmp eq i32 %49, 95
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.62, %land.lhs.true
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false.65
  %50 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0))
  br label %finally

for.inc:                                          ; preds = %if.then.68
  %51 = load i64, i64* %i, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %call69 = call i8* @PyUnicode_AsUTF8(%struct._object* %52)
  store i8* %call69, i8** %uppercase_name_str, align 8
  %53 = load i8*, i8** %uppercase_name_str, align 8
  %tobool70 = icmp ne i8* %53, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %for.end
  br label %finally

if.end.72:                                        ; preds = %for.end
  %54 = load %struct._object*, %struct._object** %callable, align 8
  %cmp73 = icmp ne %struct._object* %54, @_Py_NoneStruct
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.79

land.lhs.true.75:                                 ; preds = %if.end.72
  %55 = load %struct._object*, %struct._object** %callable, align 8
  %call76 = call i32 @PyCallable_Check(%struct._object* %55)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %land.lhs.true.75
  %56 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i32 0, i32 0))
  br label %finally

if.end.79:                                        ; preds = %land.lhs.true.75, %if.end.72
  %57 = load %struct._object*, %struct._object** %callable, align 8
  %cmp80 = icmp ne %struct._object* %57, @_Py_NoneStruct
  br i1 %cmp80, label %if.then.82, label %if.else.88

if.then.82:                                       ; preds = %if.end.79
  %58 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %58, i32 0, i32 19
  %59 = load %struct._object*, %struct._object** %collations, align 8
  %60 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %61 = load %struct._object*, %struct._object** %callable, align 8
  %call83 = call i32 @PyDict_SetItem(%struct._object* %59, %struct._object* %60, %struct._object* %61)
  %cmp84 = icmp eq i32 %call83, -1
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.82
  br label %finally

if.end.87:                                        ; preds = %if.then.82
  br label %if.end.95

if.else.88:                                       ; preds = %if.end.79
  %62 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations89 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %62, i32 0, i32 19
  %63 = load %struct._object*, %struct._object** %collations89, align 8
  %64 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %call90 = call i32 @PyDict_DelItem(%struct._object* %63, %struct._object* %64)
  %cmp91 = icmp eq i32 %call90, -1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.88
  br label %finally

if.end.94:                                        ; preds = %if.else.88
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.87
  %65 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %65, i32 0, i32 1
  %66 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %67 = load i8*, i8** %uppercase_name_str, align 8
  %68 = load %struct._object*, %struct._object** %callable, align 8
  %cmp96 = icmp ne %struct._object* %68, @_Py_NoneStruct
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.95
  %69 = load %struct._object*, %struct._object** %callable, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.end.95
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi %struct._object* [ %69, %cond.true.98 ], [ null, %cond.false.99 ]
  %70 = bitcast %struct._object* %cond101 to i8*
  %71 = load %struct._object*, %struct._object** %callable, align 8
  %cmp102 = icmp ne %struct._object* %71, @_Py_NoneStruct
  %cond104 = select i1 %cmp102, i32 (i8*, i32, i8*, i32, i8*)* @pysqlite_collation_callback, i32 (i8*, i32, i8*, i32, i8*)* null
  %call105 = call i32 @sqlite3_create_collation(%struct.sqlite3* %66, i8* %67, i32 1, i8* %70, i32 (i8*, i32, i8*, i32, i8*)* %cond104)
  store i32 %call105, i32* %rc, align 4
  %72 = load i32, i32* %rc, align 4
  %cmp106 = icmp ne i32 %72, 0
  br i1 %cmp106, label %if.then.108, label %if.end.113

if.then.108:                                      ; preds = %cond.end.100
  %73 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %collations109 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %73, i32 0, i32 19
  %74 = load %struct._object*, %struct._object** %collations109, align 8
  %75 = load %struct._object*, %struct._object** %uppercase_name, align 8
  %call110 = call i32 @PyDict_DelItem(%struct._object* %74, %struct._object* %75)
  %76 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db111 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %76, i32 0, i32 1
  %77 = load %struct.sqlite3*, %struct.sqlite3** %db111, align 8
  %call112 = call i32 @_pysqlite_seterror(%struct.sqlite3* %77, %struct.sqlite3_stmt* null)
  br label %finally

if.end.113:                                       ; preds = %cond.end.100
  br label %finally

finally:                                          ; preds = %if.end.113, %if.then.108, %if.then.93, %if.then.86, %if.then.78, %if.then.71, %if.else, %if.then.15, %if.then.10, %if.then.6, %if.then
  br label %do.body

do.body:                                          ; preds = %finally
  %78 = load %struct._object*, %struct._object** %uppercase_name, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp114 = icmp ne %struct._object* %79, null
  br i1 %cmp114, label %if.then.116, label %if.end.123

if.then.116:                                      ; preds = %do.body
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %82, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp118 = icmp ne i64 %dec, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.117
  br label %if.end.122

if.else.121:                                      ; preds = %do.body.117
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %85(%struct._object* %86)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end

do.end:                                           ; preds = %if.end.122
  br label %if.end.123

if.end.123:                                       ; preds = %do.end, %do.body
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  %call125 = call %struct._object* @PyErr_Occurred()
  %tobool126 = icmp ne %struct._object* %call125, null
  br i1 %tobool126, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.end.124
  store %struct._object* null, %struct._object** %retval1, align 8
  br label %if.end.130

if.else.128:                                      ; preds = %do.end.124
  %87 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc129 = add i64 %87, 1
  store i64 %inc129, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.127
  %88 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %88
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_interrupt(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 1
  %2 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  call void @sqlite3_interrupt(%struct.sqlite3* %2)
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8
  br label %finally

finally:                                          ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %4
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
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  store %struct._object* null, %struct._object** %module, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %module, align 8
  %1 = load %struct._object*, %struct._object** %module, align 8
  %tobool3 = icmp ne %struct._object* %1, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %finally

if.end.5:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %module, align 8
  %call6 = call %struct._object* @PyModule_GetDict(%struct._object* %2)
  store %struct._object* %call6, %struct._object** %module_dict, align 8
  %3 = load %struct._object*, %struct._object** %module_dict, align 8
  %tobool7 = icmp ne %struct._object* %3, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %finally

if.end.9:                                         ; preds = %if.end.5
  %4 = load %struct._object*, %struct._object** %module_dict, align 8
  %call10 = call %struct._object* @PyDict_GetItemString(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0))
  store %struct._object* %call10, %struct._object** %pyfn_iterdump, align 8
  %5 = load %struct._object*, %struct._object** %pyfn_iterdump, align 8
  %tobool11 = icmp ne %struct._object* %5, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %6 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.88, i32 0, i32 0))
  br label %finally

if.end.13:                                        ; preds = %if.end.9
  %call14 = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call14, %struct._object** %args.addr, align 8
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %tobool15 = icmp ne %struct._object* %7, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %finally

if.end.17:                                        ; preds = %if.end.13
  %8 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %9 = bitcast %struct.pysqlite_Connection* %8 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %13 = bitcast %struct.pysqlite_Connection* %12 to %struct._object*
  %call18 = call i32 @PyTuple_SetItem(%struct._object* %11, i64 0, %struct._object* %13)
  %14 = load %struct._object*, %struct._object** %pyfn_iterdump, align 8
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  %call19 = call %struct._object* @PyObject_CallObject(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call19, %struct._object** %retval1, align 8
  br label %finally

finally:                                          ; preds = %if.end.17, %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  br label %do.body

do.body:                                          ; preds = %finally
  %16 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %16, %struct._object** %_py_xdecref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %do.body
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt22, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt22, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body.21
  br label %if.end.25

if.else:                                          ; preds = %do.body.21
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %if.end.26

if.end.26:                                        ; preds = %do.end, %do.body
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %25 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %25, %struct._object** %_py_xdecref_tmp29, align 8
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %26, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %do.body.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp33, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %29, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %32(%struct._object* %33)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %34 = load %struct._object*, %struct._object** %retval1, align 8
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_enter(%struct.pysqlite_Connection* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %1 = bitcast %struct.pysqlite_Connection* %0 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %4 = bitcast %struct.pysqlite_Connection* %3 to %struct._object*
  ret %struct._object* %4
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), %struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %exc_type, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %exc_value, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** %exc_tb, align 8
  %cmp3 = icmp eq %struct._object* %3, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true.2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8** %method_name, align 8
  br label %if.end.5

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8** %method_name, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %4 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %5 = bitcast %struct.pysqlite_Connection* %4 to %struct._object*
  %6 = load i8*, i8** %method_name, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, i8*, ...) @PyObject_CallMethod(%struct._object* %5, i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call6, %struct._object** %result, align 8
  %7 = load %struct._object*, %struct._object** %result, align 8
  %tobool7 = icmp ne %struct._object* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %8 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %15 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.8, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @sqlite3_set_authorizer(%struct.sqlite3*, i32 (i8*, i32, i8*, i8*, i8*, i8*)*, i8*) #1

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
  store i8* %user_arg, i8** %user_arg.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store i8* %arg1, i8** %arg1.addr, align 8
  store i8* %arg2, i8** %arg2.addr, align 8
  store i8* %dbname, i8** %dbname.addr, align 8
  store i8* %access_attempt_source, i8** %access_attempt_source.addr, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %0 = load i8*, i8** %user_arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %2 = load i32, i32* %action.addr, align 4
  %3 = load i8*, i8** %arg1.addr, align 8
  %4 = load i8*, i8** %arg2.addr, align 8
  %5 = load i8*, i8** %dbname.addr, align 8
  %6 = load i8*, i8** %access_attempt_source.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 %2, i8* %3, i8* %4, i8* %5, i8* %6)
  store %struct._object* %call1, %struct._object** %ret, align 8
  %7 = load %struct._object*, %struct._object** %ret, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %8 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  call void @PyErr_Print()
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 1, i32* %rc, align 4
  br label %if.end.23

if.else.3:                                        ; preds = %entry
  %9 = load %struct._object*, %struct._object** %ret, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 16777216
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then.5, label %if.else.16

if.then.5:                                        ; preds = %if.else.3
  %12 = load %struct._object*, %struct._object** %ret, align 8
  %call6 = call i32 @_PyLong_AsInt(%struct._object* %12)
  store i32 %call6, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %cmp7 = icmp eq i32 %13, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.then.5
  %call8 = call %struct._object* @PyErr_Occurred()
  %tobool9 = icmp ne %struct._object* %call8, null
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.10
  call void @PyErr_Print()
  br label %if.end.14

if.else.13:                                       ; preds = %if.then.10
  call void @PyErr_Clear()
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  store i32 1, i32* %rc, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true, %if.then.5
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.3
  store i32 1, i32* %rc, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.15
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %15 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body
  br label %if.end.22

if.else.20:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %if.end
  %22 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %22)
  %23 = load i32, i32* %rc, align 4
  ret i32 %23
}

declare i32 @_PyLong_AsInt(%struct._object*) #1

declare void @sqlite3_progress_handler(%struct.sqlite3*, i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_progress_handler(i8* %user_arg) #0 {
entry:
  %user_arg.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %ret = alloca %struct._object*, align 8
  %gilstate = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %user_arg, i8** %user_arg.addr, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %0 = load i8*, i8** %user_arg.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %ret, align 8
  %2 = load %struct._object*, %struct._object** %ret, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.else.4, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  call void @PyErr_Print()
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  store i32 1, i32* %rc, align 4
  br label %if.end.9

if.else.4:                                        ; preds = %entry
  %4 = load %struct._object*, %struct._object** %ret, align 8
  %call5 = call i32 @PyObject_IsTrue(%struct._object* %4)
  store i32 %call5, i32* %rc, align 4
  br label %do.body

do.body:                                          ; preds = %if.else.4
  %5 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else.7:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %if.end
  %12 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %12)
  %13 = load i32, i32* %rc, align 4
  ret i32 %13
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare i8* @sqlite3_trace(%struct.sqlite3*, void (i8*, i8*)*, i8*) #1

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
  store i8* %user_arg, i8** %user_arg.addr, align 8
  store i8* %statement_string, i8** %statement_string.addr, align 8
  store %struct._object* null, %struct._object** %py_statement, align 8
  store %struct._object* null, %struct._object** %ret, align 8
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %0 = load i8*, i8** %statement_string.addr, align 8
  %1 = load i8*, i8** %statement_string.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %call2 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %0, i64 %call1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %py_statement, align 8
  %2 = load %struct._object*, %struct._object** %py_statement, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %user_arg.addr, align 8
  %4 = bitcast i8* %3 to %struct._object*
  %5 = load %struct._object*, %struct._object** %py_statement, align 8
  %call3 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %4, %struct._object* %5, i8* null)
  store %struct._object* %call3, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %py_statement, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
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

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %entry
  %13 = load %struct._object*, %struct._object** %ret, align 8
  %tobool6 = icmp ne %struct._object* %13, null
  br i1 %tobool6, label %if.then.7, label %if.else.19

if.then.7:                                        ; preds = %if.end.5
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %14 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp9, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %16, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %19(%struct._object* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.24

if.else.19:                                       ; preds = %if.end.5
  %21 = load i32, i32* @_enable_callback_tracebacks, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else.19
  call void @PyErr_Print()
  br label %if.end.23

if.else.22:                                       ; preds = %if.else.19
  call void @PyErr_Clear()
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.end.18
  %22 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %22)
  ret void
}

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare i32 @sqlite3_create_collation(%struct.sqlite3*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*) #1

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
  %_py_xdecref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_xdecref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  store i8* %context, i8** %context.addr, align 8
  store i32 %text1_length, i32* %text1_length.addr, align 4
  store i8* %text1_data, i8** %text1_data.addr, align 8
  store i32 %text2_length, i32* %text2_length.addr, align 4
  store i8* %text2_data, i8** %text2_data.addr, align 8
  %0 = load i8*, i8** %context.addr, align 8
  %1 = bitcast i8* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %callback, align 8
  store %struct._object* null, %struct._object** %string1, align 8
  store %struct._object* null, %struct._object** %string2, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  store i32 0, i32* %result, align 4
  %call = call i32 @PyGILState_Ensure()
  store i32 %call, i32* %gilstate, align 4
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %finally

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %text1_data.addr, align 8
  %3 = load i32, i32* %text1_length.addr, align 4
  %conv = sext i32 %3 to i64
  %call3 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %2, i64 %conv)
  store %struct._object* %call3, %struct._object** %string1, align 8
  %4 = load i8*, i8** %text2_data.addr, align 8
  %5 = load i32, i32* %text2_length.addr, align 4
  %conv4 = sext i32 %5 to i64
  %call5 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %4, i64 %conv4)
  store %struct._object* %call5, %struct._object** %string2, align 8
  %6 = load %struct._object*, %struct._object** %string1, align 8
  %tobool6 = icmp ne %struct._object* %6, null
  br i1 %tobool6, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %string2, align 8
  %tobool7 = icmp ne %struct._object* %7, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %finally

if.end.9:                                         ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %callback, align 8
  %9 = load %struct._object*, %struct._object** %string1, align 8
  %10 = load %struct._object*, %struct._object** %string2, align 8
  %call10 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %8, %struct._object* %9, %struct._object* %10, i8* null)
  store %struct._object* %call10, %struct._object** %retval1, align 8
  %11 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool11 = icmp ne %struct._object* %11, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %finally

if.end.13:                                        ; preds = %if.end.9
  %12 = load %struct._object*, %struct._object** %retval1, align 8
  %call14 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %12, i32* %result)
  store i64 %call14, i64* %longval, align 8
  %13 = load i64, i64* %longval, align 8
  %cmp = icmp eq i64 %13, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.13
  %call16 = call %struct._object* @PyErr_Occurred()
  %tobool17 = icmp ne %struct._object* %call16, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  store i32 0, i32* %result, align 4
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %if.end.13
  %14 = load i32, i32* %result, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %if.end.30, label %if.then.20

if.then.20:                                       ; preds = %if.else
  %15 = load i64, i64* %longval, align 8
  %cmp21 = icmp sgt i64 %15, 0
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.then.20
  store i32 1, i32* %result, align 4
  br label %if.end.29

if.else.24:                                       ; preds = %if.then.20
  %16 = load i64, i64* %longval, align 8
  %cmp25 = icmp slt i64 %16, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.24
  store i32 -1, i32* %result, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.else.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.18
  br label %finally

finally:                                          ; preds = %if.end.31, %if.then.12, %if.then.8, %if.then
  br label %do.body

do.body:                                          ; preds = %finally
  %17 = load %struct._object*, %struct._object** %string1, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp32 = icmp ne %struct._object* %18, null
  br i1 %cmp32, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %do.body
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp36 = icmp ne i64 %dec, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.35
  br label %if.end.40

if.else.39:                                       ; preds = %do.body.35
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end

do.end:                                           ; preds = %if.end.40
  br label %if.end.41

if.end.41:                                        ; preds = %do.end, %do.body
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %26 = load %struct._object*, %struct._object** %string2, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp44, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %27, null
  br i1 %cmp45, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %do.body.43
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp44, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp49, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %30, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.48
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.48
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %33(%struct._object* %34)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.43
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %35 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp63, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8
  %cmp64 = icmp ne %struct._object* %36, null
  br i1 %cmp64, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %do.body.62
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.66
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp63, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp68, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %39, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %42(%struct._object* %43)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %do.body.62
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %44 = load i32, i32* %gilstate, align 4
  call void @PyGILState_Release(i32 %44)
  %45 = load i32, i32* %result, align 4
  ret i32 %45
}

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare void @sqlite3_interrupt(%struct.sqlite3*) #1

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_CallMethod(%struct._object*, i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_get_isolation_level(%struct.pysqlite_Connection* %self, i8* %unused) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %0, i32 0, i32 6
  %1 = load %struct._object*, %struct._object** %isolation_level, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %isolation_level1 = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %3, i32 0, i32 6
  %4 = load %struct._object*, %struct._object** %isolation_level1, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pysqlite_connection_get_total_changes(%struct.pysqlite_Connection* %self, i8* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Connection*, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.pysqlite_Connection* %self, %struct.pysqlite_Connection** %self.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %0 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %call = call i32 @pysqlite_check_connection(%struct.pysqlite_Connection* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.pysqlite_Connection*, %struct.pysqlite_Connection** %self.addr, align 8
  %db = getelementptr inbounds %struct.pysqlite_Connection, %struct.pysqlite_Connection* %1, i32 0, i32 1
  %2 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %call1 = call i32 @sqlite3_total_changes(%struct.sqlite3* %2)
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i32 %call1)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @sqlite3_total_changes(%struct.sqlite3*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
