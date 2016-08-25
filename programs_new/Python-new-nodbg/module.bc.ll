; ModuleID = './module.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._IntConstantPair = type { i8*, i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque

@_sqlite3module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@pysqlite_ConnectionType = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@pysqlite_CursorType = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@pysqlite_CacheType = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"Statement\00", align 1
@pysqlite_StatementType = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Cache\00", align 1
@pysqlite_PrepareProtocolType = external global %struct._typeobject, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"PrepareProtocol\00", align 1
@pysqlite_RowType = external global %struct._typeobject, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"Row\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sqlite3.Error\00", align 1
@PyExc_Exception = external global %struct._object*, align 8
@pysqlite_Error = common global %struct._object* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"sqlite3.Warning\00", align 1
@pysqlite_Warning = common global %struct._object* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"sqlite3.InterfaceError\00", align 1
@pysqlite_InterfaceError = common global %struct._object* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"InterfaceError\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"sqlite3.DatabaseError\00", align 1
@pysqlite_DatabaseError = common global %struct._object* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"DatabaseError\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"sqlite3.InternalError\00", align 1
@pysqlite_InternalError = common global %struct._object* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"InternalError\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"sqlite3.OperationalError\00", align 1
@pysqlite_OperationalError = common global %struct._object* null, align 8
@.str.17 = private unnamed_addr constant [17 x i8] c"OperationalError\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"sqlite3.ProgrammingError\00", align 1
@pysqlite_ProgrammingError = common global %struct._object* null, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"ProgrammingError\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"sqlite3.IntegrityError\00", align 1
@pysqlite_IntegrityError = common global %struct._object* null, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"IntegrityError\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"sqlite3.DataError\00", align 1
@pysqlite_DataError = common global %struct._object* null, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"DataError\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"sqlite3.NotSupportedError\00", align 1
@pysqlite_NotSupportedError = common global %struct._object* null, align 8
@.str.25 = private unnamed_addr constant [18 x i8] c"NotSupportedError\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.26 = private unnamed_addr constant [17 x i8] c"OptimizedUnicode\00", align 1
@_int_constants = internal global [34 x %struct._IntConstantPair] [%struct._IntConstantPair { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 1 }, %struct._IntConstantPair { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i32 2 }, %struct._IntConstantPair { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 0 }, %struct._IntConstantPair { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i32 1 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i32 2 }, %struct._IntConstantPair { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i32 1 }, %struct._IntConstantPair { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 2 }, %struct._IntConstantPair { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i32 0, i32 0), i32 3 }, %struct._IntConstantPair { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i32 4 }, %struct._IntConstantPair { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i32 5 }, %struct._IntConstantPair { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), i32 6 }, %struct._IntConstantPair { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0), i32 7 }, %struct._IntConstantPair { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0), i32 8 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i32 9 }, %struct._IntConstantPair { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i32 10 }, %struct._IntConstantPair { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i32 11 }, %struct._IntConstantPair { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i32 0, i32 0), i32 12 }, %struct._IntConstantPair { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i32 13 }, %struct._IntConstantPair { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i32 0, i32 0), i32 14 }, %struct._IntConstantPair { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i32 0, i32 0), i32 15 }, %struct._IntConstantPair { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i32 16 }, %struct._IntConstantPair { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i32 0, i32 0), i32 17 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 18 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i32 0, i32 0), i32 19 }, %struct._IntConstantPair { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 20 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i32 21 }, %struct._IntConstantPair { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i32 0, i32 0), i32 22 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i32 23 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i32 24 }, %struct._IntConstantPair { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i32 25 }, %struct._IntConstantPair { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.88, i32 0, i32 0), i32 26 }, %struct._IntConstantPair { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 27 }, %struct._IntConstantPair { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i32 28 }, %struct._IntConstantPair zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"2.6.0\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"sqlite_version\00", align 1
@_enable_callback_tracebacks = common global i32 0, align 4
@pysqlite_BaseTypeAdapted = common global i32 0, align 4
@PyExc_ImportError = external global %struct._object*, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"sqlite3: init failed\00", align 1
@converters = common global %struct._object* null, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"_sqlite3\00", align 1
@module_methods = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_connect to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @module_connect_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_complete to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @module_complete_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_enable_shared_cache to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @module_enable_shared_cache_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @module_register_adapter, i32 1, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @module_register_adapter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @module_register_converter, i32 1, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @module_register_converter_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cursor*, %struct._object*)* @pysqlite_adapt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.38, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @enable_callback_tracebacks, i32 1, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @enable_callback_tracebacks_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@module_connect_doc = internal global [287 x i8] c"connect(database[, timeout, detect_types, isolation_level,\0A        check_same_thread, factory, cached_statements, uri])\0A\0AOpens a connection to the SQLite database file *database*. You can use\0A\22:memory:\22 to open a database connection to a database that resides in\0ARAM instead of on disk.\00", align 16
@.str.33 = private unnamed_addr constant [19 x i8] c"complete_statement\00", align 1
@module_complete_doc = internal global [93 x i8] c"complete_statement(sql)\0A\0AChecks if a string contains a complete SQL statement. Non-standard.\00", align 16
@.str.34 = private unnamed_addr constant [20 x i8] c"enable_shared_cache\00", align 1
@module_enable_shared_cache_doc = internal global [119 x i8] c"enable_shared_cache(do_enable)\0A\0AEnable or disable shared cache mode for the calling thread.\0AExperimental/Non-standard.\00", align 16
@.str.35 = private unnamed_addr constant [17 x i8] c"register_adapter\00", align 1
@module_register_adapter_doc = internal global [103 x i8] c"register_adapter(type, callable)\0A\0ARegisters an adapter with pysqlite's adapter registry. Non-standard.\00", align 16
@.str.36 = private unnamed_addr constant [19 x i8] c"register_converter\00", align 1
@module_register_converter_doc = internal global [91 x i8] c"register_converter(typename, callable)\0A\0ARegisters a converter with pysqlite. Non-standard.\00", align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"adapt\00", align 1
@.str.38 = private unnamed_addr constant [78 x i8] c"adapt(obj, protocol, alternate) -> adapt obj to given protocol. Non-standard.\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"enable_callback_tracebacks\00", align 1
@enable_callback_tracebacks_doc = internal global [98 x i8] c"enable_callback_tracebacks(flag)\0A\0AEnable or disable callback functions throwing errors to stderr.\00", align 16
@module_connect.kwlist = internal global [9 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), i8* null], align 16
@.str.40 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"detect_types\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"isolation_level\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"check_same_thread\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"factory\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"cached_statements\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"s|diOiOip\00", align 1
@module_complete.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* null], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@module_enable_shared_cache.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null], align 16
@.str.51 = private unnamed_addr constant [10 x i8] c"do_enable\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"Changing the shared_cache flag failed\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.54 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyFloat_Type = external global %struct._typeobject, align 8
@PyByteArray_Type = external global %struct._typeobject, align 8
@module_register_converter.PyId_upper = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), %struct._object* null }, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"UO\00", align 1
@.str.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"PARSE_DECLTYPES\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"PARSE_COLNAMES\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"SQLITE_OK\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"SQLITE_DENY\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"SQLITE_IGNORE\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"SQLITE_CREATE_INDEX\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"SQLITE_CREATE_TABLE\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"SQLITE_CREATE_TEMP_INDEX\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"SQLITE_CREATE_TEMP_TABLE\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"SQLITE_CREATE_TEMP_TRIGGER\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"SQLITE_CREATE_TEMP_VIEW\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"SQLITE_CREATE_TRIGGER\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"SQLITE_CREATE_VIEW\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"SQLITE_DELETE\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"SQLITE_DROP_INDEX\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"SQLITE_DROP_TABLE\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"SQLITE_DROP_TEMP_INDEX\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"SQLITE_DROP_TEMP_TABLE\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"SQLITE_DROP_TEMP_TRIGGER\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"SQLITE_DROP_TEMP_VIEW\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"SQLITE_DROP_TRIGGER\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"SQLITE_DROP_VIEW\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"SQLITE_INSERT\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"SQLITE_PRAGMA\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"SQLITE_READ\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"SQLITE_SELECT\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"SQLITE_TRANSACTION\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"SQLITE_UPDATE\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"SQLITE_ATTACH\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"SQLITE_DETACH\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"SQLITE_ALTER_TABLE\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"SQLITE_REINDEX\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"SQLITE_ANALYZE\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"converters\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__sqlite3() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %tmp_obj = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_decref_tmp156 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_sqlite3module, i32 1013)
  store %struct._object* %call, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @pysqlite_row_setup_types()
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %call3 = call i32 @pysqlite_cursor_setup_types()
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %call6 = call i32 @pysqlite_connection_setup_types()
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %call9 = call i32 @pysqlite_cache_setup_types()
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %call12 = call i32 @pysqlite_statement_setup_types()
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %call15 = call i32 @pysqlite_prepare_protocol_setup_types()
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then, label %if.end.24

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp17 = icmp ne %struct._object* %2, null
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %do.body
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.19
  br label %if.end

