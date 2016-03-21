; ModuleID = 'irs-onlybc/module.bc'
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp160 = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %module to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !533
  call void @llvm.dbg.declare(metadata %struct._object** %module, metadata !356, metadata !534), !dbg !535
  %1 = bitcast %struct._object** %dict to i8*, !dbg !533
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !533
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !357, metadata !534), !dbg !536
  %2 = bitcast %struct._object** %tmp_obj to i8*, !dbg !537
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !537
  call void @llvm.dbg.declare(metadata %struct._object** %tmp_obj, metadata !358, metadata !534), !dbg !538
  %3 = bitcast i32* %i to i8*, !dbg !539
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !539
  call void @llvm.dbg.declare(metadata i32* %i, metadata !359, metadata !534), !dbg !540
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_sqlite3module, i32 1013), !dbg !541
  store %struct._object* %call, %struct._object** %module, align 8, !dbg !542, !tbaa !543
  %4 = load %struct._object*, %struct._object** %module, align 8, !dbg !547, !tbaa !543
  %tobool = icmp ne %struct._object* %4, null, !dbg !547
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !548

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @pysqlite_row_setup_types(), !dbg !549
  %cmp = icmp slt i32 %call1, 0, !dbg !550
  br i1 %cmp, label %if.then, label %lor.lhs.false.2, !dbg !551

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %call3 = call i32 @pysqlite_cursor_setup_types(), !dbg !552
  %cmp4 = icmp slt i32 %call3, 0, !dbg !553
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5, !dbg !554

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %call6 = call i32 @pysqlite_connection_setup_types(), !dbg !555
  %cmp7 = icmp slt i32 %call6, 0, !dbg !556
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8, !dbg !557

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %call9 = call i32 @pysqlite_cache_setup_types(), !dbg !558
  %cmp10 = icmp slt i32 %call9, 0, !dbg !559
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11, !dbg !560

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %call12 = call i32 @pysqlite_statement_setup_types(), !dbg !561
  %cmp13 = icmp slt i32 %call12, 0, !dbg !562
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14, !dbg !563

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %call15 = call i32 @pysqlite_prepare_protocol_setup_types(), !dbg !564
  %cmp16 = icmp slt i32 %call15, 0, !dbg !565
  br i1 %cmp16, label %if.then, label %if.end.25, !dbg !566

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %do.body, !dbg !567

do.body:                                          ; preds = %if.then
  %5 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !568
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !568
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !360, metadata !534), !dbg !570
  %6 = load %struct._object*, %struct._object** %module, align 8, !dbg !571, !tbaa !543
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8, !dbg !570, !tbaa !543
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !572, !tbaa !543
  %cmp17 = icmp ne %struct._object* %7, null, !dbg !573
  br i1 %cmp17, label %if.then.18, label %if.end.22, !dbg !574

if.then.18:                                       ; preds = %do.body
  br label %do.body.19, !dbg !575

do.body.19:                                       ; preds = %if.then.18
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !577
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !577
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !364, metadata !534), !dbg !579
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !580, !tbaa !543
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !579, !tbaa !543
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !581, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !583
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !584, !tbaa !585
  %dec = add i64 %11, -1, !dbg !584
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !584, !tbaa !585
  %cmp20 = icmp ne i64 %dec, 0, !dbg !588
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !589

if.then.21:                                       ; preds = %do.body.19
  br label %if.end, !dbg !590

if.else:                                          ; preds = %do.body.19
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !592, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !594
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !594, !tbaa !595
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !596
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !596, !tbaa !597
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !601, !tbaa !543
  call void %14(%struct._object* %15), !dbg !602
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.21
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !603
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !603
  br label %do.cond, !dbg !605

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !606

do.end:                                           ; preds = %do.cond
  br label %if.end.22, !dbg !608

if.end.22:                                        ; preds = %do.end, %do.body
  %17 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !610
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !610
  br label %do.cond.23, !dbg !613

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !614

do.end.24:                                        ; preds = %do.cond.23
  store %struct._object* null, %struct._object** %retval, !dbg !616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !616

if.end.25:                                        ; preds = %lor.lhs.false.14
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !617, !tbaa !585
  %inc = add i64 %18, 1, !dbg !617
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !617, !tbaa !585
  %19 = load %struct._object*, %struct._object** %module, align 8, !dbg !618, !tbaa !543
  %call26 = call i32 @PyModule_AddObject(%struct._object* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0)), !dbg !619
  %20 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !620, !tbaa !585
  %inc27 = add i64 %20, 1, !dbg !620
  store i64 %inc27, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !620, !tbaa !585
  %21 = load %struct._object*, %struct._object** %module, align 8, !dbg !621, !tbaa !543
  %call28 = call i32 @PyModule_AddObject(%struct._object* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CursorType, i32 0, i32 0, i32 0)), !dbg !622
  %22 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !623, !tbaa !585
  %inc29 = add i64 %22, 1, !dbg !623
  store i64 %inc29, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !623, !tbaa !585
  %23 = load %struct._object*, %struct._object** %module, align 8, !dbg !624, !tbaa !543
  %call30 = call i32 @PyModule_AddObject(%struct._object* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0)), !dbg !625
  %24 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !626, !tbaa !585
  %inc31 = add i64 %24, 1, !dbg !626
  store i64 %inc31, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_StatementType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !626, !tbaa !585
  %25 = load %struct._object*, %struct._object** %module, align 8, !dbg !627, !tbaa !543
  %call32 = call i32 @PyModule_AddObject(%struct._object* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 0, i32 0)), !dbg !628
  %26 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !629, !tbaa !585
  %inc33 = add i64 %26, 1, !dbg !629
  store i64 %inc33, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !629, !tbaa !585
  %27 = load %struct._object*, %struct._object** %module, align 8, !dbg !630, !tbaa !543
  %call34 = call i32 @PyModule_AddObject(%struct._object* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0)), !dbg !631
  %28 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !632, !tbaa !585
  %inc35 = add i64 %28, 1, !dbg !632
  store i64 %inc35, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !632, !tbaa !585
  %29 = load %struct._object*, %struct._object** %module, align 8, !dbg !633, !tbaa !543
  %call36 = call i32 @PyModule_AddObject(%struct._object* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_RowType, i32 0, i32 0, i32 0)), !dbg !634
  %30 = load %struct._object*, %struct._object** %module, align 8, !dbg !635, !tbaa !543
  %call37 = call %struct._object* @PyModule_GetDict(%struct._object* %30), !dbg !637
  store %struct._object* %call37, %struct._object** %dict, align 8, !dbg !638, !tbaa !543
  %tobool38 = icmp ne %struct._object* %call37, null, !dbg !638
  br i1 %tobool38, label %if.end.40, label %if.then.39, !dbg !639

if.then.39:                                       ; preds = %if.end.25
  br label %error, !dbg !640

if.end.40:                                        ; preds = %if.end.25
  %31 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !642, !tbaa !543
  %call41 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), %struct._object* %31, %struct._object* null), !dbg !644
  store %struct._object* %call41, %struct._object** @pysqlite_Error, align 8, !dbg !645, !tbaa !543
  %tobool42 = icmp ne %struct._object* %call41, null, !dbg !645
  br i1 %tobool42, label %if.end.44, label %if.then.43, !dbg !646

if.then.43:                                       ; preds = %if.end.40
  br label %error, !dbg !647

if.end.44:                                        ; preds = %if.end.40
  %32 = load %struct._object*, %struct._object** %dict, align 8, !dbg !649, !tbaa !543
  %33 = load %struct._object*, %struct._object** @pysqlite_Error, align 8, !dbg !650, !tbaa !543
  %call45 = call i32 @PyDict_SetItemString(%struct._object* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), %struct._object* %33), !dbg !651
  %34 = load %struct._object*, %struct._object** @PyExc_Exception, align 8, !dbg !652, !tbaa !543
  %call46 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._object* %34, %struct._object* null), !dbg !654
  store %struct._object* %call46, %struct._object** @pysqlite_Warning, align 8, !dbg !655, !tbaa !543
  %tobool47 = icmp ne %struct._object* %call46, null, !dbg !655
  br i1 %tobool47, label %if.end.49, label %if.then.48, !dbg !656

if.then.48:                                       ; preds = %if.end.44
  br label %error, !dbg !657

if.end.49:                                        ; preds = %if.end.44
  %35 = load %struct._object*, %struct._object** %dict, align 8, !dbg !659, !tbaa !543
  %36 = load %struct._object*, %struct._object** @pysqlite_Warning, align 8, !dbg !660, !tbaa !543
  %call50 = call i32 @PyDict_SetItemString(%struct._object* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct._object* %36), !dbg !661
  %37 = load %struct._object*, %struct._object** @pysqlite_Error, align 8, !dbg !662, !tbaa !543
  %call51 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), %struct._object* %37, %struct._object* null), !dbg !664
  store %struct._object* %call51, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !665, !tbaa !543
  %tobool52 = icmp ne %struct._object* %call51, null, !dbg !665
  br i1 %tobool52, label %if.end.54, label %if.then.53, !dbg !666

if.then.53:                                       ; preds = %if.end.49
  br label %error, !dbg !667

if.end.54:                                        ; preds = %if.end.49
  %38 = load %struct._object*, %struct._object** %dict, align 8, !dbg !669, !tbaa !543
  %39 = load %struct._object*, %struct._object** @pysqlite_InterfaceError, align 8, !dbg !670, !tbaa !543
  %call55 = call i32 @PyDict_SetItemString(%struct._object* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._object* %39), !dbg !671
  %40 = load %struct._object*, %struct._object** @pysqlite_Error, align 8, !dbg !672, !tbaa !543
  %call56 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), %struct._object* %40, %struct._object* null), !dbg !674
  store %struct._object* %call56, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !675, !tbaa !543
  %tobool57 = icmp ne %struct._object* %call56, null, !dbg !675
  br i1 %tobool57, label %if.end.59, label %if.then.58, !dbg !676

if.then.58:                                       ; preds = %if.end.54
  br label %error, !dbg !677

if.end.59:                                        ; preds = %if.end.54
  %41 = load %struct._object*, %struct._object** %dict, align 8, !dbg !679, !tbaa !543
  %42 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !680, !tbaa !543
  %call60 = call i32 @PyDict_SetItemString(%struct._object* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._object* %42), !dbg !681
  %43 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !682, !tbaa !543
  %call61 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), %struct._object* %43, %struct._object* null), !dbg !684
  store %struct._object* %call61, %struct._object** @pysqlite_InternalError, align 8, !dbg !685, !tbaa !543
  %tobool62 = icmp ne %struct._object* %call61, null, !dbg !685
  br i1 %tobool62, label %if.end.64, label %if.then.63, !dbg !686

if.then.63:                                       ; preds = %if.end.59
  br label %error, !dbg !687

if.end.64:                                        ; preds = %if.end.59
  %44 = load %struct._object*, %struct._object** %dict, align 8, !dbg !689, !tbaa !543
  %45 = load %struct._object*, %struct._object** @pysqlite_InternalError, align 8, !dbg !690, !tbaa !543
  %call65 = call i32 @PyDict_SetItemString(%struct._object* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), %struct._object* %45), !dbg !691
  %46 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !692, !tbaa !543
  %call66 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), %struct._object* %46, %struct._object* null), !dbg !694
  store %struct._object* %call66, %struct._object** @pysqlite_OperationalError, align 8, !dbg !695, !tbaa !543
  %tobool67 = icmp ne %struct._object* %call66, null, !dbg !695
  br i1 %tobool67, label %if.end.69, label %if.then.68, !dbg !696

if.then.68:                                       ; preds = %if.end.64
  br label %error, !dbg !697

if.end.69:                                        ; preds = %if.end.64
  %47 = load %struct._object*, %struct._object** %dict, align 8, !dbg !699, !tbaa !543
  %48 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !700, !tbaa !543
  %call70 = call i32 @PyDict_SetItemString(%struct._object* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct._object* %48), !dbg !701
  %49 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !702, !tbaa !543
  %call71 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0), %struct._object* %49, %struct._object* null), !dbg !704
  store %struct._object* %call71, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !705, !tbaa !543
  %tobool72 = icmp ne %struct._object* %call71, null, !dbg !705
  br i1 %tobool72, label %if.end.74, label %if.then.73, !dbg !706

if.then.73:                                       ; preds = %if.end.69
  br label %error, !dbg !707

