; ModuleID = './import.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._inittab = type { i8*, %struct._object* ()* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._frozen = type { i8*, i8*, i32 }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct._traceback = type { %struct._object, %struct._traceback*, %struct._frame*, i32, i32 }

@_PyImport_Inittab = external global [0 x %struct._inittab], align 8
@PyImport_Inittab = global %struct._inittab* getelementptr inbounds ([0 x %struct._inittab], [0 x %struct._inittab]* @_PyImport_Inittab, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"__init__\00", align 1
@initstr = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't initialize import variables\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't backup builtins dict\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"meta_path\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"path_importer_cache\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"path_hooks\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"initializing sys.meta_path, sys.path_hooks, or path_importer_cache failed\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"unable to get sys.path_hooks\00", align 1
@Py_VerboseFlag = external global i32, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"# installing zipimport hook\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"zipimport\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"# can't import zipimport\0A\00", align 1
@_PyImportZip_Init.PyId_zipimporter = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), %struct._object* null }, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"zipimporter\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"# can't import zipimport.zipimporter\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"# installed zipimport hook\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"initializing zipimport failed\00", align 1
@import_lock = internal global i8* null, align 8
@import_lock_thread = internal global i64 -1, align 8
@import_lock_level = internal global i32 0, align 4
@extensions = internal global %struct._object* null, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"PyImport_GetModuleDict: no module dictionary!\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"# clear builtins._\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@sys_deletes = internal global [14 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [16 x i8] c"# clear sys.%s\0A\00", align 1
@sys_files = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* null], align 16
@.str.19 = private unnamed_addr constant [18 x i8] c"# restore sys.%s\0A\00", align 1
@PyModule_Type = external global %struct._typeobject, align 8
@.str.20 = private unnamed_addr constant [26 x i8] c"# cleanup[2] removing %U\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"# cleanup[3] wiping %U\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"# cleanup[3] wiping sys\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"# cleanup[3] wiping builtins\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"_RAW_MAGIC_NUMBER\00", align 1
@_PySys_ImplCacheTag = external global i8*, align 8
@.str.25 = private unnamed_addr constant [16 x i8] c"Python/import.c\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"import %U # previously loaded (%R)\0A\00", align 1
@PyImport_ExecCodeModuleWithPathnames.PyId__get_sourcefile = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), %struct._object* null }, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"_get_sourcefile\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"PyImport_ExecCodeModuleWithPathnames: no interpreter!\00", align 1
@PyImport_ExecCodeModuleObject.PyId__fix_up_module = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), %struct._object* null }, align 8
@.str.29 = private unnamed_addr constant [15 x i8] c"_fix_up_module\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@.str.30 = private unnamed_addr constant [32 x i8] c"Excluded frozen object named %R\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [38 x i8] c"frozen object %R is not a code object\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"__path__\00", align 1
@PyImport_ImportModuleLevelObject.PyId___import__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %struct._object* null }, align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"__import__\00", align 1
@PyImport_ImportModuleLevelObject.PyId___spec__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), %struct._object* null }, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"__spec__\00", align 1
@PyImport_ImportModuleLevelObject.PyId__initializing = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), %struct._object* null }, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"_initializing\00", align 1
@PyImport_ImportModuleLevelObject.PyId___package__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), %struct._object* null }, align 8
@.str.36 = private unnamed_addr constant [12 x i8] c"__package__\00", align 1
@PyImport_ImportModuleLevelObject.PyId___path__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._object* null }, align 8
@PyImport_ImportModuleLevelObject.PyId___name__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), %struct._object* null }, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@PyImport_ImportModuleLevelObject.PyId__find_and_load = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), %struct._object* null }, align 8
@.str.38 = private unnamed_addr constant [15 x i8] c"_find_and_load\00", align 1
@PyImport_ImportModuleLevelObject.PyId__handle_fromlist = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), %struct._object* null }, align 8
@.str.39 = private unnamed_addr constant [17 x i8] c"_handle_fromlist\00", align 1
@PyImport_ImportModuleLevelObject.PyId__lock_unlock_module = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), %struct._object* null }, align 8
@.str.40 = private unnamed_addr constant [20 x i8] c"_lock_unlock_module\00", align 1
@PyImport_ImportModuleLevelObject.single_dot = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), %struct._object* null }, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"globals must be a dict\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.43 = private unnamed_addr constant [18 x i8] c"Empty module name\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"module name must be a string\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"level must be >= 0\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"package must be a string\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.47 = private unnamed_addr constant [26 x i8] c"'__name__' not in globals\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"__name__ must be a string\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.49 = private unnamed_addr constant [60 x i8] c"Parent module %R not loaded, cannot perform relative import\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"attempted relative import beyond top-level package\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"__import__ not found\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"import of %R halted; None in sys.modules\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"not holding the import lock\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"%R not in sys.modules as expected\00", align 1
@PyImport_ReloadModule.PyId_reload = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), %struct._object* null }, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"imp\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyImport_Import.silly_list = internal global %struct._object* null, align 8
@PyImport_Import.builtins_str = internal global %struct._object* null, align 8
@PyImport_Import.import_str = internal global %struct._object* null, align 8
@.str.58 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"{OO}\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"OOOOi\00", align 1
@impmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @doc_imp, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([13 x %struct.PyMethodDef], [13 x %struct.PyMethodDef]* @imp_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyImport_ExtendInittab.our_copy = internal global %struct._inittab* null, align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"ps1\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ps2\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"last_type\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"last_value\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"last_traceback\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"__interactivehook__\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"float_info\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"__stdin__\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"__stdout__\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"__stderr__\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"import:  deleting existing key insys.modules failed\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c"Loaded module %R not found in sys.modules\00", align 1
@PyImport_FrozenModules = external global %struct._frozen*, align 8
@.str.80 = private unnamed_addr constant [30 x i8] c"<frozen importlib._bootstrap>\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"_call_with_frames_removed\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"_imp\00", align 1
@doc_imp = internal global [74 x i8] c"(Extremely) low-level import machinery bits as used by importlib and imp.\00", align 16
@imp_methods = internal global [13 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_extension_suffixes to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @_imp_extension_suffixes__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_lock_held to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @_imp_lock_held__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_acquire_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @_imp_acquire_lock__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_release_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @_imp_release_lock__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_get_frozen_object to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @_imp_get_frozen_object__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_frozen_package to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @_imp_is_frozen_package__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_init_builtin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_imp_init_builtin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_init_frozen to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @_imp_init_frozen__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_builtin to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @_imp_is_builtin__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_frozen to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @_imp_is_frozen__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_load_dynamic to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @_imp_load_dynamic__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp__fix_co_filename to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @_imp__fix_co_filename__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [19 x i8] c"extension_suffixes\00", align 1
@_imp_extension_suffixes__doc__ = internal global [105 x i8] c"extension_suffixes($module, /)\0A--\0A\0AReturns the list of file suffixes used to identify extension modules.\00", align 16
@.str.84 = private unnamed_addr constant [10 x i8] c"lock_held\00", align 1
@_imp_lock_held__doc__ = internal global [133 x i8] c"lock_held($module, /)\0A--\0A\0AReturn True if the import lock is currently held, else False.\0A\0AOn platforms without threads, return False.\00", align 16
@.str.85 = private unnamed_addr constant [13 x i8] c"acquire_lock\00", align 1
@_imp_acquire_lock__doc__ = internal global [240 x i8] c"acquire_lock($module, /)\0A--\0A\0AAcquires the interpreter's import lock for the current thread.\0A\0AThis lock should be used by import hooks to ensure thread-safety when importing\0Amodules. On platforms without threads, this function does nothing.\00", align 16
@.str.86 = private unnamed_addr constant [13 x i8] c"release_lock\00", align 1
@_imp_release_lock__doc__ = internal global [127 x i8] c"release_lock($module, /)\0A--\0A\0ARelease the interpreter's import lock.\0A\0AOn platforms without threads, this function does nothing.\00", align 16
@.str.87 = private unnamed_addr constant [18 x i8] c"get_frozen_object\00", align 1
@_imp_get_frozen_object__doc__ = internal global [82 x i8] c"get_frozen_object($module, name, /)\0A--\0A\0ACreate a code object for a frozen module.\00", align 16
@.str.88 = private unnamed_addr constant [18 x i8] c"is_frozen_package\00", align 1
@_imp_is_frozen_package__doc__ = internal global [96 x i8] c"is_frozen_package($module, name, /)\0A--\0A\0AReturns True if the module name is of a frozen package.\00", align 16
@.str.89 = private unnamed_addr constant [13 x i8] c"init_builtin\00", align 1
@_imp_init_builtin__doc__ = internal global [66 x i8] c"init_builtin($module, name, /)\0A--\0A\0AInitializes a built-in module.\00", align 16
@.str.90 = private unnamed_addr constant [12 x i8] c"init_frozen\00", align 1
@_imp_init_frozen__doc__ = internal global [63 x i8] c"init_frozen($module, name, /)\0A--\0A\0AInitializes a frozen module.\00", align 16
@.str.91 = private unnamed_addr constant [11 x i8] c"is_builtin\00", align 1
@_imp_is_builtin__doc__ = internal global [99 x i8] c"is_builtin($module, name, /)\0A--\0A\0AReturns True if the module name corresponds to a built-in module.\00", align 16
@.str.92 = private unnamed_addr constant [10 x i8] c"is_frozen\00", align 1
@_imp_is_frozen__doc__ = internal global [96 x i8] c"is_frozen($module, name, /)\0A--\0A\0AReturns True if the module name corresponds to a frozen module.\00", align 16
@.str.93 = private unnamed_addr constant [13 x i8] c"load_dynamic\00", align 1
@_imp_load_dynamic__doc__ = internal global [79 x i8] c"load_dynamic($module, name, path, file=None, /)\0A--\0A\0ALoads an extension module.\00", align 16
@.str.94 = private unnamed_addr constant [17 x i8] c"_fix_co_filename\00", align 1
@_imp__fix_co_filename__doc__ = internal global [170 x i8] c"_fix_co_filename($module, code, path, /)\0A--\0A\0AChanges code.co_filename to specify the passed-in file path.\0A\0A  code\0A    Code object to change.\0A  path\0A    File path to use.\00", align 16
@_PyImport_DynLoadFiletab = external global [0 x i8*], align 8
@.str.95 = private unnamed_addr constant [20 x i8] c"U:get_frozen_object\00", align 1
@.str.96 = private unnamed_addr constant [31 x i8] c"No such frozen object named %R\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"U:is_frozen_package\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.98 = private unnamed_addr constant [15 x i8] c"U:init_builtin\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"Cannot re-init internal module %R\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"U:init_frozen\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"U:is_builtin\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"U:is_frozen\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"UO&|O:load_dynamic\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.105 = private unnamed_addr constant [21 x i8] c"O!U:_fix_co_filename\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyImport_Init() #0 {
entry:
  %interp = alloca %struct._is*, align 8
  %call = call %struct._ts* @PyThreadState_Get()
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i32 0, i32 2
  %0 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %0, %struct._is** %interp, align 8
  %call2 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** @initstr, align 8
  %1 = load %struct._object*, %struct._object** @initstr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %2, i32 0, i32 5
  %3 = load %struct._object*, %struct._object** %builtins, align 8
  %call3 = call %struct._object* @PyDict_Copy(%struct._object* %3)
  %4 = load %struct._is*, %struct._is** %interp, align 8
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %4, i32 0, i32 13
  store %struct._object* %call3, %struct._object** %builtins_copy, align 8
  %5 = load %struct._is*, %struct._is** %interp, align 8
  %builtins_copy4 = getelementptr inbounds %struct._is, %struct._is* %5, i32 0, i32 13
  %6 = load %struct._object*, %struct._object** %builtins_copy4, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.7:                                         ; preds = %if.end
  ret void
}

declare %struct._ts* @PyThreadState_Get() #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare %struct._object* @PyDict_Copy(%struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_PyImportHooks_Init() #0 {
entry:
  %v = alloca %struct._object*, align 8
  %path_hooks = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct._object* null, %struct._object** %path_hooks, align 8
  store i32 0, i32* %err, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %v, align 8
  %0 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct._object* %1)
  store i32 %call1, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %9 = load i32, i32* %err, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %error

if.end.6:                                         ; preds = %do.end
  %call7 = call %struct._object* @PyDict_New()
  store %struct._object* %call7, %struct._object** %v, align 8
  %10 = load %struct._object*, %struct._object** %v, align 8
  %cmp8 = icmp eq %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %error

if.end.10:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %v, align 8
  %call11 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), %struct._object* %11)
  store i32 %call11, i32* %err, align 4
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.10
  %12 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp13, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %14, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %17(%struct._object* %18)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %19 = load i32, i32* %err, align 4
  %tobool23 = icmp ne i32 %19, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end.22
  br label %error

if.end.25:                                        ; preds = %do.end.22
  %call26 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call26, %struct._object** %path_hooks, align 8
  %20 = load %struct._object*, %struct._object** %path_hooks, align 8
  %cmp27 = icmp eq %struct._object* %20, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  br label %error

if.end.29:                                        ; preds = %if.end.25
  %21 = load %struct._object*, %struct._object** %path_hooks, align 8
  %call30 = call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._object* %21)
  store i32 %call30, i32* %err, align 4
  %22 = load i32, i32* %err, align 4
  %tobool31 = icmp ne i32 %22, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  br label %error

error:                                            ; preds = %if.then.32, %if.then.28, %if.then.24, %if.then.9, %if.then.5, %if.then
  call void @PyErr_Print()
  call void @Py_FatalError(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i32 0, i32 0)) #5
  unreachable

if.end.33:                                        ; preds = %if.end.29
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %23 = load %struct._object*, %struct._object** %path_hooks, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp35, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %25, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %28(%struct._object* %29)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  ret void
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PySys_SetObject(i8*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare void @PyErr_Print() #1

; Function Attrs: nounwind uwtable
define void @_PyImportZip_Init() #0 {
entry:
  %path_hooks = alloca %struct._object*, align 8
  %zimpimport = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %zipimporter = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i32 0, i32* %err, align 4
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %path_hooks, align 8
  %0 = load %struct._object*, %struct._object** %path_hooks, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %error

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %call3 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** %zimpimport, align 8
  %3 = load %struct._object*, %struct._object** %zimpimport, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  call void @PyErr_Clear()
  %4 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  br label %if.end.39

if.else:                                          ; preds = %if.end.2
  %5 = load %struct._object*, %struct._object** %zimpimport, align 8
  %call9 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @_PyImportZip_Init.PyId_zipimporter)
  store %struct._object* %call9, %struct._object** %zipimporter, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %zimpimport, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %13 = load %struct._object*, %struct._object** %zipimporter, align 8
  %cmp14 = icmp eq %struct._object* %13, null
  br i1 %cmp14, label %if.then.15, label %if.else.19

if.then.15:                                       ; preds = %do.end
  call void @PyErr_Clear()
  %14 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.15
  br label %if.end.38

if.else.19:                                       ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %path_hooks, align 8
  %16 = load %struct._object*, %struct._object** %zipimporter, align 8
  %call20 = call i32 @PyList_Insert(%struct._object* %15, i64 0, %struct._object* %16)
  store i32 %call20, i32* %err, align 4
  br label %do.body.21

do.body.21:                                       ; preds = %if.else.19
  %17 = load %struct._object*, %struct._object** %zipimporter, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp22, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %19, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %22(%struct._object* %23)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %24 = load i32, i32* %err, align 4
  %cmp32 = icmp slt i32 %24, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end.31
  br label %error

if.end.34:                                        ; preds = %do.end.31
  %25 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool35 = icmp ne i32 %25, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.34
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.34
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.18
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.8
  ret void

error:                                            ; preds = %if.then.33, %if.then
  call void @PyErr_Print()
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0)) #5
  unreachable
}

declare %struct._object* @PySys_GetObject(i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PySys_WriteStderr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModule(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %pname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %pname, align 8
  %1 = load %struct._object*, %struct._object** %pname, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %pname, align 8
  %call1 = call %struct._object* @PyImport_Import(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %pname, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare void @PyErr_Clear() #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyList_Insert(%struct._object*, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define void @_PyImport_AcquireLock() #0 {
entry:
  %me = alloca i64, align 8
  %tstate = alloca %struct._ts*, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* %me, align 8
  %0 = load i64, i64* %me, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @import_lock, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call3 = call i8* @PyThread_allocate_lock()
  store i8* %call3, i8** @import_lock, align 8
  %2 = load i8*, i8** @import_lock, align 8
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %3 = load i64, i64* @import_lock_thread, align 8
  %4 = load i64, i64* %me, align 8
  %cmp8 = icmp eq i64 %3, %4
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %5 = load i32, i32* @import_lock_level, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* @import_lock_level, align 4
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %6 = load i64, i64* @import_lock_thread, align 8
  %cmp11 = icmp ne i64 %6, -1
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %7 = load i8*, i8** @import_lock, align 8
  %call12 = call i32 @PyThread_acquire_lock(i8* %7, i32 0)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.16, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.10
  %call14 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call14, %struct._ts** %tstate, align 8
  %8 = load i8*, i8** @import_lock, align 8
  %call15 = call i32 @PyThread_acquire_lock(i8* %8, i32 1)
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @PyEval_RestoreThread(%struct._ts* %9)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %lor.lhs.false
  %10 = load i64, i64* %me, align 8
  store i64 %10, i64* @import_lock_thread, align 8
  store i32 1, i32* @import_lock_level, align 4
  br label %return

return:                                           ; preds = %if.end.16, %if.then.9, %if.then.5, %if.then
  ret void
}

declare i64 @PyThread_get_thread_ident() #1

declare i8* @PyThread_allocate_lock() #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyImport_ReleaseLock() #0 {
entry:
  %retval = alloca i32, align 4
  %me = alloca i64, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* %me, align 8
  %0 = load i64, i64* %me, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** @import_lock, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* @import_lock_thread, align 8
  %3 = load i64, i64* %me, align 8
  %cmp2 = icmp ne i64 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* @import_lock_level, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* @import_lock_level, align 4
  %5 = load i32, i32* @import_lock_level, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i64 -1, i64* @import_lock_thread, align 8
  %6 = load i8*, i8** @import_lock, align 8
  call void @PyThread_release_lock(i8* %6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.3, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @PyThread_release_lock(i8*) #1

; Function Attrs: nounwind uwtable
define void @_PyImport_ReInitLock() #0 {
entry:
  %me = alloca i64, align 8
  %0 = load i8*, i8** @import_lock, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @PyThread_allocate_lock()
  store i8* %call, i8** @import_lock, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @import_lock_level, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call i64 @PyThread_get_thread_ident()
  store i64 %call3, i64* %me, align 8
  %2 = load i8*, i8** @import_lock, align 8
  %call4 = call i32 @PyThread_acquire_lock(i8* %2, i32 0)
  %3 = load i64, i64* %me, align 8
  store i64 %3, i64* @import_lock_thread, align 8
  %4 = load i32, i32* @import_lock_level, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* @import_lock_level, align 4
  br label %if.end.5

if.else:                                          ; preds = %if.end
  store i64 -1, i64* @import_lock_thread, align 8
  store i32 0, i32* @import_lock_level, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyImport_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @extensions, align 8
  store %struct._object* %0, %struct._object** %_py_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @extensions, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %9 = load i8*, i8** @import_lock, align 8
  %cmp6 = icmp ne i8* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.5
  %10 = load i8*, i8** @import_lock, align 8
  call void @PyThread_free_lock(i8* %10)
  store i8* null, i8** @import_lock, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.end.5
  ret void
}

declare void @PyThread_free_lock(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_GetModuleDict() #0 {
entry:
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %modules, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %sw.epilog.3
  %14 = load %struct._is*, %struct._is** %interp, align 8
  %modules5 = getelementptr inbounds %struct._is, %struct._is* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %modules5, align 8
  ret %struct._object* %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8
  store i32 %order, i32* %order.addr, align 4
  %0 = load i8*, i8** %address.addr, align 8
  %1 = load i32, i32* %order.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ]

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyImport_Cleanup() #0 {
entry:
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %modules = alloca %struct._object*, align 8
  %weaklist = alloca %struct._object*, align 8
  %p = alloca i8**, align 8
  %wr = alloca %struct._object*, align 8
  %tup = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_xdecref_tmp110 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %tup136 = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  %_py_decref_tmp185 = alloca %struct._object*, align 8
  %_py_decref_tmp207 = alloca %struct._object*, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._is*, %struct._is** %interp, align 8
  %modules6 = getelementptr inbounds %struct._is, %struct._is* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %modules6, align 8
  store %struct._object* %13, %struct._object** %modules, align 8
  store %struct._object* null, %struct._object** %weaklist, align 8
  %14 = load %struct._object*, %struct._object** %modules, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %15 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %16 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %16, i32 0, i32 5
  %17 = load %struct._object*, %struct._object** %builtins, align 8
  %call = call i32 @PyDict_SetItemString(%struct._object* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  store i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @sys_deletes, i32 0, i32 0), i8*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %18 = load i8**, i8*** %p, align 8
  %19 = load i8*, i8** %18, align 8
  %cmp11 = icmp ne i8* %19, null
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  %21 = load i8**, i8*** %p, align 8
  %22 = load i8*, i8** %21, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i8* %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body
  %23 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %23, i32 0, i32 4
  %24 = load %struct._object*, %struct._object** %sysdict, align 8
  %25 = load i8**, i8*** %p, align 8
  %26 = load i8*, i8** %25, align 8
  %call15 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* %26, %struct._object* @_Py_NoneStruct)
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %27 = load i8**, i8*** %p, align 8
  %incdec.ptr = getelementptr i8*, i8** %27, i32 1
  store i8** %incdec.ptr, i8*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @sys_files, i32 0, i32 0), i8*** %p, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.29, %for.end
  %28 = load i8**, i8*** %p, align 8
  %29 = load i8*, i8** %28, align 8
  %cmp17 = icmp ne i8* %29, null
  br i1 %cmp17, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.16
  %30 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool19 = icmp ne i32 %30, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.body.18
  %31 = load i8**, i8*** %p, align 8
  %32 = load i8*, i8** %31, align 8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %32)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %for.body.18
  %33 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict22 = getelementptr inbounds %struct._is, %struct._is* %33, i32 0, i32 4
  %34 = load %struct._object*, %struct._object** %sysdict22, align 8
  %35 = load i8**, i8*** %p, align 8
  %add.ptr = getelementptr i8*, i8** %35, i64 1
  %36 = load i8*, i8** %add.ptr, align 8
  %call23 = call %struct._object* @PyDict_GetItemString(%struct._object* %34, i8* %36)
  store %struct._object* %call23, %struct._object** %value, align 8
  %37 = load %struct._object*, %struct._object** %value, align 8
  %cmp24 = icmp eq %struct._object* %37, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.21
  %38 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict27 = getelementptr inbounds %struct._is, %struct._is* %38, i32 0, i32 4
  %39 = load %struct._object*, %struct._object** %sysdict27, align 8
  %40 = load i8**, i8*** %p, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct._object*, %struct._object** %value, align 8
  %call28 = call i32 @PyDict_SetItemString(%struct._object* %39, i8* %41, %struct._object* %42)
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.26
  %43 = load i8**, i8*** %p, align 8
  %add.ptr30 = getelementptr i8*, i8** %43, i64 2
  store i8** %add.ptr30, i8*** %p, align 8
  br label %for.cond.16