if.else:                                          ; preds = %do.body.19
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.14
  %10 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load %struct._object*, %struct._object** %module, align 8
  %call25 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0))
  %12 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc26 = add i64 %12, 1
  store i64 %inc26, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0, i32 0), align 8
  %13 = load %struct._object*, %struct._object** %module, align 8
  %call27 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0))
  %14 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc28 = add i64 %14, 1
  store i64 %inc28, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0, i32 0), align 8
  %15 = load %struct._object*, %struct._object** %module, align 8
  %call29 = call i32 @PyModule_AddObject(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0))
  %16 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc30 = add i64 %16, 1
  store i64 %inc30, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0, i32 0), align 8
  %17 = load %struct._object*, %struct._object** %module, align 8
  %call31 = call i32 @PyModule_AddObject(%struct._object* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0))
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc32 = add i64 %18, 1
  store i64 %inc32, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0, i32 0), align 8
  %19 = load %struct._object*, %struct._object** %module, align 8
  %call33 = call i32 @PyModule_AddObject(%struct._object* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0))
  %20 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc34 = add i64 %20, 1
  store i64 %inc34, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0, i32 0), align 8
  %21 = load %struct._object*, %struct._object** %module, align 8
  %call35 = call i32 @PyModule_AddObject(%struct._object* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0))
  %22 = load %struct._object*, %struct._object** %module, align 8
  %call36 = call %struct._object* @PyModule_GetDict(%struct._object* %22)
  store %struct._object* %call36, %struct._object** %dict, align 8
  %tobool37 = icmp ne %struct._object* %call36, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.24
  br label %error