if.end.74:                                        ; preds = %if.end.69
  %50 = load %struct._object*, %struct._object** %dict, align 8, !dbg !709, !tbaa !543
  %51 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8, !dbg !710, !tbaa !543
  %call75 = call i32 @PyDict_SetItemString(%struct._object* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct._object* %51), !dbg !711
  %52 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !712, !tbaa !543
  %call76 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), %struct._object* %52, %struct._object* null), !dbg !714
  store %struct._object* %call76, %struct._object** @pysqlite_IntegrityError, align 8, !dbg !715, !tbaa !543
  %tobool77 = icmp ne %struct._object* %call76, null, !dbg !715
  br i1 %tobool77, label %if.end.79, label %if.then.78, !dbg !716

if.then.78:                                       ; preds = %if.end.74
  br label %error, !dbg !717

if.end.79:                                        ; preds = %if.end.74
  %53 = load %struct._object*, %struct._object** %dict, align 8, !dbg !719, !tbaa !543
  %54 = load %struct._object*, %struct._object** @pysqlite_IntegrityError, align 8, !dbg !720, !tbaa !543
  %call80 = call i32 @PyDict_SetItemString(%struct._object* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._object* %54), !dbg !721
  %55 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !722, !tbaa !543
  %call81 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), %struct._object* %55, %struct._object* null), !dbg !724
  store %struct._object* %call81, %struct._object** @pysqlite_DataError, align 8, !dbg !725, !tbaa !543
  %tobool82 = icmp ne %struct._object* %call81, null, !dbg !725
  br i1 %tobool82, label %if.end.84, label %if.then.83, !dbg !726

if.then.83:                                       ; preds = %if.end.79
  br label %error, !dbg !727

if.end.84:                                        ; preds = %if.end.79
  %56 = load %struct._object*, %struct._object** %dict, align 8, !dbg !729, !tbaa !543
  %57 = load %struct._object*, %struct._object** @pysqlite_DataError, align 8, !dbg !730, !tbaa !543
  %call85 = call i32 @PyDict_SetItemString(%struct._object* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* %57), !dbg !731
  %58 = load %struct._object*, %struct._object** @pysqlite_DatabaseError, align 8, !dbg !732, !tbaa !543
  %call86 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), %struct._object* %58, %struct._object* null), !dbg !734
  store %struct._object* %call86, %struct._object** @pysqlite_NotSupportedError, align 8, !dbg !735, !tbaa !543
  %tobool87 = icmp ne %struct._object* %call86, null, !dbg !735
  br i1 %tobool87, label %if.end.89, label %if.then.88, !dbg !736

if.then.88:                                       ; preds = %if.end.84
  br label %error, !dbg !737

if.end.89:                                        ; preds = %if.end.84
  %59 = load %struct._object*, %struct._object** %dict, align 8, !dbg !739, !tbaa !543
  %60 = load %struct._object*, %struct._object** @pysqlite_NotSupportedError, align 8, !dbg !740, !tbaa !543
  %call90 = call i32 @PyDict_SetItemString(%struct._object* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), %struct._object* %60), !dbg !741
  %61 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !742, !tbaa !585
  %inc91 = add i64 %61, 1, !dbg !742
  store i64 %inc91, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !742, !tbaa !585
  %62 = load %struct._object*, %struct._object** %dict, align 8, !dbg !743, !tbaa !543
  %call92 = call i32 @PyDict_SetItemString(%struct._object* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyUnicode_Type, i32 0, i32 0, i32 0)), !dbg !744
  store i32 0, i32* %i, align 4, !dbg !745, !tbaa !746
  br label %for.cond, !dbg !747

for.cond:                                         ; preds = %for.inc, %if.end.89
  %63 = load i32, i32* %i, align 4, !dbg !748, !tbaa !746
  %idxprom = sext i32 %63 to i64, !dbg !751
  %arrayidx = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom, !dbg !751
  %constant_name = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx, i32 0, i32 0, !dbg !752
  %64 = load i8*, i8** %constant_name, align 8, !dbg !752, !tbaa !753
  %cmp93 = icmp ne i8* %64, null, !dbg !755
  br i1 %cmp93, label %for.body, label %for.end, !dbg !756

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %i, align 4, !dbg !757, !tbaa !746
  %idxprom94 = sext i32 %65 to i64, !dbg !758
  %arrayidx95 = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom94, !dbg !758
  %constant_value = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx95, i32 0, i32 1, !dbg !759
  %66 = load i32, i32* %constant_value, align 4, !dbg !759, !tbaa !760
  %conv = sext i32 %66 to i64, !dbg !758
  %call96 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !761
  store %struct._object* %call96, %struct._object** %tmp_obj, align 8, !dbg !762, !tbaa !543
  %67 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !763, !tbaa !543
  %tobool97 = icmp ne %struct._object* %67, null, !dbg !763
  br i1 %tobool97, label %if.end.99, label %if.then.98, !dbg !765

if.then.98:                                       ; preds = %for.body
  br label %error, !dbg !766

if.end.99:                                        ; preds = %for.body
  %68 = load %struct._object*, %struct._object** %dict, align 8, !dbg !768, !tbaa !543
  %69 = load i32, i32* %i, align 4, !dbg !769, !tbaa !746
  %idxprom100 = sext i32 %69 to i64, !dbg !770
  %arrayidx101 = getelementptr [34 x %struct._IntConstantPair], [34 x %struct._IntConstantPair]* @_int_constants, i32 0, i64 %idxprom100, !dbg !770
  %constant_name102 = getelementptr inbounds %struct._IntConstantPair, %struct._IntConstantPair* %arrayidx101, i32 0, i32 0, !dbg !771
  %70 = load i8*, i8** %constant_name102, align 8, !dbg !771, !tbaa !753
  %71 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !772, !tbaa !543
  %call103 = call i32 @PyDict_SetItemString(%struct._object* %68, i8* %70, %struct._object* %71), !dbg !773
  br label %do.body.104, !dbg !774

do.body.104:                                      ; preds = %if.end.99
  %72 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 8, i8* %72) #1, !dbg !775
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp105, metadata !367, metadata !534), !dbg !777
  %73 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !778, !tbaa !543
  store %struct._object* %73, %struct._object** %_py_decref_tmp105, align 8, !dbg !777, !tbaa !543
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !779, !tbaa !543
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0, !dbg !781
  %75 = load i64, i64* %ob_refcnt106, align 8, !dbg !782, !tbaa !585
  %dec107 = add i64 %75, -1, !dbg !782
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !782, !tbaa !585
  %cmp108 = icmp ne i64 %dec107, 0, !dbg !783
  br i1 %cmp108, label %if.then.110, label %if.else.111, !dbg !784

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114, !dbg !785

if.else.111:                                      ; preds = %do.body.104
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !787, !tbaa !543
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1, !dbg !789
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8, !dbg !789, !tbaa !595
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4, !dbg !790
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8, !dbg !790, !tbaa !597
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !791, !tbaa !543
  call void %78(%struct._object* %79), !dbg !792
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  %80 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !793
  call void @llvm.lifetime.end(i64 8, i8* %80) #1, !dbg !793
  br label %do.cond.115, !dbg !795

do.cond.115:                                      ; preds = %if.end.114
  br label %do.end.116, !dbg !796

do.end.116:                                       ; preds = %do.cond.115
  br label %for.inc, !dbg !798

for.inc:                                          ; preds = %do.end.116
  %81 = load i32, i32* %i, align 4, !dbg !799, !tbaa !746
  %inc117 = add i32 %81, 1, !dbg !799
  store i32 %inc117, i32* %i, align 4, !dbg !799, !tbaa !746
  br label %for.cond, !dbg !800

for.end:                                          ; preds = %for.cond
  %call118 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)), !dbg !801
  store %struct._object* %call118, %struct._object** %tmp_obj, align 8, !dbg !803, !tbaa !543
  %tobool119 = icmp ne %struct._object* %call118, null, !dbg !803
  br i1 %tobool119, label %if.end.121, label %if.then.120, !dbg !804

if.then.120:                                      ; preds = %for.end
  br label %error, !dbg !805

if.end.121:                                       ; preds = %for.end
  %82 = load %struct._object*, %struct._object** %dict, align 8, !dbg !807, !tbaa !543
  %83 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !808, !tbaa !543
  %call122 = call i32 @PyDict_SetItemString(%struct._object* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._object* %83), !dbg !809
  br label %do.body.123, !dbg !810

do.body.123:                                      ; preds = %if.end.121
  %84 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %84) #1, !dbg !811
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp124, metadata !372, metadata !534), !dbg !813
  %85 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !814, !tbaa !543
  store %struct._object* %85, %struct._object** %_py_decref_tmp124, align 8, !dbg !813, !tbaa !543
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !815, !tbaa !543
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !817
  %87 = load i64, i64* %ob_refcnt125, align 8, !dbg !818, !tbaa !585
  %dec126 = add i64 %87, -1, !dbg !818
  store i64 %dec126, i64* %ob_refcnt125, align 8, !dbg !818, !tbaa !585
  %cmp127 = icmp ne i64 %dec126, 0, !dbg !819
  br i1 %cmp127, label %if.then.129, label %if.else.130, !dbg !820

if.then.129:                                      ; preds = %do.body.123
  br label %if.end.133, !dbg !821

if.else.130:                                      ; preds = %do.body.123
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !823, !tbaa !543
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !825
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8, !dbg !825, !tbaa !595
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !826
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8, !dbg !826, !tbaa !597
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp124, align 8, !dbg !827, !tbaa !543
  call void %90(%struct._object* %91), !dbg !828
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  %92 = bitcast %struct._object** %_py_decref_tmp124 to i8*, !dbg !829
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !829
  br label %do.cond.134, !dbg !831

do.cond.134:                                      ; preds = %if.end.133
  br label %do.end.135, !dbg !832

do.end.135:                                       ; preds = %do.cond.134
  %call136 = call i8* @sqlite3_libversion(), !dbg !834
  %call137 = call %struct._object* @PyUnicode_FromString(i8* %call136), !dbg !836
  store %struct._object* %call137, %struct._object** %tmp_obj, align 8, !dbg !837, !tbaa !543
  %tobool138 = icmp ne %struct._object* %call137, null, !dbg !837
  br i1 %tobool138, label %if.end.140, label %if.then.139, !dbg !838

if.then.139:                                      ; preds = %do.end.135
  br label %error, !dbg !839

if.end.140:                                       ; preds = %do.end.135
  %93 = load %struct._object*, %struct._object** %dict, align 8, !dbg !841, !tbaa !543
  %94 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !842, !tbaa !543
  %call141 = call i32 @PyDict_SetItemString(%struct._object* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), %struct._object* %94), !dbg !843
  br label %do.body.142, !dbg !844

do.body.142:                                      ; preds = %if.end.140
  %95 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !845
  call void @llvm.lifetime.start(i64 8, i8* %95) #1, !dbg !845
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp143, metadata !374, metadata !534), !dbg !847
  %96 = load %struct._object*, %struct._object** %tmp_obj, align 8, !dbg !848, !tbaa !543
  store %struct._object* %96, %struct._object** %_py_decref_tmp143, align 8, !dbg !847, !tbaa !543
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !849, !tbaa !543
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0, !dbg !851
  %98 = load i64, i64* %ob_refcnt144, align 8, !dbg !852, !tbaa !585
  %dec145 = add i64 %98, -1, !dbg !852
  store i64 %dec145, i64* %ob_refcnt144, align 8, !dbg !852, !tbaa !585
  %cmp146 = icmp ne i64 %dec145, 0, !dbg !853
  br i1 %cmp146, label %if.then.148, label %if.else.149, !dbg !854

if.then.148:                                      ; preds = %do.body.142
  br label %if.end.152, !dbg !855

if.else.149:                                      ; preds = %do.body.142
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !857, !tbaa !543
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1, !dbg !859
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8, !dbg !859, !tbaa !595
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4, !dbg !860
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8, !dbg !860, !tbaa !597
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !861, !tbaa !543
  call void %101(%struct._object* %102), !dbg !862
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  %103 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !863
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !863
  br label %do.cond.153, !dbg !864

do.cond.153:                                      ; preds = %if.end.152
  br label %do.end.154, !dbg !865

do.end.154:                                       ; preds = %do.cond.153
  %104 = load %struct._object*, %struct._object** %dict, align 8, !dbg !867, !tbaa !543
  %call155 = call i32 @pysqlite_microprotocols_init(%struct._object* %104), !dbg !868
  %105 = load %struct._object*, %struct._object** %dict, align 8, !dbg !869, !tbaa !543
  call void @converters_init(%struct._object* %105), !dbg !870
  store i32 0, i32* @_enable_callback_tracebacks, align 4, !dbg !871, !tbaa !746
  store i32 0, i32* @pysqlite_BaseTypeAdapted, align 4, !dbg !872, !tbaa !746
  call void @PyEval_InitThreads(), !dbg !873
  br label %error, !dbg !873