for.end.31:                                       ; preds = %for.cond.16
  %call32 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call32, %struct._object** %weaklist, align 8
  %44 = load %struct._object*, %struct._object** %weaklist, align 8
  %cmp33 = icmp eq %struct._object* %44, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end.31
  call void @PyErr_Clear()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end.31
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %if.end.35
  %45 = load %struct._object*, %struct._object** %modules, align 8
  %call36 = call i32 @PyDict_Next(%struct._object* %45, i64* %pos, %struct._object** %key, %struct._object** %value)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load %struct._object*, %struct._object** %value, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp38 = icmp eq %struct._typeobject* %47, @PyModule_Type
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %48 = load %struct._object*, %struct._object** %value, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %call40 = call i32 @PyType_IsSubtype(%struct._typeobject* %49, %struct._typeobject* @PyModule_Type)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.96

if.then.42:                                       ; preds = %lor.lhs.false, %while.body
  %50 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool43 = icmp ne i32 %50, 0
  br i1 %tobool43, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.then.42
  %51 = load %struct._object*, %struct._object** %key, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 19
  %53 = load i64, i64* %tp_flags, align 8
  %and = and i64 %53, 268435456
  %cmp45 = icmp ne i64 %and, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  %54 = load %struct._object*, %struct._object** %key, align 8
  %55 = load %struct._object*, %struct._object** %value, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), %struct._object* %54, %struct._object* %55)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true, %if.then.42
  %56 = load %struct._object*, %struct._object** %weaklist, align 8
  %cmp48 = icmp ne %struct._object* %56, null
  br i1 %cmp48, label %if.then.49, label %if.end.94

if.then.49:                                       ; preds = %if.end.47
  %57 = load %struct._object*, %struct._object** %value, align 8
  %call51 = call %struct._object* @PyWeakref_NewRef(%struct._object* %57, %struct._object* null)
  store %struct._object* %call51, %struct._object** %wr, align 8
  %58 = load %struct._object*, %struct._object** %key, align 8
  %tobool52 = icmp ne %struct._object* %58, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.70

land.lhs.true.53:                                 ; preds = %if.then.49
  %59 = load %struct._object*, %struct._object** %wr, align 8
  %tobool54 = icmp ne %struct._object* %59, null
  br i1 %tobool54, label %if.then.55, label %if.end.70

if.then.55:                                       ; preds = %land.lhs.true.53
  %60 = load %struct._object*, %struct._object** %key, align 8
  %61 = load %struct._object*, %struct._object** %wr, align 8
  %call57 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %60, %struct._object* %61)
  store %struct._object* %call57, %struct._object** %tup, align 8
  %62 = load %struct._object*, %struct._object** %weaklist, align 8
  %63 = load %struct._object*, %struct._object** %tup, align 8
  %call58 = call i32 @PyList_Append(%struct._object* %62, %struct._object* %63)
  br label %do.body

do.body:                                          ; preds = %if.then.55
  %64 = load %struct._object*, %struct._object** %tup, align 8
  store %struct._object* %64, %struct._object** %_py_xdecref_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp60 = icmp ne %struct._object* %65, null
  br i1 %cmp60, label %if.then.61, label %if.end.68

if.then.61:                                       ; preds = %do.body
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %66 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %66, %struct._object** %_py_decref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %68, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp64 = icmp ne i64 %dec, 0
  br i1 %cmp64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %do.body.62
  br label %if.end.67

if.else:                                          ; preds = %do.body.62
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %71(%struct._object* %72)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.65
  br label %do.end

do.end:                                           ; preds = %if.end.67
  br label %if.end.68

if.end.68:                                        ; preds = %do.end, %do.body
  br label %do.end.69

do.end.69:                                        ; preds = %if.end.68
  br label %if.end.70

if.end.70:                                        ; preds = %do.end.69, %land.lhs.true.53, %if.then.49
  br label %do.body.71

do.body.71:                                       ; preds = %if.end.70
  %73 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp73, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %74, null
  br i1 %cmp74, label %if.then.75, label %if.end.88

if.then.75:                                       ; preds = %do.body.71
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp78, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %77, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.76
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.76
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %80(%struct._object* %81)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.71
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  %call90 = call %struct._object* @PyErr_Occurred()
  %tobool91 = icmp ne %struct._object* %call90, null
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %do.end.89
  call void @PyErr_Clear()
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %do.end.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.47
  %82 = load %struct._object*, %struct._object** %modules, align 8
  %83 = load %struct._object*, %struct._object** %key, align 8
  %call95 = call i32 @PyDict_SetItem(%struct._object* %82, %struct._object* %83, %struct._object* @_Py_NoneStruct)
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.94, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %84 = load %struct._object*, %struct._object** %modules, align 8
  call void @PyDict_Clear(%struct._object* %84)
  %85 = load %struct._is*, %struct._is** %interp, align 8
  %builtins97 = getelementptr inbounds %struct._is, %struct._is* %85, i32 0, i32 5
  %86 = load %struct._object*, %struct._object** %builtins97, align 8
  %call98 = call %struct._object* @PyDict_Copy(%struct._object* %86)
  store %struct._object* %call98, %struct._object** %dict, align 8
  %87 = load %struct._object*, %struct._object** %dict, align 8
  %cmp99 = icmp eq %struct._object* %87, null
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %while.end
  call void @PyErr_Clear()
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %while.end
  %88 = load %struct._is*, %struct._is** %interp, align 8
  %builtins102 = getelementptr inbounds %struct._is, %struct._is* %88, i32 0, i32 5
  %89 = load %struct._object*, %struct._object** %builtins102, align 8
  call void @PyDict_Clear(%struct._object* %89)
  %90 = load %struct._is*, %struct._is** %interp, align 8
  %builtins103 = getelementptr inbounds %struct._is, %struct._is* %90, i32 0, i32 5
  %91 = load %struct._object*, %struct._object** %builtins103, align 8
  %92 = load %struct._is*, %struct._is** %interp, align 8
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %92, i32 0, i32 13
  %93 = load %struct._object*, %struct._object** %builtins_copy, align 8
  %call104 = call i32 @PyDict_Update(%struct._object* %91, %struct._object* %93)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.101
  call void @PyErr_Clear()
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.101
  br label %do.body.108

do.body.108:                                      ; preds = %if.end.107
  %94 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %94, %struct._object** %_py_xdecref_tmp110, align 8
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8
  %cmp111 = icmp ne %struct._object* %95, null
  br i1 %cmp111, label %if.then.112, label %if.end.125

if.then.112:                                      ; preds = %do.body.108
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp110, align 8
  store %struct._object* %96, %struct._object** %_py_decref_tmp115, align 8
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %98, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.113
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 1
  %100 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %100, i32 0, i32 4
  %101 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %101(%struct._object* %102)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %do.body.108
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  call void @_PyState_ClearModules()
  %call127 = call i64 @_PyGC_CollectNoFail()
  call void @_PyGC_DumpShutdownStats()
  %103 = load %struct._object*, %struct._object** %weaklist, align 8
  %cmp128 = icmp ne %struct._object* %103, null
  br i1 %cmp128, label %if.then.129, label %if.end.195

if.then.129:                                      ; preds = %do.end.126
  %104 = load %struct._object*, %struct._object** %weaklist, align 8
  %105 = bitcast %struct._object* %104 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %105, i32 0, i32 1
  %106 = load i64, i64* %ob_size, align 8
  store i64 %106, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.180, %if.then.129
  %107 = load i64, i64* %i, align 8
  %108 = load i64, i64* %n, align 8
  %cmp133 = icmp slt i64 %107, %108
  br i1 %cmp133, label %for.body.134, label %for.end.182

for.body.134:                                     ; preds = %for.cond.132
  %109 = load i64, i64* %i, align 8
  %110 = load %struct._object*, %struct._object** %weaklist, align 8
  %111 = bitcast %struct._object* %110 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %111, i32 0, i32 1
  %112 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %112, i64 %109
  %113 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %113, %struct._object** %tup136, align 8
  %114 = load %struct._object*, %struct._object** %tup136, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyTupleObject*
  %ob_item138 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %115, i32 0, i32 1
  %arrayidx139 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item138, i32 0, i64 0
  %116 = load %struct._object*, %struct._object** %arrayidx139, align 8
  store %struct._object* %116, %struct._object** %name, align 8
  %117 = load %struct._object*, %struct._object** %tup136, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyTupleObject*
  %ob_item141 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %118, i32 0, i32 1
  %arrayidx142 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item141, i32 0, i64 1
  %119 = load %struct._object*, %struct._object** %arrayidx142, align 8
  %120 = bitcast %struct._object* %119 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %120, i32 0, i32 1
  %121 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt143, align 8
  %cmp144 = icmp sgt i64 %122, 0
  br i1 %cmp144, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.134
  %123 = load %struct._object*, %struct._object** %tup136, align 8
  %124 = bitcast %struct._object* %123 to %struct.PyTupleObject*
  %ob_item145 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %124, i32 0, i32 1
  %arrayidx146 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item145, i32 0, i64 1
  %125 = load %struct._object*, %struct._object** %arrayidx146, align 8
  %126 = bitcast %struct._object* %125 to %struct._PyWeakReference*
  %wr_object147 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %126, i32 0, i32 1
  %127 = load %struct._object*, %struct._object** %wr_object147, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.134
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %127, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %mod, align 8
  %128 = load %struct._object*, %struct._object** %mod, align 8
  %cmp148 = icmp eq %struct._object* %128, @_Py_NoneStruct
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %cond.end
  br label %for.inc.180

if.end.150:                                       ; preds = %cond.end
  %129 = load %struct._object*, %struct._object** %mod, align 8
  %call151 = call %struct._object* @PyModule_GetDict(%struct._object* %129)
  store %struct._object* %call151, %struct._object** %dict, align 8
  %130 = load %struct._object*, %struct._object** %dict, align 8
  %131 = load %struct._is*, %struct._is** %interp, align 8
  %builtins152 = getelementptr inbounds %struct._is, %struct._is* %131, i32 0, i32 5
  %132 = load %struct._object*, %struct._object** %builtins152, align 8
  %cmp153 = icmp eq %struct._object* %130, %132
  br i1 %cmp153, label %if.then.157, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.150
  %133 = load %struct._object*, %struct._object** %dict, align 8
  %134 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict155 = getelementptr inbounds %struct._is, %struct._is* %134, i32 0, i32 4
  %135 = load %struct._object*, %struct._object** %sysdict155, align 8
  %cmp156 = icmp eq %struct._object* %133, %135
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %lor.lhs.false.154, %if.end.150
  br label %for.inc.180

if.end.158:                                       ; preds = %lor.lhs.false.154
  %136 = load %struct._object*, %struct._object** %mod, align 8
  %ob_refcnt159 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0
  %137 = load i64, i64* %ob_refcnt159, align 8
  %inc = add i64 %137, 1
  store i64 %inc, i64* %ob_refcnt159, align 8
  %138 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool160 = icmp ne i32 %138, 0
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.167

land.lhs.true.161:                                ; preds = %if.end.158
  %139 = load %struct._object*, %struct._object** %name, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_flags163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 19
  %141 = load i64, i64* %tp_flags163, align 8
  %and164 = and i64 %141, 268435456
  %cmp165 = icmp ne i64 %and164, 0
  br i1 %cmp165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true.161
  %142 = load %struct._object*, %struct._object** %name, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), %struct._object* %142)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %land.lhs.true.161, %if.end.158
  %143 = load %struct._object*, %struct._object** %mod, align 8
  call void @_PyModule_Clear(%struct._object* %143)
  br label %do.body.168

do.body.168:                                      ; preds = %if.end.167
  %144 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %144, %struct._object** %_py_decref_tmp170, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt171, align 8
  %dec172 = add i64 %146, -1
  store i64 %dec172, i64* %ob_refcnt171, align 8
  %cmp173 = icmp ne i64 %dec172, 0
  br i1 %cmp173, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %do.body.168
  br label %if.end.178

if.else.175:                                      ; preds = %do.body.168
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 1
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i32 0, i32 4
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %150 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8
  call void %149(%struct._object* %150)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.174
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %for.inc.180

for.inc.180:                                      ; preds = %do.end.179, %if.then.157, %if.then.149
  %151 = load i64, i64* %i, align 8
  %inc181 = add i64 %151, 1
  store i64 %inc181, i64* %i, align 8
  br label %for.cond.132

for.end.182:                                      ; preds = %for.cond.132
  br label %do.body.183

do.body.183:                                      ; preds = %for.end.182
  %152 = load %struct._object*, %struct._object** %weaklist, align 8
  store %struct._object* %152, %struct._object** %_py_decref_tmp185, align 8
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_refcnt186 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 0
  %154 = load i64, i64* %ob_refcnt186, align 8
  %dec187 = add i64 %154, -1
  store i64 %dec187, i64* %ob_refcnt186, align 8
  %cmp188 = icmp ne i64 %dec187, 0
  br i1 %cmp188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %do.body.183
  br label %if.end.193

if.else.190:                                      ; preds = %do.body.183
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 1
  %156 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8
  %tp_dealloc192 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %156, i32 0, i32 4
  %157 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc192, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp185, align 8
  call void %157(%struct._object* %158)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.189
  br label %do.end.194

do.end.194:                                       ; preds = %if.end.193
  br label %if.end.195

if.end.195:                                       ; preds = %do.end.194, %do.end.126
  %159 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool196 = icmp ne i32 %159, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.195
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %if.end.195
  %160 = load %struct._is*, %struct._is** %interp, align 8
  %sysdict199 = getelementptr inbounds %struct._is, %struct._is* %160, i32 0, i32 4
  %161 = load %struct._object*, %struct._object** %sysdict199, align 8
  call void @_PyModule_ClearDict(%struct._object* %161)
  %162 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool200 = icmp ne i32 %162, 0
  br i1 %tobool200, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.198
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.end.198
  %163 = load %struct._is*, %struct._is** %interp, align 8
  %builtins203 = getelementptr inbounds %struct._is, %struct._is* %163, i32 0, i32 5
  %164 = load %struct._object*, %struct._object** %builtins203, align 8
  call void @_PyModule_ClearDict(%struct._object* %164)
  %165 = load %struct._is*, %struct._is** %interp, align 8
  %modules204 = getelementptr inbounds %struct._is, %struct._is* %165, i32 0, i32 2
  store %struct._object* null, %struct._object** %modules204, align 8
  br label %do.body.205

do.body.205:                                      ; preds = %if.end.202
  %166 = load %struct._object*, %struct._object** %modules, align 8
  store %struct._object* %166, %struct._object** %_py_decref_tmp207, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 0
  %168 = load i64, i64* %ob_refcnt208, align 8
  %dec209 = add i64 %168, -1
  store i64 %dec209, i64* %ob_refcnt208, align 8
  %cmp210 = icmp ne i64 %dec209, 0
  br i1 %cmp210, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %do.body.205
  br label %if.end.215

if.else.212:                                      ; preds = %do.body.205
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_type213 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 1
  %170 = load %struct._typeobject*, %struct._typeobject** %ob_type213, align 8
  %tp_dealloc214 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %170, i32 0, i32 4
  %171 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc214, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  call void %171(%struct._object* %172)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.211
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  %call217 = call i64 @_PyGC_CollectNoFail()
  br label %return

return:                                           ; preds = %do.end.216, %if.then
  ret void
}

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare void @PySys_FormatStderr(i8*, ...) #1

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyDict_Clear(%struct._object*) #1

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #1

declare void @_PyState_ClearModules() #1

declare i64 @_PyGC_CollectNoFail() #1

declare void @_PyGC_DumpShutdownStats() #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare void @_PyModule_Clear(%struct._object*) #1

declare void @_PyModule_ClearDict(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i64 @PyImport_GetMagicNumber() #0 {
entry:
  %retval = alloca i64, align 8
  %res = alloca i64, align 8
  %interp = alloca %struct._is*, align 8
  %pyc_magic = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._ts* @PyThreadState_Get()
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i32 0, i32 2
  %0 = load %struct._is*, %struct._is** %interp1, align 8
  store %struct._is* %0, %struct._is** %interp, align 8
  %1 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %1, i32 0, i32 6
  %2 = load %struct._object*, %struct._object** %importlib, align 8
  %call2 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %pyc_magic, align 8
  %3 = load %struct._object*, %struct._object** %pyc_magic, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %pyc_magic, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %4)
  store i64 %call3, i64* %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %pyc_magic, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %12 = load i64, i64* %res, align 8
  store i64 %12, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i8* @PyImport_GetMagicTag() #0 {
entry:
  %0 = load i8*, i8** @_PySys_ImplCacheTag, align 8
  ret i8* %0
}