if.end.39:                                        ; preds = %if.end.24
  %23 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  %call40 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), %struct._object* %23, %struct._object* null)
  store %struct._object* %call40, %struct._object** @pysqlite_Error, align 8
  %tobool41 = icmp ne %struct._object* %call40, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  br label %error

if.end.43:                                        ; preds = %if.end.39
  %24 = load %struct._object*, %struct._object** %dict, align 8
  %25 = load %struct._object*, %struct._object** @pysqlite_Error, align 8
  %call44 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* %25)
  %26 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  %call45 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* %26, %struct._object* null)
  store %struct._object* %call45, %struct._object** @pysqlite_Warning, align 8
  %tobool46 = icmp ne %struct._object* %call45, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.end.43
  br label %error

if.end.48:                                        ; preds = %if.end.43
  %27 = load %struct._object*, %struct._object** %dict, align 8
  %28 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8
  %call49 = call i32 @PyDict_SetItemString(%struct._object* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* %28)
  %29 = load %struct._object*, %struct._object** @pysqlite_Error, align 8
  %call50 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), %struct._object* %29, %struct._object* null)
  store %struct._object* %call50, %struct._object** @pysqlite_InterfaceError, align 8
  %tobool51 = icmp ne %struct._object* %call50, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.48
  br label %error

if.end.53:                                        ; preds = %if.end.48
  %30 = load %struct._object*, %struct._object** %dict, align 8
  %31 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8
  %call54 = call i32 @PyDict_SetItemString(%struct._object* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._object* %31)
  %32 = load %struct._object*, %struct._object** @pysqlite_Error, align 8
  %call55 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), %struct._object* %32, %struct._object* null)
  store %struct._object* %call55, %struct._object** @pysqlite_DatabaseError, align 8
  %tobool56 = icmp ne %struct._object* %call55, null
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.53
  br label %error