error:                                            ; preds = %do.end.154, %if.then.139, %if.then.120, %if.then.98, %if.then.88, %if.then.83, %if.then.78, %if.then.73, %if.then.68, %if.then.63, %if.then.58, %if.then.53, %if.then.48, %if.then.43, %if.then.39
  %call156 = call %struct._object* @PyErr_Occurred(), !dbg !874
  %tobool157 = icmp ne %struct._object* %call156, null, !dbg !874
  br i1 %tobool157, label %if.then.158, label %if.end.172, !dbg !875

if.then.158:                                      ; preds = %error
  %106 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !876, !tbaa !543
  call void @PyErr_SetString(%struct._object* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0)), !dbg !877
  br label %do.body.159, !dbg !878

do.body.159:                                      ; preds = %if.then.158
  %107 = bitcast %struct._object** %_py_decref_tmp160 to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 8, i8* %107) #1, !dbg !879
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp160, metadata !376, metadata !534), !dbg !881
  %108 = load %struct._object*, %struct._object** %module, align 8, !dbg !882, !tbaa !543
  store %struct._object* %108, %struct._object** %_py_decref_tmp160, align 8, !dbg !881, !tbaa !543
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8, !dbg !883, !tbaa !543
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0, !dbg !885
  %110 = load i64, i64* %ob_refcnt161, align 8, !dbg !886, !tbaa !585
  %dec162 = add i64 %110, -1, !dbg !886
  store i64 %dec162, i64* %ob_refcnt161, align 8, !dbg !886, !tbaa !585
  %cmp163 = icmp ne i64 %dec162, 0, !dbg !887
  br i1 %cmp163, label %if.then.165, label %if.else.166, !dbg !888

if.then.165:                                      ; preds = %do.body.159
  br label %if.end.169, !dbg !889

if.else.166:                                      ; preds = %do.body.159
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8, !dbg !891, !tbaa !543
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1, !dbg !893
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8, !dbg !893, !tbaa !595
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4, !dbg !894
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8, !dbg !894, !tbaa !597
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8, !dbg !895, !tbaa !543
  call void %113(%struct._object* %114), !dbg !896
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  %115 = bitcast %struct._object** %_py_decref_tmp160 to i8*, !dbg !897
  call void @llvm.lifetime.end(i64 8, i8* %115) #1, !dbg !897
  br label %do.cond.170, !dbg !899

do.cond.170:                                      ; preds = %if.end.169
  br label %do.end.171, !dbg !900

do.end.171:                                       ; preds = %do.cond.170
  store %struct._object* null, %struct._object** %module, align 8, !dbg !902, !tbaa !543
  br label %if.end.172, !dbg !903

if.end.172:                                       ; preds = %do.end.171, %error
  %116 = load %struct._object*, %struct._object** %module, align 8, !dbg !904, !tbaa !543
  store %struct._object* %116, %struct._object** %retval, !dbg !905
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !905

cleanup:                                          ; preds = %if.end.172, %do.end.24
  %117 = bitcast i32* %i to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 4, i8* %117) #1, !dbg !906
  %118 = bitcast %struct._object** %tmp_obj to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %118) #1, !dbg !906
  %119 = bitcast %struct._object** %dict to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !906
  %120 = bitcast %struct._object** %module to i8*, !dbg !906
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !906
  %121 = load %struct._object*, %struct._object** %retval, !dbg !906
  ret %struct._object* %121, !dbg !906
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @pysqlite_row_setup_types() #3

declare i32 @pysqlite_cursor_setup_types() #3

declare i32 @pysqlite_connection_setup_types() #3

declare i32 @pysqlite_cache_setup_types() #3

declare i32 @pysqlite_statement_setup_types() #3

declare i32 @pysqlite_prepare_protocol_setup_types() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare i8* @sqlite3_libversion() #3

declare i32 @pysqlite_microprotocols_init(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @converters_init(%struct._object* %dict) #0 {
entry:
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %dict.addr, metadata !437, metadata !534), !dbg !907
  %call = call %struct._object* @PyDict_New(), !dbg !908
  store %struct._object* %call, %struct._object** @converters, align 8, !dbg !909, !tbaa !543
  %0 = load %struct._object*, %struct._object** @converters, align 8, !dbg !910, !tbaa !543
  %tobool = icmp ne %struct._object* %0, null, !dbg !910
  br i1 %tobool, label %if.end, label %if.then, !dbg !912

if.then:                                          ; preds = %entry
  br label %return, !dbg !913

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %dict.addr, align 8, !dbg !915, !tbaa !543
  %2 = load %struct._object*, %struct._object** @converters, align 8, !dbg !916, !tbaa !543
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %struct._object* %2), !dbg !917
  br label %return, !dbg !918

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !919
}

declare void @PyEval_InitThreads() #3

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !382, metadata !534), !dbg !921
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !383, metadata !534), !dbg !922
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !384, metadata !534), !dbg !923
  %0 = bitcast i8** %database to i8*, !dbg !924
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !924
  call void @llvm.dbg.declare(metadata i8** %database, metadata !385, metadata !534), !dbg !925
  %1 = bitcast i32* %detect_types to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !926
  call void @llvm.dbg.declare(metadata i32* %detect_types, metadata !386, metadata !534), !dbg !927
  store i32 0, i32* %detect_types, align 4, !dbg !927, !tbaa !746
  %2 = bitcast %struct._object** %isolation_level to i8*, !dbg !928
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !928
  call void @llvm.dbg.declare(metadata %struct._object** %isolation_level, metadata !387, metadata !534), !dbg !929
  %3 = bitcast %struct._object** %factory to i8*, !dbg !930
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !930
  call void @llvm.dbg.declare(metadata %struct._object** %factory, metadata !388, metadata !534), !dbg !931
  store %struct._object* null, %struct._object** %factory, align 8, !dbg !931, !tbaa !543
  %4 = bitcast i32* %check_same_thread to i8*, !dbg !932
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !932
  call void @llvm.dbg.declare(metadata i32* %check_same_thread, metadata !389, metadata !534), !dbg !933
  store i32 1, i32* %check_same_thread, align 4, !dbg !933, !tbaa !746
  %5 = bitcast i32* %cached_statements to i8*, !dbg !934
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !934
  call void @llvm.dbg.declare(metadata i32* %cached_statements, metadata !390, metadata !534), !dbg !935
  %6 = bitcast i32* %uri to i8*, !dbg !936
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !936
  call void @llvm.dbg.declare(metadata i32* %uri, metadata !391, metadata !534), !dbg !937
  store i32 0, i32* %uri, align 4, !dbg !937, !tbaa !746
  %7 = bitcast double* %timeout to i8*, !dbg !938
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !938
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !392, metadata !534), !dbg !939
  store double 5.000000e+00, double* %timeout, align 8, !dbg !939, !tbaa !940
  %8 = bitcast %struct._object** %result to i8*, !dbg !942
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !942
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !394, metadata !534), !dbg !943
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !944, !tbaa !543
  %10 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !946, !tbaa !543
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %9, %struct._object* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @module_connect.kwlist, i32 0, i32 0), i8** %database, double* %timeout, i32* %detect_types, %struct._object** %isolation_level, i32* %check_same_thread, %struct._object** %factory, i32* %cached_statements, i32* %uri), !dbg !947
  %tobool = icmp ne i32 %call, 0, !dbg !947
  br i1 %tobool, label %if.end, label %if.then, !dbg !948

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !949
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !949

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %factory, align 8, !dbg !951, !tbaa !543
  %cmp = icmp eq %struct._object* %11, null, !dbg !953
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !954

if.then.1:                                        ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_ConnectionType, i32 0, i32 0, i32 0), %struct._object** %factory, align 8, !dbg !955, !tbaa !543
  br label %if.end.2, !dbg !957

if.end.2:                                         ; preds = %if.then.1, %if.end
  %12 = load %struct._object*, %struct._object** %factory, align 8, !dbg !958, !tbaa !543
  %13 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !959, !tbaa !543
  %14 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !960, !tbaa !543
  %call3 = call %struct._object* @PyObject_Call(%struct._object* %12, %struct._object* %13, %struct._object* %14), !dbg !961
  store %struct._object* %call3, %struct._object** %result, align 8, !dbg !962, !tbaa !543
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !963, !tbaa !543
  store %struct._object* %15, %struct._object** %retval, !dbg !964
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !964

cleanup:                                          ; preds = %if.end.2, %if.then
  %16 = bitcast %struct._object** %result to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !965
  %17 = bitcast double* %timeout to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !965
  %18 = bitcast i32* %uri to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !965
  %19 = bitcast i32* %cached_statements to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !965
  %20 = bitcast i32* %check_same_thread to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !965
  %21 = bitcast %struct._object** %factory to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !965
  %22 = bitcast %struct._object** %isolation_level to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !965
  %23 = bitcast i32* %detect_types to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !965
  %24 = bitcast i8** %database to i8*, !dbg !965
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !965
  %25 = load %struct._object*, %struct._object** %retval, !dbg !965
  ret %struct._object* %25, !dbg !965
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !397, metadata !534), !dbg !966
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !398, metadata !534), !dbg !967
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !399, metadata !534), !dbg !968
  %0 = bitcast i8** %statement to i8*, !dbg !969
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !969
  call void @llvm.dbg.declare(metadata i8** %statement, metadata !400, metadata !534), !dbg !970
  %1 = bitcast %struct._object** %result to i8*, !dbg !971
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !971
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !401, metadata !534), !dbg !972
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !973, !tbaa !543
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !975, !tbaa !543
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_complete.kwlist, i32 0, i32 0), i8** %statement), !dbg !976
  %tobool = icmp ne i32 %call, 0, !dbg !976
  br i1 %tobool, label %if.end, label %if.then, !dbg !977

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !978
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !978

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %statement, align 8, !dbg !980, !tbaa !543
  %call1 = call i32 @sqlite3_complete(i8* %4), !dbg !982
  %tobool2 = icmp ne i32 %call1, 0, !dbg !982
  br i1 %tobool2, label %if.then.3, label %if.else, !dbg !983

if.then.3:                                        ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !984, !tbaa !543
  br label %if.end.4, !dbg !986

if.else:                                          ; preds = %if.end
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %result, align 8, !dbg !987, !tbaa !543
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %5 = load %struct._object*, %struct._object** %result, align 8, !dbg !989, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0, !dbg !990
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !991, !tbaa !585
  %inc = add i64 %6, 1, !dbg !991
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !991, !tbaa !585
  %7 = load %struct._object*, %struct._object** %result, align 8, !dbg !992, !tbaa !543
  store %struct._object* %7, %struct._object** %retval, !dbg !993
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !993

cleanup:                                          ; preds = %if.end.4, %if.then
  %8 = bitcast %struct._object** %result to i8*, !dbg !994
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !994
  %9 = bitcast i8** %statement to i8*, !dbg !994
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !994
  %10 = load %struct._object*, %struct._object** %retval, !dbg !994
  ret %struct._object* %10, !dbg !994
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !404, metadata !534), !dbg !995
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !405, metadata !534), !dbg !996
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !406, metadata !534), !dbg !997
  %0 = bitcast i32* %do_enable to i8*, !dbg !998
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !998
  call void @llvm.dbg.declare(metadata i32* %do_enable, metadata !407, metadata !534), !dbg !999
  %1 = bitcast i32* %rc to i8*, !dbg !1000
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !408, metadata !534), !dbg !1001
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1002, !tbaa !543
  %3 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !1004, !tbaa !543
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @module_enable_shared_cache.kwlist, i32 0, i32 0), i32* %do_enable), !dbg !1005
  %tobool = icmp ne i32 %call, 0, !dbg !1005
  br i1 %tobool, label %if.end, label %if.then, !dbg !1006

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1007

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %do_enable, align 4, !dbg !1009, !tbaa !746
  %call1 = call i32 @sqlite3_enable_shared_cache(i32 %4), !dbg !1010
  store i32 %call1, i32* %rc, align 4, !dbg !1011, !tbaa !746
  %5 = load i32, i32* %rc, align 4, !dbg !1012, !tbaa !746
  %cmp = icmp ne i32 %5, 0, !dbg !1014
  br i1 %cmp, label %if.then.2, label %if.else, !dbg !1015

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @pysqlite_OperationalError, align 8, !dbg !1016, !tbaa !543
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i32 0, i32 0)), !dbg !1018
  store %struct._object* null, %struct._object** %retval, !dbg !1019
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1019