; Function Attrs: nounwind uwtable
define i32 @_PyImport_FixupExtensionObject(%struct._object* %mod, %struct._object* %name, %struct._object* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %def = alloca %struct.PyModuleDef*, align 8
  %res = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %0 = load %struct._object*, %struct._object** @extensions, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** @extensions, align 8
  %1 = load %struct._object*, %struct._object** @extensions, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** %mod.addr, align 8
  %cmp4 = icmp eq %struct._object* %2, null
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %3 = load %struct._object*, %struct._object** %mod.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp5 = icmp eq %struct._typeobject* %4, @PyModule_Type
  br i1 %cmp5, label %if.end.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %mod.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %call8 = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.end.3
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 597)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call11 = call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %7)
  store %struct.PyModuleDef* %call11, %struct.PyModuleDef** %def, align 8
  %8 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %tobool12 = icmp ne %struct.PyModuleDef* %8, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 602)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %call15 = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call15, %struct._object** %modules, align 8
  %9 = load %struct._object*, %struct._object** %modules, align 8
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %11 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call16 = call i32 @PyDict_SetItem(%struct._object* %9, %struct._object* %10, %struct._object* %11)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %12 = load %struct._object*, %struct._object** %mod.addr, align 8
  %13 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %call20 = call i32 @_PyState_AddModule(%struct._object* %12, %struct.PyModuleDef* %13)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %14 = load %struct._object*, %struct._object** %modules, align 8
  %15 = load %struct._object*, %struct._object** %name.addr, align 8
  %call23 = call i32 @PyDict_DelItem(%struct._object* %14, %struct._object* %15)
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %16 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %16, i32 0, i32 3
  %17 = load i64, i64* %m_size, align 8
  %cmp25 = icmp eq i64 %17, -1
  br i1 %cmp25, label %if.then.26, label %if.end.55

if.then.26:                                       ; preds = %if.end.24
  %18 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %18, i32 0, i32 0
  %m_copy = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %m_copy, align 8
  %tobool27 = icmp ne %struct._object* %19, null
  br i1 %tobool27, label %if.then.28, label %if.end.42

if.then.28:                                       ; preds = %if.then.26
  br label %do.body

do.body:                                          ; preds = %if.then.28
  %20 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base29 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %20, i32 0, i32 0
  %m_copy30 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base29, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %m_copy30, align 8
  store %struct._object* %21, %struct._object** %_py_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp31 = icmp ne %struct._object* %22, null
  br i1 %cmp31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %do.body
  %23 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base33 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %23, i32 0, i32 0
  %m_copy34 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base33, i32 0, i32 3
  store %struct._object* null, %struct._object** %m_copy34, align 8
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.32
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp36 = icmp ne i64 %dec, 0
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else:                                          ; preds = %do.body.35
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.37
  br label %do.end

do.end:                                           ; preds = %if.end.39
  br label %if.end.40

if.end.40:                                        ; preds = %do.end, %do.body
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %if.then.26
  %31 = load %struct._object*, %struct._object** %mod.addr, align 8
  %call43 = call %struct._object* @PyModule_GetDict(%struct._object* %31)
  store %struct._object* %call43, %struct._object** %dict, align 8
  %32 = load %struct._object*, %struct._object** %dict, align 8
  %cmp44 = icmp eq %struct._object* %32, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.42
  %33 = load %struct._object*, %struct._object** %dict, align 8
  %call47 = call %struct._object* @PyDict_Copy(%struct._object* %33)
  %34 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base48 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %34, i32 0, i32 0
  %m_copy49 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base48, i32 0, i32 3
  store %struct._object* %call47, %struct._object** %m_copy49, align 8
  %35 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base50 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %35, i32 0, i32 0
  %m_copy51 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base50, i32 0, i32 3
  %36 = load %struct._object*, %struct._object** %m_copy51, align 8
  %cmp52 = icmp eq %struct._object* %36, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.46
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.24
  %37 = load %struct._object*, %struct._object** %filename.addr, align 8
  %38 = load %struct._object*, %struct._object** %name.addr, align 8
  %call56 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %37, %struct._object* %38)
  store %struct._object* %call56, %struct._object** %key, align 8
  %39 = load %struct._object*, %struct._object** %key, align 8
  %cmp57 = icmp eq %struct._object* %39, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  %40 = load %struct._object*, %struct._object** @extensions, align 8
  %41 = load %struct._object*, %struct._object** %key, align 8
  %42 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %43 = bitcast %struct.PyModuleDef* %42 to %struct._object*
  %call60 = call i32 @PyDict_SetItem(%struct._object* %40, %struct._object* %41, %struct._object* %43)
  store i32 %call60, i32* %res, align 4
  br label %do.body.61

do.body.61:                                       ; preds = %if.end.59
  %44 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp62, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %46, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %49(%struct._object* %50)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  %51 = load i32, i32* %res, align 4
  %cmp72 = icmp slt i32 %51, 0
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %do.end.71
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %do.end.71
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.73, %if.then.58, %if.then.53, %if.then.45, %if.then.22, %if.then.18, %if.then.13, %if.then.9, %if.then.2
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct.PyModuleDef* @PyModule_GetDef(%struct._object*) #1

declare i32 @_PyState_AddModule(%struct._object*, %struct.PyModuleDef*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyImport_FixupBuiltin(%struct._object* %mod, i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %nameobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %mod, %struct._object** %mod.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_InternFromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %mod.addr, align 8
  %3 = load %struct._object*, %struct._object** %nameobj, align 8
  %4 = load %struct._object*, %struct._object** %nameobj, align 8
  %call1 = call i32 @_PyImport_FixupExtensionObject(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load i32, i32* %res, align 4
  store i32 %12, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_FindExtensionObject(%struct._object* %name, %struct._object* %filename) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %mdict = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %def = alloca %struct.PyModuleDef*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  %0 = load %struct._object*, %struct._object** @extensions, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %key, align 8
  %3 = load %struct._object*, %struct._object** %key, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @extensions, align 8
  %5 = load %struct._object*, %struct._object** %key, align 8
  %call4 = call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %5)
  %6 = bitcast %struct._object* %call4 to %struct.PyModuleDef*
  store %struct.PyModuleDef* %6, %struct.PyModuleDef** %def, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %14 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %cmp8 = icmp eq %struct.PyModuleDef* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %do.end
  %15 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %15, i32 0, i32 3
  %16 = load i64, i64* %m_size, align 8
  %cmp11 = icmp eq i64 %16, -1
  br i1 %cmp11, label %if.then.12, label %if.else.29

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %17, i32 0, i32 0
  %m_copy = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 3
  %18 = load %struct._object*, %struct._object** %m_copy, align 8
  %cmp13 = icmp eq %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.12
  %19 = load %struct._object*, %struct._object** %name.addr, align 8
  %call16 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %19)
  store %struct._object* %call16, %struct._object** %mod, align 8
  %20 = load %struct._object*, %struct._object** %mod, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %21 = load %struct._object*, %struct._object** %mod, align 8
  %call20 = call %struct._object* @PyModule_GetDict(%struct._object* %21)
  store %struct._object* %call20, %struct._object** %mdict, align 8
  %22 = load %struct._object*, %struct._object** %mdict, align 8
  %cmp21 = icmp eq %struct._object* %22, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %23 = load %struct._object*, %struct._object** %mdict, align 8
  %24 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base24 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %24, i32 0, i32 0
  %m_copy25 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %m_copy25, align 8
  %call26 = call i32 @PyDict_Update(%struct._object* %23, %struct._object* %25)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  br label %if.end.67

if.else.29:                                       ; preds = %if.end.10
  %26 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base30 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %26, i32 0, i32 0
  %m_init = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base30, i32 0, i32 1
  %27 = load %struct._object* ()*, %struct._object* ()** %m_init, align 8
  %cmp31 = icmp eq %struct._object* ()* %27, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.else.29
  %28 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base34 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %28, i32 0, i32 0
  %m_init35 = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base34, i32 0, i32 1
  %29 = load %struct._object* ()*, %struct._object* ()** %m_init35, align 8
  %call36 = call %struct._object* %29()
  store %struct._object* %call36, %struct._object** %mod, align 8
  %30 = load %struct._object*, %struct._object** %mod, align 8
  %cmp37 = icmp eq %struct._object* %30, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.33
  %call40 = call %struct._object* @PyImport_GetModuleDict()
  %31 = load %struct._object*, %struct._object** %name.addr, align 8
  %32 = load %struct._object*, %struct._object** %mod, align 8
  %call41 = call i32 @PyDict_SetItem(%struct._object* %call40, %struct._object* %31, %struct._object* %32)
  %cmp42 = icmp eq i32 %call41, -1
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %if.end.39
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %33 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp45, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %35, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %38(%struct._object* %39)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.39
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  %40 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp57, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %42, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %45(%struct._object* %46)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %if.end.28
  %47 = load %struct._object*, %struct._object** %mod, align 8
  %48 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %call68 = call i32 @_PyState_AddModule(%struct._object* %47, %struct.PyModuleDef* %48)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.70, label %if.end.84

if.then.70:                                       ; preds = %if.end.67
  %call71 = call %struct._object* @PyImport_GetModuleDict()
  %49 = load %struct._object*, %struct._object** %name.addr, align 8
  %call72 = call i32 @PyDict_DelItem(%struct._object* %call71, %struct._object* %49)
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.70
  %50 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp74, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %52, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %55(%struct._object* %56)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.84:                                        ; preds = %if.end.67
  %57 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool85 = icmp ne i32 %57, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.84
  %58 = load %struct._object*, %struct._object** %name.addr, align 8
  %59 = load %struct._object*, %struct._object** %filename.addr, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), %struct._object* %58, %struct._object* %59)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.84
  %60 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %60, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.87, %do.end.83, %do.end.54, %if.then.38, %if.then.32, %if.then.27, %if.then.22, %if.then.18, %if.then.14, %if.then.9, %if.then.2, %if.then
  %61 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %61
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_AddModuleObject(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call, %struct._object** %modules, align 8
  %0 = load %struct._object*, %struct._object** %modules, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call1, %struct._object** %m, align 8
  %cmp = icmp ne %struct._object* %call1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyModule_Type
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %m, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %call4 = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyModule_Type)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %name.addr, align 8
  %call5 = call %struct._object* @PyModule_NewObject(%struct._object* %7)
  store %struct._object* %call5, %struct._object** %m, align 8
  %8 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %modules, align 8
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %9, %struct._object* %10, %struct._object* %11)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %12 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.16
  %19 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %21, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %24(%struct._object* %25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %26 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end, %if.then.7, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_FindBuiltin(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %res = alloca %struct._object*, align 8
  %nameobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_InternFromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %3 = load %struct._object*, %struct._object** %nameobj, align 8
  %call1 = call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

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
  %11 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare %struct._object* @PyModule_NewObject(%struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_AddModule(i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %nameobj = alloca %struct._object*, align 8
  %module = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %call1 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %module, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %module, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModule(i8* %name, %struct._object* %co) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %co.addr = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %co, %struct._object** %co.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct._object*, %struct._object** %co.addr, align 8
  %call = call %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %0, %struct._object* %1, i8* null, i8* null)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %name, %struct._object* %co, i8* %pathname, i8* %cpathname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %co.addr = alloca %struct._object*, align 8
  %pathname.addr = alloca i8*, align 8
  %cpathname.addr = alloca i8*, align 8
  %m = alloca %struct._object*, align 8
  %nameobj = alloca %struct._object*, align 8
  %pathobj = alloca %struct._object*, align 8
  %cpathobj = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %co, %struct._object** %co.addr, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  store i8* %cpathname, i8** %cpathname.addr, align 8
  store %struct._object* null, %struct._object** %m, align 8
  store %struct._object* null, %struct._object** %pathobj, align 8
  store %struct._object* null, %struct._object** %cpathobj, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %cpathname.addr, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %cpathname.addr, align 8
  %call3 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %3)
  store %struct._object* %call3, %struct._object** %cpathobj, align 8
  %4 = load %struct._object*, %struct._object** %cpathobj, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  br label %error

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.else:                                          ; preds = %if.end
  store %struct._object* null, %struct._object** %cpathobj, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.end.6
  %5 = load i8*, i8** %pathname.addr, align 8
  %cmp8 = icmp ne i8* %5, null
  br i1 %cmp8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %if.end.7
  %6 = load i8*, i8** %pathname.addr, align 8
  %call10 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %6)
  store %struct._object* %call10, %struct._object** %pathobj, align 8
  %7 = load %struct._object*, %struct._object** %pathobj, align 8
  %cmp11 = icmp eq %struct._object* %7, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  br label %error

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.30

if.else.14:                                       ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %cpathobj, align 8
  %cmp15 = icmp ne %struct._object* %8, null
  br i1 %cmp15, label %if.then.16, label %if.else.28

if.then.16:                                       ; preds = %if.else.14
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %9 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %9, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %10 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %11 = bitcast %struct._Py_atomic_address* %10 to i8*
  %12 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %11, i32 %12)
  %13 = load i32, i32* %order, align 4
  switch i32 %13, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.16, %if.then.16, %if.then.16
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %14 = load i8**, i8*** %volatile_data, align 8
  %15 = load volatile i8*, i8** %14, align 8
  store i8* %15, i8** %result, align 8
  %16 = load i32, i32* %order, align 4
  switch i32 %16, label %sw.default.18 [
    i32 1, label %sw.bb.17
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.17
  ]

sw.bb.17:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.19

sw.default.18:                                    ; preds = %sw.epilog
  br label %sw.epilog.19

sw.epilog.19:                                     ; preds = %sw.default.18, %sw.bb.17
  %17 = load i8*, i8** %result, align 8
  store i8* %17, i8** %tmp
  %18 = load i8*, i8** %tmp
  %19 = bitcast i8* %18 to %struct._ts*
  %interp20 = getelementptr inbounds %struct._ts, %struct._ts* %19, i32 0, i32 2
  %20 = load %struct._is*, %struct._is** %interp20, align 8
  store %struct._is* %20, %struct._is** %interp, align 8
  %21 = load %struct._is*, %struct._is** %interp, align 8
  %cmp21 = icmp eq %struct._is* %21, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.epilog.19
  call void @Py_FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0)) #5
  unreachable

if.end.23:                                        ; preds = %sw.epilog.19
  %22 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %22, i32 0, i32 6
  %23 = load %struct._object*, %struct._object** %importlib, align 8
  %24 = load %struct._object*, %struct._object** %cpathobj, align 8
  %call24 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %23, %struct._Py_Identifier* @PyImport_ExecCodeModuleWithPathnames.PyId__get_sourcefile, %struct._object* %24, i8* null)
  store %struct._object* %call24, %struct._object** %pathobj, align 8
  %25 = load %struct._object*, %struct._object** %pathobj, align 8
  %cmp25 = icmp eq %struct._object* %25, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  call void @PyErr_Clear()
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  br label %if.end.29

if.else.28:                                       ; preds = %if.else.14
  store %struct._object* null, %struct._object** %pathobj, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.13
  %26 = load %struct._object*, %struct._object** %nameobj, align 8
  %27 = load %struct._object*, %struct._object** %co.addr, align 8
  %28 = load %struct._object*, %struct._object** %pathobj, align 8
  %29 = load %struct._object*, %struct._object** %cpathobj, align 8
  %call31 = call %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %26, %struct._object* %27, %struct._object* %28, %struct._object* %29)
  store %struct._object* %call31, %struct._object** %m, align 8
  br label %error

error:                                            ; preds = %if.end.30, %if.then.12, %if.then.5
  br label %do.body

do.body:                                          ; preds = %error
  %30 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body
  br label %if.end.36

if.else.35:                                       ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %do.body.37

do.body.37:                                       ; preds = %do.end
  %37 = load %struct._object*, %struct._object** %pathobj, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp39 = icmp ne %struct._object* %38, null
  br i1 %cmp39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %do.body.37
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.40
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp43, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %41, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.41
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.41
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %44(%struct._object* %45)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.body.37
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %46 = load %struct._object*, %struct._object** %cpathobj, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp57, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  %cmp58 = icmp ne %struct._object* %47, null
  br i1 %cmp58, label %if.then.59, label %if.end.72

if.then.59:                                       ; preds = %do.body.55
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp62, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %50, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.60
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %53(%struct._object* %54)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.55
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %55 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %55, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.73, %if.then
  %56 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %56
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleEx(i8* %name, %struct._object* %co, i8* %pathname) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %co.addr = alloca %struct._object*, align 8
  %pathname.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %co, %struct._object** %co.addr, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load %struct._object*, %struct._object** %co.addr, align 8
  %2 = load i8*, i8** %pathname.addr, align 8
  %call = call %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %0, %struct._object* %1, i8* %2, i8* null)
  ret %struct._object* %call
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare %struct._object* @_PyObject_CallMethodIdObjArgs(%struct._object*, %struct._Py_Identifier*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %name, %struct._object* %co, %struct._object* %pathname, %struct._object* %cpathname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %co.addr = alloca %struct._object*, align 8
  %pathname.addr = alloca %struct._object*, align 8
  %cpathname.addr = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %co, %struct._object** %co.addr, align 8
  store %struct._object* %pathname, %struct._object** %pathname.addr, align 8
  store %struct._object* %cpathname, %struct._object** %cpathname.addr, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @module_dict_for_exec(%struct._object* %12)
  store %struct._object* %call, %struct._object** %d, align 8
  %13 = load %struct._object*, %struct._object** %d, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %14 = load %struct._object*, %struct._object** %pathname.addr, align 8
  %cmp5 = icmp eq %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %co.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyCodeObject*
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %16, i32 0, i32 13
  %17 = load %struct._object*, %struct._object** %co_filename, align 8
  store %struct._object* %17, %struct._object** %pathname.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %18 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %18, i32 0, i32 6
  %19 = load %struct._object*, %struct._object** %importlib, align 8
  %20 = load %struct._object*, %struct._object** %d, align 8
  %21 = load %struct._object*, %struct._object** %name.addr, align 8
  %22 = load %struct._object*, %struct._object** %pathname.addr, align 8
  %23 = load %struct._object*, %struct._object** %cpathname.addr, align 8
  %call8 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %19, %struct._Py_Identifier* @PyImport_ExecCodeModuleObject.PyId__fix_up_module, %struct._object* %20, %struct._object* %21, %struct._object* %22, %struct._object* %23, i8* null)
  store %struct._object* %call8, %struct._object** %res, align 8
  %24 = load %struct._object*, %struct._object** %res, align 8
  %cmp9 = icmp ne %struct._object* %24, null
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %25 = load %struct._object*, %struct._object** %name.addr, align 8
  %26 = load %struct._object*, %struct._object** %d, align 8
  %27 = load %struct._object*, %struct._object** %co.addr, align 8
  %call11 = call %struct._object* @exec_code_in_module(%struct._object* %25, %struct._object* %26, %struct._object* %27)
  store %struct._object* %call11, %struct._object** %res, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  %28 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @module_dict_for_exec(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* null, %struct._object** %d, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyImport_AddModuleObject(%struct._object* %0)
  store %struct._object* %call, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %d, align 8
  %3 = load %struct._object*, %struct._object** %d, align 8
  %call2 = call %struct._object* @PyDict_GetItemString(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0))
  %cmp3 = icmp eq %struct._object* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %d, align 8
  %call5 = call %struct._object* @PyEval_GetBuiltins()
  %call6 = call i32 @PyDict_SetItemString(%struct._object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), %struct._object* %call5)
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.4
  %5 = load %struct._object*, %struct._object** %name.addr, align 8
  call void @remove_module(%struct._object* %5)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %6 = load %struct._object*, %struct._object** %d, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.8, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @exec_code_in_module(%struct._object* %name, %struct._object* %module_dict, %struct._object* %code_object) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %module_dict.addr = alloca %struct._object*, align 8
  %code_object.addr = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %module_dict, %struct._object** %module_dict.addr, align 8
  store %struct._object* %code_object, %struct._object** %code_object.addr, align 8
  %call = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call, %struct._object** %modules, align 8
  %0 = load %struct._object*, %struct._object** %code_object.addr, align 8
  %1 = load %struct._object*, %struct._object** %module_dict.addr, align 8
  %2 = load %struct._object*, %struct._object** %module_dict.addr, align 8
  %call1 = call %struct._object* @PyEval_EvalCode(%struct._object* %0, %struct._object* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  call void @remove_module(%struct._object* %4)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %modules, align 8
  %13 = load %struct._object*, %struct._object** %name.addr, align 8
  %call5 = call %struct._object* @PyDict_GetItem(%struct._object* %12, %struct._object* %13)
  store %struct._object* %call5, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end
  %14 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %15 = load %struct._object*, %struct._object** %name.addr, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.79, i32 0, i32 0), %struct._object* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %do.end
  %16 = load %struct._object*, %struct._object** %m, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt10, align 8
  %18 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_GetImporter(%struct._object* %path) #0 {