if.end.58:                                        ; preds = %if.end.53
  %33 = load %struct._object*, %struct._object** %dict, align 8
  %34 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call59 = call i32 @PyDict_SetItemString(%struct._object* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._object* %34)
  %35 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call60 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), %struct._object* %35, %struct._object* null)
  store %struct._object* %call60, %struct._object** @pysqlite_InternalError, align 8
  %tobool61 = icmp ne %struct._object* %call60, null
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.end.58
  br label %error

if.end.63:                                        ; preds = %if.end.58
  %36 = load %struct._object*, %struct._object** %dict, align 8
  %37 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8
  %call64 = call i32 @PyDict_SetItemString(%struct._object* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct._object* %37)
  %38 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call65 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), %struct._object* %38, %struct._object* null)
  store %struct._object* %call65, %struct._object** @pysqlite_OperationalError, align 8
  %tobool66 = icmp ne %struct._object* %call65, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.end.63
  br label %error

if.end.68:                                        ; preds = %if.end.63
  %39 = load %struct._object*, %struct._object** %dict, align 8
  %40 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  %call69 = call i32 @PyDict_SetItemString(%struct._object* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct._object* %40)
  %41 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call70 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), %struct._object* %41, %struct._object* null)
  store %struct._object* %call70, %struct._object** @pysqlite_ProgrammingError, align 8
  %tobool71 = icmp ne %struct._object* %call70, null
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.68
  br label %error

if.end.73:                                        ; preds = %if.end.68
  %42 = load %struct._object*, %struct._object** %dict, align 8
  %43 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  %call74 = call i32 @PyDict_SetItemString(%struct._object* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct._object* %43)
  %44 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call75 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), %struct._object* %44, %struct._object* null)
  store %struct._object* %call75, %struct._object** @pysqlite_IntegrityError, align 8
  %tobool76 = icmp ne %struct._object* %call75, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.73
  br label %error

if.end.78:                                        ; preds = %if.end.73
  %45 = load %struct._object*, %struct._object** %dict, align 8
  %46 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8
  %call79 = call i32 @PyDict_SetItemString(%struct._object* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._object* %46)
  %47 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call80 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), %struct._object* %47, %struct._object* null)
  store %struct._object* %call80, %struct._object** @pysqlite_DataError, align 8
  %tobool81 = icmp ne %struct._object* %call80, null
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.78
  br label %error

if.end.83:                                        ; preds = %if.end.78
  %48 = load %struct._object*, %struct._object** %dict, align 8
  %49 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8
  %call84 = call i32 @PyDict_SetItemString(%struct._object* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* %49)
  %50 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8
  %call85 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), %struct._object* %50, %struct._object* null)
  store %struct._object* %call85, %struct._object** @pysqlite_NotSupportedError, align 8
  %tobool86 = icmp ne %struct._object* %call85, null
  br i1 %tobool86, label %if.end.88, label %if.then.87

if.then.87:                                       ; preds = %if.end.83
  br label %error