if.else:                                          ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1020, !tbaa !585
  %inc = add i64 %7, 1, !dbg !1020
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1020, !tbaa !585
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %if.else, %if.then.2, %if.then
  %8 = bitcast i32* %rc to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !1023
  %9 = bitcast i32* %do_enable to i8*, !dbg !1023
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !1023
  %10 = load %struct._object*, %struct._object** %retval, !dbg !1023
  ret %struct._object* %10, !dbg !1023
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !411, metadata !534), !dbg !1024
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !412, metadata !534), !dbg !1025
  %0 = bitcast %struct._typeobject** %type to i8*, !dbg !1026
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1026
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type, metadata !413, metadata !534), !dbg !1027
  %1 = bitcast %struct._object** %caster to i8*, !dbg !1028
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1028
  call void @llvm.dbg.declare(metadata %struct._object** %caster, metadata !416, metadata !534), !dbg !1029
  %2 = bitcast i32* %rc to i8*, !dbg !1030
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !417, metadata !534), !dbg !1031
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1032, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), %struct._typeobject** %type, %struct._object** %caster), !dbg !1034
  %tobool = icmp ne i32 %call, 0, !dbg !1034
  br i1 %tobool, label %if.end, label %if.then, !dbg !1035

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1036
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1036

if.end:                                           ; preds = %entry
  %4 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1038, !tbaa !543
  %cmp = icmp eq %struct._typeobject* %4, @PyLong_Type, !dbg !1040
  br i1 %cmp, label %if.then.6, label %lor.lhs.false, !dbg !1041

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1042, !tbaa !543
  %cmp1 = icmp eq %struct._typeobject* %5, @PyFloat_Type, !dbg !1044
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false.2, !dbg !1045

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1046, !tbaa !543
  %cmp3 = icmp eq %struct._typeobject* %6, @PyUnicode_Type, !dbg !1047
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4, !dbg !1048

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %7 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1049, !tbaa !543
  %cmp5 = icmp eq %struct._typeobject* %7, @PyByteArray_Type, !dbg !1051
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1052

if.then.6:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %if.end
  store i32 1, i32* @pysqlite_BaseTypeAdapted, align 4, !dbg !1053, !tbaa !746
  br label %if.end.7, !dbg !1055

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false.4
  %8 = load %struct._typeobject*, %struct._typeobject** %type, align 8, !dbg !1056, !tbaa !543
  %9 = load %struct._object*, %struct._object** %caster, align 8, !dbg !1057, !tbaa !543
  %call8 = call i32 @pysqlite_microprotocols_add(%struct._typeobject* %8, %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object* %9), !dbg !1058
  store i32 %call8, i32* %rc, align 4, !dbg !1059, !tbaa !746
  %10 = load i32, i32* %rc, align 4, !dbg !1060, !tbaa !746
  %cmp9 = icmp eq i32 %10, -1, !dbg !1062
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !1063

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !1064
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1064

if.end.11:                                        ; preds = %if.end.7
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1065, !tbaa !585
  %inc = add i64 %11, 1, !dbg !1065
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1065, !tbaa !585
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1066

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then
  %12 = bitcast i32* %rc to i8*, !dbg !1067
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1067
  %13 = bitcast %struct._object** %caster to i8*, !dbg !1067
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1067
  %14 = bitcast %struct._typeobject** %type to i8*, !dbg !1067
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1067
  %15 = load %struct._object*, %struct._object** %retval, !dbg !1067
  ret %struct._object* %15, !dbg !1067
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !420, metadata !534), !dbg !1068
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !421, metadata !534), !dbg !1069
  %0 = bitcast %struct._object** %orig_name to i8*, !dbg !1070
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1070
  call void @llvm.dbg.declare(metadata %struct._object** %orig_name, metadata !422, metadata !534), !dbg !1071
  %1 = bitcast %struct._object** %name to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1072
  call void @llvm.dbg.declare(metadata %struct._object** %name, metadata !423, metadata !534), !dbg !1073
  store %struct._object* null, %struct._object** %name, align 8, !dbg !1073, !tbaa !543
  %2 = bitcast %struct._object** %callable to i8*, !dbg !1074
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1074
  call void @llvm.dbg.declare(metadata %struct._object** %callable, metadata !424, metadata !534), !dbg !1075
  %3 = bitcast %struct._object** %retval1 to i8*, !dbg !1076
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1076
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !425, metadata !534), !dbg !1077
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !1077, !tbaa !543
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1078, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), %struct._object** %orig_name, %struct._object** %callable), !dbg !1080
  %tobool = icmp ne i32 %call, 0, !dbg !1080
  br i1 %tobool, label %if.end, label %if.then, !dbg !1081

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1082

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %orig_name, align 8, !dbg !1084, !tbaa !543
  %call2 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %5, %struct._Py_Identifier* @module_register_converter.PyId_upper, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.57, i32 0, i32 0)), !dbg !1085
  store %struct._object* %call2, %struct._object** %name, align 8, !dbg !1086, !tbaa !543
  %6 = load %struct._object*, %struct._object** %name, align 8, !dbg !1087, !tbaa !543
  %tobool3 = icmp ne %struct._object* %6, null, !dbg !1087
  br i1 %tobool3, label %if.end.5, label %if.then.4, !dbg !1089

if.then.4:                                        ; preds = %if.end
  br label %error, !dbg !1090

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @converters, align 8, !dbg !1092, !tbaa !543
  %8 = load %struct._object*, %struct._object** %name, align 8, !dbg !1094, !tbaa !543
  %9 = load %struct._object*, %struct._object** %callable, align 8, !dbg !1095, !tbaa !543
  %call6 = call i32 @PyDict_SetItem(%struct._object* %7, %struct._object* %8, %struct._object* %9), !dbg !1096
  %cmp = icmp ne i32 %call6, 0, !dbg !1097
  br i1 %cmp, label %if.then.7, label %if.end.8, !dbg !1098

if.then.7:                                        ; preds = %if.end.5
  br label %error, !dbg !1099

if.end.8:                                         ; preds = %if.end.5
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1101, !tbaa !585
  %inc = add i64 %10, 1, !dbg !1101
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1101, !tbaa !585
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval1, align 8, !dbg !1102, !tbaa !543
  br label %error, !dbg !1103

error:                                            ; preds = %if.end.8, %if.then.7, %if.then.4
  br label %do.body, !dbg !1104

do.body:                                          ; preds = %error
  %11 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1105
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !426, metadata !534), !dbg !1107
  %12 = load %struct._object*, %struct._object** %name, align 8, !dbg !1108, !tbaa !543
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1107, !tbaa !543
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1109, !tbaa !543
  %cmp9 = icmp ne %struct._object* %13, null, !dbg !1110
  br i1 %cmp9, label %if.then.10, label %if.end.15, !dbg !1111

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !1112

do.body.11:                                       ; preds = %if.then.10
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1114
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1114
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !428, metadata !534), !dbg !1116
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1117, !tbaa !543
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1116, !tbaa !543
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1118, !tbaa !543
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1120
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1121, !tbaa !585
  %dec = add i64 %17, -1, !dbg !1121
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1121, !tbaa !585
  %cmp12 = icmp ne i64 %dec, 0, !dbg !1122
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !1123

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14, !dbg !1124

if.else:                                          ; preds = %do.body.11
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1126, !tbaa !543
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1128
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1128, !tbaa !595
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1129
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1129, !tbaa !597
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1130, !tbaa !543
  call void %20(%struct._object* %21), !dbg !1131
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1132
  br label %do.cond, !dbg !1134

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !1135

do.end:                                           ; preds = %do.cond
  br label %if.end.15, !dbg !1137

if.end.15:                                        ; preds = %do.end, %do.body
  %23 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1139
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1139
  br label %do.cond.16, !dbg !1142

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !1143

do.end.17:                                        ; preds = %do.cond.16
  %24 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !1145, !tbaa !543
  store %struct._object* %24, %struct._object** %retval, !dbg !1146
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1146

cleanup:                                          ; preds = %do.end.17, %if.then
  %25 = bitcast %struct._object** %retval1 to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !1147
  %26 = bitcast %struct._object** %callable to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !1147
  %27 = bitcast %struct._object** %name to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !1147
  %28 = bitcast %struct._object** %orig_name to i8*, !dbg !1147
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1147
  %29 = load %struct._object*, %struct._object** %retval, !dbg !1147
  ret %struct._object* %29, !dbg !1147
}

declare %struct._object* @pysqlite_adapt(%struct.pysqlite_Cursor*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @enable_callback_tracebacks(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !433, metadata !534), !dbg !1148
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !543
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !434, metadata !534), !dbg !1149
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1150, !tbaa !543
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0), i32* @_enable_callback_tracebacks), !dbg !1152
  %tobool = icmp ne i32 %call, 0, !dbg !1152
  br i1 %tobool, label %if.end, label %if.then, !dbg !1153

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1154
  br label %return, !dbg !1154

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1156, !tbaa !585
  %inc = add i64 %1, 1, !dbg !1156
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1156, !tbaa !585
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !1157
  br label %return, !dbg !1157

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval, !dbg !1158
  ret %struct._object* %2, !dbg !1158
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @sqlite3_complete(i8*) #3