entry:
  %path.addr = alloca %struct._object*, align 8
  %importer = alloca %struct._object*, align 8
  %path_importer_cache = alloca %struct._object*, align 8
  %path_hooks = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  store %struct._object* null, %struct._object** %importer, align 8
  store %struct._object* null, %struct._object** %path_importer_cache, align 8
  store %struct._object* null, %struct._object** %path_hooks, align 8
  %call = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %path_importer_cache, align 8
  %call1 = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %path_hooks, align 8
  %0 = load %struct._object*, %struct._object** %path_importer_cache, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %path_hooks, align 8
  %cmp2 = icmp ne %struct._object* %1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** %path_importer_cache, align 8
  %3 = load %struct._object*, %struct._object** %path_hooks, align 8
  %4 = load %struct._object*, %struct._object** %path.addr, align 8
  %call3 = call %struct._object* @get_path_importer(%struct._object* %2, %struct._object* %3, %struct._object* %4)
  store %struct._object* %call3, %struct._object** %importer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %9 = load %struct._object*, %struct._object** %importer, align 8
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_path_importer(%struct._object* %path_importer_cache, %struct._object* %path_hooks, %struct._object* %p) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %path_importer_cache.addr = alloca %struct._object*, align 8
  %path_hooks.addr = alloca %struct._object*, align 8
  %p.addr = alloca %struct._object*, align 8
  %importer = alloca %struct._object*, align 8
  %j = alloca i64, align 8
  %nhooks = alloca i64, align 8
  %hook = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %path_importer_cache, %struct._object** %path_importer_cache.addr, align 8
  store %struct._object* %path_hooks, %struct._object** %path_hooks.addr, align 8
  store %struct._object* %p, %struct._object** %p.addr, align 8
  %0 = load %struct._object*, %struct._object** %path_hooks.addr, align 8
  %call = call i64 @PyList_Size(%struct._object* %0)
  store i64 %call, i64* %nhooks, align 8
  %1 = load i64, i64* %nhooks, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %path_importer_cache.addr, align 8
  %3 = load %struct._object*, %struct._object** %p.addr, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %importer, align 8
  %4 = load %struct._object*, %struct._object** %importer, align 8
  %cmp2 = icmp ne %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %path_importer_cache.addr, align 8
  %7 = load %struct._object*, %struct._object** %p.addr, align 8
  %call5 = call i32 @PyDict_SetItem(%struct._object* %6, %struct._object* %7, %struct._object* @_Py_NoneStruct)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %nhooks, align 8
  %cmp9 = icmp slt i64 %8, %9
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._object*, %struct._object** %path_hooks.addr, align 8
  %11 = load i64, i64* %j, align 8
  %call10 = call %struct._object* @PyList_GetItem(%struct._object* %10, i64 %11)
  store %struct._object* %call10, %struct._object** %hook, align 8
  %12 = load %struct._object*, %struct._object** %hook, align 8
  %cmp11 = icmp eq %struct._object* %12, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  %13 = load %struct._object*, %struct._object** %hook, align 8
  %14 = load %struct._object*, %struct._object** %p.addr, align 8
  %call14 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %13, %struct._object* %14, i8* null)
  store %struct._object* %call14, %struct._object** %importer, align 8
  %15 = load %struct._object*, %struct._object** %importer, align 8
  %cmp15 = icmp ne %struct._object* %15, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %for.end

if.end.17:                                        ; preds = %if.end.13
  %16 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %call18 = call i32 @PyErr_ExceptionMatches(%struct._object* %16)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %if.end.17
  call void @PyErr_Clear()
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %17 = load i64, i64* %j, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %18 = load %struct._object*, %struct._object** %importer, align 8
  %cmp21 = icmp eq %struct._object* %18, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %for.end
  %19 = load %struct._object*, %struct._object** %importer, align 8
  %cmp24 = icmp ne %struct._object* %19, null
  br i1 %cmp24, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %if.end.23
  %20 = load %struct._object*, %struct._object** %path_importer_cache.addr, align 8
  %21 = load %struct._object*, %struct._object** %p.addr, align 8
  %22 = load %struct._object*, %struct._object** %importer, align 8
  %call26 = call i32 @PyDict_SetItem(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  store i32 %call26, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %23 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %30 = load i32, i32* %err, align 4
  %cmp30 = icmp ne i32 %30, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %do.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.23
  %31 = load %struct._object*, %struct._object** %importer, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.31, %if.then.22, %if.then.19, %if.then.12, %if.then.7, %if.then.3, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

; Function Attrs: nounwind uwtable
define i32 @PyImport_ImportFrozenModuleObject(%struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._frozen*, align 8
  %co = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %ispackage = alloca i32, align 4
  %size = alloca i32, align 4
  %l = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._frozen* @find_frozen(%struct._object* %0)
  store %struct._frozen* %call, %struct._frozen** %p, align 8
  %1 = load %struct._frozen*, %struct._frozen** %p, align 8
  %cmp = icmp eq %struct._frozen* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._frozen*, %struct._frozen** %p, align 8
  %code = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i32 0, i32 1
  %3 = load i8*, i8** %code, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %5 = load %struct._object*, %struct._object** %name.addr, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), %struct._object* %5)
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct._frozen*, %struct._frozen** %p, align 8
  %size5 = getelementptr inbounds %struct._frozen, %struct._frozen* %6, i32 0, i32 2
  %7 = load i32, i32* %size5, align 4
  store i32 %7, i32* %size, align 4
  %8 = load i32, i32* %size, align 4
  %cmp6 = icmp slt i32 %8, 0
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %ispackage, align 4
  %9 = load i32, i32* %ispackage, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %10 = load i32, i32* %size, align 4
  %sub = sub i32 0, %10
  store i32 %sub, i32* %size, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %11 = load %struct._frozen*, %struct._frozen** %p, align 8
  %code9 = getelementptr inbounds %struct._frozen, %struct._frozen* %11, i32 0, i32 1
  %12 = load i8*, i8** %code9, align 8
  %13 = load i32, i32* %size, align 4
  %conv10 = sext i32 %13 to i64
  %call11 = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %12, i64 %conv10)
  store %struct._object* %call11, %struct._object** %co, align 8
  %14 = load %struct._object*, %struct._object** %co, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %co, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp16 = icmp eq %struct._typeobject* %16, @PyCode_Type
  br i1 %cmp16, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %18 = load %struct._object*, %struct._object** %name.addr, align 8
  %call19 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i32 0, i32 0), %struct._object* %18)
  br label %err_return

if.end.20:                                        ; preds = %if.end.15
  %19 = load i32, i32* %ispackage, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.end.44

if.then.22:                                       ; preds = %if.end.20
  %20 = load %struct._object*, %struct._object** %name.addr, align 8
  %call23 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %20)
  store %struct._object* %call23, %struct._object** %m, align 8
  %21 = load %struct._object*, %struct._object** %m, align 8
  %cmp24 = icmp eq %struct._object* %21, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  br label %err_return

if.end.27:                                        ; preds = %if.then.22
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call28 = call %struct._object* @PyModule_GetDict(%struct._object* %22)
  store %struct._object* %call28, %struct._object** %d, align 8
  %call29 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call29, %struct._object** %l, align 8
  %23 = load %struct._object*, %struct._object** %l, align 8
  %cmp30 = icmp eq %struct._object* %23, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  br label %err_return

if.end.33:                                        ; preds = %if.end.27
  %24 = load %struct._object*, %struct._object** %d, align 8
  %25 = load %struct._object*, %struct._object** %l, align 8
  %call34 = call i32 @PyDict_SetItemString(%struct._object* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._object* %25)
  store i32 %call34, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.33
  %26 = load %struct._object*, %struct._object** %l, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %do.body
  br label %if.end.39

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.37
  br label %do.end

do.end:                                           ; preds = %if.end.39
  %33 = load i32, i32* %err, align 4
  %cmp40 = icmp ne i32 %33, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.end
  br label %err_return

if.end.43:                                        ; preds = %do.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.20
  %34 = load %struct._object*, %struct._object** %name.addr, align 8
  %call45 = call %struct._object* @module_dict_for_exec(%struct._object* %34)
  store %struct._object* %call45, %struct._object** %d, align 8
  %35 = load %struct._object*, %struct._object** %d, align 8
  %cmp46 = icmp eq %struct._object* %35, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  br label %err_return

if.end.49:                                        ; preds = %if.end.44
  %36 = load %struct._object*, %struct._object** %name.addr, align 8
  %37 = load %struct._object*, %struct._object** %d, align 8
  %38 = load %struct._object*, %struct._object** %co, align 8
  %call50 = call %struct._object* @exec_code_in_module(%struct._object* %36, %struct._object* %37, %struct._object* %38)
  store %struct._object* %call50, %struct._object** %m, align 8
  %39 = load %struct._object*, %struct._object** %m, align 8
  %cmp51 = icmp eq %struct._object* %39, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  br label %err_return

if.end.54:                                        ; preds = %if.end.49
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.54
  %40 = load %struct._object*, %struct._object** %co, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp56, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %42, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %45(%struct._object* %46)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %do.body.67

do.body.67:                                       ; preds = %do.end.66
  %47 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp68, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %49, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.67
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %52(%struct._object* %53)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  store i32 1, i32* %retval
  br label %return

err_return:                                       ; preds = %if.then.53, %if.then.48, %if.then.42, %if.then.32, %if.then.26, %if.then.18
  br label %do.body.79

do.body.79:                                       ; preds = %err_return
  %54 = load %struct._object*, %struct._object** %co, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp80, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %56, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.79
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.79
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %59(%struct._object* %60)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.90, %do.end.78, %if.then.14, %if.then.2, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal %struct._frozen* @find_frozen(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._frozen*, align 8
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._frozen*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._frozen* null, %struct._frozen** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._frozen*, %struct._frozen** @PyImport_FrozenModules, align 8
  store %struct._frozen* %1, %struct._frozen** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct._frozen*, %struct._frozen** %p, align 8
  %name1 = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.cond
  store %struct._frozen* null, %struct._frozen** %retval
  br label %return

if.end.4:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %5 = load %struct._frozen*, %struct._frozen** %p, align 8
  %name5 = getelementptr inbounds %struct._frozen, %struct._frozen* %5, i32 0, i32 0
  %6 = load i8*, i8** %name5, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %4, i8* %6)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %for.end

if.end.8:                                         ; preds = %if.end.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %7 = load %struct._frozen*, %struct._frozen** %p, align 8
  %incdec.ptr = getelementptr %struct._frozen, %struct._frozen* %7, i32 1
  store %struct._frozen* %incdec.ptr, %struct._frozen** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.7
  %8 = load %struct._frozen*, %struct._frozen** %p, align 8
  store %struct._frozen* %8, %struct._frozen** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %9 = load %struct._frozen*, %struct._frozen** %retval
  ret %struct._frozen* %9
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @PyMarshal_ReadObjectFromString(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyImport_ImportFrozenModule(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %nameobj = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_InternFromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %call1 = call i32 @PyImport_ImportFrozenModuleObject(%struct._object* %2)
  store i32 %call1, i32* %ret, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_Import(%struct._object* %module_name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module_name.addr = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %import = alloca %struct._object*, align 8
  %builtins = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_xdecref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_xdecref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  store %struct._object* %module_name, %struct._object** %module_name.addr, align 8
  store %struct._object* null, %struct._object** %globals, align 8
  store %struct._object* null, %struct._object** %import, align 8
  store %struct._object* null, %struct._object** %builtins, align 8
  store %struct._object* null, %struct._object** %modules, align 8
  store %struct._object* null, %struct._object** %r, align 8
  %0 = load %struct._object*, %struct._object** @PyImport_Import.silly_list, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @PyImport_Import.import_str, align 8
  %1 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** @PyImport_Import.builtins_str, align 8
  %2 = load %struct._object*, %struct._object** @PyImport_Import.builtins_str, align 8
  %cmp4 = icmp eq %struct._object* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call7, %struct._object** @PyImport_Import.silly_list, align 8
  %3 = load %struct._object*, %struct._object** @PyImport_Import.silly_list, align 8
  %cmp8 = icmp eq %struct._object* %3, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  %call12 = call %struct._object* @PyEval_GetGlobals()
  store %struct._object* %call12, %struct._object** %globals, align 8
  %4 = load %struct._object*, %struct._object** %globals, align 8
  %cmp13 = icmp ne %struct._object* %4, null
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  %5 = load %struct._object*, %struct._object** %globals, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %globals, align 8
  %8 = load %struct._object*, %struct._object** @PyImport_Import.builtins_str, align 8
  %call15 = call %struct._object* @PyObject_GetItem(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call15, %struct._object** %builtins, align 8
  %9 = load %struct._object*, %struct._object** %builtins, align 8
  %cmp16 = icmp eq %struct._object* %9, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  br label %err

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.27

if.else:                                          ; preds = %if.end.11
  %call19 = call %struct._object* @PyImport_ImportModuleLevel(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), %struct._object* null, %struct._object* null, %struct._object* null, i32 0)
  store %struct._object* %call19, %struct._object** %builtins, align 8
  %10 = load %struct._object*, %struct._object** %builtins, align 8
  %cmp20 = icmp eq %struct._object* %10, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** @PyImport_Import.builtins_str, align 8
  %12 = load %struct._object*, %struct._object** %builtins, align 8
  %call23 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), %struct._object* %11, %struct._object* %12)
  store %struct._object* %call23, %struct._object** %globals, align 8
  %13 = load %struct._object*, %struct._object** %globals, align 8
  %cmp24 = icmp eq %struct._object* %13, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  br label %err

if.end.26:                                        ; preds = %if.end.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %14 = load %struct._object*, %struct._object** %builtins, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 19
  %16 = load i64, i64* %tp_flags, align 8
  %and = and i64 %16, 536870912
  %cmp28 = icmp ne i64 %and, 0
  br i1 %cmp28, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %if.end.27
  %17 = load %struct._object*, %struct._object** %builtins, align 8
  %18 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8
  %call30 = call %struct._object* @PyObject_GetItem(%struct._object* %17, %struct._object* %18)
  store %struct._object* %call30, %struct._object** %import, align 8
  %19 = load %struct._object*, %struct._object** %import, align 8
  %cmp31 = icmp eq %struct._object* %19, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  %20 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %21 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8
  call void @PyErr_SetObject(%struct._object* %20, %struct._object* %21)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.29
  br label %if.end.36

if.else.34:                                       ; preds = %if.end.27
  %22 = load %struct._object*, %struct._object** %builtins, align 8
  %23 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8
  %call35 = call %struct._object* @PyObject_GetAttr(%struct._object* %22, %struct._object* %23)
  store %struct._object* %call35, %struct._object** %import, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.end.33
  %24 = load %struct._object*, %struct._object** %import, align 8
  %cmp37 = icmp eq %struct._object* %24, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  br label %err

if.end.39:                                        ; preds = %if.end.36
  %25 = load %struct._object*, %struct._object** %import, align 8
  %26 = load %struct._object*, %struct._object** %module_name.addr, align 8
  %27 = load %struct._object*, %struct._object** %globals, align 8
  %28 = load %struct._object*, %struct._object** %globals, align 8
  %29 = load %struct._object*, %struct._object** @PyImport_Import.silly_list, align 8
  %call40 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), %struct._object* %26, %struct._object* %27, %struct._object* %28, %struct._object* %29, i32 0, i8* null)
  store %struct._object* %call40, %struct._object** %r, align 8
  %30 = load %struct._object*, %struct._object** %r, align 8
  %cmp41 = icmp eq %struct._object* %30, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  br label %err

if.end.43:                                        ; preds = %if.end.39
  br label %do.body

do.body:                                          ; preds = %if.end.43
  %31 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt44, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt44, align 8
  %cmp45 = icmp ne i64 %dec, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body
  br label %if.end.49

if.else.47:                                       ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end

do.end:                                           ; preds = %if.end.49
  %call50 = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call50, %struct._object** %modules, align 8
  %38 = load %struct._object*, %struct._object** %modules, align 8
  %39 = load %struct._object*, %struct._object** %module_name.addr, align 8
  %call51 = call %struct._object* @PyDict_GetItem(%struct._object* %38, %struct._object* %39)
  store %struct._object* %call51, %struct._object** %r, align 8
  %40 = load %struct._object*, %struct._object** %r, align 8
  %cmp52 = icmp ne %struct._object* %40, null
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %do.end
  %41 = load %struct._object*, %struct._object** %r, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt54, align 8
  %inc55 = add i64 %42, 1
  store i64 %inc55, i64* %ob_refcnt54, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %do.end
  br label %err

err:                                              ; preds = %if.end.56, %if.then.42, %if.then.38, %if.then.25, %if.then.17
  br label %do.body.57

do.body.57:                                       ; preds = %err
  %43 = load %struct._object*, %struct._object** %globals, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp58 = icmp ne %struct._object* %44, null
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %do.body.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp61, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %47, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %50(%struct._object* %51)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.57
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %52 = load %struct._object*, %struct._object** %builtins, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp74, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  %cmp75 = icmp ne %struct._object* %53, null
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %do.body.73
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp78, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %56, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %59(%struct._object* %60)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.73
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %61 = load %struct._object*, %struct._object** %import, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp91, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  %cmp92 = icmp ne %struct._object* %62, null
  br i1 %cmp92, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %do.body.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp95, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %65, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.94
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %68(%struct._object* %69)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.body.90
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  %70 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %70, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.106, %if.then.21, %if.then.9, %if.then.5, %if.then.2
  %71 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %71
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleNoBlock(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %name, %struct._object* %given_globals, %struct._object* %locals, %struct._object* %given_fromlist, i32 %level) #0 {
entry:
  %name.addr = alloca %struct._object*, align 8
  %given_globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %given_fromlist.addr = alloca %struct._object*, align 8
  %level.addr = alloca i32, align 4
  %abs_name = alloca %struct._object*, align 8
  %builtins_import = alloca %struct._object*, align 8
  %final_mod = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %package = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %fromlist = alloca %struct._object*, align 8
  %interp = alloca %struct._is*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %partition = alloca %struct._object*, align 8
  %borrowed_dot = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %last_dot = alloca i64, align 8
  %base = alloca %struct._object*, align 8
  %level_up = alloca i32, align 4
  %borrowed_dot140 = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp163 = alloca %struct._object*, align 8
  %msg = alloca %struct._object*, align 8
  %_py_decref_tmp209 = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %spec = alloca %struct._object*, align 8
  %initializing = alloca i32, align 4
  %_py_decref_tmp234 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %_py_decref_tmp273 = alloca %struct._object*, align 8
  %front = alloca %struct._object*, align 8
  %partition307 = alloca %struct._object*, align 8
  %borrowed_dot309 = alloca %struct._object*, align 8
  %_py_decref_tmp325 = alloca %struct._object*, align 8
  %_py_decref_tmp344 = alloca %struct._object*, align 8
  %_py_decref_tmp359 = alloca %struct._object*, align 8
  %cut_off = alloca i64, align 8
  %abs_name_len = alloca i64, align 8
  %to_return = alloca %struct._object*, align 8
  %_py_decref_tmp380 = alloca %struct._object*, align 8
  %_py_decref_tmp404 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp433 = alloca %struct._object*, align 8
  %_py_xdecref_tmp447 = alloca %struct._object*, align 8
  %_py_decref_tmp452 = alloca %struct._object*, align 8
  %_py_xdecref_tmp466 = alloca %struct._object*, align 8
  %_py_decref_tmp471 = alloca %struct._object*, align 8
  %_py_xdecref_tmp485 = alloca %struct._object*, align 8
  %_py_decref_tmp490 = alloca %struct._object*, align 8
  %_py_xdecref_tmp504 = alloca %struct._object*, align 8
  %_py_decref_tmp509 = alloca %struct._object*, align 8
  %_py_xdecref_tmp523 = alloca %struct._object*, align 8
  %_py_decref_tmp528 = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %given_globals, %struct._object** %given_globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store %struct._object* %given_fromlist, %struct._object** %given_fromlist.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._object* null, %struct._object** %abs_name, align 8
  store %struct._object* null, %struct._object** %builtins_import, align 8
  store %struct._object* null, %struct._object** %final_mod, align 8
  store %struct._object* null, %struct._object** %mod, align 8
  store %struct._object* null, %struct._object** %package, align 8
  store %struct._object* null, %struct._object** %globals, align 8
  store %struct._object* null, %struct._object** %fromlist, align 8
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  %interp4 = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 2
  %11 = load %struct._is*, %struct._is** %interp4, align 8
  store %struct._is* %11, %struct._is** %interp, align 8
  %12 = load %struct._object*, %struct._object** %given_globals.addr, align 8
  %cmp = icmp eq %struct._object* %12, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog.3
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** %globals, align 8
  %13 = load %struct._object*, %struct._object** %globals, align 8
  %cmp5 = icmp eq %struct._object* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.else:                                          ; preds = %sw.epilog.3
  %14 = load i32, i32* %level.addr, align 4
  %cmp7 = icmp sgt i32 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %given_globals.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and = and i64 %17, 536870912
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0))
  br label %error