if.end.88:                                        ; preds = %if.end.83
  %51 = load %struct._object*, %struct._object** %dict, align 8
  %52 = load %struct._object*, %struct._object** @pysqlite_NotSupportedError, align 8
  %call89 = call i32 @PyDict_SetItemString(%struct._object* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), %struct._object* %52)
  %53 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc90 = add i64 %53, 1
  store i64 %inc90, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %54 = load %struct._object*, %struct._object** %dict, align 8
  %call91 = call i32 @PyDict_SetItemString(%struct._object* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.88
  %55 = load i32, i32* %i, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom
  %constant_name = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx, i32 0, i32 0
  %56 = load i8*, i8** %constant_name, align 8
  %cmp92 = icmp ne i8* %56, null
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %57 to i64
  %arrayidx94 = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom93
  %constant_value = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx94, i32 0, i32 1
  %58 = load i32, i32* %constant_value, align 4
  %conv = sext i32 %58 to i64
  %call95 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call95, %struct._object** %tmp_obj, align 8
  %59 = load %struct._object*, %struct._object** %tmp_obj, align 8
  %tobool96 = icmp ne %struct._object* %59, null
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %for.body
  br label %error

if.end.98:                                        ; preds = %for.body
  %60 = load %struct._object*, %struct._object** %dict, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %61 to i64
  %arrayidx100 = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom99
  %constant_name101 = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx100, i32 0, i32 0
  %62 = load i8*, i8** %constant_name101, align 8
  %63 = load %struct._object*, %struct._object** %tmp_obj, align 8
  %call102 = call i32 @PyDict_SetItemString(%struct._object* %60, i8* %62, %struct._object* %63)
  br label %do.body.103

do.body.103:                                      ; preds = %if.end.98
  %64 = load %struct._object*, %struct._object** %tmp_obj, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp104, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %66, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.103
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %69(%struct._object* %70)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %for.inc

for.inc:                                          ; preds = %do.end.114
  %71 = load i32, i32* %i, align 4
  %inc115 = add i32 %71, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call116 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* %call116, %struct._object** %tmp_obj, align 8
  %tobool117 = icmp ne %struct._object* %call116, null
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %for.end
  br label %error

if.end.119:                                       ; preds = %for.end
  %72 = load %struct._object*, %struct._object** %dict, align 8
  %73 = load %struct._object*, %struct._object** %tmp_obj, align 8
  %call120 = call i32 @PyDict_SetItemString(%struct._object* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._object* %73)
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.119
  %74 = load %struct._object*, %struct._object** %tmp_obj, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp122, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %76, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.body.121
  br label %if.end.131

if.else.128:                                      ; preds = %do.body.121
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %79(%struct._object* %80)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.127
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  %call133 = call i8* @sqlite3_libversion()
  %call134 = call %struct._object* @PyUnicode_FromString(i8* %call133)
  store %struct._object* %call134, %struct._object** %tmp_obj, align 8
  %tobool135 = icmp ne %struct._object* %call134, null
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %do.end.132
  br label %error

if.end.137:                                       ; preds = %do.end.132
  %81 = load %struct._object*, %struct._object** %dict, align 8
  %82 = load %struct._object*, %struct._object** %tmp_obj, align 8
  %call138 = call i32 @PyDict_SetItemString(%struct._object* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), %struct._object* %82)
  br label %do.body.139

do.body.139:                                      ; preds = %if.end.137
  %83 = load %struct._object*, %struct._object** %tmp_obj, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp140, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %85, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.139
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.139
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %88(%struct._object* %89)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  %90 = load %struct._object*, %struct._object** %dict, align 8
  %call151 = call i32 @pysqlite_microprotocols_init(%struct._object* %90)
  %91 = load %struct._object*, %struct._object** %dict, align 8
  call void @converters_init(%struct._object* %91)
  store i32 0, i32* @_enable_callback_tracebacks, align 4
  store i32 0, i32* @pysqlite_BaseTypeAdapted, align 4
  call void @PyEval_InitThreads()
  br label %error

error:                                            ; preds = %do.end.150, %if.then.136, %if.then.118, %if.then.97, %if.then.87, %if.then.82, %if.then.77, %if.then.72, %if.then.67, %if.then.62, %if.then.57, %if.then.52, %if.then.47, %if.then.42, %if.then.38
  %call152 = call %struct._object* @PyErr_Occurred()
  %tobool153 = icmp ne %struct._object* %call152, null
  br i1 %tobool153, label %if.then.154, label %if.end.167

if.then.154:                                      ; preds = %error
  %92 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  call void @PyErr_SetString(%struct._object* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0))
  br label %do.body.155

do.body.155:                                      ; preds = %if.then.154
  %93 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp156, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt157, align 8
  %dec158 = add i64 %95, -1
  store i64 %dec158, i64* %ob_refcnt157, align 8
  %cmp159 = icmp ne i64 %dec158, 0
  br i1 %cmp159, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %do.body.155
  br label %if.end.165

if.else.162:                                      ; preds = %do.body.155
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8
  %tp_dealloc164 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc164, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8
  call void %98(%struct._object* %99)
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.then.161
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  store %struct._object* null, %struct._object** %module, align 8
  br label %if.end.167