declare i32 @sqlite3_enable_shared_cache(i32) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @pysqlite_microprotocols_add(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!529, !530, !531}
!llvm.ident = !{!532}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !350, globals: !438)
!1 = !DIFile(filename: "module.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89}
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
!350 = !{!351, !380, !395, !402, !409, !418, !431, !435}
!351 = !DISubprogram(name: "PyInit__sqlite3", scope: !352, file: !352, line: 325, type: !353, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__sqlite3, variables: !355)
!352 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_sqlite/module.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DISubroutineType(types: !354)
!354 = !{!4}
!355 = !{!356, !357, !358, !359, !360, !364, !367, !372, !374, !376}
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !351, file: !352, line: 327, type: !4)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !351, file: !352, line: 327, type: !4)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp_obj", scope: !351, file: !352, line: 328, type: !4)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !351, file: !352, line: 329, type: !43)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !361, file: !352, line: 341, type: !4)
!361 = distinct !DILexicalBlock(scope: !362, file: !352, line: 341, column: 12)
!362 = distinct !DILexicalBlock(scope: !363, file: !352, line: 340, column: 10)
!363 = distinct !DILexicalBlock(scope: !351, file: !352, line: 333, column: 9)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !365, file: !352, line: 341, type: !4)
!365 = distinct !DILexicalBlock(scope: !366, file: !352, line: 341, column: 102)
!366 = distinct !DILexicalBlock(scope: !361, file: !352, line: 341, column: 68)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !368, file: !352, line: 433, type: !4)
!368 = distinct !DILexicalBlock(scope: !369, file: !352, line: 433, column: 12)
!369 = distinct !DILexicalBlock(scope: !370, file: !352, line: 427, column: 60)
!370 = distinct !DILexicalBlock(scope: !371, file: !352, line: 427, column: 5)
!371 = distinct !DILexicalBlock(scope: !351, file: !352, line: 427, column: 5)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !373, file: !352, line: 440, type: !4)
!373 = distinct !DILexicalBlock(scope: !351, file: !352, line: 440, column: 8)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !375, file: !352, line: 446, type: !4)
!375 = distinct !DILexicalBlock(scope: !351, file: !352, line: 446, column: 8)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !377, file: !352, line: 479, type: !4)
!377 = distinct !DILexicalBlock(scope: !378, file: !352, line: 479, column: 12)
!378 = distinct !DILexicalBlock(scope: !379, file: !352, line: 477, column: 5)
!379 = distinct !DILexicalBlock(scope: !351, file: !352, line: 476, column: 9)
!380 = !DISubprogram(name: "module_connect", scope: !352, file: !352, line: 46, type: !135, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_connect, variables: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !394}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !380, file: !352, line: 46, type: !4)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !380, file: !352, line: 46, type: !4)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !380, file: !352, line: 47, type: !4)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "database", scope: !380, file: !352, line: 58, type: !51)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detect_types", scope: !380, file: !352, line: 59, type: !43)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isolation_level", scope: !380, file: !352, line: 60, type: !4)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factory", scope: !380, file: !352, line: 61, type: !4)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "check_same_thread", scope: !380, file: !352, line: 62, type: !43)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cached_statements", scope: !380, file: !352, line: 63, type: !43)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uri", scope: !380, file: !352, line: 64, type: !43)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !380, file: !352, line: 65, type: !393)
!393 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !380, file: !352, line: 67, type: !4)
!395 = !DISubprogram(name: "module_complete", scope: !352, file: !352, line: 94, type: !135, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_complete, variables: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !352, line: 94, type: !4)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !395, file: !352, line: 94, type: !4)
!399 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !395, file: !352, line: 95, type: !4)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statement", scope: !395, file: !352, line: 98, type: !51)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !395, file: !352, line: 100, type: !4)
!402 = !DISubprogram(name: "module_enable_shared_cache", scope: !352, file: !352, line: 124, type: !135, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @module_enable_shared_cache, variables: !403)
!403 = !{!404, !405, !406, !407, !408}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !402, file: !352, line: 124, type: !4)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !402, file: !352, line: 124, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !402, file: !352, line: 125, type: !4)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "do_enable", scope: !402, file: !352, line: 128, type: !43)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !402, file: !352, line: 129, type: !43)
!409 = !DISubprogram(name: "module_register_adapter", scope: !352, file: !352, line: 154, type: !126, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @module_register_adapter, variables: !410)
!410 = !{!411, !412, !413, !416, !417}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !352, line: 154, type: !4)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !352, line: 154, type: !4)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !409, file: !352, line: 156, type: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !6, line: 422, baseType: !19)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "caster", scope: !409, file: !352, line: 157, type: !4)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !409, file: !352, line: 158, type: !43)
!418 = !DISubprogram(name: "module_register_converter", scope: !352, file: !352, line: 184, type: !126, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @module_register_converter, variables: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !428}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !418, file: !352, line: 184, type: !4)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !418, file: !352, line: 184, type: !4)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "orig_name", scope: !418, file: !352, line: 186, type: !4)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !418, file: !352, line: 187, type: !4)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callable", scope: !418, file: !352, line: 188, type: !4)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !418, file: !352, line: 189, type: !4)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !427, file: !352, line: 209, type: !4)
!427 = distinct !DILexicalBlock(scope: !418, file: !352, line: 209, column: 8)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !429, file: !352, line: 209, type: !4)
!429 = distinct !DILexicalBlock(scope: !430, file: !352, line: 209, column: 96)
!430 = distinct !DILexicalBlock(scope: !427, file: !352, line: 209, column: 62)
!431 = !DISubprogram(name: "enable_callback_tracebacks", scope: !352, file: !352, line: 218, type: !126, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @enable_callback_tracebacks, variables: !432)
!432 = !{!433, !434}
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !431, file: !352, line: 218, type: !4)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !431, file: !352, line: 218, type: !4)
!435 = !DISubprogram(name: "converters_init", scope: !352, file: !352, line: 233, type: !36, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._object*)* @converters_init, variables: !436)
!436 = !{!437}
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dict", arg: 1, scope: !435, file: !352, line: 233, type: !4)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !475, !479, !483, !487, !491, !495, !496, !500, !504, !512, !516, !520}
!439 = !DIGlobalVariable(name: "pysqlite_Error", scope: !0, file: !352, line: 38, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_Error)
!440 = !DIGlobalVariable(name: "pysqlite_Warning", scope: !0, file: !352, line: 38, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_Warning)
!441 = !DIGlobalVariable(name: "pysqlite_InterfaceError", scope: !0, file: !352, line: 38, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_InterfaceError)
!442 = !DIGlobalVariable(name: "pysqlite_DatabaseError", scope: !0, file: !352, line: 38, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_DatabaseError)
!443 = !DIGlobalVariable(name: "pysqlite_InternalError", scope: !0, file: !352, line: 39, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_InternalError)
!444 = !DIGlobalVariable(name: "pysqlite_OperationalError", scope: !0, file: !352, line: 39, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_OperationalError)
!445 = !DIGlobalVariable(name: "pysqlite_ProgrammingError", scope: !0, file: !352, line: 39, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_ProgrammingError)
!446 = !DIGlobalVariable(name: "pysqlite_IntegrityError", scope: !0, file: !352, line: 40, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_IntegrityError)
!447 = !DIGlobalVariable(name: "pysqlite_DataError", scope: !0, file: !352, line: 40, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_DataError)
!448 = !DIGlobalVariable(name: "pysqlite_NotSupportedError", scope: !0, file: !352, line: 40, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @pysqlite_NotSupportedError)
!449 = !DIGlobalVariable(name: "converters", scope: !0, file: !352, line: 42, type: !4, isLocal: false, isDefinition: true, variable: %struct._object** @converters)
!450 = !DIGlobalVariable(name: "_enable_callback_tracebacks", scope: !0, file: !352, line: 43, type: !43, isLocal: false, isDefinition: true, variable: i32* @_enable_callback_tracebacks)
!451 = !DIGlobalVariable(name: "pysqlite_BaseTypeAdapted", scope: !0, file: !352, line: 44, type: !43, isLocal: false, isDefinition: true, variable: i32* @pysqlite_BaseTypeAdapted)
!452 = !DIGlobalVariable(name: "_sqlite3module", scope: !0, file: !352, line: 313, type: !453, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @_sqlite3module)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !454, line: 47, size: 832, align: 64, elements: !455)
!454 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!455 = !{!456, !465, !466, !467, !468, !471, !472, !473, !474}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !453, file: !454, line: 48, baseType: !457, size: 320, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !454, line: 38, baseType: !458)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !454, line: 33, size: 320, align: 64, elements: !459)
!459 = !{!460, !461, !463, !464}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !458, file: !454, line: 34, baseType: !5, size: 128, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !458, file: !454, line: 35, baseType: !462, size: 64, align: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !458, file: !454, line: 36, baseType: !10, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !458, file: !454, line: 37, baseType: !4, size: 64, align: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !453, file: !454, line: 49, baseType: !28, size: 64, align: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !453, file: !454, line: 50, baseType: !28, size: 64, align: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !453, file: !454, line: 51, baseType: !10, size: 64, align: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !453, file: !454, line: 52, baseType: !469, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !453, file: !454, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !453, file: !454, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !453, file: !454, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !453, file: !454, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!475 = !DIGlobalVariable(name: "module_methods", scope: !0, file: !352, line: 243, type: !476, isLocal: true, isDefinition: true, variable: [8 x %struct.PyMethodDef]* @module_methods)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 2048, align: 64, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 8)
!479 = !DIGlobalVariable(name: "kwlist", scope: !380, file: !352, line: 53, type: !480, isLocal: true, isDefinition: true, variable: [9 x i8*]* @module_connect.kwlist)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, align: 64, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 9)
!483 = !DIGlobalVariable(name: "module_connect_doc", scope: !0, file: !352, line: 86, type: !484, isLocal: true, isDefinition: true, variable: [287 x i8]* @module_connect_doc)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2296, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 287)
!487 = !DIGlobalVariable(name: "kwlist", scope: !395, file: !352, line: 97, type: !488, isLocal: true, isDefinition: true, variable: [3 x i8*]* @module_complete.kwlist)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, align: 64, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 3)
!491 = !DIGlobalVariable(name: "module_complete_doc", scope: !0, file: !352, line: 118, type: !492, isLocal: true, isDefinition: true, variable: [93 x i8]* @module_complete_doc)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 744, align: 8, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 93)
!495 = !DIGlobalVariable(name: "kwlist", scope: !402, file: !352, line: 127, type: !488, isLocal: true, isDefinition: true, variable: [3 x i8*]* @module_enable_shared_cache.kwlist)
!496 = !DIGlobalVariable(name: "module_enable_shared_cache_doc", scope: !0, file: !352, line: 147, type: !497, isLocal: true, isDefinition: true, variable: [119 x i8]* @module_enable_shared_cache_doc)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 952, align: 8, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 119)
!500 = !DIGlobalVariable(name: "module_register_adapter_doc", scope: !0, file: !352, line: 179, type: !501, isLocal: true, isDefinition: true, variable: [103 x i8]* @module_register_adapter_doc)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 824, align: 8, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 103)
!504 = !DIGlobalVariable(name: "PyId_upper", scope: !418, file: !352, line: 190, type: !505, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @module_register_converter.PyId_upper)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !6, line: 144, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !6, line: 140, size: 192, align: 64, elements: !507)
!507 = !{!508, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !6, line: 141, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !506, file: !6, line: 142, baseType: !28, size: 64, align: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !506, file: !6, line: 143, baseType: !4, size: 64, align: 64, offset: 128)
!512 = !DIGlobalVariable(name: "module_register_converter_doc", scope: !0, file: !352, line: 213, type: !513, isLocal: true, isDefinition: true, variable: [91 x i8]* @module_register_converter_doc)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 728, align: 8, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 91)
!516 = !DIGlobalVariable(name: "enable_callback_tracebacks_doc", scope: !0, file: !352, line: 228, type: !517, isLocal: true, isDefinition: true, variable: [98 x i8]* @enable_callback_tracebacks_doc)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 784, align: 8, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 98)
!520 = !DIGlobalVariable(name: "_int_constants", scope: !0, file: !352, line: 270, type: !521, isLocal: true, isDefinition: true, variable: [34 x %struct._IntConstantPair]* @_int_constants)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 4352, align: 64, elements: !527)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntConstantPair", file: !352, line: 268, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IntConstantPair", file: !352, line: 263, size: 128, align: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "constant_name", scope: !523, file: !352, line: 264, baseType: !51, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "constant_value", scope: !523, file: !352, line: 265, baseType: !43, size: 32, align: 32, offset: 64)
!527 = !{!528}
!528 = !DISubrange(count: 34)
!529 = !{i32 2, !"Dwarf Version", i32 4}
!530 = !{i32 2, !"Debug Info Version", i32 3}
!531 = !{i32 1, !"PIC Level", i32 2}
!532 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!533 = !DILocation(line: 327, column: 5, scope: !351)
!534 = !DIExpression()
!535 = !DILocation(line: 327, column: 15, scope: !351)
!536 = !DILocation(line: 327, column: 24, scope: !351)
!537 = !DILocation(line: 328, column: 5, scope: !351)
!538 = !DILocation(line: 328, column: 15, scope: !351)
!539 = !DILocation(line: 329, column: 5, scope: !351)
!540 = !DILocation(line: 329, column: 9, scope: !351)
!541 = !DILocation(line: 331, column: 14, scope: !351)
!542 = !DILocation(line: 331, column: 12, scope: !351)
!543 = !{!544, !544, i64 0}
!544 = !{!"any pointer", !545, i64 0}
!545 = !{!"omnipotent char", !546, i64 0}
!546 = !{!"Simple C/C++ TBAA"}
!547 = !DILocation(line: 333, column: 10, scope: !363)
!548 = !DILocation(line: 333, column: 17, scope: !363)
!549 = !DILocation(line: 334, column: 10, scope: !363)
!550 = !DILocation(line: 334, column: 37, scope: !363)
!551 = !DILocation(line: 334, column: 42, scope: !363)
!552 = !DILocation(line: 335, column: 10, scope: !363)
!553 = !DILocation(line: 335, column: 40, scope: !363)
!554 = !DILocation(line: 335, column: 45, scope: !363)
!555 = !DILocation(line: 336, column: 10, scope: !363)
!556 = !DILocation(line: 336, column: 44, scope: !363)
!557 = !DILocation(line: 336, column: 49, scope: !363)
!558 = !DILocation(line: 337, column: 10, scope: !363)
!559 = !DILocation(line: 337, column: 39, scope: !363)
!560 = !DILocation(line: 337, column: 44, scope: !363)
!561 = !DILocation(line: 338, column: 10, scope: !363)
!562 = !DILocation(line: 338, column: 43, scope: !363)
!563 = !DILocation(line: 338, column: 48, scope: !363)
!564 = !DILocation(line: 339, column: 10, scope: !363)
!565 = !DILocation(line: 339, column: 50, scope: !363)
!566 = !DILocation(line: 333, column: 9, scope: !351)
!567 = !DILocation(line: 341, column: 9, scope: !362)
!568 = !DILocation(line: 341, column: 14, scope: !569)
!569 = !DILexicalBlockFile(scope: !361, file: !352, discriminator: 1)
!570 = !DILocation(line: 341, column: 24, scope: !361)
!571 = !DILocation(line: 341, column: 55, scope: !361)
!572 = !DILocation(line: 341, column: 68, scope: !366)
!573 = !DILocation(line: 341, column: 84, scope: !366)
!574 = !DILocation(line: 341, column: 68, scope: !361)
!575 = !DILocation(line: 341, column: 99, scope: !576)
!576 = !DILexicalBlockFile(scope: !366, file: !352, discriminator: 2)
!577 = !DILocation(line: 341, column: 104, scope: !578)
!578 = !DILexicalBlockFile(scope: !365, file: !352, discriminator: 4)
!579 = !DILocation(line: 341, column: 114, scope: !365)
!580 = !DILocation(line: 341, column: 144, scope: !365)
!581 = !DILocation(line: 341, column: 170, scope: !582)
!582 = distinct !DILexicalBlock(scope: !365, file: !352, line: 341, column: 167)
!583 = !DILocation(line: 341, column: 187, scope: !582)
!584 = !DILocation(line: 341, column: 167, scope: !582)
!585 = !{!586, !587, i64 0}
!586 = !{!"_object", !587, i64 0, !544, i64 8}
!587 = !{!"long", !545, i64 0}
!588 = !DILocation(line: 341, column: 197, scope: !582)
!589 = !DILocation(line: 341, column: 167, scope: !365)
!590 = !DILocation(line: 341, column: 167, scope: !591)
!591 = !DILexicalBlockFile(scope: !365, file: !352, discriminator: 5)
!592 = !DILocation(line: 341, column: 228, scope: !593)
!593 = !DILexicalBlockFile(scope: !582, file: !352, discriminator: 6)
!594 = !DILocation(line: 341, column: 246, scope: !582)
!595 = !{!586, !544, i64 8}
!596 = !DILocation(line: 341, column: 256, scope: !582)
!597 = !{!598, !544, i64 48}
!598 = !{!"_typeobject", !599, i64 0, !544, i64 24, !587, i64 32, !587, i64 40, !544, i64 48, !544, i64 56, !544, i64 64, !544, i64 72, !544, i64 80, !544, i64 88, !544, i64 96, !544, i64 104, !544, i64 112, !544, i64 120, !544, i64 128, !544, i64 136, !544, i64 144, !544, i64 152, !544, i64 160, !587, i64 168, !544, i64 176, !544, i64 184, !544, i64 192, !544, i64 200, !587, i64 208, !544, i64 216, !544, i64 224, !544, i64 232, !544, i64 240, !544, i64 248, !544, i64 256, !544, i64 264, !544, i64 272, !544, i64 280, !587, i64 288, !544, i64 296, !544, i64 304, !544, i64 312, !544, i64 320, !544, i64 328, !544, i64 336, !544, i64 344, !544, i64 352, !544, i64 360, !544, i64 368, !544, i64 376, !600, i64 384, !544, i64 392}
!599 = !{!"", !586, i64 0, !587, i64 16}
!600 = !{!"int", !545, i64 0}
!601 = !DILocation(line: 341, column: 281, scope: !582)
!602 = !DILocation(line: 341, column: 212, scope: !582)
!603 = !DILocation(line: 341, column: 300, scope: !604)
!604 = !DILexicalBlockFile(scope: !366, file: !352, discriminator: 7)
!605 = !DILocation(line: 341, column: 300, scope: !365)
!606 = !DILocation(line: 341, column: 300, scope: !607)
!607 = !DILexicalBlockFile(scope: !365, file: !352, discriminator: 8)
!608 = !DILocation(line: 341, column: 300, scope: !609)
!609 = !DILexicalBlockFile(scope: !365, file: !352, discriminator: 9)
!610 = !DILocation(line: 341, column: 313, scope: !611)
!611 = !DILexicalBlockFile(scope: !612, file: !352, discriminator: 10)
!612 = !DILexicalBlockFile(scope: !362, file: !352, discriminator: 3)
!613 = !DILocation(line: 341, column: 313, scope: !361)
!614 = !DILocation(line: 341, column: 313, scope: !615)
!615 = !DILexicalBlockFile(scope: !361, file: !352, discriminator: 11)
!616 = !DILocation(line: 342, column: 9, scope: !362)
!617 = !DILocation(line: 345, column: 58, scope: !351)
!618 = !DILocation(line: 346, column: 24, scope: !351)
!619 = !DILocation(line: 346, column: 5, scope: !351)
!620 = !DILocation(line: 347, column: 54, scope: !351)
!621 = !DILocation(line: 348, column: 24, scope: !351)
!622 = !DILocation(line: 348, column: 5, scope: !351)
!623 = !DILocation(line: 349, column: 53, scope: !351)
!624 = !DILocation(line: 350, column: 24, scope: !351)
!625 = !DILocation(line: 350, column: 5, scope: !351)
!626 = !DILocation(line: 351, column: 57, scope: !351)
!627 = !DILocation(line: 352, column: 24, scope: !351)
!628 = !DILocation(line: 352, column: 5, scope: !351)
!629 = !DILocation(line: 353, column: 63, scope: !351)
!630 = !DILocation(line: 354, column: 24, scope: !351)
!631 = !DILocation(line: 354, column: 5, scope: !351)
!632 = !DILocation(line: 355, column: 51, scope: !351)
!633 = !DILocation(line: 356, column: 24, scope: !351)
!634 = !DILocation(line: 356, column: 5, scope: !351)
!635 = !DILocation(line: 358, column: 35, scope: !636)
!636 = distinct !DILexicalBlock(scope: !351, file: !352, line: 358, column: 9)
!637 = !DILocation(line: 358, column: 18, scope: !636)
!638 = !DILocation(line: 358, column: 16, scope: !636)
!639 = !DILocation(line: 358, column: 9, scope: !351)
!640 = !DILocation(line: 359, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !636, file: !352, line: 358, column: 45)
!642 = !DILocation(line: 364, column: 67, scope: !643)
!643 = distinct !DILexicalBlock(scope: !351, file: !352, line: 364, column: 9)
!644 = !DILocation(line: 364, column: 28, scope: !643)
!645 = !DILocation(line: 364, column: 26, scope: !643)
!646 = !DILocation(line: 364, column: 9, scope: !351)
!647 = !DILocation(line: 365, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !643, file: !352, line: 364, column: 98)
!649 = !DILocation(line: 367, column: 26, scope: !351)
!650 = !DILocation(line: 367, column: 41, scope: !351)
!651 = !DILocation(line: 367, column: 5, scope: !351)
!652 = !DILocation(line: 369, column: 71, scope: !653)
!653 = distinct !DILexicalBlock(scope: !351, file: !352, line: 369, column: 9)
!654 = !DILocation(line: 369, column: 30, scope: !653)
!655 = !DILocation(line: 369, column: 28, scope: !653)
!656 = !DILocation(line: 369, column: 9, scope: !351)
!657 = !DILocation(line: 370, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !352, line: 369, column: 102)
!659 = !DILocation(line: 372, column: 26, scope: !351)
!660 = !DILocation(line: 372, column: 43, scope: !351)
!661 = !DILocation(line: 372, column: 5, scope: !351)
!662 = !DILocation(line: 376, column: 85, scope: !663)
!663 = distinct !DILexicalBlock(scope: !351, file: !352, line: 376, column: 9)
!664 = !DILocation(line: 376, column: 37, scope: !663)
!665 = !DILocation(line: 376, column: 35, scope: !663)
!666 = !DILocation(line: 376, column: 9, scope: !351)
!667 = !DILocation(line: 377, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !352, line: 376, column: 115)
!669 = !DILocation(line: 379, column: 26, scope: !351)
!670 = !DILocation(line: 379, column: 50, scope: !351)
!671 = !DILocation(line: 379, column: 5, scope: !351)
!672 = !DILocation(line: 381, column: 83, scope: !673)
!673 = distinct !DILexicalBlock(scope: !351, file: !352, line: 381, column: 9)
!674 = !DILocation(line: 381, column: 36, scope: !673)
!675 = !DILocation(line: 381, column: 34, scope: !673)
!676 = !DILocation(line: 381, column: 9, scope: !351)
!677 = !DILocation(line: 382, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !352, line: 381, column: 113)
!679 = !DILocation(line: 384, column: 26, scope: !351)
!680 = !DILocation(line: 384, column: 49, scope: !351)
!681 = !DILocation(line: 384, column: 5, scope: !351)
!682 = !DILocation(line: 388, column: 83, scope: !683)
!683 = distinct !DILexicalBlock(scope: !351, file: !352, line: 388, column: 9)
!684 = !DILocation(line: 388, column: 36, scope: !683)
!685 = !DILocation(line: 388, column: 34, scope: !683)
!686 = !DILocation(line: 388, column: 9, scope: !351)
!687 = !DILocation(line: 389, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !683, file: !352, line: 388, column: 121)
!689 = !DILocation(line: 391, column: 26, scope: !351)
!690 = !DILocation(line: 391, column: 49, scope: !351)
!691 = !DILocation(line: 391, column: 5, scope: !351)
!692 = !DILocation(line: 393, column: 89, scope: !693)
!693 = distinct !DILexicalBlock(scope: !351, file: !352, line: 393, column: 9)
!694 = !DILocation(line: 393, column: 39, scope: !693)
!695 = !DILocation(line: 393, column: 37, scope: !693)
!696 = !DILocation(line: 393, column: 9, scope: !351)
!697 = !DILocation(line: 394, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !352, line: 393, column: 127)
!699 = !DILocation(line: 396, column: 26, scope: !351)
!700 = !DILocation(line: 396, column: 52, scope: !351)
!701 = !DILocation(line: 396, column: 5, scope: !351)
!702 = !DILocation(line: 398, column: 89, scope: !703)
!703 = distinct !DILexicalBlock(scope: !351, file: !352, line: 398, column: 9)
!704 = !DILocation(line: 398, column: 39, scope: !703)
!705 = !DILocation(line: 398, column: 37, scope: !703)
!706 = !DILocation(line: 398, column: 9, scope: !351)
!707 = !DILocation(line: 399, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !352, line: 398, column: 127)
!709 = !DILocation(line: 401, column: 26, scope: !351)
!710 = !DILocation(line: 401, column: 52, scope: !351)
!711 = !DILocation(line: 401, column: 5, scope: !351)
!712 = !DILocation(line: 403, column: 85, scope: !713)
!713 = distinct !DILexicalBlock(scope: !351, file: !352, line: 403, column: 9)
!714 = !DILocation(line: 403, column: 37, scope: !713)
!715 = !DILocation(line: 403, column: 35, scope: !713)
!716 = !DILocation(line: 403, column: 9, scope: !351)
!717 = !DILocation(line: 404, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !352, line: 403, column: 122)
!719 = !DILocation(line: 406, column: 26, scope: !351)
!720 = !DILocation(line: 406, column: 50, scope: !351)
!721 = !DILocation(line: 406, column: 5, scope: !351)
!722 = !DILocation(line: 408, column: 75, scope: !723)
!723 = distinct !DILexicalBlock(scope: !351, file: !352, line: 408, column: 9)
!724 = !DILocation(line: 408, column: 32, scope: !723)
!725 = !DILocation(line: 408, column: 30, scope: !723)
!726 = !DILocation(line: 408, column: 9, scope: !351)
!727 = !DILocation(line: 409, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !352, line: 408, column: 113)
!729 = !DILocation(line: 411, column: 26, scope: !351)
!730 = !DILocation(line: 411, column: 45, scope: !351)
!731 = !DILocation(line: 411, column: 5, scope: !351)
!732 = !DILocation(line: 413, column: 91, scope: !733)
!733 = distinct !DILexicalBlock(scope: !351, file: !352, line: 413, column: 9)
!734 = !DILocation(line: 413, column: 40, scope: !733)
!735 = !DILocation(line: 413, column: 38, scope: !733)
!736 = !DILocation(line: 413, column: 9, scope: !351)
!737 = !DILocation(line: 414, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !733, file: !352, line: 413, column: 129)
!739 = !DILocation(line: 416, column: 26, scope: !351)
!740 = !DILocation(line: 416, column: 53, scope: !351)
!741 = !DILocation(line: 416, column: 5, scope: !351)
!742 = !DILocation(line: 423, column: 60, scope: !351)
!743 = !DILocation(line: 424, column: 26, scope: !351)
!744 = !DILocation(line: 424, column: 5, scope: !351)
!745 = !DILocation(line: 427, column: 12, scope: !371)
!746 = !{!600, !600, i64 0}
!747 = !DILocation(line: 427, column: 10, scope: !371)
!748 = !DILocation(line: 427, column: 32, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !352, discriminator: 2)
!750 = !DILexicalBlockFile(scope: !370, file: !352, discriminator: 1)
!751 = !DILocation(line: 427, column: 17, scope: !370)
!752 = !DILocation(line: 427, column: 35, scope: !370)
!753 = !{!754, !544, i64 0}
!754 = !{!"_IntConstantPair", !544, i64 0, !600, i64 8}
!755 = !DILocation(line: 427, column: 49, scope: !370)
!756 = !DILocation(line: 427, column: 5, scope: !371)
!757 = !DILocation(line: 428, column: 50, scope: !369)
!758 = !DILocation(line: 428, column: 35, scope: !369)
!759 = !DILocation(line: 428, column: 53, scope: !369)
!760 = !{!754, !600, i64 8}
!761 = !DILocation(line: 428, column: 19, scope: !369)
!762 = !DILocation(line: 428, column: 17, scope: !369)
!763 = !DILocation(line: 429, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !369, file: !352, line: 429, column: 13)
!765 = !DILocation(line: 429, column: 13, scope: !369)
!766 = !DILocation(line: 430, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !352, line: 429, column: 23)
!768 = !DILocation(line: 432, column: 30, scope: !369)
!769 = !DILocation(line: 432, column: 51, scope: !369)
!770 = !DILocation(line: 432, column: 36, scope: !369)
!771 = !DILocation(line: 432, column: 54, scope: !369)
!772 = !DILocation(line: 432, column: 69, scope: !369)
!773 = !DILocation(line: 432, column: 9, scope: !369)
!774 = !DILocation(line: 433, column: 9, scope: !369)
!775 = !DILocation(line: 433, column: 14, scope: !776)
!776 = !DILexicalBlockFile(scope: !368, file: !352, discriminator: 1)
!777 = !DILocation(line: 433, column: 24, scope: !368)
!778 = !DILocation(line: 433, column: 54, scope: !368)
!779 = !DILocation(line: 433, column: 72, scope: !780)
!780 = distinct !DILexicalBlock(scope: !368, file: !352, line: 433, column: 69)
!781 = !DILocation(line: 433, column: 89, scope: !780)
!782 = !DILocation(line: 433, column: 69, scope: !780)
!783 = !DILocation(line: 433, column: 99, scope: !780)
!784 = !DILocation(line: 433, column: 69, scope: !368)
!785 = !DILocation(line: 433, column: 69, scope: !786)
!786 = !DILexicalBlockFile(scope: !368, file: !352, discriminator: 2)
!787 = !DILocation(line: 433, column: 130, scope: !788)
!788 = !DILexicalBlockFile(scope: !780, file: !352, discriminator: 3)
!789 = !DILocation(line: 433, column: 148, scope: !780)
!790 = !DILocation(line: 433, column: 158, scope: !780)
!791 = !DILocation(line: 433, column: 183, scope: !780)
!792 = !DILocation(line: 433, column: 114, scope: !780)
!793 = !DILocation(line: 433, column: 202, scope: !794)
!794 = !DILexicalBlockFile(scope: !369, file: !352, discriminator: 4)
!795 = !DILocation(line: 433, column: 202, scope: !368)
!796 = !DILocation(line: 433, column: 202, scope: !797)
!797 = !DILexicalBlockFile(scope: !368, file: !352, discriminator: 5)
!798 = !DILocation(line: 434, column: 5, scope: !369)
!799 = !DILocation(line: 427, column: 56, scope: !370)
!800 = !DILocation(line: 427, column: 5, scope: !370)
!801 = !DILocation(line: 436, column: 21, scope: !802)
!802 = distinct !DILexicalBlock(scope: !351, file: !352, line: 436, column: 9)
!803 = !DILocation(line: 436, column: 19, scope: !802)
!804 = !DILocation(line: 436, column: 9, scope: !351)
!805 = !DILocation(line: 437, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !802, file: !352, line: 436, column: 53)
!807 = !DILocation(line: 439, column: 26, scope: !351)
!808 = !DILocation(line: 439, column: 43, scope: !351)
!809 = !DILocation(line: 439, column: 5, scope: !351)
!810 = !DILocation(line: 440, column: 5, scope: !351)
!811 = !DILocation(line: 440, column: 10, scope: !812)
!812 = !DILexicalBlockFile(scope: !373, file: !352, discriminator: 1)
!813 = !DILocation(line: 440, column: 20, scope: !373)
!814 = !DILocation(line: 440, column: 50, scope: !373)
!815 = !DILocation(line: 440, column: 68, scope: !816)
!816 = distinct !DILexicalBlock(scope: !373, file: !352, line: 440, column: 65)
!817 = !DILocation(line: 440, column: 85, scope: !816)
!818 = !DILocation(line: 440, column: 65, scope: !816)
!819 = !DILocation(line: 440, column: 95, scope: !816)
!820 = !DILocation(line: 440, column: 65, scope: !373)
!821 = !DILocation(line: 440, column: 65, scope: !822)
!822 = !DILexicalBlockFile(scope: !373, file: !352, discriminator: 2)
!823 = !DILocation(line: 440, column: 126, scope: !824)
!824 = !DILexicalBlockFile(scope: !816, file: !352, discriminator: 3)
!825 = !DILocation(line: 440, column: 144, scope: !816)
!826 = !DILocation(line: 440, column: 154, scope: !816)
!827 = !DILocation(line: 440, column: 179, scope: !816)
!828 = !DILocation(line: 440, column: 110, scope: !816)
!829 = !DILocation(line: 440, column: 198, scope: !830)
!830 = !DILexicalBlockFile(scope: !351, file: !352, discriminator: 4)
!831 = !DILocation(line: 440, column: 198, scope: !373)
!832 = !DILocation(line: 440, column: 198, scope: !833)
!833 = !DILexicalBlockFile(scope: !373, file: !352, discriminator: 5)
!834 = !DILocation(line: 442, column: 42, scope: !835)
!835 = distinct !DILexicalBlock(scope: !351, file: !352, line: 442, column: 9)
!836 = !DILocation(line: 442, column: 21, scope: !835)
!837 = !DILocation(line: 442, column: 19, scope: !835)
!838 = !DILocation(line: 442, column: 9, scope: !351)
!839 = !DILocation(line: 443, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !352, line: 442, column: 66)
!841 = !DILocation(line: 445, column: 26, scope: !351)
!842 = !DILocation(line: 445, column: 50, scope: !351)
!843 = !DILocation(line: 445, column: 5, scope: !351)
!844 = !DILocation(line: 446, column: 5, scope: !351)
!845 = !DILocation(line: 446, column: 10, scope: !846)
!846 = !DILexicalBlockFile(scope: !375, file: !352, discriminator: 1)
!847 = !DILocation(line: 446, column: 20, scope: !375)
!848 = !DILocation(line: 446, column: 50, scope: !375)
!849 = !DILocation(line: 446, column: 68, scope: !850)
!850 = distinct !DILexicalBlock(scope: !375, file: !352, line: 446, column: 65)
!851 = !DILocation(line: 446, column: 85, scope: !850)
!852 = !DILocation(line: 446, column: 65, scope: !850)
!853 = !DILocation(line: 446, column: 95, scope: !850)
!854 = !DILocation(line: 446, column: 65, scope: !375)
!855 = !DILocation(line: 446, column: 65, scope: !856)
!856 = !DILexicalBlockFile(scope: !375, file: !352, discriminator: 2)
!857 = !DILocation(line: 446, column: 126, scope: !858)
!858 = !DILexicalBlockFile(scope: !850, file: !352, discriminator: 3)
!859 = !DILocation(line: 446, column: 144, scope: !850)
!860 = !DILocation(line: 446, column: 154, scope: !850)
!861 = !DILocation(line: 446, column: 179, scope: !850)
!862 = !DILocation(line: 446, column: 110, scope: !850)
!863 = !DILocation(line: 446, column: 198, scope: !830)
!864 = !DILocation(line: 446, column: 198, scope: !375)
!865 = !DILocation(line: 446, column: 198, scope: !866)
!866 = !DILexicalBlockFile(scope: !375, file: !352, discriminator: 5)
!867 = !DILocation(line: 449, column: 34, scope: !351)
!868 = !DILocation(line: 449, column: 5, scope: !351)
!869 = !DILocation(line: 452, column: 21, scope: !351)
!870 = !DILocation(line: 452, column: 5, scope: !351)
!871 = !DILocation(line: 454, column: 33, scope: !351)
!872 = !DILocation(line: 456, column: 30, scope: !351)
!873 = !DILocation(line: 472, column: 5, scope: !351)
!874 = !DILocation(line: 476, column: 9, scope: !379)
!875 = !DILocation(line: 476, column: 9, scope: !351)
!876 = !DILocation(line: 478, column: 25, scope: !378)
!877 = !DILocation(line: 478, column: 9, scope: !378)
!878 = !DILocation(line: 479, column: 9, scope: !378)
!879 = !DILocation(line: 479, column: 14, scope: !880)
!880 = !DILexicalBlockFile(scope: !377, file: !352, discriminator: 1)
!881 = !DILocation(line: 479, column: 24, scope: !377)
!882 = !DILocation(line: 479, column: 54, scope: !377)
!883 = !DILocation(line: 479, column: 71, scope: !884)
!884 = distinct !DILexicalBlock(scope: !377, file: !352, line: 479, column: 68)
!885 = !DILocation(line: 479, column: 88, scope: !884)
!886 = !DILocation(line: 479, column: 68, scope: !884)
!887 = !DILocation(line: 479, column: 98, scope: !884)
!888 = !DILocation(line: 479, column: 68, scope: !377)
!889 = !DILocation(line: 479, column: 68, scope: !890)
!890 = !DILexicalBlockFile(scope: !377, file: !352, discriminator: 2)
!891 = !DILocation(line: 479, column: 129, scope: !892)
!892 = !DILexicalBlockFile(scope: !884, file: !352, discriminator: 3)
!893 = !DILocation(line: 479, column: 147, scope: !884)
!894 = !DILocation(line: 479, column: 157, scope: !884)
!895 = !DILocation(line: 479, column: 182, scope: !884)
!896 = !DILocation(line: 479, column: 113, scope: !884)
!897 = !DILocation(line: 479, column: 201, scope: !898)
!898 = !DILexicalBlockFile(scope: !378, file: !352, discriminator: 4)
!899 = !DILocation(line: 479, column: 201, scope: !377)
!900 = !DILocation(line: 479, column: 201, scope: !901)
!901 = !DILexicalBlockFile(scope: !377, file: !352, discriminator: 5)
!902 = !DILocation(line: 480, column: 16, scope: !378)
!903 = !DILocation(line: 481, column: 5, scope: !378)
!904 = !DILocation(line: 482, column: 12, scope: !351)
!905 = !DILocation(line: 482, column: 5, scope: !351)
!906 = !DILocation(line: 483, column: 1, scope: !351)
!907 = !DILocation(line: 233, column: 39, scope: !435)
!908 = !DILocation(line: 235, column: 18, scope: !435)
!909 = !DILocation(line: 235, column: 16, scope: !435)
!910 = !DILocation(line: 236, column: 10, scope: !911)
!911 = distinct !DILexicalBlock(scope: !435, file: !352, line: 236, column: 9)
!912 = !DILocation(line: 236, column: 9, scope: !435)
!913 = !DILocation(line: 237, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !352, line: 236, column: 22)
!915 = !DILocation(line: 240, column: 26, scope: !435)
!916 = !DILocation(line: 240, column: 46, scope: !435)
!917 = !DILocation(line: 240, column: 5, scope: !435)
!918 = !DILocation(line: 241, column: 1, scope: !435)
!919 = !DILocation(line: 241, column: 1, scope: !920)
!920 = !DILexicalBlockFile(scope: !435, file: !352, discriminator: 1)
!921 = !DILocation(line: 46, column: 43, scope: !380)
!922 = !DILocation(line: 46, column: 59, scope: !380)
!923 = !DILocation(line: 47, column: 9, scope: !380)
!924 = !DILocation(line: 58, column: 5, scope: !380)
!925 = !DILocation(line: 58, column: 11, scope: !380)
!926 = !DILocation(line: 59, column: 5, scope: !380)
!927 = !DILocation(line: 59, column: 9, scope: !380)
!928 = !DILocation(line: 60, column: 5, scope: !380)
!929 = !DILocation(line: 60, column: 15, scope: !380)
!930 = !DILocation(line: 61, column: 5, scope: !380)
!931 = !DILocation(line: 61, column: 15, scope: !380)
!932 = !DILocation(line: 62, column: 5, scope: !380)
!933 = !DILocation(line: 62, column: 9, scope: !380)
!934 = !DILocation(line: 63, column: 5, scope: !380)
!935 = !DILocation(line: 63, column: 9, scope: !380)
!936 = !DILocation(line: 64, column: 5, scope: !380)
!937 = !DILocation(line: 64, column: 9, scope: !380)
!938 = !DILocation(line: 65, column: 5, scope: !380)
!939 = !DILocation(line: 65, column: 12, scope: !380)
!940 = !{!941, !941, i64 0}
!941 = !{!"double", !545, i64 0}
!942 = !DILocation(line: 67, column: 5, scope: !380)
!943 = !DILocation(line: 67, column: 15, scope: !380)
!944 = !DILocation(line: 69, column: 38, scope: !945)
!945 = distinct !DILexicalBlock(scope: !380, file: !352, line: 69, column: 9)
!946 = !DILocation(line: 69, column: 44, scope: !945)
!947 = !DILocation(line: 69, column: 10, scope: !945)
!948 = !DILocation(line: 69, column: 9, scope: !380)
!949 = !DILocation(line: 74, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !945, file: !352, line: 73, column: 5)
!951 = !DILocation(line: 77, column: 9, scope: !952)
!952 = distinct !DILexicalBlock(scope: !380, file: !352, line: 77, column: 9)
!953 = !DILocation(line: 77, column: 17, scope: !952)
!954 = !DILocation(line: 77, column: 9, scope: !380)
!955 = !DILocation(line: 78, column: 17, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !352, line: 77, column: 32)
!957 = !DILocation(line: 79, column: 5, scope: !956)
!958 = !DILocation(line: 81, column: 28, scope: !380)
!959 = !DILocation(line: 81, column: 37, scope: !380)
!960 = !DILocation(line: 81, column: 43, scope: !380)
!961 = !DILocation(line: 81, column: 14, scope: !380)
!962 = !DILocation(line: 81, column: 12, scope: !380)
!963 = !DILocation(line: 83, column: 12, scope: !380)
!964 = !DILocation(line: 83, column: 5, scope: !380)
!965 = !DILocation(line: 84, column: 1, scope: !380)
!966 = !DILocation(line: 94, column: 44, scope: !395)
!967 = !DILocation(line: 94, column: 60, scope: !395)
!968 = !DILocation(line: 95, column: 9, scope: !395)
!969 = !DILocation(line: 98, column: 5, scope: !395)
!970 = !DILocation(line: 98, column: 11, scope: !395)
!971 = !DILocation(line: 100, column: 5, scope: !395)
!972 = !DILocation(line: 100, column: 15, scope: !395)
!973 = !DILocation(line: 102, column: 38, scope: !974)
!974 = distinct !DILexicalBlock(scope: !395, file: !352, line: 102, column: 9)
!975 = !DILocation(line: 102, column: 44, scope: !974)
!976 = !DILocation(line: 102, column: 10, scope: !974)
!977 = !DILocation(line: 102, column: 9, scope: !395)
!978 = !DILocation(line: 104, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !352, line: 103, column: 5)
!980 = !DILocation(line: 107, column: 26, scope: !981)
!981 = distinct !DILexicalBlock(scope: !395, file: !352, line: 107, column: 9)
!982 = !DILocation(line: 107, column: 9, scope: !981)
!983 = !DILocation(line: 107, column: 9, scope: !395)
!984 = !DILocation(line: 108, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !352, line: 107, column: 38)
!986 = !DILocation(line: 109, column: 5, scope: !985)
!987 = !DILocation(line: 110, column: 16, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !352, line: 109, column: 12)
!989 = !DILocation(line: 113, column: 21, scope: !395)
!990 = !DILocation(line: 113, column: 31, scope: !395)
!991 = !DILocation(line: 113, column: 40, scope: !395)
!992 = !DILocation(line: 115, column: 12, scope: !395)
!993 = !DILocation(line: 115, column: 5, scope: !395)
!994 = !DILocation(line: 116, column: 1, scope: !395)
!995 = !DILocation(line: 124, column: 55, scope: !402)
!996 = !DILocation(line: 124, column: 71, scope: !402)
!997 = !DILocation(line: 125, column: 9, scope: !402)
!998 = !DILocation(line: 128, column: 5, scope: !402)
!999 = !DILocation(line: 128, column: 9, scope: !402)
!1000 = !DILocation(line: 129, column: 5, scope: !402)
!1001 = !DILocation(line: 129, column: 9, scope: !402)
!1002 = !DILocation(line: 131, column: 38, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !402, file: !352, line: 131, column: 9)
!1004 = !DILocation(line: 131, column: 44, scope: !1003)
!1005 = !DILocation(line: 131, column: 10, scope: !1003)
!1006 = !DILocation(line: 131, column: 9, scope: !402)
!1007 = !DILocation(line: 133, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !352, line: 132, column: 5)
!1009 = !DILocation(line: 136, column: 38, scope: !402)
!1010 = !DILocation(line: 136, column: 10, scope: !402)
!1011 = !DILocation(line: 136, column: 8, scope: !402)
!1012 = !DILocation(line: 138, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !402, file: !352, line: 138, column: 9)
!1014 = !DILocation(line: 138, column: 12, scope: !1013)
!1015 = !DILocation(line: 138, column: 9, scope: !402)
!1016 = !DILocation(line: 139, column: 25, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !352, line: 138, column: 18)
!1018 = !DILocation(line: 139, column: 9, scope: !1017)
!1019 = !DILocation(line: 140, column: 9, scope: !1017)
!1020 = !DILocation(line: 142, column: 55, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !352, line: 141, column: 12)
!1022 = !DILocation(line: 143, column: 9, scope: !1021)
!1023 = !DILocation(line: 145, column: 1, scope: !402)
!1024 = !DILocation(line: 154, column: 52, scope: !409)
!1025 = !DILocation(line: 154, column: 68, scope: !409)
!1026 = !DILocation(line: 156, column: 5, scope: !409)
!1027 = !DILocation(line: 156, column: 19, scope: !409)
!1028 = !DILocation(line: 157, column: 5, scope: !409)
!1029 = !DILocation(line: 157, column: 15, scope: !409)
!1030 = !DILocation(line: 158, column: 5, scope: !409)
!1031 = !DILocation(line: 158, column: 9, scope: !409)
!1032 = !DILocation(line: 160, column: 27, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !409, file: !352, line: 160, column: 9)
!1034 = !DILocation(line: 160, column: 10, scope: !1033)
!1035 = !DILocation(line: 160, column: 9, scope: !409)
!1036 = !DILocation(line: 161, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !352, line: 160, column: 56)
!1038 = !DILocation(line: 166, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !409, file: !352, line: 166, column: 9)
!1040 = !DILocation(line: 166, column: 14, scope: !1039)
!1041 = !DILocation(line: 166, column: 30, scope: !1039)
!1042 = !DILocation(line: 166, column: 33, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1039, file: !352, discriminator: 1)
!1044 = !DILocation(line: 166, column: 38, scope: !1039)
!1045 = !DILocation(line: 167, column: 13, scope: !1039)
!1046 = !DILocation(line: 167, column: 16, scope: !1043)
!1047 = !DILocation(line: 167, column: 21, scope: !1039)
!1048 = !DILocation(line: 167, column: 40, scope: !1039)
!1049 = !DILocation(line: 167, column: 43, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1039, file: !352, discriminator: 2)
!1051 = !DILocation(line: 167, column: 48, scope: !1039)
!1052 = !DILocation(line: 166, column: 9, scope: !409)
!1053 = !DILocation(line: 168, column: 34, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1039, file: !352, line: 167, column: 70)
!1055 = !DILocation(line: 169, column: 5, scope: !1054)
!1056 = !DILocation(line: 171, column: 38, scope: !409)
!1057 = !DILocation(line: 171, column: 86, scope: !409)
!1058 = !DILocation(line: 171, column: 10, scope: !409)
!1059 = !DILocation(line: 171, column: 8, scope: !409)
!1060 = !DILocation(line: 172, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !409, file: !352, line: 172, column: 9)
!1062 = !DILocation(line: 172, column: 12, scope: !1061)
!1063 = !DILocation(line: 172, column: 9, scope: !409)
!1064 = !DILocation(line: 173, column: 9, scope: !1061)
!1065 = !DILocation(line: 175, column: 51, scope: !409)
!1066 = !DILocation(line: 176, column: 5, scope: !409)
!1067 = !DILocation(line: 177, column: 1, scope: !409)
!1068 = !DILocation(line: 184, column: 54, scope: !418)
!1069 = !DILocation(line: 184, column: 70, scope: !418)
!1070 = !DILocation(line: 186, column: 5, scope: !418)
!1071 = !DILocation(line: 186, column: 15, scope: !418)
!1072 = !DILocation(line: 187, column: 5, scope: !418)
!1073 = !DILocation(line: 187, column: 15, scope: !418)
!1074 = !DILocation(line: 188, column: 5, scope: !418)
!1075 = !DILocation(line: 188, column: 15, scope: !418)
!1076 = !DILocation(line: 189, column: 5, scope: !418)
!1077 = !DILocation(line: 189, column: 15, scope: !418)
!1078 = !DILocation(line: 192, column: 27, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !418, file: !352, line: 192, column: 9)
!1080 = !DILocation(line: 192, column: 10, scope: !1079)
!1081 = !DILocation(line: 192, column: 9, scope: !418)
!1082 = !DILocation(line: 193, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !352, line: 192, column: 63)
!1084 = !DILocation(line: 197, column: 35, scope: !418)
!1085 = !DILocation(line: 197, column: 12, scope: !418)
!1086 = !DILocation(line: 197, column: 10, scope: !418)
!1087 = !DILocation(line: 198, column: 10, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !418, file: !352, line: 198, column: 9)
!1089 = !DILocation(line: 198, column: 9, scope: !418)
!1090 = !DILocation(line: 199, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !352, line: 198, column: 16)
!1092 = !DILocation(line: 202, column: 24, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !418, file: !352, line: 202, column: 9)
!1094 = !DILocation(line: 202, column: 36, scope: !1093)
!1095 = !DILocation(line: 202, column: 42, scope: !1093)
!1096 = !DILocation(line: 202, column: 9, scope: !1093)
!1097 = !DILocation(line: 202, column: 52, scope: !1093)
!1098 = !DILocation(line: 202, column: 9, scope: !418)
!1099 = !DILocation(line: 203, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !352, line: 202, column: 58)
!1101 = !DILocation(line: 206, column: 51, scope: !418)
!1102 = !DILocation(line: 207, column: 12, scope: !418)
!1103 = !DILocation(line: 207, column: 5, scope: !418)
!1104 = !DILocation(line: 209, column: 5, scope: !418)
!1105 = !DILocation(line: 209, column: 10, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !427, file: !352, discriminator: 1)
!1107 = !DILocation(line: 209, column: 20, scope: !427)
!1108 = !DILocation(line: 209, column: 51, scope: !427)
!1109 = !DILocation(line: 209, column: 62, scope: !430)
!1110 = !DILocation(line: 209, column: 78, scope: !430)
!1111 = !DILocation(line: 209, column: 62, scope: !427)
!1112 = !DILocation(line: 209, column: 93, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !430, file: !352, discriminator: 2)
!1114 = !DILocation(line: 209, column: 98, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !429, file: !352, discriminator: 4)
!1116 = !DILocation(line: 209, column: 108, scope: !429)
!1117 = !DILocation(line: 209, column: 138, scope: !429)
!1118 = !DILocation(line: 209, column: 164, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !429, file: !352, line: 209, column: 161)
!1120 = !DILocation(line: 209, column: 181, scope: !1119)
!1121 = !DILocation(line: 209, column: 161, scope: !1119)
!1122 = !DILocation(line: 209, column: 191, scope: !1119)
!1123 = !DILocation(line: 209, column: 161, scope: !429)
!1124 = !DILocation(line: 209, column: 161, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !429, file: !352, discriminator: 5)
!1126 = !DILocation(line: 209, column: 222, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1119, file: !352, discriminator: 6)
!1128 = !DILocation(line: 209, column: 240, scope: !1119)
!1129 = !DILocation(line: 209, column: 250, scope: !1119)
!1130 = !DILocation(line: 209, column: 275, scope: !1119)
!1131 = !DILocation(line: 209, column: 206, scope: !1119)
!1132 = !DILocation(line: 209, column: 294, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !430, file: !352, discriminator: 7)
!1134 = !DILocation(line: 209, column: 294, scope: !429)
!1135 = !DILocation(line: 209, column: 294, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !429, file: !352, discriminator: 8)
!1137 = !DILocation(line: 209, column: 294, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !429, file: !352, discriminator: 9)
!1139 = !DILocation(line: 209, column: 307, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1141, file: !352, discriminator: 10)
!1141 = !DILexicalBlockFile(scope: !418, file: !352, discriminator: 3)
!1142 = !DILocation(line: 209, column: 307, scope: !427)
!1143 = !DILocation(line: 209, column: 307, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !427, file: !352, discriminator: 11)
!1145 = !DILocation(line: 210, column: 12, scope: !418)
!1146 = !DILocation(line: 210, column: 5, scope: !418)
!1147 = !DILocation(line: 211, column: 1, scope: !418)
!1148 = !DILocation(line: 218, column: 55, scope: !431)
!1149 = !DILocation(line: 218, column: 71, scope: !431)
!1150 = !DILocation(line: 220, column: 27, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !431, file: !352, line: 220, column: 9)
!1152 = !DILocation(line: 220, column: 10, scope: !1151)
!1153 = !DILocation(line: 220, column: 9, scope: !431)
!1154 = !DILocation(line: 221, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !352, line: 220, column: 69)
!1156 = !DILocation(line: 224, column: 51, scope: !431)
!1157 = !DILocation(line: 225, column: 5, scope: !431)
!1158 = !DILocation(line: 226, column: 1, scope: !431)