if.end.10:                                        ; preds = %land.lhs.true, %if.else
  %19 = load %struct._object*, %struct._object** %given_globals.addr, align 8
  store %struct._object* %19, %struct._object** %globals, align 8
  %20 = load %struct._object*, %struct._object** %globals, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %22 = load %struct._object*, %struct._object** %given_fromlist.addr, align 8
  %cmp12 = icmp eq %struct._object* %22, null
  br i1 %cmp12, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call14, %struct._object** %fromlist, align 8
  %23 = load %struct._object*, %struct._object** %fromlist, align 8
  %cmp15 = icmp eq %struct._object* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  br label %error

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.21

if.else.18:                                       ; preds = %if.end.11
  %24 = load %struct._object*, %struct._object** %given_fromlist.addr, align 8
  store %struct._object* %24, %struct._object** %fromlist, align 8
  %25 = load %struct._object*, %struct._object** %fromlist, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %26, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.end.17
  %27 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp22 = icmp eq %struct._object* %27, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  br label %error

if.end.24:                                        ; preds = %if.end.21
  %29 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19
  %31 = load i64, i64* %tp_flags26, align 8
  %and27 = and i64 %31, 268435456
  %cmp28 = icmp ne i64 %and27, 0
  br i1 %cmp28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.24
  %32 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0))
  br label %error

if.else.30:                                       ; preds = %if.end.24
  %33 = load %struct._object*, %struct._object** %name.addr, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %34, i32 0, i32 3
  %35 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %35, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.30
  br label %cond.end

cond.false:                                       ; preds = %if.else.30
  %36 = load %struct._object*, %struct._object** %name.addr, align 8
  %call31 = call i32 @_PyUnicode_Ready(%struct._object* %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call31, %cond.false ]
  %cmp32 = icmp slt i32 %cond, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.end
  br label %error

if.end.34:                                        ; preds = %cond.end
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34
  %37 = load i32, i32* %level.addr, align 4
  %cmp36 = icmp slt i32 %37, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.35
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0))
  br label %error

if.else.38:                                       ; preds = %if.end.35
  %39 = load i32, i32* %level.addr, align 4
  %cmp39 = icmp sgt i32 %39, 0
  br i1 %cmp39, label %if.then.40, label %if.else.109

if.then.40:                                       ; preds = %if.else.38
  %40 = load %struct._object*, %struct._object** %globals, align 8
  %call41 = call %struct._object* @_PyDict_GetItemId(%struct._object* %40, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___package__)
  store %struct._object* %call41, %struct._object** %package, align 8
  %41 = load %struct._object*, %struct._object** %package, align 8
  %cmp42 = icmp ne %struct._object* %41, null
  br i1 %cmp42, label %land.lhs.true.43, label %if.else.54

land.lhs.true.43:                                 ; preds = %if.then.40
  %42 = load %struct._object*, %struct._object** %package, align 8
  %cmp44 = icmp ne %struct._object* %42, @_Py_NoneStruct
  br i1 %cmp44, label %if.then.45, label %if.else.54

if.then.45:                                       ; preds = %land.lhs.true.43
  %43 = load %struct._object*, %struct._object** %package, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt46, align 8
  %inc47 = add i64 %44, 1
  store i64 %inc47, i64* %ob_refcnt46, align 8
  %45 = load %struct._object*, %struct._object** %package, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 19
  %47 = load i64, i64* %tp_flags49, align 8
  %and50 = and i64 %47, 268435456
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.then.45
  %48 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0))
  br label %error

if.end.53:                                        ; preds = %if.then.45
  br label %if.end.103

if.else.54:                                       ; preds = %land.lhs.true.43, %if.then.40
  %49 = load %struct._object*, %struct._object** %globals, align 8
  %call55 = call %struct._object* @_PyDict_GetItemId(%struct._object* %49, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___name__)
  store %struct._object* %call55, %struct._object** %package, align 8
  %50 = load %struct._object*, %struct._object** %package, align 8
  %cmp56 = icmp eq %struct._object* %50, null
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.54
  %51 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0))
  br label %error

if.else.58:                                       ; preds = %if.else.54
  %52 = load %struct._object*, %struct._object** %package, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_flags60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 19
  %54 = load i64, i64* %tp_flags60, align 8
  %and61 = and i64 %54, 268435456
  %cmp62 = icmp ne i64 %and61, 0
  br i1 %cmp62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.else.58
  %55 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.else.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  %56 = load %struct._object*, %struct._object** %package, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt66, align 8
  %inc67 = add i64 %57, 1
  store i64 %inc67, i64* %ob_refcnt66, align 8
  %58 = load %struct._object*, %struct._object** %globals, align 8
  %call68 = call %struct._object* @_PyDict_GetItemId(%struct._object* %58, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___path__)
  %cmp69 = icmp eq %struct._object* %call68, null
  br i1 %cmp69, label %if.then.70, label %if.end.102

if.then.70:                                       ; preds = %if.end.65
  store %struct._object* null, %struct._object** %partition, align 8
  %call73 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyImport_ImportModuleLevelObject.single_dot)
  store %struct._object* %call73, %struct._object** %borrowed_dot, align 8
  %59 = load %struct._object*, %struct._object** %borrowed_dot, align 8
  %cmp74 = icmp eq %struct._object* %59, null
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.70
  br label %error

if.end.76:                                        ; preds = %if.then.70
  %60 = load %struct._object*, %struct._object** %package, align 8
  %61 = load %struct._object*, %struct._object** %borrowed_dot, align 8
  %call77 = call %struct._object* @PyUnicode_RPartition(%struct._object* %60, %struct._object* %61)
  store %struct._object* %call77, %struct._object** %partition, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.76
  %62 = load %struct._object*, %struct._object** %package, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt79, align 8
  %dec = add i64 %64, -1
  store i64 %dec, i64* %ob_refcnt79, align 8
  %cmp80 = icmp ne i64 %dec, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body
  br label %if.end.84

if.else.82:                                       ; preds = %do.body
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %67(%struct._object* %68)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end

do.end:                                           ; preds = %if.end.84
  %69 = load %struct._object*, %struct._object** %partition, align 8
  %cmp85 = icmp eq %struct._object* %69, null
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %do.end
  br label %error

if.end.87:                                        ; preds = %do.end
  %70 = load %struct._object*, %struct._object** %partition, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %72 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %72, %struct._object** %package, align 8
  %73 = load %struct._object*, %struct._object** %package, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt88, align 8
  %inc89 = add i64 %74, 1
  store i64 %inc89, i64* %ob_refcnt88, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %if.end.87
  %75 = load %struct._object*, %struct._object** %partition, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp92, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %77, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.90
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.90
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %80(%struct._object* %81)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %if.end.65
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.53
  %82 = load %struct._is*, %struct._is** %interp, align 8
  %modules = getelementptr inbounds %struct._is, %struct._is* %82, i32 0, i32 2
  %83 = load %struct._object*, %struct._object** %modules, align 8
  %84 = load %struct._object*, %struct._object** %package, align 8
  %call104 = call %struct._object* @PyDict_GetItem(%struct._object* %83, %struct._object* %84)
  %cmp105 = icmp eq %struct._object* %call104, null
  br i1 %cmp105, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.103
  %85 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %86 = load %struct._object*, %struct._object** %package, align 8
  %call107 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %85, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.49, i32 0, i32 0), %struct._object* %86)
  br label %error

if.end.108:                                       ; preds = %if.end.103
  br label %if.end.115

if.else.109:                                      ; preds = %if.else.38
  %87 = load %struct._object*, %struct._object** %name.addr, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %88, i32 0, i32 1
  %89 = load i64, i64* %length, align 8
  %cmp110 = icmp eq i64 %89, 0
  br i1 %cmp110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.else.109
  %90 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0))
  br label %error

if.end.112:                                       ; preds = %if.else.109
  store %struct._object* @_Py_NoneStruct, %struct._object** %package, align 8
  %91 = load %struct._object*, %struct._object** %package, align 8
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt113, align 8
  %inc114 = add i64 %92, 1
  store i64 %inc114, i64* %ob_refcnt113, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.112, %if.end.108
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115
  %93 = load i32, i32* %level.addr, align 4
  %cmp117 = icmp sgt i32 %93, 0
  br i1 %cmp117, label %if.then.118, label %if.else.178

if.then.118:                                      ; preds = %if.end.116
  %94 = load %struct._object*, %struct._object** %package, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyASCIIObject*
  %length120 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %95, i32 0, i32 1
  %96 = load i64, i64* %length120, align 8
  store i64 %96, i64* %last_dot, align 8
  store %struct._object* null, %struct._object** %base, align 8
  store i32 1, i32* %level_up, align 4
  store i32 1, i32* %level_up, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.118
  %97 = load i32, i32* %level_up, align 4
  %98 = load i32, i32* %level.addr, align 4
  %cmp123 = icmp slt i32 %97, %98
  br i1 %cmp123, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %99 = load %struct._object*, %struct._object** %package, align 8
  %100 = load i64, i64* %last_dot, align 8
  %call124 = call i64 @PyUnicode_FindChar(%struct._object* %99, i32 46, i64 0, i64 %100, i32 -1)
  store i64 %call124, i64* %last_dot, align 8
  %101 = load i64, i64* %last_dot, align 8
  %cmp125 = icmp eq i64 %101, -2
  br i1 %cmp125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %for.body
  br label %error

if.else.127:                                      ; preds = %for.body
  %102 = load i64, i64* %last_dot, align 8
  %cmp128 = icmp eq i64 %102, -1
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.else.127
  %103 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0))
  br label %error

if.end.130:                                       ; preds = %if.else.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %for.inc

for.inc:                                          ; preds = %if.end.131
  %104 = load i32, i32* %level_up, align 4
  %add = add i32 %104, 1
  store i32 %add, i32* %level_up, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load %struct._object*, %struct._object** %package, align 8
  %106 = load i64, i64* %last_dot, align 8
  %call132 = call %struct._object* @PyUnicode_Substring(%struct._object* %105, i64 0, i64 %106)
  store %struct._object* %call132, %struct._object** %base, align 8
  %107 = load %struct._object*, %struct._object** %base, align 8
  %cmp133 = icmp eq %struct._object* %107, null
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.end
  br label %error

if.end.135:                                       ; preds = %for.end
  %108 = load %struct._object*, %struct._object** %name.addr, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyASCIIObject*
  %length136 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %109, i32 0, i32 1
  %110 = load i64, i64* %length136, align 8
  %cmp137 = icmp sgt i64 %110, 0
  br i1 %cmp137, label %if.then.138, label %if.else.176

if.then.138:                                      ; preds = %if.end.135
  store %struct._object* null, %struct._object** %seq, align 8
  %call142 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyImport_ImportModuleLevelObject.single_dot)
  store %struct._object* %call142, %struct._object** %borrowed_dot140, align 8
  %111 = load %struct._object*, %struct._object** %base, align 8
  %112 = load %struct._object*, %struct._object** %name.addr, align 8
  %call143 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %111, %struct._object* %112)
  store %struct._object* %call143, %struct._object** %seq, align 8
  br label %do.body.144

do.body.144:                                      ; preds = %if.then.138
  %113 = load %struct._object*, %struct._object** %base, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp146, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt147, align 8
  %dec148 = add i64 %115, -1
  store i64 %dec148, i64* %ob_refcnt147, align 8
  %cmp149 = icmp ne i64 %dec148, 0
  br i1 %cmp149, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %do.body.144
  br label %if.end.154

if.else.151:                                      ; preds = %do.body.144
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8
  call void %118(%struct._object* %119)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  %120 = load %struct._object*, %struct._object** %borrowed_dot140, align 8
  %cmp156 = icmp eq %struct._object* %120, null
  br i1 %cmp156, label %if.then.158, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.155
  %121 = load %struct._object*, %struct._object** %seq, align 8
  %cmp157 = icmp eq %struct._object* %121, null
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false, %do.end.155
  br label %error

if.end.159:                                       ; preds = %lor.lhs.false
  %122 = load %struct._object*, %struct._object** %borrowed_dot140, align 8
  %123 = load %struct._object*, %struct._object** %seq, align 8
  %call160 = call %struct._object* @PyUnicode_Join(%struct._object* %122, %struct._object* %123)
  store %struct._object* %call160, %struct._object** %abs_name, align 8
  br label %do.body.161

do.body.161:                                      ; preds = %if.end.159
  %124 = load %struct._object*, %struct._object** %seq, align 8
  store %struct._object* %124, %struct._object** %_py_decref_tmp163, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_refcnt164 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt164, align 8
  %dec165 = add i64 %126, -1
  store i64 %dec165, i64* %ob_refcnt164, align 8
  %cmp166 = icmp ne i64 %dec165, 0
  br i1 %cmp166, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %do.body.161
  br label %if.end.171

if.else.168:                                      ; preds = %do.body.161
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  %ob_type169 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type169, align 8
  %tp_dealloc170 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc170, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp163, align 8
  call void %129(%struct._object* %130)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  br label %do.end.172

do.end.172:                                       ; preds = %if.end.171
  %131 = load %struct._object*, %struct._object** %abs_name, align 8
  %cmp173 = icmp eq %struct._object* %131, null
  br i1 %cmp173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %do.end.172
  br label %error

if.end.175:                                       ; preds = %do.end.172
  br label %if.end.177

if.else.176:                                      ; preds = %if.end.135
  %132 = load %struct._object*, %struct._object** %base, align 8
  store %struct._object* %132, %struct._object** %abs_name, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %if.end.175
  br label %if.end.181

if.else.178:                                      ; preds = %if.end.116
  %133 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %133, %struct._object** %abs_name, align 8
  %134 = load %struct._object*, %struct._object** %abs_name, align 8
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0
  %135 = load i64, i64* %ob_refcnt179, align 8
  %inc180 = add i64 %135, 1
  store i64 %inc180, i64* %ob_refcnt179, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.end.177
  call void @_PyImport_AcquireLock()
  %136 = load %struct._object*, %struct._object** %globals, align 8
  %ob_type182 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type182, align 8
  %tp_flags183 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 19
  %138 = load i64, i64* %tp_flags183, align 8
  %and184 = and i64 %138, 536870912
  %cmp185 = icmp ne i64 %and184, 0
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.181
  %139 = load %struct._object*, %struct._object** %globals, align 8
  %call187 = call %struct._object* @_PyDict_GetItemId(%struct._object* %139, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___import__)
  store %struct._object* %call187, %struct._object** %builtins_import, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %if.end.181
  %140 = load %struct._object*, %struct._object** %builtins_import, align 8
  %cmp189 = icmp eq %struct._object* %140, null
  br i1 %cmp189, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.end.188
  %141 = load %struct._is*, %struct._is** %interp, align 8
  %builtins = getelementptr inbounds %struct._is, %struct._is* %141, i32 0, i32 5
  %142 = load %struct._object*, %struct._object** %builtins, align 8
  %call191 = call %struct._object* @_PyDict_GetItemId(%struct._object* %142, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___import__)
  store %struct._object* %call191, %struct._object** %builtins_import, align 8
  %143 = load %struct._object*, %struct._object** %builtins_import, align 8
  %cmp192 = icmp eq %struct._object* %143, null
  br i1 %cmp192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.then.190
  %144 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  call void @PyErr_SetString(%struct._object* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0))
  br label %error_with_unlock

if.end.194:                                       ; preds = %if.then.190
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.188
  %145 = load %struct._object*, %struct._object** %builtins_import, align 8
  %ob_refcnt196 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt196, align 8
  %inc197 = add i64 %146, 1
  store i64 %inc197, i64* %ob_refcnt196, align 8
  %147 = load %struct._is*, %struct._is** %interp, align 8
  %modules198 = getelementptr inbounds %struct._is, %struct._is* %147, i32 0, i32 2
  %148 = load %struct._object*, %struct._object** %modules198, align 8
  %149 = load %struct._object*, %struct._object** %abs_name, align 8
  %call199 = call %struct._object* @PyDict_GetItem(%struct._object* %148, %struct._object* %149)
  store %struct._object* %call199, %struct._object** %mod, align 8
  %150 = load %struct._object*, %struct._object** %mod, align 8
  %cmp200 = icmp eq %struct._object* %150, @_Py_NoneStruct
  br i1 %cmp200, label %if.then.201, label %if.else.220

if.then.201:                                      ; preds = %if.end.195
  %151 = load %struct._object*, %struct._object** %abs_name, align 8
  %call203 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0), %struct._object* %151)
  store %struct._object* %call203, %struct._object** %msg, align 8
  %152 = load %struct._object*, %struct._object** %msg, align 8
  %cmp204 = icmp ne %struct._object* %152, null
  br i1 %cmp204, label %if.then.205, label %if.end.219

if.then.205:                                      ; preds = %if.then.201
  %153 = load %struct._object*, %struct._object** %msg, align 8
  %154 = load %struct._object*, %struct._object** %abs_name, align 8
  %call206 = call %struct._object* @PyErr_SetImportError(%struct._object* %153, %struct._object* %154, %struct._object* null)
  br label %do.body.207

do.body.207:                                      ; preds = %if.then.205
  %155 = load %struct._object*, %struct._object** %msg, align 8
  store %struct._object* %155, %struct._object** %_py_decref_tmp209, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 0
  %157 = load i64, i64* %ob_refcnt210, align 8
  %dec211 = add i64 %157, -1
  store i64 %dec211, i64* %ob_refcnt210, align 8
  %cmp212 = icmp ne i64 %dec211, 0
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %do.body.207
  br label %if.end.217

if.else.214:                                      ; preds = %do.body.207
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_type215 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 1
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type215, align 8
  %tp_dealloc216 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i32 0, i32 4
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc216, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  call void %160(%struct._object* %161)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.213
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  br label %if.end.219

if.end.219:                                       ; preds = %do.end.218, %if.then.201
  store %struct._object* null, %struct._object** %mod, align 8
  br label %error_with_unlock

if.else.220:                                      ; preds = %if.end.195
  %162 = load %struct._object*, %struct._object** %mod, align 8
  %cmp221 = icmp ne %struct._object* %162, null
  br i1 %cmp221, label %if.then.222, label %if.else.289

if.then.222:                                      ; preds = %if.else.220
  store %struct._object* null, %struct._object** %value, align 8
  store i32 0, i32* %initializing, align 4
  %163 = load %struct._object*, %struct._object** %mod, align 8
  %ob_refcnt226 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0
  %164 = load i64, i64* %ob_refcnt226, align 8
  %inc227 = add i64 %164, 1
  store i64 %inc227, i64* %ob_refcnt226, align 8
  %165 = load %struct._object*, %struct._object** %mod, align 8
  %call228 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %165, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___spec__)
  store %struct._object* %call228, %struct._object** %spec, align 8
  %166 = load %struct._object*, %struct._object** %spec, align 8
  %cmp229 = icmp ne %struct._object* %166, null
  br i1 %cmp229, label %if.then.230, label %if.end.244

if.then.230:                                      ; preds = %if.then.222
  %167 = load %struct._object*, %struct._object** %spec, align 8
  %call231 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %167, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__initializing)
  store %struct._object* %call231, %struct._object** %value, align 8
  br label %do.body.232

do.body.232:                                      ; preds = %if.then.230
  %168 = load %struct._object*, %struct._object** %spec, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp234, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  %ob_refcnt235 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt235, align 8
  %dec236 = add i64 %170, -1
  store i64 %dec236, i64* %ob_refcnt235, align 8
  %cmp237 = icmp ne i64 %dec236, 0
  br i1 %cmp237, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %do.body.232
  br label %if.end.242

if.else.239:                                      ; preds = %do.body.232
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  %ob_type240 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type240, align 8
  %tp_dealloc241 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc241, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp234, align 8
  call void %173(%struct._object* %174)
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.239, %if.then.238
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  br label %if.end.244

if.end.244:                                       ; preds = %do.end.243, %if.then.222
  %175 = load %struct._object*, %struct._object** %value, align 8
  %cmp245 = icmp eq %struct._object* %175, null
  br i1 %cmp245, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %if.end.244
  call void @PyErr_Clear()
  br label %if.end.264