if.end.167:                                       ; preds = %do.end.166, %error
  %100 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %100, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.167, %do.end.23
  %101 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %101
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @pysqlite_row_setup_types() #1

declare i32 @pysqlite_cursor_setup_types() #1

declare i32 @pysqlite_connection_setup_types() #1

declare i32 @pysqlite_cache_setup_types() #1

declare i32 @pysqlite_statement_setup_types() #1

declare i32 @pysqlite_prepare_protocol_setup_types() #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i8* @sqlite3_libversion() #1

declare i32 @pysqlite_microprotocols_init(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @converters_init(%struct._object* %dict) #0 {
entry:
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** @converters, align 8
  %0 = load %struct._object*, %struct._object** @converters, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %dict.addr, align 8
  %2 = load %struct._object*, %struct._object** @converters, align 8
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %struct._object* %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @PyEval_InitThreads() #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_connect(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
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
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 0, i32* %detect_types, align 4
  store %struct._object* null, %struct._object** %factory, align 8
  store i32 1, i32* %check_same_thread, align 4
  store i32 0, i32* %uri, align 4
  store double 5.000000e+00, double* %timeout, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @module_connect.kwlist, i32 0, i32 0), i8** %database, double* %timeout, i32* %detect_types, %struct._object** %isolation_level, i32* %check_same_thread, %struct._object** %factory, i32* %cached_statements, i32* %uri)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %factory, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0), %struct._object** %factory, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct._object*, %struct._object** %factory, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call3 = call %struct._object* @PyObject_Call(%struct._object* %3, %struct._object* %4, %struct._object* %5)
  store %struct._object* %call3, %struct._object** %result, align 8
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_complete(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %statement = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_complete.kwlist, i32 0, i32 0), i8** %statement)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %statement, align 8
  %call1 = call i32 @sqlite3_complete(i8* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %3 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_enable_shared_cache(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %do_enable = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_enable_shared_cache.kwlist, i32 0, i32 0), i32* %do_enable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %do_enable, align 4
  %call1 = call i32 @sqlite3_enable_shared_cache(i32 %2)
  store i32 %call1, i32* %rc, align 4
  %3 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_register_adapter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %type = alloca %struct._typeobject*, align 8
  %caster = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), %struct._typeobject** %type, %struct._object** %caster)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %cmp1 = icmp eq %struct._typeobject* %2, @PyFloat_Type
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %cmp3 = icmp eq %struct._typeobject* %3, @PyUnicode_Type
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %4 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %cmp5 = icmp eq %struct._typeobject* %4, @PyByteArray_Type
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %if.end
  store i32 1, i32* @pysqlite_BaseTypeAdapted, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type, align 8
  %6 = load %struct._object*, %struct._object** %caster, align 8
  %call8 = call i32 @pysqlite_microprotocols_add(%struct._typeobject* %5, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* %6)
  store i32 %call8, i32* %rc, align 4
  %7 = load i32, i32* %rc, align 4
  %cmp9 = icmp eq i32 %7, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_register_converter(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %orig_name = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %callable = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), %struct._object** %orig_name, %struct._object** %callable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %orig_name, align 8
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %1, %struct._Py_Identifier* @module_register_converter.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.57, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %name, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %tobool3 = icmp ne %struct._object* %2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %error

if.end.5:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @converters, align 8
  %4 = load %struct._object*, %struct._object** %name, align 8
  %5 = load %struct._object*, %struct._object** %callable, align 8
  %call6 = call i32 @PyDict_SetItem(%struct._object* %3, %struct._object* %4, %struct._object* %5)
  %cmp = icmp ne i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %error

if.end.8:                                         ; preds = %if.end.5
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8
  br label %error

error:                                            ; preds = %if.end.8, %if.then.7, %if.then.4
  br label %do.body

do.body:                                          ; preds = %error
  %7 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14

if.else:                                          ; preds = %do.body.11
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %16 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.16, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

declare %struct._object* @pysqlite_adapt(%struct.pysqlite_Cursor*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @enable_callback_tracebacks(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32* @_enable_callback_tracebacks)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @sqlite3_complete(i8*) #1

declare i32 @sqlite3_enable_shared_cache(i32) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @pysqlite_microprotocols_add(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