if.else.247:                                      ; preds = %if.end.244
  %176 = load %struct._object*, %struct._object** %value, align 8
  %call248 = call i32 @PyObject_IsTrue(%struct._object* %176)
  store i32 %call248, i32* %initializing, align 4
  br label %do.body.249

do.body.249:                                      ; preds = %if.else.247
  %177 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp251, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt252, align 8
  %dec253 = add i64 %179, -1
  store i64 %dec253, i64* %ob_refcnt252, align 8
  %cmp254 = icmp ne i64 %dec253, 0
  br i1 %cmp254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %do.body.249
  br label %if.end.259

if.else.256:                                      ; preds = %do.body.249
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  call void %182(%struct._object* %183)
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  br label %do.end.260

do.end.260:                                       ; preds = %if.end.259
  %184 = load i32, i32* %initializing, align 4
  %cmp261 = icmp eq i32 %184, -1
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %do.end.260
  call void @PyErr_Clear()
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %do.end.260
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.246
  %185 = load i32, i32* %initializing, align 4
  %cmp265 = icmp sgt i32 %185, 0
  br i1 %cmp265, label %if.then.266, label %if.else.283

if.then.266:                                      ; preds = %if.end.264
  %186 = load %struct._is*, %struct._is** %interp, align 8
  %importlib = getelementptr inbounds %struct._is, %struct._is* %186, i32 0, i32 6
  %187 = load %struct._object*, %struct._object** %importlib, align 8
  %188 = load %struct._object*, %struct._object** %abs_name, align 8
  %call267 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %187, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__lock_unlock_module, %struct._object* %188, i8* null)
  store %struct._object* %call267, %struct._object** %value, align 8
  %189 = load %struct._object*, %struct._object** %value, align 8
  %cmp268 = icmp eq %struct._object* %189, null
  br i1 %cmp268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.266
  br label %error

if.end.270:                                       ; preds = %if.then.266
  br label %do.body.271

do.body.271:                                      ; preds = %if.end.270
  %190 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %190, %struct._object** %_py_decref_tmp273, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_refcnt274 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 0
  %192 = load i64, i64* %ob_refcnt274, align 8
  %dec275 = add i64 %192, -1
  store i64 %dec275, i64* %ob_refcnt274, align 8
  %cmp276 = icmp ne i64 %dec275, 0
  br i1 %cmp276, label %if.then.277, label %if.else.278

if.then.277:                                      ; preds = %do.body.271
  br label %if.end.281

if.else.278:                                      ; preds = %do.body.271
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  %ob_type279 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 1
  %194 = load %struct._typeobject*, %struct._typeobject** %ob_type279, align 8
  %tp_dealloc280 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %194, i32 0, i32 4
  %195 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc280, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp273, align 8
  call void %195(%struct._object* %196)
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.278, %if.then.277
  br label %do.end.282

do.end.282:                                       ; preds = %if.end.281
  br label %if.end.288

if.else.283:                                      ; preds = %if.end.264
  %call284 = call i32 @_PyImport_ReleaseLock()
  %cmp285 = icmp slt i32 %call284, 0
  br i1 %cmp285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.else.283
  %197 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0))
  br label %error

if.end.287:                                       ; preds = %if.else.283
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %do.end.282
  br label %if.end.295

if.else.289:                                      ; preds = %if.else.220
  %198 = load %struct._is*, %struct._is** %interp, align 8
  %importlib290 = getelementptr inbounds %struct._is, %struct._is* %198, i32 0, i32 6
  %199 = load %struct._object*, %struct._object** %importlib290, align 8
  %200 = load %struct._object*, %struct._object** %abs_name, align 8
  %201 = load %struct._object*, %struct._object** %builtins_import, align 8
  %call291 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %199, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__find_and_load, %struct._object* %200, %struct._object* %201, i8* null)
  store %struct._object* %call291, %struct._object** %mod, align 8
  %202 = load %struct._object*, %struct._object** %mod, align 8
  %cmp292 = icmp eq %struct._object* %202, null
  br i1 %cmp292, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.else.289
  br label %error

if.end.294:                                       ; preds = %if.else.289
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end.288
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295
  %203 = load %struct._object*, %struct._object** %fromlist, align 8
  %call297 = call i32 @PyObject_Not(%struct._object* %203)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.then.299, label %if.else.419

if.then.299:                                      ; preds = %if.end.296
  %204 = load i32, i32* %level.addr, align 4
  %cmp300 = icmp eq i32 %204, 0
  br i1 %cmp300, label %if.then.304, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %if.then.299
  %205 = load %struct._object*, %struct._object** %name.addr, align 8
  %206 = bitcast %struct._object* %205 to %struct.PyASCIIObject*
  %length302 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %206, i32 0, i32 1
  %207 = load i64, i64* %length302, align 8
  %cmp303 = icmp sgt i64 %207, 0
  br i1 %cmp303, label %if.then.304, label %if.else.415

if.then.304:                                      ; preds = %lor.lhs.false.301, %if.then.299
  store %struct._object* null, %struct._object** %front, align 8
  store %struct._object* null, %struct._object** %partition307, align 8
  %call310 = call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* @PyImport_ImportModuleLevelObject.single_dot)
  store %struct._object* %call310, %struct._object** %borrowed_dot309, align 8
  %208 = load %struct._object*, %struct._object** %borrowed_dot309, align 8
  %cmp311 = icmp eq %struct._object* %208, null
  br i1 %cmp311, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.then.304
  br label %error

if.end.313:                                       ; preds = %if.then.304
  %209 = load %struct._object*, %struct._object** %name.addr, align 8
  %210 = load %struct._object*, %struct._object** %borrowed_dot309, align 8
  %call314 = call %struct._object* @PyUnicode_Partition(%struct._object* %209, %struct._object* %210)
  store %struct._object* %call314, %struct._object** %partition307, align 8
  %211 = load %struct._object*, %struct._object** %partition307, align 8
  %cmp315 = icmp eq %struct._object* %211, null
  br i1 %cmp315, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.end.313
  br label %error

if.end.317:                                       ; preds = %if.end.313
  %212 = load %struct._object*, %struct._object** %partition307, align 8
  %213 = bitcast %struct._object* %212 to %struct.PyTupleObject*
  %ob_item318 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %213, i32 0, i32 1
  %arrayidx319 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item318, i32 0, i64 1
  %214 = load %struct._object*, %struct._object** %arrayidx319, align 8
  %215 = bitcast %struct._object* %214 to %struct.PyASCIIObject*
  %length320 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %215, i32 0, i32 1
  %216 = load i64, i64* %length320, align 8
  %cmp321 = icmp eq i64 %216, 0
  br i1 %cmp321, label %if.then.322, label %if.end.337

if.then.322:                                      ; preds = %if.end.317
  br label %do.body.323

do.body.323:                                      ; preds = %if.then.322
  %217 = load %struct._object*, %struct._object** %partition307, align 8
  store %struct._object* %217, %struct._object** %_py_decref_tmp325, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp325, align 8
  %ob_refcnt326 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 0
  %219 = load i64, i64* %ob_refcnt326, align 8
  %dec327 = add i64 %219, -1
  store i64 %dec327, i64* %ob_refcnt326, align 8
  %cmp328 = icmp ne i64 %dec327, 0
  br i1 %cmp328, label %if.then.329, label %if.else.330

if.then.329:                                      ; preds = %do.body.323
  br label %if.end.333

if.else.330:                                      ; preds = %do.body.323
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp325, align 8
  %ob_type331 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 1
  %221 = load %struct._typeobject*, %struct._typeobject** %ob_type331, align 8
  %tp_dealloc332 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %221, i32 0, i32 4
  %222 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc332, align 8
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp325, align 8
  call void %222(%struct._object* %223)
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.330, %if.then.329
  br label %do.end.334

do.end.334:                                       ; preds = %if.end.333
  %224 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %224, %struct._object** %final_mod, align 8
  %225 = load %struct._object*, %struct._object** %mod, align 8
  %ob_refcnt335 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 0
  %226 = load i64, i64* %ob_refcnt335, align 8
  %inc336 = add i64 %226, 1
  store i64 %inc336, i64* %ob_refcnt335, align 8
  br label %error

if.end.337:                                       ; preds = %if.end.317
  %227 = load %struct._object*, %struct._object** %partition307, align 8
  %228 = bitcast %struct._object* %227 to %struct.PyTupleObject*
  %ob_item338 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %228, i32 0, i32 1
  %arrayidx339 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item338, i32 0, i64 0
  %229 = load %struct._object*, %struct._object** %arrayidx339, align 8
  store %struct._object* %229, %struct._object** %front, align 8
  %230 = load %struct._object*, %struct._object** %front, align 8
  %ob_refcnt340 = getelementptr inbounds %struct._object, %struct._object* %230, i32 0, i32 0
  %231 = load i64, i64* %ob_refcnt340, align 8
  %inc341 = add i64 %231, 1
  store i64 %inc341, i64* %ob_refcnt340, align 8
  br label %do.body.342

do.body.342:                                      ; preds = %if.end.337
  %232 = load %struct._object*, %struct._object** %partition307, align 8
  store %struct._object* %232, %struct._object** %_py_decref_tmp344, align 8
  %233 = load %struct._object*, %struct._object** %_py_decref_tmp344, align 8
  %ob_refcnt345 = getelementptr inbounds %struct._object, %struct._object* %233, i32 0, i32 0
  %234 = load i64, i64* %ob_refcnt345, align 8
  %dec346 = add i64 %234, -1
  store i64 %dec346, i64* %ob_refcnt345, align 8
  %cmp347 = icmp ne i64 %dec346, 0
  br i1 %cmp347, label %if.then.348, label %if.else.349

if.then.348:                                      ; preds = %do.body.342
  br label %if.end.352

if.else.349:                                      ; preds = %do.body.342
  %235 = load %struct._object*, %struct._object** %_py_decref_tmp344, align 8
  %ob_type350 = getelementptr inbounds %struct._object, %struct._object* %235, i32 0, i32 1
  %236 = load %struct._typeobject*, %struct._typeobject** %ob_type350, align 8
  %tp_dealloc351 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %236, i32 0, i32 4
  %237 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc351, align 8
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp344, align 8
  call void %237(%struct._object* %238)
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.349, %if.then.348
  br label %do.end.353

do.end.353:                                       ; preds = %if.end.352
  %239 = load i32, i32* %level.addr, align 4
  %cmp354 = icmp eq i32 %239, 0
  br i1 %cmp354, label %if.then.355, label %if.else.369

if.then.355:                                      ; preds = %do.end.353
  %240 = load %struct._object*, %struct._object** %builtins_import, align 8
  %241 = load %struct._object*, %struct._object** %front, align 8
  %call356 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %240, %struct._object* %241, i8* null)
  store %struct._object* %call356, %struct._object** %final_mod, align 8
  br label %do.body.357

do.body.357:                                      ; preds = %if.then.355
  %242 = load %struct._object*, %struct._object** %front, align 8
  store %struct._object* %242, %struct._object** %_py_decref_tmp359, align 8
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp359, align 8
  %ob_refcnt360 = getelementptr inbounds %struct._object, %struct._object* %243, i32 0, i32 0
  %244 = load i64, i64* %ob_refcnt360, align 8
  %dec361 = add i64 %244, -1
  store i64 %dec361, i64* %ob_refcnt360, align 8
  %cmp362 = icmp ne i64 %dec361, 0
  br i1 %cmp362, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %do.body.357
  br label %if.end.367

if.else.364:                                      ; preds = %do.body.357
  %245 = load %struct._object*, %struct._object** %_py_decref_tmp359, align 8
  %ob_type365 = getelementptr inbounds %struct._object, %struct._object* %245, i32 0, i32 1
  %246 = load %struct._typeobject*, %struct._typeobject** %ob_type365, align 8
  %tp_dealloc366 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %246, i32 0, i32 4
  %247 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc366, align 8
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp359, align 8
  call void %247(%struct._object* %248)
  br label %if.end.367

if.end.367:                                       ; preds = %if.else.364, %if.then.363
  br label %do.end.368

do.end.368:                                       ; preds = %if.end.367
  br label %if.end.414

if.else.369:                                      ; preds = %do.end.353
  %249 = load %struct._object*, %struct._object** %name.addr, align 8
  %250 = bitcast %struct._object* %249 to %struct.PyASCIIObject*
  %length371 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %250, i32 0, i32 1
  %251 = load i64, i64* %length371, align 8
  %252 = load %struct._object*, %struct._object** %front, align 8
  %253 = bitcast %struct._object* %252 to %struct.PyASCIIObject*
  %length372 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %253, i32 0, i32 1
  %254 = load i64, i64* %length372, align 8
  %sub = sub i64 %251, %254
  store i64 %sub, i64* %cut_off, align 8
  %255 = load %struct._object*, %struct._object** %abs_name, align 8
  %256 = bitcast %struct._object* %255 to %struct.PyASCIIObject*
  %length374 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %256, i32 0, i32 1
  %257 = load i64, i64* %length374, align 8
  store i64 %257, i64* %abs_name_len, align 8
  %258 = load %struct._object*, %struct._object** %abs_name, align 8
  %259 = load i64, i64* %abs_name_len, align 8
  %260 = load i64, i64* %cut_off, align 8
  %sub376 = sub i64 %259, %260
  %call377 = call %struct._object* @PyUnicode_Substring(%struct._object* %258, i64 0, i64 %sub376)
  store %struct._object* %call377, %struct._object** %to_return, align 8
  br label %do.body.378

do.body.378:                                      ; preds = %if.else.369
  %261 = load %struct._object*, %struct._object** %front, align 8
  store %struct._object* %261, %struct._object** %_py_decref_tmp380, align 8
  %262 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  %ob_refcnt381 = getelementptr inbounds %struct._object, %struct._object* %262, i32 0, i32 0
  %263 = load i64, i64* %ob_refcnt381, align 8
  %dec382 = add i64 %263, -1
  store i64 %dec382, i64* %ob_refcnt381, align 8
  %cmp383 = icmp ne i64 %dec382, 0
  br i1 %cmp383, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %do.body.378
  br label %if.end.388

if.else.385:                                      ; preds = %do.body.378
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  %ob_type386 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 1
  %265 = load %struct._typeobject*, %struct._typeobject** %ob_type386, align 8
  %tp_dealloc387 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %265, i32 0, i32 4
  %266 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc387, align 8
  %267 = load %struct._object*, %struct._object** %_py_decref_tmp380, align 8
  call void %266(%struct._object* %267)
  br label %if.end.388

if.end.388:                                       ; preds = %if.else.385, %if.then.384
  br label %do.end.389

do.end.389:                                       ; preds = %if.end.388
  %268 = load %struct._object*, %struct._object** %to_return, align 8
  %cmp390 = icmp eq %struct._object* %268, null
  br i1 %cmp390, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %do.end.389
  br label %error

if.end.392:                                       ; preds = %do.end.389
  %269 = load %struct._is*, %struct._is** %interp, align 8
  %modules393 = getelementptr inbounds %struct._is, %struct._is* %269, i32 0, i32 2
  %270 = load %struct._object*, %struct._object** %modules393, align 8
  %271 = load %struct._object*, %struct._object** %to_return, align 8
  %call394 = call %struct._object* @PyDict_GetItem(%struct._object* %270, %struct._object* %271)
  store %struct._object* %call394, %struct._object** %final_mod, align 8
  %272 = load %struct._object*, %struct._object** %final_mod, align 8
  %cmp395 = icmp eq %struct._object* %272, null
  br i1 %cmp395, label %if.then.396, label %if.else.398

if.then.396:                                      ; preds = %if.end.392
  %273 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %274 = load %struct._object*, %struct._object** %to_return, align 8
  %call397 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0), %struct._object* %274)
  br label %if.end.401

if.else.398:                                      ; preds = %if.end.392
  %275 = load %struct._object*, %struct._object** %final_mod, align 8
  %ob_refcnt399 = getelementptr inbounds %struct._object, %struct._object* %275, i32 0, i32 0
  %276 = load i64, i64* %ob_refcnt399, align 8
  %inc400 = add i64 %276, 1
  store i64 %inc400, i64* %ob_refcnt399, align 8
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.398, %if.then.396
  br label %do.body.402

do.body.402:                                      ; preds = %if.end.401
  %277 = load %struct._object*, %struct._object** %to_return, align 8
  store %struct._object* %277, %struct._object** %_py_decref_tmp404, align 8
  %278 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8
  %ob_refcnt405 = getelementptr inbounds %struct._object, %struct._object* %278, i32 0, i32 0
  %279 = load i64, i64* %ob_refcnt405, align 8
  %dec406 = add i64 %279, -1
  store i64 %dec406, i64* %ob_refcnt405, align 8
  %cmp407 = icmp ne i64 %dec406, 0
  br i1 %cmp407, label %if.then.408, label %if.else.409

if.then.408:                                      ; preds = %do.body.402
  br label %if.end.412

if.else.409:                                      ; preds = %do.body.402
  %280 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8
  %ob_type410 = getelementptr inbounds %struct._object, %struct._object* %280, i32 0, i32 1
  %281 = load %struct._typeobject*, %struct._typeobject** %ob_type410, align 8
  %tp_dealloc411 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %281, i32 0, i32 4
  %282 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc411, align 8
  %283 = load %struct._object*, %struct._object** %_py_decref_tmp404, align 8
  call void %282(%struct._object* %283)
  br label %if.end.412

if.end.412:                                       ; preds = %if.else.409, %if.then.408
  br label %do.end.413

do.end.413:                                       ; preds = %if.end.412
  br label %if.end.414

if.end.414:                                       ; preds = %do.end.413, %do.end.368
  br label %if.end.418

if.else.415:                                      ; preds = %lor.lhs.false.301
  %284 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %284, %struct._object** %final_mod, align 8
  %285 = load %struct._object*, %struct._object** %mod, align 8
  %ob_refcnt416 = getelementptr inbounds %struct._object, %struct._object* %285, i32 0, i32 0
  %286 = load i64, i64* %ob_refcnt416, align 8
  %inc417 = add i64 %286, 1
  store i64 %inc417, i64* %ob_refcnt416, align 8
  br label %if.end.418

if.end.418:                                       ; preds = %if.else.415, %if.end.414
  br label %if.end.422

if.else.419:                                      ; preds = %if.end.296
  %287 = load %struct._is*, %struct._is** %interp, align 8
  %importlib420 = getelementptr inbounds %struct._is, %struct._is* %287, i32 0, i32 6
  %288 = load %struct._object*, %struct._object** %importlib420, align 8
  %289 = load %struct._object*, %struct._object** %mod, align 8
  %290 = load %struct._object*, %struct._object** %fromlist, align 8
  %291 = load %struct._object*, %struct._object** %builtins_import, align 8
  %call421 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %288, %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__handle_fromlist, %struct._object* %289, %struct._object* %290, %struct._object* %291, i8* null)
  store %struct._object* %call421, %struct._object** %final_mod, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.419, %if.end.418
  br label %error

error_with_unlock:                                ; preds = %if.end.219, %if.then.193
  %call423 = call i32 @_PyImport_ReleaseLock()
  %cmp424 = icmp slt i32 %call423, 0
  br i1 %cmp424, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %error_with_unlock
  %292 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %error_with_unlock
  br label %error

error:                                            ; preds = %if.end.426, %if.end.422, %if.then.391, %do.end.334, %if.then.316, %if.then.312, %if.then.293, %if.then.286, %if.then.269, %if.then.174, %if.then.158, %if.then.134, %if.then.129, %if.then.126, %if.then.111, %if.then.106, %if.then.86, %if.then.75, %if.then.57, %if.then.52, %if.then.37, %if.then.33, %if.then.29, %if.then.23, %if.then.16, %if.then.9, %if.then.6
  br label %do.body.427

do.body.427:                                      ; preds = %error
  %293 = load %struct._object*, %struct._object** %abs_name, align 8
  store %struct._object* %293, %struct._object** %_py_xdecref_tmp, align 8
  %294 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp429 = icmp ne %struct._object* %294, null
  br i1 %cmp429, label %if.then.430, label %if.end.443

if.then.430:                                      ; preds = %do.body.427
  br label %do.body.431

do.body.431:                                      ; preds = %if.then.430
  %295 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %295, %struct._object** %_py_decref_tmp433, align 8
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  %ob_refcnt434 = getelementptr inbounds %struct._object, %struct._object* %296, i32 0, i32 0
  %297 = load i64, i64* %ob_refcnt434, align 8
  %dec435 = add i64 %297, -1
  store i64 %dec435, i64* %ob_refcnt434, align 8
  %cmp436 = icmp ne i64 %dec435, 0
  br i1 %cmp436, label %if.then.437, label %if.else.438

if.then.437:                                      ; preds = %do.body.431
  br label %if.end.441

if.else.438:                                      ; preds = %do.body.431
  %298 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  %ob_type439 = getelementptr inbounds %struct._object, %struct._object* %298, i32 0, i32 1
  %299 = load %struct._typeobject*, %struct._typeobject** %ob_type439, align 8
  %tp_dealloc440 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %299, i32 0, i32 4
  %300 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc440, align 8
  %301 = load %struct._object*, %struct._object** %_py_decref_tmp433, align 8
  call void %300(%struct._object* %301)
  br label %if.end.441

if.end.441:                                       ; preds = %if.else.438, %if.then.437
  br label %do.end.442

do.end.442:                                       ; preds = %if.end.441
  br label %if.end.443

if.end.443:                                       ; preds = %do.end.442, %do.body.427
  br label %do.end.444

do.end.444:                                       ; preds = %if.end.443
  br label %do.body.445

do.body.445:                                      ; preds = %do.end.444
  %302 = load %struct._object*, %struct._object** %builtins_import, align 8
  store %struct._object* %302, %struct._object** %_py_xdecref_tmp447, align 8
  %303 = load %struct._object*, %struct._object** %_py_xdecref_tmp447, align 8
  %cmp448 = icmp ne %struct._object* %303, null
  br i1 %cmp448, label %if.then.449, label %if.end.462

if.then.449:                                      ; preds = %do.body.445
  br label %do.body.450

do.body.450:                                      ; preds = %if.then.449
  %304 = load %struct._object*, %struct._object** %_py_xdecref_tmp447, align 8
  store %struct._object* %304, %struct._object** %_py_decref_tmp452, align 8
  %305 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  %ob_refcnt453 = getelementptr inbounds %struct._object, %struct._object* %305, i32 0, i32 0
  %306 = load i64, i64* %ob_refcnt453, align 8
  %dec454 = add i64 %306, -1
  store i64 %dec454, i64* %ob_refcnt453, align 8
  %cmp455 = icmp ne i64 %dec454, 0
  br i1 %cmp455, label %if.then.456, label %if.else.457

if.then.456:                                      ; preds = %do.body.450
  br label %if.end.460

if.else.457:                                      ; preds = %do.body.450
  %307 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  %ob_type458 = getelementptr inbounds %struct._object, %struct._object* %307, i32 0, i32 1
  %308 = load %struct._typeobject*, %struct._typeobject** %ob_type458, align 8
  %tp_dealloc459 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %308, i32 0, i32 4
  %309 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc459, align 8
  %310 = load %struct._object*, %struct._object** %_py_decref_tmp452, align 8
  call void %309(%struct._object* %310)
  br label %if.end.460

if.end.460:                                       ; preds = %if.else.457, %if.then.456
  br label %do.end.461

do.end.461:                                       ; preds = %if.end.460
  br label %if.end.462

if.end.462:                                       ; preds = %do.end.461, %do.body.445
  br label %do.end.463

do.end.463:                                       ; preds = %if.end.462
  br label %do.body.464

do.body.464:                                      ; preds = %do.end.463
  %311 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %311, %struct._object** %_py_xdecref_tmp466, align 8
  %312 = load %struct._object*, %struct._object** %_py_xdecref_tmp466, align 8
  %cmp467 = icmp ne %struct._object* %312, null
  br i1 %cmp467, label %if.then.468, label %if.end.481

if.then.468:                                      ; preds = %do.body.464
  br label %do.body.469

do.body.469:                                      ; preds = %if.then.468
  %313 = load %struct._object*, %struct._object** %_py_xdecref_tmp466, align 8
  store %struct._object* %313, %struct._object** %_py_decref_tmp471, align 8
  %314 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  %ob_refcnt472 = getelementptr inbounds %struct._object, %struct._object* %314, i32 0, i32 0
  %315 = load i64, i64* %ob_refcnt472, align 8
  %dec473 = add i64 %315, -1
  store i64 %dec473, i64* %ob_refcnt472, align 8
  %cmp474 = icmp ne i64 %dec473, 0
  br i1 %cmp474, label %if.then.475, label %if.else.476

if.then.475:                                      ; preds = %do.body.469
  br label %if.end.479

if.else.476:                                      ; preds = %do.body.469
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  %ob_type477 = getelementptr inbounds %struct._object, %struct._object* %316, i32 0, i32 1
  %317 = load %struct._typeobject*, %struct._typeobject** %ob_type477, align 8
  %tp_dealloc478 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %317, i32 0, i32 4
  %318 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc478, align 8
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp471, align 8
  call void %318(%struct._object* %319)
  br label %if.end.479

if.end.479:                                       ; preds = %if.else.476, %if.then.475
  br label %do.end.480

do.end.480:                                       ; preds = %if.end.479
  br label %if.end.481

if.end.481:                                       ; preds = %do.end.480, %do.body.464
  br label %do.end.482

do.end.482:                                       ; preds = %if.end.481
  br label %do.body.483

do.body.483:                                      ; preds = %do.end.482
  %320 = load %struct._object*, %struct._object** %package, align 8
  store %struct._object* %320, %struct._object** %_py_xdecref_tmp485, align 8
  %321 = load %struct._object*, %struct._object** %_py_xdecref_tmp485, align 8
  %cmp486 = icmp ne %struct._object* %321, null
  br i1 %cmp486, label %if.then.487, label %if.end.500

if.then.487:                                      ; preds = %do.body.483
  br label %do.body.488

do.body.488:                                      ; preds = %if.then.487
  %322 = load %struct._object*, %struct._object** %_py_xdecref_tmp485, align 8
  store %struct._object* %322, %struct._object** %_py_decref_tmp490, align 8
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  %ob_refcnt491 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 0
  %324 = load i64, i64* %ob_refcnt491, align 8
  %dec492 = add i64 %324, -1
  store i64 %dec492, i64* %ob_refcnt491, align 8
  %cmp493 = icmp ne i64 %dec492, 0
  br i1 %cmp493, label %if.then.494, label %if.else.495

if.then.494:                                      ; preds = %do.body.488
  br label %if.end.498

if.else.495:                                      ; preds = %do.body.488
  %325 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  %ob_type496 = getelementptr inbounds %struct._object, %struct._object* %325, i32 0, i32 1
  %326 = load %struct._typeobject*, %struct._typeobject** %ob_type496, align 8
  %tp_dealloc497 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %326, i32 0, i32 4
  %327 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc497, align 8
  %328 = load %struct._object*, %struct._object** %_py_decref_tmp490, align 8
  call void %327(%struct._object* %328)
  br label %if.end.498

if.end.498:                                       ; preds = %if.else.495, %if.then.494
  br label %do.end.499

do.end.499:                                       ; preds = %if.end.498
  br label %if.end.500

if.end.500:                                       ; preds = %do.end.499, %do.body.483
  br label %do.end.501

do.end.501:                                       ; preds = %if.end.500
  br label %do.body.502

do.body.502:                                      ; preds = %do.end.501
  %329 = load %struct._object*, %struct._object** %globals, align 8
  store %struct._object* %329, %struct._object** %_py_xdecref_tmp504, align 8
  %330 = load %struct._object*, %struct._object** %_py_xdecref_tmp504, align 8
  %cmp505 = icmp ne %struct._object* %330, null
  br i1 %cmp505, label %if.then.506, label %if.end.519

if.then.506:                                      ; preds = %do.body.502
  br label %do.body.507

do.body.507:                                      ; preds = %if.then.506
  %331 = load %struct._object*, %struct._object** %_py_xdecref_tmp504, align 8
  store %struct._object* %331, %struct._object** %_py_decref_tmp509, align 8
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp509, align 8
  %ob_refcnt510 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 0
  %333 = load i64, i64* %ob_refcnt510, align 8
  %dec511 = add i64 %333, -1
  store i64 %dec511, i64* %ob_refcnt510, align 8
  %cmp512 = icmp ne i64 %dec511, 0
  br i1 %cmp512, label %if.then.513, label %if.else.514

if.then.513:                                      ; preds = %do.body.507
  br label %if.end.517

if.else.514:                                      ; preds = %do.body.507
  %334 = load %struct._object*, %struct._object** %_py_decref_tmp509, align 8
  %ob_type515 = getelementptr inbounds %struct._object, %struct._object* %334, i32 0, i32 1
  %335 = load %struct._typeobject*, %struct._typeobject** %ob_type515, align 8
  %tp_dealloc516 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %335, i32 0, i32 4
  %336 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc516, align 8
  %337 = load %struct._object*, %struct._object** %_py_decref_tmp509, align 8
  call void %336(%struct._object* %337)
  br label %if.end.517

if.end.517:                                       ; preds = %if.else.514, %if.then.513
  br label %do.end.518

do.end.518:                                       ; preds = %if.end.517
  br label %if.end.519

if.end.519:                                       ; preds = %do.end.518, %do.body.502
  br label %do.end.520

do.end.520:                                       ; preds = %if.end.519
  br label %do.body.521

do.body.521:                                      ; preds = %do.end.520
  %338 = load %struct._object*, %struct._object** %fromlist, align 8
  store %struct._object* %338, %struct._object** %_py_xdecref_tmp523, align 8
  %339 = load %struct._object*, %struct._object** %_py_xdecref_tmp523, align 8
  %cmp524 = icmp ne %struct._object* %339, null
  br i1 %cmp524, label %if.then.525, label %if.end.538

if.then.525:                                      ; preds = %do.body.521
  br label %do.body.526

do.body.526:                                      ; preds = %if.then.525
  %340 = load %struct._object*, %struct._object** %_py_xdecref_tmp523, align 8
  store %struct._object* %340, %struct._object** %_py_decref_tmp528, align 8
  %341 = load %struct._object*, %struct._object** %_py_decref_tmp528, align 8
  %ob_refcnt529 = getelementptr inbounds %struct._object, %struct._object* %341, i32 0, i32 0
  %342 = load i64, i64* %ob_refcnt529, align 8
  %dec530 = add i64 %342, -1
  store i64 %dec530, i64* %ob_refcnt529, align 8
  %cmp531 = icmp ne i64 %dec530, 0
  br i1 %cmp531, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %do.body.526
  br label %if.end.536

if.else.533:                                      ; preds = %do.body.526
  %343 = load %struct._object*, %struct._object** %_py_decref_tmp528, align 8
  %ob_type534 = getelementptr inbounds %struct._object, %struct._object* %343, i32 0, i32 1
  %344 = load %struct._typeobject*, %struct._typeobject** %ob_type534, align 8
  %tp_dealloc535 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %344, i32 0, i32 4
  %345 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc535, align 8
  %346 = load %struct._object*, %struct._object** %_py_decref_tmp528, align 8
  call void %345(%struct._object* %346)
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.533, %if.then.532
  br label %do.end.537

do.end.537:                                       ; preds = %if.end.536
  br label %if.end.538

if.end.538:                                       ; preds = %do.end.537, %do.body.521
  br label %do.end.539

do.end.539:                                       ; preds = %if.end.538
  %347 = load %struct._object*, %struct._object** %final_mod, align 8
  %cmp540 = icmp eq %struct._object* %347, null
  br i1 %cmp540, label %if.then.541, label %if.end.542

if.then.541:                                      ; preds = %do.end.539
  call void @remove_importlib_frames()
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.541, %do.end.539
  %348 = load %struct._object*, %struct._object** %final_mod, align 8
  ret %struct._object* %348
}

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #1

declare %struct._object* @PyUnicode_RPartition(%struct._object*, %struct._object*) #1

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare i32 @PyObject_Not(%struct._object*) #1

declare %struct._object* @PyUnicode_Partition(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @remove_importlib_frames() #0 {
entry:
  %importlib_filename = alloca i8*, align 8
  %remove_frames = alloca i8*, align 8
  %always_trim = alloca i32, align 4
  %in_importlib = alloca i32, align 4
  %exception = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %base_tb = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %prev_link = alloca %struct._object**, align 8
  %outer_link = alloca %struct._object**, align 8
  %traceback = alloca %struct._traceback*, align 8
  %next = alloca %struct._object*, align 8
  %frame = alloca %struct._frame*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %now_in_importlib = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i32 0, i32 0), i8** %importlib_filename, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), i8** %remove_frames, align 8
  store i32 0, i32* %always_trim, align 4
  store i32 0, i32* %in_importlib, align 4
  store %struct._object** null, %struct._object*** %outer_link, align 8
  call void @PyErr_Fetch(%struct._object** %exception, %struct._object** %value, %struct._object** %base_tb)
  %0 = load %struct._object*, %struct._object** %exception, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %exception, align 8
  %3 = bitcast %struct._object* %2 to %struct._typeobject*
  %4 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %5 = bitcast %struct._object* %4 to %struct._typeobject*
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %always_trim, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store %struct._object** %base_tb, %struct._object*** %prev_link, align 8
  %6 = load %struct._object*, %struct._object** %base_tb, align 8
  store %struct._object* %6, %struct._object** %tb, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %if.end.4
  %7 = load %struct._object*, %struct._object** %tb, align 8
  %cmp = icmp ne %struct._object* %7, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._object*, %struct._object** %tb, align 8
  %9 = bitcast %struct._object* %8 to %struct._traceback*
  store %struct._traceback* %9, %struct._traceback** %traceback, align 8
  %10 = load %struct._traceback*, %struct._traceback** %traceback, align 8
  %tb_next = getelementptr inbounds %struct._traceback, %struct._traceback* %10, i32 0, i32 1
  %11 = load %struct._traceback*, %struct._traceback** %tb_next, align 8
  %12 = bitcast %struct._traceback* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %next, align 8
  %13 = load %struct._traceback*, %struct._traceback** %traceback, align 8
  %tb_frame = getelementptr inbounds %struct._traceback, %struct._traceback* %13, i32 0, i32 2
  %14 = load %struct._frame*, %struct._frame** %tb_frame, align 8
  store %struct._frame* %14, %struct._frame** %frame, align 8
  %15 = load %struct._frame*, %struct._frame** %frame, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 2
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %16, %struct.PyCodeObject** %code, align 8
  %17 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %17, i32 0, i32 13
  %18 = load %struct._object*, %struct._object** %co_filename, align 8
  %19 = load i8*, i8** %importlib_filename, align 8
  %call5 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %18, i8* %19)
  %cmp6 = icmp eq i32 %call5, 0
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %now_in_importlib, align 4
  %20 = load i32, i32* %now_in_importlib, align 4
  %tobool7 = icmp ne i32 %20, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %while.body
  %21 = load i32, i32* %in_importlib, align 4
  %tobool8 = icmp ne i32 %21, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %22 = load %struct._object**, %struct._object*** %prev_link, align 8
  store %struct._object** %22, %struct._object*** %outer_link, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %land.lhs.true, %while.body
  %23 = load i32, i32* %now_in_importlib, align 4
  store i32 %23, i32* %in_importlib, align 4
  %24 = load i32, i32* %in_importlib, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.else.32

land.lhs.true.12:                                 ; preds = %if.end.10
  %25 = load i32, i32* %always_trim, align 4
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.12
  %26 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 14
  %27 = load %struct._object*, %struct._object** %co_name, align 8
  %28 = load i8*, i8** %remove_frames, align 8
  %call15 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %27, i8* %28)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.32

if.then.18:                                       ; preds = %lor.lhs.false.14, %land.lhs.true.12
  %29 = load %struct._object**, %struct._object*** %outer_link, align 8
  %30 = load %struct._object*, %struct._object** %29, align 8
  store %struct._object* %30, %struct._object** %tmp, align 8
  %31 = load %struct._object*, %struct._object** %next, align 8
  %32 = load %struct._object**, %struct._object*** %outer_link, align 8
  store %struct._object* %31, %struct._object** %32, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.18
  %33 = load %struct._object*, %struct._object** %next, align 8
  store %struct._object* %33, %struct._object** %_py_xincref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %34, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.23
  br label %do.body.24

do.body.24:                                       ; preds = %do.end
  %37 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt26, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt26, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.30

if.else:                                          ; preds = %do.body.24
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.29
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %44 = load %struct._object**, %struct._object*** %outer_link, align 8
  store %struct._object** %44, %struct._object*** %prev_link, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %lor.lhs.false.14, %if.end.10
  %45 = load %struct._traceback*, %struct._traceback** %traceback, align 8
  %tb_next33 = getelementptr inbounds %struct._traceback, %struct._traceback* %45, i32 0, i32 1
  %46 = bitcast %struct._traceback** %tb_next33 to %struct._object**
  store %struct._object** %46, %struct._object*** %prev_link, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %do.end.31
  %47 = load %struct._object*, %struct._object** %next, align 8
  store %struct._object* %47, %struct._object** %tb, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %done

done:                                             ; preds = %while.end, %if.then
  %48 = load %struct._object*, %struct._object** %exception, align 8
  %49 = load %struct._object*, %struct._object** %value, align 8
  %50 = load %struct._object*, %struct._object** %base_tb, align 8
  call void @PyErr_Restore(%struct._object* %48, %struct._object* %49, %struct._object* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleLevel(i8* %name, %struct._object* %globals, %struct._object* %locals, %struct._object* %fromlist, i32 %level) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %fromlist.addr = alloca %struct._object*, align 8
  %level.addr = alloca i32, align 4
  %nameobj = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  store %struct._object* %fromlist, %struct._object** %fromlist.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %nameobj, align 8
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %nameobj, align 8
  %3 = load %struct._object*, %struct._object** %globals.addr, align 8
  %4 = load %struct._object*, %struct._object** %locals.addr, align 8
  %5 = load %struct._object*, %struct._object** %fromlist.addr, align 8
  %6 = load i32, i32* %level.addr, align 4
  %call1 = call %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %2, %struct._object* %3, %struct._object* %4, %struct._object* %5, i32 %6)
  store %struct._object* %call1, %struct._object** %mod, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

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
  %14 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ReloadModule(%struct._object* %m) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m.addr = alloca %struct._object*, align 8
  %reloaded_module = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  %imp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  store %struct._object* null, %struct._object** %reloaded_module, align 8
  %call = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call, %struct._object** %modules, align 8
  %0 = load %struct._object*, %struct._object** %modules, align 8
  %call1 = call %struct._object* @PyDict_GetItemString(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %imp, align 8
  %1 = load %struct._object*, %struct._object** %imp, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* %call2, %struct._object** %imp, align 8
  %2 = load %struct._object*, %struct._object** %imp, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %imp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.end
  %5 = load %struct._object*, %struct._object** %imp, align 8
  %6 = load %struct._object*, %struct._object** %m.addr, align 8
  %call6 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %5, %struct._Py_Identifier* @PyImport_ReloadModule.PyId_reload, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0), %struct._object* %6)
  store %struct._object* %call6, %struct._object** %reloaded_module, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %7 = load %struct._object*, %struct._object** %imp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %reloaded_module, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyEval_GetGlobals() #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_imp() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @impmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %failure

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call %struct._object* @PyModule_GetDict(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %d, align 8
  %2 = load %struct._object*, %struct._object** %d, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %failure

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %3, %struct._object** %retval
  br label %return

failure:                                          ; preds = %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %failure
  %4 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.6
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.end.4
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @PyImport_ExtendInittab(%struct._inittab* %newtab) #0 {
entry:
  %retval = alloca i32, align 4
  %newtab.addr = alloca %struct._inittab*, align 8
  %p = alloca %struct._inittab*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct._inittab* %newtab, %struct._inittab** %newtab.addr, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._inittab*, %struct._inittab** %newtab.addr, align 8
  %arrayidx = getelementptr %struct._inittab, %struct._inittab* %1, i64 %idxprom
  %name = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %n, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %n, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.8, %if.end
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx4 = getelementptr %struct._inittab, %struct._inittab* %6, i64 %idxprom3
  %name5 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx4, i32 0, i32 0
  %7 = load i8*, i8** %name5, align 8
  %cmp6 = icmp ne i8* %7, null
  br i1 %cmp6, label %for.body.7, label %for.end.10

for.body.7:                                       ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.7
  %8 = load i32, i32* %i, align 4
  %inc9 = add i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.2

for.end.10:                                       ; preds = %for.cond.2
  %9 = load %struct._inittab*, %struct._inittab** @PyImport_ExtendInittab.our_copy, align 8
  store %struct._inittab* %9, %struct._inittab** %p, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n, align 4
  %add = add i32 %10, %11
  %add11 = add i32 %add, 1
  %conv = sext i32 %add11 to i64
  %cmp12 = icmp ugt i64 %conv, 576460752303423487
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.10
  br label %cond.end

cond.false:                                       ; preds = %for.end.10
  %12 = load %struct._inittab*, %struct._inittab** %p, align 8
  %13 = bitcast %struct._inittab* %12 to i8*
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n, align 4
  %add14 = add i32 %14, %15
  %add15 = add i32 %add14, 1
  %conv16 = sext i32 %add15 to i64
  %mul = mul i64 %conv16, 16
  %call = call i8* @PyMem_Realloc(i8* %13, i64 %mul)
  %16 = bitcast i8* %call to %struct._inittab*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._inittab* [ null, %cond.true ], [ %16, %cond.false ]
  store %struct._inittab* %cond, %struct._inittab** %p, align 8
  %17 = load %struct._inittab*, %struct._inittab** %p, align 8
  %cmp17 = icmp eq %struct._inittab* %17, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %cond.end
  %18 = load %struct._inittab*, %struct._inittab** @PyImport_ExtendInittab.our_copy, align 8
  %19 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %cmp21 = icmp ne %struct._inittab* %18, %19
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.20
  %20 = load %struct._inittab*, %struct._inittab** %p, align 8
  %21 = bitcast %struct._inittab* %20 to i8*
  %22 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %23 = bitcast %struct._inittab* %22 to i8*
  %24 = load i32, i32* %i, align 4
  %add24 = add i32 %24, 1
  %conv25 = sext i32 %add24 to i64
  %mul26 = mul i64 %conv25, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %23, i64 %mul26, i32 8, i1 false)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.end.20
  %25 = load %struct._inittab*, %struct._inittab** %p, align 8
  store %struct._inittab* %25, %struct._inittab** @PyImport_ExtendInittab.our_copy, align 8
  store %struct._inittab* %25, %struct._inittab** @PyImport_Inittab, align 8
  %26 = load %struct._inittab*, %struct._inittab** %p, align 8
  %27 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr %struct._inittab, %struct._inittab* %26, i64 %idx.ext
  %28 = bitcast %struct._inittab* %add.ptr to i8*
  %29 = load %struct._inittab*, %struct._inittab** %newtab.addr, align 8
  %30 = bitcast %struct._inittab* %29 to i8*
  %31 = load i32, i32* %n, align 4
  %add28 = add i32 %31, 1
  %conv29 = sext i32 %add28 to i64
  %mul30 = mul i64 %conv29, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 %mul30, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.19, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i8* @PyMem_Realloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @PyImport_AppendInittab(i8* %name, %struct._object* ()* %initfunc) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %initfunc.addr = alloca %struct._object* ()*, align 8
  %newtab = alloca [2 x %struct._inittab], align 16
  store i8* %name, i8** %name.addr, align 8
  store %struct._object* ()* %initfunc, %struct._object* ()** %initfunc.addr, align 8
  %0 = bitcast [2 x %struct._inittab]* %newtab to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 16, i1 false)
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i32 0, i64 0
  %name1 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx, i32 0, i32 0
  store i8* %1, i8** %name1, align 8
  %2 = load %struct._object* ()*, %struct._object* ()** %initfunc.addr, align 8
  %arrayidx2 = getelementptr [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i32 0, i64 0
  %initfunc3 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx2, i32 0, i32 1
  store %struct._object* ()* %2, %struct._object* ()** %initfunc3, align 8
  %arraydecay = getelementptr inbounds [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i32 0, i32 0
  %call = call i32 @PyImport_ExtendInittab(%struct._inittab* %arraydecay)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._object* @PyEval_GetBuiltins() #1

; Function Attrs: nounwind uwtable
define internal void @remove_module(%struct._object* %name) #0 {
entry:
  %name.addr = alloca %struct._object*, align 8
  %modules = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyImport_GetModuleDict()
  store %struct._object* %call, %struct._object** %modules, align 8
  %0 = load %struct._object*, %struct._object** %modules, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %0, %struct._object* %1)
  %cmp = icmp eq %struct._object* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.5

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %modules, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call2 = call i32 @PyDict_DelItem(%struct._object* %2, %struct._object* %3)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i32 0, i32 0)) #5
  unreachable

if.end.5:                                         ; preds = %if.then, %if.end
  ret void
}

declare %struct._object* @PyEval_EvalCode(%struct._object*, %struct._object*, %struct._object*) #1

declare i64 @PyList_Size(%struct._object*) #1

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_extension_suffixes(%struct.PyModuleDef* %module, %struct._object* %_unused_ignored) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call = call %struct._object* @_imp_extension_suffixes_impl(%struct.PyModuleDef* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_lock_held(%struct.PyModuleDef* %module, %struct._object* %_unused_ignored) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call = call %struct._object* @_imp_lock_held_impl(%struct.PyModuleDef* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_acquire_lock(%struct.PyModuleDef* %module, %struct._object* %_unused_ignored) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call = call %struct._object* @_imp_acquire_lock_impl(%struct.PyModuleDef* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_release_lock(%struct.PyModuleDef* %module, %struct._object* %_unused_ignored) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %call = call %struct._object* @_imp_release_lock_impl(%struct.PyModuleDef* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_get_frozen_object(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_get_frozen_object_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen_package(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_is_frozen_package_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_builtin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_init_builtin_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_frozen(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_init_frozen_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_builtin(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_is_builtin_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), %struct._object** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %call1 = call %struct._object* @_imp_is_frozen_impl(%struct.PyModuleDef* %1, %struct._object* %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_load_dynamic(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store %struct._object* null, %struct._object** %file, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i32 0, i32 0), %struct._object** %name, i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %path, %struct._object** %file)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %3 = load %struct._object*, %struct._object** %path, align 8
  %4 = load %struct._object*, %struct._object** %file, align 8
  %call1 = call %struct._object* @_imp_load_dynamic_impl(%struct.PyModuleDef* %1, %struct._object* %2, %struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp__fix_co_filename(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %code = alloca %struct.PyCodeObject*, align 8
  %path = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i32 0, i32 0), %struct._typeobject* @PyCode_Type, %struct.PyCodeObject** %code, %struct._object** %path)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8
  %3 = load %struct._object*, %struct._object** %path, align 8
  %call1 = call %struct._object* @_imp__fix_co_filename_impl(%struct.PyModuleDef* %1, %struct.PyCodeObject* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_extension_suffixes_impl(%struct.PyModuleDef* %module) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %list = alloca %struct._object*, align 8
  %suffix = alloca i8*, align 8
  %index = alloca i32, align 4
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store i32 0, i32* %index, align 4
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %list, align 8
  %0 = load %struct._object*, %struct._object** %list, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end.44, %if.end
  %1 = load i32, i32* %index, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr [0 x i8*], [0 x i8*]* @_PyImport_DynLoadFiletab, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  store i8* %2, i8** %suffix, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %suffix, align 8
  %call1 = call %struct._object* @PyUnicode_FromString(i8* %3)
  store %struct._object* %call1, %struct._object** %item, align 8
  %4 = load %struct._object*, %struct._object** %item, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  %12 = load %struct._object*, %struct._object** %list, align 8
  %13 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call i32 @PyList_Append(%struct._object* %12, %struct._object* %13)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.33

if.then.10:                                       ; preds = %if.end.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %14 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp12, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %16, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %19(%struct._object* %20)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %21 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp23, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %23, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %26(%struct._object* %27)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.7
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.33
  %28 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp35, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %30, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %33(%struct._object* %34)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %35 = load i32, i32* %index, align 4
  %add = add i32 %35, 1
  store i32 %add, i32* %index, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %36, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %do.end.32, %do.end, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_lock_held_impl(%struct.PyModuleDef* %module) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  %0 = load i64, i64* @import_lock_thread, align 8
  %cmp = icmp ne i64 %0, -1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv1)
  ret %struct._object* %call
}

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_acquire_lock_impl(%struct.PyModuleDef* %module) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  call void @_PyImport_AcquireLock()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_release_lock_impl(%struct.PyModuleDef* %module) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  %call = call i32 @_PyImport_ReleaseLock()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i32 0, i32 0))
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

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_get_frozen_object_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @get_frozen_object(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_frozen_object(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._frozen*, align 8
  %size = alloca i32, align 4
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._frozen* @find_frozen(%struct._object* %0)
  store %struct._frozen* %call, %struct._frozen** %p, align 8
  %1 = load %struct._frozen*, %struct._frozen** %p, align 8
  %cmp = icmp eq %struct._frozen* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.96, i32 0, i32 0), %struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._frozen*, %struct._frozen** %p, align 8
  %code = getelementptr inbounds %struct._frozen, %struct._frozen* %4, i32 0, i32 1
  %5 = load i8*, i8** %code, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %7 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), %struct._object* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._frozen*, %struct._frozen** %p, align 8
  %size6 = getelementptr inbounds %struct._frozen, %struct._frozen* %8, i32 0, i32 2
  %9 = load i32, i32* %size6, align 4
  store i32 %9, i32* %size, align 4
  %10 = load i32, i32* %size, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %11 = load i32, i32* %size, align 4
  %sub = sub i32 0, %11
  store i32 %sub, i32* %size, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %12 = load %struct._frozen*, %struct._frozen** %p, align 8
  %code10 = getelementptr inbounds %struct._frozen, %struct._frozen* %12, i32 0, i32 1
  %13 = load i8*, i8** %code10, align 8
  %14 = load i32, i32* %size, align 4
  %conv = sext i32 %14 to i64
  %call11 = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %13, i64 %conv)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen_package_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @is_frozen_package(%struct._object* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_frozen_package(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._frozen*, align 8
  %size = alloca i32, align 4
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._frozen* @find_frozen(%struct._object* %0)
  store %struct._frozen* %call, %struct._frozen** %p, align 8
  %1 = load %struct._frozen*, %struct._frozen** %p, align 8
  %cmp = icmp eq %struct._frozen* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call1 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.96, i32 0, i32 0), %struct._object* %3)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._frozen*, %struct._frozen** %p, align 8
  %size2 = getelementptr inbounds %struct._frozen, %struct._frozen* %4, i32 0, i32 2
  %5 = load i32, i32* %size2, align 4
  store i32 %5, i32* %size, align 4
  %6 = load i32, i32* %size, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc5 = add i64 %8, 1
  store i64 %inc5, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_builtin_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @init_builtin(%struct._object* %0)
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %m, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc7 = add i64 %8, 1
  store i64 %inc7, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @init_builtin(%struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._inittab*, align 8
  %mod = alloca %struct._object*, align 8
  %mod6 = alloca %struct._object*, align 8
  %def = alloca %struct.PyModuleDef*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %mod, align 8
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %mod, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  store %struct._inittab* %3, %struct._inittab** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load %struct._inittab*, %struct._inittab** %p, align 8
  %name4 = getelementptr inbounds %struct._inittab, %struct._inittab* %4, i32 0, i32 0
  %5 = load i8*, i8** %name4, align 8
  %cmp5 = icmp ne i8* %5, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._object*, %struct._object** %name.addr, align 8
  %7 = load %struct._inittab*, %struct._inittab** %p, align 8
  %name7 = getelementptr inbounds %struct._inittab, %struct._inittab* %7, i32 0, i32 0
  %8 = load i8*, i8** %name7, align 8
  %call8 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %6, i8* %8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.29

if.then.10:                                       ; preds = %for.body
  %9 = load %struct._inittab*, %struct._inittab** %p, align 8
  %initfunc = getelementptr inbounds %struct._inittab, %struct._inittab* %9, i32 0, i32 1
  %10 = load %struct._object* ()*, %struct._object* ()** %initfunc, align 8
  %cmp11 = icmp eq %struct._object* ()* %10, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.10
  %11 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %12 = load %struct._object*, %struct._object** %name.addr, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.99, i32 0, i32 0), %struct._object* %12)
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.10
  %13 = load %struct._inittab*, %struct._inittab** %p, align 8
  %initfunc15 = getelementptr inbounds %struct._inittab, %struct._inittab* %13, i32 0, i32 1
  %14 = load %struct._object* ()*, %struct._object* ()** %initfunc15, align 8
  %call16 = call %struct._object* %14()
  store %struct._object* %call16, %struct._object** %mod6, align 8
  %15 = load %struct._object*, %struct._object** %mod6, align 8
  %cmp17 = icmp eq %struct._object* %15, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %16 = load %struct._object*, %struct._object** %mod6, align 8
  %call20 = call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %16)
  store %struct.PyModuleDef* %call20, %struct.PyModuleDef** %def, align 8
  %17 = load %struct._inittab*, %struct._inittab** %p, align 8
  %initfunc21 = getelementptr inbounds %struct._inittab, %struct._inittab* %17, i32 0, i32 1
  %18 = load %struct._object* ()*, %struct._object* ()** %initfunc21, align 8
  %19 = load %struct.PyModuleDef*, %struct.PyModuleDef** %def, align 8
  %m_base = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %19, i32 0, i32 0
  %m_init = getelementptr inbounds %struct.PyModuleDef_Base, %struct.PyModuleDef_Base* %m_base, i32 0, i32 1
  store %struct._object* ()* %18, %struct._object* ()** %m_init, align 8
  %20 = load %struct._object*, %struct._object** %mod6, align 8
  %21 = load %struct._object*, %struct._object** %name.addr, align 8
  %22 = load %struct._object*, %struct._object** %name.addr, align 8
  %call22 = call i32 @_PyImport_FixupExtensionObject(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.19
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %23 = load %struct._object*, %struct._object** %mod6, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.28
  store i32 1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %30 = load %struct._inittab*, %struct._inittab** %p, align 8
  %incdec.ptr = getelementptr %struct._inittab, %struct._inittab* %30, i32 1
  store %struct._inittab* %incdec.ptr, %struct._inittab** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.24, %if.then.18, %if.then.12, %if.then.2, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_frozen_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  %ret = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @PyImport_ImportFrozenModuleObject(%struct._object* %0)
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %m, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %_py_xincref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc7 = add i64 %8, 1
  store i64 %inc7, i64* %ob_refcnt, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_builtin_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @is_builtin(%struct._object* %0)
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call1
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @is_builtin(%struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %cmp = alloca i32, align 4
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx = getelementptr %struct._inittab, %struct._inittab* %1, i64 %idxprom
  %name1 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name1, align 8
  %cmp2 = icmp ne i8* %2, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx4 = getelementptr %struct._inittab, %struct._inittab* %5, i64 %idxprom3
  %name5 = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx4, i32 0, i32 0
  %6 = load i8*, i8** %name5, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %3, i8* %6)
  store i32 %call, i32* %cmp, align 4
  %7 = load i32, i32* %cmp, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8
  %arrayidx8 = getelementptr %struct._inittab, %struct._inittab* %9, i64 %idxprom7
  %initfunc = getelementptr inbounds %struct._inittab, %struct._inittab* %arrayidx8, i32 0, i32 1
  %10 = load %struct._object* ()*, %struct._object* ()** %initfunc, align 8
  %cmp9 = icmp eq %struct._object* ()* %10, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else, %if.then.10
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen_impl(%struct.PyModuleDef* %module, %struct._object* %name) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  %p = alloca %struct._frozen*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._frozen* @find_frozen(%struct._object* %0)
  store %struct._frozen* %call, %struct._frozen** %p, align 8
  %1 = load %struct._frozen*, %struct._frozen** %p, align 8
  %cmp = icmp eq %struct._frozen* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct._frozen*, %struct._frozen** %p, align 8
  %size = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i32 0, i32 2
  %3 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %3, %cond.false ]
  %conv = sext i32 %cond to i64
  %call1 = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call1
}

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_load_dynamic_impl(%struct.PyModuleDef* %module, %struct._object* %name, %struct._object* %path, %struct._object* %file) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %name.addr = alloca %struct._object*, align 8
  %path.addr = alloca %struct._object*, align 8
  %file.addr = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  store %struct._object* %file, %struct._object** %file.addr, align 8
  %0 = load %struct._object*, %struct._object** %file.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else.10

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %path.addr, align 8
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %path.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
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
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call7 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.then
  br label %if.end.11

if.else.10:                                       ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.end.9
  %11 = load %struct._object*, %struct._object** %name.addr, align 8
  %12 = load %struct._object*, %struct._object** %path.addr, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call %struct._object* @_PyImport_LoadDynamicModule(%struct._object* %11, %struct._object* %12, %struct._IO_FILE* %13)
  store %struct._object* %call12, %struct._object** %mod, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %path.addr, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp14, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %16, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %19(%struct._object* %20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end.23
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %22)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %do.end.23
  %23 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.end.8
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #1

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._object* @_PyImport_LoadDynamicModule(%struct._object*, %struct._object*, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp__fix_co_filename_impl(%struct.PyModuleDef* %module, %struct.PyCodeObject* %code, %struct._object* %path) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %code.addr = alloca %struct.PyCodeObject*, align 8
  %path.addr = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.PyCodeObject* %code, %struct.PyCodeObject** %code.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %1 = load %struct._object*, %struct._object** %path.addr, align 8
  call void @update_compiled_module(%struct.PyCodeObject* %0, %struct._object* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal void @update_compiled_module(%struct.PyCodeObject* %co, %struct._object* %newname) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %newname.addr = alloca %struct._object*, align 8
  %oldname = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  store %struct._object* %newname, %struct._object** %newname.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 13
  %1 = load %struct._object*, %struct._object** %co_filename, align 8
  %2 = load %struct._object*, %struct._object** %newname.addr, align 8
  %call = call i32 @PyUnicode_Compare(%struct._object* %1, %struct._object* %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename1 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %3, i32 0, i32 13
  %4 = load %struct._object*, %struct._object** %co_filename1, align 8
  store %struct._object* %4, %struct._object** %oldname, align 8
  %5 = load %struct._object*, %struct._object** %oldname, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %8 = load %struct._object*, %struct._object** %oldname, align 8
  %9 = load %struct._object*, %struct._object** %newname.addr, align 8
  call void @update_code_filenames(%struct.PyCodeObject* %7, %struct._object* %8, %struct._object* %9)
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %oldname, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt2, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt2, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.then, %if.end.5
  ret void
}

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @update_code_filenames(%struct.PyCodeObject* %co, %struct._object* %oldname, %struct._object* %newname) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %oldname.addr = alloca %struct._object*, align 8
  %newname.addr = alloca %struct._object*, align 8
  %constants = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  store %struct._object* %oldname, %struct._object** %oldname.addr, align 8
  store %struct._object* %newname, %struct._object** %newname.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 13
  %1 = load %struct._object*, %struct._object** %co_filename, align 8
  %2 = load %struct._object*, %struct._object** %oldname.addr, align 8
  %call = call i32 @PyUnicode_Compare(%struct._object* %1, %struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename3 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %3, i32 0, i32 13
  %4 = load %struct._object*, %struct._object** %co_filename3, align 8
  store %struct._object* %4, %struct._object** %tmp, align 8
  %5 = load %struct._object*, %struct._object** %newname.addr, align 8
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename4 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 13
  store %struct._object* %5, %struct._object** %co_filename4, align 8
  %7 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename5 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %7, i32 0, i32 13
  %8 = load %struct._object*, %struct._object** %co_filename5, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt7, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt7, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %17, i32 0, i32 7
  %18 = load %struct._object*, %struct._object** %co_consts, align 8
  store %struct._object* %18, %struct._object** %constants, align 8
  %19 = load %struct._object*, %struct._object** %constants, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %20, i32 0, i32 1
  %21 = load i64, i64* %ob_size, align 8
  store i64 %21, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %n, align 8
  %cmp10 = icmp slt i64 %22, %23
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8
  %25 = load %struct._object*, %struct._object** %constants, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %24
  %27 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %27, %struct._object** %tmp, align 8
  %28 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %cmp12 = icmp eq %struct._typeobject* %29, @PyCode_Type
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  %30 = load %struct._object*, %struct._object** %tmp, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyCodeObject*
  %32 = load %struct._object*, %struct._object** %oldname.addr, align 8
  %33 = load %struct._object*, %struct._object** %newname.addr, align 8
  call void @update_code_filenames(%struct.PyCodeObject* %31, %struct._object* %32, %struct._object* %33)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %34 = load i64, i64* %i, align 8
  %inc15 = add i64 %34, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139691}
!2 = !{i32 139531}
